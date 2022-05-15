; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

    ld a, [bc]                                    ; $4000: $0a
    add hl, de                                    ; $4001: $19
    nop                                           ; $4002: $00
    nop                                           ; $4003: $00
    inc bc                                        ; $4004: $03
    sbc $04                                       ; $4005: $de $04
    ld c, $04                                     ; $4007: $0e $04
    ld h, d                                       ; $4009: $62
    inc b                                         ; $400a: $04
    sub d                                         ; $400b: $92
    inc b                                         ; $400c: $04
    jp nz, Jump_000_1605                          ; $400d: $c2 $05 $16

    dec b                                         ; $4010: $05
    ld b, [hl]                                    ; $4011: $46
    dec b                                         ; $4012: $05
    ld h, c                                       ; $4013: $61
    dec b                                         ; $4014: $05
    ld a, h                                       ; $4015: $7c
    dec b                                         ; $4016: $05
    xor a                                         ; $4017: $af
    ld b, $03                                     ; $4018: $06 $03
    ld b, $33                                     ; $401a: $06 $33
    ld b, $63                                     ; $401c: $06 $63
    ld b, $93                                     ; $401e: $06 $93
    ld b, $c3                                     ; $4020: $06 $c3
    ld b, $f3                                     ; $4022: $06 $f3
    rlca                                          ; $4024: $07
    inc hl                                        ; $4025: $23
    rlca                                          ; $4026: $07
    ld d, e                                       ; $4027: $53
    rlca                                          ; $4028: $07
    sub d                                         ; $4029: $92
    rlca                                          ; $402a: $07
    xor l                                         ; $402b: $ad
    rlca                                          ; $402c: $07
    or b                                          ; $402d: $b0
    rlca                                          ; $402e: $07
    cp h                                          ; $402f: $bc
    rlca                                          ; $4030: $07
    cp a                                          ; $4031: $bf
    rlca                                          ; $4032: $07
    call nc, $005f                                ; $4033: $d4 $5f $00
    nop                                           ; $4036: $00
    add hl, bc                                    ; $4037: $09
    nop                                           ; $4038: $00
    inc bc                                        ; $4039: $03
    inc b                                         ; $403a: $04
    ld [bc], a                                    ; $403b: $02
    nop                                           ; $403c: $00
    nop                                           ; $403d: $00
    nop                                           ; $403e: $00
    nop                                           ; $403f: $00
    add hl, bc                                    ; $4040: $09
    rrca                                          ; $4041: $0f
    ld bc, $0405                                  ; $4042: $01 $05 $04
    nop                                           ; $4045: $00
    ld e, a                                       ; $4046: $5f
    ld bc, $0f00                                  ; $4047: $01 $00 $0f
    rrca                                          ; $404a: $0f
    nop                                           ; $404b: $00
    inc bc                                        ; $404c: $03
    ld l, l                                       ; $404d: $6d
    nop                                           ; $404e: $00
    add hl, bc                                    ; $404f: $09
    ld c, $01                                     ; $4050: $0e $01
    dec b                                         ; $4052: $05
    inc b                                         ; $4053: $04
    nop                                           ; $4054: $00
    ld e, a                                       ; $4055: $5f
    nop                                           ; $4056: $00
    nop                                           ; $4057: $00
    dec d                                         ; $4058: $15
    rrca                                          ; $4059: $0f
    nop                                           ; $405a: $00
    rlca                                          ; $405b: $07
    inc bc                                        ; $405c: $03
    add hl, bc                                    ; $405d: $09
    add hl, bc                                    ; $405e: $09
    inc c                                         ; $405f: $0c
    ld bc, $0305                                  ; $4060: $01 $05 $03
    nop                                           ; $4063: $00
    ld e, a                                       ; $4064: $5f
    ld bc, $0000                                  ; $4065: $01 $00 $00
    nop                                           ; $4068: $00
    nop                                           ; $4069: $00
    rrca                                          ; $406a: $0f
    inc c                                         ; $406b: $0c
    ld bc, $0056                                  ; $406c: $01 $56 $00
    nop                                           ; $406f: $00
    rla                                           ; $4070: $17
    nop                                           ; $4071: $00
    nop                                           ; $4072: $00
    dec de                                        ; $4073: $1b
    nop                                           ; $4074: $00
    nop                                           ; $4075: $00
    ld e, a                                       ; $4076: $5f
    ld bc, $5a00                                  ; $4077: $01 $00 $5a
    nop                                           ; $407a: $00
    nop                                           ; $407b: $00
    inc de                                        ; $407c: $13
    nop                                           ; $407d: $00
    ld h, [hl]                                    ; $407e: $66
    ld [hl], c                                    ; $407f: $71
    nop                                           ; $4080: $00
    cpl                                           ; $4081: $2f
    dec de                                        ; $4082: $1b
    ld [bc], a                                    ; $4083: $02
    nop                                           ; $4084: $00
    daa                                           ; $4085: $27
    nop                                           ; $4086: $00
    inc bc                                        ; $4087: $03
    dec d                                         ; $4088: $15
    dec d                                         ; $4089: $15
    nop                                           ; $408a: $00
    inc sp                                        ; $408b: $33
    nop                                           ; $408c: $00
    call Call_00a_5915                            ; $408d: $cd $15 $59
    nop                                           ; $4090: $00
    inc sp                                        ; $4091: $33
    nop                                           ; $4092: $00
    adc $15                                       ; $4093: $ce $15
    ld b, $00                                     ; $4095: $06 $00
    add hl, de                                    ; $4097: $19
    nop                                           ; $4098: $00
    db $10                                        ; $4099: $10
    dec de                                        ; $409a: $1b
    ld [bc], a                                    ; $409b: $02
    nop                                           ; $409c: $00
    ld hl, $0002                                  ; $409d: $21 $02 $00
    daa                                           ; $40a0: $27
    nop                                           ; $40a1: $00
    ld [bc], a                                    ; $40a2: $02
    dec d                                         ; $40a3: $15
    dec d                                         ; $40a4: $15
    nop                                           ; $40a5: $00
    inc sp                                        ; $40a6: $33
    nop                                           ; $40a7: $00
    rst $08                                       ; $40a8: $cf
    ld e, a                                       ; $40a9: $5f
    nop                                           ; $40aa: $00
    nop                                           ; $40ab: $00
    inc de                                        ; $40ac: $13
    nop                                           ; $40ad: $00
    xor d                                         ; $40ae: $aa
    inc d                                         ; $40af: $14
    nop                                           ; $40b0: $00
    adc h                                         ; $40b1: $8c
    dec d                                         ; $40b2: $15
    nop                                           ; $40b3: $00
    nop                                           ; $40b4: $00
    ld d, $19                                     ; $40b5: $16 $19
    nop                                           ; $40b7: $00
    ld d, d                                       ; $40b8: $52
    nop                                           ; $40b9: $00
    nop                                           ; $40ba: $00
    ld e, a                                       ; $40bb: $5f
    ld bc, $1500                                  ; $40bc: $01 $00 $15
    ld b, $00                                     ; $40bf: $06 $00
    ld a, [de]                                    ; $40c1: $1a
    nop                                           ; $40c2: $00
    ld a, h                                       ; $40c3: $7c
    dec d                                         ; $40c4: $15
    nop                                           ; $40c5: $00
    nop                                           ; $40c6: $00
    add hl, de                                    ; $40c7: $19
    nop                                           ; $40c8: $00
    ld a, [bc]                                    ; $40c9: $0a
    dec de                                        ; $40ca: $1b
    nop                                           ; $40cb: $00
    nop                                           ; $40cc: $00
    dec d                                         ; $40cd: $15
    add hl, de                                    ; $40ce: $19
    nop                                           ; $40cf: $00
    inc sp                                        ; $40d0: $33
    nop                                           ; $40d1: $00
    ret nc                                        ; $40d2: $d0

    dec d                                         ; $40d3: $15
    ld e, c                                       ; $40d4: $59
    nop                                           ; $40d5: $00
    inc sp                                        ; $40d6: $33
    nop                                           ; $40d7: $00
    pop de                                        ; $40d8: $d1
    dec d                                         ; $40d9: $15
    dec d                                         ; $40da: $15
    nop                                           ; $40db: $00
    inc sp                                        ; $40dc: $33
    nop                                           ; $40dd: $00
    jp nc, $4915                                  ; $40de: $d2 $15 $49

    nop                                           ; $40e1: $00
    inc sp                                        ; $40e2: $33
    nop                                           ; $40e3: $00
    db $d3                                        ; $40e4: $d3
    dec d                                         ; $40e5: $15
    add hl, de                                    ; $40e6: $19
    nop                                           ; $40e7: $00
    inc sp                                        ; $40e8: $33
    nop                                           ; $40e9: $00
    call nc, Call_000_1515                        ; $40ea: $d4 $15 $15
    nop                                           ; $40ed: $00
    inc sp                                        ; $40ee: $33
    nop                                           ; $40ef: $00
    push de                                       ; $40f0: $d5
    dec d                                         ; $40f1: $15
    ld e, c                                       ; $40f2: $59
    nop                                           ; $40f3: $00
    inc sp                                        ; $40f4: $33
    nop                                           ; $40f5: $00
    sub $15                                       ; $40f6: $d6 $15
    add hl, de                                    ; $40f8: $19
    nop                                           ; $40f9: $00
    inc sp                                        ; $40fa: $33
    nop                                           ; $40fb: $00
    rst $10                                       ; $40fc: $d7
    ld l, d                                       ; $40fd: $6a
    ld b, $00                                     ; $40fe: $06 $00
    rla                                           ; $4100: $17
    add hl, de                                    ; $4101: $19
    nop                                           ; $4102: $00
    dec d                                         ; $4103: $15
    inc b                                         ; $4104: $04
    nop                                           ; $4105: $00
    ld a, [de]                                    ; $4106: $1a
    nop                                           ; $4107: $00
    ld a, [bc]                                    ; $4108: $0a
    dec d                                         ; $4109: $15
    ld [bc], a                                    ; $410a: $02
    nop                                           ; $410b: $00
    ld a, [de]                                    ; $410c: $1a
    nop                                           ; $410d: $00
    ld a, h                                       ; $410e: $7c
    ld e, $19                                     ; $410f: $1e $19
    nop                                           ; $4111: $00
    dec d                                         ; $4112: $15
    dec d                                         ; $4113: $15
    nop                                           ; $4114: $00
    inc sp                                        ; $4115: $33
    nop                                           ; $4116: $00
    ret c                                         ; $4117: $d8

    ld e, a                                       ; $4118: $5f
    nop                                           ; $4119: $00
    nop                                           ; $411a: $00
    inc de                                        ; $411b: $13
    nop                                           ; $411c: $00
    xor d                                         ; $411d: $aa
    inc d                                         ; $411e: $14
    nop                                           ; $411f: $00
    adc h                                         ; $4120: $8c
    dec d                                         ; $4121: $15
    nop                                           ; $4122: $00
    nop                                           ; $4123: $00
    ld d, $2a                                     ; $4124: $16 $2a
    nop                                           ; $4126: $00
    rrca                                          ; $4127: $0f
    ld [de], a                                    ; $4128: $12
    ld bc, $0052                                  ; $4129: $01 $52 $00
    nop                                           ; $412c: $00
    ld e, a                                       ; $412d: $5f
    ld bc, $1500                                  ; $412e: $01 $00 $15
    ld b, $00                                     ; $4131: $06 $00
    add hl, de                                    ; $4133: $19
    nop                                           ; $4134: $00
    inc a                                         ; $4135: $3c
    dec de                                        ; $4136: $1b
    ld b, $00                                     ; $4137: $06 $00
    dec d                                         ; $4139: $15
    jr jr_00a_413c                                ; $413a: $18 $00

jr_00a_413c:
    inc sp                                        ; $413c: $33
    nop                                           ; $413d: $00
    reti                                          ; $413e: $d9


    dec d                                         ; $413f: $15
    dec d                                         ; $4140: $15
    nop                                           ; $4141: $00
    inc sp                                        ; $4142: $33
    nop                                           ; $4143: $00
    jp c, Jump_00a_5915                           ; $4144: $da $15 $59

    nop                                           ; $4147: $00
    inc sp                                        ; $4148: $33
    nop                                           ; $4149: $00
    db $db                                        ; $414a: $db
    dec d                                         ; $414b: $15
    dec d                                         ; $414c: $15
    nop                                           ; $414d: $00
    inc sp                                        ; $414e: $33
    nop                                           ; $414f: $00
    call c, Call_00a_5915                         ; $4150: $dc $15 $59
    nop                                           ; $4153: $00
    inc sp                                        ; $4154: $33
    nop                                           ; $4155: $00
    db $dd                                        ; $4156: $dd
    dec d                                         ; $4157: $15
    dec d                                         ; $4158: $15
    nop                                           ; $4159: $00
    inc sp                                        ; $415a: $33
    nop                                           ; $415b: $00
    sbc $15                                       ; $415c: $de $15
    ld e, c                                       ; $415e: $59
    nop                                           ; $415f: $00
    inc sp                                        ; $4160: $33
    nop                                           ; $4161: $00
    rst $18                                       ; $4162: $df
    dec d                                         ; $4163: $15
    ld e, c                                       ; $4164: $59
    nop                                           ; $4165: $00
    inc sp                                        ; $4166: $33
    nop                                           ; $4167: $00
    pop hl                                        ; $4168: $e1
    dec d                                         ; $4169: $15
    dec d                                         ; $416a: $15
    nop                                           ; $416b: $00
    inc sp                                        ; $416c: $33
    nop                                           ; $416d: $00
    ld [c], a                                     ; $416e: $e2
    dec d                                         ; $416f: $15
    ld e, c                                       ; $4170: $59
    nop                                           ; $4171: $00
    inc sp                                        ; $4172: $33
    nop                                           ; $4173: $00
    db $e3                                        ; $4174: $e3
    dec d                                         ; $4175: $15
    dec d                                         ; $4176: $15
    nop                                           ; $4177: $00
    inc sp                                        ; $4178: $33
    nop                                           ; $4179: $00
    db $e4                                        ; $417a: $e4
    rla                                           ; $417b: $17
    nop                                           ; $417c: $00
    nop                                           ; $417d: $00
    ld hl, $0003                                  ; $417e: $21 $03 $00
    dec d                                         ; $4181: $15
    ld [bc], a                                    ; $4182: $02
    nop                                           ; $4183: $00
    add hl, de                                    ; $4184: $19
    nop                                           ; $4185: $00
    inc c                                         ; $4186: $0c
    dec de                                        ; $4187: $1b
    ld [bc], a                                    ; $4188: $02
    nop                                           ; $4189: $00
    ld e, e                                       ; $418a: $5b
    nop                                           ; $418b: $00
    nop                                           ; $418c: $00
    ld d, a                                       ; $418d: $57
    nop                                           ; $418e: $00
    nop                                           ; $418f: $00
    nop                                           ; $4190: $00
    nop                                           ; $4191: $00
    nop                                           ; $4192: $00
    ld d, [hl]                                    ; $4193: $56
    nop                                           ; $4194: $00
    nop                                           ; $4195: $00
    ld e, a                                       ; $4196: $5f
    ld bc, $1700                                  ; $4197: $01 $00 $17
    ld a, [hl+]                                   ; $419a: $2a
    nop                                           ; $419b: $00
    ld d, d                                       ; $419c: $52
    nop                                           ; $419d: $00
    nop                                           ; $419e: $00
    ld e, [hl]                                    ; $419f: $5e
    nop                                           ; $41a0: $00
    nop                                           ; $41a1: $00
    dec d                                         ; $41a2: $15
    ld [bc], a                                    ; $41a3: $02
    nop                                           ; $41a4: $00
    add hl, de                                    ; $41a5: $19
    nop                                           ; $41a6: $00
    ld b, [hl]                                    ; $41a7: $46
    ld e, [hl]                                    ; $41a8: $5e
    ld bc, $1700                                  ; $41a9: $01 $00 $17
    nop                                           ; $41ac: $00
    nop                                           ; $41ad: $00
    ld e, d                                       ; $41ae: $5a
    nop                                           ; $41af: $00
    nop                                           ; $41b0: $00
    inc de                                        ; $41b1: $13
    nop                                           ; $41b2: $00
    ld h, [hl]                                    ; $41b3: $66
    ld [hl], c                                    ; $41b4: $71
    nop                                           ; $41b5: $00
    rra                                           ; $41b6: $1f
    dec de                                        ; $41b7: $1b
    ld [bc], a                                    ; $41b8: $02
    nop                                           ; $41b9: $00
    ld hl, $0002                                  ; $41ba: $21 $02 $00
    ld e, e                                       ; $41bd: $5b
    nop                                           ; $41be: $00
    nop                                           ; $41bf: $00
    rla                                           ; $41c0: $17
    ld a, [hl+]                                   ; $41c1: $2a
    nop                                           ; $41c2: $00
    dec h                                         ; $41c3: $25
    nop                                           ; $41c4: $00
    nop                                           ; $41c5: $00
    ld e, $2a                                     ; $41c6: $1e $2a
    nop                                           ; $41c8: $00
    rrca                                          ; $41c9: $0f
    ld [de], a                                    ; $41ca: $12
    nop                                           ; $41cb: $00
    ld e, a                                       ; $41cc: $5f
    nop                                           ; $41cd: $00
    nop                                           ; $41ce: $00
    inc de                                        ; $41cf: $13
    nop                                           ; $41d0: $00
    xor h                                         ; $41d1: $ac
    inc d                                         ; $41d2: $14
    nop                                           ; $41d3: $00
    sub d                                         ; $41d4: $92
    dec d                                         ; $41d5: $15
    nop                                           ; $41d6: $00
    nop                                           ; $41d7: $00
    ld d, $27                                     ; $41d8: $16 $27
    nop                                           ; $41da: $00
    ld d, d                                       ; $41db: $52
    nop                                           ; $41dc: $00
    nop                                           ; $41dd: $00
    inc de                                        ; $41de: $13
    nop                                           ; $41df: $00
    and b                                         ; $41e0: $a0
    inc d                                         ; $41e1: $14
    nop                                           ; $41e2: $00
    adc l                                         ; $41e3: $8d
    dec d                                         ; $41e4: $15
    nop                                           ; $41e5: $00
    nop                                           ; $41e6: $00
    ld d, $0e                                     ; $41e7: $16 $0e
    nop                                           ; $41e9: $00
    ld d, d                                       ; $41ea: $52
    nop                                           ; $41eb: $00
    nop                                           ; $41ec: $00
    inc de                                        ; $41ed: $13
    nop                                           ; $41ee: $00
    xor h                                         ; $41ef: $ac
    inc d                                         ; $41f0: $14
    nop                                           ; $41f1: $00
    adc b                                         ; $41f2: $88
    dec d                                         ; $41f3: $15
    nop                                           ; $41f4: $00
    nop                                           ; $41f5: $00
    ld d, $28                                     ; $41f6: $16 $28
    nop                                           ; $41f8: $00
    ld d, d                                       ; $41f9: $52
    nop                                           ; $41fa: $00
    nop                                           ; $41fb: $00
    ld e, d                                       ; $41fc: $5a
    nop                                           ; $41fd: $00
    nop                                           ; $41fe: $00
    ld e, a                                       ; $41ff: $5f
    ld bc, $5e00                                  ; $4200: $01 $00 $5e
    nop                                           ; $4203: $00
    nop                                           ; $4204: $00
    rla                                           ; $4205: $17
    ld c, $00                                     ; $4206: $0e $00
    dec d                                         ; $4208: $15
    ld b, $00                                     ; $4209: $06 $00
    add hl, de                                    ; $420b: $19
    nop                                           ; $420c: $00
    ld [hl], d                                    ; $420d: $72
    rla                                           ; $420e: $17
    jr z, jr_00a_4211                             ; $420f: $28 $00

jr_00a_4211:
    dec d                                         ; $4211: $15
    ld b, $00                                     ; $4212: $06 $00
    add hl, de                                    ; $4214: $19
    nop                                           ; $4215: $00
    ld [hl], d                                    ; $4216: $72
    rla                                           ; $4217: $17
    daa                                           ; $4218: $27
    nop                                           ; $4219: $00
    dec d                                         ; $421a: $15
    ld b, $00                                     ; $421b: $06 $00
    add hl, de                                    ; $421d: $19
    nop                                           ; $421e: $00
    add a                                         ; $421f: $87
    rla                                           ; $4220: $17
    ld c, $00                                     ; $4221: $0e $00
    dec h                                         ; $4223: $25
    nop                                           ; $4224: $00
    nop                                           ; $4225: $00
    dec de                                        ; $4226: $1b
    nop                                           ; $4227: $00
    nop                                           ; $4228: $00
    rla                                           ; $4229: $17
    jr z, jr_00a_422c                             ; $422a: $28 $00

jr_00a_422c:
    dec h                                         ; $422c: $25
    nop                                           ; $422d: $00
    nop                                           ; $422e: $00
    dec de                                        ; $422f: $1b
    nop                                           ; $4230: $00
    nop                                           ; $4231: $00
    rla                                           ; $4232: $17
    daa                                           ; $4233: $27
    nop                                           ; $4234: $00
    dec h                                         ; $4235: $25
    nop                                           ; $4236: $00
    nop                                           ; $4237: $00
    dec de                                        ; $4238: $1b
    nop                                           ; $4239: $00
    nop                                           ; $423a: $00
    ld e, [hl]                                    ; $423b: $5e
    ld bc, $1700                                  ; $423c: $01 $00 $17
    ld c, $00                                     ; $423f: $0e $00
    dec d                                         ; $4241: $15
    nop                                           ; $4242: $00
    nop                                           ; $4243: $00
    add hl, de                                    ; $4244: $19
    nop                                           ; $4245: $00
    ld a, [de]                                    ; $4246: $1a
    dec de                                        ; $4247: $1b
    ld b, $00                                     ; $4248: $06 $00
    dec d                                         ; $424a: $15
    ld d, $00                                     ; $424b: $16 $00
    inc sp                                        ; $424d: $33
    nop                                           ; $424e: $00
    db $eb                                        ; $424f: $eb
    dec d                                         ; $4250: $15
    ld e, c                                       ; $4251: $59
    nop                                           ; $4252: $00
    inc sp                                        ; $4253: $33
    nop                                           ; $4254: $00
    db $ec                                        ; $4255: $ec
    dec d                                         ; $4256: $15
    ld d, $00                                     ; $4257: $16 $00
    inc sp                                        ; $4259: $33
    nop                                           ; $425a: $00
    db $ed                                        ; $425b: $ed
    dec d                                         ; $425c: $15
    ld [de], a                                    ; $425d: $12
    nop                                           ; $425e: $00
    inc sp                                        ; $425f: $33
    nop                                           ; $4260: $00
    xor $15                                       ; $4261: $ee $15
    inc de                                        ; $4263: $13
    nop                                           ; $4264: $00
    inc sp                                        ; $4265: $33
    nop                                           ; $4266: $00
    rst $28                                       ; $4267: $ef
    dec d                                         ; $4268: $15
    ld d, $00                                     ; $4269: $16 $00
    inc sp                                        ; $426b: $33
    nop                                           ; $426c: $00
    ldh a, [rNR31]                                ; $426d: $f0 $1b
    ld [bc], a                                    ; $426f: $02
    nop                                           ; $4270: $00
    daa                                           ; $4271: $27
    nop                                           ; $4272: $00
    rrca                                          ; $4273: $0f
    dec de                                        ; $4274: $1b
    ld b, $00                                     ; $4275: $06 $00
    dec d                                         ; $4277: $15
    ld e, c                                       ; $4278: $59
    nop                                           ; $4279: $00
    inc sp                                        ; $427a: $33
    nop                                           ; $427b: $00
    pop af                                        ; $427c: $f1
    dec d                                         ; $427d: $15
    ld d, $00                                     ; $427e: $16 $00
    inc sp                                        ; $4280: $33
    nop                                           ; $4281: $00
    ld a, [c]                                     ; $4282: $f2
    dec de                                        ; $4283: $1b
    ld [bc], a                                    ; $4284: $02
    nop                                           ; $4285: $00
    daa                                           ; $4286: $27
    nop                                           ; $4287: $00
    inc b                                         ; $4288: $04
    dec d                                         ; $4289: $15
    dec d                                         ; $428a: $15
    nop                                           ; $428b: $00
    inc sp                                        ; $428c: $33
    nop                                           ; $428d: $00
    di                                            ; $428e: $f3
    dec de                                        ; $428f: $1b
    ld b, $00                                     ; $4290: $06 $00
    daa                                           ; $4292: $27
    nop                                           ; $4293: $00
    inc b                                         ; $4294: $04
    dec d                                         ; $4295: $15
    ld d, $00                                     ; $4296: $16 $00
    inc sp                                        ; $4298: $33
    nop                                           ; $4299: $00
    db $f4                                        ; $429a: $f4
    ld l, $59                                     ; $429b: $2e $59
    nop                                           ; $429d: $00
    dec d                                         ; $429e: $15
    inc a                                         ; $429f: $3c
    nop                                           ; $42a0: $00
    inc sp                                        ; $42a1: $33
    nop                                           ; $42a2: $00
    push af                                       ; $42a3: $f5
    daa                                           ; $42a4: $27
    nop                                           ; $42a5: $00
    inc bc                                        ; $42a6: $03
    ld l, $59                                     ; $42a7: $2e $59
    nop                                           ; $42a9: $00
    rrca                                          ; $42aa: $0f
    inc de                                        ; $42ab: $13
    ld bc, $2917                                  ; $42ac: $01 $17 $29
    nop                                           ; $42af: $00
    inc de                                        ; $42b0: $13
    dec b                                         ; $42b1: $05
    ld bc, $006e                                  ; $42b2: $01 $6e $00
    jr nz, @+$1d                                  ; $42b5: $20 $1b

    ld [bc], a                                    ; $42b7: $02
    nop                                           ; $42b8: $00
    daa                                           ; $42b9: $27
    nop                                           ; $42ba: $00
    ld b, $2e                                     ; $42bb: $06 $2e
    ld e, c                                       ; $42bd: $59
    nop                                           ; $42be: $00
    ld l, $25                                     ; $42bf: $2e $25
    nop                                           ; $42c1: $00
    rla                                           ; $42c2: $17
    jr z, jr_00a_42c5                             ; $42c3: $28 $00

jr_00a_42c5:
    dec de                                        ; $42c5: $1b
    ld [bc], a                                    ; $42c6: $02
    nop                                           ; $42c7: $00
    ld hl, $0043                                  ; $42c8: $21 $43 $00
    rla                                           ; $42cb: $17
    daa                                           ; $42cc: $27
    nop                                           ; $42cd: $00
    dec de                                        ; $42ce: $1b
    ld [bc], a                                    ; $42cf: $02
    nop                                           ; $42d0: $00
    ld hl, $0041                                  ; $42d1: $21 $41 $00
    daa                                           ; $42d4: $27
    nop                                           ; $42d5: $00
    ld b, $2e                                     ; $42d6: $06 $2e
    ld e, c                                       ; $42d8: $59
    nop                                           ; $42d9: $00
    ld l, $25                                     ; $42da: $2e $25
    nop                                           ; $42dc: $00
    ld e, a                                       ; $42dd: $5f
    nop                                           ; $42de: $00
    nop                                           ; $42df: $00
    ld e, [hl]                                    ; $42e0: $5e
    nop                                           ; $42e1: $00
    nop                                           ; $42e2: $00
    inc de                                        ; $42e3: $13
    ld [bc], a                                    ; $42e4: $02
    ld bc, $006e                                  ; $42e5: $01 $6e $00
    ld e, $17                                     ; $42e8: $1e $17
    daa                                           ; $42ea: $27
    nop                                           ; $42eb: $00
    ld e, [hl]                                    ; $42ec: $5e
    ld bc, $5f00                                  ; $42ed: $01 $00 $5f
    ld bc, $1300                                  ; $42f0: $01 $00 $13
    ld [bc], a                                    ; $42f3: $02
    ld bc, $006e                                  ; $42f4: $01 $6e $00
    inc hl                                        ; $42f7: $23
    ld e, a                                       ; $42f8: $5f
    nop                                           ; $42f9: $00
    nop                                           ; $42fa: $00
    ld e, [hl]                                    ; $42fb: $5e
    nop                                           ; $42fc: $00
    nop                                           ; $42fd: $00
    rla                                           ; $42fe: $17
    add hl, hl                                    ; $42ff: $29
    nop                                           ; $4300: $00
    inc de                                        ; $4301: $13
    ld [bc], a                                    ; $4302: $02
    ld bc, $006e                                  ; $4303: $01 $6e $00
    ld a, l                                       ; $4306: $7d
    rla                                           ; $4307: $17
    jr z, jr_00a_430a                             ; $4308: $28 $00

jr_00a_430a:
    inc de                                        ; $430a: $13
    ld [bc], a                                    ; $430b: $02
    ld bc, $006e                                  ; $430c: $01 $6e $00
    ld l, [hl]                                    ; $430f: $6e
    rla                                           ; $4310: $17
    daa                                           ; $4311: $27
    nop                                           ; $4312: $00
    ld e, [hl]                                    ; $4313: $5e
    ld bc, $5f00                                  ; $4314: $01 $00 $5f
    ld bc, $1300                                  ; $4317: $01 $00 $13
    ld [bc], a                                    ; $431a: $02
    ld bc, $006e                                  ; $431b: $01 $6e $00
    ld l, [hl]                                    ; $431e: $6e
    ld e, $27                                     ; $431f: $1e $27
    nop                                           ; $4321: $00
    rla                                           ; $4322: $17
    jr z, jr_00a_4325                             ; $4323: $28 $00

jr_00a_4325:
    ld e, $28                                     ; $4325: $1e $28
    nop                                           ; $4327: $00
    rla                                           ; $4328: $17
    add hl, hl                                    ; $4329: $29
    nop                                           ; $432a: $00
    ld e, $29                                     ; $432b: $1e $29
    nop                                           ; $432d: $00
    daa                                           ; $432e: $27
    nop                                           ; $432f: $00
    ld a, [bc]                                    ; $4330: $0a
    ld d, a                                       ; $4331: $57
    nop                                           ; $4332: $00
    nop                                           ; $4333: $00
    rrca                                          ; $4334: $0f
    ld c, $01                                     ; $4335: $0e $01
    dec [hl]                                      ; $4337: $35
    ld bc, $0000                                  ; $4338: $01 $00 $00
    nop                                           ; $433b: $00
    nop                                           ; $433c: $00
    ld [bc], a                                    ; $433d: $02
    add hl, sp                                    ; $433e: $39
    nop                                           ; $433f: $00
    rrca                                          ; $4340: $0f
    ld c, $00                                     ; $4341: $0e $00
    ld e, a                                       ; $4343: $5f
    ld bc, $5600                                  ; $4344: $01 $00 $56
    nop                                           ; $4347: $00
    nop                                           ; $4348: $00
    daa                                           ; $4349: $27
    nop                                           ; $434a: $00
    inc d                                         ; $434b: $14
    ld [$00fa], sp                                ; $434c: $08 $fa $00
    dec d                                         ; $434f: $15
    rrca                                          ; $4350: $0f
    nop                                           ; $4351: $00
    rlca                                          ; $4352: $07
    inc bc                                        ; $4353: $03
    dec l                                         ; $4354: $2d
    dec d                                         ; $4355: $15
    rrca                                          ; $4356: $0f
    nop                                           ; $4357: $00
    rlca                                          ; $4358: $07
    inc bc                                        ; $4359: $03
    jr nc, jr_00a_4371                            ; $435a: $30 $15

    rrca                                          ; $435c: $0f
    nop                                           ; $435d: $00
    rlca                                          ; $435e: $07
    inc bc                                        ; $435f: $03
    ld c, e                                       ; $4360: $4b
    inc bc                                        ; $4361: $03
    ld bc, $1500                                  ; $4362: $01 $00 $15
    ld e, c                                       ; $4365: $59
    nop                                           ; $4366: $00
    inc sp                                        ; $4367: $33
    nop                                           ; $4368: $00
    or $15                                        ; $4369: $f6 $15
    ld d, $00                                     ; $436b: $16 $00
    inc sp                                        ; $436d: $33
    dec bc                                        ; $436e: $0b
    dec b                                         ; $436f: $05
    ld a, [hl+]                                   ; $4370: $2a

jr_00a_4371:
    inc bc                                        ; $4371: $03
    nop                                           ; $4372: $00
    inc l                                         ; $4373: $2c
    inc bc                                        ; $4374: $03
    nop                                           ; $4375: $00
    ld d, [hl]                                    ; $4376: $56
    nop                                           ; $4377: $00
    nop                                           ; $4378: $00
    ld [bc], a                                    ; $4379: $02
    dec h                                         ; $437a: $25
    nop                                           ; $437b: $00
    inc bc                                        ; $437c: $03
    inc b                                         ; $437d: $04
    nop                                           ; $437e: $00
    dec d                                         ; $437f: $15
    ld d, $00                                     ; $4380: $16 $00
    inc sp                                        ; $4382: $33
    dec bc                                        ; $4383: $0b
    ld b, $2a                                     ; $4384: $06 $2a
    inc bc                                        ; $4386: $03
    nop                                           ; $4387: $00
    rla                                           ; $4388: $17
    ld c, $00                                     ; $4389: $0e $00
    dec d                                         ; $438b: $15
    inc b                                         ; $438c: $04
    nop                                           ; $438d: $00
    add hl, de                                    ; $438e: $19
    nop                                           ; $438f: $00
    ld a, [de]                                    ; $4390: $1a
    dec d                                         ; $4391: $15
    ld [bc], a                                    ; $4392: $02
    nop                                           ; $4393: $00
    add hl, de                                    ; $4394: $19
    nop                                           ; $4395: $00
    ld a, h                                       ; $4396: $7c
    ld e, $0e                                     ; $4397: $1e $0e
    nop                                           ; $4399: $00
    ld d, a                                       ; $439a: $57
    nop                                           ; $439b: $00
    nop                                           ; $439c: $00
    nop                                           ; $439d: $00
    nop                                           ; $439e: $00
    nop                                           ; $439f: $00
    ld e, a                                       ; $43a0: $5f
    ld bc, $1100                                  ; $43a1: $01 $00 $11
    ld de, $0a01                                  ; $43a4: $11 $01 $0a
    ld de, $0503                                  ; $43a7: $11 $03 $05
    inc de                                        ; $43aa: $13
    nop                                           ; $43ab: $00
    daa                                           ; $43ac: $27
    nop                                           ; $43ad: $00
    ld e, $5f                                     ; $43ae: $1e $5f
    nop                                           ; $43b0: $00
    nop                                           ; $43b1: $00
    ld d, [hl]                                    ; $43b2: $56
    nop                                           ; $43b3: $00
    nop                                           ; $43b4: $00
    rla                                           ; $43b5: $17
    nop                                           ; $43b6: $00
    nop                                           ; $43b7: $00
    dec de                                        ; $43b8: $1b
    inc b                                         ; $43b9: $04
    nop                                           ; $43ba: $00
    ld e, a                                       ; $43bb: $5f
    ld bc, $2e00                                  ; $43bc: $01 $00 $2e
    ld [de], a                                    ; $43bf: $12
    nop                                           ; $43c0: $00
    dec d                                         ; $43c1: $15
    ld a, [de]                                    ; $43c2: $1a
    nop                                           ; $43c3: $00
    inc sp                                        ; $43c4: $33
    ld bc, $0f00                                  ; $43c5: $01 $00 $0f
    inc c                                         ; $43c8: $0c
    nop                                           ; $43c9: $00
    rrca                                          ; $43ca: $0f
    dec c                                         ; $43cb: $0d
    nop                                           ; $43cc: $00
    rrca                                          ; $43cd: $0f
    ld c, $00                                     ; $43ce: $0e $00
    rrca                                          ; $43d0: $0f
    rrca                                          ; $43d1: $0f
    nop                                           ; $43d2: $00
    rrca                                          ; $43d3: $0f
    ld a, [$0f00]                                 ; $43d4: $fa $00 $0f
    ld de, $0f00                                  ; $43d7: $11 $00 $0f
    ld [de], a                                    ; $43da: $12
    nop                                           ; $43db: $00
    rrca                                          ; $43dc: $0f
    scf                                           ; $43dd: $37
    ld bc, $4428                                  ; $43de: $01 $28 $44
    nop                                           ; $43e1: $00
    ld e, a                                       ; $43e2: $5f
    ld bc, $0000                                  ; $43e3: $01 $00 $00
    nop                                           ; $43e6: $00
    nop                                           ; $43e7: $00
    ld e, a                                       ; $43e8: $5f
    nop                                           ; $43e9: $00
    nop                                           ; $43ea: $00
    rla                                           ; $43eb: $17
    nop                                           ; $43ec: $00
    nop                                           ; $43ed: $00
    inc de                                        ; $43ee: $13
    nop                                           ; $43ef: $00
    ld h, a                                       ; $43f0: $67
    ld e, b                                       ; $43f1: $58
    nop                                           ; $43f2: $00
    dec h                                         ; $43f3: $25
    dec de                                        ; $43f4: $1b
    ld [bc], a                                    ; $43f5: $02
    nop                                           ; $43f6: $00
    inc de                                        ; $43f7: $13
    nop                                           ; $43f8: $00
    ld l, $14                                     ; $43f9: $2e $14
    nop                                           ; $43fb: $00
    ld [hl], d                                    ; $43fc: $72
    dec d                                         ; $43fd: $15
    nop                                           ; $43fe: $00
    nop                                           ; $43ff: $00
    ld d, $0e                                     ; $4400: $16 $0e
    nop                                           ; $4402: $00
    ld d, d                                       ; $4403: $52
    nop                                           ; $4404: $00
    nop                                           ; $4405: $00
    ld e, d                                       ; $4406: $5a
    nop                                           ; $4407: $00
    nop                                           ; $4408: $00
    dec de                                        ; $4409: $1b
    ld b, $00                                     ; $440a: $06 $00
    ld e, a                                       ; $440c: $5f
    ld bc, $0100                                  ; $440d: $01 $00 $01
    nop                                           ; $4410: $00
    nop                                           ; $4411: $00
    add hl, bc                                    ; $4412: $09
    nop                                           ; $4413: $00
    inc bc                                        ; $4414: $03
    dec b                                         ; $4415: $05
    ld c, $00                                     ; $4416: $0e $00
    add hl, bc                                    ; $4418: $09
    ld bc, $0500                                  ; $4419: $01 $00 $05
    dec b                                         ; $441c: $05
    nop                                           ; $441d: $00
    dec d                                         ; $441e: $15
    inc h                                         ; $441f: $24
    nop                                           ; $4420: $00
    inc sp                                        ; $4421: $33
    nop                                           ; $4422: $00
    or d                                          ; $4423: $b2
    rrca                                          ; $4424: $0f
    ld bc, $0301                                  ; $4425: $01 $01 $03
    inc b                                         ; $4428: $04
    nop                                           ; $4429: $00
    dec d                                         ; $442a: $15
    inc h                                         ; $442b: $24
    nop                                           ; $442c: $00
    inc sp                                        ; $442d: $33
    nop                                           ; $442e: $00
    or e                                          ; $442f: $b3
    rrca                                          ; $4430: $0f
    ld bc, $0900                                  ; $4431: $01 $00 $09
    ld a, [$0400]                                 ; $4434: $fa $00 $04
    inc bc                                        ; $4437: $03
    nop                                           ; $4438: $00
    dec d                                         ; $4439: $15
    rrca                                          ; $443a: $0f
    nop                                           ; $443b: $00
    rlca                                          ; $443c: $07
    inc bc                                        ; $443d: $03
    ld l, a                                       ; $443e: $6f
    nop                                           ; $443f: $00
    nop                                           ; $4440: $00
    nop                                           ; $4441: $00
    ld [$00fa], sp                                ; $4442: $08 $fa $00
    dec d                                         ; $4445: $15
    rrca                                          ; $4446: $0f
    nop                                           ; $4447: $00
    rlca                                          ; $4448: $07
    inc b                                         ; $4449: $04
    inc hl                                        ; $444a: $23
    dec d                                         ; $444b: $15
    rrca                                          ; $444c: $0f
    nop                                           ; $444d: $00
    rlca                                          ; $444e: $07
    inc b                                         ; $444f: $04
    ld b, a                                       ; $4450: $47
    dec d                                         ; $4451: $15
    rrca                                          ; $4452: $0f
    nop                                           ; $4453: $00
    rlca                                          ; $4454: $07
    inc b                                         ; $4455: $04
    ld d, e                                       ; $4456: $53
    add hl, bc                                    ; $4457: $09
    nop                                           ; $4458: $00
    inc bc                                        ; $4459: $03
    dec b                                         ; $445a: $05
    ld a, [bc]                                    ; $445b: $0a
    nop                                           ; $445c: $00
    add hl, bc                                    ; $445d: $09
    ld [$0500], sp                                ; $445e: $08 $00 $05
    dec b                                         ; $4461: $05
    nop                                           ; $4462: $00
    dec d                                         ; $4463: $15
    rra                                           ; $4464: $1f
    nop                                           ; $4465: $00
    inc sp                                        ; $4466: $33
    nop                                           ; $4467: $00
    jp Jump_000_080f                              ; $4468: $c3 $0f $08


    ld bc, $0403                                  ; $446b: $01 $03 $04
    nop                                           ; $446e: $00
    dec d                                         ; $446f: $15
    rra                                           ; $4470: $1f
    nop                                           ; $4471: $00
    inc sp                                        ; $4472: $33
    nop                                           ; $4473: $00
    call nz, Call_000_080f                        ; $4474: $c4 $0f $08
    nop                                           ; $4477: $00
    nop                                           ; $4478: $00
    nop                                           ; $4479: $00
    nop                                           ; $447a: $00
    dec d                                         ; $447b: $15
    rra                                           ; $447c: $1f
    nop                                           ; $447d: $00
    inc sp                                        ; $447e: $33
    nop                                           ; $447f: $00
    ei                                            ; $4480: $fb
    dec d                                         ; $4481: $15
    rrca                                          ; $4482: $0f
    nop                                           ; $4483: $00
    rlca                                          ; $4484: $07
    inc bc                                        ; $4485: $03
    ld l, a                                       ; $4486: $6f
    dec d                                         ; $4487: $15
    rra                                           ; $4488: $1f
    nop                                           ; $4489: $00
    inc sp                                        ; $448a: $33
    nop                                           ; $448b: $00
    rst $38                                       ; $448c: $ff
    dec d                                         ; $448d: $15
    rrca                                          ; $448e: $0f
    nop                                           ; $448f: $00
    rlca                                          ; $4490: $07
    inc bc                                        ; $4491: $03
    ld l, a                                       ; $4492: $6f
    nop                                           ; $4493: $00
    nop                                           ; $4494: $00
    nop                                           ; $4495: $00
    add hl, bc                                    ; $4496: $09
    nop                                           ; $4497: $00
    inc bc                                        ; $4498: $03
    dec b                                         ; $4499: $05
    ld c, $00                                     ; $449a: $0e $00
    add hl, bc                                    ; $449c: $09
    inc bc                                        ; $449d: $03
    nop                                           ; $449e: $00
    dec b                                         ; $449f: $05
    dec b                                         ; $44a0: $05
    nop                                           ; $44a1: $00
    dec d                                         ; $44a2: $15
    daa                                           ; $44a3: $27
    nop                                           ; $44a4: $00
    inc sp                                        ; $44a5: $33
    nop                                           ; $44a6: $00
    cp [hl]                                       ; $44a7: $be
    rrca                                          ; $44a8: $0f
    inc bc                                        ; $44a9: $03
    ld bc, $0403                                  ; $44aa: $01 $03 $04
    nop                                           ; $44ad: $00
    dec d                                         ; $44ae: $15
    daa                                           ; $44af: $27
    nop                                           ; $44b0: $00
    inc sp                                        ; $44b1: $33
    nop                                           ; $44b2: $00
    cp a                                          ; $44b3: $bf
    rrca                                          ; $44b4: $0f
    inc bc                                        ; $44b5: $03
    nop                                           ; $44b6: $00
    add hl, bc                                    ; $44b7: $09
    ld a, [$0400]                                 ; $44b8: $fa $00 $04
    inc bc                                        ; $44bb: $03
    nop                                           ; $44bc: $00
    dec d                                         ; $44bd: $15
    rrca                                          ; $44be: $0f
    nop                                           ; $44bf: $00
    rlca                                          ; $44c0: $07
    inc bc                                        ; $44c1: $03
    ld l, a                                       ; $44c2: $6f
    nop                                           ; $44c3: $00
    nop                                           ; $44c4: $00
    nop                                           ; $44c5: $00
    add hl, bc                                    ; $44c6: $09
    nop                                           ; $44c7: $00
    inc bc                                        ; $44c8: $03
    dec b                                         ; $44c9: $05
    ld c, $00                                     ; $44ca: $0e $00
    add hl, bc                                    ; $44cc: $09
    inc b                                         ; $44cd: $04
    nop                                           ; $44ce: $00
    dec b                                         ; $44cf: $05
    dec b                                         ; $44d0: $05
    nop                                           ; $44d1: $00
    dec d                                         ; $44d2: $15
    jr z, jr_00a_44d5                             ; $44d3: $28 $00

jr_00a_44d5:
    inc sp                                        ; $44d5: $33
    nop                                           ; $44d6: $00
    and a                                         ; $44d7: $a7
    rrca                                          ; $44d8: $0f
    inc b                                         ; $44d9: $04
    ld bc, $0403                                  ; $44da: $01 $03 $04
    nop                                           ; $44dd: $00
    dec d                                         ; $44de: $15
    jr z, jr_00a_44e1                             ; $44df: $28 $00

jr_00a_44e1:
    inc sp                                        ; $44e1: $33
    nop                                           ; $44e2: $00
    xor b                                         ; $44e3: $a8
    rrca                                          ; $44e4: $0f
    inc b                                         ; $44e5: $04
    nop                                           ; $44e6: $00
    add hl, bc                                    ; $44e7: $09
    ld a, [$0400]                                 ; $44e8: $fa $00 $04
    inc bc                                        ; $44eb: $03
    nop                                           ; $44ec: $00
    dec d                                         ; $44ed: $15
    rrca                                          ; $44ee: $0f
    nop                                           ; $44ef: $00
    rlca                                          ; $44f0: $07
    inc bc                                        ; $44f1: $03
    ld l, a                                       ; $44f2: $6f
    nop                                           ; $44f3: $00
    nop                                           ; $44f4: $00
    nop                                           ; $44f5: $00
    ld [$00fa], sp                                ; $44f6: $08 $fa $00
    dec d                                         ; $44f9: $15
    rrca                                          ; $44fa: $0f
    nop                                           ; $44fb: $00
    rlca                                          ; $44fc: $07
    inc b                                         ; $44fd: $04
    rst $10                                       ; $44fe: $d7
    dec d                                         ; $44ff: $15
    rrca                                          ; $4500: $0f
    nop                                           ; $4501: $00
    rlca                                          ; $4502: $07
    inc b                                         ; $4503: $04
    ei                                            ; $4504: $fb
    dec d                                         ; $4505: $15
    rrca                                          ; $4506: $0f
    nop                                           ; $4507: $00
    rlca                                          ; $4508: $07
    dec b                                         ; $4509: $05
    rlca                                          ; $450a: $07
    add hl, bc                                    ; $450b: $09
    nop                                           ; $450c: $00
    inc bc                                        ; $450d: $03
    dec b                                         ; $450e: $05
    ld a, [bc]                                    ; $450f: $0a
    nop                                           ; $4510: $00
    add hl, bc                                    ; $4511: $09
    ld bc, $0500                                  ; $4512: $01 $00 $05
    dec b                                         ; $4515: $05
    nop                                           ; $4516: $00
    dec d                                         ; $4517: $15
    dec e                                         ; $4518: $1d
    nop                                           ; $4519: $00
    inc sp                                        ; $451a: $33
    nop                                           ; $451b: $00
    or [hl]                                       ; $451c: $b6
    rrca                                          ; $451d: $0f
    ld bc, $0301                                  ; $451e: $01 $01 $03
    inc b                                         ; $4521: $04
    nop                                           ; $4522: $00
    dec d                                         ; $4523: $15
    dec e                                         ; $4524: $1d
    nop                                           ; $4525: $00
    inc sp                                        ; $4526: $33
    nop                                           ; $4527: $00
    or a                                          ; $4528: $b7
    rrca                                          ; $4529: $0f
    ld bc, $0000                                  ; $452a: $01 $00 $00
    nop                                           ; $452d: $00
    nop                                           ; $452e: $00
    dec d                                         ; $452f: $15
    dec e                                         ; $4530: $1d
    nop                                           ; $4531: $00
    inc sp                                        ; $4532: $33
    nop                                           ; $4533: $00
    db $fd                                        ; $4534: $fd
    dec d                                         ; $4535: $15
    rrca                                          ; $4536: $0f
    nop                                           ; $4537: $00
    rlca                                          ; $4538: $07
    inc bc                                        ; $4539: $03
    ld l, a                                       ; $453a: $6f
    dec d                                         ; $453b: $15
    dec e                                         ; $453c: $1d
    nop                                           ; $453d: $00
    inc sp                                        ; $453e: $33
    nop                                           ; $453f: $00
    db $fc                                        ; $4540: $fc
    dec d                                         ; $4541: $15
    rrca                                          ; $4542: $0f
    nop                                           ; $4543: $00
    rlca                                          ; $4544: $07
    inc bc                                        ; $4545: $03
    ld l, a                                       ; $4546: $6f
    nop                                           ; $4547: $00
    nop                                           ; $4548: $00
    nop                                           ; $4549: $00
    add hl, bc                                    ; $454a: $09
    nop                                           ; $454b: $00
    inc bc                                        ; $454c: $03
    dec b                                         ; $454d: $05
    ld c, $00                                     ; $454e: $0e $00
    add hl, bc                                    ; $4550: $09
    ld b, $00                                     ; $4551: $06 $00
    dec b                                         ; $4553: $05
    dec b                                         ; $4554: $05
    nop                                           ; $4555: $00
    dec d                                         ; $4556: $15
    dec h                                         ; $4557: $25
    nop                                           ; $4558: $00
    inc sp                                        ; $4559: $33
    nop                                           ; $455a: $00
    xor d                                         ; $455b: $aa
    rrca                                          ; $455c: $0f
    ld b, $01                                     ; $455d: $06 $01
    inc bc                                        ; $455f: $03
    inc b                                         ; $4560: $04
    nop                                           ; $4561: $00
    dec d                                         ; $4562: $15
    dec h                                         ; $4563: $25
    nop                                           ; $4564: $00
    inc sp                                        ; $4565: $33
    nop                                           ; $4566: $00
    xor e                                         ; $4567: $ab
    rrca                                          ; $4568: $0f
    ld b, $00                                     ; $4569: $06 $00
    add hl, bc                                    ; $456b: $09
    ld a, [$0400]                                 ; $456c: $fa $00 $04
    inc bc                                        ; $456f: $03
    nop                                           ; $4570: $00
    dec d                                         ; $4571: $15
    rrca                                          ; $4572: $0f
    nop                                           ; $4573: $00
    rlca                                          ; $4574: $07
    inc bc                                        ; $4575: $03
    ld l, a                                       ; $4576: $6f
    nop                                           ; $4577: $00
    nop                                           ; $4578: $00
    nop                                           ; $4579: $00
    add hl, bc                                    ; $457a: $09
    nop                                           ; $457b: $00
    inc bc                                        ; $457c: $03
    dec b                                         ; $457d: $05
    rlca                                          ; $457e: $07
    nop                                           ; $457f: $00
    dec d                                         ; $4580: $15
    add hl, hl                                    ; $4581: $29
    nop                                           ; $4582: $00
    inc sp                                        ; $4583: $33
    nop                                           ; $4584: $00
    xor c                                         ; $4585: $a9
    add hl, bc                                    ; $4586: $09
    ld a, [$0400]                                 ; $4587: $fa $00 $04
    inc bc                                        ; $458a: $03
    nop                                           ; $458b: $00
    dec d                                         ; $458c: $15
    rrca                                          ; $458d: $0f
    nop                                           ; $458e: $00
    rlca                                          ; $458f: $07
    inc bc                                        ; $4590: $03
    ld l, a                                       ; $4591: $6f
    nop                                           ; $4592: $00
    nop                                           ; $4593: $00
    nop                                           ; $4594: $00
    add hl, bc                                    ; $4595: $09
    nop                                           ; $4596: $00
    inc bc                                        ; $4597: $03
    dec b                                         ; $4598: $05
    rlca                                          ; $4599: $07
    nop                                           ; $459a: $00
    dec d                                         ; $459b: $15
    dec hl                                        ; $459c: $2b
    nop                                           ; $459d: $00
    inc sp                                        ; $459e: $33
    nop                                           ; $459f: $00
    jp nz, $fa09                                  ; $45a0: $c2 $09 $fa

    nop                                           ; $45a3: $00
    inc b                                         ; $45a4: $04
    inc bc                                        ; $45a5: $03
    nop                                           ; $45a6: $00
    dec d                                         ; $45a7: $15
    rrca                                          ; $45a8: $0f
    nop                                           ; $45a9: $00
    rlca                                          ; $45aa: $07
    inc bc                                        ; $45ab: $03
    ld l, a                                       ; $45ac: $6f
    nop                                           ; $45ad: $00
    nop                                           ; $45ae: $00
    nop                                           ; $45af: $00
    add hl, bc                                    ; $45b0: $09
    nop                                           ; $45b1: $00
    inc bc                                        ; $45b2: $03
    dec b                                         ; $45b3: $05
    rrca                                          ; $45b4: $0f
    nop                                           ; $45b5: $00
    dec d                                         ; $45b6: $15
    ld a, [hl+]                                   ; $45b7: $2a
    nop                                           ; $45b8: $00
    inc sp                                        ; $45b9: $33
    nop                                           ; $45ba: $00
    ret z                                         ; $45bb: $c8

    dec d                                         ; $45bc: $15
    ld e, c                                       ; $45bd: $59
    nop                                           ; $45be: $00
    inc sp                                        ; $45bf: $33
    nop                                           ; $45c0: $00
    ret                                           ; $45c1: $c9


    dec d                                         ; $45c2: $15
    ld a, [hl+]                                   ; $45c3: $2a
    nop                                           ; $45c4: $00
    inc sp                                        ; $45c5: $33
    nop                                           ; $45c6: $00
    jp z, Jump_00a_5915                           ; $45c7: $ca $15 $59

    nop                                           ; $45ca: $00
    inc sp                                        ; $45cb: $33
    nop                                           ; $45cc: $00
    rl l                                          ; $45cd: $cb $15
    ld a, [hl+]                                   ; $45cf: $2a
    nop                                           ; $45d0: $00
    inc sp                                        ; $45d1: $33
    nop                                           ; $45d2: $00
    call z, $fa09                                 ; $45d3: $cc $09 $fa
    nop                                           ; $45d6: $00
    inc b                                         ; $45d7: $04
    inc bc                                        ; $45d8: $03
    nop                                           ; $45d9: $00
    dec d                                         ; $45da: $15
    rrca                                          ; $45db: $0f
    nop                                           ; $45dc: $00
    rlca                                          ; $45dd: $07
    inc bc                                        ; $45de: $03
    ld l, a                                       ; $45df: $6f
    nop                                           ; $45e0: $00
    nop                                           ; $45e1: $00
    nop                                           ; $45e2: $00
    ld [$00fa], sp                                ; $45e3: $08 $fa $00
    dec d                                         ; $45e6: $15
    rrca                                          ; $45e7: $0f
    nop                                           ; $45e8: $00
    rlca                                          ; $45e9: $07
    dec b                                         ; $45ea: $05
    call nz, Call_000_0f15                        ; $45eb: $c4 $15 $0f
    nop                                           ; $45ee: $00
    rlca                                          ; $45ef: $07
    dec b                                         ; $45f0: $05
    add sp, $15                                   ; $45f1: $e8 $15
    rrca                                          ; $45f3: $0f
    nop                                           ; $45f4: $00
    rlca                                          ; $45f5: $07
    dec b                                         ; $45f6: $05
    db $f4                                        ; $45f7: $f4
    add hl, bc                                    ; $45f8: $09
    nop                                           ; $45f9: $00
    inc bc                                        ; $45fa: $03
    dec b                                         ; $45fb: $05
    ld a, [bc]                                    ; $45fc: $0a
    nop                                           ; $45fd: $00
    add hl, bc                                    ; $45fe: $09
    ld a, [bc]                                    ; $45ff: $0a
    nop                                           ; $4600: $00
    dec b                                         ; $4601: $05
    dec b                                         ; $4602: $05
    nop                                           ; $4603: $00
    dec d                                         ; $4604: $15
    ld [hl+], a                                   ; $4605: $22
    nop                                           ; $4606: $00
    inc sp                                        ; $4607: $33
    nop                                           ; $4608: $00
    cp d                                          ; $4609: $ba
    rrca                                          ; $460a: $0f
    ld a, [bc]                                    ; $460b: $0a
    ld bc, $0403                                  ; $460c: $01 $03 $04
    nop                                           ; $460f: $00
    dec d                                         ; $4610: $15
    ld [hl+], a                                   ; $4611: $22
    nop                                           ; $4612: $00
    inc sp                                        ; $4613: $33
    nop                                           ; $4614: $00
    cp e                                          ; $4615: $bb
    rrca                                          ; $4616: $0f
    ld a, [bc]                                    ; $4617: $0a
    nop                                           ; $4618: $00
    nop                                           ; $4619: $00
    nop                                           ; $461a: $00
    nop                                           ; $461b: $00
    dec d                                         ; $461c: $15
    ld [hl+], a                                   ; $461d: $22
    nop                                           ; $461e: $00
    inc sp                                        ; $461f: $33
    nop                                           ; $4620: $00
    ld a, [$0f15]                                 ; $4621: $fa $15 $0f
    nop                                           ; $4624: $00
    rlca                                          ; $4625: $07
    inc bc                                        ; $4626: $03
    ld l, a                                       ; $4627: $6f
    dec d                                         ; $4628: $15
    ld [hl+], a                                   ; $4629: $22
    nop                                           ; $462a: $00
    inc sp                                        ; $462b: $33
    nop                                           ; $462c: $00
    cp $15                                        ; $462d: $fe $15
    rrca                                          ; $462f: $0f
    nop                                           ; $4630: $00
    rlca                                          ; $4631: $07
    inc bc                                        ; $4632: $03
    ld l, a                                       ; $4633: $6f
    nop                                           ; $4634: $00
    nop                                           ; $4635: $00
    nop                                           ; $4636: $00
    add hl, bc                                    ; $4637: $09
    nop                                           ; $4638: $00
    inc bc                                        ; $4639: $03
    dec b                                         ; $463a: $05
    ld c, $00                                     ; $463b: $0e $00
    add hl, bc                                    ; $463d: $09
    add hl, bc                                    ; $463e: $09
    nop                                           ; $463f: $00
    dec b                                         ; $4640: $05
    dec b                                         ; $4641: $05
    nop                                           ; $4642: $00
    dec d                                         ; $4643: $15
    ld hl, $3300                                  ; $4644: $21 $00 $33
    nop                                           ; $4647: $00
    cp h                                          ; $4648: $bc
    rrca                                          ; $4649: $0f
    add hl, bc                                    ; $464a: $09
    ld bc, $0403                                  ; $464b: $01 $03 $04
    nop                                           ; $464e: $00
    dec d                                         ; $464f: $15
    ld hl, $3300                                  ; $4650: $21 $00 $33
    nop                                           ; $4653: $00
    cp l                                          ; $4654: $bd
    rrca                                          ; $4655: $0f
    add hl, bc                                    ; $4656: $09
    nop                                           ; $4657: $00
    add hl, bc                                    ; $4658: $09
    ld a, [$0400]                                 ; $4659: $fa $00 $04
    inc bc                                        ; $465c: $03
    nop                                           ; $465d: $00
    dec d                                         ; $465e: $15
    rrca                                          ; $465f: $0f
    nop                                           ; $4660: $00
    rlca                                          ; $4661: $07
    inc bc                                        ; $4662: $03
    ld l, a                                       ; $4663: $6f
    nop                                           ; $4664: $00
    nop                                           ; $4665: $00
    nop                                           ; $4666: $00
    add hl, bc                                    ; $4667: $09
    nop                                           ; $4668: $00
    inc bc                                        ; $4669: $03
    dec b                                         ; $466a: $05
    ld c, $00                                     ; $466b: $0e $00
    add hl, bc                                    ; $466d: $09
    dec bc                                        ; $466e: $0b
    nop                                           ; $466f: $00
    dec b                                         ; $4670: $05
    dec b                                         ; $4671: $05
    nop                                           ; $4672: $00
    dec d                                         ; $4673: $15
    inc hl                                        ; $4674: $23
    nop                                           ; $4675: $00
    inc sp                                        ; $4676: $33
    nop                                           ; $4677: $00
    cp b                                          ; $4678: $b8
    rrca                                          ; $4679: $0f
    dec bc                                        ; $467a: $0b
    ld bc, $0403                                  ; $467b: $01 $03 $04
    nop                                           ; $467e: $00
    dec d                                         ; $467f: $15
    inc hl                                        ; $4680: $23
    nop                                           ; $4681: $00
    inc sp                                        ; $4682: $33
    nop                                           ; $4683: $00
    cp c                                          ; $4684: $b9
    rrca                                          ; $4685: $0f
    dec bc                                        ; $4686: $0b
    nop                                           ; $4687: $00
    add hl, bc                                    ; $4688: $09
    ld a, [$0400]                                 ; $4689: $fa $00 $04
    inc bc                                        ; $468c: $03
    nop                                           ; $468d: $00
    dec d                                         ; $468e: $15
    rrca                                          ; $468f: $0f
    nop                                           ; $4690: $00
    rlca                                          ; $4691: $07
    inc bc                                        ; $4692: $03
    ld l, a                                       ; $4693: $6f
    nop                                           ; $4694: $00
    nop                                           ; $4695: $00
    nop                                           ; $4696: $00
    add hl, bc                                    ; $4697: $09
    nop                                           ; $4698: $00
    inc bc                                        ; $4699: $03
    dec b                                         ; $469a: $05
    ld c, $00                                     ; $469b: $0e $00
    add hl, bc                                    ; $469d: $09
    ld [bc], a                                    ; $469e: $02
    nop                                           ; $469f: $00
    dec b                                         ; $46a0: $05
    dec b                                         ; $46a1: $05
    nop                                           ; $46a2: $00
    dec d                                         ; $46a3: $15
    ld h, $00                                     ; $46a4: $26 $00
    inc sp                                        ; $46a6: $33
    nop                                           ; $46a7: $00
    ret nz                                        ; $46a8: $c0

    rrca                                          ; $46a9: $0f
    ld [bc], a                                    ; $46aa: $02
    ld bc, $0403                                  ; $46ab: $01 $03 $04
    nop                                           ; $46ae: $00
    dec d                                         ; $46af: $15
    ld h, $00                                     ; $46b0: $26 $00
    inc sp                                        ; $46b2: $33
    nop                                           ; $46b3: $00
    pop bc                                        ; $46b4: $c1
    rrca                                          ; $46b5: $0f
    ld [bc], a                                    ; $46b6: $02
    nop                                           ; $46b7: $00
    add hl, bc                                    ; $46b8: $09
    ld a, [$0400]                                 ; $46b9: $fa $00 $04
    inc bc                                        ; $46bc: $03
    nop                                           ; $46bd: $00
    dec d                                         ; $46be: $15
    rrca                                          ; $46bf: $0f
    nop                                           ; $46c0: $00
    rlca                                          ; $46c1: $07
    inc bc                                        ; $46c2: $03
    ld l, a                                       ; $46c3: $6f
    nop                                           ; $46c4: $00
    nop                                           ; $46c5: $00
    nop                                           ; $46c6: $00
    add hl, bc                                    ; $46c7: $09
    nop                                           ; $46c8: $00
    inc bc                                        ; $46c9: $03
    dec b                                         ; $46ca: $05
    ld c, $00                                     ; $46cb: $0e $00
    add hl, bc                                    ; $46cd: $09
    inc bc                                        ; $46ce: $03
    nop                                           ; $46cf: $00
    dec b                                         ; $46d0: $05
    dec b                                         ; $46d1: $05
    nop                                           ; $46d2: $00
    dec d                                         ; $46d3: $15
    ld e, $00                                     ; $46d4: $1e $00
    inc sp                                        ; $46d6: $33
    nop                                           ; $46d7: $00
    or b                                          ; $46d8: $b0
    rrca                                          ; $46d9: $0f
    inc bc                                        ; $46da: $03
    ld bc, $0403                                  ; $46db: $01 $03 $04
    nop                                           ; $46de: $00
    dec d                                         ; $46df: $15
    ld e, $00                                     ; $46e0: $1e $00
    inc sp                                        ; $46e2: $33
    nop                                           ; $46e3: $00
    or c                                          ; $46e4: $b1
    rrca                                          ; $46e5: $0f
    inc bc                                        ; $46e6: $03
    nop                                           ; $46e7: $00
    add hl, bc                                    ; $46e8: $09
    ld a, [$0400]                                 ; $46e9: $fa $00 $04
    inc bc                                        ; $46ec: $03
    nop                                           ; $46ed: $00
    dec d                                         ; $46ee: $15
    rrca                                          ; $46ef: $0f
    nop                                           ; $46f0: $00
    rlca                                          ; $46f1: $07
    inc bc                                        ; $46f2: $03
    ld l, a                                       ; $46f3: $6f
    nop                                           ; $46f4: $00
    nop                                           ; $46f5: $00
    nop                                           ; $46f6: $00
    add hl, bc                                    ; $46f7: $09
    nop                                           ; $46f8: $00
    inc bc                                        ; $46f9: $03
    dec b                                         ; $46fa: $05
    ld c, $00                                     ; $46fb: $0e $00
    add hl, bc                                    ; $46fd: $09
    inc bc                                        ; $46fe: $03
    nop                                           ; $46ff: $00
    dec b                                         ; $4700: $05
    dec b                                         ; $4701: $05
    nop                                           ; $4702: $00
    dec d                                         ; $4703: $15
    jr nz, jr_00a_4706                            ; $4704: $20 $00

jr_00a_4706:
    inc sp                                        ; $4706: $33
    nop                                           ; $4707: $00
    or h                                          ; $4708: $b4
    rrca                                          ; $4709: $0f
    inc bc                                        ; $470a: $03
    ld bc, $0403                                  ; $470b: $01 $03 $04
    nop                                           ; $470e: $00
    dec d                                         ; $470f: $15
    jr nz, jr_00a_4712                            ; $4710: $20 $00

jr_00a_4712:
    inc sp                                        ; $4712: $33
    nop                                           ; $4713: $00
    or l                                          ; $4714: $b5
    rrca                                          ; $4715: $0f
    inc bc                                        ; $4716: $03
    nop                                           ; $4717: $00
    add hl, bc                                    ; $4718: $09
    ld a, [$0400]                                 ; $4719: $fa $00 $04
    inc bc                                        ; $471c: $03
    nop                                           ; $471d: $00
    dec d                                         ; $471e: $15
    rrca                                          ; $471f: $0f
    nop                                           ; $4720: $00
    rlca                                          ; $4721: $07
    inc bc                                        ; $4722: $03
    ld l, a                                       ; $4723: $6f
    nop                                           ; $4724: $00
    nop                                           ; $4725: $00
    nop                                           ; $4726: $00
    add hl, bc                                    ; $4727: $09
    nop                                           ; $4728: $00
    inc bc                                        ; $4729: $03
    dec b                                         ; $472a: $05
    ld c, $00                                     ; $472b: $0e $00
    add hl, bc                                    ; $472d: $09
    inc b                                         ; $472e: $04
    nop                                           ; $472f: $00
    dec b                                         ; $4730: $05
    dec b                                         ; $4731: $05
    nop                                           ; $4732: $00
    dec d                                         ; $4733: $15
    dec de                                        ; $4734: $1b
    nop                                           ; $4735: $00
    inc sp                                        ; $4736: $33
    nop                                           ; $4737: $00
    xor h                                         ; $4738: $ac
    rrca                                          ; $4739: $0f
    inc b                                         ; $473a: $04
    ld bc, $0403                                  ; $473b: $01 $03 $04
    nop                                           ; $473e: $00
    dec d                                         ; $473f: $15
    dec de                                        ; $4740: $1b
    nop                                           ; $4741: $00
    inc sp                                        ; $4742: $33
    nop                                           ; $4743: $00
    xor l                                         ; $4744: $ad
    rrca                                          ; $4745: $0f
    inc b                                         ; $4746: $04
    nop                                           ; $4747: $00
    add hl, bc                                    ; $4748: $09
    ld a, [$0400]                                 ; $4749: $fa $00 $04
    inc bc                                        ; $474c: $03
    nop                                           ; $474d: $00
    dec d                                         ; $474e: $15
    rrca                                          ; $474f: $0f
    nop                                           ; $4750: $00
    rlca                                          ; $4751: $07
    inc bc                                        ; $4752: $03
    ld l, a                                       ; $4753: $6f
    nop                                           ; $4754: $00
    nop                                           ; $4755: $00
    nop                                           ; $4756: $00
    add hl, bc                                    ; $4757: $09
    nop                                           ; $4758: $00
    inc bc                                        ; $4759: $03
    dec b                                         ; $475a: $05
    ld c, $00                                     ; $475b: $0e $00
    add hl, bc                                    ; $475d: $09
    dec b                                         ; $475e: $05
    nop                                           ; $475f: $00
    dec b                                         ; $4760: $05
    dec b                                         ; $4761: $05
    nop                                           ; $4762: $00
    dec d                                         ; $4763: $15
    inc e                                         ; $4764: $1c
    nop                                           ; $4765: $00
    inc sp                                        ; $4766: $33
    nop                                           ; $4767: $00
    xor [hl]                                      ; $4768: $ae
    rrca                                          ; $4769: $0f
    dec b                                         ; $476a: $05
    ld bc, $0403                                  ; $476b: $01 $03 $04
    nop                                           ; $476e: $00
    dec d                                         ; $476f: $15
    inc e                                         ; $4770: $1c
    nop                                           ; $4771: $00
    inc sp                                        ; $4772: $33
    nop                                           ; $4773: $00
    xor a                                         ; $4774: $af
    rrca                                          ; $4775: $0f
    dec b                                         ; $4776: $05
    nop                                           ; $4777: $00
    add hl, bc                                    ; $4778: $09
    ld a, [$0400]                                 ; $4779: $fa $00 $04
    inc bc                                        ; $477c: $03
    nop                                           ; $477d: $00
    dec d                                         ; $477e: $15
    rrca                                          ; $477f: $0f
    nop                                           ; $4780: $00
    rlca                                          ; $4781: $07
    inc bc                                        ; $4782: $03
    ld l, a                                       ; $4783: $6f
    nop                                           ; $4784: $00
    nop                                           ; $4785: $00
    nop                                           ; $4786: $00
    ld [$00fa], sp                                ; $4787: $08 $fa $00
    dec d                                         ; $478a: $15
    rrca                                          ; $478b: $0f
    nop                                           ; $478c: $00
    rlca                                          ; $478d: $07
    rlca                                          ; $478e: $07
    ld l, b                                       ; $478f: $68
    dec d                                         ; $4790: $15
    rrca                                          ; $4791: $0f
    nop                                           ; $4792: $00
    rlca                                          ; $4793: $07
    rlca                                          ; $4794: $07
    ld [hl], a                                    ; $4795: $77
    dec d                                         ; $4796: $15
    rrca                                          ; $4797: $0f
    nop                                           ; $4798: $00
    rlca                                          ; $4799: $07
    rlca                                          ; $479a: $07
    add e                                         ; $479b: $83
    add hl, bc                                    ; $479c: $09
    nop                                           ; $479d: $00
    inc bc                                        ; $479e: $03
    dec b                                         ; $479f: $05
    inc bc                                        ; $47a0: $03
    nop                                           ; $47a1: $00
    dec d                                         ; $47a2: $15
    dec d                                         ; $47a3: $15
    nop                                           ; $47a4: $00
    inc sp                                        ; $47a5: $33
    nop                                           ; $47a6: $00
    ret nz                                        ; $47a7: $c0

    nop                                           ; $47a8: $00
    nop                                           ; $47a9: $00
    nop                                           ; $47aa: $00
    dec d                                         ; $47ab: $15
    dec d                                         ; $47ac: $15
    nop                                           ; $47ad: $00
    inc sp                                        ; $47ae: $33
    nop                                           ; $47af: $00
    ei                                            ; $47b0: $fb
    dec d                                         ; $47b1: $15
    rrca                                          ; $47b2: $0f
    nop                                           ; $47b3: $00
    rlca                                          ; $47b4: $07
    inc bc                                        ; $47b5: $03
    ld l, a                                       ; $47b6: $6f
    dec d                                         ; $47b7: $15
    dec d                                         ; $47b8: $15
    nop                                           ; $47b9: $00
    inc sp                                        ; $47ba: $33
    nop                                           ; $47bb: $00
    ret nz                                        ; $47bc: $c0

    dec d                                         ; $47bd: $15
    rrca                                          ; $47be: $0f
    nop                                           ; $47bf: $00
    rlca                                          ; $47c0: $07
    inc bc                                        ; $47c1: $03
    ld l, a                                       ; $47c2: $6f
    nop                                           ; $47c3: $00
    nop                                           ; $47c4: $00
    nop                                           ; $47c5: $00
    add hl, bc                                    ; $47c6: $09
    nop                                           ; $47c7: $00
    inc bc                                        ; $47c8: $03
    dec b                                         ; $47c9: $05
    rlca                                          ; $47ca: $07
    nop                                           ; $47cb: $00
    dec d                                         ; $47cc: $15
    inc l                                         ; $47cd: $2c
    nop                                           ; $47ce: $00
    inc sp                                        ; $47cf: $33
    nop                                           ; $47d0: $00
    push bc                                       ; $47d1: $c5
    dec d                                         ; $47d2: $15
    ld e, c                                       ; $47d3: $59
    nop                                           ; $47d4: $00
    inc sp                                        ; $47d5: $33
    nop                                           ; $47d6: $00
    add $15                                       ; $47d7: $c6 $15
    inc l                                         ; $47d9: $2c
    nop                                           ; $47da: $00
    inc sp                                        ; $47db: $33
    nop                                           ; $47dc: $00
    rst $00                                       ; $47dd: $c7
    nop                                           ; $47de: $00
    nop                                           ; $47df: $00
    nop                                           ; $47e0: $00
    nop                                           ; $47e1: $00
    nop                                           ; $47e2: $00
    nop                                           ; $47e3: $00
    rrca                                          ; $47e4: $0f
    dec c                                         ; $47e5: $0d
    ld bc, $0f0f                                  ; $47e6: $01 $0f $0f
    ld bc, $0054                                  ; $47e9: $01 $54 $00
    dec b                                         ; $47ec: $05
    nop                                           ; $47ed: $00
    nop                                           ; $47ee: $00
    nop                                           ; $47ef: $00
    nop                                           ; $47f0: $00
    nop                                           ; $47f1: $00
    nop                                           ; $47f2: $00
    add hl, bc                                    ; $47f3: $09
    ld c, $00                                     ; $47f4: $0e $00
    dec b                                         ; $47f6: $05
    ld [bc], a                                    ; $47f7: $02
    nop                                           ; $47f8: $00
    nop                                           ; $47f9: $00
    nop                                           ; $47fa: $00
    nop                                           ; $47fb: $00
    ld e, a                                       ; $47fc: $5f
    nop                                           ; $47fd: $00
    nop                                           ; $47fe: $00
    dec d                                         ; $47ff: $15
    rrca                                          ; $4800: $0f
    nop                                           ; $4801: $00
    rlca                                          ; $4802: $07
    inc bc                                        ; $4803: $03
    add hl, bc                                    ; $4804: $09
    nop                                           ; $4805: $00
    nop                                           ; $4806: $00
    nop                                           ; $4807: $00
    ld e, a                                       ; $4808: $5f
    nop                                           ; $4809: $00
    nop                                           ; $480a: $00
    ld h, a                                       ; $480b: $67
    nop                                           ; $480c: $00
    ld l, b                                       ; $480d: $68
    add hl, bc                                    ; $480e: $09
    nop                                           ; $480f: $00
    inc bc                                        ; $4810: $03
    dec b                                         ; $4811: $05
    ld a, [bc]                                    ; $4812: $0a
    nop                                           ; $4813: $00
    add hl, bc                                    ; $4814: $09
    inc de                                        ; $4815: $13
    nop                                           ; $4816: $00
    dec b                                         ; $4817: $05
    ld [$1300], sp                                ; $4818: $08 $00 $13
    nop                                           ; $481b: $00
    ld b, a                                       ; $481c: $47
    inc d                                         ; $481d: $14
    nop                                           ; $481e: $00
    ld l, h                                       ; $481f: $6c
    dec d                                         ; $4820: $15
    nop                                           ; $4821: $00
    nop                                           ; $4822: $00
    ld d, $29                                     ; $4823: $16 $29
    nop                                           ; $4825: $00
    ld d, d                                       ; $4826: $52
    nop                                           ; $4827: $00
    nop                                           ; $4828: $00
    ld e, d                                       ; $4829: $5a
    nop                                           ; $482a: $00
    nop                                           ; $482b: $00
    dec de                                        ; $482c: $1b
    ld b, $00                                     ; $482d: $06 $00
    add hl, bc                                    ; $482f: $09
    ld [de], a                                    ; $4830: $12
    ld bc, $0705                                  ; $4831: $01 $05 $07
    nop                                           ; $4834: $00
    inc de                                        ; $4835: $13
    nop                                           ; $4836: $00
    ld l, [hl]                                    ; $4837: $6e
    inc d                                         ; $4838: $14
    nop                                           ; $4839: $00
    adc h                                         ; $483a: $8c
    dec d                                         ; $483b: $15
    nop                                           ; $483c: $00
    nop                                           ; $483d: $00
    ld d, $2a                                     ; $483e: $16 $2a
    nop                                           ; $4840: $00
    ld d, d                                       ; $4841: $52
    nop                                           ; $4842: $00
    nop                                           ; $4843: $00
    dec de                                        ; $4844: $1b
    ld b, $00                                     ; $4845: $06 $00
    add hl, bc                                    ; $4847: $09
    dec c                                         ; $4848: $0d
    ld bc, $0405                                  ; $4849: $01 $05 $04
    nop                                           ; $484c: $00
    rla                                           ; $484d: $17
    nop                                           ; $484e: $00
    nop                                           ; $484f: $00
    dec de                                        ; $4850: $1b
    ld [bc], a                                    ; $4851: $02
    nop                                           ; $4852: $00
    rrca                                          ; $4853: $0f
    dec c                                         ; $4854: $0d
    nop                                           ; $4855: $00
    ld e, a                                       ; $4856: $5f
    ld bc, $0000                                  ; $4857: $01 $00 $00
    nop                                           ; $485a: $00
    nop                                           ; $485b: $00
    ld bc, $0000                                  ; $485c: $01 $00 $00
    daa                                           ; $485f: $27
    nop                                           ; $4860: $00
    ld bc, $0000                                  ; $4861: $01 $00 $00
    nop                                           ; $4864: $00
    ld bc, $0000                                  ; $4865: $01 $00 $00
    daa                                           ; $4868: $27
    nop                                           ; $4869: $00
    ld bc, $0000                                  ; $486a: $01 $00 $00
    nop                                           ; $486d: $00
    ld bc, $0000                                  ; $486e: $01 $00 $00
    add hl, bc                                    ; $4871: $09
    nop                                           ; $4872: $00
    ld d, a                                       ; $4873: $57
    dec b                                         ; $4874: $05
    inc e                                         ; $4875: $1c
    nop                                           ; $4876: $00
    ld e, a                                       ; $4877: $5f
    nop                                           ; $4878: $00
    nop                                           ; $4879: $00
    inc de                                        ; $487a: $13
    nop                                           ; $487b: $00
    ld [hl], a                                    ; $487c: $77
    inc d                                         ; $487d: $14
    ld bc, $150e                                  ; $487e: $01 $0e $15
    nop                                           ; $4881: $00
    nop                                           ; $4882: $00
    ld d, $37                                     ; $4883: $16 $37
    nop                                           ; $4885: $00
    ld d, d                                       ; $4886: $52
    nop                                           ; $4887: $00
    nop                                           ; $4888: $00
    dec de                                        ; $4889: $1b
    nop                                           ; $488a: $00
    nop                                           ; $488b: $00
    inc de                                        ; $488c: $13
    nop                                           ; $488d: $00
    ld c, e                                       ; $488e: $4b
    inc d                                         ; $488f: $14
    ld bc, $150e                                  ; $4890: $01 $0e $15
    nop                                           ; $4893: $00
    nop                                           ; $4894: $00
    ld d, $38                                     ; $4895: $16 $38
    nop                                           ; $4897: $00
    ld d, d                                       ; $4898: $52
    nop                                           ; $4899: $00
    nop                                           ; $489a: $00
    dec de                                        ; $489b: $1b
    nop                                           ; $489c: $00
    nop                                           ; $489d: $00
    inc de                                        ; $489e: $13
    nop                                           ; $489f: $00
    ld e, a                                       ; $48a0: $5f
    inc d                                         ; $48a1: $14
    ld bc, $1508                                  ; $48a2: $01 $08 $15
    nop                                           ; $48a5: $00
    nop                                           ; $48a6: $00
    ld d, $39                                     ; $48a7: $16 $39
    nop                                           ; $48a9: $00
    ld d, d                                       ; $48aa: $52
    nop                                           ; $48ab: $00
    nop                                           ; $48ac: $00
    dec de                                        ; $48ad: $1b
    nop                                           ; $48ae: $00
    nop                                           ; $48af: $00
    ld e, a                                       ; $48b0: $5f
    ld bc, $1700                                  ; $48b1: $01 $00 $17
    add hl, sp                                    ; $48b4: $39
    nop                                           ; $48b5: $00
    ld [hl+], a                                   ; $48b6: $22
    nop                                           ; $48b7: $00
    nop                                           ; $48b8: $00
    rla                                           ; $48b9: $17
    scf                                           ; $48ba: $37
    nop                                           ; $48bb: $00
    ld [hl+], a                                   ; $48bc: $22
    add hl, sp                                    ; $48bd: $39
    nop                                           ; $48be: $00
    rla                                           ; $48bf: $17
    jr c, jr_00a_48c2                             ; $48c0: $38 $00

jr_00a_48c2:
    ld [hl+], a                                   ; $48c2: $22
    scf                                           ; $48c3: $37
    nop                                           ; $48c4: $00
    nop                                           ; $48c5: $00
    nop                                           ; $48c6: $00
    nop                                           ; $48c7: $00
    nop                                           ; $48c8: $00
    nop                                           ; $48c9: $00
    nop                                           ; $48ca: $00
    ld [bc], a                                    ; $48cb: $02
    nop                                           ; $48cc: $00
    nop                                           ; $48cd: $00
    nop                                           ; $48ce: $00
    ld b, $55                                     ; $48cf: $06 $55
    ld b, $00                                     ; $48d1: $06 $00
    nop                                           ; $48d3: $00
    nop                                           ; $48d4: $00
    nop                                           ; $48d5: $00
    ld e, a                                       ; $48d6: $5f
    nop                                           ; $48d7: $00
    nop                                           ; $48d8: $00
    add hl, bc                                    ; $48d9: $09
    nop                                           ; $48da: $00
    ld b, c                                       ; $48db: $41
    dec b                                         ; $48dc: $05
    ld e, [hl]                                    ; $48dd: $5e
    nop                                           ; $48de: $00
    add hl, bc                                    ; $48df: $09
    rrca                                          ; $48e0: $0f
    ld bc, $0304                                  ; $48e1: $01 $04 $03
    nop                                           ; $48e4: $00
    ld e, a                                       ; $48e5: $5f
    ld bc, $0000                                  ; $48e6: $01 $00 $00
    nop                                           ; $48e9: $00
    nop                                           ; $48ea: $00
    add hl, bc                                    ; $48eb: $09
    dec d                                         ; $48ec: $15
    ld bc, $0305                                  ; $48ed: $01 $05 $03
    nop                                           ; $48f0: $00
    ld e, a                                       ; $48f1: $5f
    ld bc, $0000                                  ; $48f2: $01 $00 $00
    nop                                           ; $48f5: $00
    nop                                           ; $48f6: $00
    ld d, [hl]                                    ; $48f7: $56
    nop                                           ; $48f8: $00
    nop                                           ; $48f9: $00
    rrca                                          ; $48fa: $0f
    rst $38                                       ; $48fb: $ff
    nop                                           ; $48fc: $00
    rla                                           ; $48fd: $17
    nop                                           ; $48fe: $00
    nop                                           ; $48ff: $00
    inc de                                        ; $4900: $13
    nop                                           ; $4901: $00
    ld a, b                                       ; $4902: $78
    ld e, b                                       ; $4903: $58
    nop                                           ; $4904: $00
    ld [$001b], a                                 ; $4905: $ea $1b $00
    nop                                           ; $4908: $00
    inc de                                        ; $4909: $13
    nop                                           ; $490a: $00
    inc d                                         ; $490b: $14
    inc d                                         ; $490c: $14
    nop                                           ; $490d: $00
    nop                                           ; $490e: $00
    dec d                                         ; $490f: $15
    nop                                           ; $4910: $00
    nop                                           ; $4911: $00
    ld d, $37                                     ; $4912: $16 $37
    ld bc, $0052                                  ; $4914: $01 $52 $00
    nop                                           ; $4917: $00
    dec de                                        ; $4918: $1b
    nop                                           ; $4919: $00
    nop                                           ; $491a: $00
    inc de                                        ; $491b: $13
    nop                                           ; $491c: $00
    ld [c], a                                     ; $491d: $e2
    inc d                                         ; $491e: $14
    nop                                           ; $491f: $00
    ld h, d                                       ; $4920: $62
    dec d                                         ; $4921: $15
    add hl, sp                                    ; $4922: $39
    nop                                           ; $4923: $00
    ld d, $08                                     ; $4924: $16 $08
    nop                                           ; $4926: $00
    ld d, d                                       ; $4927: $52
    nop                                           ; $4928: $00
    nop                                           ; $4929: $00
    inc de                                        ; $492a: $13
    nop                                           ; $492b: $00
    and d                                         ; $492c: $a2
    inc d                                         ; $492d: $14
    nop                                           ; $492e: $00
    add hl, hl                                    ; $492f: $29
    dec d                                         ; $4930: $15
    nop                                           ; $4931: $00
    nop                                           ; $4932: $00
    ld d, $6c                                     ; $4933: $16 $6c
    nop                                           ; $4935: $00
    ld d, d                                       ; $4936: $52
    nop                                           ; $4937: $00
    nop                                           ; $4938: $00
    inc de                                        ; $4939: $13
    nop                                           ; $493a: $00
    or [hl]                                       ; $493b: $b6
    inc d                                         ; $493c: $14
    nop                                           ; $493d: $00
    add hl, hl                                    ; $493e: $29
    dec d                                         ; $493f: $15
    nop                                           ; $4940: $00
    nop                                           ; $4941: $00
    ld d, $6d                                     ; $4942: $16 $6d
    nop                                           ; $4944: $00
    ld d, d                                       ; $4945: $52
    nop                                           ; $4946: $00
    nop                                           ; $4947: $00
    add hl, sp                                    ; $4948: $39
    ld l, [hl]                                    ; $4949: $6e
    nop                                           ; $494a: $00
    ld e, a                                       ; $494b: $5f
    ld bc, $6d00                                  ; $494c: $01 $00 $6d
    nop                                           ; $494f: $00
    nop                                           ; $4950: $00
    dec d                                         ; $4951: $15
    nop                                           ; $4952: $00
    nop                                           ; $4953: $00
    inc sp                                        ; $4954: $33
    inc b                                         ; $4955: $04
    and e                                         ; $4956: $a3
    daa                                           ; $4957: $27
    nop                                           ; $4958: $00
    ld e, $15                                     ; $4959: $1e $15
    nop                                           ; $495b: $00
    nop                                           ; $495c: $00
    inc sp                                        ; $495d: $33
    inc b                                         ; $495e: $04
    and h                                         ; $495f: $a4
    ld e, [hl]                                    ; $4960: $5e
    nop                                           ; $4961: $00

Jump_00a_4962:
    nop                                           ; $4962: $00
    rla                                           ; $4963: $17
    ld l, h                                       ; $4964: $6c
    nop                                           ; $4965: $00
    ld e, d                                       ; $4966: $5a
    nop                                           ; $4967: $00
    nop                                           ; $4968: $00
    inc de                                        ; $4969: $13
    inc bc                                        ; $496a: $03
    nop                                           ; $496b: $00
    ld l, [hl]                                    ; $496c: $6e
    nop                                           ; $496d: $00
    ld c, h                                       ; $496e: $4c
    rla                                           ; $496f: $17
    ld l, l                                       ; $4970: $6d
    nop                                           ; $4971: $00
    ld e, d                                       ; $4972: $5a
    nop                                           ; $4973: $00
    nop                                           ; $4974: $00
    ld e, [hl]                                    ; $4975: $5e
    ld bc, $1300                                  ; $4976: $01 $00 $13
    inc bc                                        ; $4979: $03
    nop                                           ; $497a: $00
    ld l, [hl]                                    ; $497b: $6e
    nop                                           ; $497c: $00
    ld c, b                                       ; $497d: $48
    ld e, [hl]                                    ; $497e: $5e
    nop                                           ; $497f: $00
    nop                                           ; $4980: $00
    rla                                           ; $4981: $17
    ld l, h                                       ; $4982: $6c
    nop                                           ; $4983: $00
    inc de                                        ; $4984: $13
    ld bc, $6e00                                  ; $4985: $01 $00 $6e
    nop                                           ; $4988: $00
    ld c, h                                       ; $4989: $4c
    rla                                           ; $498a: $17
    ld [$1300], sp                                ; $498b: $08 $00 $13
    ld bc, $6e00                                  ; $498e: $01 $00 $6e
    nop                                           ; $4991: $00
    ld c, h                                       ; $4992: $4c
    rla                                           ; $4993: $17
    ld l, l                                       ; $4994: $6d
    nop                                           ; $4995: $00
    ld e, [hl]                                    ; $4996: $5e
    ld bc, $1300                                  ; $4997: $01 $00 $13
    ld bc, $6e00                                  ; $499a: $01 $00 $6e
    nop                                           ; $499d: $00
    ld c, h                                       ; $499e: $4c
    ld e, [hl]                                    ; $499f: $5e
    nop                                           ; $49a0: $00
    nop                                           ; $49a1: $00
    rla                                           ; $49a2: $17
    ld l, h                                       ; $49a3: $6c
    nop                                           ; $49a4: $00
    inc de                                        ; $49a5: $13
    ld [bc], a                                    ; $49a6: $02
    nop                                           ; $49a7: $00
    ld l, [hl]                                    ; $49a8: $6e
    nop                                           ; $49a9: $00
    scf                                           ; $49aa: $37
    rla                                           ; $49ab: $17
    ld [$1300], sp                                ; $49ac: $08 $00 $13
    ld [bc], a                                    ; $49af: $02
    nop                                           ; $49b0: $00
    ld l, [hl]                                    ; $49b1: $6e
    nop                                           ; $49b2: $00
    ld [hl-], a                                   ; $49b3: $32
    rla                                           ; $49b4: $17
    ld l, l                                       ; $49b5: $6d
    nop                                           ; $49b6: $00
    ld e, [hl]                                    ; $49b7: $5e
    ld bc, $1300                                  ; $49b8: $01 $00 $13
    ld [bc], a                                    ; $49bb: $02
    nop                                           ; $49bc: $00
    ld l, [hl]                                    ; $49bd: $6e
    nop                                           ; $49be: $00
    ld [hl-], a                                   ; $49bf: $32
    rla                                           ; $49c0: $17
    ld l, h                                       ; $49c1: $6c
    nop                                           ; $49c2: $00
    ld e, $6c                                     ; $49c3: $1e $6c
    nop                                           ; $49c5: $00
    rla                                           ; $49c6: $17
    ld l, l                                       ; $49c7: $6d
    nop                                           ; $49c8: $00
    ld e, $6d                                     ; $49c9: $1e $6d
    nop                                           ; $49cb: $00
    rla                                           ; $49cc: $17
    ld [$1e00], sp                                ; $49cd: $08 $00 $1e
    ld [$1500], sp                                ; $49d0: $08 $00 $15
    nop                                           ; $49d3: $00
    nop                                           ; $49d4: $00
    inc sp                                        ; $49d5: $33
    inc b                                         ; $49d6: $04
    and l                                         ; $49d7: $a5
    dec d                                         ; $49d8: $15
    add hl, de                                    ; $49d9: $19
    nop                                           ; $49da: $00
    inc sp                                        ; $49db: $33
    inc b                                         ; $49dc: $04
    and [hl]                                      ; $49dd: $a6
    rrca                                          ; $49de: $0f
    dec d                                         ; $49df: $15
    ld bc, $480f                                  ; $49e0: $01 $0f $48
    ld bc, $4262                                  ; $49e3: $01 $62 $42
    nop                                           ; $49e6: $00
    ld a, d                                       ; $49e7: $7a
    ld bc, $2c00                                  ; $49e8: $01 $00 $2c
    inc d                                         ; $49eb: $14
    ld bc, $005f                                  ; $49ec: $01 $5f $00
    nop                                           ; $49ef: $00
    ld d, a                                       ; $49f0: $57
    nop                                           ; $49f1: $00
    nop                                           ; $49f2: $00
    nop                                           ; $49f3: $00
    nop                                           ; $49f4: $00
    nop                                           ; $49f5: $00
    add hl, bc                                    ; $49f6: $09
    nop                                           ; $49f7: $00
    ld b, d                                       ; $49f8: $42
    dec b                                         ; $49f9: $05
    dec bc                                        ; $49fa: $0b
    nop                                           ; $49fb: $00
    inc de                                        ; $49fc: $13
    nop                                           ; $49fd: $00
    inc d                                         ; $49fe: $14
    inc d                                         ; $49ff: $14
    nop                                           ; $4a00: $00
    nop                                           ; $4a01: $00
    dec d                                         ; $4a02: $15
    nop                                           ; $4a03: $00
    nop                                           ; $4a04: $00
    ld d, $37                                     ; $4a05: $16 $37
    ld bc, $0052                                  ; $4a07: $01 $52 $00
    nop                                           ; $4a0a: $00
    dec de                                        ; $4a0b: $1b
    nop                                           ; $4a0c: $00
    nop                                           ; $4a0d: $00
    rla                                           ; $4a0e: $17
    scf                                           ; $4a0f: $37
    nop                                           ; $4a10: $00
    ld [hl+], a                                   ; $4a11: $22
    nop                                           ; $4a12: $00
    nop                                           ; $4a13: $00
    ld e, a                                       ; $4a14: $5f
    ld bc, $0000                                  ; $4a15: $01 $00 $00
    nop                                           ; $4a18: $00
    nop                                           ; $4a19: $00
    ld e, a                                       ; $4a1a: $5f
    ld bc, $0000                                  ; $4a1b: $01 $00 $00
    nop                                           ; $4a1e: $00
    nop                                           ; $4a1f: $00
    ld bc, $0000                                  ; $4a20: $01 $00 $00
    daa                                           ; $4a23: $27
    nop                                           ; $4a24: $00
    ld bc, $0000                                  ; $4a25: $01 $00 $00
    nop                                           ; $4a28: $00
    ld bc, $0000                                  ; $4a29: $01 $00 $00
    ld e, a                                       ; $4a2c: $5f
    nop                                           ; $4a2d: $00
    nop                                           ; $4a2e: $00
    add hl, bc                                    ; $4a2f: $09
    nop                                           ; $4a30: $00
    ld e, c                                       ; $4a31: $59
    dec b                                         ; $4a32: $05
    dec d                                         ; $4a33: $15
    nop                                           ; $4a34: $00
    ld d, [hl]                                    ; $4a35: $56
    nop                                           ; $4a36: $00
    nop                                           ; $4a37: $00
    rla                                           ; $4a38: $17
    nop                                           ; $4a39: $00
    nop                                           ; $4a3a: $00
    dec de                                        ; $4a3b: $1b
    nop                                           ; $4a3c: $00
    nop                                           ; $4a3d: $00
    ld e, a                                       ; $4a3e: $5f
    ld bc, $0900                                  ; $4a3f: $01 $00 $09
    ld [hl], $01                                  ; $4a42: $36 $01
    dec b                                         ; $4a44: $05
    ld b, $00                                     ; $4a45: $06 $00
    dec d                                         ; $4a47: $15
    ld a, $00                                     ; $4a48: $3e $00
    inc sp                                        ; $4a4a: $33
    nop                                           ; $4a4b: $00
    ld h, [hl]                                    ; $4a4c: $66
    ld d, a                                       ; $4a4d: $57
    nop                                           ; $4a4e: $00
    nop                                           ; $4a4f: $00
    nop                                           ; $4a50: $00
    nop                                           ; $4a51: $00
    nop                                           ; $4a52: $00
    inc bc                                        ; $4a53: $03
    ld a, [bc]                                    ; $4a54: $0a
    nop                                           ; $4a55: $00
    dec d                                         ; $4a56: $15
    ld a, $00                                     ; $4a57: $3e $00
    inc sp                                        ; $4a59: $33
    nop                                           ; $4a5a: $00
    ld h, h                                       ; $4a5b: $64
    dec d                                         ; $4a5c: $15
    ld e, c                                       ; $4a5d: $59
    nop                                           ; $4a5e: $00
    inc sp                                        ; $4a5f: $33
    nop                                           ; $4a60: $00
    ld h, l                                       ; $4a61: $65
    dec d                                         ; $4a62: $15
    ld a, $00                                     ; $4a63: $3e $00
    inc sp                                        ; $4a65: $33
    nop                                           ; $4a66: $00
    ld h, [hl]                                    ; $4a67: $66
    rrca                                          ; $4a68: $0f
    ld [hl], $01                                  ; $4a69: $36 $01
    ld d, a                                       ; $4a6b: $57
    nop                                           ; $4a6c: $00
    nop                                           ; $4a6d: $00
    nop                                           ; $4a6e: $00
    nop                                           ; $4a6f: $00
    nop                                           ; $4a70: $00
    add hl, bc                                    ; $4a71: $09
    nop                                           ; $4a72: $00
    ld bc, $1505                                  ; $4a73: $01 $05 $15
    nop                                           ; $4a76: $00
    ld d, [hl]                                    ; $4a77: $56
    nop                                           ; $4a78: $00
    nop                                           ; $4a79: $00
    rla                                           ; $4a7a: $17
    nop                                           ; $4a7b: $00
    nop                                           ; $4a7c: $00
    dec de                                        ; $4a7d: $1b
    nop                                           ; $4a7e: $00
    nop                                           ; $4a7f: $00
    ld e, a                                       ; $4a80: $5f
    ld bc, $0900                                  ; $4a81: $01 $00 $09
    ld [hl], $01                                  ; $4a84: $36 $01
    dec b                                         ; $4a86: $05
    ld b, $00                                     ; $4a87: $06 $00
    dec d                                         ; $4a89: $15
    ld a, $00                                     ; $4a8a: $3e $00
    inc sp                                        ; $4a8c: $33
    nop                                           ; $4a8d: $00
    ld h, [hl]                                    ; $4a8e: $66
    ld d, a                                       ; $4a8f: $57
    nop                                           ; $4a90: $00
    nop                                           ; $4a91: $00
    nop                                           ; $4a92: $00
    nop                                           ; $4a93: $00
    nop                                           ; $4a94: $00
    inc bc                                        ; $4a95: $03
    ld a, [bc]                                    ; $4a96: $0a
    nop                                           ; $4a97: $00
    dec d                                         ; $4a98: $15
    ld a, $00                                     ; $4a99: $3e $00
    inc sp                                        ; $4a9b: $33
    nop                                           ; $4a9c: $00
    ld h, h                                       ; $4a9d: $64
    dec d                                         ; $4a9e: $15
    ld e, c                                       ; $4a9f: $59
    nop                                           ; $4aa0: $00
    inc sp                                        ; $4aa1: $33
    nop                                           ; $4aa2: $00
    ld h, l                                       ; $4aa3: $65
    dec d                                         ; $4aa4: $15
    ld a, $00                                     ; $4aa5: $3e $00
    inc sp                                        ; $4aa7: $33
    nop                                           ; $4aa8: $00
    ld h, [hl]                                    ; $4aa9: $66
    rrca                                          ; $4aaa: $0f
    ld [hl], $01                                  ; $4aab: $36 $01
    ld d, a                                       ; $4aad: $57
    nop                                           ; $4aae: $00
    nop                                           ; $4aaf: $00
    nop                                           ; $4ab0: $00
    nop                                           ; $4ab1: $00
    nop                                           ; $4ab2: $00
    add hl, bc                                    ; $4ab3: $09
    nop                                           ; $4ab4: $00
    nop                                           ; $4ab5: $00
    dec b                                         ; $4ab6: $05
    dec d                                         ; $4ab7: $15
    nop                                           ; $4ab8: $00
    ld d, [hl]                                    ; $4ab9: $56
    nop                                           ; $4aba: $00
    nop                                           ; $4abb: $00
    rla                                           ; $4abc: $17
    nop                                           ; $4abd: $00
    nop                                           ; $4abe: $00
    dec de                                        ; $4abf: $1b
    nop                                           ; $4ac0: $00
    nop                                           ; $4ac1: $00
    ld e, a                                       ; $4ac2: $5f
    ld bc, $0900                                  ; $4ac3: $01 $00 $09
    ld [hl], $01                                  ; $4ac6: $36 $01
    dec b                                         ; $4ac8: $05
    ld b, $00                                     ; $4ac9: $06 $00
    dec d                                         ; $4acb: $15
    ld a, $00                                     ; $4acc: $3e $00
    inc sp                                        ; $4ace: $33
    nop                                           ; $4acf: $00
    ld h, [hl]                                    ; $4ad0: $66
    ld d, a                                       ; $4ad1: $57
    nop                                           ; $4ad2: $00
    nop                                           ; $4ad3: $00
    nop                                           ; $4ad4: $00
    nop                                           ; $4ad5: $00
    nop                                           ; $4ad6: $00
    inc bc                                        ; $4ad7: $03
    ld a, [bc]                                    ; $4ad8: $0a
    nop                                           ; $4ad9: $00
    dec d                                         ; $4ada: $15
    ld a, $00                                     ; $4adb: $3e $00
    inc sp                                        ; $4add: $33
    nop                                           ; $4ade: $00
    ld h, h                                       ; $4adf: $64
    dec d                                         ; $4ae0: $15
    ld e, c                                       ; $4ae1: $59
    nop                                           ; $4ae2: $00
    inc sp                                        ; $4ae3: $33
    nop                                           ; $4ae4: $00
    ld h, l                                       ; $4ae5: $65
    dec d                                         ; $4ae6: $15
    ld a, $00                                     ; $4ae7: $3e $00
    inc sp                                        ; $4ae9: $33
    nop                                           ; $4aea: $00
    ld h, [hl]                                    ; $4aeb: $66
    rrca                                          ; $4aec: $0f
    ld [hl], $01                                  ; $4aed: $36 $01
    ld d, a                                       ; $4aef: $57
    nop                                           ; $4af0: $00
    nop                                           ; $4af1: $00
    nop                                           ; $4af2: $00
    nop                                           ; $4af3: $00
    nop                                           ; $4af4: $00
    ld d, [hl]                                    ; $4af5: $56
    nop                                           ; $4af6: $00
    nop                                           ; $4af7: $00
    rla                                           ; $4af8: $17
    nop                                           ; $4af9: $00
    nop                                           ; $4afa: $00
    dec de                                        ; $4afb: $1b
    nop                                           ; $4afc: $00
    nop                                           ; $4afd: $00
    ld e, a                                       ; $4afe: $5f
    ld bc, $1500                                  ; $4aff: $01 $00 $15
    ld a, $00                                     ; $4b02: $3e $00
    inc sp                                        ; $4b04: $33
    nop                                           ; $4b05: $00
    ld h, [hl]                                    ; $4b06: $66
    ld d, a                                       ; $4b07: $57
    nop                                           ; $4b08: $00
    nop                                           ; $4b09: $00
    nop                                           ; $4b0a: $00
    nop                                           ; $4b0b: $00
    nop                                           ; $4b0c: $00
    ld e, a                                       ; $4b0d: $5f
    ld bc, $0000                                  ; $4b0e: $01 $00 $00
    nop                                           ; $4b11: $00
    nop                                           ; $4b12: $00
    rlca                                          ; $4b13: $07
    nop                                           ; $4b14: $00
    nop                                           ; $4b15: $00
    ld bc, $0141                                  ; $4b16: $01 $41 $01
    cp a                                          ; $4b19: $bf
    ld bc, $01c2                                  ; $4b1a: $01 $c2 $01
    ld hl, sp+$02                                 ; $4b1d: $f8 $02
    inc de                                        ; $4b1f: $13
    ld [bc], a                                    ; $4b20: $02
    ld l, $5f                                     ; $4b21: $2e $5f
    nop                                           ; $4b23: $00
    nop                                           ; $4b24: $00
    add hl, bc                                    ; $4b25: $09
    nop                                           ; $4b26: $00
    ld d, e                                       ; $4b27: $53
    dec b                                         ; $4b28: $05
    ld h, [hl]                                    ; $4b29: $66
    nop                                           ; $4b2a: $00
    add hl, bc                                    ; $4b2b: $09
    ld a, [hl+]                                   ; $4b2c: $2a
    ld bc, $0905                                  ; $4b2d: $01 $05 $09
    nop                                           ; $4b30: $00
    ld d, [hl]                                    ; $4b31: $56
    nop                                           ; $4b32: $00
    nop                                           ; $4b33: $00
    rla                                           ; $4b34: $17
    nop                                           ; $4b35: $00
    nop                                           ; $4b36: $00
    inc e                                         ; $4b37: $1c
    dec l                                         ; $4b38: $2d
    nop                                           ; $4b39: $00
    ld e, a                                       ; $4b3a: $5f
    ld bc, $1500                                  ; $4b3b: $01 $00 $15
    ld b, b                                       ; $4b3e: $40
    nop                                           ; $4b3f: $00
    inc sp                                        ; $4b40: $33
    inc bc                                        ; $4b41: $03
    ld h, d                                       ; $4b42: $62
    ld d, a                                       ; $4b43: $57
    nop                                           ; $4b44: $00
    nop                                           ; $4b45: $00
    nop                                           ; $4b46: $00
    nop                                           ; $4b47: $00
    nop                                           ; $4b48: $00
    add hl, bc                                    ; $4b49: $09
    inc c                                         ; $4b4a: $0c
    ld bc, $2405                                  ; $4b4b: $01 $05 $24
    nop                                           ; $4b4e: $00
    ld d, [hl]                                    ; $4b4f: $56
    nop                                           ; $4b50: $00
    nop                                           ; $4b51: $00
    rla                                           ; $4b52: $17
    nop                                           ; $4b53: $00
    nop                                           ; $4b54: $00
    inc e                                         ; $4b55: $1c
    dec l                                         ; $4b56: $2d
    nop                                           ; $4b57: $00
    ld e, a                                       ; $4b58: $5f
    ld bc, $0900                                  ; $4b59: $01 $00 $09
    cp $00                                        ; $4b5c: $fe $00
    dec b                                         ; $4b5e: $05
    ld b, $00                                     ; $4b5f: $06 $00
    dec d                                         ; $4b61: $15
    ld b, b                                       ; $4b62: $40
    nop                                           ; $4b63: $00
    inc sp                                        ; $4b64: $33
    inc bc                                        ; $4b65: $03
    ld e, e                                       ; $4b66: $5b
    rrca                                          ; $4b67: $0f
    inc c                                         ; $4b68: $0c
    ld [bc], a                                    ; $4b69: $02
    dec d                                         ; $4b6a: $15
    nop                                           ; $4b6b: $00
    nop                                           ; $4b6c: $00
    ld b, c                                       ; $4b6d: $41
    nop                                           ; $4b6e: $00
    rrca                                          ; $4b6f: $0f
    add hl, bc                                    ; $4b70: $09
    cp $01                                        ; $4b71: $fe $01
    dec b                                         ; $4b73: $05
    rlca                                          ; $4b74: $07
    nop                                           ; $4b75: $00
    dec d                                         ; $4b76: $15
    ld b, b                                       ; $4b77: $40
    nop                                           ; $4b78: $00
    inc sp                                        ; $4b79: $33
    inc bc                                        ; $4b7a: $03
    ld e, h                                       ; $4b7b: $5c
    rrca                                          ; $4b7c: $0f
    inc c                                         ; $4b7d: $0c
    nop                                           ; $4b7e: $00
    dec d                                         ; $4b7f: $15
    ld d, $00                                     ; $4b80: $16 $00
    rlca                                          ; $4b82: $07
    ld bc, $001a                                  ; $4b83: $01 $1a $00
    nop                                           ; $4b86: $00
    nop                                           ; $4b87: $00
    add hl, bc                                    ; $4b88: $09
    cp $03                                        ; $4b89: $fe $03
    dec b                                         ; $4b8b: $05
    rlca                                          ; $4b8c: $07
    nop                                           ; $4b8d: $00
    dec d                                         ; $4b8e: $15
    ld b, b                                       ; $4b8f: $40
    nop                                           ; $4b90: $00
    inc sp                                        ; $4b91: $33
    dec bc                                        ; $4b92: $0b
    ld d, a                                       ; $4b93: $57
    rrca                                          ; $4b94: $0f
    inc c                                         ; $4b95: $0c
    nop                                           ; $4b96: $00
    dec d                                         ; $4b97: $15
    ld d, $00                                     ; $4b98: $16 $00
    rlca                                          ; $4b9a: $07
    ld bc, $001a                                  ; $4b9b: $01 $1a $00
    nop                                           ; $4b9e: $00
    nop                                           ; $4b9f: $00
    add hl, bc                                    ; $4ba0: $09
    cp $02                                        ; $4ba1: $fe $02
    dec b                                         ; $4ba3: $05
    rlca                                          ; $4ba4: $07
    nop                                           ; $4ba5: $00
    dec d                                         ; $4ba6: $15
    ld b, b                                       ; $4ba7: $40
    nop                                           ; $4ba8: $00
    inc sp                                        ; $4ba9: $33
    dec bc                                        ; $4baa: $0b
    ld e, b                                       ; $4bab: $58
    rrca                                          ; $4bac: $0f
    inc c                                         ; $4bad: $0c
    nop                                           ; $4bae: $00
    dec d                                         ; $4baf: $15
    ld d, $00                                     ; $4bb0: $16 $00
    rlca                                          ; $4bb2: $07
    ld bc, $001a                                  ; $4bb3: $01 $1a $00
    nop                                           ; $4bb6: $00
    nop                                           ; $4bb7: $00
    add hl, bc                                    ; $4bb8: $09
    inc c                                         ; $4bb9: $0c
    ld [bc], a                                    ; $4bba: $02
    dec b                                         ; $4bbb: $05
    rra                                           ; $4bbc: $1f
    nop                                           ; $4bbd: $00
    ld d, [hl]                                    ; $4bbe: $56
    nop                                           ; $4bbf: $00
    nop                                           ; $4bc0: $00
    rla                                           ; $4bc1: $17
    nop                                           ; $4bc2: $00
    nop                                           ; $4bc3: $00
    inc e                                         ; $4bc4: $1c
    dec l                                         ; $4bc5: $2d
    nop                                           ; $4bc6: $00
    ld e, a                                       ; $4bc7: $5f
    ld bc, $1500                                  ; $4bc8: $01 $00 $15
    ld b, b                                       ; $4bcb: $40
    nop                                           ; $4bcc: $00
    inc sp                                        ; $4bcd: $33
    ld a, [bc]                                    ; $4bce: $0a
    dec de                                        ; $4bcf: $1b
    ld l, d                                       ; $4bd0: $6a
    inc c                                         ; $4bd1: $0c
    nop                                           ; $4bd2: $00
    dec d                                         ; $4bd3: $15
    dec d                                         ; $4bd4: $15
    nop                                           ; $4bd5: $00
    inc sp                                        ; $4bd6: $33
    inc bc                                        ; $4bd7: $03
    ld e, [hl]                                    ; $4bd8: $5e
    dec d                                         ; $4bd9: $15
    add hl, de                                    ; $4bda: $19
    nop                                           ; $4bdb: $00
    inc sp                                        ; $4bdc: $33
    inc bc                                        ; $4bdd: $03
    ld e, a                                       ; $4bde: $5f
    dec d                                         ; $4bdf: $15
    ld b, b                                       ; $4be0: $40
    nop                                           ; $4be1: $00
    inc sp                                        ; $4be2: $33
    inc bc                                        ; $4be3: $03
    ld h, b                                       ; $4be4: $60
    rrca                                          ; $4be5: $0f
    ld a, [hl+]                                   ; $4be6: $2a
    ld bc, $550f                                  ; $4be7: $01 $0f $55
    ld bc, $0c2c                                  ; $4bea: $01 $2c $0c
    ld [bc], a                                    ; $4bed: $02
    ld d, a                                       ; $4bee: $57
    nop                                           ; $4bef: $00
    nop                                           ; $4bf0: $00
    ld de, $0135                                  ; $4bf1: $11 $35 $01
    add hl, bc                                    ; $4bf4: $09
    dec [hl]                                      ; $4bf5: $35
    ld b, $05                                     ; $4bf6: $06 $05
    ld a, [bc]                                    ; $4bf8: $0a
    nop                                           ; $4bf9: $00
    rla                                           ; $4bfa: $17
    nop                                           ; $4bfb: $00
    nop                                           ; $4bfc: $00
    ld e, e                                       ; $4bfd: $5b
    nop                                           ; $4bfe: $00
    nop                                           ; $4bff: $00
    ld [hl], $00                                  ; $4c00: $36 $00
    nop                                           ; $4c02: $00
    ld e, l                                       ; $4c03: $5d
    nop                                           ; $4c04: $00
    nop                                           ; $4c05: $00
    ld h, d                                       ; $4c06: $62
    dec h                                         ; $4c07: $25
    nop                                           ; $4c08: $00
    ld a, d                                       ; $4c09: $7a
    nop                                           ; $4c0a: $00
    nop                                           ; $4c0b: $00
    dec d                                         ; $4c0c: $15
    ld b, b                                       ; $4c0d: $40
    nop                                           ; $4c0e: $00
    inc sp                                        ; $4c0f: $33
    inc bc                                        ; $4c10: $03
    jp nz, Jump_00a_5628                          ; $4c11: $c2 $28 $56

    nop                                           ; $4c14: $00
    nop                                           ; $4c15: $00
    nop                                           ; $4c16: $00
    nop                                           ; $4c17: $00
    ld d, [hl]                                    ; $4c18: $56
    nop                                           ; $4c19: $00
    nop                                           ; $4c1a: $00
    rla                                           ; $4c1b: $17
    nop                                           ; $4c1c: $00
    nop                                           ; $4c1d: $00
    inc e                                         ; $4c1e: $1c
    dec l                                         ; $4c1f: $2d
    nop                                           ; $4c20: $00
    ld e, a                                       ; $4c21: $5f
    ld bc, $1500                                  ; $4c22: $01 $00 $15
    nop                                           ; $4c25: $00
    nop                                           ; $4c26: $00
    inc sp                                        ; $4c27: $33
    inc bc                                        ; $4c28: $03
    ld d, l                                       ; $4c29: $55
    dec d                                         ; $4c2a: $15
    ld b, b                                       ; $4c2b: $40
    nop                                           ; $4c2c: $00
    inc sp                                        ; $4c2d: $33
    inc bc                                        ; $4c2e: $03
    ld d, [hl]                                    ; $4c2f: $56
    dec d                                         ; $4c30: $15
    add hl, de                                    ; $4c31: $19
    nop                                           ; $4c32: $00
    inc sp                                        ; $4c33: $33
    inc bc                                        ; $4c34: $03
    ld d, a                                       ; $4c35: $57
    dec d                                         ; $4c36: $15
    dec d                                         ; $4c37: $15
    nop                                           ; $4c38: $00
    inc sp                                        ; $4c39: $33
    inc bc                                        ; $4c3a: $03
    ld e, b                                       ; $4c3b: $58
    dec d                                         ; $4c3c: $15
    ld b, b                                       ; $4c3d: $40
    nop                                           ; $4c3e: $00
    inc sp                                        ; $4c3f: $33
    inc bc                                        ; $4c40: $03
    ld e, l                                       ; $4c41: $5d
    add hl, bc                                    ; $4c42: $09
    ld a, $00                                     ; $4c43: $3e $00
    dec b                                         ; $4c45: $05
    inc bc                                        ; $4c46: $03
    nop                                           ; $4c47: $00
    ld a, a                                       ; $4c48: $7f
    add hl, bc                                    ; $4c49: $09
    db $db                                        ; $4c4a: $db
    rrca                                          ; $4c4b: $0f
    ld a, $01                                     ; $4c4c: $3e $01
    rrca                                          ; $4c4e: $0f
    inc c                                         ; $4c4f: $0c
    ld bc, $0955                                  ; $4c50: $01 $55 $09
    nop                                           ; $4c53: $00
    inc bc                                        ; $4c54: $03
    and a                                         ; $4c55: $a7
    nop                                           ; $4c56: $00
    nop                                           ; $4c57: $00
    nop                                           ; $4c58: $00
    nop                                           ; $4c59: $00
    nop                                           ; $4c5a: $00
    nop                                           ; $4c5b: $00
    nop                                           ; $4c5c: $00
    ld e, a                                       ; $4c5d: $5f
    ld bc, $0000                                  ; $4c5e: $01 $00 $00
    nop                                           ; $4c61: $00
    nop                                           ; $4c62: $00
    add hl, bc                                    ; $4c63: $09
    nop                                           ; $4c64: $00
    ld d, e                                       ; $4c65: $53
    dec b                                         ; $4c66: $05
    jr z, jr_00a_4c69                             ; $4c67: $28 $00

jr_00a_4c69:
    add hl, bc                                    ; $4c69: $09
    ld a, [hl+]                                   ; $4c6a: $2a
    ld bc, $0905                                  ; $4c6b: $01 $05 $09
    nop                                           ; $4c6e: $00
    ld e, a                                       ; $4c6f: $5f
    nop                                           ; $4c70: $00
    nop                                           ; $4c71: $00
    inc de                                        ; $4c72: $13
    nop                                           ; $4c73: $00
    add a                                         ; $4c74: $87
    inc d                                         ; $4c75: $14
    nop                                           ; $4c76: $00
    ld e, d                                       ; $4c77: $5a
    dec d                                         ; $4c78: $15
    nop                                           ; $4c79: $00
    nop                                           ; $4c7a: $00
    ld d, $2d                                     ; $4c7b: $16 $2d
    nop                                           ; $4c7d: $00
    ld d, d                                       ; $4c7e: $52
    nop                                           ; $4c7f: $00
    nop                                           ; $4c80: $00
    ld e, a                                       ; $4c81: $5f
    ld bc, $0000                                  ; $4c82: $01 $00 $00
    nop                                           ; $4c85: $00
    nop                                           ; $4c86: $00
    ld e, a                                       ; $4c87: $5f
    nop                                           ; $4c88: $00
    nop                                           ; $4c89: $00
    inc de                                        ; $4c8a: $13
    nop                                           ; $4c8b: $00
    add a                                         ; $4c8c: $87
    inc d                                         ; $4c8d: $14
    nop                                           ; $4c8e: $00
    ld e, d                                       ; $4c8f: $5a
    dec d                                         ; $4c90: $15
    nop                                           ; $4c91: $00
    nop                                           ; $4c92: $00
    ld d, $2d                                     ; $4c93: $16 $2d
    nop                                           ; $4c95: $00
    ld d, d                                       ; $4c96: $52
    nop                                           ; $4c97: $00
    nop                                           ; $4c98: $00
    inc de                                        ; $4c99: $13
    nop                                           ; $4c9a: $00
    add a                                         ; $4c9b: $87
    inc d                                         ; $4c9c: $14
    nop                                           ; $4c9d: $00
    add sp, $15                                   ; $4c9e: $e8 $15
    jr z, jr_00a_4ca2                             ; $4ca0: $28 $00

jr_00a_4ca2:
    ld d, $08                                     ; $4ca2: $16 $08
    nop                                           ; $4ca4: $00
    ld d, d                                       ; $4ca5: $52
    nop                                           ; $4ca6: $00
    nop                                           ; $4ca7: $00
    inc de                                        ; $4ca8: $13
    nop                                           ; $4ca9: $00
    cp a                                          ; $4caa: $bf
    inc d                                         ; $4cab: $14
    nop                                           ; $4cac: $00
    or c                                          ; $4cad: $b1
    dec d                                         ; $4cae: $15
    jr nc, jr_00a_4cb1                            ; $4caf: $30 $00

jr_00a_4cb1:
    ld d, $08                                     ; $4cb1: $16 $08
    nop                                           ; $4cb3: $00
    ld d, d                                       ; $4cb4: $52
    nop                                           ; $4cb5: $00
    nop                                           ; $4cb6: $00
    inc de                                        ; $4cb7: $13
    nop                                           ; $4cb8: $00
    ccf                                           ; $4cb9: $3f
    inc d                                         ; $4cba: $14
    nop                                           ; $4cbb: $00
    or c                                          ; $4cbc: $b1
    dec d                                         ; $4cbd: $15
    inc l                                         ; $4cbe: $2c
    nop                                           ; $4cbf: $00
    ld d, $08                                     ; $4cc0: $16 $08
    nop                                           ; $4cc2: $00
    ld d, d                                       ; $4cc3: $52
    nop                                           ; $4cc4: $00
    nop                                           ; $4cc5: $00
    inc de                                        ; $4cc6: $13
    nop                                           ; $4cc7: $00
    ld [hl], a                                    ; $4cc8: $77
    inc d                                         ; $4cc9: $14
    nop                                           ; $4cca: $00
    ld [$0615], a                                 ; $4ccb: $ea $15 $06
    nop                                           ; $4cce: $00
    ld d, $50                                     ; $4ccf: $16 $50
    nop                                           ; $4cd1: $00
    ld [hl], l                                    ; $4cd2: $75
    inc bc                                        ; $4cd3: $03
    nop                                           ; $4cd4: $00
    ld d, d                                       ; $4cd5: $52
    nop                                           ; $4cd6: $00
    nop                                           ; $4cd7: $00
    ld a, d                                       ; $4cd8: $7a
    ld bc, $5f00                                  ; $4cd9: $01 $00 $5f
    ld bc, $0000                                  ; $4cdc: $01 $00 $00
    nop                                           ; $4cdf: $00
    nop                                           ; $4ce0: $00
    nop                                           ; $4ce1: $00
    nop                                           ; $4ce2: $00
    nop                                           ; $4ce3: $00
    add hl, bc                                    ; $4ce4: $09
    nop                                           ; $4ce5: $00
    ld d, e                                       ; $4ce6: $53
    dec b                                         ; $4ce7: $05
    stop                                          ; $4ce8: $10 $00
    add hl, bc                                    ; $4cea: $09
    ld a, [hl+]                                   ; $4ceb: $2a
    ld bc, $0205                                  ; $4cec: $01 $05 $02
    nop                                           ; $4cef: $00
    nop                                           ; $4cf0: $00
    nop                                           ; $4cf1: $00
    nop                                           ; $4cf2: $00
    add hl, bc                                    ; $4cf3: $09
    ld [bc], a                                    ; $4cf4: $02
    nop                                           ; $4cf5: $00
    dec b                                         ; $4cf6: $05
    dec b                                         ; $4cf7: $05
    nop                                           ; $4cf8: $00
    dec d                                         ; $4cf9: $15
    dec de                                        ; $4cfa: $1b
    nop                                           ; $4cfb: $00
    inc sp                                        ; $4cfc: $33
    ld [bc], a                                    ; $4cfd: $02
    add l                                         ; $4cfe: $85
    nop                                           ; $4cff: $00
    nop                                           ; $4d00: $00
    nop                                           ; $4d01: $00
    rrca                                          ; $4d02: $0f
    ld [bc], a                                    ; $4d03: $02
    ld bc, $0209                                  ; $4d04: $01 $09 $02
    ld bc, $0505                                  ; $4d07: $01 $05 $05
    nop                                           ; $4d0a: $00
    dec d                                         ; $4d0b: $15
    dec de                                        ; $4d0c: $1b
    nop                                           ; $4d0d: $00
    inc sp                                        ; $4d0e: $33
    ld [bc], a                                    ; $4d0f: $02
    add [hl]                                      ; $4d10: $86
    rrca                                          ; $4d11: $0f
    ld [bc], a                                    ; $4d12: $02
    nop                                           ; $4d13: $00
    nop                                           ; $4d14: $00
    nop                                           ; $4d15: $00
    nop                                           ; $4d16: $00
    nop                                           ; $4d17: $00
    nop                                           ; $4d18: $00
    nop                                           ; $4d19: $00
    add hl, bc                                    ; $4d1a: $09
    nop                                           ; $4d1b: $00
    ld d, e                                       ; $4d1c: $53
    dec b                                         ; $4d1d: $05
    rlca                                          ; $4d1e: $07
    nop                                           ; $4d1f: $00
    add hl, bc                                    ; $4d20: $09
    ld a, [hl+]                                   ; $4d21: $2a
    ld bc, $0205                                  ; $4d22: $01 $05 $02
    nop                                           ; $4d25: $00
    nop                                           ; $4d26: $00
    nop                                           ; $4d27: $00
    nop                                           ; $4d28: $00
    dec d                                         ; $4d29: $15
    inc l                                         ; $4d2a: $2c
    nop                                           ; $4d2b: $00
    inc sp                                        ; $4d2c: $33
    inc bc                                        ; $4d2d: $03
    cp d                                          ; $4d2e: $ba
    nop                                           ; $4d2f: $00
    nop                                           ; $4d30: $00
    nop                                           ; $4d31: $00
    nop                                           ; $4d32: $00
    nop                                           ; $4d33: $00
    nop                                           ; $4d34: $00
    add hl, bc                                    ; $4d35: $09
    nop                                           ; $4d36: $00
    ld d, e                                       ; $4d37: $53
    dec b                                         ; $4d38: $05
    rlca                                          ; $4d39: $07
    nop                                           ; $4d3a: $00
    add hl, bc                                    ; $4d3b: $09
    ld a, [hl+]                                   ; $4d3c: $2a
    ld bc, $0205                                  ; $4d3d: $01 $05 $02
    nop                                           ; $4d40: $00
    nop                                           ; $4d41: $00
    nop                                           ; $4d42: $00
    nop                                           ; $4d43: $00
    dec d                                         ; $4d44: $15
    add hl, de                                    ; $4d45: $19
    nop                                           ; $4d46: $00
    inc sp                                        ; $4d47: $33
    inc bc                                        ; $4d48: $03
    or d                                          ; $4d49: $b2
    nop                                           ; $4d4a: $00
    nop                                           ; $4d4b: $00
    nop                                           ; $4d4c: $00
    nop                                           ; $4d4d: $00
    nop                                           ; $4d4e: $00
    nop                                           ; $4d4f: $00
    add hl, bc                                    ; $4d50: $09
    nop                                           ; $4d51: $00
    ld d, e                                       ; $4d52: $53
    dec b                                         ; $4d53: $05
    rlca                                          ; $4d54: $07
    nop                                           ; $4d55: $00
    add hl, bc                                    ; $4d56: $09
    ld a, [hl+]                                   ; $4d57: $2a
    ld bc, $0205                                  ; $4d58: $01 $05 $02
    nop                                           ; $4d5b: $00
    nop                                           ; $4d5c: $00
    nop                                           ; $4d5d: $00
    nop                                           ; $4d5e: $00
    dec d                                         ; $4d5f: $15
    dec d                                         ; $4d60: $15
    nop                                           ; $4d61: $00
    inc sp                                        ; $4d62: $33
    inc bc                                        ; $4d63: $03
    cp c                                          ; $4d64: $b9
    nop                                           ; $4d65: $00
    nop                                           ; $4d66: $00
    nop                                           ; $4d67: $00
    nop                                           ; $4d68: $00
    nop                                           ; $4d69: $00
    nop                                           ; $4d6a: $00
    ld a, [bc]                                    ; $4d6b: $0a
    nop                                           ; $4d6c: $00
    nop                                           ; $4d6d: $00
    nop                                           ; $4d6e: $00
    inc bc                                        ; $4d6f: $03
    ld bc, $018f                                  ; $4d70: $01 $8f $01
    cp a                                          ; $4d73: $bf
    ld bc, $02ef                                  ; $4d74: $01 $ef $02
    dec hl                                        ; $4d77: $2b
    inc bc                                        ; $4d78: $03
    sbc $04                                       ; $4d79: $de $04
    ld c, $04                                     ; $4d7b: $0e $04
    ld a, $04                                     ; $4d7d: $3e $04
    ld l, [hl]                                    ; $4d7f: $6e
    nop                                           ; $4d80: $00
    nop                                           ; $4d81: $00
    nop                                           ; $4d82: $00
    ld e, a                                       ; $4d83: $5f
    nop                                           ; $4d84: $00
    nop                                           ; $4d85: $00
    add hl, bc                                    ; $4d86: $09
    nop                                           ; $4d87: $00
    db $10                                        ; $4d88: $10
    dec b                                         ; $4d89: $05
    dec e                                         ; $4d8a: $1d
    nop                                           ; $4d8b: $00
    add hl, bc                                    ; $4d8c: $09
    inc c                                         ; $4d8d: $0c
    ld bc, $0305                                  ; $4d8e: $01 $05 $03
    nop                                           ; $4d91: $00
    ld e, a                                       ; $4d92: $5f
    ld bc, $0000                                  ; $4d93: $01 $00 $00
    nop                                           ; $4d96: $00
    nop                                           ; $4d97: $00
    ld d, [hl]                                    ; $4d98: $56
    nop                                           ; $4d99: $00
    nop                                           ; $4d9a: $00
    rla                                           ; $4d9b: $17
    nop                                           ; $4d9c: $00
    nop                                           ; $4d9d: $00
    inc e                                         ; $4d9e: $1c
    ld c, c                                       ; $4d9f: $49
    nop                                           ; $4da0: $00
    ld e, a                                       ; $4da1: $5f
    ld bc, $1500                                  ; $4da2: $01 $00 $15
    nop                                           ; $4da5: $00
    nop                                           ; $4da6: $00
    inc sp                                        ; $4da7: $33
    ld [bc], a                                    ; $4da8: $02
    ld [hl], $15                                  ; $4da9: $36 $15
    ld a, [hl-]                                   ; $4dab: $3a
    nop                                           ; $4dac: $00
    inc sp                                        ; $4dad: $33
    ld [bc], a                                    ; $4dae: $02
    scf                                           ; $4daf: $37
    dec d                                         ; $4db0: $15
    nop                                           ; $4db1: $00
    nop                                           ; $4db2: $00
    inc sp                                        ; $4db3: $33
    ld [bc], a                                    ; $4db4: $02
    jr c, jr_00a_4dcc                             ; $4db5: $38 $15

    ld a, [hl-]                                   ; $4db7: $3a
    nop                                           ; $4db8: $00
    inc sp                                        ; $4db9: $33
    ld [bc], a                                    ; $4dba: $02
    add hl, sp                                    ; $4dbb: $39
    dec d                                         ; $4dbc: $15
    nop                                           ; $4dbd: $00
    nop                                           ; $4dbe: $00
    inc sp                                        ; $4dbf: $33
    ld [bc], a                                    ; $4dc0: $02
    ld a, [hl-]                                   ; $4dc1: $3a
    dec d                                         ; $4dc2: $15
    ld a, [hl-]                                   ; $4dc3: $3a
    nop                                           ; $4dc4: $00
    inc sp                                        ; $4dc5: $33
    ld [bc], a                                    ; $4dc6: $02
    dec sp                                        ; $4dc7: $3b
    dec d                                         ; $4dc8: $15
    nop                                           ; $4dc9: $00
    nop                                           ; $4dca: $00
    inc sp                                        ; $4dcb: $33

jr_00a_4dcc:
    ld [bc], a                                    ; $4dcc: $02
    inc a                                         ; $4dcd: $3c
    dec d                                         ; $4dce: $15
    ld a, [hl-]                                   ; $4dcf: $3a
    nop                                           ; $4dd0: $00
    inc sp                                        ; $4dd1: $33
    ld [bc], a                                    ; $4dd2: $02
    dec a                                         ; $4dd3: $3d
    ld h, d                                       ; $4dd4: $62
    ld de, $5700                                  ; $4dd5: $11 $00 $57
    nop                                           ; $4dd8: $00
    nop                                           ; $4dd9: $00
    rrca                                          ; $4dda: $0f
    inc c                                         ; $4ddb: $0c
    ld bc, $0000                                  ; $4ddc: $01 $00 $00
    nop                                           ; $4ddf: $00
    add hl, bc                                    ; $4de0: $09
    nop                                           ; $4de1: $00
    ld de, $0d05                                  ; $4de2: $11 $05 $0d
    nop                                           ; $4de5: $00
    ld d, [hl]                                    ; $4de6: $56
    nop                                           ; $4de7: $00
    nop                                           ; $4de8: $00
    rla                                           ; $4de9: $17
    nop                                           ; $4dea: $00
    nop                                           ; $4deb: $00
    inc e                                         ; $4dec: $1c
    ld c, c                                       ; $4ded: $49
    nop                                           ; $4dee: $00
    ld e, a                                       ; $4def: $5f
    ld bc, $1500                                  ; $4df0: $01 $00 $15
    ld a, [hl-]                                   ; $4df3: $3a
    nop                                           ; $4df4: $00
    inc sp                                        ; $4df5: $33
    ld [bc], a                                    ; $4df6: $02
    halt                                          ; $4df7: $76
    dec d                                         ; $4df8: $15
    nop                                           ; $4df9: $00
    nop                                           ; $4dfa: $00
    inc sp                                        ; $4dfb: $33
    ld [bc], a                                    ; $4dfc: $02
    ld [hl], a                                    ; $4dfd: $77
    dec d                                         ; $4dfe: $15
    ld a, [hl-]                                   ; $4dff: $3a
    nop                                           ; $4e00: $00
    inc sp                                        ; $4e01: $33
    ld [bc], a                                    ; $4e02: $02
    ld a, b                                       ; $4e03: $78
    ld d, a                                       ; $4e04: $57
    nop                                           ; $4e05: $00
    nop                                           ; $4e06: $00
    nop                                           ; $4e07: $00
    nop                                           ; $4e08: $00
    nop                                           ; $4e09: $00
    add hl, bc                                    ; $4e0a: $09
    nop                                           ; $4e0b: $00
    ld d, h                                       ; $4e0c: $54
    dec b                                         ; $4e0d: $05
    ld d, h                                       ; $4e0e: $54
    nop                                           ; $4e0f: $00
    add hl, bc                                    ; $4e10: $09
    inc c                                         ; $4e11: $0c
    ld bc, $2805                                  ; $4e12: $01 $05 $28
    nop                                           ; $4e15: $00
    ld d, [hl]                                    ; $4e16: $56
    nop                                           ; $4e17: $00
    nop                                           ; $4e18: $00
    rla                                           ; $4e19: $17
    nop                                           ; $4e1a: $00
    nop                                           ; $4e1b: $00
    inc e                                         ; $4e1c: $1c
    ld c, c                                       ; $4e1d: $49
    nop                                           ; $4e1e: $00
    ld e, a                                       ; $4e1f: $5f
    ld bc, $1500                                  ; $4e20: $01 $00 $15
    ld a, [hl-]                                   ; $4e23: $3a
    nop                                           ; $4e24: $00
    inc sp                                        ; $4e25: $33
    ld [bc], a                                    ; $4e26: $02
    ld [hl], b                                    ; $4e27: $70
    dec d                                         ; $4e28: $15
    nop                                           ; $4e29: $00
    nop                                           ; $4e2a: $00
    inc sp                                        ; $4e2b: $33
    ld [bc], a                                    ; $4e2c: $02
    ld [hl], c                                    ; $4e2d: $71
    dec d                                         ; $4e2e: $15
    ld a, [hl-]                                   ; $4e2f: $3a
    nop                                           ; $4e30: $00
    inc sp                                        ; $4e31: $33
    ld [bc], a                                    ; $4e32: $02
    ld [hl], d                                    ; $4e33: $72
    dec d                                         ; $4e34: $15
    nop                                           ; $4e35: $00
    nop                                           ; $4e36: $00
    ld b, c                                       ; $4e37: $41
    nop                                           ; $4e38: $00
    ld a, [bc]                                    ; $4e39: $0a
    inc l                                         ; $4e3a: $2c
    add hl, bc                                    ; $4e3b: $09
    ld [bc], a                                    ; $4e3c: $02
    ld l, l                                       ; $4e3d: $6d
    nop                                           ; $4e3e: $00
    nop                                           ; $4e3f: $00
    dec d                                         ; $4e40: $15
    ld a, [hl-]                                   ; $4e41: $3a
    nop                                           ; $4e42: $00
    inc sp                                        ; $4e43: $33
    dec bc                                        ; $4e44: $0b
    cpl                                           ; $4e45: $2f
    ld e, a                                       ; $4e46: $5f
    nop                                           ; $4e47: $00
    nop                                           ; $4e48: $00
    rrca                                          ; $4e49: $0f
    ld d, d                                       ; $4e4a: $52
    ld bc, $280f                                  ; $4e4b: $01 $0f $28
    ld bc, $3511                                  ; $4e4e: $01 $11 $35
    ld bc, $3509                                  ; $4e51: $01 $09 $35
    ld b, $05                                     ; $4e54: $06 $05
    dec c                                         ; $4e56: $0d
    nop                                           ; $4e57: $00
    rla                                           ; $4e58: $17
    nop                                           ; $4e59: $00
    nop                                           ; $4e5a: $00
    ld e, e                                       ; $4e5b: $5b
    nop                                           ; $4e5c: $00
    nop                                           ; $4e5d: $00
    ld [hl], $00                                  ; $4e5e: $36 $00
    nop                                           ; $4e60: $00
    ld e, l                                       ; $4e61: $5d
    nop                                           ; $4e62: $00
    nop                                           ; $4e63: $00
    ld h, d                                       ; $4e64: $62
    dec h                                         ; $4e65: $25
    nop                                           ; $4e66: $00
    add hl, sp                                    ; $4e67: $39
    inc h                                         ; $4e68: $24
    ld bc, $3a15                                  ; $4e69: $01 $15 $3a
    nop                                           ; $4e6c: $00
    inc sp                                        ; $4e6d: $33
    inc bc                                        ; $4e6e: $03
    jp nz, $0057                                  ; $4e6f: $c2 $57 $00

    nop                                           ; $4e72: $00
    ld e, a                                       ; $4e73: $5f
    ld bc, $2800                                  ; $4e74: $01 $00 $28
    ld d, [hl]                                    ; $4e77: $56
    nop                                           ; $4e78: $00
    inc bc                                        ; $4e79: $03
    dec b                                         ; $4e7a: $05
    nop                                           ; $4e7b: $00
    ld h, d                                       ; $4e7c: $62
    ld d, e                                       ; $4e7d: $53
    nop                                           ; $4e7e: $00
    ld e, a                                       ; $4e7f: $5f
    ld bc, $7900                                  ; $4e80: $01 $00 $79
    nop                                           ; $4e83: $00
    ld d, $57                                     ; $4e84: $16 $57
    nop                                           ; $4e86: $00
    nop                                           ; $4e87: $00
    nop                                           ; $4e88: $00
    nop                                           ; $4e89: $00
    nop                                           ; $4e8a: $00
    ld d, [hl]                                    ; $4e8b: $56
    nop                                           ; $4e8c: $00
    nop                                           ; $4e8d: $00
    rla                                           ; $4e8e: $17
    nop                                           ; $4e8f: $00
    nop                                           ; $4e90: $00
    inc e                                         ; $4e91: $1c
    ld c, c                                       ; $4e92: $49
    nop                                           ; $4e93: $00
    ld e, a                                       ; $4e94: $5f
    ld bc, $1500                                  ; $4e95: $01 $00 $15
    nop                                           ; $4e98: $00
    nop                                           ; $4e99: $00
    inc sp                                        ; $4e9a: $33
    ld [bc], a                                    ; $4e9b: $02
    ld [hl], e                                    ; $4e9c: $73
    dec d                                         ; $4e9d: $15
    ld a, [hl-]                                   ; $4e9e: $3a
    nop                                           ; $4e9f: $00
    inc sp                                        ; $4ea0: $33
    ld [bc], a                                    ; $4ea1: $02
    ld [hl], h                                    ; $4ea2: $74
    add hl, sp                                    ; $4ea3: $39
    inc a                                         ; $4ea4: $3c
    ld bc, $0015                                  ; $4ea5: $01 $15 $00
    nop                                           ; $4ea8: $00
    ld b, c                                       ; $4ea9: $41
    nop                                           ; $4eaa: $00
    ld a, [bc]                                    ; $4eab: $0a
    add hl, bc                                    ; $4eac: $09
    rst $38                                       ; $4ead: $ff
    inc bc                                        ; $4eae: $03
    dec b                                         ; $4eaf: $05
    ld b, $00                                     ; $4eb0: $06 $00
    dec d                                         ; $4eb2: $15
    ld a, [hl-]                                   ; $4eb3: $3a
    nop                                           ; $4eb4: $00
    inc sp                                        ; $4eb5: $33
    ld [bc], a                                    ; $4eb6: $02
    add a                                         ; $4eb7: $87
    rrca                                          ; $4eb8: $0f
    rst $38                                       ; $4eb9: $ff
    nop                                           ; $4eba: $00
    rla                                           ; $4ebb: $17
    nop                                           ; $4ebc: $00
    nop                                           ; $4ebd: $00
    dec de                                        ; $4ebe: $1b
    inc b                                         ; $4ebf: $04
    nop                                           ; $4ec0: $00
    rrca                                          ; $4ec1: $0f
    ld d, d                                       ; $4ec2: $52
    ld bc, $280f                                  ; $4ec3: $01 $0f $28
    ld bc, $092c                                  ; $4ec6: $01 $2c $09
    ld [bc], a                                    ; $4ec9: $02
    ld l, l                                       ; $4eca: $6d
    nop                                           ; $4ecb: $00
    nop                                           ; $4ecc: $00
    dec d                                         ; $4ecd: $15
    ld a, [hl-]                                   ; $4ece: $3a
    nop                                           ; $4ecf: $00
    inc sp                                        ; $4ed0: $33
    dec bc                                        ; $4ed1: $0b
    cpl                                           ; $4ed2: $2f
    ld de, $0135                                  ; $4ed3: $11 $35 $01
    add hl, bc                                    ; $4ed6: $09
    dec [hl]                                      ; $4ed7: $35
    ld b, $05                                     ; $4ed8: $06 $05
    inc c                                         ; $4eda: $0c
    nop                                           ; $4edb: $00
    rla                                           ; $4edc: $17
    nop                                           ; $4edd: $00
    nop                                           ; $4ede: $00
    ld e, e                                       ; $4edf: $5b
    nop                                           ; $4ee0: $00
    nop                                           ; $4ee1: $00
    ld [hl], $00                                  ; $4ee2: $36 $00
    nop                                           ; $4ee4: $00
    ld e, l                                       ; $4ee5: $5d
    nop                                           ; $4ee6: $00
    nop                                           ; $4ee7: $00
    ld h, d                                       ; $4ee8: $62
    dec h                                         ; $4ee9: $25
    nop                                           ; $4eea: $00
    add hl, sp                                    ; $4eeb: $39
    inc h                                         ; $4eec: $24
    ld bc, $3a15                                  ; $4eed: $01 $15 $3a
    nop                                           ; $4ef0: $00
    inc sp                                        ; $4ef1: $33
    inc bc                                        ; $4ef2: $03
    jp nz, $0057                                  ; $4ef3: $c2 $57 $00

    nop                                           ; $4ef6: $00
    jr z, jr_00a_4f4f                             ; $4ef7: $28 $56

    nop                                           ; $4ef9: $00
    inc bc                                        ; $4efa: $03
    inc b                                         ; $4efb: $04
    nop                                           ; $4efc: $00
    ld h, d                                       ; $4efd: $62
    ld d, e                                       ; $4efe: $53
    nop                                           ; $4eff: $00
    ld a, c                                       ; $4f00: $79
    nop                                           ; $4f01: $00
    ld d, $57                                     ; $4f02: $16 $57
    nop                                           ; $4f04: $00
    nop                                           ; $4f05: $00
    nop                                           ; $4f06: $00
    nop                                           ; $4f07: $00
    nop                                           ; $4f08: $00
    ld e, a                                       ; $4f09: $5f
    ld bc, $0000                                  ; $4f0a: $01 $00 $00
    nop                                           ; $4f0d: $00
    nop                                           ; $4f0e: $00
    add hl, bc                                    ; $4f0f: $09
    nop                                           ; $4f10: $00
    db $10                                        ; $4f11: $10
    dec b                                         ; $4f12: $05
    inc b                                         ; $4f13: $04
    nop                                           ; $4f14: $00
    dec d                                         ; $4f15: $15
    inc l                                         ; $4f16: $2c
    nop                                           ; $4f17: $00
    inc sp                                        ; $4f18: $33
    ld [bc], a                                    ; $4f19: $02
    ld a, [hl]                                    ; $4f1a: $7e
    nop                                           ; $4f1b: $00
    nop                                           ; $4f1c: $00
    nop                                           ; $4f1d: $00
    add hl, bc                                    ; $4f1e: $09
    nop                                           ; $4f1f: $00
    ld de, $0405                                  ; $4f20: $11 $05 $04
    nop                                           ; $4f23: $00
    dec d                                         ; $4f24: $15
    inc l                                         ; $4f25: $2c
    nop                                           ; $4f26: $00
    inc sp                                        ; $4f27: $33
    ld [bc], a                                    ; $4f28: $02
    ld a, [hl]                                    ; $4f29: $7e
    nop                                           ; $4f2a: $00
    nop                                           ; $4f2b: $00
    nop                                           ; $4f2c: $00
    add hl, bc                                    ; $4f2d: $09
    nop                                           ; $4f2e: $00
    ld d, h                                       ; $4f2f: $54
    dec b                                         ; $4f30: $05
    inc b                                         ; $4f31: $04
    nop                                           ; $4f32: $00
    dec d                                         ; $4f33: $15
    inc l                                         ; $4f34: $2c
    nop                                           ; $4f35: $00
    inc sp                                        ; $4f36: $33
    ld [bc], a                                    ; $4f37: $02
    ld a, a                                       ; $4f38: $7f
    nop                                           ; $4f39: $00
    nop                                           ; $4f3a: $00
    nop                                           ; $4f3b: $00
    nop                                           ; $4f3c: $00
    nop                                           ; $4f3d: $00
    nop                                           ; $4f3e: $00
    add hl, bc                                    ; $4f3f: $09
    nop                                           ; $4f40: $00
    db $10                                        ; $4f41: $10
    dec b                                         ; $4f42: $05
    inc b                                         ; $4f43: $04
    nop                                           ; $4f44: $00
    dec d                                         ; $4f45: $15
    dec d                                         ; $4f46: $15
    nop                                           ; $4f47: $00
    inc sp                                        ; $4f48: $33
    ld [bc], a                                    ; $4f49: $02
    ld a, a                                       ; $4f4a: $7f
    nop                                           ; $4f4b: $00
    nop                                           ; $4f4c: $00
    nop                                           ; $4f4d: $00
    add hl, bc                                    ; $4f4e: $09

jr_00a_4f4f:
    nop                                           ; $4f4f: $00
    ld de, $0405                                  ; $4f50: $11 $05 $04
    nop                                           ; $4f53: $00
    dec d                                         ; $4f54: $15
    dec d                                         ; $4f55: $15
    nop                                           ; $4f56: $00
    inc sp                                        ; $4f57: $33
    ld [bc], a                                    ; $4f58: $02
    ld a, a                                       ; $4f59: $7f
    nop                                           ; $4f5a: $00
    nop                                           ; $4f5b: $00
    nop                                           ; $4f5c: $00
    add hl, bc                                    ; $4f5d: $09
    nop                                           ; $4f5e: $00
    ld d, h                                       ; $4f5f: $54
    dec b                                         ; $4f60: $05
    inc b                                         ; $4f61: $04
    nop                                           ; $4f62: $00
    dec d                                         ; $4f63: $15
    dec d                                         ; $4f64: $15
    nop                                           ; $4f65: $00
    inc sp                                        ; $4f66: $33
    ld [bc], a                                    ; $4f67: $02
    ld h, [hl]                                    ; $4f68: $66
    nop                                           ; $4f69: $00
    nop                                           ; $4f6a: $00
    nop                                           ; $4f6b: $00
    nop                                           ; $4f6c: $00
    nop                                           ; $4f6d: $00
    nop                                           ; $4f6e: $00
    add hl, bc                                    ; $4f6f: $09
    nop                                           ; $4f70: $00
    db $10                                        ; $4f71: $10
    dec b                                         ; $4f72: $05
    ld b, $00                                     ; $4f73: $06 $00
    dec d                                         ; $4f75: $15
    nop                                           ; $4f76: $00
    nop                                           ; $4f77: $00
    inc sp                                        ; $4f78: $33
    ld [bc], a                                    ; $4f79: $02
    ld c, a                                       ; $4f7a: $4f
    dec d                                         ; $4f7b: $15
    add hl, de                                    ; $4f7c: $19
    nop                                           ; $4f7d: $00
    inc sp                                        ; $4f7e: $33
    ld [bc], a                                    ; $4f7f: $02
    ld d, e                                       ; $4f80: $53
    nop                                           ; $4f81: $00
    nop                                           ; $4f82: $00
    nop                                           ; $4f83: $00
    add hl, bc                                    ; $4f84: $09
    nop                                           ; $4f85: $00
    ld de, $0605                                  ; $4f86: $11 $05 $06
    nop                                           ; $4f89: $00
    dec d                                         ; $4f8a: $15
    nop                                           ; $4f8b: $00
    nop                                           ; $4f8c: $00
    inc sp                                        ; $4f8d: $33
    ld [bc], a                                    ; $4f8e: $02
    ld c, a                                       ; $4f8f: $4f
    dec d                                         ; $4f90: $15
    add hl, de                                    ; $4f91: $19
    nop                                           ; $4f92: $00
    inc sp                                        ; $4f93: $33
    ld [bc], a                                    ; $4f94: $02
    ld d, e                                       ; $4f95: $53
    nop                                           ; $4f96: $00
    nop                                           ; $4f97: $00
    nop                                           ; $4f98: $00
    add hl, bc                                    ; $4f99: $09
    nop                                           ; $4f9a: $00
    ld d, h                                       ; $4f9b: $54
    dec b                                         ; $4f9c: $05
    inc b                                         ; $4f9d: $04
    nop                                           ; $4f9e: $00
    dec d                                         ; $4f9f: $15
    add hl, de                                    ; $4fa0: $19
    nop                                           ; $4fa1: $00
    inc sp                                        ; $4fa2: $33
    inc bc                                        ; $4fa3: $03
    ld h, h                                       ; $4fa4: $64
    nop                                           ; $4fa5: $00
    nop                                           ; $4fa6: $00
    nop                                           ; $4fa7: $00
    nop                                           ; $4fa8: $00
    nop                                           ; $4fa9: $00
    nop                                           ; $4faa: $00
    ld e, a                                       ; $4fab: $5f
    nop                                           ; $4fac: $00
    nop                                           ; $4fad: $00
    add hl, bc                                    ; $4fae: $09
    nop                                           ; $4faf: $00
    db $10                                        ; $4fb0: $10
    dec b                                         ; $4fb1: $05
    ld sp, $0900                                  ; $4fb2: $31 $00 $09
    jr z, jr_00a_4fb8                             ; $4fb5: $28 $01

    dec b                                         ; $4fb7: $05

jr_00a_4fb8:
    inc bc                                        ; $4fb8: $03
    nop                                           ; $4fb9: $00
    ld e, a                                       ; $4fba: $5f
    ld bc, $0000                                  ; $4fbb: $01 $00 $00
    nop                                           ; $4fbe: $00
    nop                                           ; $4fbf: $00
    inc de                                        ; $4fc0: $13
    nop                                           ; $4fc1: $00
    add h                                         ; $4fc2: $84
    inc d                                         ; $4fc3: $14
    nop                                           ; $4fc4: $00
    rst $18                                       ; $4fc5: $df
    dec d                                         ; $4fc6: $15
    nop                                           ; $4fc7: $00
    nop                                           ; $4fc8: $00
    ld d, $49                                     ; $4fc9: $16 $49
    nop                                           ; $4fcb: $00
    ld d, d                                       ; $4fcc: $52
    nop                                           ; $4fcd: $00
    nop                                           ; $4fce: $00
    dec de                                        ; $4fcf: $1b
    ld [bc], a                                    ; $4fd0: $02
    nop                                           ; $4fd1: $00
    inc de                                        ; $4fd2: $13
    nop                                           ; $4fd3: $00
    or a                                          ; $4fd4: $b7
    inc d                                         ; $4fd5: $14
    nop                                           ; $4fd6: $00
    cp c                                          ; $4fd7: $b9
    dec d                                         ; $4fd8: $15
    add hl, hl                                    ; $4fd9: $29
    nop                                           ; $4fda: $00
    ld d, $08                                     ; $4fdb: $16 $08
    nop                                           ; $4fdd: $00
    ld d, d                                       ; $4fde: $52
    nop                                           ; $4fdf: $00
    nop                                           ; $4fe0: $00
    inc de                                        ; $4fe1: $13
    nop                                           ; $4fe2: $00
    pop de                                        ; $4fe3: $d1
    inc d                                         ; $4fe4: $14
    nop                                           ; $4fe5: $00
    xor l                                         ; $4fe6: $ad
    dec d                                         ; $4fe7: $15
    nop                                           ; $4fe8: $00
    nop                                           ; $4fe9: $00
    ld d, $39                                     ; $4fea: $16 $39
    nop                                           ; $4fec: $00
    ld d, d                                       ; $4fed: $52
    nop                                           ; $4fee: $00
    nop                                           ; $4fef: $00
    inc de                                        ; $4ff0: $13
    ld bc, $1400                                  ; $4ff1: $01 $00 $14
    nop                                           ; $4ff4: $00
    sbc $15                                       ; $4ff5: $de $15
    dec l                                         ; $4ff7: $2d
    nop                                           ; $4ff8: $00
    ld d, $08                                     ; $4ff9: $16 $08
    nop                                           ; $4ffb: $00
    ld d, d                                       ; $4ffc: $52
    nop                                           ; $4ffd: $00
    nop                                           ; $4ffe: $00
    inc de                                        ; $4fff: $13
    nop                                           ; $5000: $00
    cp b                                          ; $5001: $b8
    inc d                                         ; $5002: $14
    nop                                           ; $5003: $00
    ld a, c                                       ; $5004: $79
    dec d                                         ; $5005: $15
    inc bc                                        ; $5006: $03
    nop                                           ; $5007: $00
    ld d, $51                                     ; $5008: $16 $51
    nop                                           ; $500a: $00
    ld d, d                                       ; $500b: $52
    nop                                           ; $500c: $00
    nop                                           ; $500d: $00
    inc de                                        ; $500e: $13
    nop                                           ; $500f: $00
    rst $38                                       ; $5010: $ff
    inc d                                         ; $5011: $14
    nop                                           ; $5012: $00
    adc d                                         ; $5013: $8a
    dec d                                         ; $5014: $15
    inc b                                         ; $5015: $04
    nop                                           ; $5016: $00
    ld d, $51                                     ; $5017: $16 $51
    nop                                           ; $5019: $00
    ld d, d                                       ; $501a: $52
    nop                                           ; $501b: $00
    nop                                           ; $501c: $00
    inc de                                        ; $501d: $13
    nop                                           ; $501e: $00
    rst $38                                       ; $501f: $ff
    inc d                                         ; $5020: $14
    nop                                           ; $5021: $00
    and c                                         ; $5022: $a1
    dec d                                         ; $5023: $15
    dec b                                         ; $5024: $05
    nop                                           ; $5025: $00
    ld d, $51                                     ; $5026: $16 $51
    nop                                           ; $5028: $00
    ld d, d                                       ; $5029: $52
    nop                                           ; $502a: $00
    nop                                           ; $502b: $00
    inc de                                        ; $502c: $13
    nop                                           ; $502d: $00
    cp b                                          ; $502e: $b8
    inc d                                         ; $502f: $14
    ld bc, $1511                                  ; $5030: $01 $11 $15
    ld b, $00                                     ; $5033: $06 $00
    ld d, $51                                     ; $5035: $16 $51
    nop                                           ; $5037: $00
    ld d, d                                       ; $5038: $52
    nop                                           ; $5039: $00
    nop                                           ; $503a: $00
    ld a, d                                       ; $503b: $7a
    ld bc, $5f00                                  ; $503c: $01 $00 $5f
    ld bc, $0000                                  ; $503f: $01 $00 $00
    nop                                           ; $5042: $00
    nop                                           ; $5043: $00
    add hl, bc                                    ; $5044: $09
    nop                                           ; $5045: $00
    ld de, $2d05                                  ; $5046: $11 $05 $2d
    nop                                           ; $5049: $00
    inc de                                        ; $504a: $13
    nop                                           ; $504b: $00
    add h                                         ; $504c: $84
    inc d                                         ; $504d: $14
    nop                                           ; $504e: $00
    rst $18                                       ; $504f: $df
    dec d                                         ; $5050: $15
    nop                                           ; $5051: $00
    nop                                           ; $5052: $00
    ld d, $49                                     ; $5053: $16 $49
    nop                                           ; $5055: $00
    ld d, d                                       ; $5056: $52
    nop                                           ; $5057: $00
    nop                                           ; $5058: $00
    dec de                                        ; $5059: $1b
    ld [bc], a                                    ; $505a: $02
    nop                                           ; $505b: $00
    inc de                                        ; $505c: $13
    nop                                           ; $505d: $00
    or a                                          ; $505e: $b7
    inc d                                         ; $505f: $14
    nop                                           ; $5060: $00
    cp c                                          ; $5061: $b9
    dec d                                         ; $5062: $15
    add hl, hl                                    ; $5063: $29
    nop                                           ; $5064: $00
    ld d, $08                                     ; $5065: $16 $08
    nop                                           ; $5067: $00
    ld d, d                                       ; $5068: $52
    nop                                           ; $5069: $00
    nop                                           ; $506a: $00
    inc de                                        ; $506b: $13
    nop                                           ; $506c: $00
    pop de                                        ; $506d: $d1
    inc d                                         ; $506e: $14
    nop                                           ; $506f: $00
    xor l                                         ; $5070: $ad
    dec d                                         ; $5071: $15
    nop                                           ; $5072: $00
    nop                                           ; $5073: $00
    ld d, $39                                     ; $5074: $16 $39
    nop                                           ; $5076: $00
    ld d, d                                       ; $5077: $52
    nop                                           ; $5078: $00
    nop                                           ; $5079: $00
    inc de                                        ; $507a: $13
    ld bc, $1400                                  ; $507b: $01 $00 $14
    nop                                           ; $507e: $00
    sbc $15                                       ; $507f: $de $15
    dec l                                         ; $5081: $2d
    nop                                           ; $5082: $00
    ld d, $08                                     ; $5083: $16 $08
    nop                                           ; $5085: $00
    ld d, d                                       ; $5086: $52
    nop                                           ; $5087: $00
    nop                                           ; $5088: $00
    inc de                                        ; $5089: $13
    nop                                           ; $508a: $00
    cp b                                          ; $508b: $b8
    inc d                                         ; $508c: $14
    nop                                           ; $508d: $00
    ld a, c                                       ; $508e: $79
    dec d                                         ; $508f: $15
    inc bc                                        ; $5090: $03
    nop                                           ; $5091: $00
    ld d, $51                                     ; $5092: $16 $51
    nop                                           ; $5094: $00
    ld d, d                                       ; $5095: $52
    nop                                           ; $5096: $00
    nop                                           ; $5097: $00
    inc de                                        ; $5098: $13
    nop                                           ; $5099: $00
    rst $38                                       ; $509a: $ff
    inc d                                         ; $509b: $14
    nop                                           ; $509c: $00
    adc d                                         ; $509d: $8a
    dec d                                         ; $509e: $15
    inc b                                         ; $509f: $04
    nop                                           ; $50a0: $00
    ld d, $51                                     ; $50a1: $16 $51
    nop                                           ; $50a3: $00
    ld d, d                                       ; $50a4: $52
    nop                                           ; $50a5: $00
    nop                                           ; $50a6: $00
    inc de                                        ; $50a7: $13
    nop                                           ; $50a8: $00
    rst $38                                       ; $50a9: $ff
    inc d                                         ; $50aa: $14
    nop                                           ; $50ab: $00
    and c                                         ; $50ac: $a1
    dec d                                         ; $50ad: $15
    dec b                                         ; $50ae: $05
    nop                                           ; $50af: $00
    ld d, $51                                     ; $50b0: $16 $51
    nop                                           ; $50b2: $00
    ld d, d                                       ; $50b3: $52
    nop                                           ; $50b4: $00
    nop                                           ; $50b5: $00
    inc de                                        ; $50b6: $13
    nop                                           ; $50b7: $00
    cp b                                          ; $50b8: $b8
    inc d                                         ; $50b9: $14
    ld bc, $1511                                  ; $50ba: $01 $11 $15
    ld b, $00                                     ; $50bd: $06 $00
    ld d, $51                                     ; $50bf: $16 $51
    nop                                           ; $50c1: $00
    ld d, d                                       ; $50c2: $52
    nop                                           ; $50c3: $00
    nop                                           ; $50c4: $00
    ld a, d                                       ; $50c5: $7a
    ld bc, $5f00                                  ; $50c6: $01 $00 $5f
    ld bc, $0000                                  ; $50c9: $01 $00 $00
    nop                                           ; $50cc: $00
    nop                                           ; $50cd: $00
    add hl, bc                                    ; $50ce: $09
    nop                                           ; $50cf: $00
    ld d, h                                       ; $50d0: $54
    dec b                                         ; $50d1: $05
    dec l                                         ; $50d2: $2d
    nop                                           ; $50d3: $00
    ld a, d                                       ; $50d4: $7a
    ld bc, $1300                                  ; $50d5: $01 $00 $13
    nop                                           ; $50d8: $00
    add h                                         ; $50d9: $84
    inc d                                         ; $50da: $14
    nop                                           ; $50db: $00
    rst $18                                       ; $50dc: $df
    dec d                                         ; $50dd: $15
    nop                                           ; $50de: $00
    nop                                           ; $50df: $00
    ld d, $49                                     ; $50e0: $16 $49
    nop                                           ; $50e2: $00
    ld d, d                                       ; $50e3: $52
    nop                                           ; $50e4: $00
    nop                                           ; $50e5: $00
    dec de                                        ; $50e6: $1b
    ld [bc], a                                    ; $50e7: $02
    nop                                           ; $50e8: $00
    inc de                                        ; $50e9: $13
    nop                                           ; $50ea: $00
    or a                                          ; $50eb: $b7
    inc d                                         ; $50ec: $14
    nop                                           ; $50ed: $00
    cp c                                          ; $50ee: $b9
    dec d                                         ; $50ef: $15
    add hl, hl                                    ; $50f0: $29
    nop                                           ; $50f1: $00
    ld d, $08                                     ; $50f2: $16 $08
    nop                                           ; $50f4: $00
    ld d, d                                       ; $50f5: $52
    nop                                           ; $50f6: $00
    nop                                           ; $50f7: $00
    inc de                                        ; $50f8: $13
    nop                                           ; $50f9: $00
    pop de                                        ; $50fa: $d1
    inc d                                         ; $50fb: $14
    nop                                           ; $50fc: $00
    xor l                                         ; $50fd: $ad
    dec d                                         ; $50fe: $15
    nop                                           ; $50ff: $00
    nop                                           ; $5100: $00
    ld d, $39                                     ; $5101: $16 $39
    nop                                           ; $5103: $00
    ld d, d                                       ; $5104: $52
    nop                                           ; $5105: $00
    nop                                           ; $5106: $00
    inc de                                        ; $5107: $13
    ld bc, $1400                                  ; $5108: $01 $00 $14
    nop                                           ; $510b: $00
    sbc $15                                       ; $510c: $de $15
    dec l                                         ; $510e: $2d
    nop                                           ; $510f: $00
    ld d, $08                                     ; $5110: $16 $08
    nop                                           ; $5112: $00
    ld d, d                                       ; $5113: $52
    nop                                           ; $5114: $00
    nop                                           ; $5115: $00
    inc de                                        ; $5116: $13
    nop                                           ; $5117: $00
    cp b                                          ; $5118: $b8
    inc d                                         ; $5119: $14
    nop                                           ; $511a: $00
    ld a, c                                       ; $511b: $79
    dec d                                         ; $511c: $15
    inc bc                                        ; $511d: $03
    nop                                           ; $511e: $00
    ld d, $51                                     ; $511f: $16 $51
    nop                                           ; $5121: $00
    ld d, d                                       ; $5122: $52
    nop                                           ; $5123: $00
    nop                                           ; $5124: $00
    inc de                                        ; $5125: $13
    nop                                           ; $5126: $00
    rst $38                                       ; $5127: $ff
    inc d                                         ; $5128: $14
    nop                                           ; $5129: $00
    adc d                                         ; $512a: $8a
    dec d                                         ; $512b: $15
    inc b                                         ; $512c: $04
    nop                                           ; $512d: $00
    ld d, $51                                     ; $512e: $16 $51
    nop                                           ; $5130: $00
    ld d, d                                       ; $5131: $52
    nop                                           ; $5132: $00
    nop                                           ; $5133: $00
    inc de                                        ; $5134: $13
    nop                                           ; $5135: $00
    rst $38                                       ; $5136: $ff
    inc d                                         ; $5137: $14
    nop                                           ; $5138: $00
    and c                                         ; $5139: $a1
    dec d                                         ; $513a: $15
    dec b                                         ; $513b: $05
    nop                                           ; $513c: $00
    ld d, $51                                     ; $513d: $16 $51
    nop                                           ; $513f: $00
    ld d, d                                       ; $5140: $52
    nop                                           ; $5141: $00
    nop                                           ; $5142: $00
    inc de                                        ; $5143: $13
    nop                                           ; $5144: $00
    cp b                                          ; $5145: $b8
    inc d                                         ; $5146: $14
    ld bc, $1511                                  ; $5147: $01 $11 $15
    ld b, $00                                     ; $514a: $06 $00
    ld d, $51                                     ; $514c: $16 $51
    nop                                           ; $514e: $00
    ld d, d                                       ; $514f: $52
    nop                                           ; $5150: $00
    nop                                           ; $5151: $00
    ld e, a                                       ; $5152: $5f
    ld bc, $0000                                  ; $5153: $01 $00 $00
    nop                                           ; $5156: $00
    nop                                           ; $5157: $00
    ld e, a                                       ; $5158: $5f
    ld bc, $0000                                  ; $5159: $01 $00 $00
    nop                                           ; $515c: $00
    nop                                           ; $515d: $00
    add hl, bc                                    ; $515e: $09
    nop                                           ; $515f: $00
    ld d, e                                       ; $5160: $53
    dec b                                         ; $5161: $05
    inc b                                         ; $5162: $04
    nop                                           ; $5163: $00
    dec d                                         ; $5164: $15
    dec de                                        ; $5165: $1b
    nop                                           ; $5166: $00
    inc sp                                        ; $5167: $33
    inc bc                                        ; $5168: $03
    ld h, h                                       ; $5169: $64
    nop                                           ; $516a: $00
    nop                                           ; $516b: $00
    nop                                           ; $516c: $00
    add hl, bc                                    ; $516d: $09
    nop                                           ; $516e: $00
    rrca                                          ; $516f: $0f
    dec b                                         ; $5170: $05
    inc b                                         ; $5171: $04
    nop                                           ; $5172: $00
    dec d                                         ; $5173: $15
    dec de                                        ; $5174: $1b
    nop                                           ; $5175: $00
    inc sp                                        ; $5176: $33
    inc bc                                        ; $5177: $03
    ld h, h                                       ; $5178: $64
    nop                                           ; $5179: $00
    nop                                           ; $517a: $00
    nop                                           ; $517b: $00
    add hl, bc                                    ; $517c: $09
    nop                                           ; $517d: $00
    ld d, h                                       ; $517e: $54
    dec b                                         ; $517f: $05
    inc b                                         ; $5180: $04
    nop                                           ; $5181: $00
    dec d                                         ; $5182: $15
    dec de                                        ; $5183: $1b
    nop                                           ; $5184: $00
    inc sp                                        ; $5185: $33
    inc bc                                        ; $5186: $03
    ld h, l                                       ; $5187: $65
    nop                                           ; $5188: $00
    nop                                           ; $5189: $00
    nop                                           ; $518a: $00
    nop                                           ; $518b: $00
    nop                                           ; $518c: $00
    nop                                           ; $518d: $00
    add hl, bc                                    ; $518e: $09
    nop                                           ; $518f: $00
    ld d, e                                       ; $5190: $53
    dec b                                         ; $5191: $05
    inc b                                         ; $5192: $04
    nop                                           ; $5193: $00
    dec d                                         ; $5194: $15
    dec de                                        ; $5195: $1b
    nop                                           ; $5196: $00
    inc sp                                        ; $5197: $33
    inc bc                                        ; $5198: $03
    ld h, l                                       ; $5199: $65
    nop                                           ; $519a: $00
    nop                                           ; $519b: $00
    nop                                           ; $519c: $00
    add hl, bc                                    ; $519d: $09
    nop                                           ; $519e: $00
    rrca                                          ; $519f: $0f
    dec b                                         ; $51a0: $05
    inc b                                         ; $51a1: $04
    nop                                           ; $51a2: $00
    dec d                                         ; $51a3: $15
    dec de                                        ; $51a4: $1b
    nop                                           ; $51a5: $00
    inc sp                                        ; $51a6: $33
    inc bc                                        ; $51a7: $03
    ld h, l                                       ; $51a8: $65
    nop                                           ; $51a9: $00
    nop                                           ; $51aa: $00
    nop                                           ; $51ab: $00
    add hl, bc                                    ; $51ac: $09
    nop                                           ; $51ad: $00
    ld d, h                                       ; $51ae: $54
    dec b                                         ; $51af: $05
    inc b                                         ; $51b0: $04
    nop                                           ; $51b1: $00
    dec d                                         ; $51b2: $15
    dec de                                        ; $51b3: $1b
    nop                                           ; $51b4: $00
    inc sp                                        ; $51b5: $33
    inc bc                                        ; $51b6: $03
    ld h, [hl]                                    ; $51b7: $66
    nop                                           ; $51b8: $00
    nop                                           ; $51b9: $00
    nop                                           ; $51ba: $00
    nop                                           ; $51bb: $00
    nop                                           ; $51bc: $00
    nop                                           ; $51bd: $00
    add hl, bc                                    ; $51be: $09
    nop                                           ; $51bf: $00
    ld d, e                                       ; $51c0: $53
    dec b                                         ; $51c1: $05
    inc b                                         ; $51c2: $04
    nop                                           ; $51c3: $00
    dec d                                         ; $51c4: $15
    dec de                                        ; $51c5: $1b
    nop                                           ; $51c6: $00
    inc sp                                        ; $51c7: $33
    inc bc                                        ; $51c8: $03
    ld h, [hl]                                    ; $51c9: $66
    nop                                           ; $51ca: $00
    nop                                           ; $51cb: $00
    nop                                           ; $51cc: $00
    add hl, bc                                    ; $51cd: $09
    nop                                           ; $51ce: $00
    rrca                                          ; $51cf: $0f
    dec b                                         ; $51d0: $05
    inc b                                         ; $51d1: $04
    nop                                           ; $51d2: $00
    dec d                                         ; $51d3: $15
    dec de                                        ; $51d4: $1b
    nop                                           ; $51d5: $00
    inc sp                                        ; $51d6: $33
    inc bc                                        ; $51d7: $03
    ld h, [hl]                                    ; $51d8: $66
    nop                                           ; $51d9: $00
    nop                                           ; $51da: $00
    nop                                           ; $51db: $00
    add hl, bc                                    ; $51dc: $09
    nop                                           ; $51dd: $00
    ld d, h                                       ; $51de: $54
    dec b                                         ; $51df: $05
    inc b                                         ; $51e0: $04
    nop                                           ; $51e1: $00
    dec d                                         ; $51e2: $15
    dec de                                        ; $51e3: $1b
    nop                                           ; $51e4: $00
    inc sp                                        ; $51e5: $33
    inc bc                                        ; $51e6: $03
    ld h, a                                       ; $51e7: $67
    nop                                           ; $51e8: $00
    nop                                           ; $51e9: $00
    nop                                           ; $51ea: $00
    nop                                           ; $51eb: $00
    nop                                           ; $51ec: $00
    nop                                           ; $51ed: $00
    add hl, bc                                    ; $51ee: $09
    nop                                           ; $51ef: $00
    ld d, e                                       ; $51f0: $53
    dec b                                         ; $51f1: $05
    inc b                                         ; $51f2: $04
    nop                                           ; $51f3: $00
    dec d                                         ; $51f4: $15
    dec de                                        ; $51f5: $1b
    nop                                           ; $51f6: $00
    inc sp                                        ; $51f7: $33
    inc bc                                        ; $51f8: $03
    ld h, a                                       ; $51f9: $67
    nop                                           ; $51fa: $00
    nop                                           ; $51fb: $00
    nop                                           ; $51fc: $00
    add hl, bc                                    ; $51fd: $09
    nop                                           ; $51fe: $00
    rrca                                          ; $51ff: $0f
    dec b                                         ; $5200: $05
    inc b                                         ; $5201: $04
    nop                                           ; $5202: $00
    dec d                                         ; $5203: $15
    dec de                                        ; $5204: $1b
    nop                                           ; $5205: $00
    inc sp                                        ; $5206: $33
    inc bc                                        ; $5207: $03
    ld h, a                                       ; $5208: $67
    nop                                           ; $5209: $00
    nop                                           ; $520a: $00
    nop                                           ; $520b: $00
    add hl, bc                                    ; $520c: $09
    nop                                           ; $520d: $00
    ld d, h                                       ; $520e: $54
    dec b                                         ; $520f: $05
    inc b                                         ; $5210: $04
    nop                                           ; $5211: $00
    dec d                                         ; $5212: $15
    dec de                                        ; $5213: $1b
    nop                                           ; $5214: $00
    inc sp                                        ; $5215: $33
    inc bc                                        ; $5216: $03
    ld h, a                                       ; $5217: $67
    nop                                           ; $5218: $00
    nop                                           ; $5219: $00
    nop                                           ; $521a: $00
    nop                                           ; $521b: $00
    nop                                           ; $521c: $00
    nop                                           ; $521d: $00
    inc bc                                        ; $521e: $03
    nop                                           ; $521f: $00
    nop                                           ; $5220: $00
    nop                                           ; $5221: $00
    db $db                                        ; $5222: $db
    nop                                           ; $5223: $00
    rst $38                                       ; $5224: $ff
    ld e, a                                       ; $5225: $5f
    nop                                           ; $5226: $00
    nop                                           ; $5227: $00
    add hl, bc                                    ; $5228: $09
    nop                                           ; $5229: $00
    dec sp                                        ; $522a: $3b
    dec b                                         ; $522b: $05
    ld b, l                                       ; $522c: $45
    nop                                           ; $522d: $00
    add hl, bc                                    ; $522e: $09
    inc c                                         ; $522f: $0c
    ld bc, $0305                                  ; $5230: $01 $05 $03
    nop                                           ; $5233: $00
    ld e, a                                       ; $5234: $5f
    ld bc, $0000                                  ; $5235: $01 $00 $00
    nop                                           ; $5238: $00
    nop                                           ; $5239: $00
    rrca                                          ; $523a: $0f
    inc c                                         ; $523b: $0c
    ld bc, $0056                                  ; $523c: $01 $56 $00
    nop                                           ; $523f: $00
    rrca                                          ; $5240: $0f
    rst $38                                       ; $5241: $ff
    nop                                           ; $5242: $00
    rla                                           ; $5243: $17
    nop                                           ; $5244: $00
    nop                                           ; $5245: $00
    dec de                                        ; $5246: $1b
    ld [bc], a                                    ; $5247: $02
    nop                                           ; $5248: $00
    ld e, a                                       ; $5249: $5f
    ld bc, $1500                                  ; $524a: $01 $00 $15
    ld [bc], a                                    ; $524d: $02
    nop                                           ; $524e: $00
    add hl, de                                    ; $524f: $19
    nop                                           ; $5250: $00
    db $10                                        ; $5251: $10
    inc de                                        ; $5252: $13
    nop                                           ; $5253: $00
    ld c, d                                       ; $5254: $4a
    ld [hl], c                                    ; $5255: $71
    nop                                           ; $5256: $00
    cp h                                          ; $5257: $bc
    dec de                                        ; $5258: $1b
    nop                                           ; $5259: $00
    nop                                           ; $525a: $00
    daa                                           ; $525b: $27
    nop                                           ; $525c: $00
    dec b                                         ; $525d: $05
    dec d                                         ; $525e: $15
    nop                                           ; $525f: $00
    nop                                           ; $5260: $00
    inc sp                                        ; $5261: $33
    inc b                                         ; $5262: $04
    ld d, e                                       ; $5263: $53
    ld e, a                                       ; $5264: $5f
    nop                                           ; $5265: $00
    nop                                           ; $5266: $00
    inc de                                        ; $5267: $13
    nop                                           ; $5268: $00
    cp e                                          ; $5269: $bb
    inc d                                         ; $526a: $14
    nop                                           ; $526b: $00
    ld h, $15                                     ; $526c: $26 $15
    nop                                           ; $526e: $00
    nop                                           ; $526f: $00
    ld d, $6a                                     ; $5270: $16 $6a
    nop                                           ; $5272: $00
    ld d, d                                       ; $5273: $52
    nop                                           ; $5274: $00
    nop                                           ; $5275: $00
    rla                                           ; $5276: $17
    nop                                           ; $5277: $00
    nop                                           ; $5278: $00
    ld e, a                                       ; $5279: $5f
    ld bc, $1500                                  ; $527a: $01 $00 $15
    nop                                           ; $527d: $00
    nop                                           ; $527e: $00
    add hl, de                                    ; $527f: $19
    nop                                           ; $5280: $00
    inc d                                         ; $5281: $14
    dec de                                        ; $5282: $1b
    nop                                           ; $5283: $00
    nop                                           ; $5284: $00
    daa                                           ; $5285: $27
    nop                                           ; $5286: $00
    inc a                                         ; $5287: $3c
    ld e, a                                       ; $5288: $5f
    nop                                           ; $5289: $00
    nop                                           ; $528a: $00
    inc de                                        ; $528b: $13
    nop                                           ; $528c: $00
    push de                                       ; $528d: $d5
    inc d                                         ; $528e: $14
    nop                                           ; $528f: $00
    ld b, [hl]                                    ; $5290: $46
    dec d                                         ; $5291: $15
    nop                                           ; $5292: $00
    nop                                           ; $5293: $00
    ld d, $4d                                     ; $5294: $16 $4d
    nop                                           ; $5296: $00
    ld d, d                                       ; $5297: $52
    nop                                           ; $5298: $00
    nop                                           ; $5299: $00
    dec de                                        ; $529a: $1b
    ld b, $00                                     ; $529b: $06 $00
    ld e, a                                       ; $529d: $5f
    ld bc, $1500                                  ; $529e: $01 $00 $15
    nop                                           ; $52a1: $00
    nop                                           ; $52a2: $00
    inc sp                                        ; $52a3: $33
    inc b                                         ; $52a4: $04
    ld d, h                                       ; $52a5: $54
    dec d                                         ; $52a6: $15
    add hl, sp                                    ; $52a7: $39
    nop                                           ; $52a8: $00
    inc sp                                        ; $52a9: $33
    inc b                                         ; $52aa: $04
    ld d, l                                       ; $52ab: $55
    ld e, a                                       ; $52ac: $5f
    nop                                           ; $52ad: $00
    nop                                           ; $52ae: $00
    rla                                           ; $52af: $17
    nop                                           ; $52b0: $00
    nop                                           ; $52b1: $00
    dec de                                        ; $52b2: $1b
    ld [bc], a                                    ; $52b3: $02
    nop                                           ; $52b4: $00
    ld e, a                                       ; $52b5: $5f
    ld bc, $1500                                  ; $52b6: $01 $00 $15
    nop                                           ; $52b9: $00
    nop                                           ; $52ba: $00
    inc sp                                        ; $52bb: $33
    inc b                                         ; $52bc: $04
    ld d, [hl]                                    ; $52bd: $56
    dec d                                         ; $52be: $15
    add hl, sp                                    ; $52bf: $39
    nop                                           ; $52c0: $00
    inc sp                                        ; $52c1: $33
    inc b                                         ; $52c2: $04
    ld d, a                                       ; $52c3: $57
    dec d                                         ; $52c4: $15
    nop                                           ; $52c5: $00
    nop                                           ; $52c6: $00
    inc sp                                        ; $52c7: $33
    inc b                                         ; $52c8: $04
    ld e, b                                       ; $52c9: $58
    dec d                                         ; $52ca: $15
    add hl, sp                                    ; $52cb: $39
    nop                                           ; $52cc: $00
    inc sp                                        ; $52cd: $33
    inc b                                         ; $52ce: $04
    ld e, c                                       ; $52cf: $59
    dec d                                         ; $52d0: $15
    nop                                           ; $52d1: $00
    nop                                           ; $52d2: $00
    inc sp                                        ; $52d3: $33
    inc b                                         ; $52d4: $04
    ld e, d                                       ; $52d5: $5a
    dec d                                         ; $52d6: $15
    add hl, sp                                    ; $52d7: $39
    nop                                           ; $52d8: $00
    inc sp                                        ; $52d9: $33
    inc b                                         ; $52da: $04
    ld e, e                                       ; $52db: $5b
    daa                                           ; $52dc: $27
    nop                                           ; $52dd: $00
    dec b                                         ; $52de: $05
    rla                                           ; $52df: $17
    nop                                           ; $52e0: $00
    nop                                           ; $52e1: $00
    rrca                                          ; $52e2: $0f
    rst $38                                       ; $52e3: $ff
    inc b                                         ; $52e4: $04
    dec de                                        ; $52e5: $1b
    ld [bc], a                                    ; $52e6: $02
    nop                                           ; $52e7: $00
    ld h, d                                       ; $52e8: $62
    ld e, d                                       ; $52e9: $5a
    nop                                           ; $52ea: $00
    ld d, a                                       ; $52eb: $57
    nop                                           ; $52ec: $00
    nop                                           ; $52ed: $00
    daa                                           ; $52ee: $27
    nop                                           ; $52ef: $00
    dec b                                         ; $52f0: $05
    rla                                           ; $52f1: $17
    ld l, d                                       ; $52f2: $6a
    nop                                           ; $52f3: $00
    ld e, $6a                                     ; $52f4: $1e $6a
    nop                                           ; $52f6: $00
    nop                                           ; $52f7: $00
    nop                                           ; $52f8: $00
    nop                                           ; $52f9: $00
    ld e, a                                       ; $52fa: $5f
    ld bc, $0000                                  ; $52fb: $01 $00 $00
    nop                                           ; $52fe: $00
    nop                                           ; $52ff: $00
    ld e, a                                       ; $5300: $5f
    nop                                           ; $5301: $00
    nop                                           ; $5302: $00
    add hl, bc                                    ; $5303: $09
    nop                                           ; $5304: $00
    ld e, d                                       ; $5305: $5a
    dec b                                         ; $5306: $05
    add hl, bc                                    ; $5307: $09
    nop                                           ; $5308: $00
    ld d, [hl]                                    ; $5309: $56
    nop                                           ; $530a: $00
    nop                                           ; $530b: $00
    rla                                           ; $530c: $17
    nop                                           ; $530d: $00
    nop                                           ; $530e: $00
    inc e                                         ; $530f: $1c
    ld c, l                                       ; $5310: $4d
    nop                                           ; $5311: $00
    ld e, a                                       ; $5312: $5f
    ld bc, $1500                                  ; $5313: $01 $00 $15
    add hl, sp                                    ; $5316: $39
    nop                                           ; $5317: $00
    inc sp                                        ; $5318: $33
    dec bc                                        ; $5319: $0b
    ld a, d                                       ; $531a: $7a
    ld d, a                                       ; $531b: $57
    nop                                           ; $531c: $00
    nop                                           ; $531d: $00
    nop                                           ; $531e: $00
    nop                                           ; $531f: $00
    nop                                           ; $5320: $00
    nop                                           ; $5321: $00
    nop                                           ; $5322: $00
    nop                                           ; $5323: $00
    ld e, a                                       ; $5324: $5f
    nop                                           ; $5325: $00
    nop                                           ; $5326: $00
    add hl, bc                                    ; $5327: $09
    nop                                           ; $5328: $00
    ld e, d                                       ; $5329: $5a
    dec b                                         ; $532a: $05
    add hl, bc                                    ; $532b: $09
    nop                                           ; $532c: $00
    inc de                                        ; $532d: $13
    nop                                           ; $532e: $00
    push de                                       ; $532f: $d5
    inc d                                         ; $5330: $14
    nop                                           ; $5331: $00
    ld b, [hl]                                    ; $5332: $46
    dec d                                         ; $5333: $15
    nop                                           ; $5334: $00
    nop                                           ; $5335: $00
    ld d, $4d                                     ; $5336: $16 $4d
    nop                                           ; $5338: $00
    ld d, d                                       ; $5339: $52
    nop                                           ; $533a: $00
    nop                                           ; $533b: $00
    dec de                                        ; $533c: $1b
    ld b, $00                                     ; $533d: $06 $00
    ld e, a                                       ; $533f: $5f
    ld bc, $0000                                  ; $5340: $01 $00 $00
    nop                                           ; $5343: $00
    nop                                           ; $5344: $00
    ld e, a                                       ; $5345: $5f
    ld bc, $0000                                  ; $5346: $01 $00 $00
    nop                                           ; $5349: $00
    nop                                           ; $534a: $00
    ld bc, $0000                                  ; $534b: $01 $00 $00
    ld e, a                                       ; $534e: $5f
    nop                                           ; $534f: $00
    nop                                           ; $5350: $00
    add hl, bc                                    ; $5351: $09
    nop                                           ; $5352: $00
    ld b, e                                       ; $5353: $43
    dec b                                         ; $5354: $05
    ld a, [bc]                                    ; $5355: $0a
    nop                                           ; $5356: $00
    add hl, bc                                    ; $5357: $09
    ld a, [$0502]                                 ; $5358: $fa $02 $05
    ld [$0f00], sp                                ; $535b: $08 $00 $0f
    ld a, [$5600]                                 ; $535e: $fa $00 $56
    nop                                           ; $5361: $00
    nop                                           ; $5362: $00
    ld e, a                                       ; $5363: $5f
    ld bc, $2700                                  ; $5364: $01 $00 $27
    nop                                           ; $5367: $00
    ld a, [bc]                                    ; $5368: $0a
    dec d                                         ; $5369: $15
    ld e, [hl]                                    ; $536a: $5e
    nop                                           ; $536b: $00
    inc sp                                        ; $536c: $33
    inc bc                                        ; $536d: $03
    ld [hl-], a                                   ; $536e: $32
    ld d, a                                       ; $536f: $57
    nop                                           ; $5370: $00
    nop                                           ; $5371: $00
    ld e, a                                       ; $5372: $5f
    ld bc, $0000                                  ; $5373: $01 $00 $00
    nop                                           ; $5376: $00
    nop                                           ; $5377: $00
    ld bc, $0000                                  ; $5378: $01 $00 $00
    ld e, a                                       ; $537b: $5f
    nop                                           ; $537c: $00
    nop                                           ; $537d: $00
    ld e, a                                       ; $537e: $5f
    ld bc, $0000                                  ; $537f: $01 $00 $00
    nop                                           ; $5382: $00
    nop                                           ; $5383: $00
    ld [bc], a                                    ; $5384: $02
    nop                                           ; $5385: $00
    nop                                           ; $5386: $00
    nop                                           ; $5387: $00
    inc a                                         ; $5388: $3c
    add hl, bc                                    ; $5389: $09
    nop                                           ; $538a: $00
    ld b, e                                       ; $538b: $43
    dec b                                         ; $538c: $05
    ld [de], a                                    ; $538d: $12
    nop                                           ; $538e: $00
    add hl, bc                                    ; $538f: $09
    dec b                                         ; $5390: $05
    ld b, $05                                     ; $5391: $06 $05
    stop                                          ; $5393: $10 $00
    ld e, a                                       ; $5395: $5f
    nop                                           ; $5396: $00
    nop                                           ; $5397: $00
    inc de                                        ; $5398: $13
    nop                                           ; $5399: $00
    jp nc, Jump_000_0214                          ; $539a: $d2 $14 $02

    ld [hl], $15                                  ; $539d: $36 $15
    nop                                           ; $539f: $00
    nop                                           ; $53a0: $00
    ld d, $0d                                     ; $53a1: $16 $0d
    nop                                           ; $53a3: $00
    ld d, d                                       ; $53a4: $52
    nop                                           ; $53a5: $00
    nop                                           ; $53a6: $00
    dec de                                        ; $53a7: $1b
    ld b, $00                                     ; $53a8: $06 $00
    inc de                                        ; $53aa: $13
    nop                                           ; $53ab: $00
    jp nc, Jump_000_0214                          ; $53ac: $d2 $14 $02

    ld c, [hl]                                    ; $53af: $4e
    dec d                                         ; $53b0: $15
    nop                                           ; $53b1: $00
    nop                                           ; $53b2: $00
    ld d, $37                                     ; $53b3: $16 $37
    nop                                           ; $53b5: $00
    ld d, d                                       ; $53b6: $52
    nop                                           ; $53b7: $00
    nop                                           ; $53b8: $00
    dec de                                        ; $53b9: $1b
    ld b, $00                                     ; $53ba: $06 $00
    ld e, a                                       ; $53bc: $5f
    ld bc, $0000                                  ; $53bd: $01 $00 $00
    nop                                           ; $53c0: $00
    nop                                           ; $53c1: $00
    nop                                           ; $53c2: $00
    nop                                           ; $53c3: $00
    nop                                           ; $53c4: $00
    add hl, bc                                    ; $53c5: $09
    nop                                           ; $53c6: $00
    ld b, e                                       ; $53c7: $43
    dec b                                         ; $53c8: $05
    dec b                                         ; $53c9: $05
    nop                                           ; $53ca: $00
    add hl, bc                                    ; $53cb: $09
    dec b                                         ; $53cc: $05
    ld b, $05                                     ; $53cd: $06 $05
    inc bc                                        ; $53cf: $03
    nop                                           ; $53d0: $00
    dec d                                         ; $53d1: $15
    dec de                                        ; $53d2: $1b
    nop                                           ; $53d3: $00
    rlca                                          ; $53d4: $07
    nop                                           ; $53d5: $00
    ld d, c                                       ; $53d6: $51
    nop                                           ; $53d7: $00
    nop                                           ; $53d8: $00
    nop                                           ; $53d9: $00
    ld d, [hl]                                    ; $53da: $56
    nop                                           ; $53db: $00
    nop                                           ; $53dc: $00
    rla                                           ; $53dd: $17
    nop                                           ; $53de: $00
    nop                                           ; $53df: $00
    ld e, d                                       ; $53e0: $5a
    nop                                           ; $53e1: $00
    nop                                           ; $53e2: $00
    inc de                                        ; $53e3: $13
    ld [bc], a                                    ; $53e4: $02
    ld b, d                                       ; $53e5: $42
    ld [hl], c                                    ; $53e6: $71
    nop                                           ; $53e7: $00
    cp [hl]                                       ; $53e8: $be
    dec d                                         ; $53e9: $15
    ld bc, $3300                                  ; $53ea: $01 $00 $33
    rlca                                          ; $53ed: $07
    or b                                          ; $53ee: $b0
    ld e, [hl]                                    ; $53ef: $5e
    nop                                           ; $53f0: $00
    nop                                           ; $53f1: $00
    rla                                           ; $53f2: $17
    scf                                           ; $53f3: $37
    nop                                           ; $53f4: $00
    dec d                                         ; $53f5: $15
    ld [bc], a                                    ; $53f6: $02
    nop                                           ; $53f7: $00
    add hl, de                                    ; $53f8: $19
    nop                                           ; $53f9: $00
    ld c, e                                       ; $53fa: $4b
    rla                                           ; $53fb: $17
    dec c                                         ; $53fc: $0d
    nop                                           ; $53fd: $00
    dec d                                         ; $53fe: $15
    ld [bc], a                                    ; $53ff: $02
    nop                                           ; $5400: $00
    add hl, de                                    ; $5401: $19
    nop                                           ; $5402: $00
    ld c, e                                       ; $5403: $4b
    rla                                           ; $5404: $17
    nop                                           ; $5405: $00
    nop                                           ; $5406: $00
    inc [hl]                                      ; $5407: $34
    nop                                           ; $5408: $00
    nop                                           ; $5409: $00
    ld e, [hl]                                    ; $540a: $5e
    ld bc, $1500                                  ; $540b: $01 $00 $15
    ld [bc], a                                    ; $540e: $02
    nop                                           ; $540f: $00
    add hl, de                                    ; $5410: $19
    nop                                           ; $5411: $00
    ld c, e                                       ; $5412: $4b
    ld d, a                                       ; $5413: $57
    nop                                           ; $5414: $00
    nop                                           ; $5415: $00
    jr z, jr_00a_5433                             ; $5416: $28 $1b

    nop                                           ; $5418: $00
    nop                                           ; $5419: $00
    nop                                           ; $541a: $00
    nop                                           ; $541b: $00
    inc bc                                        ; $541c: $03
    nop                                           ; $541d: $00
    nop                                           ; $541e: $00
    ld bc, $01ad                                  ; $541f: $01 $ad $01
    ei                                            ; $5422: $fb
    ld e, a                                       ; $5423: $5f
    nop                                           ; $5424: $00
    nop                                           ; $5425: $00
    add hl, bc                                    ; $5426: $09
    nop                                           ; $5427: $00
    ld b, e                                       ; $5428: $43
    dec b                                         ; $5429: $05
    ld de, $0900                                  ; $542a: $11 $00 $09
    dec b                                         ; $542d: $05
    ld b, $05                                     ; $542e: $06 $05
    inc bc                                        ; $5430: $03
    nop                                           ; $5431: $00
    dec d                                         ; $5432: $15

jr_00a_5433:
    inc e                                         ; $5433: $1c
    nop                                           ; $5434: $00
    rlca                                          ; $5435: $07
    nop                                           ; $5436: $00
    ccf                                           ; $5437: $3f
    add hl, bc                                    ; $5438: $09
    dec b                                         ; $5439: $05
    rlca                                          ; $543a: $07
    dec b                                         ; $543b: $05
    dec bc                                        ; $543c: $0b
    nop                                           ; $543d: $00
    inc de                                        ; $543e: $13
    ld bc, $1413                                  ; $543f: $01 $13 $14
    nop                                           ; $5442: $00
    db $ec                                        ; $5443: $ec
    dec d                                         ; $5444: $15
    nop                                           ; $5445: $00
    nop                                           ; $5446: $00
    ld d, $60                                     ; $5447: $16 $60
    nop                                           ; $5449: $00
    ld d, d                                       ; $544a: $52
    nop                                           ; $544b: $00
    nop                                           ; $544c: $00
    inc de                                        ; $544d: $13
    ld bc, $1409                                  ; $544e: $01 $09 $14
    ld bc, $150c                                  ; $5451: $01 $0c $15
    nop                                           ; $5454: $00
    nop                                           ; $5455: $00
    ld d, $5e                                     ; $5456: $16 $5e
    nop                                           ; $5458: $00
    ld d, d                                       ; $5459: $52
    nop                                           ; $545a: $00
    nop                                           ; $545b: $00
    ld e, a                                       ; $545c: $5f
    ld bc, $0000                                  ; $545d: $01 $00 $00
    nop                                           ; $5460: $00
    nop                                           ; $5461: $00
    ld d, [hl]                                    ; $5462: $56
    nop                                           ; $5463: $00
    nop                                           ; $5464: $00
    inc de                                        ; $5465: $13
    nop                                           ; $5466: $00
    inc a                                         ; $5467: $3c
    inc d                                         ; $5468: $14
    ld bc, $15db                                  ; $5469: $01 $db $15
    nop                                           ; $546c: $00
    nop                                           ; $546d: $00
    ld d, $0d                                     ; $546e: $16 $0d
    nop                                           ; $5470: $00
    ld d, d                                       ; $5471: $52
    nop                                           ; $5472: $00
    nop                                           ; $5473: $00
    dec de                                        ; $5474: $1b
    ld [bc], a                                    ; $5475: $02
    nop                                           ; $5476: $00
    inc de                                        ; $5477: $13
    nop                                           ; $5478: $00
    inc a                                         ; $5479: $3c
    inc d                                         ; $547a: $14
    ld bc, $15ef                                  ; $547b: $01 $ef $15
    nop                                           ; $547e: $00
    nop                                           ; $547f: $00
    ld d, $37                                     ; $5480: $16 $37
    nop                                           ; $5482: $00
    ld d, d                                       ; $5483: $52
    nop                                           ; $5484: $00
    nop                                           ; $5485: $00
    dec de                                        ; $5486: $1b
    ld [bc], a                                    ; $5487: $02
    nop                                           ; $5488: $00
    inc de                                        ; $5489: $13
    ld bc, $1413                                  ; $548a: $01 $13 $14
    nop                                           ; $548d: $00
    db $ec                                        ; $548e: $ec
    dec d                                         ; $548f: $15
    nop                                           ; $5490: $00
    nop                                           ; $5491: $00
    ld d, $60                                     ; $5492: $16 $60
    nop                                           ; $5494: $00
    ld d, d                                       ; $5495: $52
    nop                                           ; $5496: $00
    nop                                           ; $5497: $00
    dec de                                        ; $5498: $1b
    ld b, $00                                     ; $5499: $06 $00
    ld e, a                                       ; $549b: $5f
    ld bc, $5f00                                  ; $549c: $01 $00 $5f
    nop                                           ; $549f: $00
    nop                                           ; $54a0: $00
    rla                                           ; $54a1: $17
    dec c                                         ; $54a2: $0d
    nop                                           ; $54a3: $00
    ld e, [hl]                                    ; $54a4: $5e
    nop                                           ; $54a5: $00
    nop                                           ; $54a6: $00
    dec d                                         ; $54a7: $15
    ld [bc], a                                    ; $54a8: $02
    nop                                           ; $54a9: $00
    add hl, de                                    ; $54aa: $19
    nop                                           ; $54ab: $00
    and h                                         ; $54ac: $a4
    rla                                           ; $54ad: $17
    scf                                           ; $54ae: $37
    nop                                           ; $54af: $00
    dec d                                         ; $54b0: $15
    ld [bc], a                                    ; $54b1: $02
    nop                                           ; $54b2: $00
    add hl, de                                    ; $54b3: $19
    nop                                           ; $54b4: $00
    and h                                         ; $54b5: $a4
    rla                                           ; $54b6: $17
    nop                                           ; $54b7: $00
    nop                                           ; $54b8: $00
    ld e, [hl]                                    ; $54b9: $5e
    ld bc, $5f00                                  ; $54ba: $01 $00 $5f
    ld bc, $1500                                  ; $54bd: $01 $00 $15
    ld [bc], a                                    ; $54c0: $02
    nop                                           ; $54c1: $00
    add hl, de                                    ; $54c2: $19
    nop                                           ; $54c3: $00
    and h                                         ; $54c4: $a4
    ld e, a                                       ; $54c5: $5f
    nop                                           ; $54c6: $00
    nop                                           ; $54c7: $00
    rla                                           ; $54c8: $17
    dec c                                         ; $54c9: $0d
    nop                                           ; $54ca: $00
    ld e, [hl]                                    ; $54cb: $5e
    nop                                           ; $54cc: $00
    nop                                           ; $54cd: $00
    dec d                                         ; $54ce: $15
    nop                                           ; $54cf: $00
    nop                                           ; $54d0: $00
    add hl, de                                    ; $54d1: $19
    nop                                           ; $54d2: $00
    ld e, $17                                     ; $54d3: $1e $17
    scf                                           ; $54d5: $37
    nop                                           ; $54d6: $00
    dec d                                         ; $54d7: $15
    ld [bc], a                                    ; $54d8: $02
    nop                                           ; $54d9: $00
    add hl, de                                    ; $54da: $19
    nop                                           ; $54db: $00
    ld e, $17                                     ; $54dc: $1e $17
    nop                                           ; $54de: $00
    nop                                           ; $54df: $00
    ld e, [hl]                                    ; $54e0: $5e
    ld bc, $5f00                                  ; $54e1: $01 $00 $5f
    ld bc, $1500                                  ; $54e4: $01 $00 $15
    ld [bc], a                                    ; $54e7: $02
    nop                                           ; $54e8: $00
    add hl, de                                    ; $54e9: $19
    nop                                           ; $54ea: $00
    ld e, $5f                                     ; $54eb: $1e $5f
    nop                                           ; $54ed: $00
    nop                                           ; $54ee: $00
    rla                                           ; $54ef: $17
    dec c                                         ; $54f0: $0d
    nop                                           ; $54f1: $00
    ld e, [hl]                                    ; $54f2: $5e
    nop                                           ; $54f3: $00
    nop                                           ; $54f4: $00
    dec d                                         ; $54f5: $15
    nop                                           ; $54f6: $00
    nop                                           ; $54f7: $00
    add hl, de                                    ; $54f8: $19
    nop                                           ; $54f9: $00
    jp Jump_000_3717                              ; $54fa: $c3 $17 $37


    nop                                           ; $54fd: $00
    dec d                                         ; $54fe: $15
    nop                                           ; $54ff: $00
    nop                                           ; $5500: $00
    add hl, de                                    ; $5501: $19
    nop                                           ; $5502: $00
    jp $0017                                      ; $5503: $c3 $17 $00


    nop                                           ; $5506: $00
    ld e, [hl]                                    ; $5507: $5e
    ld bc, $5f00                                  ; $5508: $01 $00 $5f
    ld bc, $1500                                  ; $550b: $01 $00 $15
    nop                                           ; $550e: $00
    nop                                           ; $550f: $00
    add hl, de                                    ; $5510: $19
    nop                                           ; $5511: $00
    jp $005f                                      ; $5512: $c3 $5f $00


    nop                                           ; $5515: $00
    rla                                           ; $5516: $17
    dec c                                         ; $5517: $0d
    nop                                           ; $5518: $00
    dec de                                        ; $5519: $1b
    ld [bc], a                                    ; $551a: $02
    nop                                           ; $551b: $00
    rla                                           ; $551c: $17
    scf                                           ; $551d: $37
    nop                                           ; $551e: $00
    dec de                                        ; $551f: $1b
    nop                                           ; $5520: $00
    nop                                           ; $5521: $00
    rla                                           ; $5522: $17
    nop                                           ; $5523: $00
    nop                                           ; $5524: $00
    ld e, a                                       ; $5525: $5f
    ld bc, $1500                                  ; $5526: $01 $00 $15
    nop                                           ; $5529: $00
    nop                                           ; $552a: $00
    add hl, de                                    ; $552b: $19
    nop                                           ; $552c: $00
    inc c                                         ; $552d: $0c
    ld e, a                                       ; $552e: $5f
    nop                                           ; $552f: $00
    nop                                           ; $5530: $00
    rla                                           ; $5531: $17
    nop                                           ; $5532: $00
    nop                                           ; $5533: $00
    dec de                                        ; $5534: $1b
    ld [bc], a                                    ; $5535: $02
    nop                                           ; $5536: $00
    ld e, a                                       ; $5537: $5f
    ld bc, $1500                                  ; $5538: $01 $00 $15
    ld bc, $3300                                  ; $553b: $01 $00 $33
    rlca                                          ; $553e: $07
    or c                                          ; $553f: $b1
    dec d                                         ; $5540: $15
    ld e, l                                       ; $5541: $5d
    nop                                           ; $5542: $00
    inc sp                                        ; $5543: $33
    rlca                                          ; $5544: $07
    or d                                          ; $5545: $b2
    dec d                                         ; $5546: $15
    ld bc, $3300                                  ; $5547: $01 $00 $33
    rlca                                          ; $554a: $07
    or e                                          ; $554b: $b3
    dec d                                         ; $554c: $15
    nop                                           ; $554d: $00
    nop                                           ; $554e: $00
    inc sp                                        ; $554f: $33
    rlca                                          ; $5550: $07
    or h                                          ; $5551: $b4
    dec d                                         ; $5552: $15
    ld bc, $3300                                  ; $5553: $01 $00 $33
    rlca                                          ; $5556: $07
    or l                                          ; $5557: $b5
    dec d                                         ; $5558: $15
    ld e, l                                       ; $5559: $5d
    nop                                           ; $555a: $00
    inc sp                                        ; $555b: $33
    rlca                                          ; $555c: $07
    or [hl]                                       ; $555d: $b6
    dec d                                         ; $555e: $15
    ld bc, $3300                                  ; $555f: $01 $00 $33
    rlca                                          ; $5562: $07
    or a                                          ; $5563: $b7
    dec d                                         ; $5564: $15
    ld e, l                                       ; $5565: $5d
    nop                                           ; $5566: $00
    inc sp                                        ; $5567: $33
    rlca                                          ; $5568: $07
    cp b                                          ; $5569: $b8
    dec d                                         ; $556a: $15
    ld bc, $3300                                  ; $556b: $01 $00 $33
    rlca                                          ; $556e: $07
    cp c                                          ; $556f: $b9
    ld e, a                                       ; $5570: $5f
    nop                                           ; $5571: $00
    nop                                           ; $5572: $00
    inc de                                        ; $5573: $13
    ld bc, $1431                                  ; $5574: $01 $31 $14
    ld bc, $150c                                  ; $5577: $01 $0c $15
    nop                                           ; $557a: $00
    nop                                           ; $557b: $00
    ld d, $5e                                     ; $557c: $16 $5e
    nop                                           ; $557e: $00
    ld d, d                                       ; $557f: $52
    nop                                           ; $5580: $00
    nop                                           ; $5581: $00
    ld e, a                                       ; $5582: $5f
    ld bc, $1500                                  ; $5583: $01 $00 $15
    ld b, $00                                     ; $5586: $06 $00
    add hl, de                                    ; $5588: $19
    nop                                           ; $5589: $00
    jr z, jr_00a_55a7                             ; $558a: $28 $1b

    ld b, $00                                     ; $558c: $06 $00
    dec d                                         ; $558e: $15
    ld e, e                                       ; $558f: $5b
    nop                                           ; $5590: $00
    inc sp                                        ; $5591: $33
    rlca                                          ; $5592: $07
    cp d                                          ; $5593: $ba
    dec d                                         ; $5594: $15
    ld bc, $3300                                  ; $5595: $01 $00 $33
    rlca                                          ; $5598: $07
    cp e                                          ; $5599: $bb
    dec d                                         ; $559a: $15
    ld e, e                                       ; $559b: $5b
    nop                                           ; $559c: $00
    inc sp                                        ; $559d: $33
    rlca                                          ; $559e: $07
    cp h                                          ; $559f: $bc
    dec d                                         ; $55a0: $15
    ld bc, $3300                                  ; $55a1: $01 $00 $33
    rlca                                          ; $55a4: $07
    cp l                                          ; $55a5: $bd
    rla                                           ; $55a6: $17

jr_00a_55a7:
    dec c                                         ; $55a7: $0d
    nop                                           ; $55a8: $00
    ld e, [hl]                                    ; $55a9: $5e
    nop                                           ; $55aa: $00
    nop                                           ; $55ab: $00
    dec d                                         ; $55ac: $15
    ld [bc], a                                    ; $55ad: $02
    nop                                           ; $55ae: $00
    add hl, de                                    ; $55af: $19
    nop                                           ; $55b0: $00
    ld e, d                                       ; $55b1: $5a
    ld e, [hl]                                    ; $55b2: $5e
    ld bc, $1700                                  ; $55b3: $01 $00 $17
    scf                                           ; $55b6: $37
    nop                                           ; $55b7: $00
    dec d                                         ; $55b8: $15
    ld [bc], a                                    ; $55b9: $02
    nop                                           ; $55ba: $00
    add hl, de                                    ; $55bb: $19
    nop                                           ; $55bc: $00
    ld b, [hl]                                    ; $55bd: $46
    ld e, $37                                     ; $55be: $1e $37
    nop                                           ; $55c0: $00
    rla                                           ; $55c1: $17
    dec c                                         ; $55c2: $0d
    nop                                           ; $55c3: $00
    ld e, $0d                                     ; $55c4: $1e $0d
    nop                                           ; $55c6: $00
    rrca                                          ; $55c7: $0f
    dec b                                         ; $55c8: $05
    rlca                                          ; $55c9: $07
    ld d, a                                       ; $55ca: $57
    nop                                           ; $55cb: $00
    nop                                           ; $55cc: $00
    nop                                           ; $55cd: $00
    nop                                           ; $55ce: $00
    nop                                           ; $55cf: $00
    add hl, bc                                    ; $55d0: $09
    nop                                           ; $55d1: $00
    ld b, e                                       ; $55d2: $43
    dec b                                         ; $55d3: $05
    inc c                                         ; $55d4: $0c
    nop                                           ; $55d5: $00
    add hl, bc                                    ; $55d6: $09
    dec b                                         ; $55d7: $05
    rlca                                          ; $55d8: $07
    dec b                                         ; $55d9: $05
    ld a, [bc]                                    ; $55da: $0a
    nop                                           ; $55db: $00
    rla                                           ; $55dc: $17
    ld h, b                                       ; $55dd: $60
    nop                                           ; $55de: $00
    inc e                                         ; $55df: $1c
    nop                                           ; $55e0: $00
    nop                                           ; $55e1: $00
    ld [$0006], sp                                ; $55e2: $08 $06 $00
    dec d                                         ; $55e5: $15
    inc e                                         ; $55e6: $1c
    nop                                           ; $55e7: $00
    rlca                                          ; $55e8: $07
    ld bc, $15d7                                  ; $55e9: $01 $d7 $15
    inc e                                         ; $55ec: $1c
    nop                                           ; $55ed: $00
    rlca                                          ; $55ee: $07
    ld bc, $15e3                                  ; $55ef: $01 $e3 $15
    inc e                                         ; $55f2: $1c
    nop                                           ; $55f3: $00
    rlca                                          ; $55f4: $07
    ld bc, $00ef                                  ; $55f5: $01 $ef $00
    nop                                           ; $55f8: $00
    nop                                           ; $55f9: $00
    dec d                                         ; $55fa: $15
    ld e, l                                       ; $55fb: $5d
    nop                                           ; $55fc: $00
    inc sp                                        ; $55fd: $33
    rlca                                          ; $55fe: $07
    cp [hl]                                       ; $55ff: $be
    ld de, $0106                                  ; $5600: $11 $06 $01
    nop                                           ; $5603: $00
    nop                                           ; $5604: $00
    nop                                           ; $5605: $00
    dec d                                         ; $5606: $15
    ld e, l                                       ; $5607: $5d
    nop                                           ; $5608: $00
    inc sp                                        ; $5609: $33
    rlca                                          ; $560a: $07
    cp a                                          ; $560b: $bf
    ld de, $0106                                  ; $560c: $11 $06 $01
    nop                                           ; $560f: $00
    nop                                           ; $5610: $00
    nop                                           ; $5611: $00
    dec d                                         ; $5612: $15
    ld e, l                                       ; $5613: $5d
    nop                                           ; $5614: $00
    inc sp                                        ; $5615: $33
    rlca                                          ; $5616: $07
    ret nz                                        ; $5617: $c0

    rrca                                          ; $5618: $0f
    ld b, $00                                     ; $5619: $06 $00
    nop                                           ; $561b: $00
    nop                                           ; $561c: $00
    nop                                           ; $561d: $00
    add hl, bc                                    ; $561e: $09
    nop                                           ; $561f: $00
    ld b, e                                       ; $5620: $43
    dec b                                         ; $5621: $05
    inc c                                         ; $5622: $0c
    nop                                           ; $5623: $00
    add hl, bc                                    ; $5624: $09
    dec b                                         ; $5625: $05
    rlca                                          ; $5626: $07
    dec b                                         ; $5627: $05

Jump_00a_5628:
    ld a, [bc]                                    ; $5628: $0a
    nop                                           ; $5629: $00
    rla                                           ; $562a: $17
    ld e, [hl]                                    ; $562b: $5e
    nop                                           ; $562c: $00
    inc e                                         ; $562d: $1c
    nop                                           ; $562e: $00
    nop                                           ; $562f: $00
    ld [$0007], sp                                ; $5630: $08 $07 $00
    dec d                                         ; $5633: $15
    inc e                                         ; $5634: $1c
    nop                                           ; $5635: $00
    rlca                                          ; $5636: $07
    ld [bc], a                                    ; $5637: $02
    dec h                                         ; $5638: $25
    dec d                                         ; $5639: $15
    inc e                                         ; $563a: $1c
    nop                                           ; $563b: $00
    rlca                                          ; $563c: $07
    ld [bc], a                                    ; $563d: $02
    ld sp, $1c15                                  ; $563e: $31 $15 $1c
    nop                                           ; $5641: $00
    rlca                                          ; $5642: $07
    ld [bc], a                                    ; $5643: $02
    dec a                                         ; $5644: $3d
    nop                                           ; $5645: $00
    nop                                           ; $5646: $00
    nop                                           ; $5647: $00
    dec d                                         ; $5648: $15
    ld e, e                                       ; $5649: $5b
    nop                                           ; $564a: $00
    inc sp                                        ; $564b: $33
    rlca                                          ; $564c: $07
    pop bc                                        ; $564d: $c1
    ld de, $0107                                  ; $564e: $11 $07 $01
    nop                                           ; $5651: $00
    nop                                           ; $5652: $00
    nop                                           ; $5653: $00
    dec d                                         ; $5654: $15
    ld e, e                                       ; $5655: $5b
    nop                                           ; $5656: $00
    inc sp                                        ; $5657: $33
    rlca                                          ; $5658: $07
    jp nz, $0711                                  ; $5659: $c2 $11 $07

    ld bc, $0000                                  ; $565c: $01 $00 $00
    nop                                           ; $565f: $00
    dec d                                         ; $5660: $15
    ld e, e                                       ; $5661: $5b
    nop                                           ; $5662: $00
    inc sp                                        ; $5663: $33
    rlca                                          ; $5664: $07
    jp Jump_000_070f                              ; $5665: $c3 $0f $07


    nop                                           ; $5668: $00
    nop                                           ; $5669: $00
    nop                                           ; $566a: $00
    nop                                           ; $566b: $00
    ld [bc], a                                    ; $566c: $02
    nop                                           ; $566d: $00
    nop                                           ; $566e: $00
    nop                                           ; $566f: $00
    ccf                                           ; $5670: $3f
    ld e, a                                       ; $5671: $5f
    nop                                           ; $5672: $00
    nop                                           ; $5673: $00
    add hl, bc                                    ; $5674: $09
    nop                                           ; $5675: $00
    ld b, e                                       ; $5676: $43
    dec b                                         ; $5677: $05
    ld de, $0900                                  ; $5678: $11 $00 $09
    dec b                                         ; $567b: $05
    rlca                                          ; $567c: $07
    dec b                                         ; $567d: $05
    rrca                                          ; $567e: $0f
    nop                                           ; $567f: $00
    inc de                                        ; $5680: $13
    nop                                           ; $5681: $00
    ret nz                                        ; $5682: $c0

    inc d                                         ; $5683: $14
    ld bc, $1590                                  ; $5684: $01 $90 $15
    nop                                           ; $5687: $00
    nop                                           ; $5688: $00
    ld d, $0d                                     ; $5689: $16 $0d
    nop                                           ; $568b: $00
    ld d, d                                       ; $568c: $52
    nop                                           ; $568d: $00
    nop                                           ; $568e: $00
    ld e, d                                       ; $568f: $5a
    nop                                           ; $5690: $00
    nop                                           ; $5691: $00
    dec de                                        ; $5692: $1b
    nop                                           ; $5693: $00
    nop                                           ; $5694: $00
    inc de                                        ; $5695: $13
    nop                                           ; $5696: $00
    call c, $0114                                 ; $5697: $dc $14 $01
    add c                                         ; $569a: $81
    dec d                                         ; $569b: $15
    nop                                           ; $569c: $00
    nop                                           ; $569d: $00
    ld d, $37                                     ; $569e: $16 $37
    nop                                           ; $56a0: $00
    ld d, d                                       ; $56a1: $52
    nop                                           ; $56a2: $00
    nop                                           ; $56a3: $00
    ld e, d                                       ; $56a4: $5a
    nop                                           ; $56a5: $00
    nop                                           ; $56a6: $00
    dec de                                        ; $56a7: $1b
    ld b, $00                                     ; $56a8: $06 $00
    ld e, a                                       ; $56aa: $5f
    ld bc, $0000                                  ; $56ab: $01 $00 $00
    nop                                           ; $56ae: $00
    nop                                           ; $56af: $00
    ld e, a                                       ; $56b0: $5f
    nop                                           ; $56b1: $00
    nop                                           ; $56b2: $00
    add hl, bc                                    ; $56b3: $09
    nop                                           ; $56b4: $00
    ld b, e                                       ; $56b5: $43
    dec b                                         ; $56b6: $05
    dec b                                         ; $56b7: $05
    nop                                           ; $56b8: $00
    add hl, bc                                    ; $56b9: $09
    dec b                                         ; $56ba: $05
    rlca                                          ; $56bb: $07
    dec b                                         ; $56bc: $05
    inc bc                                        ; $56bd: $03
    nop                                           ; $56be: $00
    dec d                                         ; $56bf: $15
    dec e                                         ; $56c0: $1d
    nop                                           ; $56c1: $00
    rlca                                          ; $56c2: $07
    nop                                           ; $56c3: $00
    ld e, d                                       ; $56c4: $5a
    ld e, a                                       ; $56c5: $5f
    ld bc, $0000                                  ; $56c6: $01 $00 $00
    nop                                           ; $56c9: $00
    nop                                           ; $56ca: $00
    ld d, [hl]                                    ; $56cb: $56
    nop                                           ; $56cc: $00
    nop                                           ; $56cd: $00
    ld e, a                                       ; $56ce: $5f
    ld bc, $1700                                  ; $56cf: $01 $00 $17
    nop                                           ; $56d2: $00
    nop                                           ; $56d3: $00
    inc de                                        ; $56d4: $13
    ld bc, $7142                                  ; $56d5: $01 $42 $71
    nop                                           ; $56d8: $00
    ret nz                                        ; $56d9: $c0

    inc de                                        ; $56da: $13
    ld bc, $716d                                  ; $56db: $01 $6d $71
    nop                                           ; $56de: $00
    jp Jump_000_0015                              ; $56df: $c3 $15 $00


    nop                                           ; $56e2: $00
    inc sp                                        ; $56e3: $33
    rlca                                          ; $56e4: $07
    call nz, Call_000_0d17                        ; $56e5: $c4 $17 $0d
    nop                                           ; $56e8: $00
    dec de                                        ; $56e9: $1b
    inc b                                         ; $56ea: $04
    nop                                           ; $56eb: $00
    daa                                           ; $56ec: $27
    nop                                           ; $56ed: $00
    ld [de], a                                    ; $56ee: $12
    dec de                                        ; $56ef: $1b
    nop                                           ; $56f0: $00
    nop                                           ; $56f1: $00
    daa                                           ; $56f2: $27
    nop                                           ; $56f3: $00
    dec b                                         ; $56f4: $05
    dec d                                         ; $56f5: $15
    ld bc, $3300                                  ; $56f6: $01 $00 $33
    rlca                                          ; $56f9: $07
    push bc                                       ; $56fa: $c5
    dec d                                         ; $56fb: $15
    inc b                                         ; $56fc: $04
    nop                                           ; $56fd: $00
    add hl, de                                    ; $56fe: $19
    nop                                           ; $56ff: $00
    ld b, c                                       ; $5700: $41
    rla                                           ; $5701: $17
    nop                                           ; $5702: $00
    nop                                           ; $5703: $00
    dec de                                        ; $5704: $1b
    ld [bc], a                                    ; $5705: $02
    nop                                           ; $5706: $00
    daa                                           ; $5707: $27
    nop                                           ; $5708: $00
    ld a, [bc]                                    ; $5709: $0a
    dec d                                         ; $570a: $15
    nop                                           ; $570b: $00
    nop                                           ; $570c: $00
    inc sp                                        ; $570d: $33
    rlca                                          ; $570e: $07
    add $15                                       ; $570f: $c6 $15
    add hl, de                                    ; $5711: $19
    nop                                           ; $5712: $00
    inc sp                                        ; $5713: $33
    rlca                                          ; $5714: $07
    rst $00                                       ; $5715: $c7
    daa                                           ; $5716: $27
    nop                                           ; $5717: $00
    ld a, [bc]                                    ; $5718: $0a
    dec de                                        ; $5719: $1b
    inc b                                         ; $571a: $04
    nop                                           ; $571b: $00
    daa                                           ; $571c: $27
    nop                                           ; $571d: $00
    ld a, [bc]                                    ; $571e: $0a
    ld e, a                                       ; $571f: $5f
    nop                                           ; $5720: $00
    nop                                           ; $5721: $00
    rla                                           ; $5722: $17
    dec c                                         ; $5723: $0d
    nop                                           ; $5724: $00
    inc de                                        ; $5725: $13
    ld bc, $58ee                                  ; $5726: $01 $ee $58
    nop                                           ; $5729: $00
    call nz, Call_000_0013                        ; $572a: $c4 $13 $00
    call nz, $0114                                ; $572d: $c4 $14 $01
    rst $08                                       ; $5730: $cf
    dec d                                         ; $5731: $15
    nop                                           ; $5732: $00
    nop                                           ; $5733: $00
    ld d, $38                                     ; $5734: $16 $38
    nop                                           ; $5736: $00
    ld d, d                                       ; $5737: $52
    nop                                           ; $5738: $00
    nop                                           ; $5739: $00
    ld e, d                                       ; $573a: $5a
    nop                                           ; $573b: $00
    nop                                           ; $573c: $00
    inc de                                        ; $573d: $13
    nop                                           ; $573e: $00
    or e                                          ; $573f: $b3
    inc d                                         ; $5740: $14
    ld bc, $15ee                                  ; $5741: $01 $ee $15
    nop                                           ; $5744: $00
    nop                                           ; $5745: $00
    ld d, $5d                                     ; $5746: $16 $5d
    nop                                           ; $5748: $00
    ld d, d                                       ; $5749: $52
    nop                                           ; $574a: $00
    nop                                           ; $574b: $00
    ld e, d                                       ; $574c: $5a
    nop                                           ; $574d: $00
    nop                                           ; $574e: $00
    inc de                                        ; $574f: $13
    nop                                           ; $5750: $00
    or e                                          ; $5751: $b3
    inc d                                         ; $5752: $14
    ld bc, $15cf                                  ; $5753: $01 $cf $15
    nop                                           ; $5756: $00
    nop                                           ; $5757: $00
    ld d, $36                                     ; $5758: $16 $36
    nop                                           ; $575a: $00
    ld d, d                                       ; $575b: $52
    nop                                           ; $575c: $00
    nop                                           ; $575d: $00
    ld e, d                                       ; $575e: $5a
    nop                                           ; $575f: $00
    nop                                           ; $5760: $00
    ld e, [hl]                                    ; $5761: $5e
    nop                                           ; $5762: $00
    nop                                           ; $5763: $00
    dec d                                         ; $5764: $15
    nop                                           ; $5765: $00
    nop                                           ; $5766: $00
    add hl, de                                    ; $5767: $19
    nop                                           ; $5768: $00
    ld c, [hl]                                    ; $5769: $4e
    rla                                           ; $576a: $17
    jr c, jr_00a_576d                             ; $576b: $38 $00

jr_00a_576d:
    dec d                                         ; $576d: $15
    nop                                           ; $576e: $00
    nop                                           ; $576f: $00
    add hl, de                                    ; $5770: $19
    nop                                           ; $5771: $00
    ld c, [hl]                                    ; $5772: $4e
    rla                                           ; $5773: $17
    ld e, l                                       ; $5774: $5d
    nop                                           ; $5775: $00
    dec d                                         ; $5776: $15
    nop                                           ; $5777: $00
    nop                                           ; $5778: $00
    add hl, de                                    ; $5779: $19
    nop                                           ; $577a: $00
    ld c, [hl]                                    ; $577b: $4e
    rla                                           ; $577c: $17
    dec c                                         ; $577d: $0d
    nop                                           ; $577e: $00
    ld e, [hl]                                    ; $577f: $5e
    ld bc, $5f00                                  ; $5780: $01 $00 $5f
    ld bc, $1500                                  ; $5783: $01 $00 $15
    nop                                           ; $5786: $00
    nop                                           ; $5787: $00
    add hl, de                                    ; $5788: $19
    nop                                           ; $5789: $00
    ld c, [hl]                                    ; $578a: $4e
    ld e, a                                       ; $578b: $5f
    nop                                           ; $578c: $00
    nop                                           ; $578d: $00
    dec de                                        ; $578e: $1b
    nop                                           ; $578f: $00
    nop                                           ; $5790: $00
    rla                                           ; $5791: $17
    ld [hl], $00                                  ; $5792: $36 $00
    dec de                                        ; $5794: $1b
    nop                                           ; $5795: $00
    nop                                           ; $5796: $00
    rla                                           ; $5797: $17
    ld e, l                                       ; $5798: $5d
    nop                                           ; $5799: $00
    dec de                                        ; $579a: $1b
    nop                                           ; $579b: $00
    nop                                           ; $579c: $00
    rla                                           ; $579d: $17
    jr c, jr_00a_57a0                             ; $579e: $38 $00

jr_00a_57a0:
    dec de                                        ; $57a0: $1b
    nop                                           ; $57a1: $00
    nop                                           ; $57a2: $00
    rla                                           ; $57a3: $17
    dec c                                         ; $57a4: $0d
    nop                                           ; $57a5: $00
    dec de                                        ; $57a6: $1b
    nop                                           ; $57a7: $00
    nop                                           ; $57a8: $00
    ld e, a                                       ; $57a9: $5f
    ld bc, $1500                                  ; $57aa: $01 $00 $15
    nop                                           ; $57ad: $00
    nop                                           ; $57ae: $00
    inc sp                                        ; $57af: $33
    rlca                                          ; $57b0: $07
    ret z                                         ; $57b1: $c8

    dec d                                         ; $57b2: $15
    inc l                                         ; $57b3: $2c
    nop                                           ; $57b4: $00
    inc sp                                        ; $57b5: $33
    rlca                                          ; $57b6: $07
    ret                                           ; $57b7: $c9


    dec d                                         ; $57b8: $15
    ld bc, $3300                                  ; $57b9: $01 $00 $33
    rlca                                          ; $57bc: $07
    jp z, Jump_000_0d17                           ; $57bd: $ca $17 $0d

    nop                                           ; $57c0: $00
    ld e, [hl]                                    ; $57c1: $5e
    nop                                           ; $57c2: $00
    nop                                           ; $57c3: $00
    dec d                                         ; $57c4: $15
    inc b                                         ; $57c5: $04
    nop                                           ; $57c6: $00
    add hl, de                                    ; $57c7: $19
    nop                                           ; $57c8: $00
    ld c, [hl]                                    ; $57c9: $4e
    rla                                           ; $57ca: $17
    jr c, jr_00a_57cd                             ; $57cb: $38 $00

jr_00a_57cd:
    dec d                                         ; $57cd: $15
    inc b                                         ; $57ce: $04
    nop                                           ; $57cf: $00
    add hl, de                                    ; $57d0: $19
    nop                                           ; $57d1: $00
    ld c, [hl]                                    ; $57d2: $4e
    rla                                           ; $57d3: $17
    scf                                           ; $57d4: $37
    nop                                           ; $57d5: $00
    ld e, [hl]                                    ; $57d6: $5e
    ld bc, $1300                                  ; $57d7: $01 $00 $13
    ld bc, $71c8                                  ; $57da: $01 $c8 $71
    nop                                           ; $57dd: $00
    cp h                                          ; $57de: $bc
    ld e, $37                                     ; $57df: $1e $37
    nop                                           ; $57e1: $00
    rla                                           ; $57e2: $17
    jr c, jr_00a_57e5                             ; $57e3: $38 $00

jr_00a_57e5:
    ld e, $38                                     ; $57e5: $1e $38
    nop                                           ; $57e7: $00
    rla                                           ; $57e8: $17
    dec c                                         ; $57e9: $0d
    nop                                           ; $57ea: $00
    ld e, $0d                                     ; $57eb: $1e $0d
    nop                                           ; $57ed: $00
    daa                                           ; $57ee: $27
    nop                                           ; $57ef: $00
    ld a, [bc]                                    ; $57f0: $0a
    rla                                           ; $57f1: $17
    ld [hl], $00                                  ; $57f2: $36 $00
    ld e, [hl]                                    ; $57f4: $5e
    nop                                           ; $57f5: $00
    nop                                           ; $57f6: $00
    dec d                                         ; $57f7: $15
    ld [bc], a                                    ; $57f8: $02
    nop                                           ; $57f9: $00
    add hl, de                                    ; $57fa: $19
    nop                                           ; $57fb: $00
    ld [hl], b                                    ; $57fc: $70
    ld e, [hl]                                    ; $57fd: $5e
    ld bc, $1700                                  ; $57fe: $01 $00 $17
    ld e, l                                       ; $5801: $5d
    nop                                           ; $5802: $00
    inc de                                        ; $5803: $13
    ld bc, $7177                                  ; $5804: $01 $77 $71
    ld bc, $1e3b                                  ; $5807: $01 $3b $1e
    ld e, l                                       ; $580a: $5d
    nop                                           ; $580b: $00
    rla                                           ; $580c: $17
    ld [hl], $00                                  ; $580d: $36 $00
    ld e, $36                                     ; $580f: $1e $36
    nop                                           ; $5811: $00
    rrca                                          ; $5812: $0f
    dec b                                         ; $5813: $05
    ld [$0057], sp                                ; $5814: $08 $57 $00
    nop                                           ; $5817: $00
    nop                                           ; $5818: $00
    nop                                           ; $5819: $00
    nop                                           ; $581a: $00
    ld [bc], a                                    ; $581b: $02
    nop                                           ; $581c: $00
    nop                                           ; $581d: $00
    ld bc, $5f65                                  ; $581e: $01 $65 $5f
    nop                                           ; $5821: $00
    nop                                           ; $5822: $00
    inc de                                        ; $5823: $13
    ld [bc], a                                    ; $5824: $02
    inc a                                         ; $5825: $3c
    inc d                                         ; $5826: $14
    ld [bc], a                                    ; $5827: $02
    ld h, l                                       ; $5828: $65
    dec d                                         ; $5829: $15
    jr c, jr_00a_582c                             ; $582a: $38 $00

jr_00a_582c:
    ld d, $08                                     ; $582c: $16 $08
    nop                                           ; $582e: $00
    ld d, d                                       ; $582f: $52
    nop                                           ; $5830: $00
    nop                                           ; $5831: $00
    add hl, bc                                    ; $5832: $09
    nop                                           ; $5833: $00
    ld b, e                                       ; $5834: $43
    dec b                                         ; $5835: $05
    ld c, $00                                     ; $5836: $0e $00
    add hl, bc                                    ; $5838: $09
    dec b                                         ; $5839: $05
    add hl, bc                                    ; $583a: $09
    dec b                                         ; $583b: $05
    inc bc                                        ; $583c: $03
    nop                                           ; $583d: $00
    dec d                                         ; $583e: $15
    ld e, $00                                     ; $583f: $1e $00
    rlca                                          ; $5841: $07
    nop                                           ; $5842: $00
    ld b, l                                       ; $5843: $45
    add hl, bc                                    ; $5844: $09
    ld a, [$0502]                                 ; $5845: $fa $02 $05
    ld [$0f00], sp                                ; $5848: $08 $00 $0f
    ld a, [$5600]                                 ; $584b: $fa $00 $56
    nop                                           ; $584e: $00
    nop                                           ; $584f: $00
    ld e, a                                       ; $5850: $5f
    ld bc, $2700                                  ; $5851: $01 $00 $27
    nop                                           ; $5854: $00
    ld a, [bc]                                    ; $5855: $0a
    dec d                                         ; $5856: $15
    ld e, [hl]                                    ; $5857: $5e
    nop                                           ; $5858: $00
    inc sp                                        ; $5859: $33
    inc bc                                        ; $585a: $03
    ld [hl-], a                                   ; $585b: $32
    ld d, a                                       ; $585c: $57
    nop                                           ; $585d: $00
    nop                                           ; $585e: $00
    ld e, a                                       ; $585f: $5f
    ld bc, $0000                                  ; $5860: $01 $00 $00
    nop                                           ; $5863: $00
    nop                                           ; $5864: $00
    ld d, [hl]                                    ; $5865: $56
    nop                                           ; $5866: $00
    nop                                           ; $5867: $00
    rla                                           ; $5868: $17
    nop                                           ; $5869: $00
    nop                                           ; $586a: $00
    dec de                                        ; $586b: $1b
    ld b, $00                                     ; $586c: $06 $00
    inc de                                        ; $586e: $13
    ld [bc], a                                    ; $586f: $02
    inc sp                                        ; $5870: $33
    inc d                                         ; $5871: $14
    ld [bc], a                                    ; $5872: $02
    ld a, d                                       ; $5873: $7a
    dec d                                         ; $5874: $15
    nop                                           ; $5875: $00
    nop                                           ; $5876: $00
    ld d, $5f                                     ; $5877: $16 $5f
    nop                                           ; $5879: $00
    ld d, d                                       ; $587a: $52
    nop                                           ; $587b: $00
    nop                                           ; $587c: $00
    dec de                                        ; $587d: $1b
    ld [bc], a                                    ; $587e: $02
    nop                                           ; $587f: $00
    inc de                                        ; $5880: $13
    ld [bc], a                                    ; $5881: $02
    inc a                                         ; $5882: $3c
    inc d                                         ; $5883: $14
    ld [bc], a                                    ; $5884: $02
    ld h, l                                       ; $5885: $65
    dec d                                         ; $5886: $15
    jr c, jr_00a_5889                             ; $5887: $38 $00

jr_00a_5889:
    ld d, $08                                     ; $5889: $16 $08
    nop                                           ; $588b: $00
    ld d, d                                       ; $588c: $52
    nop                                           ; $588d: $00
    nop                                           ; $588e: $00
    inc de                                        ; $588f: $13
    ld [bc], a                                    ; $5890: $02
    ld e, [hl]                                    ; $5891: $5e
    inc d                                         ; $5892: $14
    ld [bc], a                                    ; $5893: $02
    inc d                                         ; $5894: $14
    dec d                                         ; $5895: $15
    nop                                           ; $5896: $00
    nop                                           ; $5897: $00
    ld d, $0d                                     ; $5898: $16 $0d
    nop                                           ; $589a: $00
    ld d, d                                       ; $589b: $52
    nop                                           ; $589c: $00
    nop                                           ; $589d: $00
    ld e, d                                       ; $589e: $5a
    nop                                           ; $589f: $00
    nop                                           ; $58a0: $00
    inc de                                        ; $58a1: $13
    ld [bc], a                                    ; $58a2: $02
    halt                                          ; $58a3: $76
    inc d                                         ; $58a4: $14
    ld [bc], a                                    ; $58a5: $02
    inc d                                         ; $58a6: $14
    dec d                                         ; $58a7: $15
    nop                                           ; $58a8: $00
    nop                                           ; $58a9: $00
    ld d, $37                                     ; $58aa: $16 $37
    nop                                           ; $58ac: $00
    ld d, d                                       ; $58ad: $52
    nop                                           ; $58ae: $00
    nop                                           ; $58af: $00
    ld e, d                                       ; $58b0: $5a
    nop                                           ; $58b1: $00
    nop                                           ; $58b2: $00
    halt                                          ; $58b3: $76
    ld [$5a38], sp                                ; $58b4: $08 $38 $5a
    nop                                           ; $58b7: $00
    nop                                           ; $58b8: $00
    ld e, a                                       ; $58b9: $5f
    ld bc, $1500                                  ; $58ba: $01 $00 $15
    nop                                           ; $58bd: $00
    nop                                           ; $58be: $00
    inc sp                                        ; $58bf: $33
    rlca                                          ; $58c0: $07
    adc $15                                       ; $58c1: $ce $15
    ld e, h                                       ; $58c3: $5c
    nop                                           ; $58c4: $00
    inc sp                                        ; $58c5: $33
    rlca                                          ; $58c6: $07
    rst $08                                       ; $58c7: $cf
    dec d                                         ; $58c8: $15
    nop                                           ; $58c9: $00
    nop                                           ; $58ca: $00
    inc sp                                        ; $58cb: $33
    rlca                                          ; $58cc: $07
    ret nc                                        ; $58cd: $d0

    dec d                                         ; $58ce: $15
    ld e, h                                       ; $58cf: $5c
    nop                                           ; $58d0: $00
    inc sp                                        ; $58d1: $33
    rlca                                          ; $58d2: $07
    pop de                                        ; $58d3: $d1
    dec d                                         ; $58d4: $15
    nop                                           ; $58d5: $00
    nop                                           ; $58d6: $00
    inc sp                                        ; $58d7: $33
    rlca                                          ; $58d8: $07
    jp nc, Jump_00a_5c15                          ; $58d9: $d2 $15 $5c

    nop                                           ; $58dc: $00
    inc sp                                        ; $58dd: $33
    rlca                                          ; $58de: $07
    db $d3                                        ; $58df: $d3
    dec d                                         ; $58e0: $15
    nop                                           ; $58e1: $00
    nop                                           ; $58e2: $00
    inc sp                                        ; $58e3: $33
    rlca                                          ; $58e4: $07
    call nc, $005f                                ; $58e5: $d4 $5f $00
    nop                                           ; $58e8: $00
    rla                                           ; $58e9: $17
    nop                                           ; $58ea: $00
    nop                                           ; $58eb: $00
    dec de                                        ; $58ec: $1b
    nop                                           ; $58ed: $00
    nop                                           ; $58ee: $00
    ld e, [hl]                                    ; $58ef: $5e
    nop                                           ; $58f0: $00
    nop                                           ; $58f1: $00
    rla                                           ; $58f2: $17
    dec c                                         ; $58f3: $0d
    nop                                           ; $58f4: $00
    dec d                                         ; $58f5: $15
    inc b                                         ; $58f6: $04
    nop                                           ; $58f7: $00
    add hl, de                                    ; $58f8: $19
    nop                                           ; $58f9: $00
    inc a                                         ; $58fa: $3c
    rla                                           ; $58fb: $17
    scf                                           ; $58fc: $37
    nop                                           ; $58fd: $00
    ld e, [hl]                                    ; $58fe: $5e
    ld bc, $5f00                                  ; $58ff: $01 $00 $5f
    ld bc, $1500                                  ; $5902: $01 $00 $15
    inc b                                         ; $5905: $04
    nop                                           ; $5906: $00
    add hl, de                                    ; $5907: $19
    nop                                           ; $5908: $00
    inc a                                         ; $5909: $3c
    dec de                                        ; $590a: $1b
    inc b                                         ; $590b: $04
    nop                                           ; $590c: $00
    rla                                           ; $590d: $17
    dec c                                         ; $590e: $0d
    nop                                           ; $590f: $00
    dec de                                        ; $5910: $1b
    inc b                                         ; $5911: $04
    nop                                           ; $5912: $00
    rla                                           ; $5913: $17
    nop                                           ; $5914: $00

Call_00a_5915:
Jump_00a_5915:
    nop                                           ; $5915: $00
    dec de                                        ; $5916: $1b
    nop                                           ; $5917: $00
    nop                                           ; $5918: $00
    daa                                           ; $5919: $27
    nop                                           ; $591a: $00
    ld b, $15                                     ; $591b: $06 $15
    add hl, de                                    ; $591d: $19
    nop                                           ; $591e: $00
    inc sp                                        ; $591f: $33
    rlca                                          ; $5920: $07
    push de                                       ; $5921: $d5
    dec d                                         ; $5922: $15
    nop                                           ; $5923: $00
    nop                                           ; $5924: $00
    inc sp                                        ; $5925: $33
    rlca                                          ; $5926: $07
    sub $1b                                       ; $5927: $d6 $1b
    ld b, $00                                     ; $5929: $06 $00
    daa                                           ; $592b: $27
    nop                                           ; $592c: $00
    ld b, $15                                     ; $592d: $06 $15
    ld e, h                                       ; $592f: $5c
    nop                                           ; $5930: $00
    inc sp                                        ; $5931: $33
    rlca                                          ; $5932: $07
    rst $10                                       ; $5933: $d7
    rla                                           ; $5934: $17
    ld e, a                                       ; $5935: $5f
    nop                                           ; $5936: $00
    inc de                                        ; $5937: $13
    ld [bc], a                                    ; $5938: $02
    xor a                                         ; $5939: $af
    ld [hl], c                                    ; $593a: $71
    ld bc, $1ef9                                  ; $593b: $01 $f9 $1e
    ld e, a                                       ; $593e: $5f
    nop                                           ; $593f: $00
    rla                                           ; $5940: $17
    nop                                           ; $5941: $00
    nop                                           ; $5942: $00
    dec de                                        ; $5943: $1b
    nop                                           ; $5944: $00
    nop                                           ; $5945: $00
    daa                                           ; $5946: $27
    nop                                           ; $5947: $00
    ld b, $15                                     ; $5948: $06 $15
    ld bc, $3300                                  ; $594a: $01 $00 $33
    rlca                                          ; $594d: $07
    ret c                                         ; $594e: $d8

    ld e, a                                       ; $594f: $5f
    nop                                           ; $5950: $00
    nop                                           ; $5951: $00
    ld e, [hl]                                    ; $5952: $5e
    nop                                           ; $5953: $00
    nop                                           ; $5954: $00
    rla                                           ; $5955: $17
    dec c                                         ; $5956: $0d
    nop                                           ; $5957: $00
    dec d                                         ; $5958: $15
    nop                                           ; $5959: $00
    nop                                           ; $595a: $00
    add hl, de                                    ; $595b: $19
    nop                                           ; $595c: $00
    inc a                                         ; $595d: $3c
    rla                                           ; $595e: $17
    scf                                           ; $595f: $37
    nop                                           ; $5960: $00
    ld e, [hl]                                    ; $5961: $5e
    ld bc, $5f00                                  ; $5962: $01 $00 $5f
    ld bc, $1500                                  ; $5965: $01 $00 $15
    nop                                           ; $5968: $00
    nop                                           ; $5969: $00
    add hl, de                                    ; $596a: $19
    nop                                           ; $596b: $00
    inc a                                         ; $596c: $3c
    ld e, $37                                     ; $596d: $1e $37
    nop                                           ; $596f: $00
    rla                                           ; $5970: $17
    dec c                                         ; $5971: $0d
    nop                                           ; $5972: $00
    ld e, $0d                                     ; $5973: $1e $0d
    nop                                           ; $5975: $00
    halt                                          ; $5976: $76
    ld [$5b38], sp                                ; $5977: $08 $38 $5b
    nop                                           ; $597a: $00
    nop                                           ; $597b: $00
    rrca                                          ; $597c: $0f
    dec b                                         ; $597d: $05
    ld a, [bc]                                    ; $597e: $0a
    ld d, a                                       ; $597f: $57
    nop                                           ; $5980: $00
    nop                                           ; $5981: $00
    nop                                           ; $5982: $00
    nop                                           ; $5983: $00
    nop                                           ; $5984: $00
    ld e, a                                       ; $5985: $5f
    nop                                           ; $5986: $00
    nop                                           ; $5987: $00
    add hl, bc                                    ; $5988: $09
    nop                                           ; $5989: $00
    ld b, e                                       ; $598a: $43
    dec b                                         ; $598b: $05
    dec b                                         ; $598c: $05
    nop                                           ; $598d: $00
    add hl, bc                                    ; $598e: $09
    dec b                                         ; $598f: $05
    ld [$0305], sp                                ; $5990: $08 $05 $03
    nop                                           ; $5993: $00
    dec d                                         ; $5994: $15
    ld e, $00                                     ; $5995: $1e $00
    rlca                                          ; $5997: $07
    ld bc, $5f80                                  ; $5998: $01 $80 $5f
    ld bc, $0000                                  ; $599b: $01 $00 $00
    nop                                           ; $599e: $00
    nop                                           ; $599f: $00
    ld d, [hl]                                    ; $59a0: $56
    nop                                           ; $59a1: $00
    nop                                           ; $59a2: $00
    inc de                                        ; $59a3: $13
    ld [bc], a                                    ; $59a4: $02
    sbc [hl]                                      ; $59a5: $9e
    inc d                                         ; $59a6: $14
    ld [bc], a                                    ; $59a7: $02
    inc e                                         ; $59a8: $1c
    dec d                                         ; $59a9: $15
    nop                                           ; $59aa: $00
    nop                                           ; $59ab: $00
    ld d, $5d                                     ; $59ac: $16 $5d
    nop                                           ; $59ae: $00
    ld d, d                                       ; $59af: $52
    nop                                           ; $59b0: $00
    nop                                           ; $59b1: $00
    ld e, d                                       ; $59b2: $5a
    nop                                           ; $59b3: $00
    nop                                           ; $59b4: $00
    dec de                                        ; $59b5: $1b
    nop                                           ; $59b6: $00
    nop                                           ; $59b7: $00
    inc de                                        ; $59b8: $13
    ld [bc], a                                    ; $59b9: $02
    or d                                          ; $59ba: $b2
    inc d                                         ; $59bb: $14
    ld [bc], a                                    ; $59bc: $02
    inc e                                         ; $59bd: $1c
    dec d                                         ; $59be: $15
    nop                                           ; $59bf: $00
    nop                                           ; $59c0: $00
    ld d, $36                                     ; $59c1: $16 $36
    nop                                           ; $59c3: $00
    ld d, d                                       ; $59c4: $52
    nop                                           ; $59c5: $00
    nop                                           ; $59c6: $00
    ld e, d                                       ; $59c7: $5a
    nop                                           ; $59c8: $00
    nop                                           ; $59c9: $00
    dec de                                        ; $59ca: $1b
    nop                                           ; $59cb: $00
    nop                                           ; $59cc: $00
    inc de                                        ; $59cd: $13
    ld [bc], a                                    ; $59ce: $02
    inc a                                         ; $59cf: $3c
    inc d                                         ; $59d0: $14
    ld [bc], a                                    ; $59d1: $02
    ld h, l                                       ; $59d2: $65
    dec d                                         ; $59d3: $15
    jr c, jr_00a_59d6                             ; $59d4: $38 $00

jr_00a_59d6:
    ld d, $08                                     ; $59d6: $16 $08
    nop                                           ; $59d8: $00
    ld d, d                                       ; $59d9: $52
    nop                                           ; $59da: $00
    nop                                           ; $59db: $00
    ld e, d                                       ; $59dc: $5a
    nop                                           ; $59dd: $00
    nop                                           ; $59de: $00
    ld e, a                                       ; $59df: $5f
    ld bc, $1700                                  ; $59e0: $01 $00 $17
    nop                                           ; $59e3: $00
    nop                                           ; $59e4: $00
    inc de                                        ; $59e5: $13
    ld [bc], a                                    ; $59e6: $02
    ld [$0271], sp                                ; $59e7: $08 $71 $02
    xor b                                         ; $59ea: $a8
    daa                                           ; $59eb: $27
    nop                                           ; $59ec: $00
    ld a, [bc]                                    ; $59ed: $0a
    ld e, a                                       ; $59ee: $5f
    nop                                           ; $59ef: $00
    nop                                           ; $59f0: $00
    rla                                           ; $59f1: $17
    ld e, l                                       ; $59f2: $5d
    nop                                           ; $59f3: $00
    ld e, [hl]                                    ; $59f4: $5e
    nop                                           ; $59f5: $00
    nop                                           ; $59f6: $00
    dec d                                         ; $59f7: $15
    inc b                                         ; $59f8: $04
    nop                                           ; $59f9: $00
    add hl, de                                    ; $59fa: $19
    nop                                           ; $59fb: $00
    ld l, b                                       ; $59fc: $68
    rla                                           ; $59fd: $17
    ld [hl], $00                                  ; $59fe: $36 $00
    dec d                                         ; $5a00: $15
    inc b                                         ; $5a01: $04
    nop                                           ; $5a02: $00
    add hl, de                                    ; $5a03: $19
    nop                                           ; $5a04: $00
    ld l, b                                       ; $5a05: $68
    rla                                           ; $5a06: $17
    nop                                           ; $5a07: $00
    nop                                           ; $5a08: $00
    ld e, [hl]                                    ; $5a09: $5e
    ld bc, $5f00                                  ; $5a0a: $01 $00 $5f
    ld bc, $1500                                  ; $5a0d: $01 $00 $15
    inc b                                         ; $5a10: $04
    nop                                           ; $5a11: $00
    add hl, de                                    ; $5a12: $19
    nop                                           ; $5a13: $00
    ld l, b                                       ; $5a14: $68

Call_00a_5a15:
Jump_00a_5a15:
    ld e, a                                       ; $5a15: $5f
    nop                                           ; $5a16: $00
    nop                                           ; $5a17: $00
    rla                                           ; $5a18: $17
    ld e, l                                       ; $5a19: $5d
    nop                                           ; $5a1a: $00
    ld e, [hl]                                    ; $5a1b: $5e
    nop                                           ; $5a1c: $00
    nop                                           ; $5a1d: $00
    dec d                                         ; $5a1e: $15
    ld b, $00                                     ; $5a1f: $06 $00
    add hl, de                                    ; $5a21: $19
    nop                                           ; $5a22: $00
    ld b, [hl]                                    ; $5a23: $46
    rla                                           ; $5a24: $17
    ld [hl], $00                                  ; $5a25: $36 $00
    dec d                                         ; $5a27: $15
    ld b, $00                                     ; $5a28: $06 $00
    add hl, de                                    ; $5a2a: $19
    nop                                           ; $5a2b: $00
    ld b, [hl]                                    ; $5a2c: $46
    rla                                           ; $5a2d: $17
    nop                                           ; $5a2e: $00
    nop                                           ; $5a2f: $00
    ld e, [hl]                                    ; $5a30: $5e
    ld bc, $5f00                                  ; $5a31: $01 $00 $5f
    ld bc, $1500                                  ; $5a34: $01 $00 $15
    ld b, $00                                     ; $5a37: $06 $00
    add hl, de                                    ; $5a39: $19
    nop                                           ; $5a3a: $00
    ld c, [hl]                                    ; $5a3b: $4e
    dec de                                        ; $5a3c: $1b
    ld b, $00                                     ; $5a3d: $06 $00
    rla                                           ; $5a3f: $17
    ld [hl], $00                                  ; $5a40: $36 $00
    dec de                                        ; $5a42: $1b
    ld b, $00                                     ; $5a43: $06 $00
    rla                                           ; $5a45: $17
    ld e, l                                       ; $5a46: $5d
    nop                                           ; $5a47: $00
    dec de                                        ; $5a48: $1b
    ld b, $00                                     ; $5a49: $06 $00
    dec d                                         ; $5a4b: $15
    nop                                           ; $5a4c: $00
    nop                                           ; $5a4d: $00
    inc sp                                        ; $5a4e: $33
    rlca                                          ; $5a4f: $07
    bit 3, a                                      ; $5a50: $cb $5f
    nop                                           ; $5a52: $00
    nop                                           ; $5a53: $00
    inc de                                        ; $5a54: $13
    ld [bc], a                                    ; $5a55: $02
    add hl, bc                                    ; $5a56: $09
    inc d                                         ; $5a57: $14
    ld [bc], a                                    ; $5a58: $02
    sub c                                         ; $5a59: $91
    dec d                                         ; $5a5a: $15
    nop                                           ; $5a5b: $00
    nop                                           ; $5a5c: $00
    ld d, $1e                                     ; $5a5d: $16 $1e
    nop                                           ; $5a5f: $00
    ld d, d                                       ; $5a60: $52
    nop                                           ; $5a61: $00
    nop                                           ; $5a62: $00
    ld e, d                                       ; $5a63: $5a
    nop                                           ; $5a64: $00
    nop                                           ; $5a65: $00
    ld e, a                                       ; $5a66: $5f
    ld bc, $1300                                  ; $5a67: $01 $00 $13
    ld [bc], a                                    ; $5a6a: $02
    ld l, d                                       ; $5a6b: $6a
    ld [hl], c                                    ; $5a6c: $71
    ld [bc], a                                    ; $5a6d: $02
    jr nc, jr_00a_5a8b                            ; $5a6e: $30 $1b

    ld [bc], a                                    ; $5a70: $02
    nop                                           ; $5a71: $00
    daa                                           ; $5a72: $27
    nop                                           ; $5a73: $00
    dec b                                         ; $5a74: $05
    ld hl, $004d                                  ; $5a75: $21 $4d $00
    daa                                           ; $5a78: $27
    nop                                           ; $5a79: $00
    ld a, [bc]                                    ; $5a7a: $0a
    dec d                                         ; $5a7b: $15
    ld d, $00                                     ; $5a7c: $16 $00
    inc sp                                        ; $5a7e: $33
    rlca                                          ; $5a7f: $07
    call z, $005f                                 ; $5a80: $cc $5f $00
    nop                                           ; $5a83: $00
    rla                                           ; $5a84: $17
    ld e, l                                       ; $5a85: $5d
    nop                                           ; $5a86: $00
    ld e, [hl]                                    ; $5a87: $5e
    nop                                           ; $5a88: $00
    nop                                           ; $5a89: $00
    dec d                                         ; $5a8a: $15

jr_00a_5a8b:
    inc bc                                        ; $5a8b: $03
    nop                                           ; $5a8c: $00
    ld a, [de]                                    ; $5a8d: $1a
    nop                                           ; $5a8e: $00
    ld h, h                                       ; $5a8f: $64
    rla                                           ; $5a90: $17
    ld [hl], $00                                  ; $5a91: $36 $00
    ld e, [hl]                                    ; $5a93: $5e
    ld bc, $5f00                                  ; $5a94: $01 $00 $5f
    ld bc, $1500                                  ; $5a97: $01 $00 $15
    inc bc                                        ; $5a9a: $03
    nop                                           ; $5a9b: $00
    ld a, [de]                                    ; $5a9c: $1a
    nop                                           ; $5a9d: $00
    ld h, h                                       ; $5a9e: $64
    ld e, $36                                     ; $5a9f: $1e $36
    nop                                           ; $5aa1: $00
    rla                                           ; $5aa2: $17
    ld e, l                                       ; $5aa3: $5d
    nop                                           ; $5aa4: $00
    ld e, $5d                                     ; $5aa5: $1e $5d
    nop                                           ; $5aa7: $00
    rla                                           ; $5aa8: $17
    ld e, $00                                     ; $5aa9: $1e $00
    dec de                                        ; $5aab: $1b
    ld [bc], a                                    ; $5aac: $02
    nop                                           ; $5aad: $00
    daa                                           ; $5aae: $27
    nop                                           ; $5aaf: $00
    dec b                                         ; $5ab0: $05
    dec d                                         ; $5ab1: $15
    nop                                           ; $5ab2: $00
    nop                                           ; $5ab3: $00
    inc sp                                        ; $5ab4: $33
    rlca                                          ; $5ab5: $07
    call Call_000_0027                            ; $5ab6: $cd $27 $00
    inc b                                         ; $5ab9: $04
    rla                                           ; $5aba: $17
    nop                                           ; $5abb: $00
    nop                                           ; $5abc: $00
    ld hl, $003d                                  ; $5abd: $21 $3d $00
    daa                                           ; $5ac0: $27
    nop                                           ; $5ac1: $00
    ld a, [bc]                                    ; $5ac2: $0a
    ld e, a                                       ; $5ac3: $5f
    nop                                           ; $5ac4: $00
    nop                                           ; $5ac5: $00
    inc de                                        ; $5ac6: $13
    ld [bc], a                                    ; $5ac7: $02
    sub h                                         ; $5ac8: $94
    inc d                                         ; $5ac9: $14
    ld [bc], a                                    ; $5aca: $02
    cp h                                          ; $5acb: $bc
    dec d                                         ; $5acc: $15
    nop                                           ; $5acd: $00
    nop                                           ; $5ace: $00
    ld d, $5f                                     ; $5acf: $16 $5f
    nop                                           ; $5ad1: $00
    ld d, d                                       ; $5ad2: $52
    nop                                           ; $5ad3: $00
    nop                                           ; $5ad4: $00
    ld e, d                                       ; $5ad5: $5a
    nop                                           ; $5ad6: $00
    nop                                           ; $5ad7: $00
    ld e, a                                       ; $5ad8: $5f
    ld bc, $1300                                  ; $5ad9: $01 $00 $13
    ld [bc], a                                    ; $5adc: $02
    halt                                          ; $5add: $76
    ld [hl], c                                    ; $5ade: $71
    ld [bc], a                                    ; $5adf: $02
    ld h, a                                       ; $5ae0: $67
    daa                                           ; $5ae1: $27
    nop                                           ; $5ae2: $00
    dec b                                         ; $5ae3: $05
    rrca                                          ; $5ae4: $0f
    dec b                                         ; $5ae5: $05
    add hl, bc                                    ; $5ae6: $09
    ld a, c                                       ; $5ae7: $79
    inc bc                                        ; $5ae8: $03
    dec e                                         ; $5ae9: $1d
    nop                                           ; $5aea: $00
    nop                                           ; $5aeb: $00
    nop                                           ; $5aec: $00
    ld bc, $0000                                  ; $5aed: $01 $00 $00
    ld e, a                                       ; $5af0: $5f
    nop                                           ; $5af1: $00
    nop                                           ; $5af2: $00
    add hl, bc                                    ; $5af3: $09
    ld a, [$0502]                                 ; $5af4: $fa $02 $05
    rlca                                          ; $5af7: $07
    nop                                           ; $5af8: $00
    rrca                                          ; $5af9: $0f
    ld a, [$6100]                                 ; $5afa: $fa $00 $61
    nop                                           ; $5afd: $00
    nop                                           ; $5afe: $00
    ld c, l                                       ; $5aff: $4d
    ld bc, $6200                                  ; $5b00: $01 $00 $62
    ld c, b                                       ; $5b03: $48
    nop                                           ; $5b04: $00
    ld a, c                                       ; $5b05: $79
    nop                                           ; $5b06: $00
    daa                                           ; $5b07: $27
    nop                                           ; $5b08: $00
    nop                                           ; $5b09: $00
    nop                                           ; $5b0a: $00
    add hl, bc                                    ; $5b0b: $09
    nop                                           ; $5b0c: $00
    ld c, c                                       ; $5b0d: $49
    dec b                                         ; $5b0e: $05
    ld e, b                                       ; $5b0f: $58
    nop                                           ; $5b10: $00
    inc de                                        ; $5b11: $13
    nop                                           ; $5b12: $00
    ld a, [c]                                     ; $5b13: $f2
    inc d                                         ; $5b14: $14
    ld bc, $1503                                  ; $5b15: $01 $03 $15
    nop                                           ; $5b18: $00
    nop                                           ; $5b19: $00
    ld d, $37                                     ; $5b1a: $16 $37
    nop                                           ; $5b1c: $00
    ld d, d                                       ; $5b1d: $52
    nop                                           ; $5b1e: $00
    nop                                           ; $5b1f: $00
    dec de                                        ; $5b20: $1b
    ld [bc], a                                    ; $5b21: $02
    nop                                           ; $5b22: $00
    inc de                                        ; $5b23: $13
    nop                                           ; $5b24: $00
    rst $18                                       ; $5b25: $df
    inc d                                         ; $5b26: $14
    ld bc, $151a                                  ; $5b27: $01 $1a $15
    nop                                           ; $5b2a: $00
    nop                                           ; $5b2b: $00
    ld d, $39                                     ; $5b2c: $16 $39
    nop                                           ; $5b2e: $00
    ld d, d                                       ; $5b2f: $52
    nop                                           ; $5b30: $00
    nop                                           ; $5b31: $00
    dec de                                        ; $5b32: $1b
    ld [bc], a                                    ; $5b33: $02
    nop                                           ; $5b34: $00
    ld e, a                                       ; $5b35: $5f
    ld bc, $0900                                  ; $5b36: $01 $00 $09
    inc c                                         ; $5b39: $0c
    ld bc, $1d05                                  ; $5b3a: $01 $05 $1d
    nop                                           ; $5b3d: $00
    add hl, bc                                    ; $5b3e: $09
    dec c                                         ; $5b3f: $0d
    ld bc, $0705                                  ; $5b40: $01 $05 $07
    nop                                           ; $5b43: $00
    ld e, a                                       ; $5b44: $5f
    ld bc, $1700                                  ; $5b45: $01 $00 $17
    scf                                           ; $5b48: $37
    nop                                           ; $5b49: $00
    ld [hl+], a                                   ; $5b4a: $22
    nop                                           ; $5b4b: $00
    nop                                           ; $5b4c: $00
    rla                                           ; $5b4d: $17
    add hl, sp                                    ; $5b4e: $39
    nop                                           ; $5b4f: $00
    ld [hl+], a                                   ; $5b50: $22
    scf                                           ; $5b51: $37
    nop                                           ; $5b52: $00
    nop                                           ; $5b53: $00
    nop                                           ; $5b54: $00
    nop                                           ; $5b55: $00
    add hl, bc                                    ; $5b56: $09
    ld a, [$0501]                                 ; $5b57: $fa $01 $05
    inc de                                        ; $5b5a: $13
    nop                                           ; $5b5b: $00
    ld d, [hl]                                    ; $5b5c: $56
    nop                                           ; $5b5d: $00
    nop                                           ; $5b5e: $00
    ld e, a                                       ; $5b5f: $5f
    ld bc, $1700                                  ; $5b60: $01 $00 $17
    nop                                           ; $5b63: $00
    nop                                           ; $5b64: $00
    dec d                                         ; $5b65: $15
    ld b, $00                                     ; $5b66: $06 $00
    add hl, de                                    ; $5b68: $19
    nop                                           ; $5b69: $00
    jr z, @+$1d                                   ; $5b6a: $28 $1b

    nop                                           ; $5b6c: $00
    nop                                           ; $5b6d: $00
    rla                                           ; $5b6e: $17
    scf                                           ; $5b6f: $37
    nop                                           ; $5b70: $00
    ld [hl+], a                                   ; $5b71: $22
    nop                                           ; $5b72: $00
    nop                                           ; $5b73: $00
    rla                                           ; $5b74: $17
    add hl, sp                                    ; $5b75: $39
    nop                                           ; $5b76: $00
    ld [hl+], a                                   ; $5b77: $22
    scf                                           ; $5b78: $37
    nop                                           ; $5b79: $00
    dec d                                         ; $5b7a: $15
    dec d                                         ; $5b7b: $15
    nop                                           ; $5b7c: $00
    inc sp                                        ; $5b7d: $33
    inc b                                         ; $5b7e: $04
    ld sp, hl                                     ; $5b7f: $f9
    dec d                                         ; $5b80: $15
    nop                                           ; $5b81: $00
    nop                                           ; $5b82: $00
    inc sp                                        ; $5b83: $33
    inc b                                         ; $5b84: $04
    ld a, [$4a62]                                 ; $5b85: $fa $62 $4a
    nop                                           ; $5b88: $00
    rrca                                          ; $5b89: $0f
    dec c                                         ; $5b8a: $0d
    ld bc, $0057                                  ; $5b8b: $01 $57 $00
    nop                                           ; $5b8e: $00
    nop                                           ; $5b8f: $00
    nop                                           ; $5b90: $00
    nop                                           ; $5b91: $00
    ld e, a                                       ; $5b92: $5f
    nop                                           ; $5b93: $00
    nop                                           ; $5b94: $00
    ld d, [hl]                                    ; $5b95: $56
    nop                                           ; $5b96: $00
    nop                                           ; $5b97: $00
    ld h, c                                       ; $5b98: $61
    nop                                           ; $5b99: $00
    nop                                           ; $5b9a: $00
    ld e, a                                       ; $5b9b: $5f
    ld bc, $1700                                  ; $5b9c: $01 $00 $17
    nop                                           ; $5b9f: $00
    nop                                           ; $5ba0: $00
    ld e, d                                       ; $5ba1: $5a
    nop                                           ; $5ba2: $00
    nop                                           ; $5ba3: $00
    ld e, [hl]                                    ; $5ba4: $5e
    nop                                           ; $5ba5: $00
    nop                                           ; $5ba6: $00
    rla                                           ; $5ba7: $17
    nop                                           ; $5ba8: $00
    nop                                           ; $5ba9: $00
    ld hl, $005a                                  ; $5baa: $21 $5a $00
    inc de                                        ; $5bad: $13
    inc b                                         ; $5bae: $04
    ld bc, $006e                                  ; $5baf: $01 $6e $00
    ld e, $17                                     ; $5bb2: $1e $17
    add hl, sp                                    ; $5bb4: $39
    nop                                           ; $5bb5: $00
    ld hl, $0058                                  ; $5bb6: $21 $58 $00
    inc de                                        ; $5bb9: $13
    inc b                                         ; $5bba: $04
    ld bc, $006e                                  ; $5bbb: $01 $6e $00
    jr z, jr_00a_5bd7                             ; $5bbe: $28 $17

    scf                                           ; $5bc0: $37
    nop                                           ; $5bc1: $00
    ld hl, $0056                                  ; $5bc2: $21 $56 $00
    ld e, [hl]                                    ; $5bc5: $5e
    ld bc, $1300                                  ; $5bc6: $01 $00 $13
    inc b                                         ; $5bc9: $04
    ld bc, $006e                                  ; $5bca: $01 $6e $00
    jr z, jr_00a_5c2d                             ; $5bcd: $28 $5e

    nop                                           ; $5bcf: $00
    nop                                           ; $5bd0: $00
    ld hl, $0057                                  ; $5bd1: $21 $57 $00
    rla                                           ; $5bd4: $17
    add hl, sp                                    ; $5bd5: $39
    nop                                           ; $5bd6: $00

jr_00a_5bd7:
    ld hl, $0059                                  ; $5bd7: $21 $59 $00
    rla                                           ; $5bda: $17
    nop                                           ; $5bdb: $00
    nop                                           ; $5bdc: $00
    ld hl, $005b                                  ; $5bdd: $21 $5b $00
    ld e, [hl]                                    ; $5be0: $5e
    ld bc, $7e00                                  ; $5be1: $01 $00 $7e
    nop                                           ; $5be4: $00
    nop                                           ; $5be5: $00
    dec de                                        ; $5be6: $1b
    ld b, $00                                     ; $5be7: $06 $00
    ld e, e                                       ; $5be9: $5b
    nop                                           ; $5bea: $00
    nop                                           ; $5beb: $00
    rla                                           ; $5bec: $17
    scf                                           ; $5bed: $37
    nop                                           ; $5bee: $00
    dec de                                        ; $5bef: $1b
    inc b                                         ; $5bf0: $04
    nop                                           ; $5bf1: $00
    rla                                           ; $5bf2: $17
    add hl, sp                                    ; $5bf3: $39
    nop                                           ; $5bf4: $00
    dec de                                        ; $5bf5: $1b
    ld [bc], a                                    ; $5bf6: $02
    nop                                           ; $5bf7: $00
    dec d                                         ; $5bf8: $15
    nop                                           ; $5bf9: $00
    nop                                           ; $5bfa: $00
    inc sp                                        ; $5bfb: $33
    inc b                                         ; $5bfc: $04
    or $15                                        ; $5bfd: $f6 $15
    dec d                                         ; $5bff: $15
    nop                                           ; $5c00: $00
    inc sp                                        ; $5c01: $33
    inc b                                         ; $5c02: $04
    rst $30                                       ; $5c03: $f7
    dec d                                         ; $5c04: $15
    add hl, de                                    ; $5c05: $19
    nop                                           ; $5c06: $00
    inc sp                                        ; $5c07: $33
    inc b                                         ; $5c08: $04
    ld hl, sp+$57                                 ; $5c09: $f8 $57
    nop                                           ; $5c0b: $00
    nop                                           ; $5c0c: $00
    rrca                                          ; $5c0d: $0f
    inc c                                         ; $5c0e: $0c
    ld bc, $0a35                                  ; $5c0f: $01 $35 $0a
    nop                                           ; $5c12: $00
    nop                                           ; $5c13: $00
    nop                                           ; $5c14: $00

Jump_00a_5c15:
    nop                                           ; $5c15: $00
    add hl, bc                                    ; $5c16: $09
    nop                                           ; $5c17: $00
    ld c, d                                       ; $5c18: $4a
    dec b                                         ; $5c19: $05
    inc de                                        ; $5c1a: $13
    nop                                           ; $5c1b: $00
    inc de                                        ; $5c1c: $13
    nop                                           ; $5c1d: $00
    nop                                           ; $5c1e: $00
    inc d                                         ; $5c1f: $14
    nop                                           ; $5c20: $00
    inc d                                         ; $5c21: $14
    dec d                                         ; $5c22: $15
    nop                                           ; $5c23: $00
    nop                                           ; $5c24: $00
    ld d, $37                                     ; $5c25: $16 $37
    ld bc, $0052                                  ; $5c27: $01 $52 $00
    nop                                           ; $5c2a: $00
    dec de                                        ; $5c2b: $1b
    inc b                                         ; $5c2c: $04

jr_00a_5c2d:
    nop                                           ; $5c2d: $00
    inc de                                        ; $5c2e: $13
    nop                                           ; $5c2f: $00
    inc d                                         ; $5c30: $14
    inc d                                         ; $5c31: $14
    nop                                           ; $5c32: $00
    nop                                           ; $5c33: $00
    dec d                                         ; $5c34: $15
    nop                                           ; $5c35: $00
    nop                                           ; $5c36: $00
    ld d, $39                                     ; $5c37: $16 $39
    ld bc, $0052                                  ; $5c39: $01 $52 $00
    nop                                           ; $5c3c: $00
    dec de                                        ; $5c3d: $1b
    ld [bc], a                                    ; $5c3e: $02
    nop                                           ; $5c3f: $00
    ld e, a                                       ; $5c40: $5f
    ld bc, $1700                                  ; $5c41: $01 $00 $17
    scf                                           ; $5c44: $37
    nop                                           ; $5c45: $00
    ld [hl+], a                                   ; $5c46: $22
    nop                                           ; $5c47: $00
    nop                                           ; $5c48: $00
    rla                                           ; $5c49: $17
    add hl, sp                                    ; $5c4a: $39
    nop                                           ; $5c4b: $00
    ld [hl+], a                                   ; $5c4c: $22
    scf                                           ; $5c4d: $37
    nop                                           ; $5c4e: $00
    nop                                           ; $5c4f: $00
    nop                                           ; $5c50: $00
    nop                                           ; $5c51: $00
    nop                                           ; $5c52: $00
    nop                                           ; $5c53: $00
    nop                                           ; $5c54: $00
    ld bc, $0000                                  ; $5c55: $01 $00 $00
    ld e, a                                       ; $5c58: $5f
    nop                                           ; $5c59: $00
    nop                                           ; $5c5a: $00
    add hl, bc                                    ; $5c5b: $09
    ld a, [$0502]                                 ; $5c5c: $fa $02 $05
    rlca                                          ; $5c5f: $07
    nop                                           ; $5c60: $00
    rrca                                          ; $5c61: $0f
    ld a, [$6100]                                 ; $5c62: $fa $00 $61
    nop                                           ; $5c65: $00
    nop                                           ; $5c66: $00
    ld c, l                                       ; $5c67: $4d
    ld bc, $6200                                  ; $5c68: $01 $00 $62
    ld c, b                                       ; $5c6b: $48
    nop                                           ; $5c6c: $00
    ld a, c                                       ; $5c6d: $79
    nop                                           ; $5c6e: $00
    daa                                           ; $5c6f: $27
    nop                                           ; $5c70: $00
    nop                                           ; $5c71: $00
    nop                                           ; $5c72: $00
    add hl, bc                                    ; $5c73: $09
    nop                                           ; $5c74: $00
    ld c, d                                       ; $5c75: $4a
    dec b                                         ; $5c76: $05
    ld d, [hl]                                    ; $5c77: $56
    nop                                           ; $5c78: $00
    ld a, d                                       ; $5c79: $7a
    ld bc, $0900                                  ; $5c7a: $01 $00 $09
    inc d                                         ; $5c7d: $14
    ld bc, $2a05                                  ; $5c7e: $01 $05 $2a
    nop                                           ; $5c81: $00
    inc de                                        ; $5c82: $13
    rst $38                                       ; $5c83: $ff
    db $ec                                        ; $5c84: $ec
    inc d                                         ; $5c85: $14
    nop                                           ; $5c86: $00
    nop                                           ; $5c87: $00
    dec d                                         ; $5c88: $15
    nop                                           ; $5c89: $00
    nop                                           ; $5c8a: $00
    ld d, $37                                     ; $5c8b: $16 $37
    ld bc, $0052                                  ; $5c8d: $01 $52 $00
    nop                                           ; $5c90: $00
    dec de                                        ; $5c91: $1b
    ld [bc], a                                    ; $5c92: $02
    nop                                           ; $5c93: $00
    inc de                                        ; $5c94: $13
    rst $38                                       ; $5c95: $ff
    or $14                                        ; $5c96: $f6 $14
    nop                                           ; $5c98: $00
    inc d                                         ; $5c99: $14
    dec d                                         ; $5c9a: $15
    nop                                           ; $5c9b: $00
    nop                                           ; $5c9c: $00
    ld d, $39                                     ; $5c9d: $16 $39
    ld bc, $0052                                  ; $5c9f: $01 $52 $00
    nop                                           ; $5ca2: $00
    dec de                                        ; $5ca3: $1b
    ld [bc], a                                    ; $5ca4: $02
    nop                                           ; $5ca5: $00
    rla                                           ; $5ca6: $17
    scf                                           ; $5ca7: $37
    nop                                           ; $5ca8: $00
    ld [hl+], a                                   ; $5ca9: $22
    nop                                           ; $5caa: $00
    nop                                           ; $5cab: $00
    rla                                           ; $5cac: $17
    add hl, sp                                    ; $5cad: $39
    nop                                           ; $5cae: $00
    ld [hl+], a                                   ; $5caf: $22
    scf                                           ; $5cb0: $37
    nop                                           ; $5cb1: $00
    add hl, bc                                    ; $5cb2: $09
    inc de                                        ; $5cb3: $13
    ld bc, $1705                                  ; $5cb4: $01 $05 $17
    nop                                           ; $5cb7: $00
    ld d, [hl]                                    ; $5cb8: $56
    nop                                           ; $5cb9: $00
    nop                                           ; $5cba: $00
    ld e, a                                       ; $5cbb: $5f
    ld bc, $0900                                  ; $5cbc: $01 $00 $09
    cp $01                                        ; $5cbf: $fe $01
    dec b                                         ; $5cc1: $05
    inc c                                         ; $5cc2: $0c
    nop                                           ; $5cc3: $00
    dec d                                         ; $5cc4: $15
    nop                                           ; $5cc5: $00
    nop                                           ; $5cc6: $00
    inc sp                                        ; $5cc7: $33
    dec b                                         ; $5cc8: $05
    ld b, $17                                     ; $5cc9: $06 $17
    scf                                           ; $5ccb: $37
    nop                                           ; $5ccc: $00
    ld [hl+], a                                   ; $5ccd: $22
    nop                                           ; $5cce: $00
    nop                                           ; $5ccf: $00
    rla                                           ; $5cd0: $17
    add hl, sp                                    ; $5cd1: $39
    nop                                           ; $5cd2: $00
    ld [hl+], a                                   ; $5cd3: $22
    scf                                           ; $5cd4: $37
    nop                                           ; $5cd5: $00
    ld h, d                                       ; $5cd6: $62
    ld c, e                                       ; $5cd7: $4b
    nop                                           ; $5cd8: $00
    ld a, d                                       ; $5cd9: $7a
    nop                                           ; $5cda: $00
    nop                                           ; $5cdb: $00
    ld d, a                                       ; $5cdc: $57
    nop                                           ; $5cdd: $00
    nop                                           ; $5cde: $00
    nop                                           ; $5cdf: $00
    nop                                           ; $5ce0: $00
    nop                                           ; $5ce1: $00
    inc bc                                        ; $5ce2: $03
    rlca                                          ; $5ce3: $07
    nop                                           ; $5ce4: $00
    dec d                                         ; $5ce5: $15
    nop                                           ; $5ce6: $00
    nop                                           ; $5ce7: $00
    inc sp                                        ; $5ce8: $33
    dec b                                         ; $5ce9: $05
    rlca                                          ; $5cea: $07
    ld h, c                                       ; $5ceb: $61
    nop                                           ; $5cec: $00
    nop                                           ; $5ced: $00
    ld c, l                                       ; $5cee: $4d
    ld bc, $6200                                  ; $5cef: $01 $00 $62
    ld c, b                                       ; $5cf2: $48
    nop                                           ; $5cf3: $00
    ld a, c                                       ; $5cf4: $79
    nop                                           ; $5cf5: $00
    daa                                           ; $5cf6: $27
    nop                                           ; $5cf7: $00
    nop                                           ; $5cf8: $00
    nop                                           ; $5cf9: $00
    nop                                           ; $5cfa: $00
    nop                                           ; $5cfb: $00
    nop                                           ; $5cfc: $00
    ld e, a                                       ; $5cfd: $5f
    nop                                           ; $5cfe: $00
    nop                                           ; $5cff: $00
    inc de                                        ; $5d00: $13
    nop                                           ; $5d01: $00
    inc d                                         ; $5d02: $14
    inc d                                         ; $5d03: $14
    nop                                           ; $5d04: $00
    nop                                           ; $5d05: $00
    dec d                                         ; $5d06: $15
    nop                                           ; $5d07: $00
    nop                                           ; $5d08: $00
    ld d, $37                                     ; $5d09: $16 $37
    ld bc, $0052                                  ; $5d0b: $01 $52 $00
    nop                                           ; $5d0e: $00
    dec de                                        ; $5d0f: $1b
    ld [bc], a                                    ; $5d10: $02
    nop                                           ; $5d11: $00
    inc de                                        ; $5d12: $13
    nop                                           ; $5d13: $00
    ld a, [bc]                                    ; $5d14: $0a
    inc d                                         ; $5d15: $14
    rst $38                                       ; $5d16: $ff
    db $ec                                        ; $5d17: $ec
    dec d                                         ; $5d18: $15
    nop                                           ; $5d19: $00
    nop                                           ; $5d1a: $00
    ld d, $39                                     ; $5d1b: $16 $39
    ld bc, $0052                                  ; $5d1d: $01 $52 $00
    nop                                           ; $5d20: $00
    dec de                                        ; $5d21: $1b
    ld [bc], a                                    ; $5d22: $02
    nop                                           ; $5d23: $00
    ld d, [hl]                                    ; $5d24: $56
    nop                                           ; $5d25: $00
    nop                                           ; $5d26: $00
    ld e, a                                       ; $5d27: $5f
    ld bc, $1700                                  ; $5d28: $01 $00 $17
    add hl, sp                                    ; $5d2b: $39
    nop                                           ; $5d2c: $00
    dec de                                        ; $5d2d: $1b
    ld [bc], a                                    ; $5d2e: $02
    nop                                           ; $5d2f: $00
    ld hl, $005d                                  ; $5d30: $21 $5d $00
    rla                                           ; $5d33: $17
    nop                                           ; $5d34: $00
    nop                                           ; $5d35: $00
    dec de                                        ; $5d36: $1b
    ld [bc], a                                    ; $5d37: $02
    nop                                           ; $5d38: $00
    ld hl, $005e                                  ; $5d39: $21 $5e $00
    rla                                           ; $5d3c: $17
    scf                                           ; $5d3d: $37
    nop                                           ; $5d3e: $00
    dec de                                        ; $5d3f: $1b
    ld [bc], a                                    ; $5d40: $02
    nop                                           ; $5d41: $00
    ld hl, $005c                                  ; $5d42: $21 $5c $00
    dec d                                         ; $5d45: $15
    dec d                                         ; $5d46: $15
    nop                                           ; $5d47: $00
    inc sp                                        ; $5d48: $33
    inc b                                         ; $5d49: $04
    db $fc                                        ; $5d4a: $fc
    dec d                                         ; $5d4b: $15
    nop                                           ; $5d4c: $00
    nop                                           ; $5d4d: $00
    inc sp                                        ; $5d4e: $33
    inc b                                         ; $5d4f: $04
    db $fd                                        ; $5d50: $fd
    rla                                           ; $5d51: $17
    nop                                           ; $5d52: $00
    nop                                           ; $5d53: $00
    dec de                                        ; $5d54: $1b
    ld [bc], a                                    ; $5d55: $02
    nop                                           ; $5d56: $00
    rla                                           ; $5d57: $17
    scf                                           ; $5d58: $37
    nop                                           ; $5d59: $00
    dec de                                        ; $5d5a: $1b
    ld [bc], a                                    ; $5d5b: $02
    nop                                           ; $5d5c: $00
    rla                                           ; $5d5d: $17
    add hl, sp                                    ; $5d5e: $39
    nop                                           ; $5d5f: $00
    dec de                                        ; $5d60: $1b
    ld [bc], a                                    ; $5d61: $02
    nop                                           ; $5d62: $00
    rla                                           ; $5d63: $17
    scf                                           ; $5d64: $37
    nop                                           ; $5d65: $00
    ld [hl+], a                                   ; $5d66: $22
    nop                                           ; $5d67: $00
    nop                                           ; $5d68: $00
    rla                                           ; $5d69: $17
    add hl, sp                                    ; $5d6a: $39
    nop                                           ; $5d6b: $00
    ld [hl+], a                                   ; $5d6c: $22
    scf                                           ; $5d6d: $37
    nop                                           ; $5d6e: $00
    ld d, a                                       ; $5d6f: $57
    nop                                           ; $5d70: $00
    nop                                           ; $5d71: $00
    rrca                                          ; $5d72: $0f
    inc d                                         ; $5d73: $14
    ld bc, $0000                                  ; $5d74: $01 $00 $00
    nop                                           ; $5d77: $00
    ld e, a                                       ; $5d78: $5f
    nop                                           ; $5d79: $00
    nop                                           ; $5d7a: $00
    inc de                                        ; $5d7b: $13
    rst $38                                       ; $5d7c: $ff
    db $ec                                        ; $5d7d: $ec
    inc d                                         ; $5d7e: $14
    nop                                           ; $5d7f: $00
    nop                                           ; $5d80: $00
    dec d                                         ; $5d81: $15
    nop                                           ; $5d82: $00
    nop                                           ; $5d83: $00
    ld d, $37                                     ; $5d84: $16 $37
    ld bc, $0052                                  ; $5d86: $01 $52 $00
    nop                                           ; $5d89: $00
    dec de                                        ; $5d8a: $1b
    ld [bc], a                                    ; $5d8b: $02
    nop                                           ; $5d8c: $00
    inc de                                        ; $5d8d: $13
    rst $38                                       ; $5d8e: $ff
    or $14                                        ; $5d8f: $f6 $14
    nop                                           ; $5d91: $00
    inc d                                         ; $5d92: $14
    dec d                                         ; $5d93: $15
    nop                                           ; $5d94: $00
    nop                                           ; $5d95: $00
    ld d, $39                                     ; $5d96: $16 $39
    ld bc, $0052                                  ; $5d98: $01 $52 $00
    nop                                           ; $5d9b: $00
    dec de                                        ; $5d9c: $1b
    ld [bc], a                                    ; $5d9d: $02
    nop                                           ; $5d9e: $00
    ld e, a                                       ; $5d9f: $5f
    ld bc, $1700                                  ; $5da0: $01 $00 $17
    scf                                           ; $5da3: $37
    nop                                           ; $5da4: $00
    ld [hl+], a                                   ; $5da5: $22
    nop                                           ; $5da6: $00
    nop                                           ; $5da7: $00
    rla                                           ; $5da8: $17
    add hl, sp                                    ; $5da9: $39
    nop                                           ; $5daa: $00
    ld [hl+], a                                   ; $5dab: $22
    scf                                           ; $5dac: $37
    nop                                           ; $5dad: $00
    nop                                           ; $5dae: $00
    nop                                           ; $5daf: $00
    nop                                           ; $5db0: $00
    ld bc, $0000                                  ; $5db1: $01 $00 $00
    ld e, a                                       ; $5db4: $5f
    nop                                           ; $5db5: $00
    nop                                           ; $5db6: $00
    add hl, bc                                    ; $5db7: $09
    nop                                           ; $5db8: $00
    ld c, e                                       ; $5db9: $4b
    dec b                                         ; $5dba: $05
    rlca                                          ; $5dbb: $07
    nop                                           ; $5dbc: $00
    add hl, bc                                    ; $5dbd: $09
    dec b                                         ; $5dbe: $05
    nop                                           ; $5dbf: $00
    dec b                                         ; $5dc0: $05
    inc bc                                        ; $5dc1: $03
    nop                                           ; $5dc2: $00
    dec d                                         ; $5dc3: $15
    ld hl, $0700                                  ; $5dc4: $21 $00 $07
    nop                                           ; $5dc7: $00
    ld c, b                                       ; $5dc8: $48
    dec d                                         ; $5dc9: $15
    ld hl, $0700                                  ; $5dca: $21 $00 $07
    ld bc, $1341                                  ; $5dcd: $01 $41 $13
    rst $38                                       ; $5dd0: $ff
    add sp, $14                                   ; $5dd1: $e8 $14
    nop                                           ; $5dd3: $00
    nop                                           ; $5dd4: $00
    dec d                                         ; $5dd5: $15
    nop                                           ; $5dd6: $00
    nop                                           ; $5dd7: $00
    ld d, $37                                     ; $5dd8: $16 $37
    ld bc, $0052                                  ; $5dda: $01 $52 $00
    nop                                           ; $5ddd: $00
    ld e, d                                       ; $5dde: $5a
    nop                                           ; $5ddf: $00
    nop                                           ; $5de0: $00
    ld [hl+], a                                   ; $5de1: $22
    nop                                           ; $5de2: $00
    nop                                           ; $5de3: $00
    inc de                                        ; $5de4: $13
    nop                                           ; $5de5: $00
    or c                                          ; $5de6: $b1
    inc d                                         ; $5de7: $14
    nop                                           ; $5de8: $00
    call c, Call_000_0015                         ; $5de9: $dc $15 $00
    nop                                           ; $5dec: $00
    ld d, $39                                     ; $5ded: $16 $39
    nop                                           ; $5def: $00
    ld d, d                                       ; $5df0: $52
    nop                                           ; $5df1: $00
    nop                                           ; $5df2: $00
    ld hl, $004f                                  ; $5df3: $21 $4f $00
    ld e, a                                       ; $5df6: $5f
    ld bc, $0000                                  ; $5df7: $01 $00 $00
    nop                                           ; $5dfa: $00
    nop                                           ; $5dfb: $00
    ld d, [hl]                                    ; $5dfc: $56
    nop                                           ; $5dfd: $00
    nop                                           ; $5dfe: $00
    inc de                                        ; $5dff: $13
    nop                                           ; $5e00: $00
    ret nz                                        ; $5e01: $c0

    inc d                                         ; $5e02: $14
    nop                                           ; $5e03: $00
    ld d, b                                       ; $5e04: $50
    dec d                                         ; $5e05: $15
    nop                                           ; $5e06: $00
    nop                                           ; $5e07: $00
    ld d, $61                                     ; $5e08: $16 $61
    nop                                           ; $5e0a: $00
    ld d, d                                       ; $5e0b: $52
    nop                                           ; $5e0c: $00
    nop                                           ; $5e0d: $00
    inc de                                        ; $5e0e: $13
    nop                                           ; $5e0f: $00
    ret nz                                        ; $5e10: $c0

    inc d                                         ; $5e11: $14
    nop                                           ; $5e12: $00
    ld a, [hl]                                    ; $5e13: $7e
    dec d                                         ; $5e14: $15
    inc b                                         ; $5e15: $04
    nop                                           ; $5e16: $00
    ld d, $61                                     ; $5e17: $16 $61
    nop                                           ; $5e19: $00
    ld d, d                                       ; $5e1a: $52
    nop                                           ; $5e1b: $00
    nop                                           ; $5e1c: $00
    inc de                                        ; $5e1d: $13
    nop                                           ; $5e1e: $00
    ret nz                                        ; $5e1f: $c0

    inc d                                         ; $5e20: $14
    nop                                           ; $5e21: $00
    adc [hl]                                      ; $5e22: $8e
    dec d                                         ; $5e23: $15
    ld [bc], a                                    ; $5e24: $02
    nop                                           ; $5e25: $00
    ld d, $61                                     ; $5e26: $16 $61
    nop                                           ; $5e28: $00
    ld d, d                                       ; $5e29: $52
    nop                                           ; $5e2a: $00
    nop                                           ; $5e2b: $00
    inc de                                        ; $5e2c: $13
    nop                                           ; $5e2d: $00
    ret nz                                        ; $5e2e: $c0

    inc d                                         ; $5e2f: $14
    nop                                           ; $5e30: $00
    or b                                          ; $5e31: $b0
    dec d                                         ; $5e32: $15
    ld bc, $1600                                  ; $5e33: $01 $00 $16
    ld h, c                                       ; $5e36: $61
    nop                                           ; $5e37: $00
    ld d, d                                       ; $5e38: $52
    nop                                           ; $5e39: $00
    nop                                           ; $5e3a: $00
    inc de                                        ; $5e3b: $13
    nop                                           ; $5e3c: $00
    dec b                                         ; $5e3d: $05
    inc d                                         ; $5e3e: $14
    nop                                           ; $5e3f: $00
    call c, Call_000_0015                         ; $5e40: $dc $15 $00
    nop                                           ; $5e43: $00
    ld d, $37                                     ; $5e44: $16 $37
    nop                                           ; $5e46: $00
    ld d, d                                       ; $5e47: $52
    nop                                           ; $5e48: $00
    nop                                           ; $5e49: $00
    ld e, d                                       ; $5e4a: $5a
    nop                                           ; $5e4b: $00
    nop                                           ; $5e4c: $00
    inc de                                        ; $5e4d: $13
    nop                                           ; $5e4e: $00
    db $10                                        ; $5e4f: $10
    inc d                                         ; $5e50: $14
    nop                                           ; $5e51: $00
    call c, Call_000_0015                         ; $5e52: $dc $15 $00
    nop                                           ; $5e55: $00
    ld d, $39                                     ; $5e56: $16 $39
    nop                                           ; $5e58: $00
    ld d, d                                       ; $5e59: $52
    nop                                           ; $5e5a: $00
    nop                                           ; $5e5b: $00
    ld e, d                                       ; $5e5c: $5a
    nop                                           ; $5e5d: $00
    nop                                           ; $5e5e: $00
    rla                                           ; $5e5f: $17
    nop                                           ; $5e60: $00
    nop                                           ; $5e61: $00
    ld e, [hl]                                    ; $5e62: $5e
    nop                                           ; $5e63: $00
    nop                                           ; $5e64: $00
    dec d                                         ; $5e65: $15
    ld [bc], a                                    ; $5e66: $02
    nop                                           ; $5e67: $00
    add hl, de                                    ; $5e68: $19
    nop                                           ; $5e69: $00
    db $10                                        ; $5e6a: $10
    ld e, [hl]                                    ; $5e6b: $5e
    ld bc, $1700                                  ; $5e6c: $01 $00 $17
    add hl, sp                                    ; $5e6f: $39
    nop                                           ; $5e70: $00
    ld e, a                                       ; $5e71: $5f
    ld bc, $1500                                  ; $5e72: $01 $00 $15
    ld [bc], a                                    ; $5e75: $02
    nop                                           ; $5e76: $00
    add hl, de                                    ; $5e77: $19
    nop                                           ; $5e78: $00
    db $10                                        ; $5e79: $10
    ld e, a                                       ; $5e7a: $5f
    nop                                           ; $5e7b: $00
    nop                                           ; $5e7c: $00
    rla                                           ; $5e7d: $17
    nop                                           ; $5e7e: $00
    nop                                           ; $5e7f: $00
    ld e, [hl]                                    ; $5e80: $5e
    nop                                           ; $5e81: $00
    nop                                           ; $5e82: $00
    dec d                                         ; $5e83: $15
    ld [bc], a                                    ; $5e84: $02
    nop                                           ; $5e85: $00
    add hl, de                                    ; $5e86: $19
    nop                                           ; $5e87: $00
    ld h, h                                       ; $5e88: $64
    rla                                           ; $5e89: $17
    scf                                           ; $5e8a: $37
    nop                                           ; $5e8b: $00
    dec d                                         ; $5e8c: $15
    ld [bc], a                                    ; $5e8d: $02
    nop                                           ; $5e8e: $00
    add hl, de                                    ; $5e8f: $19
    nop                                           ; $5e90: $00
    ld h, h                                       ; $5e91: $64
    ld e, [hl]                                    ; $5e92: $5e
    ld bc, $1700                                  ; $5e93: $01 $00 $17
    add hl, sp                                    ; $5e96: $39
    nop                                           ; $5e97: $00
    ld e, a                                       ; $5e98: $5f
    ld bc, $1500                                  ; $5e99: $01 $00 $15
    ld [bc], a                                    ; $5e9c: $02
    nop                                           ; $5e9d: $00
    add hl, de                                    ; $5e9e: $19
    nop                                           ; $5e9f: $00
    ld h, h                                       ; $5ea0: $64
    ld e, a                                       ; $5ea1: $5f
    nop                                           ; $5ea2: $00
    nop                                           ; $5ea3: $00
    dec de                                        ; $5ea4: $1b
    nop                                           ; $5ea5: $00
    nop                                           ; $5ea6: $00
    rla                                           ; $5ea7: $17
    scf                                           ; $5ea8: $37
    nop                                           ; $5ea9: $00
    dec de                                        ; $5eaa: $1b
    nop                                           ; $5eab: $00
    nop                                           ; $5eac: $00
    rla                                           ; $5ead: $17
    nop                                           ; $5eae: $00
    nop                                           ; $5eaf: $00
    dec de                                        ; $5eb0: $1b
    nop                                           ; $5eb1: $00
    nop                                           ; $5eb2: $00
    ld e, a                                       ; $5eb3: $5f
    ld bc, $1500                                  ; $5eb4: $01 $00 $15
    nop                                           ; $5eb7: $00
    nop                                           ; $5eb8: $00
    inc sp                                        ; $5eb9: $33
    dec b                                         ; $5eba: $05
    ld [$1515], sp                                ; $5ebb: $08 $15 $15
    nop                                           ; $5ebe: $00
    inc sp                                        ; $5ebf: $33
    dec b                                         ; $5ec0: $05
    ld a, [bc]                                    ; $5ec1: $0a
    dec d                                         ; $5ec2: $15
    add hl, de                                    ; $5ec3: $19
    nop                                           ; $5ec4: $00
    inc sp                                        ; $5ec5: $33
    dec b                                         ; $5ec6: $05
    add hl, bc                                    ; $5ec7: $09
    dec d                                         ; $5ec8: $15
    dec d                                         ; $5ec9: $15
    nop                                           ; $5eca: $00
    inc sp                                        ; $5ecb: $33
    dec b                                         ; $5ecc: $05
    dec c                                         ; $5ecd: $0d
    rla                                           ; $5ece: $17
    nop                                           ; $5ecf: $00
    nop                                           ; $5ed0: $00
    inc de                                        ; $5ed1: $13
    nop                                           ; $5ed2: $00
    and b                                         ; $5ed3: $a0
    ld [hl], c                                    ; $5ed4: $71
    nop                                           ; $5ed5: $00
    and b                                         ; $5ed6: $a0
    dec de                                        ; $5ed7: $1b
    ld [bc], a                                    ; $5ed8: $02
    nop                                           ; $5ed9: $00
    daa                                           ; $5eda: $27
    nop                                           ; $5edb: $00
    ld a, [bc]                                    ; $5edc: $0a
    halt                                          ; $5edd: $76
    ld h, c                                       ; $5ede: $61
    ld bc, $0013                                  ; $5edf: $01 $13 $00
    nop                                           ; $5ee2: $00
    ld l, [hl]                                    ; $5ee3: $6e
    nop                                           ; $5ee4: $00
    db $10                                        ; $5ee5: $10
    inc de                                        ; $5ee6: $13
    ld b, $00                                     ; $5ee7: $06 $00
    ld l, [hl]                                    ; $5ee9: $6e
    nop                                           ; $5eea: $00
    inc e                                         ; $5eeb: $1c
    rrca                                          ; $5eec: $0f
    dec b                                         ; $5eed: $05
    ld bc, $0835                                  ; $5eee: $01 $35 $08
    nop                                           ; $5ef1: $00
    nop                                           ; $5ef2: $00
    nop                                           ; $5ef3: $00
    nop                                           ; $5ef4: $00
    add hl, bc                                    ; $5ef5: $09
    ld a, [$0401]                                 ; $5ef6: $fa $01 $04
    ld b, $00                                     ; $5ef9: $06 $00
    ld h, c                                       ; $5efb: $61
    nop                                           ; $5efc: $00
    nop                                           ; $5efd: $00
    ld c, l                                       ; $5efe: $4d
    ld bc, $6200                                  ; $5eff: $01 $00 $62
    ld c, b                                       ; $5f02: $48
    nop                                           ; $5f03: $00
    ld e, a                                       ; $5f04: $5f
    ld bc, $7900                                  ; $5f05: $01 $00 $79
    nop                                           ; $5f08: $00
    daa                                           ; $5f09: $27
    ld d, [hl]                                    ; $5f0a: $56
    nop                                           ; $5f0b: $00
    nop                                           ; $5f0c: $00
    ld de, $0105                                  ; $5f0d: $11 $05 $01
    ld [$0005], sp                                ; $5f10: $08 $05 $00
    dec d                                         ; $5f13: $15
    ld hl, $0700                                  ; $5f14: $21 $00 $07
    ld bc, $157d                                  ; $5f17: $01 $7d $15
    ld hl, $0700                                  ; $5f1a: $21 $00 $07
    ld bc, $157d                                  ; $5f1d: $01 $7d $15
    ld hl, $0700                                  ; $5f20: $21 $00 $07
    ld bc, $1586                                  ; $5f23: $01 $86 $15
    ld hl, $0700                                  ; $5f26: $21 $00 $07
    ld [bc], a                                    ; $5f29: $02
    ld a, [bc]                                    ; $5f2a: $0a
    dec d                                         ; $5f2b: $15
    ld hl, $0700                                  ; $5f2c: $21 $00 $07
    ld [bc], a                                    ; $5f2f: $02
    db $f4                                        ; $5f30: $f4
    ld d, a                                       ; $5f31: $57
    nop                                           ; $5f32: $00
    nop                                           ; $5f33: $00
    ld e, a                                       ; $5f34: $5f
    ld bc, $0000                                  ; $5f35: $01 $00 $00
    nop                                           ; $5f38: $00
    nop                                           ; $5f39: $00
    rla                                           ; $5f3a: $17
    nop                                           ; $5f3b: $00
    nop                                           ; $5f3c: $00
    inc de                                        ; $5f3d: $13
    nop                                           ; $5f3e: $00
    and b                                         ; $5f3f: $a0
    ld e, b                                       ; $5f40: $58
    nop                                           ; $5f41: $00
    and b                                         ; $5f42: $a0
    dec de                                        ; $5f43: $1b
    ld [bc], a                                    ; $5f44: $02
    nop                                           ; $5f45: $00
    inc de                                        ; $5f46: $13
    nop                                           ; $5f47: $00
    sub b                                         ; $5f48: $90
    inc d                                         ; $5f49: $14
    nop                                           ; $5f4a: $00
    ld d, b                                       ; $5f4b: $50
    dec d                                         ; $5f4c: $15
    nop                                           ; $5f4d: $00
    nop                                           ; $5f4e: $00
    ld d, $61                                     ; $5f4f: $16 $61
    nop                                           ; $5f51: $00
    ld d, d                                       ; $5f52: $52
    nop                                           ; $5f53: $00
    nop                                           ; $5f54: $00
    inc de                                        ; $5f55: $13
    nop                                           ; $5f56: $00
    ret nz                                        ; $5f57: $c0

    inc d                                         ; $5f58: $14
    nop                                           ; $5f59: $00
    ld a, [hl]                                    ; $5f5a: $7e
    dec d                                         ; $5f5b: $15
    inc b                                         ; $5f5c: $04
    nop                                           ; $5f5d: $00
    ld d, $61                                     ; $5f5e: $16 $61
    nop                                           ; $5f60: $00
    ld d, d                                       ; $5f61: $52
    nop                                           ; $5f62: $00
    nop                                           ; $5f63: $00
    inc de                                        ; $5f64: $13
    nop                                           ; $5f65: $00
    ret nz                                        ; $5f66: $c0

    inc d                                         ; $5f67: $14
    nop                                           ; $5f68: $00
    adc [hl]                                      ; $5f69: $8e
    dec d                                         ; $5f6a: $15
    ld [bc], a                                    ; $5f6b: $02
    nop                                           ; $5f6c: $00
    ld d, $61                                     ; $5f6d: $16 $61
    nop                                           ; $5f6f: $00
    ld d, d                                       ; $5f70: $52
    nop                                           ; $5f71: $00
    nop                                           ; $5f72: $00
    inc de                                        ; $5f73: $13
    nop                                           ; $5f74: $00
    ld l, c                                       ; $5f75: $69
    inc d                                         ; $5f76: $14
    nop                                           ; $5f77: $00
    call c, Call_000_0015                         ; $5f78: $dc $15 $00
    nop                                           ; $5f7b: $00
    ld d, $37                                     ; $5f7c: $16 $37
    nop                                           ; $5f7e: $00
    ld d, d                                       ; $5f7f: $52
    nop                                           ; $5f80: $00
    nop                                           ; $5f81: $00
    ld e, d                                       ; $5f82: $5a
    nop                                           ; $5f83: $00
    nop                                           ; $5f84: $00
    dec de                                        ; $5f85: $1b
    nop                                           ; $5f86: $00
    nop                                           ; $5f87: $00
    inc de                                        ; $5f88: $13
    nop                                           ; $5f89: $00
    add h                                         ; $5f8a: $84
    inc d                                         ; $5f8b: $14
    nop                                           ; $5f8c: $00
    call c, Call_000_0015                         ; $5f8d: $dc $15 $00
    nop                                           ; $5f90: $00
    ld d, $39                                     ; $5f91: $16 $39
    nop                                           ; $5f93: $00
    ld d, d                                       ; $5f94: $52
    nop                                           ; $5f95: $00
    nop                                           ; $5f96: $00
    ld e, d                                       ; $5f97: $5a
    nop                                           ; $5f98: $00
    nop                                           ; $5f99: $00
    dec de                                        ; $5f9a: $1b
    nop                                           ; $5f9b: $00
    nop                                           ; $5f9c: $00
    ld e, a                                       ; $5f9d: $5f
    ld bc, $2700                                  ; $5f9e: $01 $00 $27
    nop                                           ; $5fa1: $00
    rrca                                          ; $5fa2: $0f
    rla                                           ; $5fa3: $17
    nop                                           ; $5fa4: $00
    nop                                           ; $5fa5: $00
    inc de                                        ; $5fa6: $13
    nop                                           ; $5fa7: $00
    cp a                                          ; $5fa8: $bf
    ld [hl], c                                    ; $5fa9: $71
    nop                                           ; $5faa: $00
    sub b                                         ; $5fab: $90
    dec de                                        ; $5fac: $1b
    ld [bc], a                                    ; $5fad: $02
    nop                                           ; $5fae: $00
    halt                                          ; $5faf: $76
    ld h, c                                       ; $5fb0: $61
    nop                                           ; $5fb1: $00
    inc de                                        ; $5fb2: $13
    inc b                                         ; $5fb3: $04
    nop                                           ; $5fb4: $00
    ld l, [hl]                                    ; $5fb5: $6e
    nop                                           ; $5fb6: $00
    ld l, c                                       ; $5fb7: $69
    dec [hl]                                      ; $5fb8: $35
    rlca                                          ; $5fb9: $07
    nop                                           ; $5fba: $00
    nop                                           ; $5fbb: $00
    nop                                           ; $5fbc: $00
    nop                                           ; $5fbd: $00
    rla                                           ; $5fbe: $17
    nop                                           ; $5fbf: $00
    nop                                           ; $5fc0: $00
    inc de                                        ; $5fc1: $13
    nop                                           ; $5fc2: $00
    cp a                                          ; $5fc3: $bf
    ld e, b                                       ; $5fc4: $58
    nop                                           ; $5fc5: $00
    sub b                                         ; $5fc6: $90
    dec de                                        ; $5fc7: $1b
    ld b, $00                                     ; $5fc8: $06 $00
    inc de                                        ; $5fca: $13
    nop                                           ; $5fcb: $00
    ret nz                                        ; $5fcc: $c0

    inc d                                         ; $5fcd: $14
    nop                                           ; $5fce: $00
    ld a, [hl]                                    ; $5fcf: $7e
    dec d                                         ; $5fd0: $15
    inc b                                         ; $5fd1: $04
    nop                                           ; $5fd2: $00
    ld d, $61                                     ; $5fd3: $16 $61
    nop                                           ; $5fd5: $00
    ld d, d                                       ; $5fd6: $52
    nop                                           ; $5fd7: $00
    nop                                           ; $5fd8: $00
    inc de                                        ; $5fd9: $13
    nop                                           ; $5fda: $00
    ret nz                                        ; $5fdb: $c0

    inc d                                         ; $5fdc: $14
    nop                                           ; $5fdd: $00
    adc [hl]                                      ; $5fde: $8e
    dec d                                         ; $5fdf: $15
    ld [bc], a                                    ; $5fe0: $02
    nop                                           ; $5fe1: $00
    ld d, $61                                     ; $5fe2: $16 $61
    nop                                           ; $5fe4: $00
    ld d, d                                       ; $5fe5: $52
    nop                                           ; $5fe6: $00
    nop                                           ; $5fe7: $00
    inc de                                        ; $5fe8: $13
    nop                                           ; $5fe9: $00
    ld l, c                                       ; $5fea: $69
    inc d                                         ; $5feb: $14
    nop                                           ; $5fec: $00
    call c, Call_000_0015                         ; $5fed: $dc $15 $00
    nop                                           ; $5ff0: $00
    ld d, $37                                     ; $5ff1: $16 $37
    nop                                           ; $5ff3: $00
    ld d, d                                       ; $5ff4: $52
    nop                                           ; $5ff5: $00
    nop                                           ; $5ff6: $00
    ld e, d                                       ; $5ff7: $5a
    nop                                           ; $5ff8: $00
    nop                                           ; $5ff9: $00
    dec de                                        ; $5ffa: $1b
    nop                                           ; $5ffb: $00
    nop                                           ; $5ffc: $00
    inc de                                        ; $5ffd: $13
    nop                                           ; $5ffe: $00
    add h                                         ; $5fff: $84
    inc d                                         ; $6000: $14
    nop                                           ; $6001: $00
    call c, Call_000_0015                         ; $6002: $dc $15 $00
    nop                                           ; $6005: $00
    ld d, $39                                     ; $6006: $16 $39
    nop                                           ; $6008: $00
    ld d, d                                       ; $6009: $52
    nop                                           ; $600a: $00
    nop                                           ; $600b: $00
    ld e, d                                       ; $600c: $5a
    nop                                           ; $600d: $00
    nop                                           ; $600e: $00
    dec de                                        ; $600f: $1b
    nop                                           ; $6010: $00
    nop                                           ; $6011: $00
    ld e, a                                       ; $6012: $5f
    ld bc, $2700                                  ; $6013: $01 $00 $27
    nop                                           ; $6016: $00
    rlca                                          ; $6017: $07
    dec d                                         ; $6018: $15
    nop                                           ; $6019: $00
    nop                                           ; $601a: $00
    add hl, de                                    ; $601b: $19
    nop                                           ; $601c: $00
    ld [hl-], a                                   ; $601d: $32
    dec de                                        ; $601e: $1b
    ld [bc], a                                    ; $601f: $02
    nop                                           ; $6020: $00
    halt                                          ; $6021: $76
    ld h, c                                       ; $6022: $61
    ld [bc], a                                    ; $6023: $02
    inc de                                        ; $6024: $13
    dec b                                         ; $6025: $05
    nop                                           ; $6026: $00
    ld l, [hl]                                    ; $6027: $6e
    nop                                           ; $6028: $00
    ld a, [de]                                    ; $6029: $1a
    dec d                                         ; $602a: $15
    dec d                                         ; $602b: $15
    nop                                           ; $602c: $00
    inc sp                                        ; $602d: $33
    dec b                                         ; $602e: $05
    ld c, $5f                                     ; $602f: $0e $5f
    nop                                           ; $6031: $00
    nop                                           ; $6032: $00
    halt                                          ; $6033: $76
    ld h, c                                       ; $6034: $61
    ld [bc], a                                    ; $6035: $02
    ld e, [hl]                                    ; $6036: $5e
    nop                                           ; $6037: $00
    nop                                           ; $6038: $00
    inc de                                        ; $6039: $13
    dec b                                         ; $603a: $05
    nop                                           ; $603b: $00
    ld l, [hl]                                    ; $603c: $6e
    nop                                           ; $603d: $00
    ld [$015e], sp                                ; $603e: $08 $5e $01
    nop                                           ; $6041: $00
    rla                                           ; $6042: $17
    add hl, sp                                    ; $6043: $39
    nop                                           ; $6044: $00
    ld e, a                                       ; $6045: $5f
    ld bc, $1500                                  ; $6046: $01 $00 $15
    ld [bc], a                                    ; $6049: $02
    nop                                           ; $604a: $00
    ld a, [de]                                    ; $604b: $1a
    nop                                           ; $604c: $00
    inc hl                                        ; $604d: $23
    ld hl, $004c                                  ; $604e: $21 $4c $00
    daa                                           ; $6051: $27
    nop                                           ; $6052: $00
    dec b                                         ; $6053: $05
    rla                                           ; $6054: $17
    nop                                           ; $6055: $00
    nop                                           ; $6056: $00
    dec de                                        ; $6057: $1b
    ld [bc], a                                    ; $6058: $02
    nop                                           ; $6059: $00
    daa                                           ; $605a: $27
    nop                                           ; $605b: $00
    dec b                                         ; $605c: $05
    ld e, a                                       ; $605d: $5f
    nop                                           ; $605e: $00
    nop                                           ; $605f: $00
    halt                                          ; $6060: $76
    ld h, c                                       ; $6061: $61
    ld [bc], a                                    ; $6062: $02
    ld e, $61                                     ; $6063: $1e $61
    nop                                           ; $6065: $00
    inc de                                        ; $6066: $13
    nop                                           ; $6067: $00
    or b                                          ; $6068: $b0
    inc d                                         ; $6069: $14
    nop                                           ; $606a: $00
    sbc [hl]                                      ; $606b: $9e
    dec d                                         ; $606c: $15
    inc bc                                        ; $606d: $03
    nop                                           ; $606e: $00
    ld d, $61                                     ; $606f: $16 $61
    nop                                           ; $6071: $00
    ld d, d                                       ; $6072: $52
    nop                                           ; $6073: $00
    nop                                           ; $6074: $00
    ld e, d                                       ; $6075: $5a
    nop                                           ; $6076: $00
    nop                                           ; $6077: $00
    ld e, a                                       ; $6078: $5f
    ld bc, $2700                                  ; $6079: $01 $00 $27
    nop                                           ; $607c: $00
    rrca                                          ; $607d: $0f
    ld e, $61                                     ; $607e: $1e $61
    nop                                           ; $6080: $00
    daa                                           ; $6081: $27
    nop                                           ; $6082: $00
    ld a, [bc]                                    ; $6083: $0a
    dec d                                         ; $6084: $15
    nop                                           ; $6085: $00
    nop                                           ; $6086: $00
    inc sp                                        ; $6087: $33
    dec b                                         ; $6088: $05
    dec bc                                        ; $6089: $0b
    daa                                           ; $608a: $27
    nop                                           ; $608b: $00
    ld a, [bc]                                    ; $608c: $0a
    rla                                           ; $608d: $17
    nop                                           ; $608e: $00
    nop                                           ; $608f: $00
    dec d                                         ; $6090: $15
    rlca                                          ; $6091: $07
    nop                                           ; $6092: $00
    add hl, de                                    ; $6093: $19
    nop                                           ; $6094: $00
    ld [$0015], sp                                ; $6095: $08 $15 $00
    nop                                           ; $6098: $00
    add hl, de                                    ; $6099: $19
    nop                                           ; $609a: $00
    jr c, jr_00a_60b2                             ; $609b: $38 $15

    ld [bc], a                                    ; $609d: $02
    nop                                           ; $609e: $00
    add hl, de                                    ; $609f: $19
    nop                                           ; $60a0: $00
    jr nc, jr_00a_60d8                            ; $60a1: $30 $35

    add hl, bc                                    ; $60a3: $09
    nop                                           ; $60a4: $00
    nop                                           ; $60a5: $00
    nop                                           ; $60a6: $00
    nop                                           ; $60a7: $00
    rla                                           ; $60a8: $17
    nop                                           ; $60a9: $00
    nop                                           ; $60aa: $00
    inc de                                        ; $60ab: $13
    nop                                           ; $60ac: $00
    add d                                         ; $60ad: $82
    ld e, b                                       ; $60ae: $58
    nop                                           ; $60af: $00
    cp d                                          ; $60b0: $ba
    dec de                                        ; $60b1: $1b

jr_00a_60b2:
    ld b, $00                                     ; $60b2: $06 $00
    inc de                                        ; $60b4: $13
    nop                                           ; $60b5: $00
    adc [hl]                                      ; $60b6: $8e
    inc d                                         ; $60b7: $14
    nop                                           ; $60b8: $00
    call c, Call_000_0015                         ; $60b9: $dc $15 $00
    nop                                           ; $60bc: $00
    ld d, $37                                     ; $60bd: $16 $37
    nop                                           ; $60bf: $00
    ld d, d                                       ; $60c0: $52
    nop                                           ; $60c1: $00
    nop                                           ; $60c2: $00
    ld e, d                                       ; $60c3: $5a
    nop                                           ; $60c4: $00
    nop                                           ; $60c5: $00
    dec de                                        ; $60c6: $1b
    nop                                           ; $60c7: $00
    nop                                           ; $60c8: $00
    inc de                                        ; $60c9: $13
    nop                                           ; $60ca: $00
    or c                                          ; $60cb: $b1
    inc d                                         ; $60cc: $14
    nop                                           ; $60cd: $00
    call c, Call_000_0015                         ; $60ce: $dc $15 $00
    nop                                           ; $60d1: $00
    ld d, $39                                     ; $60d2: $16 $39
    nop                                           ; $60d4: $00
    ld d, d                                       ; $60d5: $52
    nop                                           ; $60d6: $00
    nop                                           ; $60d7: $00

jr_00a_60d8:
    ld hl, $004f                                  ; $60d8: $21 $4f $00
    ld e, a                                       ; $60db: $5f
    ld bc, $2700                                  ; $60dc: $01 $00 $27
    nop                                           ; $60df: $00
    ld a, [bc]                                    ; $60e0: $0a
    rla                                           ; $60e1: $17
    nop                                           ; $60e2: $00
    nop                                           ; $60e3: $00
    inc de                                        ; $60e4: $13
    nop                                           ; $60e5: $00
    call z, $0071                                 ; $60e6: $cc $71 $00
    and d                                         ; $60e9: $a2
    dec de                                        ; $60ea: $1b
    inc b                                         ; $60eb: $04
    nop                                           ; $60ec: $00
    dec d                                         ; $60ed: $15
    nop                                           ; $60ee: $00
    nop                                           ; $60ef: $00
    inc sp                                        ; $60f0: $33
    dec b                                         ; $60f1: $05
    rrca                                          ; $60f2: $0f
    rla                                           ; $60f3: $17
    scf                                           ; $60f4: $37
    nop                                           ; $60f5: $00
    dec de                                        ; $60f6: $1b
    ld [bc], a                                    ; $60f7: $02
    nop                                           ; $60f8: $00
    dec d                                         ; $60f9: $15
    add hl, de                                    ; $60fa: $19
    nop                                           ; $60fb: $00
    inc sp                                        ; $60fc: $33
    dec b                                         ; $60fd: $05
    db $10                                        ; $60fe: $10
    dec d                                         ; $60ff: $15
    nop                                           ; $6100: $00
    nop                                           ; $6101: $00
    inc sp                                        ; $6102: $33
    dec b                                         ; $6103: $05
    ld de, $4c62                                  ; $6104: $11 $62 $4c
    nop                                           ; $6107: $00
    rla                                           ; $6108: $17
    scf                                           ; $6109: $37
    nop                                           ; $610a: $00
    ld [hl+], a                                   ; $610b: $22
    nop                                           ; $610c: $00
    nop                                           ; $610d: $00
    ld d, a                                       ; $610e: $57
    nop                                           ; $610f: $00
    nop                                           ; $6110: $00
    nop                                           ; $6111: $00
    nop                                           ; $6112: $00
    nop                                           ; $6113: $00
    ld bc, $0000                                  ; $6114: $01 $00 $00
    ld e, a                                       ; $6117: $5f
    nop                                           ; $6118: $00
    nop                                           ; $6119: $00
    add hl, bc                                    ; $611a: $09
    ld a, [$0502]                                 ; $611b: $fa $02 $05
    rlca                                          ; $611e: $07
    nop                                           ; $611f: $00
    rrca                                          ; $6120: $0f
    ld a, [$6100]                                 ; $6121: $fa $00 $61
    nop                                           ; $6124: $00
    nop                                           ; $6125: $00
    ld c, l                                       ; $6126: $4d
    ld bc, $6200                                  ; $6127: $01 $00 $62
    ld c, b                                       ; $612a: $48
    nop                                           ; $612b: $00
    ld a, c                                       ; $612c: $79
    nop                                           ; $612d: $00
    daa                                           ; $612e: $27
    nop                                           ; $612f: $00
    nop                                           ; $6130: $00
    nop                                           ; $6131: $00
    add hl, bc                                    ; $6132: $09
    nop                                           ; $6133: $00
    ld c, h                                       ; $6134: $4c
    dec b                                         ; $6135: $05
    jr jr_00a_6138                                ; $6136: $18 $00

jr_00a_6138:
    ld d, [hl]                                    ; $6138: $56
    nop                                           ; $6139: $00
    nop                                           ; $613a: $00
    inc de                                        ; $613b: $13
    nop                                           ; $613c: $00
    inc b                                         ; $613d: $04
    inc d                                         ; $613e: $14
    rst $38                                       ; $613f: $ff
    ldh a, [$15]                                  ; $6140: $f0 $15
    nop                                           ; $6142: $00
    nop                                           ; $6143: $00
    ld d, $37                                     ; $6144: $16 $37
    ld bc, $0052                                  ; $6146: $01 $52 $00
    nop                                           ; $6149: $00
    dec de                                        ; $614a: $1b
    ld [bc], a                                    ; $614b: $02
    nop                                           ; $614c: $00
    ld [hl+], a                                   ; $614d: $22
    nop                                           ; $614e: $00
    nop                                           ; $614f: $00
    add hl, bc                                    ; $6150: $09
    inc c                                         ; $6151: $0c
    ld bc, $0405                                  ; $6152: $01 $05 $04
    nop                                           ; $6155: $00
    ld d, a                                       ; $6156: $57
    nop                                           ; $6157: $00
    nop                                           ; $6158: $00
    ld e, a                                       ; $6159: $5f
    ld bc, $0000                                  ; $615a: $01 $00 $00
    nop                                           ; $615d: $00
    nop                                           ; $615e: $00
    rrca                                          ; $615f: $0f
    inc c                                         ; $6160: $0c
    ld bc, $015f                                  ; $6161: $01 $5f $01
    nop                                           ; $6164: $00
    dec d                                         ; $6165: $15
    add hl, de                                    ; $6166: $19
    nop                                           ; $6167: $00
    inc sp                                        ; $6168: $33
    dec b                                         ; $6169: $05
    ld [de], a                                    ; $616a: $12
    dec d                                         ; $616b: $15
    nop                                           ; $616c: $00
    nop                                           ; $616d: $00
    inc sp                                        ; $616e: $33
    dec b                                         ; $616f: $05
    inc de                                        ; $6170: $13
    dec d                                         ; $6171: $15
    add hl, de                                    ; $6172: $19
    nop                                           ; $6173: $00
    inc sp                                        ; $6174: $33
    dec b                                         ; $6175: $05
    inc d                                         ; $6176: $14
    ld d, a                                       ; $6177: $57
    nop                                           ; $6178: $00
    nop                                           ; $6179: $00
    nop                                           ; $617a: $00
    nop                                           ; $617b: $00
    nop                                           ; $617c: $00
    ld e, a                                       ; $617d: $5f
    ld bc, $0000                                  ; $617e: $01 $00 $00
    nop                                           ; $6181: $00
    nop                                           ; $6182: $00
    ld [bc], a                                    ; $6183: $02
    nop                                           ; $6184: $00
    nop                                           ; $6185: $00
    ld bc, $5f53                                  ; $6186: $01 $53 $5f
    nop                                           ; $6189: $00
    nop                                           ; $618a: $00
    add hl, bc                                    ; $618b: $09
    ld a, [$0502]                                 ; $618c: $fa $02 $05
    rlca                                          ; $618f: $07
    nop                                           ; $6190: $00
    rrca                                          ; $6191: $0f
    ld a, [$6100]                                 ; $6192: $fa $00 $61
    nop                                           ; $6195: $00
    nop                                           ; $6196: $00
    ld c, l                                       ; $6197: $4d
    ld bc, $6200                                  ; $6198: $01 $00 $62
    ld c, b                                       ; $619b: $48
    nop                                           ; $619c: $00
    ld a, c                                       ; $619d: $79
    nop                                           ; $619e: $00
    daa                                           ; $619f: $27
    nop                                           ; $61a0: $00
    nop                                           ; $61a1: $00
    nop                                           ; $61a2: $00
    add hl, bc                                    ; $61a3: $09
    nop                                           ; $61a4: $00
    ld c, h                                       ; $61a5: $4c
    dec b                                         ; $61a6: $05
    dec h                                         ; $61a7: $25
    nop                                           ; $61a8: $00
    ld d, [hl]                                    ; $61a9: $56
    nop                                           ; $61aa: $00
    nop                                           ; $61ab: $00
    inc de                                        ; $61ac: $13
    nop                                           ; $61ad: $00
    nop                                           ; $61ae: $00
    inc d                                         ; $61af: $14
    nop                                           ; $61b0: $00
    inc d                                         ; $61b1: $14
    dec d                                         ; $61b2: $15
    nop                                           ; $61b3: $00
    nop                                           ; $61b4: $00
    ld d, $37                                     ; $61b5: $16 $37
    ld bc, $0052                                  ; $61b7: $01 $52 $00
    nop                                           ; $61ba: $00
    dec de                                        ; $61bb: $1b
    nop                                           ; $61bc: $00
    nop                                           ; $61bd: $00
    inc de                                        ; $61be: $13
    nop                                           ; $61bf: $00
    rst $18                                       ; $61c0: $df
    inc d                                         ; $61c1: $14
    nop                                           ; $61c2: $00
    scf                                           ; $61c3: $37
    dec d                                         ; $61c4: $15
    nop                                           ; $61c5: $00
    nop                                           ; $61c6: $00
    ld d, $67                                     ; $61c7: $16 $67
    nop                                           ; $61c9: $00
    ld d, d                                       ; $61ca: $52
    nop                                           ; $61cb: $00
    nop                                           ; $61cc: $00
    inc de                                        ; $61cd: $13
    nop                                           ; $61ce: $00
    ld h, $14                                     ; $61cf: $26 $14
    nop                                           ; $61d1: $00
    cp b                                          ; $61d2: $b8
    dec d                                         ; $61d3: $15
    ld bc, $1600                                  ; $61d4: $01 $00 $16
    ld h, a                                       ; $61d7: $67
    nop                                           ; $61d8: $00
    ld d, d                                       ; $61d9: $52
    nop                                           ; $61da: $00
    nop                                           ; $61db: $00
    ld e, a                                       ; $61dc: $5f
    ld bc, $0900                                  ; $61dd: $01 $00 $09
    dec c                                         ; $61e0: $0d
    ld bc, $0205                                  ; $61e1: $01 $05 $02
    nop                                           ; $61e4: $00
    nop                                           ; $61e5: $00
    nop                                           ; $61e6: $00
    nop                                           ; $61e7: $00
    dec d                                         ; $61e8: $15
    add hl, de                                    ; $61e9: $19
    nop                                           ; $61ea: $00
    inc sp                                        ; $61eb: $33
    dec b                                         ; $61ec: $05
    ld d, $15                                     ; $61ed: $16 $15
    nop                                           ; $61ef: $00
    nop                                           ; $61f0: $00
    inc sp                                        ; $61f1: $33
    dec b                                         ; $61f2: $05
    rla                                           ; $61f3: $17
    dec d                                         ; $61f4: $15
    add hl, de                                    ; $61f5: $19
    nop                                           ; $61f6: $00
    inc sp                                        ; $61f7: $33
    dec b                                         ; $61f8: $05
    jr @+$17                                      ; $61f9: $18 $15

    nop                                           ; $61fb: $00
    nop                                           ; $61fc: $00
    inc sp                                        ; $61fd: $33
    dec b                                         ; $61fe: $05
    add hl, de                                    ; $61ff: $19
    rla                                           ; $6200: $17
    scf                                           ; $6201: $37
    nop                                           ; $6202: $00
    ld [hl+], a                                   ; $6203: $22
    nop                                           ; $6204: $00
    nop                                           ; $6205: $00
    ld h, d                                       ; $6206: $62
    ld c, l                                       ; $6207: $4d
    nop                                           ; $6208: $00
    rrca                                          ; $6209: $0f
    cp $00                                        ; $620a: $fe $00
    rrca                                          ; $620c: $0f
    dec c                                         ; $620d: $0d
    ld bc, $0057                                  ; $620e: $01 $57 $00
    nop                                           ; $6211: $00
    nop                                           ; $6212: $00
    nop                                           ; $6213: $00
    nop                                           ; $6214: $00
    add hl, bc                                    ; $6215: $09
    nop                                           ; $6216: $00
    ld c, l                                       ; $6217: $4d
    dec b                                         ; $6218: $05
    ld sp, $1300                                  ; $6219: $31 $00 $13
    nop                                           ; $621c: $00
    nop                                           ; $621d: $00
    inc d                                         ; $621e: $14
    nop                                           ; $621f: $00
    inc d                                         ; $6220: $14
    dec d                                         ; $6221: $15
    nop                                           ; $6222: $00
    nop                                           ; $6223: $00
    ld d, $37                                     ; $6224: $16 $37
    ld bc, $0052                                  ; $6226: $01 $52 $00
    nop                                           ; $6229: $00
    dec de                                        ; $622a: $1b
    nop                                           ; $622b: $00
    nop                                           ; $622c: $00
    inc de                                        ; $622d: $13
    nop                                           ; $622e: $00
    rst $18                                       ; $622f: $df
    inc d                                         ; $6230: $14
    nop                                           ; $6231: $00
    scf                                           ; $6232: $37
    dec d                                         ; $6233: $15
    nop                                           ; $6234: $00
    nop                                           ; $6235: $00
    ld d, $67                                     ; $6236: $16 $67
    nop                                           ; $6238: $00
    ld d, d                                       ; $6239: $52
    nop                                           ; $623a: $00
    nop                                           ; $623b: $00
    inc de                                        ; $623c: $13
    nop                                           ; $623d: $00
    ld h, $14                                     ; $623e: $26 $14
    nop                                           ; $6240: $00
    cp b                                          ; $6241: $b8
    dec d                                         ; $6242: $15
    ld bc, $1600                                  ; $6243: $01 $00 $16
    ld h, a                                       ; $6246: $67
    nop                                           ; $6247: $00
    ld d, d                                       ; $6248: $52
    nop                                           ; $6249: $00
    nop                                           ; $624a: $00
    add hl, bc                                    ; $624b: $09
    cp $00                                        ; $624c: $fe $00
    dec b                                         ; $624e: $05
    dec b                                         ; $624f: $05
    nop                                           ; $6250: $00
    ld e, a                                       ; $6251: $5f
    ld bc, $1700                                  ; $6252: $01 $00 $17
    scf                                           ; $6255: $37
    nop                                           ; $6256: $00
    ld [hl+], a                                   ; $6257: $22
    nop                                           ; $6258: $00
    nop                                           ; $6259: $00
    nop                                           ; $625a: $00
    nop                                           ; $625b: $00
    nop                                           ; $625c: $00
    add hl, bc                                    ; $625d: $09
    cp $02                                        ; $625e: $fe $02
    dec b                                         ; $6260: $05
    inc c                                         ; $6261: $0c
    nop                                           ; $6262: $00
    ld d, [hl]                                    ; $6263: $56
    nop                                           ; $6264: $00
    nop                                           ; $6265: $00
    ld e, a                                       ; $6266: $5f
    ld bc, $1500                                  ; $6267: $01 $00 $15
    add hl, de                                    ; $626a: $19
    nop                                           ; $626b: $00
    inc sp                                        ; $626c: $33
    dec b                                         ; $626d: $05
    ld a, [de]                                    ; $626e: $1a
    rla                                           ; $626f: $17
    scf                                           ; $6270: $37
    nop                                           ; $6271: $00
    inc de                                        ; $6272: $13
    nop                                           ; $6273: $00
    or a                                          ; $6274: $b7
    ld [hl], c                                    ; $6275: $71
    nop                                           ; $6276: $00
    ld [hl+], a                                   ; $6277: $22
    ld e, $37                                     ; $6278: $1e $37
    nop                                           ; $627a: $00
    ld h, d                                       ; $627b: $62
    ld c, [hl]                                    ; $627c: $4e
    nop                                           ; $627d: $00
    ld d, a                                       ; $627e: $57
    nop                                           ; $627f: $00
    nop                                           ; $6280: $00
    nop                                           ; $6281: $00
    nop                                           ; $6282: $00
    nop                                           ; $6283: $00
    add hl, bc                                    ; $6284: $09
    cp $01                                        ; $6285: $fe $01
    dec b                                         ; $6287: $05
    ld a, [bc]                                    ; $6288: $0a
    nop                                           ; $6289: $00
    ld d, [hl]                                    ; $628a: $56
    nop                                           ; $628b: $00
    nop                                           ; $628c: $00
    ld e, a                                       ; $628d: $5f
    ld bc, $1500                                  ; $628e: $01 $00 $15
    nop                                           ; $6291: $00
    nop                                           ; $6292: $00
    inc sp                                        ; $6293: $33
    dec b                                         ; $6294: $05
    dec de                                        ; $6295: $1b
    ld h, c                                       ; $6296: $61
    nop                                           ; $6297: $00
    nop                                           ; $6298: $00
    ld c, l                                       ; $6299: $4d
    ld bc, $6200                                  ; $629a: $01 $00 $62
    ld c, b                                       ; $629d: $48
    nop                                           ; $629e: $00
    ld a, c                                       ; $629f: $79
    nop                                           ; $62a0: $00
    daa                                           ; $62a1: $27
    nop                                           ; $62a2: $00
    nop                                           ; $62a3: $00
    nop                                           ; $62a4: $00
    ld e, a                                       ; $62a5: $5f
    ld bc, $0000                                  ; $62a6: $01 $00 $00
    nop                                           ; $62a9: $00
    nop                                           ; $62aa: $00
    add hl, bc                                    ; $62ab: $09
    nop                                           ; $62ac: $00
    ld c, [hl]                                    ; $62ad: $4e
    dec b                                         ; $62ae: $05
    dec c                                         ; $62af: $0d
    nop                                           ; $62b0: $00
    inc de                                        ; $62b1: $13
    nop                                           ; $62b2: $00
    rst $18                                       ; $62b3: $df
    inc d                                         ; $62b4: $14
    nop                                           ; $62b5: $00
    scf                                           ; $62b6: $37
    dec d                                         ; $62b7: $15
    nop                                           ; $62b8: $00
    nop                                           ; $62b9: $00
    ld d, $67                                     ; $62ba: $16 $67
    nop                                           ; $62bc: $00
    ld d, d                                       ; $62bd: $52
    nop                                           ; $62be: $00
    nop                                           ; $62bf: $00
    inc de                                        ; $62c0: $13
    nop                                           ; $62c1: $00
    ld h, $14                                     ; $62c2: $26 $14
    nop                                           ; $62c4: $00
    cp b                                          ; $62c5: $b8
    dec d                                         ; $62c6: $15
    ld bc, $1600                                  ; $62c7: $01 $00 $16
    ld h, a                                       ; $62ca: $67
    nop                                           ; $62cb: $00
    ld d, d                                       ; $62cc: $52
    nop                                           ; $62cd: $00
    nop                                           ; $62ce: $00
    ld e, a                                       ; $62cf: $5f
    ld bc, $0000                                  ; $62d0: $01 $00 $00
    nop                                           ; $62d3: $00
    nop                                           ; $62d4: $00
    ld e, a                                       ; $62d5: $5f
    ld bc, $0000                                  ; $62d6: $01 $00 $00
    nop                                           ; $62d9: $00
    nop                                           ; $62da: $00
    add hl, bc                                    ; $62db: $09
    nop                                           ; $62dc: $00
    ld c, l                                       ; $62dd: $4d
    dec b                                         ; $62de: $05
    inc b                                         ; $62df: $04
    nop                                           ; $62e0: $00
    ld a, a                                       ; $62e1: $7f
    add hl, bc                                    ; $62e2: $09
    call c, Call_000_0855                         ; $62e3: $dc $55 $08
    nop                                           ; $62e6: $00
    nop                                           ; $62e7: $00
    nop                                           ; $62e8: $00
    nop                                           ; $62e9: $00
    nop                                           ; $62ea: $00
    nop                                           ; $62eb: $00
    nop                                           ; $62ec: $00
    ld bc, $0000                                  ; $62ed: $01 $00 $00
    ld e, a                                       ; $62f0: $5f
    nop                                           ; $62f1: $00
    nop                                           ; $62f2: $00
    add hl, bc                                    ; $62f3: $09
    ld a, [$0502]                                 ; $62f4: $fa $02 $05
    rlca                                          ; $62f7: $07
    nop                                           ; $62f8: $00
    rrca                                          ; $62f9: $0f
    ld a, [$6100]                                 ; $62fa: $fa $00 $61
    nop                                           ; $62fd: $00
    nop                                           ; $62fe: $00
    ld c, l                                       ; $62ff: $4d
    ld bc, $6200                                  ; $6300: $01 $00 $62
    ld c, b                                       ; $6303: $48
    nop                                           ; $6304: $00
    ld a, c                                       ; $6305: $79
    nop                                           ; $6306: $00
    daa                                           ; $6307: $27
    nop                                           ; $6308: $00
    nop                                           ; $6309: $00
    nop                                           ; $630a: $00
    ld d, [hl]                                    ; $630b: $56
    nop                                           ; $630c: $00
    nop                                           ; $630d: $00
    add hl, bc                                    ; $630e: $09
    nop                                           ; $630f: $00
    ld c, [hl]                                    ; $6310: $4e
    inc b                                         ; $6311: $04
    inc bc                                        ; $6312: $03
    nop                                           ; $6313: $00
    ld e, a                                       ; $6314: $5f
    ld bc, $0000                                  ; $6315: $01 $00 $00
    nop                                           ; $6318: $00
    nop                                           ; $6319: $00
    ld [$0005], sp                                ; $631a: $08 $05 $00
    dec d                                         ; $631d: $15
    inc h                                         ; $631e: $24
    nop                                           ; $631f: $00
    rlca                                          ; $6320: $07
    nop                                           ; $6321: $00
    ccf                                           ; $6322: $3f
    dec d                                         ; $6323: $15
    inc h                                         ; $6324: $24
    nop                                           ; $6325: $00
    rlca                                          ; $6326: $07
    ld bc, $1541                                  ; $6327: $01 $41 $15
    inc h                                         ; $632a: $24
    nop                                           ; $632b: $00
    rlca                                          ; $632c: $07
    ld bc, $1395                                  ; $632d: $01 $95 $13
    nop                                           ; $6330: $00
    ld l, [hl]                                    ; $6331: $6e
    inc d                                         ; $6332: $14
    nop                                           ; $6333: $00
    sbc e                                         ; $6334: $9b
    dec d                                         ; $6335: $15
    nop                                           ; $6336: $00
    nop                                           ; $6337: $00
    ld d, $49                                     ; $6338: $16 $49
    nop                                           ; $633a: $00
    ld d, d                                       ; $633b: $52
    nop                                           ; $633c: $00
    nop                                           ; $633d: $00
    dec de                                        ; $633e: $1b
    ld b, $00                                     ; $633f: $06 $00
    ld e, a                                       ; $6341: $5f
    ld bc, $2700                                  ; $6342: $01 $00 $27
    nop                                           ; $6345: $00
    rrca                                          ; $6346: $0f
    dec d                                         ; $6347: $15
    ld a, [hl-]                                   ; $6348: $3a
    nop                                           ; $6349: $00
    inc sp                                        ; $634a: $33
    dec b                                         ; $634b: $05
    inc e                                         ; $634c: $1c
    dec d                                         ; $634d: $15
    nop                                           ; $634e: $00
    nop                                           ; $634f: $00
    inc sp                                        ; $6350: $33
    dec b                                         ; $6351: $05
    dec e                                         ; $6352: $1d
    dec d                                         ; $6353: $15
    ld a, [hl-]                                   ; $6354: $3a
    nop                                           ; $6355: $00
    inc sp                                        ; $6356: $33
    dec b                                         ; $6357: $05
    ld e, $15                                     ; $6358: $1e $15
    nop                                           ; $635a: $00
    nop                                           ; $635b: $00
    inc sp                                        ; $635c: $33
    dec b                                         ; $635d: $05
    rra                                           ; $635e: $1f
    dec d                                         ; $635f: $15
    ld a, [hl-]                                   ; $6360: $3a
    nop                                           ; $6361: $00
    inc sp                                        ; $6362: $33
    dec b                                         ; $6363: $05
    jr nz, jr_00a_637b                            ; $6364: $20 $15

    nop                                           ; $6366: $00
    nop                                           ; $6367: $00
    inc sp                                        ; $6368: $33
    dec b                                         ; $6369: $05
    ld hl, $3a15                                  ; $636a: $21 $15 $3a
    nop                                           ; $636d: $00
    inc sp                                        ; $636e: $33
    dec b                                         ; $636f: $05
    ld [hl+], a                                   ; $6370: $22
    dec d                                         ; $6371: $15
    nop                                           ; $6372: $00
    nop                                           ; $6373: $00
    inc sp                                        ; $6374: $33
    dec b                                         ; $6375: $05
    inc hl                                        ; $6376: $23
    dec d                                         ; $6377: $15
    ld a, [hl-]                                   ; $6378: $3a
    nop                                           ; $6379: $00
    inc sp                                        ; $637a: $33

jr_00a_637b:
    dec b                                         ; $637b: $05
    inc h                                         ; $637c: $24
    rla                                           ; $637d: $17
    nop                                           ; $637e: $00
    nop                                           ; $637f: $00
    ld l, $2c                                     ; $6380: $2e $2c
    nop                                           ; $6382: $00
    ld hl, $0051                                  ; $6383: $21 $51 $00
    daa                                           ; $6386: $27
    nop                                           ; $6387: $00
    dec l                                         ; $6388: $2d
    dec d                                         ; $6389: $15
    ld a, [hl-]                                   ; $638a: $3a
    nop                                           ; $638b: $00
    inc sp                                        ; $638c: $33
    dec b                                         ; $638d: $05
    dec h                                         ; $638e: $25
    rla                                           ; $638f: $17
    ld c, c                                       ; $6390: $49
    nop                                           ; $6391: $00
    dec d                                         ; $6392: $15
    nop                                           ; $6393: $00
    nop                                           ; $6394: $00
    add hl, de                                    ; $6395: $19
    nop                                           ; $6396: $00
    add hl, de                                    ; $6397: $19
    dec d                                         ; $6398: $15
    ld a, [hl-]                                   ; $6399: $3a
    nop                                           ; $639a: $00
    inc sp                                        ; $639b: $33
    dec b                                         ; $639c: $05
    ld h, $15                                     ; $639d: $26 $15
    ld [hl], b                                    ; $639f: $70
    nop                                           ; $63a0: $00
    inc sp                                        ; $63a1: $33
    dec b                                         ; $63a2: $05
    daa                                           ; $63a3: $27
    rla                                           ; $63a4: $17
    ld c, c                                       ; $63a5: $49
    nop                                           ; $63a6: $00
    dec de                                        ; $63a7: $1b
    ld b, $00                                     ; $63a8: $06 $00
    dec d                                         ; $63aa: $15
    ld a, [hl-]                                   ; $63ab: $3a
    nop                                           ; $63ac: $00
    inc sp                                        ; $63ad: $33
    dec b                                         ; $63ae: $05
    jr z, jr_00a_63d8                             ; $63af: $28 $27

    nop                                           ; $63b1: $00
    dec b                                         ; $63b2: $05
    rla                                           ; $63b3: $17
    nop                                           ; $63b4: $00
    nop                                           ; $63b5: $00
    ld l, $2c                                     ; $63b6: $2e $2c
    nop                                           ; $63b8: $00
    ld hl, $0052                                  ; $63b9: $21 $52 $00
    daa                                           ; $63bc: $27
    nop                                           ; $63bd: $00
    add hl, de                                    ; $63be: $19
    ld a, [hl]                                    ; $63bf: $7e
    nop                                           ; $63c0: $00
    nop                                           ; $63c1: $00
    ld e, a                                       ; $63c2: $5f
    nop                                           ; $63c3: $00
    nop                                           ; $63c4: $00
    rla                                           ; $63c5: $17
    nop                                           ; $63c6: $00
    nop                                           ; $63c7: $00
    ld e, [hl]                                    ; $63c8: $5e
    nop                                           ; $63c9: $00
    nop                                           ; $63ca: $00
    dec d                                         ; $63cb: $15
    ld [bc], a                                    ; $63cc: $02
    nop                                           ; $63cd: $00
    add hl, de                                    ; $63ce: $19
    nop                                           ; $63cf: $00
    inc d                                         ; $63d0: $14
    ld e, [hl]                                    ; $63d1: $5e
    ld bc, $1700                                  ; $63d2: $01 $00 $17
    ld c, c                                       ; $63d5: $49
    nop                                           ; $63d6: $00
    ld e, a                                       ; $63d7: $5f

jr_00a_63d8:
    ld bc, $1500                                  ; $63d8: $01 $00 $15
    ld [bc], a                                    ; $63db: $02
    nop                                           ; $63dc: $00
    add hl, de                                    ; $63dd: $19
    nop                                           ; $63de: $00
    inc d                                         ; $63df: $14
    dec de                                        ; $63e0: $1b
    ld b, $00                                     ; $63e1: $06 $00
    rla                                           ; $63e3: $17
    nop                                           ; $63e4: $00
    nop                                           ; $63e5: $00
    inc de                                        ; $63e6: $13
    nop                                           ; $63e7: $00
    sub h                                         ; $63e8: $94
    ld [hl], c                                    ; $63e9: $71
    nop                                           ; $63ea: $00
    ld l, e                                       ; $63eb: $6b
    ld e, a                                       ; $63ec: $5f
    nop                                           ; $63ed: $00
    nop                                           ; $63ee: $00
    inc de                                        ; $63ef: $13
    nop                                           ; $63f0: $00
    ld l, h                                       ; $63f1: $6c
    inc d                                         ; $63f2: $14
    nop                                           ; $63f3: $00
    ld [hl], a                                    ; $63f4: $77
    dec d                                         ; $63f5: $15
    nop                                           ; $63f6: $00
    nop                                           ; $63f7: $00
    ld d, $6b                                     ; $63f8: $16 $6b
    nop                                           ; $63fa: $00
    ld d, d                                       ; $63fb: $52
    nop                                           ; $63fc: $00
    nop                                           ; $63fd: $00
    rla                                           ; $63fe: $17
    nop                                           ; $63ff: $00
    nop                                           ; $6400: $00
    ld e, a                                       ; $6401: $5f
    ld bc, $1500                                  ; $6402: $01 $00 $15
    nop                                           ; $6405: $00
    nop                                           ; $6406: $00
    add hl, de                                    ; $6407: $19
    nop                                           ; $6408: $00
    ld a, [bc]                                    ; $6409: $0a
    dec de                                        ; $640a: $1b
    nop                                           ; $640b: $00
    nop                                           ; $640c: $00
    daa                                           ; $640d: $27
    nop                                           ; $640e: $00
    ld c, b                                       ; $640f: $48
    dec d                                         ; $6410: $15
    nop                                           ; $6411: $00
    nop                                           ; $6412: $00
    inc sp                                        ; $6413: $33
    dec b                                         ; $6414: $05
    add hl, hl                                    ; $6415: $29
    dec d                                         ; $6416: $15
    ld a, [hl-]                                   ; $6417: $3a
    nop                                           ; $6418: $00
    inc sp                                        ; $6419: $33
    dec b                                         ; $641a: $05
    ld a, [hl+]                                   ; $641b: $2a
    dec d                                         ; $641c: $15
    nop                                           ; $641d: $00
    nop                                           ; $641e: $00
    inc sp                                        ; $641f: $33
    dec b                                         ; $6420: $05
    dec hl                                        ; $6421: $2b
    dec d                                         ; $6422: $15
    ld [hl], b                                    ; $6423: $70
    nop                                           ; $6424: $00
    inc sp                                        ; $6425: $33
    dec b                                         ; $6426: $05
    inc l                                         ; $6427: $2c
    rrca                                          ; $6428: $0f
    dec b                                         ; $6429: $05
    ld bc, $0b35                                  ; $642a: $01 $35 $0b
    nop                                           ; $642d: $00
    nop                                           ; $642e: $00
    nop                                           ; $642f: $00
    nop                                           ; $6430: $00
    ld e, a                                       ; $6431: $5f
    nop                                           ; $6432: $00
    nop                                           ; $6433: $00
    add hl, bc                                    ; $6434: $09
    ld a, [$0401]                                 ; $6435: $fa $01 $04
    ld b, $00                                     ; $6438: $06 $00
    ld h, c                                       ; $643a: $61
    nop                                           ; $643b: $00
    nop                                           ; $643c: $00
    ld c, l                                       ; $643d: $4d
    ld bc, $6200                                  ; $643e: $01 $00 $62
    ld c, b                                       ; $6441: $48
    nop                                           ; $6442: $00
    ld a, c                                       ; $6443: $79
    nop                                           ; $6444: $00
    daa                                           ; $6445: $27
    nop                                           ; $6446: $00
    nop                                           ; $6447: $00
    nop                                           ; $6448: $00
    inc de                                        ; $6449: $13
    nop                                           ; $644a: $00
    add d                                         ; $644b: $82
    inc d                                         ; $644c: $14
    nop                                           ; $644d: $00
    add d                                         ; $644e: $82
    dec d                                         ; $644f: $15
    nop                                           ; $6450: $00
    nop                                           ; $6451: $00
    ld d, $49                                     ; $6452: $16 $49
    nop                                           ; $6454: $00
    ld d, d                                       ; $6455: $52
    nop                                           ; $6456: $00
    nop                                           ; $6457: $00
    dec de                                        ; $6458: $1b
    ld b, $00                                     ; $6459: $06 $00
    ld e, a                                       ; $645b: $5f
    ld bc, $2700                                  ; $645c: $01 $00 $27
    nop                                           ; $645f: $00
    ld a, [bc]                                    ; $6460: $0a
    rla                                           ; $6461: $17
    ld c, c                                       ; $6462: $49
    nop                                           ; $6463: $00
    dec de                                        ; $6464: $1b
    ld [bc], a                                    ; $6465: $02
    nop                                           ; $6466: $00
    daa                                           ; $6467: $27
    nop                                           ; $6468: $00
    ld a, [bc]                                    ; $6469: $0a
    ld hl, $003f                                  ; $646a: $21 $3f $00
    daa                                           ; $646d: $27
    nop                                           ; $646e: $00
    ld b, c                                       ; $646f: $41
    dec d                                         ; $6470: $15
    ld [hl], b                                    ; $6471: $70
    nop                                           ; $6472: $00
    inc sp                                        ; $6473: $33
    dec b                                         ; $6474: $05
    dec l                                         ; $6475: $2d
    dec d                                         ; $6476: $15
    nop                                           ; $6477: $00
    nop                                           ; $6478: $00
    inc sp                                        ; $6479: $33
    dec b                                         ; $647a: $05
    ld l, $0f                                     ; $647b: $2e $0f
    dec b                                         ; $647d: $05
    ld [bc], a                                    ; $647e: $02
    dec [hl]                                      ; $647f: $35
    inc c                                         ; $6480: $0c
    nop                                           ; $6481: $00
    nop                                           ; $6482: $00
    nop                                           ; $6483: $00
    nop                                           ; $6484: $00
    add hl, bc                                    ; $6485: $09
    ld a, [$0401]                                 ; $6486: $fa $01 $04
    ld b, $00                                     ; $6489: $06 $00
    ld h, c                                       ; $648b: $61
    ld bc, $6200                                  ; $648c: $01 $00 $62
    ld c, c                                       ; $648f: $49
    nop                                           ; $6490: $00
    ld e, a                                       ; $6491: $5f
    ld bc, $2800                                  ; $6492: $01 $00 $28
    ld e, $00                                     ; $6495: $1e $00
    nop                                           ; $6497: $00
    nop                                           ; $6498: $00
    nop                                           ; $6499: $00
    inc de                                        ; $649a: $13
    nop                                           ; $649b: $00
    adc b                                         ; $649c: $88
    inc d                                         ; $649d: $14
    nop                                           ; $649e: $00
    adc d                                         ; $649f: $8a
    dec d                                         ; $64a0: $15
    nop                                           ; $64a1: $00
    nop                                           ; $64a2: $00
    ld d, $49                                     ; $64a3: $16 $49
    nop                                           ; $64a5: $00
    dec de                                        ; $64a6: $1b
    ld b, $00                                     ; $64a7: $06 $00
    jr @+$46                                      ; $64a9: $18 $44

    nop                                           ; $64ab: $00
    rla                                           ; $64ac: $17
    nop                                           ; $64ad: $00
    nop                                           ; $64ae: $00
    dec de                                        ; $64af: $1b
    ld [bc], a                                    ; $64b0: $02
    nop                                           ; $64b1: $00
    rla                                           ; $64b2: $17
    ld c, c                                       ; $64b3: $49
    nop                                           ; $64b4: $00
    ld e, a                                       ; $64b5: $5f
    ld bc, $2100                                  ; $64b6: $01 $00 $21
    ld h, d                                       ; $64b9: $62
    nop                                           ; $64ba: $00
    daa                                           ; $64bb: $27
    nop                                           ; $64bc: $00
    inc hl                                        ; $64bd: $23
    ld l, $2b                                     ; $64be: $2e $2b
    nop                                           ; $64c0: $00
    ld e, a                                       ; $64c1: $5f
    nop                                           ; $64c2: $00
    nop                                           ; $64c3: $00
    ld e, [hl]                                    ; $64c4: $5e
    nop                                           ; $64c5: $00
    nop                                           ; $64c6: $00
    rla                                           ; $64c7: $17
    nop                                           ; $64c8: $00
    nop                                           ; $64c9: $00
    ld hl, $0065                                  ; $64ca: $21 $65 $00
    rla                                           ; $64cd: $17
    ld c, c                                       ; $64ce: $49
    nop                                           ; $64cf: $00
    ld hl, $0064                                  ; $64d0: $21 $64 $00
    inc de                                        ; $64d3: $13
    ld b, $00                                     ; $64d4: $06 $00
    ld l, [hl]                                    ; $64d6: $6e
    nop                                           ; $64d7: $00
    inc c                                         ; $64d8: $0c
    ld e, a                                       ; $64d9: $5f
    ld bc, $3b00                                  ; $64da: $01 $00 $3b
    nop                                           ; $64dd: $00
    nop                                           ; $64de: $00
    daa                                           ; $64df: $27
    nop                                           ; $64e0: $00
    dec l                                         ; $64e1: $2d
    ld e, [hl]                                    ; $64e2: $5e
    ld bc, $6200                                  ; $64e3: $01 $00 $62
    ld c, a                                       ; $64e6: $4f
    nop                                           ; $64e7: $00
    ld a, c                                       ; $64e8: $79
    inc bc                                        ; $64e9: $03
    dec [hl]                                      ; $64ea: $35
    nop                                           ; $64eb: $00
    nop                                           ; $64ec: $00
    nop                                           ; $64ed: $00
    ld bc, $0000                                  ; $64ee: $01 $00 $00
    daa                                           ; $64f1: $27
    nop                                           ; $64f2: $00
    ld bc, $0000                                  ; $64f3: $01 $00 $00
    nop                                           ; $64f6: $00
    ld [bc], a                                    ; $64f7: $02
    nop                                           ; $64f8: $00
    nop                                           ; $64f9: $00
    nop                                           ; $64fa: $00
    ccf                                           ; $64fb: $3f
    ld e, a                                       ; $64fc: $5f
    nop                                           ; $64fd: $00
    nop                                           ; $64fe: $00
    add hl, bc                                    ; $64ff: $09
    nop                                           ; $6500: $00
    inc sp                                        ; $6501: $33
    dec b                                         ; $6502: $05
    ld de, $0900                                  ; $6503: $11 $00 $09
    ld [$0501], sp                                ; $6506: $08 $01 $05
    rrca                                          ; $6509: $0f
    nop                                           ; $650a: $00
    add hl, bc                                    ; $650b: $09
    ld a, [$0502]                                 ; $650c: $fa $02 $05
    dec b                                         ; $650f: $05
    nop                                           ; $6510: $00
    rrca                                          ; $6511: $0f
    ld [$0f02], sp                                ; $6512: $08 $02 $0f
    ld a, [$7900]                                 ; $6515: $fa $00 $79
    ld bc, $0029                                  ; $6518: $01 $29 $00
    nop                                           ; $651b: $00
    nop                                           ; $651c: $00
    inc de                                        ; $651d: $13
    rst $38                                       ; $651e: $ff
    add sp, $14                                   ; $651f: $e8 $14
    nop                                           ; $6521: $00
    nop                                           ; $6522: $00
    dec d                                         ; $6523: $15
    nop                                           ; $6524: $00
    nop                                           ; $6525: $00
    ld d, $39                                     ; $6526: $16 $39
    ld bc, $0052                                  ; $6528: $01 $52 $00
    nop                                           ; $652b: $00
    ld [hl+], a                                   ; $652c: $22
    nop                                           ; $652d: $00
    nop                                           ; $652e: $00
    ld e, a                                       ; $652f: $5f
    ld bc, $0000                                  ; $6530: $01 $00 $00
    nop                                           ; $6533: $00
    nop                                           ; $6534: $00
    ld e, a                                       ; $6535: $5f
    ld bc, $0000                                  ; $6536: $01 $00 $00
    nop                                           ; $6539: $00
    nop                                           ; $653a: $00
    nop                                           ; $653b: $00
    nop                                           ; $653c: $00
    nop                                           ; $653d: $00
    ld bc, $0000                                  ; $653e: $01 $00 $00
    daa                                           ; $6541: $27
    nop                                           ; $6542: $00
    ld bc, $0000                                  ; $6543: $01 $00 $00
    nop                                           ; $6546: $00
    ld bc, $0000                                  ; $6547: $01 $00 $00
    add hl, bc                                    ; $654a: $09
    nop                                           ; $654b: $00
    ld d, a                                       ; $654c: $57
    dec b                                         ; $654d: $05
    dec a                                         ; $654e: $3d
    nop                                           ; $654f: $00
    add hl, bc                                    ; $6550: $09
    db $10                                        ; $6551: $10
    ld bc, $0205                                  ; $6552: $01 $05 $02
    nop                                           ; $6555: $00
    nop                                           ; $6556: $00
    nop                                           ; $6557: $00
    nop                                           ; $6558: $00
    ld d, [hl]                                    ; $6559: $56
    nop                                           ; $655a: $00
    nop                                           ; $655b: $00
    ld e, a                                       ; $655c: $5f
    nop                                           ; $655d: $00
    nop                                           ; $655e: $00
    inc de                                        ; $655f: $13
    nop                                           ; $6560: $00
    dec [hl]                                      ; $6561: $35
    inc d                                         ; $6562: $14
    nop                                           ; $6563: $00
    dec sp                                        ; $6564: $3b
    dec d                                         ; $6565: $15
    nop                                           ; $6566: $00
    nop                                           ; $6567: $00
    ld d, $37                                     ; $6568: $16 $37
    nop                                           ; $656a: $00
    ld d, d                                       ; $656b: $52
    nop                                           ; $656c: $00
    nop                                           ; $656d: $00
    dec de                                        ; $656e: $1b
    ld b, $00                                     ; $656f: $06 $00
    inc de                                        ; $6571: $13
    nop                                           ; $6572: $00
    ld c, b                                       ; $6573: $48
    inc d                                         ; $6574: $14
    nop                                           ; $6575: $00
    ld b, a                                       ; $6576: $47
    dec d                                         ; $6577: $15
    nop                                           ; $6578: $00
    nop                                           ; $6579: $00
    ld d, $38                                     ; $657a: $16 $38
    nop                                           ; $657c: $00
    ld d, d                                       ; $657d: $52
    nop                                           ; $657e: $00
    nop                                           ; $657f: $00
    dec de                                        ; $6580: $1b
    ld [bc], a                                    ; $6581: $02
    nop                                           ; $6582: $00
    inc de                                        ; $6583: $13
    nop                                           ; $6584: $00
    scf                                           ; $6585: $37
    inc d                                         ; $6586: $14
    nop                                           ; $6587: $00
    ld d, b                                       ; $6588: $50
    dec d                                         ; $6589: $15
    nop                                           ; $658a: $00
    nop                                           ; $658b: $00
    ld d, $39                                     ; $658c: $16 $39
    nop                                           ; $658e: $00
    ld d, d                                       ; $658f: $52
    nop                                           ; $6590: $00
    nop                                           ; $6591: $00
    dec de                                        ; $6592: $1b
    ld b, $00                                     ; $6593: $06 $00
    ld e, a                                       ; $6595: $5f
    ld bc, $1300                                  ; $6596: $01 $00 $13
    nop                                           ; $6599: $00
    ld c, b                                       ; $659a: $48
    dec d                                         ; $659b: $15
    ld [bc], a                                    ; $659c: $02
    nop                                           ; $659d: $00
    ld [hl], e                                    ; $659e: $73
    nop                                           ; $659f: $00
    ld a, b                                       ; $65a0: $78
    dec d                                         ; $65a1: $15
    inc l                                         ; $65a2: $2c
    nop                                           ; $65a3: $00
    inc sp                                        ; $65a4: $33
    inc bc                                        ; $65a5: $03
    ldh a, [rNR22]                                ; $65a6: $f0 $17
    scf                                           ; $65a8: $37
    nop                                           ; $65a9: $00
    dec de                                        ; $65aa: $1b
    ld [bc], a                                    ; $65ab: $02
    nop                                           ; $65ac: $00
    rla                                           ; $65ad: $17
    add hl, sp                                    ; $65ae: $39
    nop                                           ; $65af: $00
    dec de                                        ; $65b0: $1b
    ld [bc], a                                    ; $65b1: $02
    nop                                           ; $65b2: $00
    dec d                                         ; $65b3: $15
    add hl, de                                    ; $65b4: $19
    nop                                           ; $65b5: $00
    inc sp                                        ; $65b6: $33
    inc bc                                        ; $65b7: $03
    pop af                                        ; $65b8: $f1
    dec d                                         ; $65b9: $15
    dec d                                         ; $65ba: $15
    nop                                           ; $65bb: $00
    inc sp                                        ; $65bc: $33
    inc bc                                        ; $65bd: $03
    ld a, [c]                                     ; $65be: $f2
    dec d                                         ; $65bf: $15
    nop                                           ; $65c0: $00
    nop                                           ; $65c1: $00
    inc sp                                        ; $65c2: $33
    inc bc                                        ; $65c3: $03
    di                                            ; $65c4: $f3
    inc de                                        ; $65c5: $13
    nop                                           ; $65c6: $00
    ld c, b                                       ; $65c7: $48
    dec d                                         ; $65c8: $15
    ld [bc], a                                    ; $65c9: $02
    nop                                           ; $65ca: $00
    ld [hl], e                                    ; $65cb: $73
    nop                                           ; $65cc: $00
    daa                                           ; $65cd: $27
    rla                                           ; $65ce: $17
    nop                                           ; $65cf: $00
    nop                                           ; $65d0: $00
    ld e, c                                       ; $65d1: $59
    nop                                           ; $65d2: $00
    nop                                           ; $65d3: $00
    ld e, [hl]                                    ; $65d4: $5e
    ld bc, $1700                                  ; $65d5: $01 $00 $17
    scf                                           ; $65d8: $37
    nop                                           ; $65d9: $00
    ld [hl+], a                                   ; $65da: $22
    nop                                           ; $65db: $00
    nop                                           ; $65dc: $00
    rla                                           ; $65dd: $17
    jr c, jr_00a_65e0                             ; $65de: $38 $00

jr_00a_65e0:
    ld [hl+], a                                   ; $65e0: $22
    scf                                           ; $65e1: $37
    nop                                           ; $65e2: $00
    rla                                           ; $65e3: $17
    add hl, sp                                    ; $65e4: $39
    nop                                           ; $65e5: $00
    ld [hl+], a                                   ; $65e6: $22
    jr c, jr_00a_65e9                             ; $65e7: $38 $00

jr_00a_65e9:
    rla                                           ; $65e9: $17
    nop                                           ; $65ea: $00
    nop                                           ; $65eb: $00
    dec d                                         ; $65ec: $15
    ld b, $00                                     ; $65ed: $06 $00
    ld a, [de]                                    ; $65ef: $1a
    nop                                           ; $65f0: $00
    inc d                                         ; $65f1: $14
    rrca                                          ; $65f2: $0f
    db $10                                        ; $65f3: $10
    ld bc, $2762                                  ; $65f4: $01 $62 $27
    nop                                           ; $65f7: $00
    ld c, l                                       ; $65f8: $4d
    ld bc, $5700                                  ; $65f9: $01 $00 $57
    nop                                           ; $65fc: $00
    nop                                           ; $65fd: $00
    ld a, c                                       ; $65fe: $79
    nop                                           ; $65ff: $00
    daa                                           ; $6600: $27
    nop                                           ; $6601: $00
    nop                                           ; $6602: $00
    nop                                           ; $6603: $00
    add hl, bc                                    ; $6604: $09
    nop                                           ; $6605: $00
    ld c, b                                       ; $6606: $48
    dec b                                         ; $6607: $05
    dec hl                                        ; $6608: $2b
    nop                                           ; $6609: $00
    ld e, a                                       ; $660a: $5f
    nop                                           ; $660b: $00
    nop                                           ; $660c: $00
    ld d, [hl]                                    ; $660d: $56
    nop                                           ; $660e: $00
    nop                                           ; $660f: $00
    inc de                                        ; $6610: $13
    nop                                           ; $6611: $00
    dec [hl]                                      ; $6612: $35
    inc d                                         ; $6613: $14
    nop                                           ; $6614: $00
    dec sp                                        ; $6615: $3b
    dec d                                         ; $6616: $15
    nop                                           ; $6617: $00
    nop                                           ; $6618: $00
    ld d, $68                                     ; $6619: $16 $68
    nop                                           ; $661b: $00
    ld d, d                                       ; $661c: $52
    nop                                           ; $661d: $00
    nop                                           ; $661e: $00
    dec de                                        ; $661f: $1b
    ld [bc], a                                    ; $6620: $02
    nop                                           ; $6621: $00
    inc de                                        ; $6622: $13
    nop                                           ; $6623: $00
    scf                                           ; $6624: $37
    inc d                                         ; $6625: $14
    nop                                           ; $6626: $00
    ld d, b                                       ; $6627: $50
    dec d                                         ; $6628: $15
    nop                                           ; $6629: $00
    nop                                           ; $662a: $00
    ld d, $69                                     ; $662b: $16 $69
    nop                                           ; $662d: $00
    ld d, d                                       ; $662e: $52
    nop                                           ; $662f: $00
    nop                                           ; $6630: $00
    dec de                                        ; $6631: $1b
    ld [bc], a                                    ; $6632: $02
    nop                                           ; $6633: $00
    ld e, a                                       ; $6634: $5f
    ld bc, $1700                                  ; $6635: $01 $00 $17
    ld l, b                                       ; $6638: $68
    nop                                           ; $6639: $00
    ld [hl+], a                                   ; $663a: $22
    nop                                           ; $663b: $00
    nop                                           ; $663c: $00
    rla                                           ; $663d: $17
    ld l, c                                       ; $663e: $69
    nop                                           ; $663f: $00
    ld [hl+], a                                   ; $6640: $22
    ld l, b                                       ; $6641: $68
    nop                                           ; $6642: $00
    rla                                           ; $6643: $17
    nop                                           ; $6644: $00
    nop                                           ; $6645: $00
    inc de                                        ; $6646: $13
    nop                                           ; $6647: $00
    ld b, [hl]                                    ; $6648: $46
    ld [hl], c                                    ; $6649: $71
    nop                                           ; $664a: $00
    ld l, b                                       ; $664b: $68
    dec de                                        ; $664c: $1b
    ld [bc], a                                    ; $664d: $02
    nop                                           ; $664e: $00
    dec d                                         ; $664f: $15
    nop                                           ; $6650: $00
    nop                                           ; $6651: $00
    inc sp                                        ; $6652: $33
    inc b                                         ; $6653: $04
    rst $08                                       ; $6654: $cf
    dec d                                         ; $6655: $15
    add hl, de                                    ; $6656: $19
    nop                                           ; $6657: $00
    inc sp                                        ; $6658: $33
    inc b                                         ; $6659: $04
    ret nc                                        ; $665a: $d0

    cpl                                           ; $665b: $2f
    ld de, $2700                                  ; $665c: $11 $00 $27
    nop                                           ; $665f: $00
    ld e, $55                                     ; $6660: $1e $55
    inc d                                         ; $6662: $14
    nop                                           ; $6663: $00
    daa                                           ; $6664: $27
    nop                                           ; $6665: $00
    inc d                                         ; $6666: $14
    dec d                                         ; $6667: $15
    add hl, de                                    ; $6668: $19
    nop                                           ; $6669: $00
    inc sp                                        ; $666a: $33
    inc b                                         ; $666b: $04
    jp nc, Jump_00a_4962                          ; $666c: $d2 $62 $49

    nop                                           ; $666f: $00
    dec d                                         ; $6670: $15
    ld [bc], a                                    ; $6671: $02
    nop                                           ; $6672: $00
    add hl, de                                    ; $6673: $19
    nop                                           ; $6674: $00
    ld e, $0f                                     ; $6675: $1e $0f
    ld a, [$0f00]                                 ; $6677: $fa $00 $0f
    rst $38                                       ; $667a: $ff
    nop                                           ; $667b: $00
    ld c, l                                       ; $667c: $4d
    nop                                           ; $667d: $00
    nop                                           ; $667e: $00
    ld d, a                                       ; $667f: $57
    nop                                           ; $6680: $00
    nop                                           ; $6681: $00
    jr z, jr_00a_66a2                             ; $6682: $28 $1e

    nop                                           ; $6684: $00
    nop                                           ; $6685: $00
    nop                                           ; $6686: $00
    nop                                           ; $6687: $00
    nop                                           ; $6688: $00
    nop                                           ; $6689: $00
    nop                                           ; $668a: $00
    add hl, bc                                    ; $668b: $09
    nop                                           ; $668c: $00
    nop                                           ; $668d: $00
    ld bc, $0108                                  ; $668e: $01 $08 $01
    ld a, l                                       ; $6691: $7d
    ld [bc], a                                    ; $6692: $02
    db $eb                                        ; $6693: $eb
    inc b                                         ; $6694: $04
    ld [hl-], a                                   ; $6695: $32
    inc b                                         ; $6696: $04
    ld e, h                                       ; $6697: $5c
    inc b                                         ; $6698: $04
    add [hl]                                      ; $6699: $86
    inc b                                         ; $669a: $04
    or b                                          ; $669b: $b0
    inc b                                         ; $669c: $04
    jp c, Jump_000_0009                           ; $669d: $da $09 $00

    inc c                                         ; $66a0: $0c
    dec b                                         ; $66a1: $05

jr_00a_66a2:
    inc b                                         ; $66a2: $04
    nop                                           ; $66a3: $00
    dec d                                         ; $66a4: $15
    dec d                                         ; $66a5: $15
    nop                                           ; $66a6: $00
    inc sp                                        ; $66a7: $33
    ld [bc], a                                    ; $66a8: $02
    call RST_00                                   ; $66a9: $cd $00 $00
    nop                                           ; $66ac: $00
    add hl, bc                                    ; $66ad: $09
    nop                                           ; $66ae: $00
    ld d, e                                       ; $66af: $53
    dec b                                         ; $66b0: $05
    ld d, c                                       ; $66b1: $51
    nop                                           ; $66b2: $00
    add hl, bc                                    ; $66b3: $09
    daa                                           ; $66b4: $27
    ld bc, $0205                                  ; $66b5: $01 $05 $02
    nop                                           ; $66b8: $00
    nop                                           ; $66b9: $00
    nop                                           ; $66ba: $00
    nop                                           ; $66bb: $00
    ld d, [hl]                                    ; $66bc: $56
    nop                                           ; $66bd: $00
    nop                                           ; $66be: $00
    dec d                                         ; $66bf: $15
    nop                                           ; $66c0: $00
    nop                                           ; $66c1: $00
    inc sp                                        ; $66c2: $33
    ld [bc], a                                    ; $66c3: $02
    cp l                                          ; $66c4: $bd
    dec d                                         ; $66c5: $15
    dec d                                         ; $66c6: $15
    nop                                           ; $66c7: $00
    inc sp                                        ; $66c8: $33
    ld [bc], a                                    ; $66c9: $02
    cp [hl]                                       ; $66ca: $be
    dec d                                         ; $66cb: $15
    nop                                           ; $66cc: $00
    nop                                           ; $66cd: $00
    inc sp                                        ; $66ce: $33
    ld [bc], a                                    ; $66cf: $02
    cp a                                          ; $66d0: $bf
    dec d                                         ; $66d1: $15
    add hl, de                                    ; $66d2: $19
    nop                                           ; $66d3: $00
    inc sp                                        ; $66d4: $33
    ld [bc], a                                    ; $66d5: $02
    ret nz                                        ; $66d6: $c0

    inc de                                        ; $66d7: $13
    nop                                           ; $66d8: $00
    ld l, c                                       ; $66d9: $69
    dec d                                         ; $66da: $15
    ld bc, $7300                                  ; $66db: $01 $00 $73
    nop                                           ; $66de: $00
    ld l, a                                       ; $66df: $6f
    dec d                                         ; $66e0: $15
    ld e, d                                       ; $66e1: $5a
    nop                                           ; $66e2: $00
    inc sp                                        ; $66e3: $33
    ld [bc], a                                    ; $66e4: $02
    pop bc                                        ; $66e5: $c1
    rla                                           ; $66e6: $17
    nop                                           ; $66e7: $00
    nop                                           ; $66e8: $00
    ld e, d                                       ; $66e9: $5a
    nop                                           ; $66ea: $00
    nop                                           ; $66eb: $00
    inc de                                        ; $66ec: $13
    nop                                           ; $66ed: $00
    ld d, h                                       ; $66ee: $54
    ld [hl], c                                    ; $66ef: $71
    nop                                           ; $66f0: $00
    adc e                                         ; $66f1: $8b
    inc de                                        ; $66f2: $13
    nop                                           ; $66f3: $00
    ld e, d                                       ; $66f4: $5a
    ld [hl], c                                    ; $66f5: $71
    nop                                           ; $66f6: $00
    adc e                                         ; $66f7: $8b
    inc de                                        ; $66f8: $13
    nop                                           ; $66f9: $00
    ld h, b                                       ; $66fa: $60
    ld e, b                                       ; $66fb: $58
    nop                                           ; $66fc: $00
    sub a                                         ; $66fd: $97
    ld hl, $002d                                  ; $66fe: $21 $2d $00
    dec d                                         ; $6701: $15
    nop                                           ; $6702: $00
    nop                                           ; $6703: $00
    inc sp                                        ; $6704: $33
    ld [bc], a                                    ; $6705: $02
    jp nz, Jump_00a_5a15                          ; $6706: $c2 $15 $5a

    nop                                           ; $6709: $00
    inc sp                                        ; $670a: $33
    ld [bc], a                                    ; $670b: $02
    jp $005f                                      ; $670c: $c3 $5f $00


    nop                                           ; $670f: $00
    inc de                                        ; $6710: $13
    nop                                           ; $6711: $00
    xor [hl]                                      ; $6712: $ae
    inc d                                         ; $6713: $14
    nop                                           ; $6714: $00
    ld a, l                                       ; $6715: $7d
    dec d                                         ; $6716: $15
    dec [hl]                                      ; $6717: $35
    nop                                           ; $6718: $00
    ld d, $08                                     ; $6719: $16 $08
    nop                                           ; $671b: $00
    halt                                          ; $671c: $76
    ld [$6428], sp                                ; $671d: $08 $28 $64
    nop                                           ; $6720: $00
    nop                                           ; $6721: $00
    ld e, a                                       ; $6722: $5f
    ld bc, $1500                                  ; $6723: $01 $00 $15
    add hl, de                                    ; $6726: $19
    nop                                           ; $6727: $00
    inc sp                                        ; $6728: $33
    ld [bc], a                                    ; $6729: $02
    call nz, Call_000_1515                        ; $672a: $c4 $15 $15
    nop                                           ; $672d: $00
    inc sp                                        ; $672e: $33
    ld [bc], a                                    ; $672f: $02
    push bc                                       ; $6730: $c5
    dec d                                         ; $6731: $15
    nop                                           ; $6732: $00
    nop                                           ; $6733: $00
    inc sp                                        ; $6734: $33
    ld [bc], a                                    ; $6735: $02
    add $5f                                       ; $6736: $c6 $5f
    nop                                           ; $6738: $00
    nop                                           ; $6739: $00
    ld h, l                                       ; $673a: $65
    nop                                           ; $673b: $00
    nop                                           ; $673c: $00
    halt                                          ; $673d: $76
    ld [$1e35], sp                                ; $673e: $08 $35 $1e
    add hl, de                                    ; $6741: $19
    nop                                           ; $6742: $00
    ld e, a                                       ; $6743: $5f
    ld bc, $1500                                  ; $6744: $01 $00 $15
    ld e, d                                       ; $6747: $5a
    nop                                           ; $6748: $00
    inc sp                                        ; $6749: $33
    ld [bc], a                                    ; $674a: $02
    rst $00                                       ; $674b: $c7
    jr c, jr_00a_67b7                             ; $674c: $38 $69

    nop                                           ; $674e: $00
    ld a, a                                       ; $674f: $7f
    add hl, bc                                    ; $6750: $09
    ret c                                         ; $6751: $d8

    jr c, jr_00a_6779                             ; $6752: $38 $25

    nop                                           ; $6754: $00
    dec d                                         ; $6755: $15
    ld e, d                                       ; $6756: $5a
    nop                                           ; $6757: $00
    inc sp                                        ; $6758: $33
    ld [bc], a                                    ; $6759: $02
    ret z                                         ; $675a: $c8

    rla                                           ; $675b: $17
    add hl, bc                                    ; $675c: $09
    nop                                           ; $675d: $00
    inc de                                        ; $675e: $13
    nop                                           ; $675f: $00
    ld h, b                                       ; $6760: $60
    ld [hl], c                                    ; $6761: $71
    nop                                           ; $6762: $00
    sub a                                         ; $6763: $97
    ld e, h                                       ; $6764: $5c
    nop                                           ; $6765: $00
    nop                                           ; $6766: $00
    ld e, $09                                     ; $6767: $1e $09
    nop                                           ; $6769: $00
    rla                                           ; $676a: $17
    nop                                           ; $676b: $00
    nop                                           ; $676c: $00
    ld e, e                                       ; $676d: $5b
    nop                                           ; $676e: $00
    nop                                           ; $676f: $00
    ld e, c                                       ; $6770: $59
    nop                                           ; $6771: $00
    nop                                           ; $6772: $00
    ld e, l                                       ; $6773: $5d
    nop                                           ; $6774: $00
    nop                                           ; $6775: $00
    dec d                                         ; $6776: $15
    add hl, de                                    ; $6777: $19
    nop                                           ; $6778: $00

jr_00a_6779:
    inc sp                                        ; $6779: $33
    ld [bc], a                                    ; $677a: $02
    ret                                           ; $677b: $c9


    dec d                                         ; $677c: $15
    nop                                           ; $677d: $00
    nop                                           ; $677e: $00
    inc sp                                        ; $677f: $33
    ld [bc], a                                    ; $6780: $02
    jp z, Jump_000_1515                           ; $6781: $ca $15 $15

    nop                                           ; $6784: $00
    inc sp                                        ; $6785: $33
    ld [bc], a                                    ; $6786: $02
    rl l                                          ; $6787: $cb $15
    add hl, de                                    ; $6789: $19
    nop                                           ; $678a: $00
    inc sp                                        ; $678b: $33
    ld [bc], a                                    ; $678c: $02
    call z, $0017                                 ; $678d: $cc $17 $00
    nop                                           ; $6790: $00
    inc de                                        ; $6791: $13
    nop                                           ; $6792: $00
    ld e, d                                       ; $6793: $5a
    ld e, b                                       ; $6794: $58
    nop                                           ; $6795: $00
    adc e                                         ; $6796: $8b
    dec de                                        ; $6797: $1b
    nop                                           ; $6798: $00
    nop                                           ; $6799: $00
    ld d, a                                       ; $679a: $57
    nop                                           ; $679b: $00
    nop                                           ; $679c: $00
    ld h, d                                       ; $679d: $62
    inc c                                         ; $679e: $0c
    nop                                           ; $679f: $00
    nop                                           ; $67a0: $00
    nop                                           ; $67a1: $00
    nop                                           ; $67a2: $00
    nop                                           ; $67a3: $00
    nop                                           ; $67a4: $00
    nop                                           ; $67a5: $00
    add hl, bc                                    ; $67a6: $09
    nop                                           ; $67a7: $00
    inc c                                         ; $67a8: $0c
    dec b                                         ; $67a9: $05
    ld [de], a                                    ; $67aa: $12
    nop                                           ; $67ab: $00
    add hl, bc                                    ; $67ac: $09
    ld [bc], a                                    ; $67ad: $02
    nop                                           ; $67ae: $00
    dec b                                         ; $67af: $05
    rrca                                          ; $67b0: $0f
    nop                                           ; $67b1: $00
    dec d                                         ; $67b2: $15
    ld e, d                                       ; $67b3: $5a
    nop                                           ; $67b4: $00
    inc sp                                        ; $67b5: $33
    ld [bc], a                                    ; $67b6: $02

jr_00a_67b7:
    adc $0f                                       ; $67b7: $ce $0f
    ld [bc], a                                    ; $67b9: $02
    ld bc, $0000                                  ; $67ba: $01 $00 $00
    nop                                           ; $67bd: $00
    add hl, bc                                    ; $67be: $09
    ld [bc], a                                    ; $67bf: $02
    ld bc, $0605                                  ; $67c0: $01 $05 $06
    nop                                           ; $67c3: $00
    dec d                                         ; $67c4: $15
    ld e, d                                       ; $67c5: $5a
    nop                                           ; $67c6: $00
    inc sp                                        ; $67c7: $33
    ld [bc], a                                    ; $67c8: $02
    rst $08                                       ; $67c9: $cf
    rrca                                          ; $67ca: $0f
    ld [bc], a                                    ; $67cb: $02
    ld [bc], a                                    ; $67cc: $02
    nop                                           ; $67cd: $00
    nop                                           ; $67ce: $00
    nop                                           ; $67cf: $00
    inc bc                                        ; $67d0: $03
    inc b                                         ; $67d1: $04
    nop                                           ; $67d2: $00
    dec d                                         ; $67d3: $15
    ld e, d                                       ; $67d4: $5a
    nop                                           ; $67d5: $00
    inc sp                                        ; $67d6: $33
    ld [bc], a                                    ; $67d7: $02
    ret nc                                        ; $67d8: $d0

    rrca                                          ; $67d9: $0f
    ld [bc], a                                    ; $67da: $02
    nop                                           ; $67db: $00
    nop                                           ; $67dc: $00
    nop                                           ; $67dd: $00
    nop                                           ; $67de: $00
    add hl, bc                                    ; $67df: $09
    nop                                           ; $67e0: $00
    dec c                                         ; $67e1: $0d
    dec b                                         ; $67e2: $05
    ld [de], a                                    ; $67e3: $12
    nop                                           ; $67e4: $00
    add hl, bc                                    ; $67e5: $09
    ld [bc], a                                    ; $67e6: $02
    nop                                           ; $67e7: $00
    dec b                                         ; $67e8: $05
    rrca                                          ; $67e9: $0f
    nop                                           ; $67ea: $00
    dec d                                         ; $67eb: $15
    ld e, d                                       ; $67ec: $5a
    nop                                           ; $67ed: $00
    inc sp                                        ; $67ee: $33
    ld [bc], a                                    ; $67ef: $02
    adc $0f                                       ; $67f0: $ce $0f
    ld [bc], a                                    ; $67f2: $02
    ld bc, $0000                                  ; $67f3: $01 $00 $00
    nop                                           ; $67f6: $00
    add hl, bc                                    ; $67f7: $09
    ld [bc], a                                    ; $67f8: $02
    ld bc, $0605                                  ; $67f9: $01 $05 $06
    nop                                           ; $67fc: $00
    dec d                                         ; $67fd: $15
    ld e, d                                       ; $67fe: $5a
    nop                                           ; $67ff: $00
    inc sp                                        ; $6800: $33
    ld [bc], a                                    ; $6801: $02
    rst $08                                       ; $6802: $cf
    rrca                                          ; $6803: $0f
    ld [bc], a                                    ; $6804: $02
    ld [bc], a                                    ; $6805: $02
    nop                                           ; $6806: $00
    nop                                           ; $6807: $00
    nop                                           ; $6808: $00
    inc bc                                        ; $6809: $03
    inc b                                         ; $680a: $04
    nop                                           ; $680b: $00
    dec d                                         ; $680c: $15
    ld e, d                                       ; $680d: $5a
    nop                                           ; $680e: $00
    inc sp                                        ; $680f: $33
    ld [bc], a                                    ; $6810: $02
    ret nc                                        ; $6811: $d0

    rrca                                          ; $6812: $0f
    ld [bc], a                                    ; $6813: $02
    nop                                           ; $6814: $00
    nop                                           ; $6815: $00
    nop                                           ; $6816: $00
    nop                                           ; $6817: $00
    nop                                           ; $6818: $00
    nop                                           ; $6819: $00
    nop                                           ; $681a: $00
    ld e, a                                       ; $681b: $5f
    nop                                           ; $681c: $00
    nop                                           ; $681d: $00
    add hl, bc                                    ; $681e: $09
    nop                                           ; $681f: $00
    ld d, e                                       ; $6820: $53
    dec b                                         ; $6821: $05
    inc c                                         ; $6822: $0c
    nop                                           ; $6823: $00
    add hl, bc                                    ; $6824: $09
    daa                                           ; $6825: $27
    ld bc, $0205                                  ; $6826: $01 $05 $02
    nop                                           ; $6829: $00
    nop                                           ; $682a: $00
    nop                                           ; $682b: $00
    nop                                           ; $682c: $00
    ld d, [hl]                                    ; $682d: $56
    nop                                           ; $682e: $00
    nop                                           ; $682f: $00
    rla                                           ; $6830: $17
    nop                                           ; $6831: $00
    nop                                           ; $6832: $00
    inc e                                         ; $6833: $1c
    ld c, h                                       ; $6834: $4c
    nop                                           ; $6835: $00
    ld e, a                                       ; $6836: $5f
    ld bc, $1500                                  ; $6837: $01 $00 $15
    ld e, d                                       ; $683a: $5a
    nop                                           ; $683b: $00
    inc sp                                        ; $683c: $33
    ld [bc], a                                    ; $683d: $02
    pop bc                                        ; $683e: $c1
    ld d, a                                       ; $683f: $57
    nop                                           ; $6840: $00
    nop                                           ; $6841: $00
    nop                                           ; $6842: $00
    nop                                           ; $6843: $00
    nop                                           ; $6844: $00
    add hl, bc                                    ; $6845: $09
    nop                                           ; $6846: $00
    inc c                                         ; $6847: $0c
    dec b                                         ; $6848: $05
    inc de                                        ; $6849: $13
    nop                                           ; $684a: $00
    add hl, bc                                    ; $684b: $09
    ld [bc], a                                    ; $684c: $02
    nop                                           ; $684d: $00
    dec b                                         ; $684e: $05
    dec b                                         ; $684f: $05
    nop                                           ; $6850: $00
    dec d                                         ; $6851: $15
    ld e, d                                       ; $6852: $5a
    nop                                           ; $6853: $00
    inc sp                                        ; $6854: $33
    ld [bc], a                                    ; $6855: $02
    adc $0f                                       ; $6856: $ce $0f
    ld [bc], a                                    ; $6858: $02
    ld bc, $0000                                  ; $6859: $01 $00 $00
    nop                                           ; $685c: $00
    add hl, bc                                    ; $685d: $09
    ld [bc], a                                    ; $685e: $02
    ld bc, $0605                                  ; $685f: $01 $05 $06
    nop                                           ; $6862: $00
    dec d                                         ; $6863: $15
    ld e, d                                       ; $6864: $5a
    nop                                           ; $6865: $00
    inc sp                                        ; $6866: $33
    ld [bc], a                                    ; $6867: $02
    rst $08                                       ; $6868: $cf
    rrca                                          ; $6869: $0f
    ld [bc], a                                    ; $686a: $02
    ld [bc], a                                    ; $686b: $02
    nop                                           ; $686c: $00
    nop                                           ; $686d: $00
    nop                                           ; $686e: $00
    inc bc                                        ; $686f: $03
    dec b                                         ; $6870: $05
    nop                                           ; $6871: $00
    dec d                                         ; $6872: $15
    ld e, d                                       ; $6873: $5a
    nop                                           ; $6874: $00
    inc sp                                        ; $6875: $33
    ld [bc], a                                    ; $6876: $02
    ret nc                                        ; $6877: $d0

    rrca                                          ; $6878: $0f
    ld [bc], a                                    ; $6879: $02
    nop                                           ; $687a: $00
    nop                                           ; $687b: $00
    nop                                           ; $687c: $00
    nop                                           ; $687d: $00
    nop                                           ; $687e: $00
    nop                                           ; $687f: $00
    nop                                           ; $6880: $00
    add hl, bc                                    ; $6881: $09
    nop                                           ; $6882: $00
    dec c                                         ; $6883: $0d
    dec b                                         ; $6884: $05
    inc a                                         ; $6885: $3c
    nop                                           ; $6886: $00
    ld d, [hl]                                    ; $6887: $56
    nop                                           ; $6888: $00
    nop                                           ; $6889: $00
    rla                                           ; $688a: $17
    nop                                           ; $688b: $00
    nop                                           ; $688c: $00
    inc e                                         ; $688d: $1c
    ld c, h                                       ; $688e: $4c
    nop                                           ; $688f: $00
    ld e, a                                       ; $6890: $5f
    ld bc, $6900                                  ; $6891: $01 $00 $69
    ld b, l                                       ; $6894: $45
    nop                                           ; $6895: $00
    add hl, bc                                    ; $6896: $09
    cp $00                                        ; $6897: $fe $00
    dec b                                         ; $6899: $05
    ld [bc], a                                    ; $689a: $02
    nop                                           ; $689b: $00
    inc bc                                        ; $689c: $03
    rra                                           ; $689d: $1f
    nop                                           ; $689e: $00
    ld l, c                                       ; $689f: $69
    ld b, h                                       ; $68a0: $44
    nop                                           ; $68a1: $00
    add hl, bc                                    ; $68a2: $09
    cp $00                                        ; $68a3: $fe $00
    dec b                                         ; $68a5: $05
    ld [bc], a                                    ; $68a6: $02
    nop                                           ; $68a7: $00
    inc bc                                        ; $68a8: $03
    dec de                                        ; $68a9: $1b
    nop                                           ; $68aa: $00
    ld l, c                                       ; $68ab: $69
    ld b, [hl]                                    ; $68ac: $46
    nop                                           ; $68ad: $00
    add hl, bc                                    ; $68ae: $09
    cp $00                                        ; $68af: $fe $00
    dec b                                         ; $68b1: $05
    ld [bc], a                                    ; $68b2: $02
    nop                                           ; $68b3: $00
    inc bc                                        ; $68b4: $03
    rla                                           ; $68b5: $17
    nop                                           ; $68b6: $00
    ld l, c                                       ; $68b7: $69
    ld d, c                                       ; $68b8: $51
    nop                                           ; $68b9: $00
    add hl, bc                                    ; $68ba: $09
    cp $00                                        ; $68bb: $fe $00
    dec b                                         ; $68bd: $05
    ld [bc], a                                    ; $68be: $02
    nop                                           ; $68bf: $00
    inc bc                                        ; $68c0: $03
    inc de                                        ; $68c1: $13
    nop                                           ; $68c2: $00
    ld l, c                                       ; $68c3: $69
    ld b, a                                       ; $68c4: $47
    nop                                           ; $68c5: $00
    add hl, bc                                    ; $68c6: $09
    cp $00                                        ; $68c7: $fe $00
    dec b                                         ; $68c9: $05
    ld [bc], a                                    ; $68ca: $02
    nop                                           ; $68cb: $00
    inc bc                                        ; $68cc: $03
    rrca                                          ; $68cd: $0f
    nop                                           ; $68ce: $00
    ld l, c                                       ; $68cf: $69
    ld b, d                                       ; $68d0: $42
    nop                                           ; $68d1: $00
    add hl, bc                                    ; $68d2: $09
    cp $00                                        ; $68d3: $fe $00
    dec b                                         ; $68d5: $05
    ld [bc], a                                    ; $68d6: $02
    nop                                           ; $68d7: $00
    inc bc                                        ; $68d8: $03
    dec bc                                        ; $68d9: $0b
    nop                                           ; $68da: $00
    add hl, sp                                    ; $68db: $39
    dec h                                         ; $68dc: $25
    ld bc, $5a15                                  ; $68dd: $01 $15 $5a
    nop                                           ; $68e0: $00
    inc sp                                        ; $68e1: $33
    ld [bc], a                                    ; $68e2: $02
    db $ec                                        ; $68e3: $ec
    dec d                                         ; $68e4: $15
    nop                                           ; $68e5: $00
    nop                                           ; $68e6: $00
    inc sp                                        ; $68e7: $33
    ld [bc], a                                    ; $68e8: $02
    db $ed                                        ; $68e9: $ed
    dec d                                         ; $68ea: $15
    ld e, d                                       ; $68eb: $5a
    nop                                           ; $68ec: $00
    inc sp                                        ; $68ed: $33
    ld [bc], a                                    ; $68ee: $02
    xor $62                                       ; $68ef: $ee $62
    ld d, [hl]                                    ; $68f1: $56
    nop                                           ; $68f2: $00
    ld d, a                                       ; $68f3: $57
    nop                                           ; $68f4: $00
    nop                                           ; $68f5: $00
    nop                                           ; $68f6: $00
    nop                                           ; $68f7: $00
    nop                                           ; $68f8: $00
    add hl, bc                                    ; $68f9: $09
    inc bc                                        ; $68fa: $03
    nop                                           ; $68fb: $00
    dec b                                         ; $68fc: $05
    ld b, $00                                     ; $68fd: $06 $00
    dec d                                         ; $68ff: $15
    ld e, d                                       ; $6900: $5a
    nop                                           ; $6901: $00
    inc sp                                        ; $6902: $33
    ld [bc], a                                    ; $6903: $02
    jp hl                                         ; $6904: $e9


    rrca                                          ; $6905: $0f
    inc bc                                        ; $6906: $03
    ld bc, $0057                                  ; $6907: $01 $57 $00
    nop                                           ; $690a: $00
    nop                                           ; $690b: $00
    nop                                           ; $690c: $00
    nop                                           ; $690d: $00
    add hl, bc                                    ; $690e: $09
    inc bc                                        ; $690f: $03
    ld bc, $0705                                  ; $6910: $01 $05 $07
    nop                                           ; $6913: $00
    dec d                                         ; $6914: $15
    ld e, d                                       ; $6915: $5a
    nop                                           ; $6916: $00
    inc sp                                        ; $6917: $33
    ld [bc], a                                    ; $6918: $02
    ld [$030f], a                                 ; $6919: $ea $0f $03
    ld [bc], a                                    ; $691c: $02
    ld d, a                                       ; $691d: $57
    nop                                           ; $691e: $00
    nop                                           ; $691f: $00
    nop                                           ; $6920: $00
    nop                                           ; $6921: $00
    nop                                           ; $6922: $00
    inc bc                                        ; $6923: $03
    rlca                                          ; $6924: $07
    nop                                           ; $6925: $00
    dec d                                         ; $6926: $15
    ld e, d                                       ; $6927: $5a
    nop                                           ; $6928: $00
    inc sp                                        ; $6929: $33
    ld [bc], a                                    ; $692a: $02
    db $eb                                        ; $692b: $eb
    dec d                                         ; $692c: $15
    nop                                           ; $692d: $00
    nop                                           ; $692e: $00
    ld b, d                                       ; $692f: $42
    nop                                           ; $6930: $00
    ld bc, $0057                                  ; $6931: $01 $57 $00
    nop                                           ; $6934: $00
    nop                                           ; $6935: $00
    nop                                           ; $6936: $00
    nop                                           ; $6937: $00
    add hl, bc                                    ; $6938: $09
    nop                                           ; $6939: $00
    dec bc                                        ; $693a: $0b
    dec b                                         ; $693b: $05
    ld c, $00                                     ; $693c: $0e $00
    ld d, [hl]                                    ; $693e: $56
    nop                                           ; $693f: $00
    nop                                           ; $6940: $00
    rla                                           ; $6941: $17
    nop                                           ; $6942: $00
    nop                                           ; $6943: $00
    inc e                                         ; $6944: $1c
    ld c, h                                       ; $6945: $4c
    nop                                           ; $6946: $00
    ld e, a                                       ; $6947: $5f
    ld bc, $1500                                  ; $6948: $01 $00 $15
    nop                                           ; $694b: $00
    nop                                           ; $694c: $00
    inc sp                                        ; $694d: $33
    inc bc                                        ; $694e: $03
    ld [hl], c                                    ; $694f: $71
    dec d                                         ; $6950: $15
    ld e, d                                       ; $6951: $5a
    nop                                           ; $6952: $00
    inc sp                                        ; $6953: $33
    inc bc                                        ; $6954: $03
    adc e                                         ; $6955: $8b
    dec d                                         ; $6956: $15
    nop                                           ; $6957: $00
    nop                                           ; $6958: $00
    inc sp                                        ; $6959: $33
    inc bc                                        ; $695a: $03
    adc h                                         ; $695b: $8c
    dec d                                         ; $695c: $15
    ld e, d                                       ; $695d: $5a
    nop                                           ; $695e: $00
    inc sp                                        ; $695f: $33
    inc bc                                        ; $6960: $03
    adc l                                         ; $6961: $8d
    ld d, a                                       ; $6962: $57
    nop                                           ; $6963: $00
    nop                                           ; $6964: $00
    add hl, bc                                    ; $6965: $09
    nop                                           ; $6966: $00
    ld d, [hl]                                    ; $6967: $56
    dec b                                         ; $6968: $05
    add hl, bc                                    ; $6969: $09
    nop                                           ; $696a: $00
    ld d, [hl]                                    ; $696b: $56
    nop                                           ; $696c: $00
    nop                                           ; $696d: $00
    rla                                           ; $696e: $17
    nop                                           ; $696f: $00
    nop                                           ; $6970: $00
    inc e                                         ; $6971: $1c
    ld c, h                                       ; $6972: $4c
    nop                                           ; $6973: $00
    ld e, a                                       ; $6974: $5f
    ld bc, $1500                                  ; $6975: $01 $00 $15
    ld e, d                                       ; $6978: $5a
    nop                                           ; $6979: $00
    inc sp                                        ; $697a: $33
    add hl, bc                                    ; $697b: $09
    ldh [$57], a                                  ; $697c: $e0 $57
    nop                                           ; $697e: $00
    nop                                           ; $697f: $00
    nop                                           ; $6980: $00
    nop                                           ; $6981: $00
    nop                                           ; $6982: $00
    ld e, a                                       ; $6983: $5f
    ld bc, $0000                                  ; $6984: $01 $00 $00
    nop                                           ; $6987: $00
    nop                                           ; $6988: $00
    ld e, a                                       ; $6989: $5f
    nop                                           ; $698a: $00
    nop                                           ; $698b: $00
    add hl, bc                                    ; $698c: $09
    nop                                           ; $698d: $00
    ld d, e                                       ; $698e: $53
    dec b                                         ; $698f: $05
    ld h, $00                                     ; $6990: $26 $00
    add hl, bc                                    ; $6992: $09
    daa                                           ; $6993: $27
    ld bc, $0205                                  ; $6994: $01 $05 $02
    nop                                           ; $6997: $00
    nop                                           ; $6998: $00
    nop                                           ; $6999: $00
    nop                                           ; $699a: $00
    ld a, d                                       ; $699b: $7a
    ld bc, $1300                                  ; $699c: $01 $00 $13
    nop                                           ; $699f: $00
    xor [hl]                                      ; $69a0: $ae
    inc d                                         ; $69a1: $14
    nop                                           ; $69a2: $00
    ld a, l                                       ; $69a3: $7d
    dec d                                         ; $69a4: $15
    jr z, jr_00a_69a7                             ; $69a5: $28 $00

jr_00a_69a7:
    ld d, $08                                     ; $69a7: $16 $08
    nop                                           ; $69a9: $00
    ld d, d                                       ; $69aa: $52
    nop                                           ; $69ab: $00
    nop                                           ; $69ac: $00
    inc de                                        ; $69ad: $13
    nop                                           ; $69ae: $00
    ld a, a                                       ; $69af: $7f
    inc d                                         ; $69b0: $14
    nop                                           ; $69b1: $00
    ld e, a                                       ; $69b2: $5f
    dec d                                         ; $69b3: $15
    ld l, $00                                     ; $69b4: $2e $00
    ld d, $08                                     ; $69b6: $16 $08
    nop                                           ; $69b8: $00
    ld d, d                                       ; $69b9: $52
    nop                                           ; $69ba: $00
    nop                                           ; $69bb: $00
    inc de                                        ; $69bc: $13
    ld bc, $141f                                  ; $69bd: $01 $1f $14
    nop                                           ; $69c0: $00
    ld a, l                                       ; $69c1: $7d
    dec d                                         ; $69c2: $15
    inc l                                         ; $69c3: $2c
    nop                                           ; $69c4: $00
    ld d, $08                                     ; $69c5: $16 $08
    nop                                           ; $69c7: $00
    ld d, d                                       ; $69c8: $52
    nop                                           ; $69c9: $00
    nop                                           ; $69ca: $00
    inc de                                        ; $69cb: $13
    nop                                           ; $69cc: $00
    rst $28                                       ; $69cd: $ef
    inc d                                         ; $69ce: $14
    nop                                           ; $69cf: $00
    ld e, a                                       ; $69d0: $5f
    dec d                                         ; $69d1: $15
    ld [bc], a                                    ; $69d2: $02
    nop                                           ; $69d3: $00
    ld d, $4e                                     ; $69d4: $16 $4e
    nop                                           ; $69d6: $00
    ld d, d                                       ; $69d7: $52
    nop                                           ; $69d8: $00
    nop                                           ; $69d9: $00
    inc de                                        ; $69da: $13
    ld bc, $141f                                  ; $69db: $01 $1f $14
    nop                                           ; $69de: $00
    ld e, a                                       ; $69df: $5f
    dec d                                         ; $69e0: $15
    inc b                                         ; $69e1: $04
    nop                                           ; $69e2: $00
    ld d, $4e                                     ; $69e3: $16 $4e
    nop                                           ; $69e5: $00
    ld d, d                                       ; $69e6: $52
    nop                                           ; $69e7: $00
    nop                                           ; $69e8: $00
    inc de                                        ; $69e9: $13
    nop                                           ; $69ea: $00
    ld a, [hl-]                                   ; $69eb: $3a
    inc d                                         ; $69ec: $14
    nop                                           ; $69ed: $00
    ld [hl], h                                    ; $69ee: $74
    dec d                                         ; $69ef: $15
    nop                                           ; $69f0: $00
    nop                                           ; $69f1: $00
    ld d, $4c                                     ; $69f2: $16 $4c
    nop                                           ; $69f4: $00
    ld d, d                                       ; $69f5: $52
    nop                                           ; $69f6: $00
    nop                                           ; $69f7: $00
    dec de                                        ; $69f8: $1b
    ld [bc], a                                    ; $69f9: $02
    nop                                           ; $69fa: $00
    ld e, a                                       ; $69fb: $5f
    ld bc, $0000                                  ; $69fc: $01 $00 $00
    nop                                           ; $69ff: $00
    nop                                           ; $6a00: $00
    add hl, bc                                    ; $6a01: $09
    nop                                           ; $6a02: $00
    inc c                                         ; $6a03: $0c
    dec b                                         ; $6a04: $05
    inc hl                                        ; $6a05: $23
    nop                                           ; $6a06: $00
    ld a, d                                       ; $6a07: $7a
    ld bc, $1300                                  ; $6a08: $01 $00 $13
    nop                                           ; $6a0b: $00
    xor [hl]                                      ; $6a0c: $ae
    inc d                                         ; $6a0d: $14
    nop                                           ; $6a0e: $00
    ld a, l                                       ; $6a0f: $7d
    dec d                                         ; $6a10: $15
    jr z, jr_00a_6a13                             ; $6a11: $28 $00

jr_00a_6a13:
    ld d, $08                                     ; $6a13: $16 $08
    nop                                           ; $6a15: $00
    ld d, d                                       ; $6a16: $52
    nop                                           ; $6a17: $00
    nop                                           ; $6a18: $00
    inc de                                        ; $6a19: $13
    nop                                           ; $6a1a: $00
    ld a, a                                       ; $6a1b: $7f
    inc d                                         ; $6a1c: $14
    nop                                           ; $6a1d: $00
    ld e, a                                       ; $6a1e: $5f
    dec d                                         ; $6a1f: $15
    ld l, $00                                     ; $6a20: $2e $00
    ld d, $08                                     ; $6a22: $16 $08
    nop                                           ; $6a24: $00
    ld d, d                                       ; $6a25: $52
    nop                                           ; $6a26: $00
    nop                                           ; $6a27: $00
    inc de                                        ; $6a28: $13
    nop                                           ; $6a29: $00
    ld a, a                                       ; $6a2a: $7f
    inc d                                         ; $6a2b: $14
    nop                                           ; $6a2c: $00
    ld a, l                                       ; $6a2d: $7d
    dec d                                         ; $6a2e: $15
    inc l                                         ; $6a2f: $2c
    nop                                           ; $6a30: $00
    ld d, $08                                     ; $6a31: $16 $08
    nop                                           ; $6a33: $00
    ld d, d                                       ; $6a34: $52
    nop                                           ; $6a35: $00
    nop                                           ; $6a36: $00
    inc de                                        ; $6a37: $13
    nop                                           ; $6a38: $00
    rst $28                                       ; $6a39: $ef
    inc d                                         ; $6a3a: $14
    nop                                           ; $6a3b: $00
    ld e, a                                       ; $6a3c: $5f
    dec d                                         ; $6a3d: $15
    ld [bc], a                                    ; $6a3e: $02
    nop                                           ; $6a3f: $00
    ld d, $4e                                     ; $6a40: $16 $4e
    nop                                           ; $6a42: $00
    ld d, d                                       ; $6a43: $52
    nop                                           ; $6a44: $00
    nop                                           ; $6a45: $00
    inc de                                        ; $6a46: $13
    ld bc, $141f                                  ; $6a47: $01 $1f $14
    nop                                           ; $6a4a: $00
    ld e, a                                       ; $6a4b: $5f
    dec d                                         ; $6a4c: $15
    inc b                                         ; $6a4d: $04
    nop                                           ; $6a4e: $00
    ld d, $4e                                     ; $6a4f: $16 $4e
    nop                                           ; $6a51: $00
    ld d, d                                       ; $6a52: $52
    nop                                           ; $6a53: $00
    nop                                           ; $6a54: $00
    inc de                                        ; $6a55: $13
    nop                                           ; $6a56: $00
    ld a, [hl-]                                   ; $6a57: $3a
    inc d                                         ; $6a58: $14
    nop                                           ; $6a59: $00
    ld [hl], h                                    ; $6a5a: $74
    dec d                                         ; $6a5b: $15
    nop                                           ; $6a5c: $00
    nop                                           ; $6a5d: $00
    ld d, $4c                                     ; $6a5e: $16 $4c
    nop                                           ; $6a60: $00
    ld d, d                                       ; $6a61: $52
    nop                                           ; $6a62: $00
    nop                                           ; $6a63: $00
    dec de                                        ; $6a64: $1b
    ld [bc], a                                    ; $6a65: $02
    nop                                           ; $6a66: $00
    ld e, a                                       ; $6a67: $5f
    ld bc, $0000                                  ; $6a68: $01 $00 $00
    nop                                           ; $6a6b: $00
    nop                                           ; $6a6c: $00
    add hl, bc                                    ; $6a6d: $09
    nop                                           ; $6a6e: $00
    dec c                                         ; $6a6f: $0d
    dec b                                         ; $6a70: $05
    ld a, [bc]                                    ; $6a71: $0a
    nop                                           ; $6a72: $00
    ld a, d                                       ; $6a73: $7a
    ld bc, $1300                                  ; $6a74: $01 $00 $13
    nop                                           ; $6a77: $00
    ld a, [hl-]                                   ; $6a78: $3a
    inc d                                         ; $6a79: $14
    nop                                           ; $6a7a: $00
    ld [hl], h                                    ; $6a7b: $74
    dec d                                         ; $6a7c: $15
    nop                                           ; $6a7d: $00
    nop                                           ; $6a7e: $00
    ld d, $4c                                     ; $6a7f: $16 $4c
    nop                                           ; $6a81: $00
    ld d, d                                       ; $6a82: $52
    nop                                           ; $6a83: $00
    nop                                           ; $6a84: $00
    dec de                                        ; $6a85: $1b
    ld [bc], a                                    ; $6a86: $02
    nop                                           ; $6a87: $00
    ld e, a                                       ; $6a88: $5f
    ld bc, $0000                                  ; $6a89: $01 $00 $00
    nop                                           ; $6a8c: $00
    nop                                           ; $6a8d: $00
    add hl, bc                                    ; $6a8e: $09
    nop                                           ; $6a8f: $00
    dec bc                                        ; $6a90: $0b
    dec b                                         ; $6a91: $05
    add hl, bc                                    ; $6a92: $09
    nop                                           ; $6a93: $00
    inc de                                        ; $6a94: $13
    nop                                           ; $6a95: $00
    ld a, [hl-]                                   ; $6a96: $3a
    inc d                                         ; $6a97: $14
    nop                                           ; $6a98: $00
    ld [hl], h                                    ; $6a99: $74
    dec d                                         ; $6a9a: $15
    nop                                           ; $6a9b: $00
    nop                                           ; $6a9c: $00
    ld d, $4c                                     ; $6a9d: $16 $4c
    nop                                           ; $6a9f: $00
    ld d, d                                       ; $6aa0: $52
    nop                                           ; $6aa1: $00
    nop                                           ; $6aa2: $00
    dec de                                        ; $6aa3: $1b
    ld [bc], a                                    ; $6aa4: $02
    nop                                           ; $6aa5: $00
    ld e, a                                       ; $6aa6: $5f
    ld bc, $0000                                  ; $6aa7: $01 $00 $00
    nop                                           ; $6aaa: $00
    nop                                           ; $6aab: $00
    add hl, bc                                    ; $6aac: $09
    nop                                           ; $6aad: $00
    ld d, [hl]                                    ; $6aae: $56
    dec b                                         ; $6aaf: $05
    add hl, bc                                    ; $6ab0: $09
    nop                                           ; $6ab1: $00
    inc de                                        ; $6ab2: $13
    nop                                           ; $6ab3: $00
    ld a, [hl-]                                   ; $6ab4: $3a
    inc d                                         ; $6ab5: $14
    nop                                           ; $6ab6: $00
    ld [hl], h                                    ; $6ab7: $74
    dec d                                         ; $6ab8: $15
    nop                                           ; $6ab9: $00
    nop                                           ; $6aba: $00
    ld d, $4c                                     ; $6abb: $16 $4c
    nop                                           ; $6abd: $00
    ld d, d                                       ; $6abe: $52
    nop                                           ; $6abf: $00
    nop                                           ; $6ac0: $00
    dec de                                        ; $6ac1: $1b
    ld [bc], a                                    ; $6ac2: $02
    nop                                           ; $6ac3: $00
    ld e, a                                       ; $6ac4: $5f
    ld bc, $0000                                  ; $6ac5: $01 $00 $00
    nop                                           ; $6ac8: $00
    nop                                           ; $6ac9: $00
    ld e, a                                       ; $6aca: $5f
    ld bc, $0000                                  ; $6acb: $01 $00 $00
    nop                                           ; $6ace: $00
    nop                                           ; $6acf: $00
    add hl, bc                                    ; $6ad0: $09
    nop                                           ; $6ad1: $00
    ld d, e                                       ; $6ad2: $53
    dec b                                         ; $6ad3: $05
    rlca                                          ; $6ad4: $07
    nop                                           ; $6ad5: $00
    add hl, bc                                    ; $6ad6: $09
    daa                                           ; $6ad7: $27
    ld bc, $0205                                  ; $6ad8: $01 $05 $02
    nop                                           ; $6adb: $00
    nop                                           ; $6adc: $00
    nop                                           ; $6add: $00
    nop                                           ; $6ade: $00
    dec d                                         ; $6adf: $15
    inc l                                         ; $6ae0: $2c
    nop                                           ; $6ae1: $00
    inc sp                                        ; $6ae2: $33
    inc bc                                        ; $6ae3: $03
    cp c                                          ; $6ae4: $b9
    nop                                           ; $6ae5: $00
    nop                                           ; $6ae6: $00
    nop                                           ; $6ae7: $00
    add hl, bc                                    ; $6ae8: $09
    nop                                           ; $6ae9: $00
    inc c                                         ; $6aea: $0c
    dec b                                         ; $6aeb: $05
    inc b                                         ; $6aec: $04
    nop                                           ; $6aed: $00
    dec d                                         ; $6aee: $15
    inc l                                         ; $6aef: $2c
    nop                                           ; $6af0: $00
    inc sp                                        ; $6af1: $33
    ld [bc], a                                    ; $6af2: $02
    db $fd                                        ; $6af3: $fd
    nop                                           ; $6af4: $00
    nop                                           ; $6af5: $00
    nop                                           ; $6af6: $00
    nop                                           ; $6af7: $00
    nop                                           ; $6af8: $00
    nop                                           ; $6af9: $00
    add hl, bc                                    ; $6afa: $09
    nop                                           ; $6afb: $00
    ld d, e                                       ; $6afc: $53
    dec b                                         ; $6afd: $05
    rlca                                          ; $6afe: $07
    nop                                           ; $6aff: $00
    add hl, bc                                    ; $6b00: $09
    daa                                           ; $6b01: $27
    ld bc, $0205                                  ; $6b02: $01 $05 $02
    nop                                           ; $6b05: $00
    nop                                           ; $6b06: $00
    nop                                           ; $6b07: $00
    nop                                           ; $6b08: $00
    dec d                                         ; $6b09: $15
    ld c, a                                       ; $6b0a: $4f
    nop                                           ; $6b0b: $00
    inc sp                                        ; $6b0c: $33
    inc bc                                        ; $6b0d: $03
    cp d                                          ; $6b0e: $ba
    nop                                           ; $6b0f: $00
    nop                                           ; $6b10: $00
    nop                                           ; $6b11: $00
    add hl, bc                                    ; $6b12: $09
    nop                                           ; $6b13: $00
    inc c                                         ; $6b14: $0c
    dec b                                         ; $6b15: $05
    inc b                                         ; $6b16: $04
    nop                                           ; $6b17: $00
    dec d                                         ; $6b18: $15
    ld c, a                                       ; $6b19: $4f
    nop                                           ; $6b1a: $00
    inc sp                                        ; $6b1b: $33
    ld [bc], a                                    ; $6b1c: $02
    ld sp, hl                                     ; $6b1d: $f9
    nop                                           ; $6b1e: $00
    nop                                           ; $6b1f: $00
    nop                                           ; $6b20: $00
    nop                                           ; $6b21: $00
    nop                                           ; $6b22: $00
    nop                                           ; $6b23: $00
    add hl, bc                                    ; $6b24: $09
    nop                                           ; $6b25: $00
    ld d, e                                       ; $6b26: $53
    dec b                                         ; $6b27: $05
    rlca                                          ; $6b28: $07
    nop                                           ; $6b29: $00
    add hl, bc                                    ; $6b2a: $09
    daa                                           ; $6b2b: $27
    ld bc, $0205                                  ; $6b2c: $01 $05 $02
    nop                                           ; $6b2f: $00
    nop                                           ; $6b30: $00
    nop                                           ; $6b31: $00
    nop                                           ; $6b32: $00
    dec d                                         ; $6b33: $15
    ld d, d                                       ; $6b34: $52
    nop                                           ; $6b35: $00
    inc sp                                        ; $6b36: $33
    inc bc                                        ; $6b37: $03
    or a                                          ; $6b38: $b7
    nop                                           ; $6b39: $00
    nop                                           ; $6b3a: $00
    nop                                           ; $6b3b: $00
    add hl, bc                                    ; $6b3c: $09
    nop                                           ; $6b3d: $00
    inc c                                         ; $6b3e: $0c
    dec b                                         ; $6b3f: $05
    inc b                                         ; $6b40: $04
    nop                                           ; $6b41: $00
    dec d                                         ; $6b42: $15
    ld d, d                                       ; $6b43: $52
    nop                                           ; $6b44: $00
    inc sp                                        ; $6b45: $33
    ld [bc], a                                    ; $6b46: $02
    ld a, [$0000]                                 ; $6b47: $fa $00 $00
    nop                                           ; $6b4a: $00
    nop                                           ; $6b4b: $00
    nop                                           ; $6b4c: $00
    nop                                           ; $6b4d: $00
    add hl, bc                                    ; $6b4e: $09
    nop                                           ; $6b4f: $00
    ld d, e                                       ; $6b50: $53
    dec b                                         ; $6b51: $05
    rlca                                          ; $6b52: $07
    nop                                           ; $6b53: $00
    add hl, bc                                    ; $6b54: $09
    daa                                           ; $6b55: $27
    ld bc, $0205                                  ; $6b56: $01 $05 $02
    nop                                           ; $6b59: $00
    nop                                           ; $6b5a: $00
    nop                                           ; $6b5b: $00
    nop                                           ; $6b5c: $00
    dec d                                         ; $6b5d: $15
    ld d, b                                       ; $6b5e: $50
    nop                                           ; $6b5f: $00
    inc sp                                        ; $6b60: $33
    inc bc                                        ; $6b61: $03
    or l                                          ; $6b62: $b5
    nop                                           ; $6b63: $00
    nop                                           ; $6b64: $00
    nop                                           ; $6b65: $00
    add hl, bc                                    ; $6b66: $09
    nop                                           ; $6b67: $00
    inc c                                         ; $6b68: $0c
    dec b                                         ; $6b69: $05
    inc b                                         ; $6b6a: $04
    nop                                           ; $6b6b: $00
    dec d                                         ; $6b6c: $15
    ld d, b                                       ; $6b6d: $50
    nop                                           ; $6b6e: $00
    inc sp                                        ; $6b6f: $33
    ld [bc], a                                    ; $6b70: $02
    ld a, [$0000]                                 ; $6b71: $fa $00 $00
    nop                                           ; $6b74: $00
    nop                                           ; $6b75: $00
    nop                                           ; $6b76: $00
    nop                                           ; $6b77: $00
    add hl, bc                                    ; $6b78: $09
    nop                                           ; $6b79: $00
    ld d, e                                       ; $6b7a: $53
    dec b                                         ; $6b7b: $05
    rlca                                          ; $6b7c: $07
    nop                                           ; $6b7d: $00
    add hl, bc                                    ; $6b7e: $09
    daa                                           ; $6b7f: $27
    ld bc, $0205                                  ; $6b80: $01 $05 $02
    nop                                           ; $6b83: $00
    nop                                           ; $6b84: $00
    nop                                           ; $6b85: $00
    nop                                           ; $6b86: $00
    dec d                                         ; $6b87: $15
    add hl, de                                    ; $6b88: $19
    nop                                           ; $6b89: $00
    inc sp                                        ; $6b8a: $33
    inc bc                                        ; $6b8b: $03
    or h                                          ; $6b8c: $b4
    nop                                           ; $6b8d: $00
    nop                                           ; $6b8e: $00
    nop                                           ; $6b8f: $00
    add hl, bc                                    ; $6b90: $09
    nop                                           ; $6b91: $00
    inc c                                         ; $6b92: $0c
    dec b                                         ; $6b93: $05
    inc b                                         ; $6b94: $04
    nop                                           ; $6b95: $00
    dec d                                         ; $6b96: $15
    add hl, de                                    ; $6b97: $19
    nop                                           ; $6b98: $00
    inc sp                                        ; $6b99: $33
    ld [bc], a                                    ; $6b9a: $02
    db $fc                                        ; $6b9b: $fc
    nop                                           ; $6b9c: $00
    nop                                           ; $6b9d: $00
    nop                                           ; $6b9e: $00
    nop                                           ; $6b9f: $00
    nop                                           ; $6ba0: $00
    nop                                           ; $6ba1: $00
    inc b                                         ; $6ba2: $04
    nop                                           ; $6ba3: $00
    nop                                           ; $6ba4: $00
    ld [bc], a                                    ; $6ba5: $02
    jr z, jr_00a_6baa                             ; $6ba6: $28 $02

    adc b                                         ; $6ba8: $88
    ld [bc], a                                    ; $6ba9: $02

jr_00a_6baa:
    rst $00                                       ; $6baa: $c7
    ld e, a                                       ; $6bab: $5f
    nop                                           ; $6bac: $00
    nop                                           ; $6bad: $00
    add hl, bc                                    ; $6bae: $09
    nop                                           ; $6baf: $00
    inc sp                                        ; $6bb0: $33
    inc b                                         ; $6bb1: $04
    inc bc                                        ; $6bb2: $03
    nop                                           ; $6bb3: $00
    ld e, a                                       ; $6bb4: $5f
    ld bc, $0000                                  ; $6bb5: $01 $00 $00
    nop                                           ; $6bb8: $00
    nop                                           ; $6bb9: $00
    add hl, bc                                    ; $6bba: $09
    ld [$0503], sp                                ; $6bbb: $08 $03 $05
    rlca                                          ; $6bbe: $07
    nop                                           ; $6bbf: $00
    add hl, bc                                    ; $6bc0: $09
    inc c                                         ; $6bc1: $0c
    ld bc, $0305                                  ; $6bc2: $01 $05 $03
    nop                                           ; $6bc5: $00
    dec d                                         ; $6bc6: $15
    ld a, [hl+]                                   ; $6bc7: $2a
    nop                                           ; $6bc8: $00
    ld b, $01                                     ; $6bc9: $06 $01
    db $ec                                        ; $6bcb: $ec
    ld e, a                                       ; $6bcc: $5f
    ld bc, $0000                                  ; $6bcd: $01 $00 $00
    nop                                           ; $6bd0: $00
    nop                                           ; $6bd1: $00
    add hl, bc                                    ; $6bd2: $09
    ld [$0502], sp                                ; $6bd3: $08 $02 $05
    ld [bc], a                                    ; $6bd6: $02
    nop                                           ; $6bd7: $00
    inc bc                                        ; $6bd8: $03
    ld a, [hl+]                                   ; $6bd9: $2a
    nop                                           ; $6bda: $00
    ld d, [hl]                                    ; $6bdb: $56
    nop                                           ; $6bdc: $00
    nop                                           ; $6bdd: $00
    add hl, bc                                    ; $6bde: $09
    dec bc                                        ; $6bdf: $0b
    nop                                           ; $6be0: $00
    dec b                                         ; $6be1: $05
    inc c                                         ; $6be2: $0c
    nop                                           ; $6be3: $00
    rla                                           ; $6be4: $17
    nop                                           ; $6be5: $00
    nop                                           ; $6be6: $00
    inc de                                        ; $6be7: $13
    ld bc, $5825                                  ; $6be8: $01 $25 $58
    nop                                           ; $6beb: $00
    ld h, h                                       ; $6bec: $64
    rla                                           ; $6bed: $17
    nop                                           ; $6bee: $00
    nop                                           ; $6bef: $00
    dec de                                        ; $6bf0: $1b
    ld [bc], a                                    ; $6bf1: $02
    nop                                           ; $6bf2: $00
    inc de                                        ; $6bf3: $13
    nop                                           ; $6bf4: $00
    ld b, c                                       ; $6bf5: $41
    inc d                                         ; $6bf6: $14
    ld bc, $152c                                  ; $6bf7: $01 $2c $15
    nop                                           ; $6bfa: $00
    nop                                           ; $6bfb: $00
    ld d, $39                                     ; $6bfc: $16 $39
    nop                                           ; $6bfe: $00
    ld d, d                                       ; $6bff: $52
    nop                                           ; $6c00: $00
    nop                                           ; $6c01: $00
    inc bc                                        ; $6c02: $03
    ld b, $00                                     ; $6c03: $06 $00
    inc de                                        ; $6c05: $13
    nop                                           ; $6c06: $00
    ld e, e                                       ; $6c07: $5b
    inc d                                         ; $6c08: $14
    ld bc, $1546                                  ; $6c09: $01 $46 $15
    nop                                           ; $6c0c: $00
    nop                                           ; $6c0d: $00
    ld d, $39                                     ; $6c0e: $16 $39
    nop                                           ; $6c10: $00
    ld d, d                                       ; $6c11: $52
    nop                                           ; $6c12: $00
    nop                                           ; $6c13: $00
    inc de                                        ; $6c14: $13
    nop                                           ; $6c15: $00
    sub h                                         ; $6c16: $94
    inc d                                         ; $6c17: $14
    nop                                           ; $6c18: $00
    ld c, b                                       ; $6c19: $48
    dec d                                         ; $6c1a: $15
    nop                                           ; $6c1b: $00
    nop                                           ; $6c1c: $00
    ld d, $37                                     ; $6c1d: $16 $37
    nop                                           ; $6c1f: $00
    ld d, d                                       ; $6c20: $52
    nop                                           ; $6c21: $00
    nop                                           ; $6c22: $00
    dec de                                        ; $6c23: $1b
    inc b                                         ; $6c24: $04
    nop                                           ; $6c25: $00
    inc de                                        ; $6c26: $13
    ld bc, $1418                                  ; $6c27: $01 $18 $14
    nop                                           ; $6c2a: $00
    ld h, h                                       ; $6c2b: $64
    dec d                                         ; $6c2c: $15
    nop                                           ; $6c2d: $00
    nop                                           ; $6c2e: $00
    ld d, $58                                     ; $6c2f: $16 $58
    nop                                           ; $6c31: $00
    ld d, d                                       ; $6c32: $52
    nop                                           ; $6c33: $00
    nop                                           ; $6c34: $00
    dec de                                        ; $6c35: $1b
    ld b, $00                                     ; $6c36: $06 $00
    rla                                           ; $6c38: $17
    add hl, sp                                    ; $6c39: $39
    nop                                           ; $6c3a: $00
    ld e, a                                       ; $6c3b: $5f
    ld bc, $0900                                  ; $6c3c: $01 $00 $09
    dec bc                                        ; $6c3f: $0b
    nop                                           ; $6c40: $00
    dec b                                         ; $6c41: $05
    dec b                                         ; $6c42: $05
    nop                                           ; $6c43: $00
    dec d                                         ; $6c44: $15
    inc bc                                        ; $6c45: $03
    nop                                           ; $6c46: $00
    add hl, de                                    ; $6c47: $19
    nop                                           ; $6c48: $00
    ld a, [de]                                    ; $6c49: $1a
    dec de                                        ; $6c4a: $1b
    nop                                           ; $6c4b: $00
    nop                                           ; $6c4c: $00
    rrca                                          ; $6c4d: $0f
    dec bc                                        ; $6c4e: $0b
    ld bc, $0057                                  ; $6c4f: $01 $57 $00
    nop                                           ; $6c52: $00
    nop                                           ; $6c53: $00
    nop                                           ; $6c54: $00
    nop                                           ; $6c55: $00
    ld d, [hl]                                    ; $6c56: $56
    nop                                           ; $6c57: $00
    nop                                           ; $6c58: $00
    ld [$00fa], sp                                ; $6c59: $08 $fa $00
    dec d                                         ; $6c5c: $15
    ld a, [hl+]                                   ; $6c5d: $2a
    nop                                           ; $6c5e: $00
    rlca                                          ; $6c5f: $07
    nop                                           ; $6c60: $00
    jp $2a15                                      ; $6c61: $c3 $15 $2a


    nop                                           ; $6c64: $00
    rlca                                          ; $6c65: $07
    nop                                           ; $6c66: $00
    add $15                                       ; $6c67: $c6 $15
    ld a, [hl+]                                   ; $6c69: $2a
    nop                                           ; $6c6a: $00
    rlca                                          ; $6c6b: $07
    ld [bc], a                                    ; $6c6c: $02
    ld [hl+], a                                   ; $6c6d: $22
    nop                                           ; $6c6e: $00
    nop                                           ; $6c6f: $00
    nop                                           ; $6c70: $00
    rrca                                          ; $6c71: $0f
    ld [$0f03], sp                                ; $6c72: $08 $03 $0f
    ld b, e                                       ; $6c75: $43
    ld bc, $0017                                  ; $6c76: $01 $17 $00
    nop                                           ; $6c79: $00
    dec de                                        ; $6c7a: $1b
    nop                                           ; $6c7b: $00
    nop                                           ; $6c7c: $00
    inc de                                        ; $6c7d: $13
    nop                                           ; $6c7e: $00
    sub h                                         ; $6c7f: $94
    inc d                                         ; $6c80: $14
    nop                                           ; $6c81: $00
    ld c, b                                       ; $6c82: $48
    dec d                                         ; $6c83: $15
    nop                                           ; $6c84: $00
    nop                                           ; $6c85: $00
    ld d, $37                                     ; $6c86: $16 $37
    nop                                           ; $6c88: $00
    ld d, d                                       ; $6c89: $52
    nop                                           ; $6c8a: $00
    nop                                           ; $6c8b: $00
    dec de                                        ; $6c8c: $1b
    inc b                                         ; $6c8d: $04
    nop                                           ; $6c8e: $00
    ld e, a                                       ; $6c8f: $5f
    ld bc, $2700                                  ; $6c90: $01 $00 $27
    nop                                           ; $6c93: $00
    ld a, [bc]                                    ; $6c94: $0a
    dec d                                         ; $6c95: $15
    nop                                           ; $6c96: $00
    nop                                           ; $6c97: $00
    inc sp                                        ; $6c98: $33
    rlca                                          ; $6c99: $07
    ld a, c                                       ; $6c9a: $79
    dec d                                         ; $6c9b: $15
    add hl, de                                    ; $6c9c: $19
    nop                                           ; $6c9d: $00
    inc sp                                        ; $6c9e: $33
    rlca                                          ; $6c9f: $07
    ld a, d                                       ; $6ca0: $7a
    ld e, a                                       ; $6ca1: $5f
    nop                                           ; $6ca2: $00
    nop                                           ; $6ca3: $00
    inc de                                        ; $6ca4: $13
    nop                                           ; $6ca5: $00
    ld a, l                                       ; $6ca6: $7d
    inc d                                         ; $6ca7: $14
    nop                                           ; $6ca8: $00
    ret z                                         ; $6ca9: $c8

    dec d                                         ; $6caa: $15
    nop                                           ; $6cab: $00
    nop                                           ; $6cac: $00
    ld d, $39                                     ; $6cad: $16 $39
    nop                                           ; $6caf: $00
    ld d, d                                       ; $6cb0: $52
    nop                                           ; $6cb1: $00
    nop                                           ; $6cb2: $00
    ld e, d                                       ; $6cb3: $5a
    nop                                           ; $6cb4: $00
    nop                                           ; $6cb5: $00
    ld e, a                                       ; $6cb6: $5f
    ld bc, $1500                                  ; $6cb7: $01 $00 $15
    nop                                           ; $6cba: $00
    nop                                           ; $6cbb: $00
    add hl, de                                    ; $6cbc: $19
    nop                                           ; $6cbd: $00
    ld h, h                                       ; $6cbe: $64
    dec de                                        ; $6cbf: $1b
    ld [bc], a                                    ; $6cc0: $02
    nop                                           ; $6cc1: $00
    dec d                                         ; $6cc2: $15
    dec d                                         ; $6cc3: $15
    nop                                           ; $6cc4: $00
    inc sp                                        ; $6cc5: $33
    rlca                                          ; $6cc6: $07
    ld a, e                                       ; $6cc7: $7b
    ld e, a                                       ; $6cc8: $5f
    nop                                           ; $6cc9: $00
    nop                                           ; $6cca: $00
    inc de                                        ; $6ccb: $13
    nop                                           ; $6ccc: $00
    rst $10                                       ; $6ccd: $d7
    inc d                                         ; $6cce: $14
    nop                                           ; $6ccf: $00
    ret z                                         ; $6cd0: $c8

    dec d                                         ; $6cd1: $15
    nop                                           ; $6cd2: $00
    nop                                           ; $6cd3: $00
    ld d, $16                                     ; $6cd4: $16 $16
    nop                                           ; $6cd6: $00
    ld d, d                                       ; $6cd7: $52
    nop                                           ; $6cd8: $00
    nop                                           ; $6cd9: $00
    ld e, a                                       ; $6cda: $5f
    ld bc, $1500                                  ; $6cdb: $01 $00 $15
    nop                                           ; $6cde: $00
    nop                                           ; $6cdf: $00
    add hl, de                                    ; $6ce0: $19
    nop                                           ; $6ce1: $00
    ld h, h                                       ; $6ce2: $64
    ld e, a                                       ; $6ce3: $5f
    nop                                           ; $6ce4: $00
    nop                                           ; $6ce5: $00
    rla                                           ; $6ce6: $17
    nop                                           ; $6ce7: $00
    nop                                           ; $6ce8: $00
    dec de                                        ; $6ce9: $1b
    ld [bc], a                                    ; $6cea: $02
    nop                                           ; $6ceb: $00
    rla                                           ; $6cec: $17
    ld d, $00                                     ; $6ced: $16 $00
    ld e, a                                       ; $6cef: $5f
    ld bc, $1500                                  ; $6cf0: $01 $00 $15
    ld b, $00                                     ; $6cf3: $06 $00
    add hl, de                                    ; $6cf5: $19
    nop                                           ; $6cf6: $00
    ld e, $1b                                     ; $6cf7: $1e $1b
    ld b, $00                                     ; $6cf9: $06 $00
    dec d                                         ; $6cfb: $15
    ld l, $00                                     ; $6cfc: $2e $00
    inc sp                                        ; $6cfe: $33
    rlca                                          ; $6cff: $07
    ld a, h                                       ; $6d00: $7c
    dec d                                         ; $6d01: $15
    add hl, de                                    ; $6d02: $19
    nop                                           ; $6d03: $00
    inc sp                                        ; $6d04: $33
    rlca                                          ; $6d05: $07
    ld a, l                                       ; $6d06: $7d
    dec d                                         ; $6d07: $15
    ld l, $00                                     ; $6d08: $2e $00
    inc sp                                        ; $6d0a: $33
    rlca                                          ; $6d0b: $07
    ld a, [hl]                                    ; $6d0c: $7e
    dec d                                         ; $6d0d: $15
    nop                                           ; $6d0e: $00
    nop                                           ; $6d0f: $00
    ld b, d                                       ; $6d10: $42
    nop                                           ; $6d11: $00
    dec b                                         ; $6d12: $05
    ld e, a                                       ; $6d13: $5f
    nop                                           ; $6d14: $00
    nop                                           ; $6d15: $00
    ld d, [hl]                                    ; $6d16: $56
    nop                                           ; $6d17: $00
    nop                                           ; $6d18: $00
    rla                                           ; $6d19: $17
    nop                                           ; $6d1a: $00
    nop                                           ; $6d1b: $00
    ld e, d                                       ; $6d1c: $5a
    nop                                           ; $6d1d: $00
    nop                                           ; $6d1e: $00
    dec de                                        ; $6d1f: $1b
    ld [bc], a                                    ; $6d20: $02
    nop                                           ; $6d21: $00
    inc de                                        ; $6d22: $13
    nop                                           ; $6d23: $00
    sub h                                         ; $6d24: $94
    inc d                                         ; $6d25: $14
    nop                                           ; $6d26: $00
    ld c, b                                       ; $6d27: $48
    dec d                                         ; $6d28: $15
    nop                                           ; $6d29: $00
    nop                                           ; $6d2a: $00
    ld d, $37                                     ; $6d2b: $16 $37
    nop                                           ; $6d2d: $00
    ld d, d                                       ; $6d2e: $52
    nop                                           ; $6d2f: $00
    nop                                           ; $6d30: $00
    dec de                                        ; $6d31: $1b
    inc b                                         ; $6d32: $04
    nop                                           ; $6d33: $00
    inc de                                        ; $6d34: $13
    nop                                           ; $6d35: $00
    ld a, l                                       ; $6d36: $7d
    inc d                                         ; $6d37: $14
    nop                                           ; $6d38: $00
    ld h, h                                       ; $6d39: $64
    dec d                                         ; $6d3a: $15
    nop                                           ; $6d3b: $00
    nop                                           ; $6d3c: $00
    ld d, $39                                     ; $6d3d: $16 $39
    nop                                           ; $6d3f: $00
    ld d, d                                       ; $6d40: $52
    nop                                           ; $6d41: $00
    nop                                           ; $6d42: $00
    ld e, d                                       ; $6d43: $5a
    nop                                           ; $6d44: $00
    nop                                           ; $6d45: $00
    dec de                                        ; $6d46: $1b
    ld [bc], a                                    ; $6d47: $02
    nop                                           ; $6d48: $00
    inc de                                        ; $6d49: $13
    nop                                           ; $6d4a: $00
    cp c                                          ; $6d4b: $b9
    inc d                                         ; $6d4c: $14
    nop                                           ; $6d4d: $00
    ld h, h                                       ; $6d4e: $64
    dec d                                         ; $6d4f: $15
    nop                                           ; $6d50: $00
    nop                                           ; $6d51: $00
    ld d, $16                                     ; $6d52: $16 $16
    nop                                           ; $6d54: $00
    ld d, d                                       ; $6d55: $52
    nop                                           ; $6d56: $00
    nop                                           ; $6d57: $00
    dec de                                        ; $6d58: $1b
    ld b, $00                                     ; $6d59: $06 $00
    ld e, a                                       ; $6d5b: $5f
    ld bc, $6d00                                  ; $6d5c: $01 $00 $6d
    nop                                           ; $6d5f: $00
    nop                                           ; $6d60: $00
    rla                                           ; $6d61: $17
    scf                                           ; $6d62: $37
    nop                                           ; $6d63: $00
    dec d                                         ; $6d64: $15
    inc b                                         ; $6d65: $04
    nop                                           ; $6d66: $00
    add hl, de                                    ; $6d67: $19
    nop                                           ; $6d68: $00
    ld [de], a                                    ; $6d69: $12
    inc de                                        ; $6d6a: $13
    nop                                           ; $6d6b: $00
    xor d                                         ; $6d6c: $aa
    ld [hl], c                                    ; $6d6d: $71
    nop                                           ; $6d6e: $00
    ret z                                         ; $6d6f: $c8

    dec d                                         ; $6d70: $15
    inc b                                         ; $6d71: $04
    nop                                           ; $6d72: $00
    add hl, de                                    ; $6d73: $19
    nop                                           ; $6d74: $00
    add hl, de                                    ; $6d75: $19
    ld e, $37                                     ; $6d76: $1e $37
    nop                                           ; $6d78: $00
    dec d                                         ; $6d79: $15
    ld l, $00                                     ; $6d7a: $2e $00
    inc sp                                        ; $6d7c: $33
    rlca                                          ; $6d7d: $07
    ld a, a                                       ; $6d7e: $7f
    rrca                                          ; $6d7f: $0f
    inc c                                         ; $6d80: $0c
    ld bc, $0015                                  ; $6d81: $01 $15 $00
    nop                                           ; $6d84: $00
    ld b, c                                       ; $6d85: $41
    nop                                           ; $6d86: $00
    ld a, [bc]                                    ; $6d87: $0a
    ld l, l                                       ; $6d88: $6d
    nop                                           ; $6d89: $00
    nop                                           ; $6d8a: $00
    inc l                                         ; $6d8b: $2c
    db $10                                        ; $6d8c: $10
    inc bc                                        ; $6d8d: $03
    ld l, l                                       ; $6d8e: $6d
    nop                                           ; $6d8f: $00
    nop                                           ; $6d90: $00
    ld d, a                                       ; $6d91: $57
    nop                                           ; $6d92: $00
    nop                                           ; $6d93: $00
    nop                                           ; $6d94: $00
    nop                                           ; $6d95: $00
    nop                                           ; $6d96: $00
    rla                                           ; $6d97: $17
    nop                                           ; $6d98: $00
    nop                                           ; $6d99: $00
    dec de                                        ; $6d9a: $1b
    ld [bc], a                                    ; $6d9b: $02
    nop                                           ; $6d9c: $00
    inc de                                        ; $6d9d: $13
    nop                                           ; $6d9e: $00
    inc b                                         ; $6d9f: $04
    inc d                                         ; $6da0: $14
    rst $38                                       ; $6da1: $ff
    ld a, [c]                                     ; $6da2: $f2
    dec d                                         ; $6da3: $15
    nop                                           ; $6da4: $00
    nop                                           ; $6da5: $00
    ld d, $39                                     ; $6da6: $16 $39
    ld bc, $0052                                  ; $6da8: $01 $52 $00
    nop                                           ; $6dab: $00
    ld e, d                                       ; $6dac: $5a
    nop                                           ; $6dad: $00
    nop                                           ; $6dae: $00
    dec de                                        ; $6daf: $1b
    ld [bc], a                                    ; $6db0: $02
    nop                                           ; $6db1: $00
    inc de                                        ; $6db2: $13
    nop                                           ; $6db3: $00
    cp c                                          ; $6db4: $b9
    inc d                                         ; $6db5: $14
    nop                                           ; $6db6: $00
    ld h, h                                       ; $6db7: $64
    dec d                                         ; $6db8: $15
    nop                                           ; $6db9: $00
    nop                                           ; $6dba: $00
    ld d, $16                                     ; $6dbb: $16 $16
    nop                                           ; $6dbd: $00
    ld d, d                                       ; $6dbe: $52
    nop                                           ; $6dbf: $00
    nop                                           ; $6dc0: $00
    dec de                                        ; $6dc1: $1b
    ld b, $00                                     ; $6dc2: $06 $00
    rla                                           ; $6dc4: $17
    add hl, sp                                    ; $6dc5: $39
    nop                                           ; $6dc6: $00
    ld [hl+], a                                   ; $6dc7: $22
    nop                                           ; $6dc8: $00
    nop                                           ; $6dc9: $00
    ld bc, $0000                                  ; $6dca: $01 $00 $00
    ld a, c                                       ; $6dcd: $79
    ld bc, $0029                                  ; $6dce: $01 $29 $00
    nop                                           ; $6dd1: $00
    nop                                           ; $6dd2: $00
    ld e, a                                       ; $6dd3: $5f
    nop                                           ; $6dd4: $00
    nop                                           ; $6dd5: $00
    add hl, bc                                    ; $6dd6: $09
    nop                                           ; $6dd7: $00
    inc sp                                        ; $6dd8: $33
    dec b                                         ; $6dd9: $05
    dec b                                         ; $6dda: $05
    nop                                           ; $6ddb: $00
    add hl, bc                                    ; $6ddc: $09
    ld [$0501], sp                                ; $6ddd: $08 $01 $05
    inc bc                                        ; $6de0: $03
    nop                                           ; $6de1: $00
    dec d                                         ; $6de2: $15
    ld a, [hl+]                                   ; $6de3: $2a
    nop                                           ; $6de4: $00
    rlca                                          ; $6de5: $07
    ld [bc], a                                    ; $6de6: $02
    ld b, e                                       ; $6de7: $43
    ld e, a                                       ; $6de8: $5f
    ld bc, $0000                                  ; $6de9: $01 $00 $00
    nop                                           ; $6dec: $00
    nop                                           ; $6ded: $00
    ld d, [hl]                                    ; $6dee: $56
    nop                                           ; $6def: $00
    nop                                           ; $6df0: $00
    rrca                                          ; $6df1: $0f
    ld [$1702], sp                                ; $6df2: $08 $02 $17
    ld e, b                                       ; $6df5: $58
    nop                                           ; $6df6: $00
    ld e, [hl]                                    ; $6df7: $5e
    nop                                           ; $6df8: $00
    nop                                           ; $6df9: $00
    dec d                                         ; $6dfa: $15
    ld b, $00                                     ; $6dfb: $06 $00
    add hl, de                                    ; $6dfd: $19
    nop                                           ; $6dfe: $00
    add d                                         ; $6dff: $82
    ld e, [hl]                                    ; $6e00: $5e
    ld bc, $1700                                  ; $6e01: $01 $00 $17
    nop                                           ; $6e04: $00
    nop                                           ; $6e05: $00
    dec de                                        ; $6e06: $1b
    nop                                           ; $6e07: $00
    nop                                           ; $6e08: $00
    ld e, a                                       ; $6e09: $5f
    ld bc, $5a00                                  ; $6e0a: $01 $00 $5a
    nop                                           ; $6e0d: $00
    nop                                           ; $6e0e: $00
    dec d                                         ; $6e0f: $15
    nop                                           ; $6e10: $00
    nop                                           ; $6e11: $00
    add hl, de                                    ; $6e12: $19
    nop                                           ; $6e13: $00
    ld e, a                                       ; $6e14: $5f
    inc de                                        ; $6e15: $13
    nop                                           ; $6e16: $00
    ld [hl], e                                    ; $6e17: $73
    ld [hl], c                                    ; $6e18: $71
    nop                                           ; $6e19: $00
    adc h                                         ; $6e1a: $8c
    ld e, e                                       ; $6e1b: $5b
    nop                                           ; $6e1c: $00
    nop                                           ; $6e1d: $00
    dec de                                        ; $6e1e: $1b
    ld [bc], a                                    ; $6e1f: $02
    nop                                           ; $6e20: $00
    rla                                           ; $6e21: $17
    ld e, b                                       ; $6e22: $58
    nop                                           ; $6e23: $00
    dec de                                        ; $6e24: $1b
    ld b, $00                                     ; $6e25: $06 $00
    daa                                           ; $6e27: $27
    nop                                           ; $6e28: $00
    ld a, [bc]                                    ; $6e29: $0a
    ld l, $2b                                     ; $6e2a: $2e $2b
    nop                                           ; $6e2c: $00
    dec [hl]                                      ; $6e2d: $35
    inc bc                                        ; $6e2e: $03
    nop                                           ; $6e2f: $00
    nop                                           ; $6e30: $00
    nop                                           ; $6e31: $00
    nop                                           ; $6e32: $00
    ld e, a                                       ; $6e33: $5f
    nop                                           ; $6e34: $00
    nop                                           ; $6e35: $00
    add hl, bc                                    ; $6e36: $09
    nop                                           ; $6e37: $00
    inc sp                                        ; $6e38: $33
    dec b                                         ; $6e39: $05
    ld de, $0900                                  ; $6e3a: $11 $00 $09
    ld [$0501], sp                                ; $6e3d: $08 $01 $05
    rrca                                          ; $6e40: $0f
    nop                                           ; $6e41: $00
    ld d, [hl]                                    ; $6e42: $56
    nop                                           ; $6e43: $00
    nop                                           ; $6e44: $00
    rla                                           ; $6e45: $17
    nop                                           ; $6e46: $00
    nop                                           ; $6e47: $00
    dec de                                        ; $6e48: $1b
    inc b                                         ; $6e49: $04
    nop                                           ; $6e4a: $00
    rla                                           ; $6e4b: $17
    add hl, sp                                    ; $6e4c: $39
    nop                                           ; $6e4d: $00
    dec de                                        ; $6e4e: $1b
    nop                                           ; $6e4f: $00
    nop                                           ; $6e50: $00
    rla                                           ; $6e51: $17
    nop                                           ; $6e52: $00
    nop                                           ; $6e53: $00
    ld e, a                                       ; $6e54: $5f
    ld bc, $1500                                  ; $6e55: $01 $00 $15
    dec d                                         ; $6e58: $15
    nop                                           ; $6e59: $00
    inc sp                                        ; $6e5a: $33
    rlca                                          ; $6e5b: $07
    halt                                          ; $6e5c: $76
    dec d                                         ; $6e5d: $15
    ld [bc], a                                    ; $6e5e: $02
    nop                                           ; $6e5f: $00
    add hl, de                                    ; $6e60: $19
    nop                                           ; $6e61: $00
    inc d                                         ; $6e62: $14
    dec de                                        ; $6e63: $1b
    ld [bc], a                                    ; $6e64: $02
    nop                                           ; $6e65: $00
    ld d, a                                       ; $6e66: $57
    nop                                           ; $6e67: $00
    nop                                           ; $6e68: $00
    nop                                           ; $6e69: $00
    nop                                           ; $6e6a: $00
    nop                                           ; $6e6b: $00
    ld e, a                                       ; $6e6c: $5f
    ld bc, $0000                                  ; $6e6d: $01 $00 $00
    nop                                           ; $6e70: $00
    nop                                           ; $6e71: $00
    ld e, a                                       ; $6e72: $5f
    nop                                           ; $6e73: $00
    nop                                           ; $6e74: $00
    add hl, bc                                    ; $6e75: $09
    nop                                           ; $6e76: $00
    inc sp                                        ; $6e77: $33
    dec b                                         ; $6e78: $05
    ld de, $0900                                  ; $6e79: $11 $00 $09
    ld [$0501], sp                                ; $6e7c: $08 $01 $05
    rrca                                          ; $6e7f: $0f
    nop                                           ; $6e80: $00
    ld d, [hl]                                    ; $6e81: $56
    nop                                           ; $6e82: $00
    nop                                           ; $6e83: $00
    rla                                           ; $6e84: $17
    nop                                           ; $6e85: $00
    nop                                           ; $6e86: $00
    dec de                                        ; $6e87: $1b
    nop                                           ; $6e88: $00
    nop                                           ; $6e89: $00
    rla                                           ; $6e8a: $17
    add hl, sp                                    ; $6e8b: $39
    nop                                           ; $6e8c: $00
    dec de                                        ; $6e8d: $1b
    inc b                                         ; $6e8e: $04
    nop                                           ; $6e8f: $00
    rla                                           ; $6e90: $17
    nop                                           ; $6e91: $00
    nop                                           ; $6e92: $00
    ld e, a                                       ; $6e93: $5f
    ld bc, $1500                                  ; $6e94: $01 $00 $15
    dec d                                         ; $6e97: $15
    nop                                           ; $6e98: $00
    inc sp                                        ; $6e99: $33
    rlca                                          ; $6e9a: $07
    halt                                          ; $6e9b: $76
    dec d                                         ; $6e9c: $15
    ld [bc], a                                    ; $6e9d: $02
    nop                                           ; $6e9e: $00
    add hl, de                                    ; $6e9f: $19
    nop                                           ; $6ea0: $00
    inc d                                         ; $6ea1: $14
    dec de                                        ; $6ea2: $1b
    ld [bc], a                                    ; $6ea3: $02
    nop                                           ; $6ea4: $00
    ld d, a                                       ; $6ea5: $57
    nop                                           ; $6ea6: $00
    nop                                           ; $6ea7: $00
    nop                                           ; $6ea8: $00
    nop                                           ; $6ea9: $00
    nop                                           ; $6eaa: $00
    ld e, a                                       ; $6eab: $5f
    ld bc, $0000                                  ; $6eac: $01 $00 $00
    nop                                           ; $6eaf: $00
    nop                                           ; $6eb0: $00
    ld [$0000], sp                                ; $6eb1: $08 $00 $00
    nop                                           ; $6eb4: $00
    dec l                                         ; $6eb5: $2d
    nop                                           ; $6eb6: $00
    ld h, [hl]                                    ; $6eb7: $66
    nop                                           ; $6eb8: $00
    ld l, a                                       ; $6eb9: $6f
    ld [bc], a                                    ; $6eba: $02
    ld e, e                                       ; $6ebb: $5b
    inc bc                                        ; $6ebc: $03
    nop                                           ; $6ebd: $00
    inc bc                                        ; $6ebe: $03
    inc sp                                        ; $6ebf: $33
    inc bc                                        ; $6ec0: $03
    ld c, e                                       ; $6ec1: $4b
    ld e, a                                       ; $6ec2: $5f
    nop                                           ; $6ec3: $00
    nop                                           ; $6ec4: $00
    add hl, bc                                    ; $6ec5: $09
    nop                                           ; $6ec6: $00
    dec c                                         ; $6ec7: $0d
    dec b                                         ; $6ec8: $05
    dec bc                                        ; $6ec9: $0b
    nop                                           ; $6eca: $00
    ld d, [hl]                                    ; $6ecb: $56
    nop                                           ; $6ecc: $00
    nop                                           ; $6ecd: $00
    ld e, a                                       ; $6ece: $5f
    ld bc, $1500                                  ; $6ecf: $01 $00 $15
    add hl, sp                                    ; $6ed2: $39
    nop                                           ; $6ed3: $00
    inc sp                                        ; $6ed4: $33
    ld [bc], a                                    ; $6ed5: $02
    ret c                                         ; $6ed6: $d8

    dec d                                         ; $6ed7: $15
    nop                                           ; $6ed8: $00
    nop                                           ; $6ed9: $00
    inc sp                                        ; $6eda: $33
    ld [bc], a                                    ; $6edb: $02
    reti                                          ; $6edc: $d9


    dec d                                         ; $6edd: $15
    add hl, sp                                    ; $6ede: $39
    nop                                           ; $6edf: $00
    inc sp                                        ; $6ee0: $33
    ld [bc], a                                    ; $6ee1: $02
    jp c, $0057                                   ; $6ee2: $da $57 $00

    nop                                           ; $6ee5: $00
    nop                                           ; $6ee6: $00
    nop                                           ; $6ee7: $00
    nop                                           ; $6ee8: $00
    ld e, a                                       ; $6ee9: $5f
    ld bc, $0000                                  ; $6eea: $01 $00 $00
    nop                                           ; $6eed: $00
    nop                                           ; $6eee: $00
    ld e, a                                       ; $6eef: $5f
    nop                                           ; $6ef0: $00
    nop                                           ; $6ef1: $00
    add hl, bc                                    ; $6ef2: $09
    nop                                           ; $6ef3: $00
    dec c                                         ; $6ef4: $0d
    dec b                                         ; $6ef5: $05
    rrca                                          ; $6ef6: $0f
    nop                                           ; $6ef7: $00
    add hl, bc                                    ; $6ef8: $09
    ld de, $0501                                  ; $6ef9: $11 $01 $05
    inc bc                                        ; $6efc: $03
    nop                                           ; $6efd: $00
    ld e, a                                       ; $6efe: $5f
    ld bc, $0000                                  ; $6eff: $01 $00 $00
    nop                                           ; $6f02: $00
    nop                                           ; $6f03: $00
    ld d, [hl]                                    ; $6f04: $56
    nop                                           ; $6f05: $00
    nop                                           ; $6f06: $00
    ld e, a                                       ; $6f07: $5f
    nop                                           ; $6f08: $00
    nop                                           ; $6f09: $00
    dec d                                         ; $6f0a: $15
    nop                                           ; $6f0b: $00
    nop                                           ; $6f0c: $00
    inc sp                                        ; $6f0d: $33
    ld [bc], a                                    ; $6f0e: $02
    db $e3                                        ; $6f0f: $e3
    jr c, jr_00a_6f59                             ; $6f10: $38 $47

    nop                                           ; $6f12: $00
    dec d                                         ; $6f13: $15
    nop                                           ; $6f14: $00
    nop                                           ; $6f15: $00
    inc sp                                        ; $6f16: $33
    ld [bc], a                                    ; $6f17: $02
    db $e4                                        ; $6f18: $e4
    rrca                                          ; $6f19: $0f
    ld de, $5701                                  ; $6f1a: $11 $01 $57
    nop                                           ; $6f1d: $00
    nop                                           ; $6f1e: $00
    nop                                           ; $6f1f: $00
    nop                                           ; $6f20: $00
    nop                                           ; $6f21: $00
    ld e, a                                       ; $6f22: $5f
    ld bc, $0000                                  ; $6f23: $01 $00 $00
    nop                                           ; $6f26: $00
    nop                                           ; $6f27: $00
    dec d                                         ; $6f28: $15
    nop                                           ; $6f29: $00
    nop                                           ; $6f2a: $00
    inc sp                                        ; $6f2b: $33
    inc bc                                        ; $6f2c: $03
    pop bc                                        ; $6f2d: $c1
    nop                                           ; $6f2e: $00
    nop                                           ; $6f2f: $00
    nop                                           ; $6f30: $00
    ld e, a                                       ; $6f31: $5f
    nop                                           ; $6f32: $00
    nop                                           ; $6f33: $00
    add hl, bc                                    ; $6f34: $09
    nop                                           ; $6f35: $00
    add hl, bc                                    ; $6f36: $09
    dec b                                         ; $6f37: $05
    inc c                                         ; $6f38: $0c
    nop                                           ; $6f39: $00
    add hl, bc                                    ; $6f3a: $09
    dec d                                         ; $6f3b: $15
    ld bc, $0204                                  ; $6f3c: $01 $04 $02
    nop                                           ; $6f3f: $00
    nop                                           ; $6f40: $00
    nop                                           ; $6f41: $00
    nop                                           ; $6f42: $00
    inc de                                        ; $6f43: $13
    nop                                           ; $6f44: $00
    ld d, l                                       ; $6f45: $55
    inc d                                         ; $6f46: $14
    nop                                           ; $6f47: $00
    ld b, e                                       ; $6f48: $43
    dec d                                         ; $6f49: $15
    nop                                           ; $6f4a: $00
    nop                                           ; $6f4b: $00
    ld d, $4c                                     ; $6f4c: $16 $4c
    nop                                           ; $6f4e: $00
    ld d, d                                       ; $6f4f: $52
    nop                                           ; $6f50: $00
    nop                                           ; $6f51: $00
    dec de                                        ; $6f52: $1b
    inc b                                         ; $6f53: $04
    nop                                           ; $6f54: $00
    ld e, a                                       ; $6f55: $5f
    ld bc, $0000                                  ; $6f56: $01 $00 $00

jr_00a_6f59:
    nop                                           ; $6f59: $00
    nop                                           ; $6f5a: $00
    add hl, bc                                    ; $6f5b: $09
    nop                                           ; $6f5c: $00
    ld d, e                                       ; $6f5d: $53
    dec b                                         ; $6f5e: $05
    inc b                                         ; $6f5f: $04
    nop                                           ; $6f60: $00
    ld e, a                                       ; $6f61: $5f
    ld bc, $7a00                                  ; $6f62: $01 $00 $7a
    nop                                           ; $6f65: $00
    nop                                           ; $6f66: $00
    nop                                           ; $6f67: $00
    nop                                           ; $6f68: $00
    nop                                           ; $6f69: $00
    add hl, bc                                    ; $6f6a: $09
    nop                                           ; $6f6b: $00
    inc c                                         ; $6f6c: $0c
    dec b                                         ; $6f6d: $05
    dec bc                                        ; $6f6e: $0b
    nop                                           ; $6f6f: $00
    ld a, d                                       ; $6f70: $7a
    nop                                           ; $6f71: $00
    nop                                           ; $6f72: $00
    inc de                                        ; $6f73: $13
    ld [bc], a                                    ; $6f74: $02
    dec [hl]                                      ; $6f75: $35
    inc d                                         ; $6f76: $14
    nop                                           ; $6f77: $00
    dec a                                         ; $6f78: $3d
    dec d                                         ; $6f79: $15
    nop                                           ; $6f7a: $00
    nop                                           ; $6f7b: $00
    ld d, $4d                                     ; $6f7c: $16 $4d
    nop                                           ; $6f7e: $00
    ld d, d                                       ; $6f7f: $52
    nop                                           ; $6f80: $00
    nop                                           ; $6f81: $00
    dec de                                        ; $6f82: $1b
    inc b                                         ; $6f83: $04
    nop                                           ; $6f84: $00
    ld e, a                                       ; $6f85: $5f
    ld bc, $6200                                  ; $6f86: $01 $00 $62
    dec c                                         ; $6f89: $0d
    nop                                           ; $6f8a: $00
    nop                                           ; $6f8b: $00
    nop                                           ; $6f8c: $00
    nop                                           ; $6f8d: $00
    add hl, bc                                    ; $6f8e: $09
    nop                                           ; $6f8f: $00
    dec c                                         ; $6f90: $0d
    dec b                                         ; $6f91: $05
    ld a, [bc]                                    ; $6f92: $0a
    nop                                           ; $6f93: $00
    inc de                                        ; $6f94: $13
    ld [bc], a                                    ; $6f95: $02
    dec [hl]                                      ; $6f96: $35
    inc d                                         ; $6f97: $14
    nop                                           ; $6f98: $00
    dec a                                         ; $6f99: $3d
    dec d                                         ; $6f9a: $15
    nop                                           ; $6f9b: $00
    nop                                           ; $6f9c: $00
    ld d, $4d                                     ; $6f9d: $16 $4d
    nop                                           ; $6f9f: $00
    ld d, d                                       ; $6fa0: $52
    nop                                           ; $6fa1: $00
    nop                                           ; $6fa2: $00
    dec de                                        ; $6fa3: $1b
    inc b                                         ; $6fa4: $04
    nop                                           ; $6fa5: $00
    ld e, a                                       ; $6fa6: $5f
    ld bc, $7a00                                  ; $6fa7: $01 $00 $7a
    nop                                           ; $6faa: $00
    nop                                           ; $6fab: $00
    nop                                           ; $6fac: $00
    nop                                           ; $6fad: $00
    nop                                           ; $6fae: $00
    add hl, bc                                    ; $6faf: $09
    nop                                           ; $6fb0: $00
    dec bc                                        ; $6fb1: $0b
    dec b                                         ; $6fb2: $05
    inc d                                         ; $6fb3: $14
    nop                                           ; $6fb4: $00
    add hl, bc                                    ; $6fb5: $09
    add hl, bc                                    ; $6fb6: $09
    ld bc, $0905                                  ; $6fb7: $01 $05 $09
    nop                                           ; $6fba: $00
    rrca                                          ; $6fbb: $0f
    add hl, bc                                    ; $6fbc: $09
    nop                                           ; $6fbd: $00
    rrca                                          ; $6fbe: $0f
    rlca                                          ; $6fbf: $07
    ld bc, $0056                                  ; $6fc0: $01 $56 $00
    nop                                           ; $6fc3: $00
    ld e, a                                       ; $6fc4: $5f
    ld bc, $6d00                                  ; $6fc5: $01 $00 $6d
    nop                                           ; $6fc8: $00
    nop                                           ; $6fc9: $00
    jr c, @+$5c                                   ; $6fca: $38 $5a

    nop                                           ; $6fcc: $00
    ld d, a                                       ; $6fcd: $57
    nop                                           ; $6fce: $00
    nop                                           ; $6fcf: $00
    nop                                           ; $6fd0: $00
    nop                                           ; $6fd1: $00
    nop                                           ; $6fd2: $00
    add hl, bc                                    ; $6fd3: $09
    rlca                                          ; $6fd4: $07
    nop                                           ; $6fd5: $00
    dec b                                         ; $6fd6: $05
    ld [$1300], sp                                ; $6fd7: $08 $00 $13
    ld bc, $145d                                  ; $6fda: $01 $5d $14
    nop                                           ; $6fdd: $00
    add hl, de                                    ; $6fde: $19
    dec d                                         ; $6fdf: $15
    dec b                                         ; $6fe0: $05
    nop                                           ; $6fe1: $00
    ld d, $52                                     ; $6fe2: $16 $52
    nop                                           ; $6fe4: $00
    ld d, d                                       ; $6fe5: $52
    nop                                           ; $6fe6: $00
    nop                                           ; $6fe7: $00
    ld e, a                                       ; $6fe8: $5f
    ld bc, $0000                                  ; $6fe9: $01 $00 $00
    nop                                           ; $6fec: $00
    nop                                           ; $6fed: $00
    add hl, bc                                    ; $6fee: $09
    nop                                           ; $6fef: $00
    ccf                                           ; $6ff0: $3f
    dec b                                         ; $6ff1: $05
    dec e                                         ; $6ff2: $1d
    nop                                           ; $6ff3: $00
    add hl, bc                                    ; $6ff4: $09
    ld d, $01                                     ; $6ff5: $16 $01
    dec b                                         ; $6ff7: $05
    ld [$5600], sp                                ; $6ff8: $08 $00 $56
    nop                                           ; $6ffb: $00
    nop                                           ; $6ffc: $00
    ld e, a                                       ; $6ffd: $5f
    ld bc, $0900                                  ; $6ffe: $01 $00 $09
    ld a, [$0501]                                 ; $7001: $fa $01 $05
    inc b                                         ; $7004: $04
    nop                                           ; $7005: $00
    jr c, jr_00a_7065                             ; $7006: $38 $5d

    nop                                           ; $7008: $00
    rrca                                          ; $7009: $0f
    ld a, [$5700]                                 ; $700a: $fa $00 $57
    nop                                           ; $700d: $00
    nop                                           ; $700e: $00
    ld e, a                                       ; $700f: $5f
    nop                                           ; $7010: $00
    nop                                           ; $7011: $00
    inc de                                        ; $7012: $13
    nop                                           ; $7013: $00
    ld d, c                                       ; $7014: $51
    inc d                                         ; $7015: $14
    nop                                           ; $7016: $00
    or l                                          ; $7017: $b5
    dec d                                         ; $7018: $15
    ld b, $00                                     ; $7019: $06 $00
    ld d, $5c                                     ; $701b: $16 $5c
    nop                                           ; $701d: $00
    ld d, d                                       ; $701e: $52
    nop                                           ; $701f: $00
    nop                                           ; $7020: $00
    inc de                                        ; $7021: $13
    ld bc, $1453                                  ; $7022: $01 $53 $14
    ld bc, $153d                                  ; $7025: $01 $3d $15
    ld b, $00                                     ; $7028: $06 $00
    ld d, $5c                                     ; $702a: $16 $5c
    nop                                           ; $702c: $00
    ld d, d                                       ; $702d: $52
    nop                                           ; $702e: $00
    nop                                           ; $702f: $00
    inc de                                        ; $7030: $13
    ld [bc], a                                    ; $7031: $02
    add sp, $14                                   ; $7032: $e8 $14
    nop                                           ; $7034: $00
    ld e, [hl]                                    ; $7035: $5e
    dec d                                         ; $7036: $15
    ld b, $00                                     ; $7037: $06 $00
    ld d, $5c                                     ; $7039: $16 $5c
    nop                                           ; $703b: $00
    ld d, d                                       ; $703c: $52
    nop                                           ; $703d: $00
    nop                                           ; $703e: $00
    ld e, a                                       ; $703f: $5f
    ld bc, $5700                                  ; $7040: $01 $00 $57
    nop                                           ; $7043: $00
    nop                                           ; $7044: $00
    nop                                           ; $7045: $00
    nop                                           ; $7046: $00
    nop                                           ; $7047: $00
    add hl, bc                                    ; $7048: $09
    nop                                           ; $7049: $00
    ld e, h                                       ; $704a: $5c
    dec b                                         ; $704b: $05
    ld b, h                                       ; $704c: $44
    nop                                           ; $704d: $00
    add hl, bc                                    ; $704e: $09
    inc c                                         ; $704f: $0c
    ld bc, $0305                                  ; $7050: $01 $05 $03
    nop                                           ; $7053: $00
    ld e, a                                       ; $7054: $5f
    ld bc, $0000                                  ; $7055: $01 $00 $00
    nop                                           ; $7058: $00
    nop                                           ; $7059: $00
    ld d, [hl]                                    ; $705a: $56
    nop                                           ; $705b: $00
    nop                                           ; $705c: $00
    inc de                                        ; $705d: $13
    nop                                           ; $705e: $00
    cp b                                          ; $705f: $b8
    inc d                                         ; $7060: $14
    ld [bc], a                                    ; $7061: $02
    ld a, [hl+]                                   ; $7062: $2a
    dec d                                         ; $7063: $15
    nop                                           ; $7064: $00

jr_00a_7065:
    nop                                           ; $7065: $00
    ld d, $39                                     ; $7066: $16 $39
    nop                                           ; $7068: $00
    ld d, d                                       ; $7069: $52
    nop                                           ; $706a: $00
    nop                                           ; $706b: $00
    dec de                                        ; $706c: $1b
    ld [bc], a                                    ; $706d: $02
    nop                                           ; $706e: $00
    inc de                                        ; $706f: $13
    nop                                           ; $7070: $00
    ret c                                         ; $7071: $d8

    inc d                                         ; $7072: $14
    ld [bc], a                                    ; $7073: $02
    ld a, [hl+]                                   ; $7074: $2a
    dec d                                         ; $7075: $15
    nop                                           ; $7076: $00
    nop                                           ; $7077: $00
    ld d, $37                                     ; $7078: $16 $37
    nop                                           ; $707a: $00
    ld d, d                                       ; $707b: $52
    nop                                           ; $707c: $00
    nop                                           ; $707d: $00
    dec de                                        ; $707e: $1b
    ld b, $00                                     ; $707f: $06 $00
    ld e, a                                       ; $7081: $5f
    ld bc, $1500                                  ; $7082: $01 $00 $15
    dec d                                         ; $7085: $15
    nop                                           ; $7086: $00
    inc sp                                        ; $7087: $33
    inc b                                         ; $7088: $04
    xor c                                         ; $7089: $a9
    dec d                                         ; $708a: $15
    nop                                           ; $708b: $00
    nop                                           ; $708c: $00
    inc sp                                        ; $708d: $33
    inc b                                         ; $708e: $04
    xor d                                         ; $708f: $aa
    dec d                                         ; $7090: $15
    add hl, de                                    ; $7091: $19
    nop                                           ; $7092: $00
    inc sp                                        ; $7093: $33
    inc b                                         ; $7094: $04
    xor e                                         ; $7095: $ab
    dec d                                         ; $7096: $15
    nop                                           ; $7097: $00
    nop                                           ; $7098: $00
    inc sp                                        ; $7099: $33
    inc b                                         ; $709a: $04
    xor h                                         ; $709b: $ac
    inc de                                        ; $709c: $13
    nop                                           ; $709d: $00
    or [hl]                                       ; $709e: $b6
    inc d                                         ; $709f: $14
    ld [bc], a                                    ; $70a0: $02
    ld h, [hl]                                    ; $70a1: $66
    dec d                                         ; $70a2: $15
    nop                                           ; $70a3: $00
    nop                                           ; $70a4: $00
    ld d, $0d                                     ; $70a5: $16 $0d
    nop                                           ; $70a7: $00
    ld d, d                                       ; $70a8: $52
    nop                                           ; $70a9: $00
    nop                                           ; $70aa: $00
    inc de                                        ; $70ab: $13
    ld [bc], a                                    ; $70ac: $02
    add hl, sp                                    ; $70ad: $39
    ld [hl], c                                    ; $70ae: $71
    nop                                           ; $70af: $00
    jp z, $001b                                   ; $70b0: $ca $1b $00

    nop                                           ; $70b3: $00
    dec d                                         ; $70b4: $15
    ld bc, $3300                                  ; $70b5: $01 $00 $33
    inc b                                         ; $70b8: $04
    xor l                                         ; $70b9: $ad
    dec d                                         ; $70ba: $15
    nop                                           ; $70bb: $00
    nop                                           ; $70bc: $00
    inc sp                                        ; $70bd: $33
    inc b                                         ; $70be: $04
    xor [hl]                                      ; $70bf: $ae
    dec d                                         ; $70c0: $15
    ld bc, $3300                                  ; $70c1: $01 $00 $33
    inc b                                         ; $70c4: $04
    xor a                                         ; $70c5: $af
    inc de                                        ; $70c6: $13
    ld [bc], a                                    ; $70c7: $02
    ld h, [hl]                                    ; $70c8: $66
    ld [hl], c                                    ; $70c9: $71
    nop                                           ; $70ca: $00
    or [hl]                                       ; $70cb: $b6
    ld e, $0d                                     ; $70cc: $1e $0d
    nop                                           ; $70ce: $00
    dec d                                         ; $70cf: $15
    nop                                           ; $70d0: $00
    nop                                           ; $70d1: $00
    inc sp                                        ; $70d2: $33
    inc b                                         ; $70d3: $04
    or b                                          ; $70d4: $b0
    dec d                                         ; $70d5: $15
    dec d                                         ; $70d6: $15
    nop                                           ; $70d7: $00
    inc sp                                        ; $70d8: $33
    inc b                                         ; $70d9: $04
    or c                                          ; $70da: $b1
    dec d                                         ; $70db: $15
    nop                                           ; $70dc: $00
    nop                                           ; $70dd: $00
    inc sp                                        ; $70de: $33
    inc b                                         ; $70df: $04
    or d                                          ; $70e0: $b2
    ld e, a                                       ; $70e1: $5f
    nop                                           ; $70e2: $00
    nop                                           ; $70e3: $00
    rla                                           ; $70e4: $17
    add hl, sp                                    ; $70e5: $39
    nop                                           ; $70e6: $00
    ld e, d                                       ; $70e7: $5a
    nop                                           ; $70e8: $00
    nop                                           ; $70e9: $00
    ld e, [hl]                                    ; $70ea: $5e
    nop                                           ; $70eb: $00
    nop                                           ; $70ec: $00
    dec d                                         ; $70ed: $15
    ld [bc], a                                    ; $70ee: $02
    nop                                           ; $70ef: $00
    add hl, de                                    ; $70f0: $19
    nop                                           ; $70f1: $00
    ld l, [hl]                                    ; $70f2: $6e
    ld e, [hl]                                    ; $70f3: $5e
    ld bc, $1700                                  ; $70f4: $01 $00 $17
    scf                                           ; $70f7: $37
    nop                                           ; $70f8: $00
    ld e, a                                       ; $70f9: $5f
    ld bc, $1500                                  ; $70fa: $01 $00 $15
    nop                                           ; $70fd: $00
    nop                                           ; $70fe: $00
    add hl, de                                    ; $70ff: $19
    nop                                           ; $7100: $00
    ld l, [hl]                                    ; $7101: $6e
    ld e, $37                                     ; $7102: $1e $37
    nop                                           ; $7104: $00
    rla                                           ; $7105: $17
    add hl, sp                                    ; $7106: $39
    nop                                           ; $7107: $00
    ld e, e                                       ; $7108: $5b
    nop                                           ; $7109: $00
    nop                                           ; $710a: $00
    ld e, $39                                     ; $710b: $1e $39
    nop                                           ; $710d: $00
    rrca                                          ; $710e: $0f
    inc c                                         ; $710f: $0c
    ld bc, $0057                                  ; $7110: $01 $57 $00
    nop                                           ; $7113: $00
    nop                                           ; $7114: $00
    nop                                           ; $7115: $00
    nop                                           ; $7116: $00
    ld e, a                                       ; $7117: $5f
    ld bc, $0000                                  ; $7118: $01 $00 $00
    nop                                           ; $711b: $00
    nop                                           ; $711c: $00
    ld e, a                                       ; $711d: $5f
    nop                                           ; $711e: $00
    nop                                           ; $711f: $00
    add hl, bc                                    ; $7120: $09
    nop                                           ; $7121: $00
    add hl, bc                                    ; $7122: $09
    dec b                                         ; $7123: $05
    inc sp                                        ; $7124: $33
    nop                                           ; $7125: $00
    add hl, bc                                    ; $7126: $09
    dec d                                         ; $7127: $15
    ld bc, $0304                                  ; $7128: $01 $04 $03
    nop                                           ; $712b: $00
    ld e, a                                       ; $712c: $5f
    ld bc, $0000                                  ; $712d: $01 $00 $00
    nop                                           ; $7130: $00
    nop                                           ; $7131: $00
    ld d, [hl]                                    ; $7132: $56
    nop                                           ; $7133: $00
    nop                                           ; $7134: $00
    rla                                           ; $7135: $17
    nop                                           ; $7136: $00
    nop                                           ; $7137: $00
    inc e                                         ; $7138: $1c
    ld c, h                                       ; $7139: $4c
    nop                                           ; $713a: $00
    ld e, a                                       ; $713b: $5f
    ld bc, $0900                                  ; $713c: $01 $00 $09
    inc de                                        ; $713f: $13
    ld bc, $1a05                                  ; $7140: $01 $05 $1a
    nop                                           ; $7143: $00
    ld l, c                                       ; $7144: $69
    ld c, l                                       ; $7145: $4d
    nop                                           ; $7146: $00
    add hl, bc                                    ; $7147: $09
    cp $00                                        ; $7148: $fe $00
    inc b                                         ; $714a: $04
    ld de, $1500                                  ; $714b: $11 $00 $15
    ld e, d                                       ; $714e: $5a
    nop                                           ; $714f: $00
    inc sp                                        ; $7150: $33
    ld a, [bc]                                    ; $7151: $0a
    jp nc, Jump_000_0015                          ; $7152: $d2 $15 $00

    nop                                           ; $7155: $00
    ld b, c                                       ; $7156: $41
    nop                                           ; $7157: $00
    ld bc, $005f                                  ; $7158: $01 $5f $00
    nop                                           ; $715b: $00
    inc de                                        ; $715c: $13
    nop                                           ; $715d: $00
    ld d, l                                       ; $715e: $55
    inc d                                         ; $715f: $14
    nop                                           ; $7160: $00
    ld b, e                                       ; $7161: $43
    dec d                                         ; $7162: $15
    nop                                           ; $7163: $00
    nop                                           ; $7164: $00
    ld d, $4c                                     ; $7165: $16 $4c
    nop                                           ; $7167: $00
    ld d, d                                       ; $7168: $52
    nop                                           ; $7169: $00
    nop                                           ; $716a: $00
    dec de                                        ; $716b: $1b
    inc b                                         ; $716c: $04
    nop                                           ; $716d: $00
    ld e, a                                       ; $716e: $5f
    ld bc, $5700                                  ; $716f: $01 $00 $57
    nop                                           ; $7172: $00
    nop                                           ; $7173: $00
    rrca                                          ; $7174: $0f
    dec d                                         ; $7175: $15
    ld [bc], a                                    ; $7176: $02
    nop                                           ; $7177: $00
    nop                                           ; $7178: $00
    nop                                           ; $7179: $00
    inc bc                                        ; $717a: $03
    rlca                                          ; $717b: $07
    nop                                           ; $717c: $00
    dec d                                         ; $717d: $15
    nop                                           ; $717e: $00
    nop                                           ; $717f: $00
    inc sp                                        ; $7180: $33
    ld a, [bc]                                    ; $7181: $0a
    ret nc                                        ; $7182: $d0

    dec d                                         ; $7183: $15
    ld e, d                                       ; $7184: $5a
    nop                                           ; $7185: $00
    inc sp                                        ; $7186: $33
    ld a, [bc]                                    ; $7187: $0a
    pop de                                        ; $7188: $d1
    ld d, a                                       ; $7189: $57
    nop                                           ; $718a: $00
    nop                                           ; $718b: $00
    nop                                           ; $718c: $00
    nop                                           ; $718d: $00
    nop                                           ; $718e: $00
    dec d                                         ; $718f: $15
    nop                                           ; $7190: $00
    nop                                           ; $7191: $00
    inc sp                                        ; $7192: $33
    ld a, [bc]                                    ; $7193: $0a
    call z, Call_00a_5a15                         ; $7194: $cc $15 $5a
    nop                                           ; $7197: $00
    inc sp                                        ; $7198: $33
    ld a, [bc]                                    ; $7199: $0a
    call Call_000_0015                            ; $719a: $cd $15 $00
    nop                                           ; $719d: $00
    inc sp                                        ; $719e: $33
    ld a, [bc]                                    ; $719f: $0a
    adc $15                                       ; $71a0: $ce $15
    ld e, d                                       ; $71a2: $5a
    nop                                           ; $71a3: $00
    inc sp                                        ; $71a4: $33
    ld a, [bc]                                    ; $71a5: $0a
    rst $08                                       ; $71a6: $cf
    dec d                                         ; $71a7: $15
    nop                                           ; $71a8: $00
    nop                                           ; $71a9: $00
    inc sp                                        ; $71aa: $33
    ld a, [bc]                                    ; $71ab: $0a
    ret nc                                        ; $71ac: $d0

    dec d                                         ; $71ad: $15
    ld e, d                                       ; $71ae: $5a
    nop                                           ; $71af: $00
    inc sp                                        ; $71b0: $33
    ld a, [bc]                                    ; $71b1: $0a
    pop de                                        ; $71b2: $d1
    rrca                                          ; $71b3: $0f
    inc de                                        ; $71b4: $13
    ld bc, $0057                                  ; $71b5: $01 $57 $00
    nop                                           ; $71b8: $00
    nop                                           ; $71b9: $00
    nop                                           ; $71ba: $00
    nop                                           ; $71bb: $00
    ld e, a                                       ; $71bc: $5f
    ld bc, $0000                                  ; $71bd: $01 $00 $00
    nop                                           ; $71c0: $00
    nop                                           ; $71c1: $00
    add hl, bc                                    ; $71c2: $09
    nop                                           ; $71c3: $00
    dec bc                                        ; $71c4: $0b
    dec b                                         ; $71c5: $05
    rrca                                          ; $71c6: $0f
    nop                                           ; $71c7: $00
    ld l, h                                       ; $71c8: $6c
    ld bc, $0900                                  ; $71c9: $01 $00 $09
    cp $00                                        ; $71cc: $fe $00
    dec b                                         ; $71ce: $05
    dec b                                         ; $71cf: $05
    nop                                           ; $71d0: $00
    rrca                                          ; $71d1: $0f
    add hl, bc                                    ; $71d2: $09
    ld bc, $0535                                  ; $71d3: $01 $35 $05
    nop                                           ; $71d6: $00
    nop                                           ; $71d7: $00
    nop                                           ; $71d8: $00
    nop                                           ; $71d9: $00
    inc bc                                        ; $71da: $03
    ld [$1500], sp                                ; $71db: $08 $00 $15
    nop                                           ; $71de: $00
    nop                                           ; $71df: $00
    inc sp                                        ; $71e0: $33
    inc bc                                        ; $71e1: $03
    adc [hl]                                      ; $71e2: $8e
    rla                                           ; $71e3: $17
    ld d, d                                       ; $71e4: $52
    nop                                           ; $71e5: $00
    ld e, $52                                     ; $71e6: $1e $52
    nop                                           ; $71e8: $00
    jr c, jr_00a_7245                             ; $71e9: $38 $5a

    nop                                           ; $71eb: $00
    rrca                                          ; $71ec: $0f
    rlca                                          ; $71ed: $07
    ld bc, $0000                                  ; $71ee: $01 $00 $00
    nop                                           ; $71f1: $00
    nop                                           ; $71f2: $00
    nop                                           ; $71f3: $00
    nop                                           ; $71f4: $00
    add hl, bc                                    ; $71f5: $09
    nop                                           ; $71f6: $00
    ccf                                           ; $71f7: $3f
    dec b                                         ; $71f8: $05
    ld b, $00                                     ; $71f9: $06 $00
    rrca                                          ; $71fb: $0f
    ld a, [$0f00]                                 ; $71fc: $fa $00 $0f
    ld d, $01                                     ; $71ff: $16 $01
    ld l, $08                                     ; $7201: $2e $08
    nop                                           ; $7203: $00
    dec [hl]                                      ; $7204: $35
    ld b, $00                                     ; $7205: $06 $00
    nop                                           ; $7207: $00
    nop                                           ; $7208: $00
    nop                                           ; $7209: $00
    nop                                           ; $720a: $00
    nop                                           ; $720b: $00
    nop                                           ; $720c: $00
    dec d                                         ; $720d: $15
    dec a                                         ; $720e: $3d
    nop                                           ; $720f: $00
    inc sp                                        ; $7210: $33
    ld bc, $00cc                                  ; $7211: $01 $cc $00
    nop                                           ; $7214: $00
    nop                                           ; $7215: $00
    inc b                                         ; $7216: $04
    nop                                           ; $7217: $00
    nop                                           ; $7218: $00
    ld bc, $039b                                  ; $7219: $01 $9b $03
    sbc c                                         ; $721c: $99
    inc bc                                        ; $721d: $03
    xor e                                         ; $721e: $ab
    ld e, a                                       ; $721f: $5f
    nop                                           ; $7220: $00
    nop                                           ; $7221: $00
    add hl, bc                                    ; $7222: $09
    nop                                           ; $7223: $00
    inc [hl]                                      ; $7224: $34
    dec b                                         ; $7225: $05
    dec hl                                        ; $7226: $2b
    nop                                           ; $7227: $00
    ld d, [hl]                                    ; $7228: $56
    nop                                           ; $7229: $00
    nop                                           ; $722a: $00
    ld a, d                                       ; $722b: $7a
    ld bc, $1300                                  ; $722c: $01 $00 $13
    nop                                           ; $722f: $00
    add [hl]                                      ; $7230: $86
    inc d                                         ; $7231: $14
    nop                                           ; $7232: $00
    jp hl                                         ; $7233: $e9


    dec d                                         ; $7234: $15
    nop                                           ; $7235: $00
    nop                                           ; $7236: $00
    ld d, $37                                     ; $7237: $16 $37
    nop                                           ; $7239: $00
    ld d, d                                       ; $723a: $52
    nop                                           ; $723b: $00
    nop                                           ; $723c: $00
    dec de                                        ; $723d: $1b
    nop                                           ; $723e: $00
    nop                                           ; $723f: $00
    inc de                                        ; $7240: $13
    nop                                           ; $7241: $00
    ld [hl], b                                    ; $7242: $70
    inc d                                         ; $7243: $14
    nop                                           ; $7244: $00

jr_00a_7245:
    adc $15                                       ; $7245: $ce $15
    nop                                           ; $7247: $00
    nop                                           ; $7248: $00
    ld d, $0d                                     ; $7249: $16 $0d
    nop                                           ; $724b: $00
    ld d, d                                       ; $724c: $52
    nop                                           ; $724d: $00
    nop                                           ; $724e: $00
    dec de                                        ; $724f: $1b
    inc b                                         ; $7250: $04
    nop                                           ; $7251: $00
    inc de                                        ; $7252: $13
    nop                                           ; $7253: $00
    ld e, b                                       ; $7254: $58
    inc d                                         ; $7255: $14
    nop                                           ; $7256: $00
    jp hl                                         ; $7257: $e9


    dec d                                         ; $7258: $15
    nop                                           ; $7259: $00
    nop                                           ; $725a: $00
    ld d, $39                                     ; $725b: $16 $39
    nop                                           ; $725d: $00
    ld d, d                                       ; $725e: $52
    nop                                           ; $725f: $00
    nop                                           ; $7260: $00
    dec de                                        ; $7261: $1b
    nop                                           ; $7262: $00
    nop                                           ; $7263: $00
    ld e, a                                       ; $7264: $5f
    ld bc, $2700                                  ; $7265: $01 $00 $27
    nop                                           ; $7268: $00
    ld a, [bc]                                    ; $7269: $0a
    dec d                                         ; $726a: $15
    ld bc, $3300                                  ; $726b: $01 $00 $33
    rlca                                          ; $726e: $07
    adc e                                         ; $726f: $8b
    dec d                                         ; $7270: $15
    nop                                           ; $7271: $00
    nop                                           ; $7272: $00
    inc sp                                        ; $7273: $33
    rlca                                          ; $7274: $07
    adc h                                         ; $7275: $8c
    dec d                                         ; $7276: $15
    ld bc, $3300                                  ; $7277: $01 $00 $33
    rlca                                          ; $727a: $07
    adc l                                         ; $727b: $8d
    dec d                                         ; $727c: $15
    nop                                           ; $727d: $00
    nop                                           ; $727e: $00
    inc sp                                        ; $727f: $33
    rlca                                          ; $7280: $07
    adc [hl]                                      ; $7281: $8e
    dec d                                         ; $7282: $15
    ld bc, $3300                                  ; $7283: $01 $00 $33
    rlca                                          ; $7286: $07
    adc a                                         ; $7287: $8f
    dec d                                         ; $7288: $15
    nop                                           ; $7289: $00
    nop                                           ; $728a: $00
    inc sp                                        ; $728b: $33
    rlca                                          ; $728c: $07
    sub b                                         ; $728d: $90
    dec d                                         ; $728e: $15
    ld bc, $3300                                  ; $728f: $01 $00 $33
    rlca                                          ; $7292: $07
    sub c                                         ; $7293: $91
    daa                                           ; $7294: $27
    nop                                           ; $7295: $00
    ld a, [bc]                                    ; $7296: $0a
    ld h, d                                       ; $7297: $62
    ld [hl], $00                                  ; $7298: $36 $00
    ld d, l                                       ; $729a: $55
    inc de                                        ; $729b: $13
    nop                                           ; $729c: $00
    ld d, a                                       ; $729d: $57
    nop                                           ; $729e: $00
    nop                                           ; $729f: $00
    jr z, jr_00a_72e8                             ; $72a0: $28 $46

    nop                                           ; $72a2: $00
    nop                                           ; $72a3: $00
    nop                                           ; $72a4: $00
    nop                                           ; $72a5: $00
    add hl, bc                                    ; $72a6: $09
    nop                                           ; $72a7: $00
    dec a                                         ; $72a8: $3d
    dec b                                         ; $72a9: $05
    dec de                                        ; $72aa: $1b
    nop                                           ; $72ab: $00
    ld a, d                                       ; $72ac: $7a
    ld bc, $1300                                  ; $72ad: $01 $00 $13
    nop                                           ; $72b0: $00
    sbc l                                         ; $72b1: $9d
    inc d                                         ; $72b2: $14
    nop                                           ; $72b3: $00
    ld h, c                                       ; $72b4: $61
    dec d                                         ; $72b5: $15
    nop                                           ; $72b6: $00
    nop                                           ; $72b7: $00
    ld d, $37                                     ; $72b8: $16 $37
    nop                                           ; $72ba: $00
    ld d, d                                       ; $72bb: $52
    nop                                           ; $72bc: $00
    nop                                           ; $72bd: $00
    dec de                                        ; $72be: $1b
    nop                                           ; $72bf: $00
    nop                                           ; $72c0: $00
    inc de                                        ; $72c1: $13
    nop                                           ; $72c2: $00
    adc h                                         ; $72c3: $8c
    inc d                                         ; $72c4: $14
    nop                                           ; $72c5: $00
    ld b, e                                       ; $72c6: $43
    dec d                                         ; $72c7: $15
    nop                                           ; $72c8: $00
    nop                                           ; $72c9: $00
    ld d, $0d                                     ; $72ca: $16 $0d
    nop                                           ; $72cc: $00
    ld d, d                                       ; $72cd: $52
    nop                                           ; $72ce: $00
    nop                                           ; $72cf: $00
    dec de                                        ; $72d0: $1b
    inc b                                         ; $72d1: $04
    nop                                           ; $72d2: $00
    inc de                                        ; $72d3: $13
    nop                                           ; $72d4: $00
    ld a, b                                       ; $72d5: $78
    inc d                                         ; $72d6: $14
    nop                                           ; $72d7: $00
    ld h, c                                       ; $72d8: $61
    dec d                                         ; $72d9: $15
    nop                                           ; $72da: $00
    nop                                           ; $72db: $00
    ld d, $39                                     ; $72dc: $16 $39
    nop                                           ; $72de: $00
    ld d, d                                       ; $72df: $52
    nop                                           ; $72e0: $00
    nop                                           ; $72e1: $00
    dec de                                        ; $72e2: $1b
    nop                                           ; $72e3: $00
    nop                                           ; $72e4: $00
    inc de                                        ; $72e5: $13
    nop                                           ; $72e6: $00
    ld l, [hl]                                    ; $72e7: $6e

jr_00a_72e8:
    inc d                                         ; $72e8: $14
    nop                                           ; $72e9: $00
    dec [hl]                                      ; $72ea: $35
    dec d                                         ; $72eb: $15
    nop                                           ; $72ec: $00
    nop                                           ; $72ed: $00
    ld d, $62                                     ; $72ee: $16 $62
    nop                                           ; $72f0: $00
    ld d, d                                       ; $72f1: $52
    nop                                           ; $72f2: $00
    nop                                           ; $72f3: $00
    ld e, a                                       ; $72f4: $5f
    ld bc, $0000                                  ; $72f5: $01 $00 $00
    nop                                           ; $72f8: $00
    nop                                           ; $72f9: $00
    add hl, bc                                    ; $72fa: $09
    nop                                           ; $72fb: $00
    ccf                                           ; $72fc: $3f
    dec b                                         ; $72fd: $05
    dec de                                        ; $72fe: $1b
    nop                                           ; $72ff: $00
    ld a, d                                       ; $7300: $7a
    ld bc, $1300                                  ; $7301: $01 $00 $13
    nop                                           ; $7304: $00
    sbc l                                         ; $7305: $9d
    inc d                                         ; $7306: $14
    nop                                           ; $7307: $00
    ld h, c                                       ; $7308: $61
    dec d                                         ; $7309: $15
    nop                                           ; $730a: $00
    nop                                           ; $730b: $00
    ld d, $37                                     ; $730c: $16 $37
    nop                                           ; $730e: $00
    ld d, d                                       ; $730f: $52
    nop                                           ; $7310: $00
    nop                                           ; $7311: $00
    dec de                                        ; $7312: $1b
    nop                                           ; $7313: $00
    nop                                           ; $7314: $00
    inc de                                        ; $7315: $13
    nop                                           ; $7316: $00
    adc h                                         ; $7317: $8c
    inc d                                         ; $7318: $14
    nop                                           ; $7319: $00
    ld b, e                                       ; $731a: $43
    dec d                                         ; $731b: $15
    nop                                           ; $731c: $00
    nop                                           ; $731d: $00
    ld d, $0d                                     ; $731e: $16 $0d
    nop                                           ; $7320: $00
    ld d, d                                       ; $7321: $52
    nop                                           ; $7322: $00
    nop                                           ; $7323: $00
    dec de                                        ; $7324: $1b
    inc b                                         ; $7325: $04
    nop                                           ; $7326: $00
    inc de                                        ; $7327: $13
    nop                                           ; $7328: $00
    ld a, b                                       ; $7329: $78
    inc d                                         ; $732a: $14
    nop                                           ; $732b: $00
    ld h, c                                       ; $732c: $61
    dec d                                         ; $732d: $15
    nop                                           ; $732e: $00
    nop                                           ; $732f: $00
    ld d, $39                                     ; $7330: $16 $39
    nop                                           ; $7332: $00
    ld d, d                                       ; $7333: $52
    nop                                           ; $7334: $00
    nop                                           ; $7335: $00
    dec de                                        ; $7336: $1b
    nop                                           ; $7337: $00
    nop                                           ; $7338: $00
    inc de                                        ; $7339: $13
    nop                                           ; $733a: $00
    xor b                                         ; $733b: $a8
    inc d                                         ; $733c: $14
    nop                                           ; $733d: $00
    add l                                         ; $733e: $85
    dec d                                         ; $733f: $15
    nop                                           ; $7340: $00
    nop                                           ; $7341: $00
    ld d, $64                                     ; $7342: $16 $64
    nop                                           ; $7344: $00
    ld d, d                                       ; $7345: $52
    nop                                           ; $7346: $00
    nop                                           ; $7347: $00
    ld e, a                                       ; $7348: $5f
    ld bc, $0000                                  ; $7349: $01 $00 $00
    nop                                           ; $734c: $00
    nop                                           ; $734d: $00
    add hl, bc                                    ; $734e: $09
    nop                                           ; $734f: $00
    ld b, b                                       ; $7350: $40
    dec b                                         ; $7351: $05
    add hl, bc                                    ; $7352: $09
    nop                                           ; $7353: $00
    add hl, bc                                    ; $7354: $09
    inc c                                         ; $7355: $0c
    ld bc, $0305                                  ; $7356: $01 $05 $03
    nop                                           ; $7359: $00
    ld e, a                                       ; $735a: $5f
    ld bc, $0000                                  ; $735b: $01 $00 $00
    nop                                           ; $735e: $00
    nop                                           ; $735f: $00
    rrca                                          ; $7360: $0f
    inc c                                         ; $7361: $0c
    ld bc, $015f                                  ; $7362: $01 $5f $01
    nop                                           ; $7365: $00
    ld a, c                                       ; $7366: $79
    inc b                                         ; $7367: $04
    ld [hl], $00                                  ; $7368: $36 $00
    nop                                           ; $736a: $00
    nop                                           ; $736b: $00
    add hl, bc                                    ; $736c: $09
    nop                                           ; $736d: $00
    ld b, c                                       ; $736e: $41
    dec b                                         ; $736f: $05
    rla                                           ; $7370: $17
    nop                                           ; $7371: $00
    add hl, bc                                    ; $7372: $09
    ld c, $01                                     ; $7373: $0e $01
    dec b                                         ; $7375: $05
    ld [$1300], sp                                ; $7376: $08 $00 $13
    nop                                           ; $7379: $00
    adc h                                         ; $737a: $8c
    inc d                                         ; $737b: $14
    nop                                           ; $737c: $00
    ld b, e                                       ; $737d: $43
    dec d                                         ; $737e: $15
    nop                                           ; $737f: $00
    nop                                           ; $7380: $00
    ld d, $0d                                     ; $7381: $16 $0d
    nop                                           ; $7383: $00
    ld d, d                                       ; $7384: $52
    nop                                           ; $7385: $00
    nop                                           ; $7386: $00
    ld e, a                                       ; $7387: $5f
    ld bc, $0000                                  ; $7388: $01 $00 $00
    nop                                           ; $738b: $00
    nop                                           ; $738c: $00
    inc de                                        ; $738d: $13
    nop                                           ; $738e: $00
    adc h                                         ; $738f: $8c
    inc d                                         ; $7390: $14
    nop                                           ; $7391: $00
    ld b, e                                       ; $7392: $43
    dec d                                         ; $7393: $15
    nop                                           ; $7394: $00
    nop                                           ; $7395: $00
    ld d, $0d                                     ; $7396: $16 $0d
    nop                                           ; $7398: $00
    ld d, d                                       ; $7399: $52
    nop                                           ; $739a: $00
    nop                                           ; $739b: $00
    inc de                                        ; $739c: $13
    nop                                           ; $739d: $00
    ld [hl], c                                    ; $739e: $71
    inc d                                         ; $739f: $14
    nop                                           ; $73a0: $00
    ld d, [hl]                                    ; $73a1: $56
    dec d                                         ; $73a2: $15
    add hl, sp                                    ; $73a3: $39
    nop                                           ; $73a4: $00
    ld d, $08                                     ; $73a5: $16 $08
    nop                                           ; $73a7: $00
    ld d, d                                       ; $73a8: $52
    nop                                           ; $73a9: $00
    nop                                           ; $73aa: $00
    ld e, a                                       ; $73ab: $5f
    ld bc, $0f00                                  ; $73ac: $01 $00 $0f
    ld c, $01                                     ; $73af: $0e $01
    nop                                           ; $73b1: $00
    nop                                           ; $73b2: $00
    nop                                           ; $73b3: $00
    ld e, a                                       ; $73b4: $5f
    ld bc, $0000                                  ; $73b5: $01 $00 $00
    nop                                           ; $73b8: $00
    nop                                           ; $73b9: $00
    ld e, a                                       ; $73ba: $5f
    nop                                           ; $73bb: $00
    nop                                           ; $73bc: $00
    add hl, bc                                    ; $73bd: $09
    nop                                           ; $73be: $00
    dec a                                         ; $73bf: $3d
    dec b                                         ; $73c0: $05
    ld c, e                                       ; $73c1: $4b
    nop                                           ; $73c2: $00
    add hl, bc                                    ; $73c3: $09
    dec c                                         ; $73c4: $0d
    ld bc, $0305                                  ; $73c5: $01 $05 $03
    nop                                           ; $73c8: $00
    ld e, a                                       ; $73c9: $5f
    ld bc, $0000                                  ; $73ca: $01 $00 $00
    nop                                           ; $73cd: $00
    nop                                           ; $73ce: $00
    ld d, [hl]                                    ; $73cf: $56
    nop                                           ; $73d0: $00
    nop                                           ; $73d1: $00
    rla                                           ; $73d2: $17
    nop                                           ; $73d3: $00
    nop                                           ; $73d4: $00
    dec de                                        ; $73d5: $1b
    nop                                           ; $73d6: $00
    nop                                           ; $73d7: $00
    ld e, a                                       ; $73d8: $5f
    ld bc, $1500                                  ; $73d9: $01 $00 $15
    ld bc, $3300                                  ; $73dc: $01 $00 $33
    inc b                                         ; $73df: $04
    ld l, d                                       ; $73e0: $6a
    dec d                                         ; $73e1: $15
    nop                                           ; $73e2: $00
    nop                                           ; $73e3: $00
    inc sp                                        ; $73e4: $33
    inc b                                         ; $73e5: $04
    ld l, e                                       ; $73e6: $6b
    dec d                                         ; $73e7: $15
    ld bc, $3300                                  ; $73e8: $01 $00 $33
    inc b                                         ; $73eb: $04
    ld l, h                                       ; $73ec: $6c
    dec d                                         ; $73ed: $15
    nop                                           ; $73ee: $00
    nop                                           ; $73ef: $00
    inc sp                                        ; $73f0: $33
    inc b                                         ; $73f1: $04
    ld l, l                                       ; $73f2: $6d
    dec d                                         ; $73f3: $15
    add hl, de                                    ; $73f4: $19
    nop                                           ; $73f5: $00
    inc sp                                        ; $73f6: $33
    inc b                                         ; $73f7: $04
    ld l, [hl]                                    ; $73f8: $6e
    rla                                           ; $73f9: $17
    nop                                           ; $73fa: $00
    nop                                           ; $73fb: $00
    ld e, d                                       ; $73fc: $5a
    nop                                           ; $73fd: $00
    nop                                           ; $73fe: $00
    inc de                                        ; $73ff: $13
    nop                                           ; $7400: $00
    inc a                                         ; $7401: $3c
    ld [hl], c                                    ; $7402: $71
    nop                                           ; $7403: $00
    ld e, d                                       ; $7404: $5a
    dec de                                        ; $7405: $1b
    ld [bc], a                                    ; $7406: $02
    nop                                           ; $7407: $00
    ld e, e                                       ; $7408: $5b
    nop                                           ; $7409: $00
    nop                                           ; $740a: $00
    dec d                                         ; $740b: $15
    nop                                           ; $740c: $00
    nop                                           ; $740d: $00
    inc sp                                        ; $740e: $33
    inc b                                         ; $740f: $04
    ld l, a                                       ; $7410: $6f
    dec d                                         ; $7411: $15
    ld bc, $3300                                  ; $7412: $01 $00 $33
    inc b                                         ; $7415: $04
    ld [hl], b                                    ; $7416: $70
    dec d                                         ; $7417: $15
    nop                                           ; $7418: $00
    nop                                           ; $7419: $00
    inc sp                                        ; $741a: $33
    inc b                                         ; $741b: $04
    ld [hl], c                                    ; $741c: $71
    dec d                                         ; $741d: $15
    ld bc, $3300                                  ; $741e: $01 $00 $33
    inc b                                         ; $7421: $04
    ld [hl], d                                    ; $7422: $72
    rla                                           ; $7423: $17
    ld h, d                                       ; $7424: $62
    nop                                           ; $7425: $00
    ld hl, $0044                                  ; $7426: $21 $44 $00
    daa                                           ; $7429: $27
    nop                                           ; $742a: $00
    inc d                                         ; $742b: $14
    dec d                                         ; $742c: $15
    nop                                           ; $742d: $00
    nop                                           ; $742e: $00
    inc sp                                        ; $742f: $33
    inc b                                         ; $7430: $04
    ld [hl], e                                    ; $7431: $73
    ld l, $58                                     ; $7432: $2e $58
    nop                                           ; $7434: $00
    ld hl, $0045                                  ; $7435: $21 $45 $00
    daa                                           ; $7438: $27
    nop                                           ; $7439: $00
    inc c                                         ; $743a: $0c
    inc de                                        ; $743b: $13
    nop                                           ; $743c: $00
    ld l, [hl]                                    ; $743d: $6e
    inc d                                         ; $743e: $14
    nop                                           ; $743f: $00
    scf                                           ; $7440: $37
    dec d                                         ; $7441: $15
    nop                                           ; $7442: $00
    nop                                           ; $7443: $00
    ld d, $63                                     ; $7444: $16 $63
    nop                                           ; $7446: $00
    ld d, d                                       ; $7447: $52
    nop                                           ; $7448: $00
    nop                                           ; $7449: $00
    ld hl, $0046                                  ; $744a: $21 $46 $00
    daa                                           ; $744d: $27
    nop                                           ; $744e: $00
    rrca                                          ; $744f: $0f
    rla                                           ; $7450: $17
    dec c                                         ; $7451: $0d
    nop                                           ; $7452: $00
    dec de                                        ; $7453: $1b
    ld b, $00                                     ; $7454: $06 $00
    dec d                                         ; $7456: $15
    ld bc, $3300                                  ; $7457: $01 $00 $33
    inc b                                         ; $745a: $04
    ld [hl], h                                    ; $745b: $74
    dec d                                         ; $745c: $15
    nop                                           ; $745d: $00
    nop                                           ; $745e: $00
    inc sp                                        ; $745f: $33
    inc b                                         ; $7460: $04
    ld [hl], l                                    ; $7461: $75
    dec d                                         ; $7462: $15
    dec d                                         ; $7463: $15
    nop                                           ; $7464: $00
    inc sp                                        ; $7465: $33
    inc b                                         ; $7466: $04
    halt                                          ; $7467: $76
    rla                                           ; $7468: $17
    ld h, e                                       ; $7469: $63
    nop                                           ; $746a: $00
    ld hl, $0048                                  ; $746b: $21 $48 $00
    daa                                           ; $746e: $27
    nop                                           ; $746f: $00
    ld a, [bc]                                    ; $7470: $0a
    ld hl, $0049                                  ; $7471: $21 $49 $00
    daa                                           ; $7474: $27
    nop                                           ; $7475: $00
    ld a, [bc]                                    ; $7476: $0a
    ld hl, $004b                                  ; $7477: $21 $4b $00
    daa                                           ; $747a: $27
    nop                                           ; $747b: $00
    dec d                                         ; $747c: $15
    dec d                                         ; $747d: $15
    ld bc, $3300                                  ; $747e: $01 $00 $33
    inc b                                         ; $7481: $04
    ld [hl], a                                    ; $7482: $77
    dec d                                         ; $7483: $15
    nop                                           ; $7484: $00
    nop                                           ; $7485: $00
    inc sp                                        ; $7486: $33
    inc b                                         ; $7487: $04
    ld a, b                                       ; $7488: $78
    dec d                                         ; $7489: $15
    ld bc, $3300                                  ; $748a: $01 $00 $33
    inc b                                         ; $748d: $04
    ld a, c                                       ; $748e: $79
    dec d                                         ; $748f: $15
    nop                                           ; $7490: $00
    nop                                           ; $7491: $00
    inc sp                                        ; $7492: $33
    inc b                                         ; $7493: $04
    ld a, d                                       ; $7494: $7a
    rrca                                          ; $7495: $0f
    dec c                                         ; $7496: $0d
    ld bc, $3f62                                  ; $7497: $01 $62 $3f
    nop                                           ; $749a: $00
    ld d, a                                       ; $749b: $57
    nop                                           ; $749c: $00
    nop                                           ; $749d: $00
    nop                                           ; $749e: $00
    nop                                           ; $749f: $00
    nop                                           ; $74a0: $00
    add hl, bc                                    ; $74a1: $09
    nop                                           ; $74a2: $00
    ccf                                           ; $74a3: $3f
    dec b                                         ; $74a4: $05
    ld a, [hl+]                                   ; $74a5: $2a
    nop                                           ; $74a6: $00
    ld d, [hl]                                    ; $74a7: $56
    nop                                           ; $74a8: $00
    nop                                           ; $74a9: $00
    rla                                           ; $74aa: $17
    nop                                           ; $74ab: $00
    nop                                           ; $74ac: $00
    dec de                                        ; $74ad: $1b
    nop                                           ; $74ae: $00
    nop                                           ; $74af: $00
    ld e, a                                       ; $74b0: $5f
    ld bc, $6900                                  ; $74b1: $01 $00 $69
    ld e, l                                       ; $74b4: $5d
    nop                                           ; $74b5: $00
    dec bc                                        ; $74b6: $0b
    cp $05                                        ; $74b7: $fe $05
    dec b                                         ; $74b9: $05
    add hl, bc                                    ; $74ba: $09
    nop                                           ; $74bb: $00
    dec d                                         ; $74bc: $15
    ld bc, $3300                                  ; $74bd: $01 $00 $33
    inc b                                         ; $74c0: $04
    add d                                         ; $74c1: $82
    dec d                                         ; $74c2: $15
    nop                                           ; $74c3: $00
    nop                                           ; $74c4: $00
    inc sp                                        ; $74c5: $33
    inc b                                         ; $74c6: $04
    add e                                         ; $74c7: $83
    dec d                                         ; $74c8: $15
    ld bc, $3300                                  ; $74c9: $01 $00 $33
    inc b                                         ; $74cc: $04
    add h                                         ; $74cd: $84
    ld d, a                                       ; $74ce: $57
    nop                                           ; $74cf: $00
    nop                                           ; $74d0: $00
    nop                                           ; $74d1: $00
    nop                                           ; $74d2: $00
    nop                                           ; $74d3: $00
    dec d                                         ; $74d4: $15
    nop                                           ; $74d5: $00
    nop                                           ; $74d6: $00
    inc sp                                        ; $74d7: $33
    inc b                                         ; $74d8: $04
    ld a, e                                       ; $74d9: $7b
    add hl, sp                                    ; $74da: $39
    ld e, l                                       ; $74db: $5d
    ld bc, $5d39                                  ; $74dc: $01 $39 $5d
    ld bc, $5d39                                  ; $74df: $01 $39 $5d
    ld bc, $5d39                                  ; $74e2: $01 $39 $5d
    ld bc, $5d39                                  ; $74e5: $01 $39 $5d
    ld bc, $0115                                  ; $74e8: $01 $15 $01
    nop                                           ; $74eb: $00
    inc sp                                        ; $74ec: $33
    inc b                                         ; $74ed: $04
    ld a, h                                       ; $74ee: $7c
    dec d                                         ; $74ef: $15
    nop                                           ; $74f0: $00
    nop                                           ; $74f1: $00
    inc sp                                        ; $74f2: $33
    inc b                                         ; $74f3: $04
    ld a, l                                       ; $74f4: $7d
    dec d                                         ; $74f5: $15
    ld bc, $3300                                  ; $74f6: $01 $00 $33
    inc b                                         ; $74f9: $04
    ld a, [hl]                                    ; $74fa: $7e
    dec d                                         ; $74fb: $15
    dec d                                         ; $74fc: $15
    nop                                           ; $74fd: $00
    inc sp                                        ; $74fe: $33
    inc b                                         ; $74ff: $04
    ld a, a                                       ; $7500: $7f
    dec d                                         ; $7501: $15
    nop                                           ; $7502: $00
    nop                                           ; $7503: $00
    inc sp                                        ; $7504: $33
    inc b                                         ; $7505: $04
    add b                                         ; $7506: $80
    dec d                                         ; $7507: $15
    ld bc, $3300                                  ; $7508: $01 $00 $33
    inc b                                         ; $750b: $04
    add c                                         ; $750c: $81
    rrca                                          ; $750d: $0f
    ld b, [hl]                                    ; $750e: $46
    ld bc, $122c                                  ; $750f: $01 $2c $12
    ld [bc], a                                    ; $7512: $02
    ld h, d                                       ; $7513: $62
    ld b, b                                       ; $7514: $40
    nop                                           ; $7515: $00
    ld a, d                                       ; $7516: $7a
    nop                                           ; $7517: $00
    nop                                           ; $7518: $00
    ld d, l                                       ; $7519: $55
    rlca                                          ; $751a: $07
    nop                                           ; $751b: $00
    ld d, a                                       ; $751c: $57
    nop                                           ; $751d: $00
    nop                                           ; $751e: $00
    nop                                           ; $751f: $00
    nop                                           ; $7520: $00
    nop                                           ; $7521: $00
    add hl, bc                                    ; $7522: $09
    nop                                           ; $7523: $00
    ld b, c                                       ; $7524: $41
    dec b                                         ; $7525: $05
    cpl                                           ; $7526: $2f
    nop                                           ; $7527: $00
    add hl, bc                                    ; $7528: $09
    rrca                                          ; $7529: $0f
    ld bc, $0905                                  ; $752a: $01 $05 $09
    nop                                           ; $752d: $00
    ld d, [hl]                                    ; $752e: $56
    nop                                           ; $752f: $00
    nop                                           ; $7530: $00
    rla                                           ; $7531: $17
    nop                                           ; $7532: $00
    nop                                           ; $7533: $00
    dec de                                        ; $7534: $1b
    nop                                           ; $7535: $00
    nop                                           ; $7536: $00
    ld e, a                                       ; $7537: $5f
    ld bc, $1500                                  ; $7538: $01 $00 $15
    ld bc, $3300                                  ; $753b: $01 $00 $33
    inc b                                         ; $753e: $04
    sbc a                                         ; $753f: $9f
    ld d, a                                       ; $7540: $57
    nop                                           ; $7541: $00
    nop                                           ; $7542: $00
    nop                                           ; $7543: $00
    nop                                           ; $7544: $00
    nop                                           ; $7545: $00
    ld d, [hl]                                    ; $7546: $56
    nop                                           ; $7547: $00
    nop                                           ; $7548: $00
    rla                                           ; $7549: $17
    nop                                           ; $754a: $00
    nop                                           ; $754b: $00
    dec de                                        ; $754c: $1b
    nop                                           ; $754d: $00
    nop                                           ; $754e: $00
    ld e, a                                       ; $754f: $5f
    ld bc, $1500                                  ; $7550: $01 $00 $15
    nop                                           ; $7553: $00
    nop                                           ; $7554: $00
    inc sp                                        ; $7555: $33
    inc b                                         ; $7556: $04
    sbc e                                         ; $7557: $9b
    dec d                                         ; $7558: $15
    ld bc, $3300                                  ; $7559: $01 $00 $33
    inc b                                         ; $755c: $04
    sbc h                                         ; $755d: $9c
    dec d                                         ; $755e: $15
    add hl, de                                    ; $755f: $19
    nop                                           ; $7560: $00
    inc sp                                        ; $7561: $33
    inc b                                         ; $7562: $04
    sbc l                                         ; $7563: $9d
    dec d                                         ; $7564: $15
    nop                                           ; $7565: $00
    nop                                           ; $7566: $00
    inc sp                                        ; $7567: $33
    inc b                                         ; $7568: $04
    sbc [hl]                                      ; $7569: $9e
    rla                                           ; $756a: $17
    nop                                           ; $756b: $00
    nop                                           ; $756c: $00
    inc de                                        ; $756d: $13
    nop                                           ; $756e: $00
    ld d, [hl]                                    ; $756f: $56
    ld [hl], c                                    ; $7570: $71
    nop                                           ; $7571: $00
    ld a, b                                       ; $7572: $78
    dec de                                        ; $7573: $1b
    inc b                                         ; $7574: $04
    nop                                           ; $7575: $00
    ld e, a                                       ; $7576: $5f
    nop                                           ; $7577: $00
    nop                                           ; $7578: $00
    rrca                                          ; $7579: $0f
    rst $38                                       ; $757a: $ff
    rlca                                          ; $757b: $07
    rla                                           ; $757c: $17
    ld [$1e00], sp                                ; $757d: $08 $00 $1e
    ld [$1700], sp                                ; $7580: $08 $00 $17
    nop                                           ; $7583: $00
    nop                                           ; $7584: $00
    dec de                                        ; $7585: $1b
    ld [bc], a                                    ; $7586: $02
    nop                                           ; $7587: $00
    ld e, a                                       ; $7588: $5f
    ld bc, $1500                                  ; $7589: $01 $00 $15
    inc b                                         ; $758c: $04
    nop                                           ; $758d: $00
    add hl, de                                    ; $758e: $19
    nop                                           ; $758f: $00
    ld [bc], a                                    ; $7590: $02
    dec de                                        ; $7591: $1b
    inc b                                         ; $7592: $04
    nop                                           ; $7593: $00
    dec d                                         ; $7594: $15
    ld bc, $3300                                  ; $7595: $01 $00 $33
    inc b                                         ; $7598: $04
    sbc a                                         ; $7599: $9f
    rrca                                          ; $759a: $0f
    rst $38                                       ; $759b: $ff
    ld [$0415], sp                                ; $759c: $08 $15 $04
    nop                                           ; $759f: $00
    add hl, de                                    ; $75a0: $19
    nop                                           ; $75a1: $00
    inc bc                                        ; $75a2: $03
    dec de                                        ; $75a3: $1b
    inc b                                         ; $75a4: $04
    nop                                           ; $75a5: $00
    rrca                                          ; $75a6: $0f
    rrca                                          ; $75a7: $0f
    ld bc, $1c0f                                  ; $75a8: $01 $0f $1c
    ld bc, $0057                                  ; $75ab: $01 $57 $00
    nop                                           ; $75ae: $00
    nop                                           ; $75af: $00
    nop                                           ; $75b0: $00
    nop                                           ; $75b1: $00
    ld e, a                                       ; $75b2: $5f
    ld bc, $0000                                  ; $75b3: $01 $00 $00
    nop                                           ; $75b6: $00
    nop                                           ; $75b7: $00
    add hl, bc                                    ; $75b8: $09
    nop                                           ; $75b9: $00
    dec a                                         ; $75ba: $3d
    dec b                                         ; $75bb: $05
    inc b                                         ; $75bc: $04
    nop                                           ; $75bd: $00
    dec d                                         ; $75be: $15
    add hl, de                                    ; $75bf: $19
    nop                                           ; $75c0: $00
    inc sp                                        ; $75c1: $33
    inc b                                         ; $75c2: $04
    add [hl]                                      ; $75c3: $86
    nop                                           ; $75c4: $00
    nop                                           ; $75c5: $00
    nop                                           ; $75c6: $00
    nop                                           ; $75c7: $00
    nop                                           ; $75c8: $00
    nop                                           ; $75c9: $00
    add hl, bc                                    ; $75ca: $09
    nop                                           ; $75cb: $00
    dec a                                         ; $75cc: $3d
    dec b                                         ; $75cd: $05
    inc b                                         ; $75ce: $04
    nop                                           ; $75cf: $00
    dec d                                         ; $75d0: $15
    dec d                                         ; $75d1: $15
    nop                                           ; $75d2: $00
    inc sp                                        ; $75d3: $33
    inc b                                         ; $75d4: $04
    add l                                         ; $75d5: $85
    nop                                           ; $75d6: $00
    nop                                           ; $75d7: $00
    nop                                           ; $75d8: $00
    nop                                           ; $75d9: $00
    nop                                           ; $75da: $00
    nop                                           ; $75db: $00
    rst $38                                       ; $75dc: $ff
    rst $38                                       ; $75dd: $ff
    rst $38                                       ; $75de: $ff
    rst $38                                       ; $75df: $ff
    rst $38                                       ; $75e0: $ff
    rst $38                                       ; $75e1: $ff
    rst $38                                       ; $75e2: $ff
    rst $38                                       ; $75e3: $ff
    rst $38                                       ; $75e4: $ff
    rst $38                                       ; $75e5: $ff
    rst $38                                       ; $75e6: $ff
    rst $38                                       ; $75e7: $ff
    rst $38                                       ; $75e8: $ff
    rst $38                                       ; $75e9: $ff
    rst $38                                       ; $75ea: $ff
    rst $38                                       ; $75eb: $ff
    rst $38                                       ; $75ec: $ff
    rst $38                                       ; $75ed: $ff
    rst $38                                       ; $75ee: $ff
    rst $38                                       ; $75ef: $ff
    rst $38                                       ; $75f0: $ff
    rst $38                                       ; $75f1: $ff
    rst $38                                       ; $75f2: $ff
    rst $38                                       ; $75f3: $ff
    rst $38                                       ; $75f4: $ff
    rst $38                                       ; $75f5: $ff
    rst $38                                       ; $75f6: $ff
    rst $38                                       ; $75f7: $ff
    rst $38                                       ; $75f8: $ff
    rst $38                                       ; $75f9: $ff
    rst $38                                       ; $75fa: $ff
    rst $38                                       ; $75fb: $ff
    rst $38                                       ; $75fc: $ff
    rst $38                                       ; $75fd: $ff
    rst $38                                       ; $75fe: $ff
    rst $38                                       ; $75ff: $ff
    rst $38                                       ; $7600: $ff
    rst $38                                       ; $7601: $ff
    rst $38                                       ; $7602: $ff
    rst $38                                       ; $7603: $ff
    rst $38                                       ; $7604: $ff
    rst $38                                       ; $7605: $ff
    rst $38                                       ; $7606: $ff
    rst $38                                       ; $7607: $ff
    rst $38                                       ; $7608: $ff
    rst $38                                       ; $7609: $ff
    rst $38                                       ; $760a: $ff
    rst $38                                       ; $760b: $ff
    rst $38                                       ; $760c: $ff
    rst $38                                       ; $760d: $ff
    rst $38                                       ; $760e: $ff
    rst $38                                       ; $760f: $ff
    rst $38                                       ; $7610: $ff
    rst $38                                       ; $7611: $ff
    rst $38                                       ; $7612: $ff
    rst $38                                       ; $7613: $ff
    rst $38                                       ; $7614: $ff
    rst $38                                       ; $7615: $ff
    rst $38                                       ; $7616: $ff
    rst $38                                       ; $7617: $ff
    rst $38                                       ; $7618: $ff
    rst $38                                       ; $7619: $ff
    rst $38                                       ; $761a: $ff
    rst $38                                       ; $761b: $ff
    rst $38                                       ; $761c: $ff
    rst $38                                       ; $761d: $ff
    rst $38                                       ; $761e: $ff
    rst $38                                       ; $761f: $ff
    rst $38                                       ; $7620: $ff
    rst $38                                       ; $7621: $ff
    rst $38                                       ; $7622: $ff
    rst $38                                       ; $7623: $ff
    rst $38                                       ; $7624: $ff
    rst $38                                       ; $7625: $ff
    rst $38                                       ; $7626: $ff
    rst $38                                       ; $7627: $ff
    rst $38                                       ; $7628: $ff
    rst $38                                       ; $7629: $ff
    rst $38                                       ; $762a: $ff
    rst $38                                       ; $762b: $ff
    rst $38                                       ; $762c: $ff
    rst $38                                       ; $762d: $ff
    rst $38                                       ; $762e: $ff
    rst $38                                       ; $762f: $ff
    rst $38                                       ; $7630: $ff
    rst $38                                       ; $7631: $ff
    rst $38                                       ; $7632: $ff
    rst $38                                       ; $7633: $ff
    rst $38                                       ; $7634: $ff
    rst $38                                       ; $7635: $ff
    rst $38                                       ; $7636: $ff
    rst $38                                       ; $7637: $ff
    rst $38                                       ; $7638: $ff
    rst $38                                       ; $7639: $ff
    rst $38                                       ; $763a: $ff
    rst $38                                       ; $763b: $ff
    rst $38                                       ; $763c: $ff
    rst $38                                       ; $763d: $ff
    rst $38                                       ; $763e: $ff
    rst $38                                       ; $763f: $ff
    rst $38                                       ; $7640: $ff
    rst $38                                       ; $7641: $ff
    rst $38                                       ; $7642: $ff
    rst $38                                       ; $7643: $ff
    rst $38                                       ; $7644: $ff
    rst $38                                       ; $7645: $ff
    rst $38                                       ; $7646: $ff
    rst $38                                       ; $7647: $ff
    rst $38                                       ; $7648: $ff
    rst $38                                       ; $7649: $ff
    rst $38                                       ; $764a: $ff
    rst $38                                       ; $764b: $ff
    rst $38                                       ; $764c: $ff
    rst $38                                       ; $764d: $ff
    rst $38                                       ; $764e: $ff
    rst $38                                       ; $764f: $ff
    rst $38                                       ; $7650: $ff
    rst $38                                       ; $7651: $ff
    rst $38                                       ; $7652: $ff
    rst $38                                       ; $7653: $ff
    rst $38                                       ; $7654: $ff
    rst $38                                       ; $7655: $ff
    rst $38                                       ; $7656: $ff
    rst $38                                       ; $7657: $ff
    rst $38                                       ; $7658: $ff
    rst $38                                       ; $7659: $ff
    rst $38                                       ; $765a: $ff
    rst $38                                       ; $765b: $ff
    rst $38                                       ; $765c: $ff
    rst $38                                       ; $765d: $ff
    rst $38                                       ; $765e: $ff
    rst $38                                       ; $765f: $ff
    rst $38                                       ; $7660: $ff
    rst $38                                       ; $7661: $ff
    rst $38                                       ; $7662: $ff
    rst $38                                       ; $7663: $ff
    rst $38                                       ; $7664: $ff
    rst $38                                       ; $7665: $ff
    rst $38                                       ; $7666: $ff
    rst $38                                       ; $7667: $ff
    rst $38                                       ; $7668: $ff
    rst $38                                       ; $7669: $ff
    rst $38                                       ; $766a: $ff
    rst $38                                       ; $766b: $ff
    rst $38                                       ; $766c: $ff
    rst $38                                       ; $766d: $ff
    rst $38                                       ; $766e: $ff
    rst $38                                       ; $766f: $ff
    rst $38                                       ; $7670: $ff
    rst $38                                       ; $7671: $ff
    rst $38                                       ; $7672: $ff
    rst $38                                       ; $7673: $ff
    rst $38                                       ; $7674: $ff
    rst $38                                       ; $7675: $ff
    rst $38                                       ; $7676: $ff
    rst $38                                       ; $7677: $ff
    rst $38                                       ; $7678: $ff
    rst $38                                       ; $7679: $ff
    rst $38                                       ; $767a: $ff
    rst $38                                       ; $767b: $ff
    rst $38                                       ; $767c: $ff
    rst $38                                       ; $767d: $ff
    rst $38                                       ; $767e: $ff
    rst $38                                       ; $767f: $ff
    rst $38                                       ; $7680: $ff
    rst $38                                       ; $7681: $ff
    rst $38                                       ; $7682: $ff
    rst $38                                       ; $7683: $ff
    rst $38                                       ; $7684: $ff
    rst $38                                       ; $7685: $ff
    rst $38                                       ; $7686: $ff
    rst $38                                       ; $7687: $ff
    rst $38                                       ; $7688: $ff
    rst $38                                       ; $7689: $ff
    rst $38                                       ; $768a: $ff
    rst $38                                       ; $768b: $ff
    rst $38                                       ; $768c: $ff
    rst $38                                       ; $768d: $ff
    rst $38                                       ; $768e: $ff
    rst $38                                       ; $768f: $ff
    rst $38                                       ; $7690: $ff
    rst $38                                       ; $7691: $ff
    rst $38                                       ; $7692: $ff
    rst $38                                       ; $7693: $ff
    rst $38                                       ; $7694: $ff
    rst $38                                       ; $7695: $ff
    rst $38                                       ; $7696: $ff
    rst $38                                       ; $7697: $ff
    rst $38                                       ; $7698: $ff
    rst $38                                       ; $7699: $ff
    rst $38                                       ; $769a: $ff
    rst $38                                       ; $769b: $ff
    rst $38                                       ; $769c: $ff
    rst $38                                       ; $769d: $ff
    rst $38                                       ; $769e: $ff
    rst $38                                       ; $769f: $ff
    rst $38                                       ; $76a0: $ff
    rst $38                                       ; $76a1: $ff
    rst $38                                       ; $76a2: $ff
    rst $38                                       ; $76a3: $ff
    rst $38                                       ; $76a4: $ff
    rst $38                                       ; $76a5: $ff
    rst $38                                       ; $76a6: $ff
    rst $38                                       ; $76a7: $ff
    rst $38                                       ; $76a8: $ff
    rst $38                                       ; $76a9: $ff
    rst $38                                       ; $76aa: $ff
    rst $38                                       ; $76ab: $ff
    rst $38                                       ; $76ac: $ff
    rst $38                                       ; $76ad: $ff
    rst $38                                       ; $76ae: $ff
    rst $38                                       ; $76af: $ff
    rst $38                                       ; $76b0: $ff
    rst $38                                       ; $76b1: $ff
    rst $38                                       ; $76b2: $ff
    rst $38                                       ; $76b3: $ff
    rst $38                                       ; $76b4: $ff
    rst $38                                       ; $76b5: $ff
    rst $38                                       ; $76b6: $ff
    rst $38                                       ; $76b7: $ff
    rst $38                                       ; $76b8: $ff
    rst $38                                       ; $76b9: $ff
    rst $38                                       ; $76ba: $ff
    rst $38                                       ; $76bb: $ff
    rst $38                                       ; $76bc: $ff
    rst $38                                       ; $76bd: $ff
    rst $38                                       ; $76be: $ff
    rst $38                                       ; $76bf: $ff
    rst $38                                       ; $76c0: $ff
    rst $38                                       ; $76c1: $ff
    rst $38                                       ; $76c2: $ff
    rst $38                                       ; $76c3: $ff
    rst $38                                       ; $76c4: $ff
    rst $38                                       ; $76c5: $ff
    rst $38                                       ; $76c6: $ff
    rst $38                                       ; $76c7: $ff
    rst $38                                       ; $76c8: $ff
    rst $38                                       ; $76c9: $ff
    rst $38                                       ; $76ca: $ff
    rst $38                                       ; $76cb: $ff
    rst $38                                       ; $76cc: $ff
    rst $38                                       ; $76cd: $ff
    rst $38                                       ; $76ce: $ff
    rst $38                                       ; $76cf: $ff
    rst $38                                       ; $76d0: $ff
    rst $38                                       ; $76d1: $ff
    rst $38                                       ; $76d2: $ff
    rst $38                                       ; $76d3: $ff
    rst $38                                       ; $76d4: $ff
    rst $38                                       ; $76d5: $ff
    rst $38                                       ; $76d6: $ff
    rst $38                                       ; $76d7: $ff
    rst $38                                       ; $76d8: $ff
    rst $38                                       ; $76d9: $ff
    rst $38                                       ; $76da: $ff
    rst $38                                       ; $76db: $ff
    rst $38                                       ; $76dc: $ff
    rst $38                                       ; $76dd: $ff
    rst $38                                       ; $76de: $ff
    rst $38                                       ; $76df: $ff
    rst $38                                       ; $76e0: $ff
    rst $38                                       ; $76e1: $ff
    rst $38                                       ; $76e2: $ff
    rst $38                                       ; $76e3: $ff
    rst $38                                       ; $76e4: $ff
    rst $38                                       ; $76e5: $ff
    rst $38                                       ; $76e6: $ff
    rst $38                                       ; $76e7: $ff
    rst $38                                       ; $76e8: $ff
    rst $38                                       ; $76e9: $ff
    rst $38                                       ; $76ea: $ff
    rst $38                                       ; $76eb: $ff
    rst $38                                       ; $76ec: $ff
    rst $38                                       ; $76ed: $ff
    rst $38                                       ; $76ee: $ff
    rst $38                                       ; $76ef: $ff
    rst $38                                       ; $76f0: $ff
    rst $38                                       ; $76f1: $ff
    rst $38                                       ; $76f2: $ff
    rst $38                                       ; $76f3: $ff
    rst $38                                       ; $76f4: $ff
    rst $38                                       ; $76f5: $ff
    rst $38                                       ; $76f6: $ff
    rst $38                                       ; $76f7: $ff
    rst $38                                       ; $76f8: $ff
    rst $38                                       ; $76f9: $ff
    rst $38                                       ; $76fa: $ff
    rst $38                                       ; $76fb: $ff
    rst $38                                       ; $76fc: $ff
    rst $38                                       ; $76fd: $ff
    rst $38                                       ; $76fe: $ff
    rst $38                                       ; $76ff: $ff
    rst $38                                       ; $7700: $ff
    rst $38                                       ; $7701: $ff
    rst $38                                       ; $7702: $ff
    rst $38                                       ; $7703: $ff
    rst $38                                       ; $7704: $ff
    rst $38                                       ; $7705: $ff
    rst $38                                       ; $7706: $ff
    rst $38                                       ; $7707: $ff
    rst $38                                       ; $7708: $ff
    rst $38                                       ; $7709: $ff
    rst $38                                       ; $770a: $ff
    rst $38                                       ; $770b: $ff
    rst $38                                       ; $770c: $ff
    rst $38                                       ; $770d: $ff
    rst $38                                       ; $770e: $ff
    rst $38                                       ; $770f: $ff
    rst $38                                       ; $7710: $ff
    rst $38                                       ; $7711: $ff
    rst $38                                       ; $7712: $ff
    rst $38                                       ; $7713: $ff
    rst $38                                       ; $7714: $ff
    rst $38                                       ; $7715: $ff
    rst $38                                       ; $7716: $ff
    rst $38                                       ; $7717: $ff
    rst $38                                       ; $7718: $ff
    rst $38                                       ; $7719: $ff
    rst $38                                       ; $771a: $ff
    rst $38                                       ; $771b: $ff
    rst $38                                       ; $771c: $ff
    rst $38                                       ; $771d: $ff
    rst $38                                       ; $771e: $ff
    rst $38                                       ; $771f: $ff
    rst $38                                       ; $7720: $ff
    rst $38                                       ; $7721: $ff
    rst $38                                       ; $7722: $ff
    rst $38                                       ; $7723: $ff
    rst $38                                       ; $7724: $ff
    rst $38                                       ; $7725: $ff
    rst $38                                       ; $7726: $ff
    rst $38                                       ; $7727: $ff
    rst $38                                       ; $7728: $ff
    rst $38                                       ; $7729: $ff
    rst $38                                       ; $772a: $ff
    rst $38                                       ; $772b: $ff
    rst $38                                       ; $772c: $ff
    rst $38                                       ; $772d: $ff
    rst $38                                       ; $772e: $ff
    rst $38                                       ; $772f: $ff
    rst $38                                       ; $7730: $ff
    rst $38                                       ; $7731: $ff
    rst $38                                       ; $7732: $ff
    rst $38                                       ; $7733: $ff
    rst $38                                       ; $7734: $ff
    rst $38                                       ; $7735: $ff
    rst $38                                       ; $7736: $ff
    rst $38                                       ; $7737: $ff
    rst $38                                       ; $7738: $ff
    rst $38                                       ; $7739: $ff
    rst $38                                       ; $773a: $ff
    rst $38                                       ; $773b: $ff
    rst $38                                       ; $773c: $ff
    rst $38                                       ; $773d: $ff
    rst $38                                       ; $773e: $ff
    rst $38                                       ; $773f: $ff
    rst $38                                       ; $7740: $ff
    rst $38                                       ; $7741: $ff
    rst $38                                       ; $7742: $ff
    rst $38                                       ; $7743: $ff
    rst $38                                       ; $7744: $ff
    rst $38                                       ; $7745: $ff
    rst $38                                       ; $7746: $ff
    rst $38                                       ; $7747: $ff
    rst $38                                       ; $7748: $ff
    rst $38                                       ; $7749: $ff
    rst $38                                       ; $774a: $ff
    rst $38                                       ; $774b: $ff
    rst $38                                       ; $774c: $ff
    rst $38                                       ; $774d: $ff
    rst $38                                       ; $774e: $ff
    rst $38                                       ; $774f: $ff
    rst $38                                       ; $7750: $ff
    rst $38                                       ; $7751: $ff
    rst $38                                       ; $7752: $ff
    rst $38                                       ; $7753: $ff
    rst $38                                       ; $7754: $ff
    rst $38                                       ; $7755: $ff
    rst $38                                       ; $7756: $ff
    rst $38                                       ; $7757: $ff
    rst $38                                       ; $7758: $ff
    rst $38                                       ; $7759: $ff
    rst $38                                       ; $775a: $ff
    rst $38                                       ; $775b: $ff
    rst $38                                       ; $775c: $ff
    rst $38                                       ; $775d: $ff
    rst $38                                       ; $775e: $ff
    rst $38                                       ; $775f: $ff
    rst $38                                       ; $7760: $ff
    rst $38                                       ; $7761: $ff
    rst $38                                       ; $7762: $ff
    rst $38                                       ; $7763: $ff
    rst $38                                       ; $7764: $ff
    rst $38                                       ; $7765: $ff
    rst $38                                       ; $7766: $ff
    rst $38                                       ; $7767: $ff
    rst $38                                       ; $7768: $ff
    rst $38                                       ; $7769: $ff
    rst $38                                       ; $776a: $ff
    rst $38                                       ; $776b: $ff
    rst $38                                       ; $776c: $ff
    rst $38                                       ; $776d: $ff
    rst $38                                       ; $776e: $ff
    rst $38                                       ; $776f: $ff
    rst $38                                       ; $7770: $ff
    rst $38                                       ; $7771: $ff
    rst $38                                       ; $7772: $ff
    rst $38                                       ; $7773: $ff
    rst $38                                       ; $7774: $ff
    rst $38                                       ; $7775: $ff
    rst $38                                       ; $7776: $ff
    rst $38                                       ; $7777: $ff
    rst $38                                       ; $7778: $ff
    rst $38                                       ; $7779: $ff
    rst $38                                       ; $777a: $ff
    rst $38                                       ; $777b: $ff
    rst $38                                       ; $777c: $ff
    rst $38                                       ; $777d: $ff
    rst $38                                       ; $777e: $ff
    rst $38                                       ; $777f: $ff
    rst $38                                       ; $7780: $ff
    rst $38                                       ; $7781: $ff
    rst $38                                       ; $7782: $ff
    rst $38                                       ; $7783: $ff
    rst $38                                       ; $7784: $ff
    rst $38                                       ; $7785: $ff
    rst $38                                       ; $7786: $ff
    rst $38                                       ; $7787: $ff
    rst $38                                       ; $7788: $ff
    rst $38                                       ; $7789: $ff
    rst $38                                       ; $778a: $ff
    rst $38                                       ; $778b: $ff
    rst $38                                       ; $778c: $ff
    rst $38                                       ; $778d: $ff
    rst $38                                       ; $778e: $ff
    rst $38                                       ; $778f: $ff
    rst $38                                       ; $7790: $ff
    rst $38                                       ; $7791: $ff
    rst $38                                       ; $7792: $ff
    rst $38                                       ; $7793: $ff
    rst $38                                       ; $7794: $ff
    rst $38                                       ; $7795: $ff
    rst $38                                       ; $7796: $ff
    rst $38                                       ; $7797: $ff
    rst $38                                       ; $7798: $ff
    rst $38                                       ; $7799: $ff
    rst $38                                       ; $779a: $ff
    rst $38                                       ; $779b: $ff
    rst $38                                       ; $779c: $ff
    rst $38                                       ; $779d: $ff
    rst $38                                       ; $779e: $ff
    rst $38                                       ; $779f: $ff
    rst $38                                       ; $77a0: $ff
    rst $38                                       ; $77a1: $ff
    rst $38                                       ; $77a2: $ff
    rst $38                                       ; $77a3: $ff
    rst $38                                       ; $77a4: $ff
    rst $38                                       ; $77a5: $ff
    rst $38                                       ; $77a6: $ff
    rst $38                                       ; $77a7: $ff
    rst $38                                       ; $77a8: $ff
    rst $38                                       ; $77a9: $ff
    rst $38                                       ; $77aa: $ff
    rst $38                                       ; $77ab: $ff
    rst $38                                       ; $77ac: $ff
    rst $38                                       ; $77ad: $ff
    rst $38                                       ; $77ae: $ff
    rst $38                                       ; $77af: $ff
    rst $38                                       ; $77b0: $ff
    rst $38                                       ; $77b1: $ff
    rst $38                                       ; $77b2: $ff
    rst $38                                       ; $77b3: $ff
    rst $38                                       ; $77b4: $ff
    rst $38                                       ; $77b5: $ff
    rst $38                                       ; $77b6: $ff
    rst $38                                       ; $77b7: $ff
    rst $38                                       ; $77b8: $ff
    rst $38                                       ; $77b9: $ff
    rst $38                                       ; $77ba: $ff
    rst $38                                       ; $77bb: $ff
    rst $38                                       ; $77bc: $ff
    rst $38                                       ; $77bd: $ff
    rst $38                                       ; $77be: $ff
    rst $38                                       ; $77bf: $ff
    rst $38                                       ; $77c0: $ff
    rst $38                                       ; $77c1: $ff
    rst $38                                       ; $77c2: $ff
    rst $38                                       ; $77c3: $ff
    rst $38                                       ; $77c4: $ff
    rst $38                                       ; $77c5: $ff
    rst $38                                       ; $77c6: $ff
    rst $38                                       ; $77c7: $ff
    rst $38                                       ; $77c8: $ff
    rst $38                                       ; $77c9: $ff
    rst $38                                       ; $77ca: $ff
    rst $38                                       ; $77cb: $ff
    rst $38                                       ; $77cc: $ff
    rst $38                                       ; $77cd: $ff
    rst $38                                       ; $77ce: $ff
    rst $38                                       ; $77cf: $ff
    rst $38                                       ; $77d0: $ff
    rst $38                                       ; $77d1: $ff
    rst $38                                       ; $77d2: $ff
    rst $38                                       ; $77d3: $ff
    rst $38                                       ; $77d4: $ff
    rst $38                                       ; $77d5: $ff
    rst $38                                       ; $77d6: $ff
    rst $38                                       ; $77d7: $ff
    rst $38                                       ; $77d8: $ff
    rst $38                                       ; $77d9: $ff
    rst $38                                       ; $77da: $ff
    rst $38                                       ; $77db: $ff
    rst $38                                       ; $77dc: $ff
    rst $38                                       ; $77dd: $ff
    rst $38                                       ; $77de: $ff
    rst $38                                       ; $77df: $ff
    rst $38                                       ; $77e0: $ff
    rst $38                                       ; $77e1: $ff
    rst $38                                       ; $77e2: $ff
    rst $38                                       ; $77e3: $ff
    rst $38                                       ; $77e4: $ff
    rst $38                                       ; $77e5: $ff
    rst $38                                       ; $77e6: $ff
    rst $38                                       ; $77e7: $ff
    rst $38                                       ; $77e8: $ff
    rst $38                                       ; $77e9: $ff
    rst $38                                       ; $77ea: $ff
    rst $38                                       ; $77eb: $ff
    rst $38                                       ; $77ec: $ff
    rst $38                                       ; $77ed: $ff
    rst $38                                       ; $77ee: $ff
    rst $38                                       ; $77ef: $ff
    rst $38                                       ; $77f0: $ff
    rst $38                                       ; $77f1: $ff
    rst $38                                       ; $77f2: $ff
    rst $38                                       ; $77f3: $ff
    rst $38                                       ; $77f4: $ff
    rst $38                                       ; $77f5: $ff
    rst $38                                       ; $77f6: $ff
    rst $38                                       ; $77f7: $ff
    rst $38                                       ; $77f8: $ff
    rst $38                                       ; $77f9: $ff
    rst $38                                       ; $77fa: $ff
    rst $38                                       ; $77fb: $ff
    rst $38                                       ; $77fc: $ff
    rst $38                                       ; $77fd: $ff
    rst $38                                       ; $77fe: $ff
    rst $38                                       ; $77ff: $ff
    rst $38                                       ; $7800: $ff
    rst $38                                       ; $7801: $ff
    rst $38                                       ; $7802: $ff
    rst $38                                       ; $7803: $ff
    rst $38                                       ; $7804: $ff
    rst $38                                       ; $7805: $ff
    rst $38                                       ; $7806: $ff
    rst $38                                       ; $7807: $ff
    rst $38                                       ; $7808: $ff
    rst $38                                       ; $7809: $ff
    rst $38                                       ; $780a: $ff
    rst $38                                       ; $780b: $ff
    rst $38                                       ; $780c: $ff
    rst $38                                       ; $780d: $ff
    rst $38                                       ; $780e: $ff
    rst $38                                       ; $780f: $ff
    rst $38                                       ; $7810: $ff
    rst $38                                       ; $7811: $ff
    rst $38                                       ; $7812: $ff
    rst $38                                       ; $7813: $ff
    rst $38                                       ; $7814: $ff
    rst $38                                       ; $7815: $ff
    rst $38                                       ; $7816: $ff
    rst $38                                       ; $7817: $ff
    rst $38                                       ; $7818: $ff
    rst $38                                       ; $7819: $ff
    rst $38                                       ; $781a: $ff
    rst $38                                       ; $781b: $ff
    rst $38                                       ; $781c: $ff
    rst $38                                       ; $781d: $ff
    rst $38                                       ; $781e: $ff
    rst $38                                       ; $781f: $ff
    rst $38                                       ; $7820: $ff
    rst $38                                       ; $7821: $ff
    rst $38                                       ; $7822: $ff
    rst $38                                       ; $7823: $ff
    rst $38                                       ; $7824: $ff
    rst $38                                       ; $7825: $ff
    rst $38                                       ; $7826: $ff
    rst $38                                       ; $7827: $ff
    rst $38                                       ; $7828: $ff
    rst $38                                       ; $7829: $ff
    rst $38                                       ; $782a: $ff
    rst $38                                       ; $782b: $ff
    rst $38                                       ; $782c: $ff
    rst $38                                       ; $782d: $ff
    rst $38                                       ; $782e: $ff
    rst $38                                       ; $782f: $ff
    rst $38                                       ; $7830: $ff
    rst $38                                       ; $7831: $ff
    rst $38                                       ; $7832: $ff
    rst $38                                       ; $7833: $ff
    rst $38                                       ; $7834: $ff
    rst $38                                       ; $7835: $ff
    rst $38                                       ; $7836: $ff
    rst $38                                       ; $7837: $ff
    rst $38                                       ; $7838: $ff
    rst $38                                       ; $7839: $ff
    rst $38                                       ; $783a: $ff
    rst $38                                       ; $783b: $ff
    rst $38                                       ; $783c: $ff
    rst $38                                       ; $783d: $ff
    rst $38                                       ; $783e: $ff
    rst $38                                       ; $783f: $ff
    rst $38                                       ; $7840: $ff
    rst $38                                       ; $7841: $ff
    rst $38                                       ; $7842: $ff
    rst $38                                       ; $7843: $ff
    rst $38                                       ; $7844: $ff
    rst $38                                       ; $7845: $ff
    rst $38                                       ; $7846: $ff
    rst $38                                       ; $7847: $ff
    rst $38                                       ; $7848: $ff
    rst $38                                       ; $7849: $ff
    rst $38                                       ; $784a: $ff
    rst $38                                       ; $784b: $ff
    rst $38                                       ; $784c: $ff
    rst $38                                       ; $784d: $ff
    rst $38                                       ; $784e: $ff
    rst $38                                       ; $784f: $ff
    rst $38                                       ; $7850: $ff
    rst $38                                       ; $7851: $ff
    rst $38                                       ; $7852: $ff
    rst $38                                       ; $7853: $ff
    rst $38                                       ; $7854: $ff
    rst $38                                       ; $7855: $ff
    rst $38                                       ; $7856: $ff
    rst $38                                       ; $7857: $ff
    rst $38                                       ; $7858: $ff
    rst $38                                       ; $7859: $ff
    rst $38                                       ; $785a: $ff
    rst $38                                       ; $785b: $ff
    rst $38                                       ; $785c: $ff
    rst $38                                       ; $785d: $ff
    rst $38                                       ; $785e: $ff
    rst $38                                       ; $785f: $ff
    rst $38                                       ; $7860: $ff
    rst $38                                       ; $7861: $ff
    rst $38                                       ; $7862: $ff
    rst $38                                       ; $7863: $ff
    rst $38                                       ; $7864: $ff
    rst $38                                       ; $7865: $ff
    rst $38                                       ; $7866: $ff
    rst $38                                       ; $7867: $ff
    rst $38                                       ; $7868: $ff
    rst $38                                       ; $7869: $ff
    rst $38                                       ; $786a: $ff
    rst $38                                       ; $786b: $ff
    rst $38                                       ; $786c: $ff
    rst $38                                       ; $786d: $ff
    rst $38                                       ; $786e: $ff
    rst $38                                       ; $786f: $ff
    rst $38                                       ; $7870: $ff
    rst $38                                       ; $7871: $ff
    rst $38                                       ; $7872: $ff
    rst $38                                       ; $7873: $ff
    rst $38                                       ; $7874: $ff
    rst $38                                       ; $7875: $ff
    rst $38                                       ; $7876: $ff
    rst $38                                       ; $7877: $ff
    rst $38                                       ; $7878: $ff
    rst $38                                       ; $7879: $ff
    rst $38                                       ; $787a: $ff
    rst $38                                       ; $787b: $ff
    rst $38                                       ; $787c: $ff
    rst $38                                       ; $787d: $ff
    rst $38                                       ; $787e: $ff
    rst $38                                       ; $787f: $ff
    rst $38                                       ; $7880: $ff
    rst $38                                       ; $7881: $ff
    rst $38                                       ; $7882: $ff
    rst $38                                       ; $7883: $ff
    rst $38                                       ; $7884: $ff
    rst $38                                       ; $7885: $ff
    rst $38                                       ; $7886: $ff
    rst $38                                       ; $7887: $ff
    rst $38                                       ; $7888: $ff
    rst $38                                       ; $7889: $ff
    rst $38                                       ; $788a: $ff
    rst $38                                       ; $788b: $ff
    rst $38                                       ; $788c: $ff
    rst $38                                       ; $788d: $ff
    rst $38                                       ; $788e: $ff
    rst $38                                       ; $788f: $ff
    rst $38                                       ; $7890: $ff
    rst $38                                       ; $7891: $ff
    rst $38                                       ; $7892: $ff
    rst $38                                       ; $7893: $ff
    rst $38                                       ; $7894: $ff
    rst $38                                       ; $7895: $ff
    rst $38                                       ; $7896: $ff
    rst $38                                       ; $7897: $ff
    rst $38                                       ; $7898: $ff
    rst $38                                       ; $7899: $ff
    rst $38                                       ; $789a: $ff
    rst $38                                       ; $789b: $ff
    rst $38                                       ; $789c: $ff
    rst $38                                       ; $789d: $ff
    rst $38                                       ; $789e: $ff
    rst $38                                       ; $789f: $ff
    rst $38                                       ; $78a0: $ff
    rst $38                                       ; $78a1: $ff
    rst $38                                       ; $78a2: $ff
    rst $38                                       ; $78a3: $ff
    rst $38                                       ; $78a4: $ff
    rst $38                                       ; $78a5: $ff
    rst $38                                       ; $78a6: $ff
    rst $38                                       ; $78a7: $ff
    rst $38                                       ; $78a8: $ff
    rst $38                                       ; $78a9: $ff
    rst $38                                       ; $78aa: $ff
    rst $38                                       ; $78ab: $ff
    rst $38                                       ; $78ac: $ff
    rst $38                                       ; $78ad: $ff
    rst $38                                       ; $78ae: $ff
    rst $38                                       ; $78af: $ff
    rst $38                                       ; $78b0: $ff
    rst $38                                       ; $78b1: $ff
    rst $38                                       ; $78b2: $ff
    rst $38                                       ; $78b3: $ff
    rst $38                                       ; $78b4: $ff
    rst $38                                       ; $78b5: $ff
    rst $38                                       ; $78b6: $ff
    rst $38                                       ; $78b7: $ff
    rst $38                                       ; $78b8: $ff
    rst $38                                       ; $78b9: $ff
    rst $38                                       ; $78ba: $ff
    rst $38                                       ; $78bb: $ff
    rst $38                                       ; $78bc: $ff
    rst $38                                       ; $78bd: $ff
    rst $38                                       ; $78be: $ff
    rst $38                                       ; $78bf: $ff
    rst $38                                       ; $78c0: $ff
    rst $38                                       ; $78c1: $ff
    rst $38                                       ; $78c2: $ff
    rst $38                                       ; $78c3: $ff
    rst $38                                       ; $78c4: $ff
    rst $38                                       ; $78c5: $ff
    rst $38                                       ; $78c6: $ff
    rst $38                                       ; $78c7: $ff
    rst $38                                       ; $78c8: $ff
    rst $38                                       ; $78c9: $ff
    rst $38                                       ; $78ca: $ff
    rst $38                                       ; $78cb: $ff
    rst $38                                       ; $78cc: $ff
    rst $38                                       ; $78cd: $ff
    rst $38                                       ; $78ce: $ff
    rst $38                                       ; $78cf: $ff
    rst $38                                       ; $78d0: $ff
    rst $38                                       ; $78d1: $ff
    rst $38                                       ; $78d2: $ff
    rst $38                                       ; $78d3: $ff
    rst $38                                       ; $78d4: $ff
    rst $38                                       ; $78d5: $ff
    rst $38                                       ; $78d6: $ff
    rst $38                                       ; $78d7: $ff
    rst $38                                       ; $78d8: $ff
    rst $38                                       ; $78d9: $ff
    rst $38                                       ; $78da: $ff
    rst $38                                       ; $78db: $ff
    rst $38                                       ; $78dc: $ff
    rst $38                                       ; $78dd: $ff
    rst $38                                       ; $78de: $ff
    rst $38                                       ; $78df: $ff
    rst $38                                       ; $78e0: $ff
    rst $38                                       ; $78e1: $ff
    rst $38                                       ; $78e2: $ff
    rst $38                                       ; $78e3: $ff
    rst $38                                       ; $78e4: $ff
    rst $38                                       ; $78e5: $ff
    rst $38                                       ; $78e6: $ff
    rst $38                                       ; $78e7: $ff
    rst $38                                       ; $78e8: $ff
    rst $38                                       ; $78e9: $ff
    rst $38                                       ; $78ea: $ff
    rst $38                                       ; $78eb: $ff
    rst $38                                       ; $78ec: $ff
    rst $38                                       ; $78ed: $ff
    rst $38                                       ; $78ee: $ff
    rst $38                                       ; $78ef: $ff
    rst $38                                       ; $78f0: $ff
    rst $38                                       ; $78f1: $ff
    rst $38                                       ; $78f2: $ff
    rst $38                                       ; $78f3: $ff
    rst $38                                       ; $78f4: $ff
    rst $38                                       ; $78f5: $ff
    rst $38                                       ; $78f6: $ff
    rst $38                                       ; $78f7: $ff
    rst $38                                       ; $78f8: $ff
    rst $38                                       ; $78f9: $ff
    rst $38                                       ; $78fa: $ff
    rst $38                                       ; $78fb: $ff
    rst $38                                       ; $78fc: $ff
    rst $38                                       ; $78fd: $ff
    rst $38                                       ; $78fe: $ff
    rst $38                                       ; $78ff: $ff
    rst $38                                       ; $7900: $ff
    rst $38                                       ; $7901: $ff
    rst $38                                       ; $7902: $ff
    rst $38                                       ; $7903: $ff
    rst $38                                       ; $7904: $ff
    rst $38                                       ; $7905: $ff
    rst $38                                       ; $7906: $ff
    rst $38                                       ; $7907: $ff
    rst $38                                       ; $7908: $ff
    rst $38                                       ; $7909: $ff
    rst $38                                       ; $790a: $ff
    rst $38                                       ; $790b: $ff
    rst $38                                       ; $790c: $ff
    rst $38                                       ; $790d: $ff
    rst $38                                       ; $790e: $ff
    rst $38                                       ; $790f: $ff
    rst $38                                       ; $7910: $ff
    rst $38                                       ; $7911: $ff
    rst $38                                       ; $7912: $ff
    rst $38                                       ; $7913: $ff
    rst $38                                       ; $7914: $ff
    rst $38                                       ; $7915: $ff
    rst $38                                       ; $7916: $ff
    rst $38                                       ; $7917: $ff
    rst $38                                       ; $7918: $ff
    rst $38                                       ; $7919: $ff
    rst $38                                       ; $791a: $ff
    rst $38                                       ; $791b: $ff
    rst $38                                       ; $791c: $ff
    rst $38                                       ; $791d: $ff
    rst $38                                       ; $791e: $ff
    rst $38                                       ; $791f: $ff
    rst $38                                       ; $7920: $ff
    rst $38                                       ; $7921: $ff
    rst $38                                       ; $7922: $ff
    rst $38                                       ; $7923: $ff
    rst $38                                       ; $7924: $ff
    rst $38                                       ; $7925: $ff
    rst $38                                       ; $7926: $ff
    rst $38                                       ; $7927: $ff
    rst $38                                       ; $7928: $ff
    rst $38                                       ; $7929: $ff
    rst $38                                       ; $792a: $ff
    rst $38                                       ; $792b: $ff
    rst $38                                       ; $792c: $ff
    rst $38                                       ; $792d: $ff
    rst $38                                       ; $792e: $ff
    rst $38                                       ; $792f: $ff
    rst $38                                       ; $7930: $ff
    rst $38                                       ; $7931: $ff
    rst $38                                       ; $7932: $ff
    rst $38                                       ; $7933: $ff
    rst $38                                       ; $7934: $ff
    rst $38                                       ; $7935: $ff
    rst $38                                       ; $7936: $ff
    rst $38                                       ; $7937: $ff
    rst $38                                       ; $7938: $ff
    rst $38                                       ; $7939: $ff
    rst $38                                       ; $793a: $ff
    rst $38                                       ; $793b: $ff
    rst $38                                       ; $793c: $ff
    rst $38                                       ; $793d: $ff
    rst $38                                       ; $793e: $ff
    rst $38                                       ; $793f: $ff
    rst $38                                       ; $7940: $ff
    rst $38                                       ; $7941: $ff
    rst $38                                       ; $7942: $ff
    rst $38                                       ; $7943: $ff
    rst $38                                       ; $7944: $ff
    rst $38                                       ; $7945: $ff
    rst $38                                       ; $7946: $ff
    rst $38                                       ; $7947: $ff
    rst $38                                       ; $7948: $ff
    rst $38                                       ; $7949: $ff
    rst $38                                       ; $794a: $ff
    rst $38                                       ; $794b: $ff
    rst $38                                       ; $794c: $ff
    rst $38                                       ; $794d: $ff
    rst $38                                       ; $794e: $ff
    rst $38                                       ; $794f: $ff
    rst $38                                       ; $7950: $ff
    rst $38                                       ; $7951: $ff
    rst $38                                       ; $7952: $ff
    rst $38                                       ; $7953: $ff
    rst $38                                       ; $7954: $ff
    rst $38                                       ; $7955: $ff
    rst $38                                       ; $7956: $ff
    rst $38                                       ; $7957: $ff
    rst $38                                       ; $7958: $ff
    rst $38                                       ; $7959: $ff
    rst $38                                       ; $795a: $ff
    rst $38                                       ; $795b: $ff
    rst $38                                       ; $795c: $ff
    rst $38                                       ; $795d: $ff
    rst $38                                       ; $795e: $ff
    rst $38                                       ; $795f: $ff
    rst $38                                       ; $7960: $ff
    rst $38                                       ; $7961: $ff
    rst $38                                       ; $7962: $ff
    rst $38                                       ; $7963: $ff
    rst $38                                       ; $7964: $ff
    rst $38                                       ; $7965: $ff
    rst $38                                       ; $7966: $ff
    rst $38                                       ; $7967: $ff
    rst $38                                       ; $7968: $ff
    rst $38                                       ; $7969: $ff
    rst $38                                       ; $796a: $ff
    rst $38                                       ; $796b: $ff
    rst $38                                       ; $796c: $ff
    rst $38                                       ; $796d: $ff
    rst $38                                       ; $796e: $ff
    rst $38                                       ; $796f: $ff
    rst $38                                       ; $7970: $ff
    rst $38                                       ; $7971: $ff
    rst $38                                       ; $7972: $ff
    rst $38                                       ; $7973: $ff
    rst $38                                       ; $7974: $ff
    rst $38                                       ; $7975: $ff
    rst $38                                       ; $7976: $ff
    rst $38                                       ; $7977: $ff
    rst $38                                       ; $7978: $ff
    rst $38                                       ; $7979: $ff
    rst $38                                       ; $797a: $ff
    rst $38                                       ; $797b: $ff
    rst $38                                       ; $797c: $ff
    rst $38                                       ; $797d: $ff
    rst $38                                       ; $797e: $ff
    rst $38                                       ; $797f: $ff
    rst $38                                       ; $7980: $ff
    rst $38                                       ; $7981: $ff
    rst $38                                       ; $7982: $ff
    rst $38                                       ; $7983: $ff
    rst $38                                       ; $7984: $ff
    rst $38                                       ; $7985: $ff
    rst $38                                       ; $7986: $ff
    rst $38                                       ; $7987: $ff
    rst $38                                       ; $7988: $ff
    rst $38                                       ; $7989: $ff
    rst $38                                       ; $798a: $ff
    rst $38                                       ; $798b: $ff
    rst $38                                       ; $798c: $ff
    rst $38                                       ; $798d: $ff
    rst $38                                       ; $798e: $ff
    rst $38                                       ; $798f: $ff
    rst $38                                       ; $7990: $ff
    rst $38                                       ; $7991: $ff
    rst $38                                       ; $7992: $ff
    rst $38                                       ; $7993: $ff
    rst $38                                       ; $7994: $ff
    rst $38                                       ; $7995: $ff
    rst $38                                       ; $7996: $ff
    rst $38                                       ; $7997: $ff
    rst $38                                       ; $7998: $ff
    rst $38                                       ; $7999: $ff
    rst $38                                       ; $799a: $ff
    rst $38                                       ; $799b: $ff
    rst $38                                       ; $799c: $ff
    rst $38                                       ; $799d: $ff
    rst $38                                       ; $799e: $ff
    rst $38                                       ; $799f: $ff
    rst $38                                       ; $79a0: $ff
    rst $38                                       ; $79a1: $ff
    rst $38                                       ; $79a2: $ff
    rst $38                                       ; $79a3: $ff
    rst $38                                       ; $79a4: $ff
    rst $38                                       ; $79a5: $ff
    rst $38                                       ; $79a6: $ff
    rst $38                                       ; $79a7: $ff
    rst $38                                       ; $79a8: $ff
    rst $38                                       ; $79a9: $ff
    rst $38                                       ; $79aa: $ff
    rst $38                                       ; $79ab: $ff
    rst $38                                       ; $79ac: $ff
    rst $38                                       ; $79ad: $ff
    rst $38                                       ; $79ae: $ff
    rst $38                                       ; $79af: $ff
    rst $38                                       ; $79b0: $ff
    rst $38                                       ; $79b1: $ff
    rst $38                                       ; $79b2: $ff
    rst $38                                       ; $79b3: $ff
    rst $38                                       ; $79b4: $ff
    rst $38                                       ; $79b5: $ff
    rst $38                                       ; $79b6: $ff
    rst $38                                       ; $79b7: $ff
    rst $38                                       ; $79b8: $ff
    rst $38                                       ; $79b9: $ff
    rst $38                                       ; $79ba: $ff
    rst $38                                       ; $79bb: $ff
    rst $38                                       ; $79bc: $ff
    rst $38                                       ; $79bd: $ff
    rst $38                                       ; $79be: $ff
    rst $38                                       ; $79bf: $ff
    rst $38                                       ; $79c0: $ff
    rst $38                                       ; $79c1: $ff
    rst $38                                       ; $79c2: $ff
    rst $38                                       ; $79c3: $ff
    rst $38                                       ; $79c4: $ff
    rst $38                                       ; $79c5: $ff
    rst $38                                       ; $79c6: $ff
    rst $38                                       ; $79c7: $ff
    rst $38                                       ; $79c8: $ff
    rst $38                                       ; $79c9: $ff
    rst $38                                       ; $79ca: $ff
    rst $38                                       ; $79cb: $ff
    rst $38                                       ; $79cc: $ff
    rst $38                                       ; $79cd: $ff
    rst $38                                       ; $79ce: $ff
    rst $38                                       ; $79cf: $ff
    rst $38                                       ; $79d0: $ff
    rst $38                                       ; $79d1: $ff
    rst $38                                       ; $79d2: $ff
    rst $38                                       ; $79d3: $ff
    rst $38                                       ; $79d4: $ff
    rst $38                                       ; $79d5: $ff
    rst $38                                       ; $79d6: $ff
    rst $38                                       ; $79d7: $ff
    rst $38                                       ; $79d8: $ff
    rst $38                                       ; $79d9: $ff
    rst $38                                       ; $79da: $ff
    rst $38                                       ; $79db: $ff
    rst $38                                       ; $79dc: $ff
    rst $38                                       ; $79dd: $ff
    rst $38                                       ; $79de: $ff
    rst $38                                       ; $79df: $ff
    rst $38                                       ; $79e0: $ff
    rst $38                                       ; $79e1: $ff
    rst $38                                       ; $79e2: $ff
    rst $38                                       ; $79e3: $ff
    rst $38                                       ; $79e4: $ff
    rst $38                                       ; $79e5: $ff
    rst $38                                       ; $79e6: $ff
    rst $38                                       ; $79e7: $ff
    rst $38                                       ; $79e8: $ff
    rst $38                                       ; $79e9: $ff
    rst $38                                       ; $79ea: $ff
    rst $38                                       ; $79eb: $ff
    rst $38                                       ; $79ec: $ff
    rst $38                                       ; $79ed: $ff
    rst $38                                       ; $79ee: $ff
    rst $38                                       ; $79ef: $ff
    rst $38                                       ; $79f0: $ff
    rst $38                                       ; $79f1: $ff
    rst $38                                       ; $79f2: $ff
    rst $38                                       ; $79f3: $ff
    rst $38                                       ; $79f4: $ff
    rst $38                                       ; $79f5: $ff
    rst $38                                       ; $79f6: $ff
    rst $38                                       ; $79f7: $ff
    rst $38                                       ; $79f8: $ff
    rst $38                                       ; $79f9: $ff
    rst $38                                       ; $79fa: $ff
    rst $38                                       ; $79fb: $ff
    rst $38                                       ; $79fc: $ff
    rst $38                                       ; $79fd: $ff
    rst $38                                       ; $79fe: $ff
    rst $38                                       ; $79ff: $ff
    rst $38                                       ; $7a00: $ff
    rst $38                                       ; $7a01: $ff
    rst $38                                       ; $7a02: $ff
    rst $38                                       ; $7a03: $ff
    rst $38                                       ; $7a04: $ff
    rst $38                                       ; $7a05: $ff
    rst $38                                       ; $7a06: $ff
    rst $38                                       ; $7a07: $ff
    rst $38                                       ; $7a08: $ff
    rst $38                                       ; $7a09: $ff
    rst $38                                       ; $7a0a: $ff
    rst $38                                       ; $7a0b: $ff
    rst $38                                       ; $7a0c: $ff
    rst $38                                       ; $7a0d: $ff
    rst $38                                       ; $7a0e: $ff
    rst $38                                       ; $7a0f: $ff
    rst $38                                       ; $7a10: $ff
    rst $38                                       ; $7a11: $ff
    rst $38                                       ; $7a12: $ff
    rst $38                                       ; $7a13: $ff
    rst $38                                       ; $7a14: $ff
    rst $38                                       ; $7a15: $ff
    rst $38                                       ; $7a16: $ff
    rst $38                                       ; $7a17: $ff
    rst $38                                       ; $7a18: $ff
    rst $38                                       ; $7a19: $ff
    rst $38                                       ; $7a1a: $ff
    rst $38                                       ; $7a1b: $ff
    rst $38                                       ; $7a1c: $ff
    rst $38                                       ; $7a1d: $ff
    rst $38                                       ; $7a1e: $ff
    rst $38                                       ; $7a1f: $ff
    rst $38                                       ; $7a20: $ff
    rst $38                                       ; $7a21: $ff
    rst $38                                       ; $7a22: $ff
    rst $38                                       ; $7a23: $ff
    rst $38                                       ; $7a24: $ff
    rst $38                                       ; $7a25: $ff
    rst $38                                       ; $7a26: $ff
    rst $38                                       ; $7a27: $ff
    rst $38                                       ; $7a28: $ff
    rst $38                                       ; $7a29: $ff
    rst $38                                       ; $7a2a: $ff
    rst $38                                       ; $7a2b: $ff
    rst $38                                       ; $7a2c: $ff
    rst $38                                       ; $7a2d: $ff
    rst $38                                       ; $7a2e: $ff
    rst $38                                       ; $7a2f: $ff
    rst $38                                       ; $7a30: $ff
    rst $38                                       ; $7a31: $ff
    rst $38                                       ; $7a32: $ff
    rst $38                                       ; $7a33: $ff
    rst $38                                       ; $7a34: $ff
    rst $38                                       ; $7a35: $ff
    rst $38                                       ; $7a36: $ff
    rst $38                                       ; $7a37: $ff
    rst $38                                       ; $7a38: $ff
    rst $38                                       ; $7a39: $ff
    rst $38                                       ; $7a3a: $ff
    rst $38                                       ; $7a3b: $ff
    rst $38                                       ; $7a3c: $ff
    rst $38                                       ; $7a3d: $ff
    rst $38                                       ; $7a3e: $ff
    rst $38                                       ; $7a3f: $ff
    rst $38                                       ; $7a40: $ff
    rst $38                                       ; $7a41: $ff
    rst $38                                       ; $7a42: $ff
    rst $38                                       ; $7a43: $ff
    rst $38                                       ; $7a44: $ff
    rst $38                                       ; $7a45: $ff
    rst $38                                       ; $7a46: $ff
    rst $38                                       ; $7a47: $ff
    rst $38                                       ; $7a48: $ff
    rst $38                                       ; $7a49: $ff
    rst $38                                       ; $7a4a: $ff
    rst $38                                       ; $7a4b: $ff
    rst $38                                       ; $7a4c: $ff
    rst $38                                       ; $7a4d: $ff
    rst $38                                       ; $7a4e: $ff
    rst $38                                       ; $7a4f: $ff
    rst $38                                       ; $7a50: $ff
    rst $38                                       ; $7a51: $ff
    rst $38                                       ; $7a52: $ff
    rst $38                                       ; $7a53: $ff
    rst $38                                       ; $7a54: $ff
    rst $38                                       ; $7a55: $ff
    rst $38                                       ; $7a56: $ff
    rst $38                                       ; $7a57: $ff
    rst $38                                       ; $7a58: $ff
    rst $38                                       ; $7a59: $ff
    rst $38                                       ; $7a5a: $ff
    rst $38                                       ; $7a5b: $ff
    rst $38                                       ; $7a5c: $ff
    rst $38                                       ; $7a5d: $ff
    rst $38                                       ; $7a5e: $ff
    rst $38                                       ; $7a5f: $ff
    rst $38                                       ; $7a60: $ff
    rst $38                                       ; $7a61: $ff
    rst $38                                       ; $7a62: $ff
    rst $38                                       ; $7a63: $ff
    rst $38                                       ; $7a64: $ff
    rst $38                                       ; $7a65: $ff
    rst $38                                       ; $7a66: $ff
    rst $38                                       ; $7a67: $ff
    rst $38                                       ; $7a68: $ff
    rst $38                                       ; $7a69: $ff
    rst $38                                       ; $7a6a: $ff
    rst $38                                       ; $7a6b: $ff
    rst $38                                       ; $7a6c: $ff
    rst $38                                       ; $7a6d: $ff
    rst $38                                       ; $7a6e: $ff
    rst $38                                       ; $7a6f: $ff
    rst $38                                       ; $7a70: $ff
    rst $38                                       ; $7a71: $ff
    rst $38                                       ; $7a72: $ff
    rst $38                                       ; $7a73: $ff
    rst $38                                       ; $7a74: $ff
    rst $38                                       ; $7a75: $ff
    rst $38                                       ; $7a76: $ff
    rst $38                                       ; $7a77: $ff
    rst $38                                       ; $7a78: $ff
    rst $38                                       ; $7a79: $ff
    rst $38                                       ; $7a7a: $ff
    rst $38                                       ; $7a7b: $ff
    rst $38                                       ; $7a7c: $ff
    rst $38                                       ; $7a7d: $ff
    rst $38                                       ; $7a7e: $ff
    rst $38                                       ; $7a7f: $ff
    rst $38                                       ; $7a80: $ff
    rst $38                                       ; $7a81: $ff
    rst $38                                       ; $7a82: $ff
    rst $38                                       ; $7a83: $ff
    rst $38                                       ; $7a84: $ff
    rst $38                                       ; $7a85: $ff
    rst $38                                       ; $7a86: $ff
    rst $38                                       ; $7a87: $ff
    rst $38                                       ; $7a88: $ff
    rst $38                                       ; $7a89: $ff
    rst $38                                       ; $7a8a: $ff
    rst $38                                       ; $7a8b: $ff
    rst $38                                       ; $7a8c: $ff
    rst $38                                       ; $7a8d: $ff
    rst $38                                       ; $7a8e: $ff
    rst $38                                       ; $7a8f: $ff
    rst $38                                       ; $7a90: $ff
    rst $38                                       ; $7a91: $ff
    rst $38                                       ; $7a92: $ff
    rst $38                                       ; $7a93: $ff
    rst $38                                       ; $7a94: $ff
    rst $38                                       ; $7a95: $ff
    rst $38                                       ; $7a96: $ff
    rst $38                                       ; $7a97: $ff
    rst $38                                       ; $7a98: $ff
    rst $38                                       ; $7a99: $ff
    rst $38                                       ; $7a9a: $ff
    rst $38                                       ; $7a9b: $ff
    rst $38                                       ; $7a9c: $ff
    rst $38                                       ; $7a9d: $ff
    rst $38                                       ; $7a9e: $ff
    rst $38                                       ; $7a9f: $ff
    rst $38                                       ; $7aa0: $ff
    rst $38                                       ; $7aa1: $ff
    rst $38                                       ; $7aa2: $ff
    rst $38                                       ; $7aa3: $ff
    rst $38                                       ; $7aa4: $ff
    rst $38                                       ; $7aa5: $ff
    rst $38                                       ; $7aa6: $ff
    rst $38                                       ; $7aa7: $ff
    rst $38                                       ; $7aa8: $ff
    rst $38                                       ; $7aa9: $ff
    rst $38                                       ; $7aaa: $ff
    rst $38                                       ; $7aab: $ff
    rst $38                                       ; $7aac: $ff
    rst $38                                       ; $7aad: $ff
    rst $38                                       ; $7aae: $ff
    rst $38                                       ; $7aaf: $ff
    rst $38                                       ; $7ab0: $ff
    rst $38                                       ; $7ab1: $ff
    rst $38                                       ; $7ab2: $ff
    rst $38                                       ; $7ab3: $ff
    rst $38                                       ; $7ab4: $ff
    rst $38                                       ; $7ab5: $ff
    rst $38                                       ; $7ab6: $ff
    rst $38                                       ; $7ab7: $ff
    rst $38                                       ; $7ab8: $ff
    rst $38                                       ; $7ab9: $ff
    rst $38                                       ; $7aba: $ff
    rst $38                                       ; $7abb: $ff
    rst $38                                       ; $7abc: $ff
    rst $38                                       ; $7abd: $ff
    rst $38                                       ; $7abe: $ff
    rst $38                                       ; $7abf: $ff
    rst $38                                       ; $7ac0: $ff
    rst $38                                       ; $7ac1: $ff
    rst $38                                       ; $7ac2: $ff
    rst $38                                       ; $7ac3: $ff
    rst $38                                       ; $7ac4: $ff
    rst $38                                       ; $7ac5: $ff
    rst $38                                       ; $7ac6: $ff
    rst $38                                       ; $7ac7: $ff
    rst $38                                       ; $7ac8: $ff
    rst $38                                       ; $7ac9: $ff
    rst $38                                       ; $7aca: $ff
    rst $38                                       ; $7acb: $ff
    rst $38                                       ; $7acc: $ff
    rst $38                                       ; $7acd: $ff
    rst $38                                       ; $7ace: $ff
    rst $38                                       ; $7acf: $ff
    rst $38                                       ; $7ad0: $ff
    rst $38                                       ; $7ad1: $ff
    rst $38                                       ; $7ad2: $ff
    rst $38                                       ; $7ad3: $ff
    rst $38                                       ; $7ad4: $ff
    rst $38                                       ; $7ad5: $ff
    rst $38                                       ; $7ad6: $ff
    rst $38                                       ; $7ad7: $ff
    rst $38                                       ; $7ad8: $ff
    rst $38                                       ; $7ad9: $ff
    rst $38                                       ; $7ada: $ff
    rst $38                                       ; $7adb: $ff
    rst $38                                       ; $7adc: $ff
    rst $38                                       ; $7add: $ff
    rst $38                                       ; $7ade: $ff
    rst $38                                       ; $7adf: $ff
    rst $38                                       ; $7ae0: $ff
    rst $38                                       ; $7ae1: $ff
    rst $38                                       ; $7ae2: $ff
    rst $38                                       ; $7ae3: $ff
    rst $38                                       ; $7ae4: $ff
    rst $38                                       ; $7ae5: $ff
    rst $38                                       ; $7ae6: $ff
    rst $38                                       ; $7ae7: $ff
    rst $38                                       ; $7ae8: $ff
    rst $38                                       ; $7ae9: $ff
    rst $38                                       ; $7aea: $ff
    rst $38                                       ; $7aeb: $ff
    rst $38                                       ; $7aec: $ff
    rst $38                                       ; $7aed: $ff
    rst $38                                       ; $7aee: $ff
    rst $38                                       ; $7aef: $ff
    rst $38                                       ; $7af0: $ff
    rst $38                                       ; $7af1: $ff
    rst $38                                       ; $7af2: $ff
    rst $38                                       ; $7af3: $ff
    rst $38                                       ; $7af4: $ff
    rst $38                                       ; $7af5: $ff
    rst $38                                       ; $7af6: $ff
    rst $38                                       ; $7af7: $ff
    rst $38                                       ; $7af8: $ff
    rst $38                                       ; $7af9: $ff
    rst $38                                       ; $7afa: $ff
    rst $38                                       ; $7afb: $ff
    rst $38                                       ; $7afc: $ff
    rst $38                                       ; $7afd: $ff
    rst $38                                       ; $7afe: $ff
    rst $38                                       ; $7aff: $ff
    rst $38                                       ; $7b00: $ff
    rst $38                                       ; $7b01: $ff
    rst $38                                       ; $7b02: $ff
    rst $38                                       ; $7b03: $ff
    rst $38                                       ; $7b04: $ff
    rst $38                                       ; $7b05: $ff
    rst $38                                       ; $7b06: $ff
    rst $38                                       ; $7b07: $ff
    rst $38                                       ; $7b08: $ff
    rst $38                                       ; $7b09: $ff
    rst $38                                       ; $7b0a: $ff
    rst $38                                       ; $7b0b: $ff
    rst $38                                       ; $7b0c: $ff
    rst $38                                       ; $7b0d: $ff
    rst $38                                       ; $7b0e: $ff
    rst $38                                       ; $7b0f: $ff
    rst $38                                       ; $7b10: $ff
    rst $38                                       ; $7b11: $ff
    rst $38                                       ; $7b12: $ff
    rst $38                                       ; $7b13: $ff
    rst $38                                       ; $7b14: $ff
    rst $38                                       ; $7b15: $ff
    rst $38                                       ; $7b16: $ff
    rst $38                                       ; $7b17: $ff
    rst $38                                       ; $7b18: $ff
    rst $38                                       ; $7b19: $ff
    rst $38                                       ; $7b1a: $ff
    rst $38                                       ; $7b1b: $ff
    rst $38                                       ; $7b1c: $ff
    rst $38                                       ; $7b1d: $ff
    rst $38                                       ; $7b1e: $ff
    rst $38                                       ; $7b1f: $ff
    rst $38                                       ; $7b20: $ff
    rst $38                                       ; $7b21: $ff
    rst $38                                       ; $7b22: $ff
    rst $38                                       ; $7b23: $ff
    rst $38                                       ; $7b24: $ff
    rst $38                                       ; $7b25: $ff
    rst $38                                       ; $7b26: $ff
    rst $38                                       ; $7b27: $ff
    rst $38                                       ; $7b28: $ff
    rst $38                                       ; $7b29: $ff
    rst $38                                       ; $7b2a: $ff
    rst $38                                       ; $7b2b: $ff
    rst $38                                       ; $7b2c: $ff
    rst $38                                       ; $7b2d: $ff
    rst $38                                       ; $7b2e: $ff
    rst $38                                       ; $7b2f: $ff
    rst $38                                       ; $7b30: $ff
    rst $38                                       ; $7b31: $ff
    rst $38                                       ; $7b32: $ff
    rst $38                                       ; $7b33: $ff
    rst $38                                       ; $7b34: $ff
    rst $38                                       ; $7b35: $ff
    rst $38                                       ; $7b36: $ff
    rst $38                                       ; $7b37: $ff
    rst $38                                       ; $7b38: $ff
    rst $38                                       ; $7b39: $ff
    rst $38                                       ; $7b3a: $ff
    rst $38                                       ; $7b3b: $ff
    rst $38                                       ; $7b3c: $ff
    rst $38                                       ; $7b3d: $ff
    rst $38                                       ; $7b3e: $ff
    rst $38                                       ; $7b3f: $ff
    rst $38                                       ; $7b40: $ff
    rst $38                                       ; $7b41: $ff
    rst $38                                       ; $7b42: $ff
    rst $38                                       ; $7b43: $ff
    rst $38                                       ; $7b44: $ff
    rst $38                                       ; $7b45: $ff
    rst $38                                       ; $7b46: $ff
    rst $38                                       ; $7b47: $ff
    rst $38                                       ; $7b48: $ff
    rst $38                                       ; $7b49: $ff
    rst $38                                       ; $7b4a: $ff
    rst $38                                       ; $7b4b: $ff
    rst $38                                       ; $7b4c: $ff
    rst $38                                       ; $7b4d: $ff
    rst $38                                       ; $7b4e: $ff
    rst $38                                       ; $7b4f: $ff
    rst $38                                       ; $7b50: $ff
    rst $38                                       ; $7b51: $ff
    rst $38                                       ; $7b52: $ff
    rst $38                                       ; $7b53: $ff
    rst $38                                       ; $7b54: $ff
    rst $38                                       ; $7b55: $ff
    rst $38                                       ; $7b56: $ff
    rst $38                                       ; $7b57: $ff
    rst $38                                       ; $7b58: $ff
    rst $38                                       ; $7b59: $ff
    rst $38                                       ; $7b5a: $ff
    rst $38                                       ; $7b5b: $ff
    rst $38                                       ; $7b5c: $ff
    rst $38                                       ; $7b5d: $ff
    rst $38                                       ; $7b5e: $ff
    rst $38                                       ; $7b5f: $ff
    rst $38                                       ; $7b60: $ff
    rst $38                                       ; $7b61: $ff
    rst $38                                       ; $7b62: $ff
    rst $38                                       ; $7b63: $ff
    rst $38                                       ; $7b64: $ff
    rst $38                                       ; $7b65: $ff
    rst $38                                       ; $7b66: $ff
    rst $38                                       ; $7b67: $ff
    rst $38                                       ; $7b68: $ff
    rst $38                                       ; $7b69: $ff
    rst $38                                       ; $7b6a: $ff
    rst $38                                       ; $7b6b: $ff
    rst $38                                       ; $7b6c: $ff
    rst $38                                       ; $7b6d: $ff
    rst $38                                       ; $7b6e: $ff
    rst $38                                       ; $7b6f: $ff
    rst $38                                       ; $7b70: $ff
    rst $38                                       ; $7b71: $ff
    rst $38                                       ; $7b72: $ff
    rst $38                                       ; $7b73: $ff
    rst $38                                       ; $7b74: $ff
    rst $38                                       ; $7b75: $ff
    rst $38                                       ; $7b76: $ff
    rst $38                                       ; $7b77: $ff
    rst $38                                       ; $7b78: $ff
    rst $38                                       ; $7b79: $ff
    rst $38                                       ; $7b7a: $ff
    rst $38                                       ; $7b7b: $ff
    rst $38                                       ; $7b7c: $ff
    rst $38                                       ; $7b7d: $ff
    rst $38                                       ; $7b7e: $ff
    rst $38                                       ; $7b7f: $ff
    rst $38                                       ; $7b80: $ff
    rst $38                                       ; $7b81: $ff
    rst $38                                       ; $7b82: $ff
    rst $38                                       ; $7b83: $ff
    rst $38                                       ; $7b84: $ff
    rst $38                                       ; $7b85: $ff
    rst $38                                       ; $7b86: $ff
    rst $38                                       ; $7b87: $ff
    rst $38                                       ; $7b88: $ff
    rst $38                                       ; $7b89: $ff
    rst $38                                       ; $7b8a: $ff
    rst $38                                       ; $7b8b: $ff
    rst $38                                       ; $7b8c: $ff
    rst $38                                       ; $7b8d: $ff
    rst $38                                       ; $7b8e: $ff
    rst $38                                       ; $7b8f: $ff
    rst $38                                       ; $7b90: $ff
    rst $38                                       ; $7b91: $ff
    rst $38                                       ; $7b92: $ff
    rst $38                                       ; $7b93: $ff
    rst $38                                       ; $7b94: $ff
    rst $38                                       ; $7b95: $ff
    rst $38                                       ; $7b96: $ff
    rst $38                                       ; $7b97: $ff
    rst $38                                       ; $7b98: $ff
    rst $38                                       ; $7b99: $ff
    rst $38                                       ; $7b9a: $ff
    rst $38                                       ; $7b9b: $ff
    rst $38                                       ; $7b9c: $ff
    rst $38                                       ; $7b9d: $ff
    rst $38                                       ; $7b9e: $ff
    rst $38                                       ; $7b9f: $ff
    rst $38                                       ; $7ba0: $ff
    rst $38                                       ; $7ba1: $ff
    rst $38                                       ; $7ba2: $ff
    rst $38                                       ; $7ba3: $ff
    rst $38                                       ; $7ba4: $ff
    rst $38                                       ; $7ba5: $ff
    rst $38                                       ; $7ba6: $ff
    rst $38                                       ; $7ba7: $ff
    rst $38                                       ; $7ba8: $ff
    rst $38                                       ; $7ba9: $ff
    rst $38                                       ; $7baa: $ff
    rst $38                                       ; $7bab: $ff
    rst $38                                       ; $7bac: $ff
    rst $38                                       ; $7bad: $ff
    rst $38                                       ; $7bae: $ff
    rst $38                                       ; $7baf: $ff
    rst $38                                       ; $7bb0: $ff
    rst $38                                       ; $7bb1: $ff
    rst $38                                       ; $7bb2: $ff
    rst $38                                       ; $7bb3: $ff
    rst $38                                       ; $7bb4: $ff
    rst $38                                       ; $7bb5: $ff
    rst $38                                       ; $7bb6: $ff
    rst $38                                       ; $7bb7: $ff
    rst $38                                       ; $7bb8: $ff
    rst $38                                       ; $7bb9: $ff
    rst $38                                       ; $7bba: $ff
    rst $38                                       ; $7bbb: $ff
    rst $38                                       ; $7bbc: $ff
    rst $38                                       ; $7bbd: $ff
    rst $38                                       ; $7bbe: $ff
    rst $38                                       ; $7bbf: $ff
    rst $38                                       ; $7bc0: $ff
    rst $38                                       ; $7bc1: $ff
    rst $38                                       ; $7bc2: $ff
    rst $38                                       ; $7bc3: $ff
    rst $38                                       ; $7bc4: $ff
    rst $38                                       ; $7bc5: $ff
    rst $38                                       ; $7bc6: $ff
    rst $38                                       ; $7bc7: $ff
    rst $38                                       ; $7bc8: $ff
    rst $38                                       ; $7bc9: $ff
    rst $38                                       ; $7bca: $ff
    rst $38                                       ; $7bcb: $ff
    rst $38                                       ; $7bcc: $ff
    rst $38                                       ; $7bcd: $ff
    rst $38                                       ; $7bce: $ff
    rst $38                                       ; $7bcf: $ff
    rst $38                                       ; $7bd0: $ff
    rst $38                                       ; $7bd1: $ff
    rst $38                                       ; $7bd2: $ff
    rst $38                                       ; $7bd3: $ff
    rst $38                                       ; $7bd4: $ff
    rst $38                                       ; $7bd5: $ff
    rst $38                                       ; $7bd6: $ff
    rst $38                                       ; $7bd7: $ff
    rst $38                                       ; $7bd8: $ff
    rst $38                                       ; $7bd9: $ff
    rst $38                                       ; $7bda: $ff
    rst $38                                       ; $7bdb: $ff
    rst $38                                       ; $7bdc: $ff
    rst $38                                       ; $7bdd: $ff
    rst $38                                       ; $7bde: $ff
    rst $38                                       ; $7bdf: $ff
    rst $38                                       ; $7be0: $ff
    rst $38                                       ; $7be1: $ff
    rst $38                                       ; $7be2: $ff
    rst $38                                       ; $7be3: $ff
    rst $38                                       ; $7be4: $ff
    rst $38                                       ; $7be5: $ff
    rst $38                                       ; $7be6: $ff
    rst $38                                       ; $7be7: $ff
    rst $38                                       ; $7be8: $ff
    rst $38                                       ; $7be9: $ff
    rst $38                                       ; $7bea: $ff
    rst $38                                       ; $7beb: $ff
    rst $38                                       ; $7bec: $ff
    rst $38                                       ; $7bed: $ff
    rst $38                                       ; $7bee: $ff
    rst $38                                       ; $7bef: $ff
    rst $38                                       ; $7bf0: $ff
    rst $38                                       ; $7bf1: $ff
    rst $38                                       ; $7bf2: $ff
    rst $38                                       ; $7bf3: $ff
    rst $38                                       ; $7bf4: $ff
    rst $38                                       ; $7bf5: $ff
    rst $38                                       ; $7bf6: $ff
    rst $38                                       ; $7bf7: $ff
    rst $38                                       ; $7bf8: $ff
    rst $38                                       ; $7bf9: $ff
    rst $38                                       ; $7bfa: $ff
    rst $38                                       ; $7bfb: $ff
    rst $38                                       ; $7bfc: $ff
    rst $38                                       ; $7bfd: $ff
    rst $38                                       ; $7bfe: $ff
    rst $38                                       ; $7bff: $ff
    rst $38                                       ; $7c00: $ff
    rst $38                                       ; $7c01: $ff
    rst $38                                       ; $7c02: $ff
    rst $38                                       ; $7c03: $ff
    rst $38                                       ; $7c04: $ff
    rst $38                                       ; $7c05: $ff
    rst $38                                       ; $7c06: $ff
    rst $38                                       ; $7c07: $ff
    rst $38                                       ; $7c08: $ff
    rst $38                                       ; $7c09: $ff
    rst $38                                       ; $7c0a: $ff
    rst $38                                       ; $7c0b: $ff
    rst $38                                       ; $7c0c: $ff
    rst $38                                       ; $7c0d: $ff
    rst $38                                       ; $7c0e: $ff
    rst $38                                       ; $7c0f: $ff
    rst $38                                       ; $7c10: $ff
    rst $38                                       ; $7c11: $ff
    rst $38                                       ; $7c12: $ff
    rst $38                                       ; $7c13: $ff
    rst $38                                       ; $7c14: $ff
    rst $38                                       ; $7c15: $ff
    rst $38                                       ; $7c16: $ff
    rst $38                                       ; $7c17: $ff
    rst $38                                       ; $7c18: $ff
    rst $38                                       ; $7c19: $ff
    rst $38                                       ; $7c1a: $ff
    rst $38                                       ; $7c1b: $ff
    rst $38                                       ; $7c1c: $ff
    rst $38                                       ; $7c1d: $ff
    rst $38                                       ; $7c1e: $ff
    rst $38                                       ; $7c1f: $ff
    rst $38                                       ; $7c20: $ff
    rst $38                                       ; $7c21: $ff
    rst $38                                       ; $7c22: $ff
    rst $38                                       ; $7c23: $ff
    rst $38                                       ; $7c24: $ff
    rst $38                                       ; $7c25: $ff
    rst $38                                       ; $7c26: $ff
    rst $38                                       ; $7c27: $ff
    rst $38                                       ; $7c28: $ff
    rst $38                                       ; $7c29: $ff
    rst $38                                       ; $7c2a: $ff
    rst $38                                       ; $7c2b: $ff
    rst $38                                       ; $7c2c: $ff
    rst $38                                       ; $7c2d: $ff
    rst $38                                       ; $7c2e: $ff
    rst $38                                       ; $7c2f: $ff
    rst $38                                       ; $7c30: $ff
    rst $38                                       ; $7c31: $ff
    rst $38                                       ; $7c32: $ff
    rst $38                                       ; $7c33: $ff
    rst $38                                       ; $7c34: $ff
    rst $38                                       ; $7c35: $ff
    rst $38                                       ; $7c36: $ff
    rst $38                                       ; $7c37: $ff
    rst $38                                       ; $7c38: $ff
    rst $38                                       ; $7c39: $ff
    rst $38                                       ; $7c3a: $ff
    rst $38                                       ; $7c3b: $ff
    rst $38                                       ; $7c3c: $ff
    rst $38                                       ; $7c3d: $ff
    rst $38                                       ; $7c3e: $ff
    rst $38                                       ; $7c3f: $ff
    rst $38                                       ; $7c40: $ff
    rst $38                                       ; $7c41: $ff
    rst $38                                       ; $7c42: $ff
    rst $38                                       ; $7c43: $ff
    rst $38                                       ; $7c44: $ff
    rst $38                                       ; $7c45: $ff
    rst $38                                       ; $7c46: $ff
    rst $38                                       ; $7c47: $ff
    rst $38                                       ; $7c48: $ff
    rst $38                                       ; $7c49: $ff
    rst $38                                       ; $7c4a: $ff
    rst $38                                       ; $7c4b: $ff
    rst $38                                       ; $7c4c: $ff
    rst $38                                       ; $7c4d: $ff
    rst $38                                       ; $7c4e: $ff
    rst $38                                       ; $7c4f: $ff
    rst $38                                       ; $7c50: $ff
    rst $38                                       ; $7c51: $ff
    rst $38                                       ; $7c52: $ff
    rst $38                                       ; $7c53: $ff
    rst $38                                       ; $7c54: $ff
    rst $38                                       ; $7c55: $ff
    rst $38                                       ; $7c56: $ff
    rst $38                                       ; $7c57: $ff
    rst $38                                       ; $7c58: $ff
    rst $38                                       ; $7c59: $ff
    rst $38                                       ; $7c5a: $ff
    rst $38                                       ; $7c5b: $ff
    rst $38                                       ; $7c5c: $ff
    rst $38                                       ; $7c5d: $ff
    rst $38                                       ; $7c5e: $ff
    rst $38                                       ; $7c5f: $ff
    rst $38                                       ; $7c60: $ff
    rst $38                                       ; $7c61: $ff
    rst $38                                       ; $7c62: $ff
    rst $38                                       ; $7c63: $ff
    rst $38                                       ; $7c64: $ff
    rst $38                                       ; $7c65: $ff
    rst $38                                       ; $7c66: $ff
    rst $38                                       ; $7c67: $ff
    rst $38                                       ; $7c68: $ff
    rst $38                                       ; $7c69: $ff
    rst $38                                       ; $7c6a: $ff
    rst $38                                       ; $7c6b: $ff
    rst $38                                       ; $7c6c: $ff
    rst $38                                       ; $7c6d: $ff
    rst $38                                       ; $7c6e: $ff
    rst $38                                       ; $7c6f: $ff
    rst $38                                       ; $7c70: $ff
    rst $38                                       ; $7c71: $ff
    rst $38                                       ; $7c72: $ff
    rst $38                                       ; $7c73: $ff
    rst $38                                       ; $7c74: $ff
    rst $38                                       ; $7c75: $ff
    rst $38                                       ; $7c76: $ff
    rst $38                                       ; $7c77: $ff
    rst $38                                       ; $7c78: $ff
    rst $38                                       ; $7c79: $ff
    rst $38                                       ; $7c7a: $ff
    rst $38                                       ; $7c7b: $ff
    rst $38                                       ; $7c7c: $ff
    rst $38                                       ; $7c7d: $ff
    rst $38                                       ; $7c7e: $ff
    rst $38                                       ; $7c7f: $ff
    rst $38                                       ; $7c80: $ff
    rst $38                                       ; $7c81: $ff
    rst $38                                       ; $7c82: $ff
    rst $38                                       ; $7c83: $ff
    rst $38                                       ; $7c84: $ff
    rst $38                                       ; $7c85: $ff
    rst $38                                       ; $7c86: $ff
    rst $38                                       ; $7c87: $ff
    rst $38                                       ; $7c88: $ff
    rst $38                                       ; $7c89: $ff
    rst $38                                       ; $7c8a: $ff
    rst $38                                       ; $7c8b: $ff
    rst $38                                       ; $7c8c: $ff
    rst $38                                       ; $7c8d: $ff
    rst $38                                       ; $7c8e: $ff
    rst $38                                       ; $7c8f: $ff
    rst $38                                       ; $7c90: $ff
    rst $38                                       ; $7c91: $ff
    rst $38                                       ; $7c92: $ff
    rst $38                                       ; $7c93: $ff
    rst $38                                       ; $7c94: $ff
    rst $38                                       ; $7c95: $ff
    rst $38                                       ; $7c96: $ff
    rst $38                                       ; $7c97: $ff
    rst $38                                       ; $7c98: $ff
    rst $38                                       ; $7c99: $ff
    rst $38                                       ; $7c9a: $ff
    rst $38                                       ; $7c9b: $ff
    rst $38                                       ; $7c9c: $ff
    rst $38                                       ; $7c9d: $ff
    rst $38                                       ; $7c9e: $ff
    rst $38                                       ; $7c9f: $ff
    rst $38                                       ; $7ca0: $ff
    rst $38                                       ; $7ca1: $ff
    rst $38                                       ; $7ca2: $ff
    rst $38                                       ; $7ca3: $ff
    rst $38                                       ; $7ca4: $ff
    rst $38                                       ; $7ca5: $ff
    rst $38                                       ; $7ca6: $ff
    rst $38                                       ; $7ca7: $ff
    rst $38                                       ; $7ca8: $ff
    rst $38                                       ; $7ca9: $ff
    rst $38                                       ; $7caa: $ff
    rst $38                                       ; $7cab: $ff
    rst $38                                       ; $7cac: $ff
    rst $38                                       ; $7cad: $ff
    rst $38                                       ; $7cae: $ff
    rst $38                                       ; $7caf: $ff
    rst $38                                       ; $7cb0: $ff
    rst $38                                       ; $7cb1: $ff
    rst $38                                       ; $7cb2: $ff
    rst $38                                       ; $7cb3: $ff
    rst $38                                       ; $7cb4: $ff
    rst $38                                       ; $7cb5: $ff
    rst $38                                       ; $7cb6: $ff
    rst $38                                       ; $7cb7: $ff
    rst $38                                       ; $7cb8: $ff
    rst $38                                       ; $7cb9: $ff
    rst $38                                       ; $7cba: $ff
    rst $38                                       ; $7cbb: $ff
    rst $38                                       ; $7cbc: $ff
    rst $38                                       ; $7cbd: $ff
    rst $38                                       ; $7cbe: $ff
    rst $38                                       ; $7cbf: $ff
    rst $38                                       ; $7cc0: $ff
    rst $38                                       ; $7cc1: $ff
    rst $38                                       ; $7cc2: $ff
    rst $38                                       ; $7cc3: $ff
    rst $38                                       ; $7cc4: $ff
    rst $38                                       ; $7cc5: $ff
    rst $38                                       ; $7cc6: $ff
    rst $38                                       ; $7cc7: $ff
    rst $38                                       ; $7cc8: $ff
    rst $38                                       ; $7cc9: $ff
    rst $38                                       ; $7cca: $ff
    rst $38                                       ; $7ccb: $ff
    rst $38                                       ; $7ccc: $ff
    rst $38                                       ; $7ccd: $ff
    rst $38                                       ; $7cce: $ff
    rst $38                                       ; $7ccf: $ff
    rst $38                                       ; $7cd0: $ff
    rst $38                                       ; $7cd1: $ff
    rst $38                                       ; $7cd2: $ff
    rst $38                                       ; $7cd3: $ff
    rst $38                                       ; $7cd4: $ff
    rst $38                                       ; $7cd5: $ff
    rst $38                                       ; $7cd6: $ff
    rst $38                                       ; $7cd7: $ff
    rst $38                                       ; $7cd8: $ff
    rst $38                                       ; $7cd9: $ff
    rst $38                                       ; $7cda: $ff
    rst $38                                       ; $7cdb: $ff
    rst $38                                       ; $7cdc: $ff
    rst $38                                       ; $7cdd: $ff
    rst $38                                       ; $7cde: $ff
    rst $38                                       ; $7cdf: $ff
    rst $38                                       ; $7ce0: $ff
    rst $38                                       ; $7ce1: $ff
    rst $38                                       ; $7ce2: $ff
    rst $38                                       ; $7ce3: $ff
    rst $38                                       ; $7ce4: $ff
    rst $38                                       ; $7ce5: $ff
    rst $38                                       ; $7ce6: $ff
    rst $38                                       ; $7ce7: $ff
    rst $38                                       ; $7ce8: $ff
    rst $38                                       ; $7ce9: $ff
    rst $38                                       ; $7cea: $ff
    rst $38                                       ; $7ceb: $ff
    rst $38                                       ; $7cec: $ff
    rst $38                                       ; $7ced: $ff
    rst $38                                       ; $7cee: $ff
    rst $38                                       ; $7cef: $ff
    rst $38                                       ; $7cf0: $ff
    rst $38                                       ; $7cf1: $ff
    rst $38                                       ; $7cf2: $ff
    rst $38                                       ; $7cf3: $ff
    rst $38                                       ; $7cf4: $ff
    rst $38                                       ; $7cf5: $ff
    rst $38                                       ; $7cf6: $ff
    rst $38                                       ; $7cf7: $ff
    rst $38                                       ; $7cf8: $ff
    rst $38                                       ; $7cf9: $ff
    rst $38                                       ; $7cfa: $ff
    rst $38                                       ; $7cfb: $ff
    rst $38                                       ; $7cfc: $ff
    rst $38                                       ; $7cfd: $ff
    rst $38                                       ; $7cfe: $ff
    rst $38                                       ; $7cff: $ff
    rst $38                                       ; $7d00: $ff
    rst $38                                       ; $7d01: $ff
    rst $38                                       ; $7d02: $ff
    rst $38                                       ; $7d03: $ff
    rst $38                                       ; $7d04: $ff
    rst $38                                       ; $7d05: $ff
    rst $38                                       ; $7d06: $ff
    rst $38                                       ; $7d07: $ff
    rst $38                                       ; $7d08: $ff
    rst $38                                       ; $7d09: $ff
    rst $38                                       ; $7d0a: $ff
    rst $38                                       ; $7d0b: $ff
    rst $38                                       ; $7d0c: $ff
    rst $38                                       ; $7d0d: $ff
    rst $38                                       ; $7d0e: $ff
    rst $38                                       ; $7d0f: $ff
    rst $38                                       ; $7d10: $ff
    rst $38                                       ; $7d11: $ff
    rst $38                                       ; $7d12: $ff
    rst $38                                       ; $7d13: $ff
    rst $38                                       ; $7d14: $ff
    rst $38                                       ; $7d15: $ff
    rst $38                                       ; $7d16: $ff
    rst $38                                       ; $7d17: $ff
    rst $38                                       ; $7d18: $ff
    rst $38                                       ; $7d19: $ff
    rst $38                                       ; $7d1a: $ff
    rst $38                                       ; $7d1b: $ff
    rst $38                                       ; $7d1c: $ff
    rst $38                                       ; $7d1d: $ff
    rst $38                                       ; $7d1e: $ff
    rst $38                                       ; $7d1f: $ff
    rst $38                                       ; $7d20: $ff
    rst $38                                       ; $7d21: $ff
    rst $38                                       ; $7d22: $ff
    rst $38                                       ; $7d23: $ff
    rst $38                                       ; $7d24: $ff
    rst $38                                       ; $7d25: $ff
    rst $38                                       ; $7d26: $ff
    rst $38                                       ; $7d27: $ff
    rst $38                                       ; $7d28: $ff
    rst $38                                       ; $7d29: $ff
    rst $38                                       ; $7d2a: $ff
    rst $38                                       ; $7d2b: $ff
    rst $38                                       ; $7d2c: $ff
    rst $38                                       ; $7d2d: $ff
    rst $38                                       ; $7d2e: $ff
    rst $38                                       ; $7d2f: $ff
    rst $38                                       ; $7d30: $ff
    rst $38                                       ; $7d31: $ff
    rst $38                                       ; $7d32: $ff
    rst $38                                       ; $7d33: $ff
    rst $38                                       ; $7d34: $ff
    rst $38                                       ; $7d35: $ff
    rst $38                                       ; $7d36: $ff
    rst $38                                       ; $7d37: $ff
    rst $38                                       ; $7d38: $ff
    rst $38                                       ; $7d39: $ff
    rst $38                                       ; $7d3a: $ff
    rst $38                                       ; $7d3b: $ff
    rst $38                                       ; $7d3c: $ff
    rst $38                                       ; $7d3d: $ff
    rst $38                                       ; $7d3e: $ff
    rst $38                                       ; $7d3f: $ff
    rst $38                                       ; $7d40: $ff
    rst $38                                       ; $7d41: $ff
    rst $38                                       ; $7d42: $ff
    rst $38                                       ; $7d43: $ff
    rst $38                                       ; $7d44: $ff
    rst $38                                       ; $7d45: $ff
    rst $38                                       ; $7d46: $ff
    rst $38                                       ; $7d47: $ff
    rst $38                                       ; $7d48: $ff
    rst $38                                       ; $7d49: $ff
    rst $38                                       ; $7d4a: $ff
    rst $38                                       ; $7d4b: $ff
    rst $38                                       ; $7d4c: $ff
    rst $38                                       ; $7d4d: $ff
    rst $38                                       ; $7d4e: $ff
    rst $38                                       ; $7d4f: $ff
    rst $38                                       ; $7d50: $ff
    rst $38                                       ; $7d51: $ff
    rst $38                                       ; $7d52: $ff
    rst $38                                       ; $7d53: $ff
    rst $38                                       ; $7d54: $ff
    rst $38                                       ; $7d55: $ff
    rst $38                                       ; $7d56: $ff
    rst $38                                       ; $7d57: $ff
    rst $38                                       ; $7d58: $ff
    rst $38                                       ; $7d59: $ff
    rst $38                                       ; $7d5a: $ff
    rst $38                                       ; $7d5b: $ff
    rst $38                                       ; $7d5c: $ff
    rst $38                                       ; $7d5d: $ff
    rst $38                                       ; $7d5e: $ff
    rst $38                                       ; $7d5f: $ff
    rst $38                                       ; $7d60: $ff
    rst $38                                       ; $7d61: $ff
    rst $38                                       ; $7d62: $ff
    rst $38                                       ; $7d63: $ff
    rst $38                                       ; $7d64: $ff
    rst $38                                       ; $7d65: $ff
    rst $38                                       ; $7d66: $ff
    rst $38                                       ; $7d67: $ff
    rst $38                                       ; $7d68: $ff
    rst $38                                       ; $7d69: $ff
    rst $38                                       ; $7d6a: $ff
    rst $38                                       ; $7d6b: $ff
    rst $38                                       ; $7d6c: $ff
    rst $38                                       ; $7d6d: $ff
    rst $38                                       ; $7d6e: $ff
    rst $38                                       ; $7d6f: $ff
    rst $38                                       ; $7d70: $ff
    rst $38                                       ; $7d71: $ff
    rst $38                                       ; $7d72: $ff
    rst $38                                       ; $7d73: $ff
    rst $38                                       ; $7d74: $ff
    rst $38                                       ; $7d75: $ff
    rst $38                                       ; $7d76: $ff
    rst $38                                       ; $7d77: $ff
    rst $38                                       ; $7d78: $ff
    rst $38                                       ; $7d79: $ff
    rst $38                                       ; $7d7a: $ff
    rst $38                                       ; $7d7b: $ff
    rst $38                                       ; $7d7c: $ff
    rst $38                                       ; $7d7d: $ff
    rst $38                                       ; $7d7e: $ff
    rst $38                                       ; $7d7f: $ff
    rst $38                                       ; $7d80: $ff
    rst $38                                       ; $7d81: $ff
    rst $38                                       ; $7d82: $ff
    rst $38                                       ; $7d83: $ff
    rst $38                                       ; $7d84: $ff
    rst $38                                       ; $7d85: $ff
    rst $38                                       ; $7d86: $ff
    rst $38                                       ; $7d87: $ff
    rst $38                                       ; $7d88: $ff
    rst $38                                       ; $7d89: $ff
    rst $38                                       ; $7d8a: $ff
    rst $38                                       ; $7d8b: $ff
    rst $38                                       ; $7d8c: $ff
    rst $38                                       ; $7d8d: $ff
    rst $38                                       ; $7d8e: $ff
    rst $38                                       ; $7d8f: $ff
    rst $38                                       ; $7d90: $ff
    rst $38                                       ; $7d91: $ff
    rst $38                                       ; $7d92: $ff
    rst $38                                       ; $7d93: $ff
    rst $38                                       ; $7d94: $ff
    rst $38                                       ; $7d95: $ff
    rst $38                                       ; $7d96: $ff
    rst $38                                       ; $7d97: $ff
    rst $38                                       ; $7d98: $ff
    rst $38                                       ; $7d99: $ff
    rst $38                                       ; $7d9a: $ff
    rst $38                                       ; $7d9b: $ff
    rst $38                                       ; $7d9c: $ff
    rst $38                                       ; $7d9d: $ff
    rst $38                                       ; $7d9e: $ff
    rst $38                                       ; $7d9f: $ff
    rst $38                                       ; $7da0: $ff
    rst $38                                       ; $7da1: $ff
    rst $38                                       ; $7da2: $ff
    rst $38                                       ; $7da3: $ff
    rst $38                                       ; $7da4: $ff
    rst $38                                       ; $7da5: $ff
    rst $38                                       ; $7da6: $ff
    rst $38                                       ; $7da7: $ff
    rst $38                                       ; $7da8: $ff
    rst $38                                       ; $7da9: $ff
    rst $38                                       ; $7daa: $ff
    rst $38                                       ; $7dab: $ff
    rst $38                                       ; $7dac: $ff
    rst $38                                       ; $7dad: $ff
    rst $38                                       ; $7dae: $ff
    rst $38                                       ; $7daf: $ff
    rst $38                                       ; $7db0: $ff
    rst $38                                       ; $7db1: $ff
    rst $38                                       ; $7db2: $ff
    rst $38                                       ; $7db3: $ff
    rst $38                                       ; $7db4: $ff
    rst $38                                       ; $7db5: $ff
    rst $38                                       ; $7db6: $ff
    rst $38                                       ; $7db7: $ff
    rst $38                                       ; $7db8: $ff
    rst $38                                       ; $7db9: $ff
    rst $38                                       ; $7dba: $ff
    rst $38                                       ; $7dbb: $ff
    rst $38                                       ; $7dbc: $ff
    rst $38                                       ; $7dbd: $ff
    rst $38                                       ; $7dbe: $ff
    rst $38                                       ; $7dbf: $ff
    rst $38                                       ; $7dc0: $ff
    rst $38                                       ; $7dc1: $ff
    rst $38                                       ; $7dc2: $ff
    rst $38                                       ; $7dc3: $ff
    rst $38                                       ; $7dc4: $ff
    rst $38                                       ; $7dc5: $ff
    rst $38                                       ; $7dc6: $ff
    rst $38                                       ; $7dc7: $ff
    rst $38                                       ; $7dc8: $ff
    rst $38                                       ; $7dc9: $ff
    rst $38                                       ; $7dca: $ff
    rst $38                                       ; $7dcb: $ff
    rst $38                                       ; $7dcc: $ff
    rst $38                                       ; $7dcd: $ff
    rst $38                                       ; $7dce: $ff
    rst $38                                       ; $7dcf: $ff
    rst $38                                       ; $7dd0: $ff
    rst $38                                       ; $7dd1: $ff
    rst $38                                       ; $7dd2: $ff
    rst $38                                       ; $7dd3: $ff
    rst $38                                       ; $7dd4: $ff
    rst $38                                       ; $7dd5: $ff
    rst $38                                       ; $7dd6: $ff
    rst $38                                       ; $7dd7: $ff
    rst $38                                       ; $7dd8: $ff
    rst $38                                       ; $7dd9: $ff
    rst $38                                       ; $7dda: $ff
    rst $38                                       ; $7ddb: $ff
    rst $38                                       ; $7ddc: $ff
    rst $38                                       ; $7ddd: $ff
    rst $38                                       ; $7dde: $ff
    rst $38                                       ; $7ddf: $ff
    rst $38                                       ; $7de0: $ff
    rst $38                                       ; $7de1: $ff
    rst $38                                       ; $7de2: $ff
    rst $38                                       ; $7de3: $ff
    rst $38                                       ; $7de4: $ff
    rst $38                                       ; $7de5: $ff
    rst $38                                       ; $7de6: $ff
    rst $38                                       ; $7de7: $ff
    rst $38                                       ; $7de8: $ff
    rst $38                                       ; $7de9: $ff
    rst $38                                       ; $7dea: $ff
    rst $38                                       ; $7deb: $ff
    rst $38                                       ; $7dec: $ff
    rst $38                                       ; $7ded: $ff
    rst $38                                       ; $7dee: $ff
    rst $38                                       ; $7def: $ff
    rst $38                                       ; $7df0: $ff
    rst $38                                       ; $7df1: $ff
    rst $38                                       ; $7df2: $ff
    rst $38                                       ; $7df3: $ff
    rst $38                                       ; $7df4: $ff
    rst $38                                       ; $7df5: $ff
    rst $38                                       ; $7df6: $ff
    rst $38                                       ; $7df7: $ff
    rst $38                                       ; $7df8: $ff
    rst $38                                       ; $7df9: $ff
    rst $38                                       ; $7dfa: $ff
    rst $38                                       ; $7dfb: $ff
    rst $38                                       ; $7dfc: $ff
    rst $38                                       ; $7dfd: $ff
    rst $38                                       ; $7dfe: $ff
    rst $38                                       ; $7dff: $ff
    rst $38                                       ; $7e00: $ff
    rst $38                                       ; $7e01: $ff
    rst $38                                       ; $7e02: $ff
    rst $38                                       ; $7e03: $ff
    rst $38                                       ; $7e04: $ff
    rst $38                                       ; $7e05: $ff
    rst $38                                       ; $7e06: $ff
    rst $38                                       ; $7e07: $ff
    rst $38                                       ; $7e08: $ff
    rst $38                                       ; $7e09: $ff
    rst $38                                       ; $7e0a: $ff
    rst $38                                       ; $7e0b: $ff
    rst $38                                       ; $7e0c: $ff
    rst $38                                       ; $7e0d: $ff
    rst $38                                       ; $7e0e: $ff
    rst $38                                       ; $7e0f: $ff
    rst $38                                       ; $7e10: $ff
    rst $38                                       ; $7e11: $ff
    rst $38                                       ; $7e12: $ff
    rst $38                                       ; $7e13: $ff
    rst $38                                       ; $7e14: $ff
    rst $38                                       ; $7e15: $ff
    rst $38                                       ; $7e16: $ff
    rst $38                                       ; $7e17: $ff
    rst $38                                       ; $7e18: $ff
    rst $38                                       ; $7e19: $ff
    rst $38                                       ; $7e1a: $ff
    rst $38                                       ; $7e1b: $ff
    rst $38                                       ; $7e1c: $ff
    rst $38                                       ; $7e1d: $ff
    rst $38                                       ; $7e1e: $ff
    rst $38                                       ; $7e1f: $ff
    rst $38                                       ; $7e20: $ff
    rst $38                                       ; $7e21: $ff
    rst $38                                       ; $7e22: $ff
    rst $38                                       ; $7e23: $ff
    rst $38                                       ; $7e24: $ff
    rst $38                                       ; $7e25: $ff
    rst $38                                       ; $7e26: $ff
    rst $38                                       ; $7e27: $ff
    rst $38                                       ; $7e28: $ff
    rst $38                                       ; $7e29: $ff
    rst $38                                       ; $7e2a: $ff
    rst $38                                       ; $7e2b: $ff
    rst $38                                       ; $7e2c: $ff
    rst $38                                       ; $7e2d: $ff
    rst $38                                       ; $7e2e: $ff
    rst $38                                       ; $7e2f: $ff
    rst $38                                       ; $7e30: $ff
    rst $38                                       ; $7e31: $ff
    rst $38                                       ; $7e32: $ff
    rst $38                                       ; $7e33: $ff
    rst $38                                       ; $7e34: $ff
    rst $38                                       ; $7e35: $ff
    rst $38                                       ; $7e36: $ff
    rst $38                                       ; $7e37: $ff
    rst $38                                       ; $7e38: $ff
    rst $38                                       ; $7e39: $ff
    rst $38                                       ; $7e3a: $ff
    rst $38                                       ; $7e3b: $ff
    rst $38                                       ; $7e3c: $ff
    rst $38                                       ; $7e3d: $ff
    rst $38                                       ; $7e3e: $ff
    rst $38                                       ; $7e3f: $ff
    rst $38                                       ; $7e40: $ff
    rst $38                                       ; $7e41: $ff
    rst $38                                       ; $7e42: $ff
    rst $38                                       ; $7e43: $ff
    rst $38                                       ; $7e44: $ff
    rst $38                                       ; $7e45: $ff
    rst $38                                       ; $7e46: $ff
    rst $38                                       ; $7e47: $ff
    rst $38                                       ; $7e48: $ff
    rst $38                                       ; $7e49: $ff
    rst $38                                       ; $7e4a: $ff
    rst $38                                       ; $7e4b: $ff
    rst $38                                       ; $7e4c: $ff
    rst $38                                       ; $7e4d: $ff
    rst $38                                       ; $7e4e: $ff
    rst $38                                       ; $7e4f: $ff
    rst $38                                       ; $7e50: $ff
    rst $38                                       ; $7e51: $ff
    rst $38                                       ; $7e52: $ff
    rst $38                                       ; $7e53: $ff
    rst $38                                       ; $7e54: $ff
    rst $38                                       ; $7e55: $ff
    rst $38                                       ; $7e56: $ff
    rst $38                                       ; $7e57: $ff
    rst $38                                       ; $7e58: $ff
    rst $38                                       ; $7e59: $ff
    rst $38                                       ; $7e5a: $ff
    rst $38                                       ; $7e5b: $ff
    rst $38                                       ; $7e5c: $ff
    rst $38                                       ; $7e5d: $ff
    rst $38                                       ; $7e5e: $ff
    rst $38                                       ; $7e5f: $ff
    rst $38                                       ; $7e60: $ff
    rst $38                                       ; $7e61: $ff
    rst $38                                       ; $7e62: $ff
    rst $38                                       ; $7e63: $ff
    rst $38                                       ; $7e64: $ff
    rst $38                                       ; $7e65: $ff
    rst $38                                       ; $7e66: $ff
    rst $38                                       ; $7e67: $ff
    rst $38                                       ; $7e68: $ff
    rst $38                                       ; $7e69: $ff
    rst $38                                       ; $7e6a: $ff
    rst $38                                       ; $7e6b: $ff
    rst $38                                       ; $7e6c: $ff
    rst $38                                       ; $7e6d: $ff
    rst $38                                       ; $7e6e: $ff
    rst $38                                       ; $7e6f: $ff
    rst $38                                       ; $7e70: $ff
    rst $38                                       ; $7e71: $ff
    rst $38                                       ; $7e72: $ff
    rst $38                                       ; $7e73: $ff
    rst $38                                       ; $7e74: $ff
    rst $38                                       ; $7e75: $ff
    rst $38                                       ; $7e76: $ff
    rst $38                                       ; $7e77: $ff
    rst $38                                       ; $7e78: $ff
    rst $38                                       ; $7e79: $ff
    rst $38                                       ; $7e7a: $ff
    rst $38                                       ; $7e7b: $ff
    rst $38                                       ; $7e7c: $ff
    rst $38                                       ; $7e7d: $ff
    rst $38                                       ; $7e7e: $ff
    rst $38                                       ; $7e7f: $ff
    rst $38                                       ; $7e80: $ff
    rst $38                                       ; $7e81: $ff
    rst $38                                       ; $7e82: $ff
    rst $38                                       ; $7e83: $ff
    rst $38                                       ; $7e84: $ff
    rst $38                                       ; $7e85: $ff
    rst $38                                       ; $7e86: $ff
    rst $38                                       ; $7e87: $ff
    rst $38                                       ; $7e88: $ff
    rst $38                                       ; $7e89: $ff
    rst $38                                       ; $7e8a: $ff
    rst $38                                       ; $7e8b: $ff
    rst $38                                       ; $7e8c: $ff
    rst $38                                       ; $7e8d: $ff
    rst $38                                       ; $7e8e: $ff
    rst $38                                       ; $7e8f: $ff
    rst $38                                       ; $7e90: $ff
    rst $38                                       ; $7e91: $ff
    rst $38                                       ; $7e92: $ff
    rst $38                                       ; $7e93: $ff
    rst $38                                       ; $7e94: $ff
    rst $38                                       ; $7e95: $ff
    rst $38                                       ; $7e96: $ff
    rst $38                                       ; $7e97: $ff
    rst $38                                       ; $7e98: $ff
    rst $38                                       ; $7e99: $ff
    rst $38                                       ; $7e9a: $ff
    rst $38                                       ; $7e9b: $ff
    rst $38                                       ; $7e9c: $ff
    rst $38                                       ; $7e9d: $ff
    rst $38                                       ; $7e9e: $ff
    rst $38                                       ; $7e9f: $ff
    rst $38                                       ; $7ea0: $ff
    rst $38                                       ; $7ea1: $ff
    rst $38                                       ; $7ea2: $ff
    rst $38                                       ; $7ea3: $ff
    rst $38                                       ; $7ea4: $ff
    rst $38                                       ; $7ea5: $ff
    rst $38                                       ; $7ea6: $ff
    rst $38                                       ; $7ea7: $ff
    rst $38                                       ; $7ea8: $ff
    rst $38                                       ; $7ea9: $ff
    rst $38                                       ; $7eaa: $ff
    rst $38                                       ; $7eab: $ff
    rst $38                                       ; $7eac: $ff
    rst $38                                       ; $7ead: $ff
    rst $38                                       ; $7eae: $ff
    rst $38                                       ; $7eaf: $ff
    rst $38                                       ; $7eb0: $ff
    rst $38                                       ; $7eb1: $ff
    rst $38                                       ; $7eb2: $ff
    rst $38                                       ; $7eb3: $ff
    rst $38                                       ; $7eb4: $ff
    rst $38                                       ; $7eb5: $ff
    rst $38                                       ; $7eb6: $ff
    rst $38                                       ; $7eb7: $ff
    rst $38                                       ; $7eb8: $ff
    rst $38                                       ; $7eb9: $ff
    rst $38                                       ; $7eba: $ff
    rst $38                                       ; $7ebb: $ff
    rst $38                                       ; $7ebc: $ff
    rst $38                                       ; $7ebd: $ff
    rst $38                                       ; $7ebe: $ff
    rst $38                                       ; $7ebf: $ff
    rst $38                                       ; $7ec0: $ff
    rst $38                                       ; $7ec1: $ff
    rst $38                                       ; $7ec2: $ff
    rst $38                                       ; $7ec3: $ff
    rst $38                                       ; $7ec4: $ff
    rst $38                                       ; $7ec5: $ff
    rst $38                                       ; $7ec6: $ff
    rst $38                                       ; $7ec7: $ff
    rst $38                                       ; $7ec8: $ff
    rst $38                                       ; $7ec9: $ff
    rst $38                                       ; $7eca: $ff
    rst $38                                       ; $7ecb: $ff
    rst $38                                       ; $7ecc: $ff
    rst $38                                       ; $7ecd: $ff
    rst $38                                       ; $7ece: $ff
    rst $38                                       ; $7ecf: $ff
    rst $38                                       ; $7ed0: $ff
    rst $38                                       ; $7ed1: $ff
    rst $38                                       ; $7ed2: $ff
    rst $38                                       ; $7ed3: $ff
    rst $38                                       ; $7ed4: $ff
    rst $38                                       ; $7ed5: $ff
    rst $38                                       ; $7ed6: $ff
    rst $38                                       ; $7ed7: $ff
    rst $38                                       ; $7ed8: $ff
    rst $38                                       ; $7ed9: $ff
    rst $38                                       ; $7eda: $ff
    rst $38                                       ; $7edb: $ff
    rst $38                                       ; $7edc: $ff
    rst $38                                       ; $7edd: $ff
    rst $38                                       ; $7ede: $ff
    rst $38                                       ; $7edf: $ff
    rst $38                                       ; $7ee0: $ff
    rst $38                                       ; $7ee1: $ff
    rst $38                                       ; $7ee2: $ff
    rst $38                                       ; $7ee3: $ff
    rst $38                                       ; $7ee4: $ff
    rst $38                                       ; $7ee5: $ff
    rst $38                                       ; $7ee6: $ff
    rst $38                                       ; $7ee7: $ff
    rst $38                                       ; $7ee8: $ff
    rst $38                                       ; $7ee9: $ff
    rst $38                                       ; $7eea: $ff
    rst $38                                       ; $7eeb: $ff
    rst $38                                       ; $7eec: $ff
    rst $38                                       ; $7eed: $ff
    rst $38                                       ; $7eee: $ff
    rst $38                                       ; $7eef: $ff
    rst $38                                       ; $7ef0: $ff
    rst $38                                       ; $7ef1: $ff
    rst $38                                       ; $7ef2: $ff
    rst $38                                       ; $7ef3: $ff
    rst $38                                       ; $7ef4: $ff
    rst $38                                       ; $7ef5: $ff
    rst $38                                       ; $7ef6: $ff
    rst $38                                       ; $7ef7: $ff
    rst $38                                       ; $7ef8: $ff
    rst $38                                       ; $7ef9: $ff
    rst $38                                       ; $7efa: $ff
    rst $38                                       ; $7efb: $ff
    rst $38                                       ; $7efc: $ff
    rst $38                                       ; $7efd: $ff
    rst $38                                       ; $7efe: $ff
    rst $38                                       ; $7eff: $ff
    rst $38                                       ; $7f00: $ff
    rst $38                                       ; $7f01: $ff
    rst $38                                       ; $7f02: $ff
    rst $38                                       ; $7f03: $ff
    rst $38                                       ; $7f04: $ff
    rst $38                                       ; $7f05: $ff
    rst $38                                       ; $7f06: $ff
    rst $38                                       ; $7f07: $ff
    rst $38                                       ; $7f08: $ff
    rst $38                                       ; $7f09: $ff
    rst $38                                       ; $7f0a: $ff
    rst $38                                       ; $7f0b: $ff
    rst $38                                       ; $7f0c: $ff
    rst $38                                       ; $7f0d: $ff
    rst $38                                       ; $7f0e: $ff
    rst $38                                       ; $7f0f: $ff
    rst $38                                       ; $7f10: $ff
    rst $38                                       ; $7f11: $ff
    rst $38                                       ; $7f12: $ff
    rst $38                                       ; $7f13: $ff
    rst $38                                       ; $7f14: $ff
    rst $38                                       ; $7f15: $ff
    rst $38                                       ; $7f16: $ff
    rst $38                                       ; $7f17: $ff
    rst $38                                       ; $7f18: $ff
    rst $38                                       ; $7f19: $ff
    rst $38                                       ; $7f1a: $ff
    rst $38                                       ; $7f1b: $ff
    rst $38                                       ; $7f1c: $ff
    rst $38                                       ; $7f1d: $ff
    rst $38                                       ; $7f1e: $ff
    rst $38                                       ; $7f1f: $ff
    rst $38                                       ; $7f20: $ff
    rst $38                                       ; $7f21: $ff
    rst $38                                       ; $7f22: $ff
    rst $38                                       ; $7f23: $ff
    rst $38                                       ; $7f24: $ff
    rst $38                                       ; $7f25: $ff
    rst $38                                       ; $7f26: $ff
    rst $38                                       ; $7f27: $ff
    rst $38                                       ; $7f28: $ff
    rst $38                                       ; $7f29: $ff
    rst $38                                       ; $7f2a: $ff
    rst $38                                       ; $7f2b: $ff
    rst $38                                       ; $7f2c: $ff
    rst $38                                       ; $7f2d: $ff
    rst $38                                       ; $7f2e: $ff
    rst $38                                       ; $7f2f: $ff
    rst $38                                       ; $7f30: $ff
    rst $38                                       ; $7f31: $ff
    rst $38                                       ; $7f32: $ff
    rst $38                                       ; $7f33: $ff
    rst $38                                       ; $7f34: $ff
    rst $38                                       ; $7f35: $ff
    rst $38                                       ; $7f36: $ff
    rst $38                                       ; $7f37: $ff
    rst $38                                       ; $7f38: $ff
    rst $38                                       ; $7f39: $ff
    rst $38                                       ; $7f3a: $ff
    rst $38                                       ; $7f3b: $ff
    rst $38                                       ; $7f3c: $ff
    rst $38                                       ; $7f3d: $ff
    rst $38                                       ; $7f3e: $ff
    rst $38                                       ; $7f3f: $ff
    rst $38                                       ; $7f40: $ff
    rst $38                                       ; $7f41: $ff
    rst $38                                       ; $7f42: $ff
    rst $38                                       ; $7f43: $ff
    rst $38                                       ; $7f44: $ff
    rst $38                                       ; $7f45: $ff
    rst $38                                       ; $7f46: $ff
    rst $38                                       ; $7f47: $ff
    rst $38                                       ; $7f48: $ff
    rst $38                                       ; $7f49: $ff
    rst $38                                       ; $7f4a: $ff
    rst $38                                       ; $7f4b: $ff
    rst $38                                       ; $7f4c: $ff
    rst $38                                       ; $7f4d: $ff
    rst $38                                       ; $7f4e: $ff
    rst $38                                       ; $7f4f: $ff
    rst $38                                       ; $7f50: $ff
    rst $38                                       ; $7f51: $ff
    rst $38                                       ; $7f52: $ff
    rst $38                                       ; $7f53: $ff
    rst $38                                       ; $7f54: $ff
    rst $38                                       ; $7f55: $ff
    rst $38                                       ; $7f56: $ff
    rst $38                                       ; $7f57: $ff
    rst $38                                       ; $7f58: $ff
    rst $38                                       ; $7f59: $ff
    rst $38                                       ; $7f5a: $ff
    rst $38                                       ; $7f5b: $ff
    rst $38                                       ; $7f5c: $ff
    rst $38                                       ; $7f5d: $ff
    rst $38                                       ; $7f5e: $ff
    rst $38                                       ; $7f5f: $ff
    rst $38                                       ; $7f60: $ff
    rst $38                                       ; $7f61: $ff
    rst $38                                       ; $7f62: $ff
    rst $38                                       ; $7f63: $ff
    rst $38                                       ; $7f64: $ff
    rst $38                                       ; $7f65: $ff
    rst $38                                       ; $7f66: $ff
    rst $38                                       ; $7f67: $ff
    rst $38                                       ; $7f68: $ff
    rst $38                                       ; $7f69: $ff
    rst $38                                       ; $7f6a: $ff
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
    rst $38                                       ; $7f8d: $ff
    rst $38                                       ; $7f8e: $ff
    rst $38                                       ; $7f8f: $ff
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
