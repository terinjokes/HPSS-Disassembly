; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

    db $09, $09, $2d, $01, $09, $80, $1f

    add hl, bc                                    ; $4007: $09
    cp $28                                        ; $4008: $fe $28
    add hl, bc                                    ; $400a: $09
    ld [hl], l                                    ; $400b: $75
    add hl, hl                                    ; $400c: $29
    add hl, bc                                    ; $400d: $09
    ld a, [hl]                                    ; $400e: $7e
    add hl, hl                                    ; $400f: $29

    db $09, $a7, $2a

    add hl, bc                                    ; $4013: $09
    jp nc, Jump_000_092b                          ; $4014: $d2 $2b $09

    and a                                         ; $4017: $a7
    inc l                                         ; $4018: $2c
    add hl, bc                                    ; $4019: $09
    ld a, b                                       ; $401a: $78
    dec l                                         ; $401b: $2d

    db $09, $81, $2d, $09, $68, $33

    add hl, bc                                    ; $4022: $09
    or b                                          ; $4023: $b0
    dec [hl]                                      ; $4024: $35
    add hl, bc                                    ; $4025: $09
    rst $30                                       ; $4026: $f7
    dec [hl]                                      ; $4027: $35
    add hl, bc                                    ; $4028: $09
    add d                                         ; $4029: $82
    scf                                           ; $402a: $37
    add hl, bc                                    ; $402b: $09
    ld [bc], a                                    ; $402c: $02
    jr c, jr_009_4039                             ; $402d: $38 $0a

    ld bc, $0a00                                  ; $402f: $01 $00 $0a
    ld e, h                                       ; $4032: $5c
    ld [$650a], sp                                ; $4033: $08 $0a $65
    ld [$6e0a], sp                                ; $4036: $08 $0a $6e

jr_009_4039:
    ld [$cb0a], sp                                ; $4039: $08 $0a $cb
    ld [$200a], sp                                ; $403c: $08 $0a $20
    ld a, [bc]                                    ; $403f: $0a
    ld a, [bc]                                    ; $4040: $0a
    add hl, hl                                    ; $4041: $29
    ld a, [bc]                                    ; $4042: $0a
    ld a, [bc]                                    ; $4043: $0a
    inc de                                        ; $4044: $13
    dec bc                                        ; $4045: $0b
    ld a, [bc]                                    ; $4046: $0a
    ld l, e                                       ; $4047: $6b
    dec c                                         ; $4048: $0d
    ld a, [bc]                                    ; $4049: $0a
    ld e, $12                                     ; $404a: $1e $12
    ld a, [bc]                                    ; $404c: $0a
    ld c, e                                       ; $404d: $4b
    inc de                                        ; $404e: $13
    ld a, [bc]                                    ; $404f: $0a
    ld a, b                                       ; $4050: $78
    inc de                                        ; $4051: $13
    ld a, [bc]                                    ; $4052: $0a
    add h                                         ; $4053: $84
    inc de                                        ; $4054: $13
    ld a, [bc]                                    ; $4055: $0a
    inc e                                         ; $4056: $1c
    inc d                                         ; $4057: $14
    ld a, [bc]                                    ; $4058: $0a
    ld l, h                                       ; $4059: $6c
    ld d, $0a                                     ; $405a: $16 $0a
    dec de                                        ; $405c: $1b
    jr jr_009_4069                                ; $405d: $18 $0a

    db $ed                                        ; $405f: $ed
    ld a, [de]                                    ; $4060: $1a
    ld a, [bc]                                    ; $4061: $0a
    ld d, l                                       ; $4062: $55
    inc e                                         ; $4063: $1c
    ld a, [bc]                                    ; $4064: $0a
    or c                                          ; $4065: $b1
    dec e                                         ; $4066: $1d
    ld a, [bc]                                    ; $4067: $0a
    inc d                                         ; $4068: $14

jr_009_4069:
    ld hl, $830a                                  ; $4069: $21 $0a $83
    ld hl, $ed0a                                  ; $406c: $21 $0a $ed
    ld [hl+], a                                   ; $406f: $22
    ld a, [bc]                                    ; $4070: $0a
    xor $24                                       ; $4071: $ee $24
    ld a, [bc]                                    ; $4073: $0a
    rst $30                                       ; $4074: $f7
    inc h                                         ; $4075: $24
    ld a, [bc]                                    ; $4076: $0a
    ld a, $25                                     ; $4077: $3e $25
    ld a, [bc]                                    ; $4079: $0a
    ld b, a                                       ; $407a: $47
    dec h                                         ; $407b: $25
    ld a, [bc]                                    ; $407c: $0a
    adc e                                         ; $407d: $8b
    ld h, $0a                                     ; $407e: $26 $0a
    and d                                         ; $4080: $a2
    dec hl                                        ; $4081: $2b
    ld a, [bc]                                    ; $4082: $0a
    or c                                          ; $4083: $b1
    ld l, $0a                                     ; $4084: $2e $0a
    ld d, $32                                     ; $4086: $16 $32
    dec bc                                        ; $4088: $0b
    ld bc, $0b00                                  ; $4089: $01 $00 $0b
    rra                                           ; $408c: $1f
    ld c, $0b                                     ; $408d: $0e $0b
    ld e, e                                       ; $408f: $5b
    add hl, de                                    ; $4090: $19
    dec bc                                        ; $4091: $0b
    jp nz, $0c29                                  ; $4092: $c2 $29 $0c

    ld bc, $0c00                                  ; $4095: $01 $00 $0c
    sbc b                                         ; $4098: $98
    inc c                                         ; $4099: $0c
    inc c                                         ; $409a: $0c
    ld h, c                                       ; $409b: $61
    inc d                                         ; $409c: $14

    db $0c, $52, $22

    inc c                                         ; $40a0: $0c
    ld b, h                                       ; $40a1: $44
    inc h                                         ; $40a2: $24
    inc c                                         ; $40a3: $0c
    sbc a                                         ; $40a4: $9f
    ld h, $0c                                     ; $40a5: $26 $0c
    adc c                                         ; $40a7: $89
    add hl, hl                                    ; $40a8: $29
    inc c                                         ; $40a9: $0c
    ld b, e                                       ; $40aa: $43
    jr nc, jr_009_40b9                            ; $40ab: $30 $0c

    or b                                          ; $40ad: $b0
    jr nc, jr_009_40bc                            ; $40ae: $30 $0c

    adc [hl]                                      ; $40b0: $8e
    inc sp                                        ; $40b1: $33
    inc c                                         ; $40b2: $0c
    ld a, [bc]                                    ; $40b3: $0a
    inc [hl]                                      ; $40b4: $34
    inc c                                         ; $40b5: $0c
    inc de                                        ; $40b6: $13
    inc [hl]                                      ; $40b7: $34
    inc c                                         ; $40b8: $0c

jr_009_40b9:
    dec d                                         ; $40b9: $15
    add hl, sp                                    ; $40ba: $39
    inc c                                         ; $40bb: $0c

jr_009_40bc:
    ld e, $39                                     ; $40bc: $1e $39
    inc c                                         ; $40be: $0c
    ret nz                                        ; $40bf: $c0

    ld a, [hl-]                                   ; $40c0: $3a
    inc c                                         ; $40c1: $0c
    add $3a                                       ; $40c2: $c6 $3a
    inc c                                         ; $40c4: $0c
    ld c, h                                       ; $40c5: $4c
    dec sp                                        ; $40c6: $3b
    dec c                                         ; $40c7: $0d
    ld bc, $0d00                                  ; $40c8: $01 $00 $0d
    ld b, a                                       ; $40cb: $47
    ld [bc], a                                    ; $40cc: $02
    dec c                                         ; $40cd: $0d
    cp d                                          ; $40ce: $ba
    inc b                                         ; $40cf: $04
    dec c                                         ; $40d0: $0d
    ld b, $07                                     ; $40d1: $06 $07
    dec c                                         ; $40d3: $0d
    inc hl                                        ; $40d4: $23
    add hl, bc                                    ; $40d5: $09
    dec c                                         ; $40d6: $0d
    sub [hl]                                      ; $40d7: $96
    rla                                           ; $40d8: $17
    dec c                                         ; $40d9: $0d
    ret z                                         ; $40da: $c8

    ld e, $0d                                     ; $40db: $1e $0d
    ld c, a                                       ; $40dd: $4f
    ld h, $0d                                     ; $40de: $26 $0d
    ld a, a                                       ; $40e0: $7f
    ld h, $0d                                     ; $40e1: $26 $0d
    xor a                                         ; $40e3: $af
    ld h, $0d                                     ; $40e4: $26 $0d
    adc c                                         ; $40e6: $89
    ld sp, $b90d                                  ; $40e7: $31 $0d $b9
    ld sp, $010e                                  ; $40ea: $31 $0e $01
    nop                                           ; $40ed: $00
    ld c, $de                                     ; $40ee: $0e $de
    dec b                                         ; $40f0: $05
    ld c, $e7                                     ; $40f1: $0e $e7
    dec b                                         ; $40f3: $05
    ld c, $aa                                     ; $40f4: $0e $aa
    ld b, $0e                                     ; $40f6: $06 $0e
    ccf                                           ; $40f8: $3f
    rlca                                          ; $40f9: $07
    ld c, $f6                                     ; $40fa: $0e $f6
    add hl, bc                                    ; $40fc: $09
    ld c, $7a                                     ; $40fd: $0e $7a
    rrca                                          ; $40ff: $0f
    ld c, $8e                                     ; $4100: $0e $8e
    db $10                                        ; $4102: $10
    ld c, $18                                     ; $4103: $0e $18
    ld d, $0e                                     ; $4105: $16 $0e
    ccf                                           ; $4107: $3f
    add hl, de                                    ; $4108: $19
    ld c, $89                                     ; $4109: $0e $89
    ld a, [de]                                    ; $410b: $1a
    ld c, $ca                                     ; $410c: $0e $ca
    ld a, [de]                                    ; $410e: $1a
    ld c, $d0                                     ; $410f: $0e $d0
    ld a, [de]                                    ; $4111: $1a
    ld c, $d6                                     ; $4112: $0e $d6
    ld a, [de]                                    ; $4114: $1a
    ld c, $dc                                     ; $4115: $0e $dc
    ld a, [de]                                    ; $4117: $1a
    ld c, $e2                                     ; $4118: $0e $e2
    ld a, [de]                                    ; $411a: $1a
    ld c, $20                                     ; $411b: $0e $20
    dec de                                        ; $411d: $1b
    ld c, $3b                                     ; $411e: $0e $3b
    dec de                                        ; $4120: $1b
    ld c, $41                                     ; $4121: $0e $41
    dec de                                        ; $4123: $1b
    ld c, $71                                     ; $4124: $0e $71
    dec de                                        ; $4126: $1b
    ld c, $97                                     ; $4127: $0e $97
    dec de                                        ; $4129: $1b
    ld c, $ef                                     ; $412a: $0e $ef
    dec e                                         ; $412c: $1d

    db $05

    nop                                           ; $412e: $00
    nop                                           ; $412f: $00

    db $00, $09, $1e, $0f

    ld e, $18                                     ; $4134: $1e $18
    ld e, $39                                     ; $4136: $1e $39
    dec d                                         ; $4138: $15
    rst $38                                       ; $4139: $ff
    nop                                           ; $413a: $00
    inc sp                                        ; $413b: $33
    rlca                                          ; $413c: $07
    push hl                                       ; $413d: $e5
    nop                                           ; $413e: $00
    nop                                           ; $413f: $00
    nop                                           ; $4140: $00

    db $5f, $00, $00, $08, $fb, $00

    dec d                                         ; $4147: $15
    nop                                           ; $4148: $00
    nop                                           ; $4149: $00
    rlca                                          ; $414a: $07
    ld [bc], a                                    ; $414b: $02
    ld e, b                                       ; $414c: $58
    dec d                                         ; $414d: $15
    nop                                           ; $414e: $00
    nop                                           ; $414f: $00
    rlca                                          ; $4150: $07
    ld [bc], a                                    ; $4151: $02
    ld h, c                                       ; $4152: $61
    dec d                                         ; $4153: $15
    nop                                           ; $4154: $00
    nop                                           ; $4155: $00
    rlca                                          ; $4156: $07
    ld [bc], a                                    ; $4157: $02
    ld l, d                                       ; $4158: $6a
    dec d                                         ; $4159: $15
    nop                                           ; $415a: $00
    nop                                           ; $415b: $00
    rlca                                          ; $415c: $07
    ld [bc], a                                    ; $415d: $02
    ld [hl], e                                    ; $415e: $73
    dec d                                         ; $415f: $15
    nop                                           ; $4160: $00
    nop                                           ; $4161: $00
    rlca                                          ; $4162: $07
    ld [bc], a                                    ; $4163: $02
    ld a, h                                       ; $4164: $7c
    dec d                                         ; $4165: $15
    nop                                           ; $4166: $00
    nop                                           ; $4167: $00
    rlca                                          ; $4168: $07
    ld [bc], a                                    ; $4169: $02
    add l                                         ; $416a: $85
    dec d                                         ; $416b: $15
    nop                                           ; $416c: $00
    nop                                           ; $416d: $00
    rlca                                          ; $416e: $07
    ld [bc], a                                    ; $416f: $02
    adc [hl]                                      ; $4170: $8e
    dec d                                         ; $4171: $15
    nop                                           ; $4172: $00
    nop                                           ; $4173: $00
    rlca                                          ; $4174: $07
    ld [bc], a                                    ; $4175: $02
    sub a                                         ; $4176: $97

    db $15, $00, $00, $07, $02, $a0

    dec d                                         ; $417d: $15
    nop                                           ; $417e: $00
    nop                                           ; $417f: $00
    rlca                                          ; $4180: $07
    inc bc                                        ; $4181: $03
    ld a, [hl+]                                   ; $4182: $2a
    dec d                                         ; $4183: $15
    nop                                           ; $4184: $00
    nop                                           ; $4185: $00
    rlca                                          ; $4186: $07
    inc bc                                        ; $4187: $03
    sub e                                         ; $4188: $93
    dec d                                         ; $4189: $15
    nop                                           ; $418a: $00
    nop                                           ; $418b: $00
    rlca                                          ; $418c: $07
    inc bc                                        ; $418d: $03
    sbc h                                         ; $418e: $9c
    dec d                                         ; $418f: $15
    nop                                           ; $4190: $00
    nop                                           ; $4191: $00
    rlca                                          ; $4192: $07
    inc bc                                        ; $4193: $03
    ret c                                         ; $4194: $d8

    dec d                                         ; $4195: $15
    nop                                           ; $4196: $00
    nop                                           ; $4197: $00
    rlca                                          ; $4198: $07
    inc bc                                        ; $4199: $03
    pop hl                                        ; $419a: $e1
    dec d                                         ; $419b: $15
    nop                                           ; $419c: $00
    nop                                           ; $419d: $00
    rlca                                          ; $419e: $07
    inc b                                         ; $419f: $04
    jr c, jr_009_41b7                             ; $41a0: $38 $15

    nop                                           ; $41a2: $00
    nop                                           ; $41a3: $00
    rlca                                          ; $41a4: $07
    inc b                                         ; $41a5: $04
    ld b, c                                       ; $41a6: $41
    dec d                                         ; $41a7: $15
    nop                                           ; $41a8: $00
    nop                                           ; $41a9: $00
    rlca                                          ; $41aa: $07
    inc b                                         ; $41ab: $04
    db $dd                                        ; $41ac: $dd
    dec d                                         ; $41ad: $15
    nop                                           ; $41ae: $00
    nop                                           ; $41af: $00
    rlca                                          ; $41b0: $07
    dec b                                         ; $41b1: $05
    ld a, c                                       ; $41b2: $79
    dec d                                         ; $41b3: $15
    nop                                           ; $41b4: $00
    nop                                           ; $41b5: $00
    rlca                                          ; $41b6: $07

jr_009_41b7:
    dec b                                         ; $41b7: $05
    add d                                         ; $41b8: $82
    dec d                                         ; $41b9: $15
    nop                                           ; $41ba: $00
    nop                                           ; $41bb: $00
    rlca                                          ; $41bc: $07
    dec b                                         ; $41bd: $05
    sbc l                                         ; $41be: $9d
    dec d                                         ; $41bf: $15
    nop                                           ; $41c0: $00
    nop                                           ; $41c1: $00
    rlca                                          ; $41c2: $07
    dec b                                         ; $41c3: $05
    and [hl]                                      ; $41c4: $a6
    dec d                                         ; $41c5: $15
    nop                                           ; $41c6: $00
    nop                                           ; $41c7: $00
    rlca                                          ; $41c8: $07
    dec b                                         ; $41c9: $05
    xor a                                         ; $41ca: $af
    dec d                                         ; $41cb: $15
    nop                                           ; $41cc: $00
    nop                                           ; $41cd: $00
    rlca                                          ; $41ce: $07
    ld b, $1b                                     ; $41cf: $06 $1b
    dec d                                         ; $41d1: $15
    nop                                           ; $41d2: $00
    nop                                           ; $41d3: $00
    rlca                                          ; $41d4: $07
    ld b, $9f                                     ; $41d5: $06 $9f
    dec d                                         ; $41d7: $15
    nop                                           ; $41d8: $00
    nop                                           ; $41d9: $00
    rlca                                          ; $41da: $07
    ld b, $c3                                     ; $41db: $06 $c3
    dec d                                         ; $41dd: $15
    nop                                           ; $41de: $00
    nop                                           ; $41df: $00
    rlca                                          ; $41e0: $07
    rlca                                          ; $41e1: $07
    dec b                                         ; $41e2: $05
    dec d                                         ; $41e3: $15
    nop                                           ; $41e4: $00
    nop                                           ; $41e5: $00
    rlca                                          ; $41e6: $07
    rlca                                          ; $41e7: $07
    ld c, $15                                     ; $41e8: $0e $15
    nop                                           ; $41ea: $00
    nop                                           ; $41eb: $00
    rlca                                          ; $41ec: $07
    rlca                                          ; $41ed: $07
    rla                                           ; $41ee: $17
    dec d                                         ; $41ef: $15
    nop                                           ; $41f0: $00
    nop                                           ; $41f1: $00
    rlca                                          ; $41f2: $07
    rlca                                          ; $41f3: $07
    jr nz, jr_009_420b                            ; $41f4: $20 $15

    nop                                           ; $41f6: $00
    nop                                           ; $41f7: $00
    rlca                                          ; $41f8: $07
    rlca                                          ; $41f9: $07
    add hl, hl                                    ; $41fa: $29
    dec d                                         ; $41fb: $15
    nop                                           ; $41fc: $00
    nop                                           ; $41fd: $00
    rlca                                          ; $41fe: $07
    rlca                                          ; $41ff: $07
    ld [hl-], a                                   ; $4200: $32
    dec d                                         ; $4201: $15
    nop                                           ; $4202: $00
    nop                                           ; $4203: $00
    rlca                                          ; $4204: $07
    rlca                                          ; $4205: $07
    ld a, l                                       ; $4206: $7d
    dec d                                         ; $4207: $15
    nop                                           ; $4208: $00
    nop                                           ; $4209: $00
    rlca                                          ; $420a: $07

jr_009_420b:
    rlca                                          ; $420b: $07
    add [hl]                                      ; $420c: $86
    dec d                                         ; $420d: $15
    nop                                           ; $420e: $00
    nop                                           ; $420f: $00
    rlca                                          ; $4210: $07
    ld [$152b], sp                                ; $4211: $08 $2b $15
    nop                                           ; $4214: $00
    nop                                           ; $4215: $00
    rlca                                          ; $4216: $07
    ld [$157f], sp                                ; $4217: $08 $7f $15
    nop                                           ; $421a: $00
    nop                                           ; $421b: $00
    rlca                                          ; $421c: $07
    ld [$1588], sp                                ; $421d: $08 $88 $15
    nop                                           ; $4220: $00
    nop                                           ; $4221: $00
    rlca                                          ; $4222: $07
    ld [$15ac], sp                                ; $4223: $08 $ac $15
    nop                                           ; $4226: $00
    nop                                           ; $4227: $00
    rlca                                          ; $4228: $07
    add hl, bc                                    ; $4229: $09
    jr jr_009_4241                                ; $422a: $18 $15

    nop                                           ; $422c: $00
    nop                                           ; $422d: $00
    rlca                                          ; $422e: $07
    add hl, bc                                    ; $422f: $09
    sbc h                                         ; $4230: $9c
    dec d                                         ; $4231: $15
    nop                                           ; $4232: $00
    nop                                           ; $4233: $00
    rlca                                          ; $4234: $07
    ld a, [bc]                                    ; $4235: $0a
    jr nz, jr_009_424d                            ; $4236: $20 $15

    nop                                           ; $4238: $00
    nop                                           ; $4239: $00
    rlca                                          ; $423a: $07
    ld a, [bc]                                    ; $423b: $0a
    ld b, h                                       ; $423c: $44
    dec d                                         ; $423d: $15
    nop                                           ; $423e: $00
    nop                                           ; $423f: $00
    rlca                                          ; $4240: $07

jr_009_4241:
    ld a, [bc]                                    ; $4241: $0a
    ld e, h                                       ; $4242: $5c
    dec d                                         ; $4243: $15
    nop                                           ; $4244: $00
    nop                                           ; $4245: $00
    rlca                                          ; $4246: $07
    ld a, [bc]                                    ; $4247: $0a
    add b                                         ; $4248: $80
    dec d                                         ; $4249: $15
    nop                                           ; $424a: $00
    nop                                           ; $424b: $00
    rlca                                          ; $424c: $07

jr_009_424d:
    dec bc                                        ; $424d: $0b
    ld c, h                                       ; $424e: $4c
    dec d                                         ; $424f: $15
    nop                                           ; $4250: $00
    nop                                           ; $4251: $00
    rlca                                          ; $4252: $07
    dec bc                                        ; $4253: $0b
    and e                                         ; $4254: $a3
    dec d                                         ; $4255: $15
    nop                                           ; $4256: $00
    nop                                           ; $4257: $00
    rlca                                          ; $4258: $07
    dec bc                                        ; $4259: $0b
    rst $30                                       ; $425a: $f7
    dec d                                         ; $425b: $15
    nop                                           ; $425c: $00
    nop                                           ; $425d: $00
    rlca                                          ; $425e: $07
    inc c                                         ; $425f: $0c
    or a                                          ; $4260: $b7
    dec d                                         ; $4261: $15
    nop                                           ; $4262: $00
    nop                                           ; $4263: $00
    rlca                                          ; $4264: $07
    dec c                                         ; $4265: $0d
    jr c, jr_009_427d                             ; $4266: $38 $15

    nop                                           ; $4268: $00
    nop                                           ; $4269: $00
    rlca                                          ; $426a: $07
    dec c                                         ; $426b: $0d
    or [hl]                                       ; $426c: $b6
    dec d                                         ; $426d: $15
    nop                                           ; $426e: $00
    nop                                           ; $426f: $00
    rlca                                          ; $4270: $07
    ld c, $34                                     ; $4271: $0e $34
    dec d                                         ; $4273: $15
    nop                                           ; $4274: $00
    nop                                           ; $4275: $00
    rlca                                          ; $4276: $07
    ld c, $b2                                     ; $4277: $0e $b2
    dec d                                         ; $4279: $15
    nop                                           ; $427a: $00
    nop                                           ; $427b: $00
    rlca                                          ; $427c: $07

jr_009_427d:
    ld c, $e2                                     ; $427d: $0e $e2
    dec d                                         ; $427f: $15
    nop                                           ; $4280: $00
    nop                                           ; $4281: $00
    rlca                                          ; $4282: $07
    ld c, $eb                                     ; $4283: $0e $eb
    dec d                                         ; $4285: $15
    nop                                           ; $4286: $00
    nop                                           ; $4287: $00
    rlca                                          ; $4288: $07
    rrca                                          ; $4289: $0f
    ld l, a                                       ; $428a: $6f
    dec d                                         ; $428b: $15
    nop                                           ; $428c: $00
    nop                                           ; $428d: $00
    rlca                                          ; $428e: $07
    db $10                                        ; $428f: $10
    dec bc                                        ; $4290: $0b
    dec d                                         ; $4291: $15
    nop                                           ; $4292: $00
    nop                                           ; $4293: $00
    rlca                                          ; $4294: $07
    db $10                                        ; $4295: $10
    and a                                         ; $4296: $a7
    dec d                                         ; $4297: $15
    nop                                           ; $4298: $00
    nop                                           ; $4299: $00
    rlca                                          ; $429a: $07
    ld de, $1543                                  ; $429b: $11 $43 $15
    nop                                           ; $429e: $00
    nop                                           ; $429f: $00
    rlca                                          ; $42a0: $07
    ld de, $15af                                  ; $42a1: $11 $af $15
    nop                                           ; $42a4: $00
    nop                                           ; $42a5: $00
    rlca                                          ; $42a6: $07
    ld [de], a                                    ; $42a7: $12
    ld c, e                                       ; $42a8: $4b
    dec d                                         ; $42a9: $15
    nop                                           ; $42aa: $00
    nop                                           ; $42ab: $00
    rlca                                          ; $42ac: $07
    ld [de], a                                    ; $42ad: $12
    adc d                                         ; $42ae: $8a
    dec d                                         ; $42af: $15
    nop                                           ; $42b0: $00
    nop                                           ; $42b1: $00
    rlca                                          ; $42b2: $07
    ld [de], a                                    ; $42b3: $12
    xor [hl]                                      ; $42b4: $ae
    dec d                                         ; $42b5: $15
    nop                                           ; $42b6: $00
    nop                                           ; $42b7: $00
    rlca                                          ; $42b8: $07
    inc de                                        ; $42b9: $13
    ld [hl-], a                                   ; $42ba: $32
    dec d                                         ; $42bb: $15
    nop                                           ; $42bc: $00
    nop                                           ; $42bd: $00
    rlca                                          ; $42be: $07
    inc de                                        ; $42bf: $13
    ld d, [hl]                                    ; $42c0: $56
    dec d                                         ; $42c1: $15
    nop                                           ; $42c2: $00
    nop                                           ; $42c3: $00
    rlca                                          ; $42c4: $07
    inc de                                        ; $42c5: $13
    ld e, a                                       ; $42c6: $5f
    dec d                                         ; $42c7: $15
    nop                                           ; $42c8: $00
    nop                                           ; $42c9: $00
    rlca                                          ; $42ca: $07
    inc de                                        ; $42cb: $13
    ei                                            ; $42cc: $fb
    dec d                                         ; $42cd: $15
    nop                                           ; $42ce: $00
    nop                                           ; $42cf: $00
    rlca                                          ; $42d0: $07
    inc d                                         ; $42d1: $14
    ld h, a                                       ; $42d2: $67
    dec d                                         ; $42d3: $15
    nop                                           ; $42d4: $00
    nop                                           ; $42d5: $00
    rlca                                          ; $42d6: $07
    dec d                                         ; $42d7: $15
    inc bc                                        ; $42d8: $03
    dec d                                         ; $42d9: $15
    nop                                           ; $42da: $00
    nop                                           ; $42db: $00
    rlca                                          ; $42dc: $07
    dec d                                         ; $42dd: $15
    inc c                                         ; $42de: $0c
    dec d                                         ; $42df: $15
    nop                                           ; $42e0: $00
    nop                                           ; $42e1: $00
    rlca                                          ; $42e2: $07
    dec d                                         ; $42e3: $15
    dec d                                         ; $42e4: $15
    dec d                                         ; $42e5: $15
    nop                                           ; $42e6: $00
    nop                                           ; $42e7: $00
    rlca                                          ; $42e8: $07
    dec d                                         ; $42e9: $15
    ld e, $15                                     ; $42ea: $1e $15
    nop                                           ; $42ec: $00
    nop                                           ; $42ed: $00
    rlca                                          ; $42ee: $07
    dec d                                         ; $42ef: $15
    ld b, d                                       ; $42f0: $42
    dec d                                         ; $42f1: $15
    nop                                           ; $42f2: $00
    nop                                           ; $42f3: $00
    rlca                                          ; $42f4: $07
    dec d                                         ; $42f5: $15
    ld a, e                                       ; $42f6: $7b
    dec d                                         ; $42f7: $15
    nop                                           ; $42f8: $00
    nop                                           ; $42f9: $00
    rlca                                          ; $42fa: $07
    dec d                                         ; $42fb: $15
    adc l                                         ; $42fc: $8d
    dec d                                         ; $42fd: $15
    nop                                           ; $42fe: $00
    nop                                           ; $42ff: $00
    rlca                                          ; $4300: $07
    dec d                                         ; $4301: $15
    pop hl                                        ; $4302: $e1
    dec d                                         ; $4303: $15
    nop                                           ; $4304: $00
    nop                                           ; $4305: $00
    rlca                                          ; $4306: $07
    ld d, $35                                     ; $4307: $16 $35
    dec d                                         ; $4309: $15
    nop                                           ; $430a: $00
    nop                                           ; $430b: $00
    rlca                                          ; $430c: $07
    ld d, $4d                                     ; $430d: $16 $4d
    dec d                                         ; $430f: $15
    nop                                           ; $4310: $00
    nop                                           ; $4311: $00
    rlca                                          ; $4312: $07
    ld d, $71                                     ; $4313: $16 $71
    dec d                                         ; $4315: $15
    nop                                           ; $4316: $00
    nop                                           ; $4317: $00
    rlca                                          ; $4318: $07
    ld d, $95                                     ; $4319: $16 $95
    dec d                                         ; $431b: $15
    nop                                           ; $431c: $00

jr_009_431d:
    nop                                           ; $431d: $00
    rlca                                          ; $431e: $07
    rla                                           ; $431f: $17
    ld bc, $0015                                  ; $4320: $01 $15 $00
    nop                                           ; $4323: $00
    rlca                                          ; $4324: $07
    rla                                           ; $4325: $17
    dec a                                         ; $4326: $3d
    dec d                                         ; $4327: $15
    nop                                           ; $4328: $00
    nop                                           ; $4329: $00
    rlca                                          ; $432a: $07
    rla                                           ; $432b: $17
    ld b, [hl]                                    ; $432c: $46
    dec d                                         ; $432d: $15
    nop                                           ; $432e: $00
    nop                                           ; $432f: $00
    rlca                                          ; $4330: $07
    jr jr_009_431d                                ; $4331: $18 $ea

    dec d                                         ; $4333: $15
    nop                                           ; $4334: $00
    nop                                           ; $4335: $00
    rlca                                          ; $4336: $07
    add hl, de                                    ; $4337: $19
    inc d                                         ; $4338: $14
    dec d                                         ; $4339: $15
    nop                                           ; $433a: $00
    nop                                           ; $433b: $00
    rlca                                          ; $433c: $07
    add hl, de                                    ; $433d: $19
    dec e                                         ; $433e: $1d
    dec d                                         ; $433f: $15
    nop                                           ; $4340: $00
    nop                                           ; $4341: $00
    rlca                                          ; $4342: $07
    add hl, de                                    ; $4343: $19
    ld h, $15                                     ; $4344: $26 $15
    nop                                           ; $4346: $00
    nop                                           ; $4347: $00
    rlca                                          ; $4348: $07
    add hl, de                                    ; $4349: $19
    ld d, e                                       ; $434a: $53
    dec d                                         ; $434b: $15
    nop                                           ; $434c: $00
    nop                                           ; $434d: $00
    rlca                                          ; $434e: $07
    ld a, [de]                                    ; $434f: $1a
    add hl, de                                    ; $4350: $19
    dec d                                         ; $4351: $15
    nop                                           ; $4352: $00
    nop                                           ; $4353: $00
    rlca                                          ; $4354: $07
    ld a, [de]                                    ; $4355: $1a
    db $10                                        ; $4356: $10
    dec d                                         ; $4357: $15
    nop                                           ; $4358: $00
    nop                                           ; $4359: $00
    rlca                                          ; $435a: $07
    ld a, [de]                                    ; $435b: $1a
    rra                                           ; $435c: $1f
    dec d                                         ; $435d: $15
    nop                                           ; $435e: $00
    nop                                           ; $435f: $00
    rlca                                          ; $4360: $07
    ld a, [de]                                    ; $4361: $1a
    cp e                                          ; $4362: $bb
    dec d                                         ; $4363: $15
    nop                                           ; $4364: $00
    nop                                           ; $4365: $00
    rlca                                          ; $4366: $07
    dec de                                        ; $4367: $1b
    ld d, a                                       ; $4368: $57
    dec d                                         ; $4369: $15
    nop                                           ; $436a: $00
    nop                                           ; $436b: $00
    rlca                                          ; $436c: $07
    dec de                                        ; $436d: $1b
    di                                            ; $436e: $f3

    db $15, $00, $00, $07, $1c, $8f

    dec d                                         ; $4375: $15
    nop                                           ; $4376: $00
    nop                                           ; $4377: $00
    rlca                                          ; $4378: $07
    inc e                                         ; $4379: $1c
    or [hl]                                       ; $437a: $b6
    dec d                                         ; $437b: $15
    nop                                           ; $437c: $00
    nop                                           ; $437d: $00
    rlca                                          ; $437e: $07
    inc e                                         ; $437f: $1c
    rst $28                                       ; $4380: $ef
    dec d                                         ; $4381: $15
    nop                                           ; $4382: $00
    nop                                           ; $4383: $00
    rlca                                          ; $4384: $07
    dec e                                         ; $4385: $1d
    adc e                                         ; $4386: $8b
    ld e, a                                       ; $4387: $5f
    ld bc, $0300                                  ; $4388: $01 $00 $03
    rst $38                                       ; $438b: $ff
    nop                                           ; $438c: $00
    nop                                           ; $438d: $00
    nop                                           ; $438e: $00
    nop                                           ; $438f: $00
    ld e, a                                       ; $4390: $5f
    ld bc, $2800                                  ; $4391: $01 $00 $28
    rst $38                                       ; $4394: $ff
    nop                                           ; $4395: $00
    nop                                           ; $4396: $00
    nop                                           ; $4397: $00
    nop                                           ; $4398: $00
    ld e, a                                       ; $4399: $5f
    ld bc, $2800                                  ; $439a: $01 $00 $28
    rst $38                                       ; $439d: $ff
    nop                                           ; $439e: $00
    nop                                           ; $439f: $00
    nop                                           ; $43a0: $00
    nop                                           ; $43a1: $00
    ld e, a                                       ; $43a2: $5f
    ld bc, $2800                                  ; $43a3: $01 $00 $28
    rst $38                                       ; $43a6: $ff
    nop                                           ; $43a7: $00
    nop                                           ; $43a8: $00
    nop                                           ; $43a9: $00
    nop                                           ; $43aa: $00
    ld e, a                                       ; $43ab: $5f
    ld bc, $2800                                  ; $43ac: $01 $00 $28
    rst $38                                       ; $43af: $ff
    nop                                           ; $43b0: $00
    nop                                           ; $43b1: $00
    nop                                           ; $43b2: $00
    nop                                           ; $43b3: $00
    ld e, a                                       ; $43b4: $5f
    ld bc, $2800                                  ; $43b5: $01 $00 $28
    rst $38                                       ; $43b8: $ff
    nop                                           ; $43b9: $00
    nop                                           ; $43ba: $00
    nop                                           ; $43bb: $00
    nop                                           ; $43bc: $00
    ld e, a                                       ; $43bd: $5f
    ld bc, $2800                                  ; $43be: $01 $00 $28
    rst $38                                       ; $43c1: $ff
    nop                                           ; $43c2: $00
    nop                                           ; $43c3: $00
    nop                                           ; $43c4: $00
    nop                                           ; $43c5: $00
    ld e, a                                       ; $43c6: $5f
    ld bc, $2800                                  ; $43c7: $01 $00 $28
    rst $38                                       ; $43ca: $ff
    nop                                           ; $43cb: $00
    nop                                           ; $43cc: $00
    nop                                           ; $43cd: $00
    nop                                           ; $43ce: $00
    ld e, a                                       ; $43cf: $5f
    ld bc, $2800                                  ; $43d0: $01 $00 $28
    rst $38                                       ; $43d3: $ff
    nop                                           ; $43d4: $00
    nop                                           ; $43d5: $00
    nop                                           ; $43d6: $00
    nop                                           ; $43d7: $00

    db $09, $00, $59, $05, $14, $00

    add hl, bc                                    ; $43de: $09
    dec c                                         ; $43df: $0d
    ld bc, $0305                                  ; $43e0: $01 $05 $03
    nop                                           ; $43e3: $00
    jr z, @+$01                                   ; $43e4: $28 $ff

    nop                                           ; $43e6: $00
    nop                                           ; $43e7: $00
    nop                                           ; $43e8: $00
    nop                                           ; $43e9: $00
    dec d                                         ; $43ea: $15
    ld e, c                                       ; $43eb: $59
    nop                                           ; $43ec: $00
    inc sp                                        ; $43ed: $33
    nop                                           ; $43ee: $00
    ld hl, $5915                                  ; $43ef: $21 $15 $59
    nop                                           ; $43f2: $00
    inc sp                                        ; $43f3: $33
    nop                                           ; $43f4: $00
    ld [hl+], a                                   ; $43f5: $22
    dec d                                         ; $43f6: $15
    ld e, c                                       ; $43f7: $59
    nop                                           ; $43f8: $00
    inc sp                                        ; $43f9: $33
    nop                                           ; $43fa: $00
    inc hl                                        ; $43fb: $23
    dec d                                         ; $43fc: $15
    ld e, c                                       ; $43fd: $59
    nop                                           ; $43fe: $00
    inc sp                                        ; $43ff: $33
    nop                                           ; $4400: $00
    inc h                                         ; $4401: $24
    dec d                                         ; $4402: $15
    ld e, c                                       ; $4403: $59
    nop                                           ; $4404: $00
    inc sp                                        ; $4405: $33
    nop                                           ; $4406: $00
    dec h                                         ; $4407: $25
    rrca                                          ; $4408: $0f
    dec c                                         ; $4409: $0d
    ld bc, $152e                                  ; $440a: $01 $2e $15
    nop                                           ; $440d: $00
    jr z, @+$01                                   ; $440e: $28 $ff

    nop                                           ; $4410: $00
    ld e, a                                       ; $4411: $5f
    ld bc, $0000                                  ; $4412: $01 $00 $00
    nop                                           ; $4415: $00
    nop                                           ; $4416: $00

    db $09, $00, $00, $05, $14, $00, $09, $0d, $01, $05, $03, $00

    jr z, @+$01                                   ; $4423: $28 $ff

    nop                                           ; $4425: $00
    nop                                           ; $4426: $00
    nop                                           ; $4427: $00
    nop                                           ; $4428: $00

    db $15, $59, $00, $33, $00, $21, $15, $59, $00, $33, $00, $22, $15, $59, $00, $33
    db $00, $23, $15, $59, $00, $33, $00, $24, $15, $59, $00, $33, $00, $25, $0f, $0d
    db $01, $2e, $15, $00, $28, $ff, $00, $5f, $01, $00

    nop                                           ; $4453: $00
    nop                                           ; $4454: $00
    nop                                           ; $4455: $00
    ld l, $15                                     ; $4456: $2e $15
    nop                                           ; $4458: $00
    ld e, a                                       ; $4459: $5f
    ld bc, $2800                                  ; $445a: $01 $00 $28
    rst $38                                       ; $445d: $ff
    nop                                           ; $445e: $00
    nop                                           ; $445f: $00
    nop                                           ; $4460: $00
    nop                                           ; $4461: $00
    add hl, bc                                    ; $4462: $09
    nop                                           ; $4463: $00
    ld e, c                                       ; $4464: $59
    dec b                                         ; $4465: $05
    rlca                                          ; $4466: $07
    nop                                           ; $4467: $00
    add hl, bc                                    ; $4468: $09
    ld sp, hl                                     ; $4469: $f9
    ld bc, $0305                                  ; $446a: $01 $05 $03
    nop                                           ; $446d: $00
    dec d                                         ; $446e: $15
    dec a                                         ; $446f: $3d
    nop                                           ; $4470: $00
    inc sp                                        ; $4471: $33
    ld bc, $5fcc                                  ; $4472: $01 $cc $5f
    ld bc, $0000                                  ; $4475: $01 $00 $00
    nop                                           ; $4478: $00
    nop                                           ; $4479: $00
    add hl, bc                                    ; $447a: $09
    nop                                           ; $447b: $00
    nop                                           ; $447c: $00
    dec b                                         ; $447d: $05
    rlca                                          ; $447e: $07
    nop                                           ; $447f: $00
    add hl, bc                                    ; $4480: $09
    ld sp, hl                                     ; $4481: $f9
    ld bc, $0305                                  ; $4482: $01 $05 $03
    nop                                           ; $4485: $00
    dec d                                         ; $4486: $15
    dec a                                         ; $4487: $3d
    nop                                           ; $4488: $00
    inc sp                                        ; $4489: $33
    ld bc, $5fcc                                  ; $448a: $01 $cc $5f
    ld bc, $0000                                  ; $448d: $01 $00 $00
    nop                                           ; $4490: $00
    nop                                           ; $4491: $00
    add hl, bc                                    ; $4492: $09
    nop                                           ; $4493: $00
    rla                                           ; $4494: $17
    dec b                                         ; $4495: $05
    rlca                                          ; $4496: $07
    nop                                           ; $4497: $00
    add hl, bc                                    ; $4498: $09
    ld sp, hl                                     ; $4499: $f9
    ld bc, $0305                                  ; $449a: $01 $05 $03
    nop                                           ; $449d: $00
    dec d                                         ; $449e: $15
    dec a                                         ; $449f: $3d
    nop                                           ; $44a0: $00
    inc sp                                        ; $44a1: $33
    ld bc, $5fcc                                  ; $44a2: $01 $cc $5f
    ld bc, $0000                                  ; $44a5: $01 $00 $00
    nop                                           ; $44a8: $00
    nop                                           ; $44a9: $00
    add hl, bc                                    ; $44aa: $09
    nop                                           ; $44ab: $00
    jr jr_009_44b3                                ; $44ac: $18 $05

    ld b, $00                                     ; $44ae: $06 $00
    ld a, d                                       ; $44b0: $7a
    nop                                           ; $44b1: $00
    nop                                           ; $44b2: $00

jr_009_44b3:
    ld e, a                                       ; $44b3: $5f
    ld bc, $2e00                                  ; $44b4: $01 $00 $2e
    dec d                                         ; $44b7: $15
    nop                                           ; $44b8: $00
    jr z, @+$01                                   ; $44b9: $28 $ff

    nop                                           ; $44bb: $00
    nop                                           ; $44bc: $00
    nop                                           ; $44bd: $00
    nop                                           ; $44be: $00
    ld e, a                                       ; $44bf: $5f
    ld bc, $2e00                                  ; $44c0: $01 $00 $2e
    dec d                                         ; $44c3: $15
    nop                                           ; $44c4: $00
    jr z, @+$01                                   ; $44c5: $28 $ff

    nop                                           ; $44c7: $00
    nop                                           ; $44c8: $00
    nop                                           ; $44c9: $00
    nop                                           ; $44ca: $00
    ld e, a                                       ; $44cb: $5f
    ld bc, $2800                                  ; $44cc: $01 $00 $28
    rst $38                                       ; $44cf: $ff
    nop                                           ; $44d0: $00
    nop                                           ; $44d1: $00
    nop                                           ; $44d2: $00
    nop                                           ; $44d3: $00
    add hl, bc                                    ; $44d4: $09
    nop                                           ; $44d5: $00
    scf                                           ; $44d6: $37
    dec b                                         ; $44d7: $05
    rlca                                          ; $44d8: $07
    nop                                           ; $44d9: $00
    add hl, bc                                    ; $44da: $09
    ld sp, hl                                     ; $44db: $f9
    ld bc, $0305                                  ; $44dc: $01 $05 $03
    nop                                           ; $44df: $00
    dec d                                         ; $44e0: $15
    dec a                                         ; $44e1: $3d
    nop                                           ; $44e2: $00
    inc sp                                        ; $44e3: $33
    ld bc, $5fcc                                  ; $44e4: $01 $cc $5f
    ld bc, $0000                                  ; $44e7: $01 $00 $00
    nop                                           ; $44ea: $00
    nop                                           ; $44eb: $00
    add hl, bc                                    ; $44ec: $09
    nop                                           ; $44ed: $00
    add hl, sp                                    ; $44ee: $39
    dec b                                         ; $44ef: $05
    rlca                                          ; $44f0: $07
    nop                                           ; $44f1: $00
    add hl, bc                                    ; $44f2: $09
    ld sp, hl                                     ; $44f3: $f9
    ld bc, $0305                                  ; $44f4: $01 $05 $03
    nop                                           ; $44f7: $00
    dec d                                         ; $44f8: $15
    dec a                                         ; $44f9: $3d
    nop                                           ; $44fa: $00
    inc sp                                        ; $44fb: $33
    ld bc, $5fcc                                  ; $44fc: $01 $cc $5f
    ld bc, $0000                                  ; $44ff: $01 $00 $00
    nop                                           ; $4502: $00
    nop                                           ; $4503: $00
    ld e, a                                       ; $4504: $5f
    ld bc, $2e00                                  ; $4505: $01 $00 $2e
    dec d                                         ; $4508: $15
    nop                                           ; $4509: $00
    jr z, @+$01                                   ; $450a: $28 $ff

    nop                                           ; $450c: $00
    nop                                           ; $450d: $00
    nop                                           ; $450e: $00
    nop                                           ; $450f: $00
    ld e, a                                       ; $4510: $5f
    ld bc, $2800                                  ; $4511: $01 $00 $28
    rst $38                                       ; $4514: $ff
    nop                                           ; $4515: $00
    nop                                           ; $4516: $00
    nop                                           ; $4517: $00
    nop                                           ; $4518: $00
    add hl, bc                                    ; $4519: $09
    nop                                           ; $451a: $00
    ld b, $05                                     ; $451b: $06 $05
    rlca                                          ; $451d: $07
    nop                                           ; $451e: $00
    add hl, bc                                    ; $451f: $09
    ld sp, hl                                     ; $4520: $f9
    ld bc, $0305                                  ; $4521: $01 $05 $03
    nop                                           ; $4524: $00
    dec d                                         ; $4525: $15
    dec a                                         ; $4526: $3d
    nop                                           ; $4527: $00
    inc sp                                        ; $4528: $33
    ld bc, $5fcc                                  ; $4529: $01 $cc $5f
    ld bc, $0000                                  ; $452c: $01 $00 $00
    nop                                           ; $452f: $00
    nop                                           ; $4530: $00
    add hl, bc                                    ; $4531: $09
    nop                                           ; $4532: $00
    rlca                                          ; $4533: $07
    dec b                                         ; $4534: $05
    rlca                                          ; $4535: $07
    nop                                           ; $4536: $00
    add hl, bc                                    ; $4537: $09
    ld sp, hl                                     ; $4538: $f9
    ld bc, $0305                                  ; $4539: $01 $05 $03
    nop                                           ; $453c: $00
    dec d                                         ; $453d: $15
    dec a                                         ; $453e: $3d
    nop                                           ; $453f: $00
    inc sp                                        ; $4540: $33
    ld bc, $5fcc                                  ; $4541: $01 $cc $5f
    ld bc, $0000                                  ; $4544: $01 $00 $00
    nop                                           ; $4547: $00
    nop                                           ; $4548: $00
    add hl, bc                                    ; $4549: $09
    nop                                           ; $454a: $00
    inc sp                                        ; $454b: $33
    dec b                                         ; $454c: $05
    rlca                                          ; $454d: $07
    nop                                           ; $454e: $00
    add hl, bc                                    ; $454f: $09
    ld sp, hl                                     ; $4550: $f9
    ld bc, $0305                                  ; $4551: $01 $05 $03
    nop                                           ; $4554: $00
    dec d                                         ; $4555: $15
    dec a                                         ; $4556: $3d
    nop                                           ; $4557: $00
    inc sp                                        ; $4558: $33
    ld bc, $5fcc                                  ; $4559: $01 $cc $5f
    ld bc, $0000                                  ; $455c: $01 $00 $00
    nop                                           ; $455f: $00
    nop                                           ; $4560: $00
    rrca                                          ; $4561: $0f
    ld a, [$5f00]                                 ; $4562: $fa $00 $5f
    ld bc, $2e00                                  ; $4565: $01 $00 $2e
    dec d                                         ; $4568: $15
    nop                                           ; $4569: $00
    jr z, @+$01                                   ; $456a: $28 $ff

    nop                                           ; $456c: $00
    nop                                           ; $456d: $00
    nop                                           ; $456e: $00
    nop                                           ; $456f: $00
    ld e, a                                       ; $4570: $5f
    ld bc, $2800                                  ; $4571: $01 $00 $28
    rst $38                                       ; $4574: $ff
    nop                                           ; $4575: $00
    nop                                           ; $4576: $00
    nop                                           ; $4577: $00
    nop                                           ; $4578: $00
    add hl, bc                                    ; $4579: $09
    nop                                           ; $457a: $00
    ld h, $05                                     ; $457b: $26 $05
    rlca                                          ; $457d: $07
    nop                                           ; $457e: $00
    add hl, bc                                    ; $457f: $09
    ld sp, hl                                     ; $4580: $f9
    ld bc, $0305                                  ; $4581: $01 $05 $03
    nop                                           ; $4584: $00
    dec d                                         ; $4585: $15
    dec a                                         ; $4586: $3d
    nop                                           ; $4587: $00
    inc sp                                        ; $4588: $33
    ld bc, $5fcc                                  ; $4589: $01 $cc $5f
    ld bc, $0000                                  ; $458c: $01 $00 $00
    nop                                           ; $458f: $00
    nop                                           ; $4590: $00
    add hl, bc                                    ; $4591: $09
    nop                                           ; $4592: $00
    daa                                           ; $4593: $27
    dec b                                         ; $4594: $05
    rlca                                          ; $4595: $07
    nop                                           ; $4596: $00
    add hl, bc                                    ; $4597: $09
    ld sp, hl                                     ; $4598: $f9
    ld bc, $0305                                  ; $4599: $01 $05 $03
    nop                                           ; $459c: $00
    dec d                                         ; $459d: $15
    dec a                                         ; $459e: $3d
    nop                                           ; $459f: $00
    inc sp                                        ; $45a0: $33
    ld bc, $5fcc                                  ; $45a1: $01 $cc $5f
    ld bc, $0000                                  ; $45a4: $01 $00 $00
    nop                                           ; $45a7: $00
    nop                                           ; $45a8: $00
    add hl, bc                                    ; $45a9: $09
    nop                                           ; $45aa: $00
    scf                                           ; $45ab: $37
    dec b                                         ; $45ac: $05
    rlca                                          ; $45ad: $07
    nop                                           ; $45ae: $00
    add hl, bc                                    ; $45af: $09
    ld sp, hl                                     ; $45b0: $f9
    ld bc, $0305                                  ; $45b1: $01 $05 $03
    nop                                           ; $45b4: $00
    dec d                                         ; $45b5: $15
    dec a                                         ; $45b6: $3d
    nop                                           ; $45b7: $00
    inc sp                                        ; $45b8: $33
    ld bc, $5fcc                                  ; $45b9: $01 $cc $5f
    ld bc, $0000                                  ; $45bc: $01 $00 $00
    nop                                           ; $45bf: $00
    nop                                           ; $45c0: $00
    add hl, bc                                    ; $45c1: $09
    nop                                           ; $45c2: $00
    add hl, sp                                    ; $45c3: $39
    dec b                                         ; $45c4: $05
    rlca                                          ; $45c5: $07
    nop                                           ; $45c6: $00
    add hl, bc                                    ; $45c7: $09
    ld sp, hl                                     ; $45c8: $f9
    ld bc, $0305                                  ; $45c9: $01 $05 $03
    nop                                           ; $45cc: $00
    dec d                                         ; $45cd: $15
    dec a                                         ; $45ce: $3d
    nop                                           ; $45cf: $00
    inc sp                                        ; $45d0: $33
    ld bc, $5fcc                                  ; $45d1: $01 $cc $5f
    ld bc, $0000                                  ; $45d4: $01 $00 $00
    nop                                           ; $45d7: $00
    nop                                           ; $45d8: $00
    add hl, bc                                    ; $45d9: $09
    nop                                           ; $45da: $00
    ld e, d                                       ; $45db: $5a
    dec b                                         ; $45dc: $05
    rlca                                          ; $45dd: $07
    nop                                           ; $45de: $00
    add hl, bc                                    ; $45df: $09
    ld sp, hl                                     ; $45e0: $f9
    ld bc, $0305                                  ; $45e1: $01 $05 $03
    nop                                           ; $45e4: $00
    dec d                                         ; $45e5: $15
    dec a                                         ; $45e6: $3d
    nop                                           ; $45e7: $00
    inc sp                                        ; $45e8: $33
    ld bc, $5fcc                                  ; $45e9: $01 $cc $5f
    ld bc, $0000                                  ; $45ec: $01 $00 $00
    nop                                           ; $45ef: $00
    nop                                           ; $45f0: $00
    add hl, bc                                    ; $45f1: $09
    nop                                           ; $45f2: $00
    ld c, b                                       ; $45f3: $48
    dec b                                         ; $45f4: $05
    rlca                                          ; $45f5: $07
    nop                                           ; $45f6: $00
    add hl, bc                                    ; $45f7: $09
    ld sp, hl                                     ; $45f8: $f9
    ld bc, $0305                                  ; $45f9: $01 $05 $03
    nop                                           ; $45fc: $00
    dec d                                         ; $45fd: $15
    dec a                                         ; $45fe: $3d
    nop                                           ; $45ff: $00
    inc sp                                        ; $4600: $33
    ld bc, $5fcc                                  ; $4601: $01 $cc $5f
    ld bc, $0000                                  ; $4604: $01 $00 $00
    nop                                           ; $4607: $00
    nop                                           ; $4608: $00
    ld e, a                                       ; $4609: $5f
    ld bc, $2e00                                  ; $460a: $01 $00 $2e
    dec d                                         ; $460d: $15
    nop                                           ; $460e: $00
    jr z, @+$01                                   ; $460f: $28 $ff

    nop                                           ; $4611: $00
    nop                                           ; $4612: $00
    nop                                           ; $4613: $00
    nop                                           ; $4614: $00
    add hl, bc                                    ; $4615: $09
    nop                                           ; $4616: $00
    ld h, $05                                     ; $4617: $26 $05
    rlca                                          ; $4619: $07
    nop                                           ; $461a: $00
    add hl, bc                                    ; $461b: $09
    ld sp, hl                                     ; $461c: $f9
    ld bc, $0305                                  ; $461d: $01 $05 $03
    nop                                           ; $4620: $00
    dec d                                         ; $4621: $15
    dec a                                         ; $4622: $3d
    nop                                           ; $4623: $00
    inc sp                                        ; $4624: $33
    ld bc, $5fcc                                  ; $4625: $01 $cc $5f
    ld bc, $0000                                  ; $4628: $01 $00 $00
    nop                                           ; $462b: $00
    nop                                           ; $462c: $00
    add hl, bc                                    ; $462d: $09
    nop                                           ; $462e: $00
    daa                                           ; $462f: $27
    dec b                                         ; $4630: $05
    rlca                                          ; $4631: $07
    nop                                           ; $4632: $00
    add hl, bc                                    ; $4633: $09
    ld sp, hl                                     ; $4634: $f9
    ld bc, $0305                                  ; $4635: $01 $05 $03
    nop                                           ; $4638: $00
    dec d                                         ; $4639: $15
    dec a                                         ; $463a: $3d
    nop                                           ; $463b: $00
    inc sp                                        ; $463c: $33
    ld bc, $5fcc                                  ; $463d: $01 $cc $5f
    ld bc, $0000                                  ; $4640: $01 $00 $00
    nop                                           ; $4643: $00
    nop                                           ; $4644: $00
    add hl, bc                                    ; $4645: $09
    nop                                           ; $4646: $00
    scf                                           ; $4647: $37
    dec b                                         ; $4648: $05
    rlca                                          ; $4649: $07
    nop                                           ; $464a: $00
    add hl, bc                                    ; $464b: $09
    ld sp, hl                                     ; $464c: $f9
    ld bc, $0305                                  ; $464d: $01 $05 $03
    nop                                           ; $4650: $00
    dec d                                         ; $4651: $15
    dec a                                         ; $4652: $3d
    nop                                           ; $4653: $00
    inc sp                                        ; $4654: $33
    ld bc, $5fcc                                  ; $4655: $01 $cc $5f
    ld bc, $0000                                  ; $4658: $01 $00 $00
    nop                                           ; $465b: $00
    nop                                           ; $465c: $00
    add hl, bc                                    ; $465d: $09
    nop                                           ; $465e: $00
    add hl, sp                                    ; $465f: $39
    dec b                                         ; $4660: $05
    rlca                                          ; $4661: $07
    nop                                           ; $4662: $00
    add hl, bc                                    ; $4663: $09
    ld sp, hl                                     ; $4664: $f9
    ld bc, $0305                                  ; $4665: $01 $05 $03
    nop                                           ; $4668: $00
    dec d                                         ; $4669: $15
    dec a                                         ; $466a: $3d
    nop                                           ; $466b: $00
    inc sp                                        ; $466c: $33
    ld bc, $5fcc                                  ; $466d: $01 $cc $5f
    ld bc, $0000                                  ; $4670: $01 $00 $00
    nop                                           ; $4673: $00
    nop                                           ; $4674: $00
    add hl, bc                                    ; $4675: $09
    nop                                           ; $4676: $00
    ld e, d                                       ; $4677: $5a
    dec b                                         ; $4678: $05
    rlca                                          ; $4679: $07
    nop                                           ; $467a: $00
    add hl, bc                                    ; $467b: $09
    ld sp, hl                                     ; $467c: $f9
    ld bc, $0305                                  ; $467d: $01 $05 $03
    nop                                           ; $4680: $00
    dec d                                         ; $4681: $15
    dec a                                         ; $4682: $3d
    nop                                           ; $4683: $00
    inc sp                                        ; $4684: $33
    ld bc, $5fcc                                  ; $4685: $01 $cc $5f
    ld bc, $0000                                  ; $4688: $01 $00 $00
    nop                                           ; $468b: $00
    nop                                           ; $468c: $00
    add hl, bc                                    ; $468d: $09
    nop                                           ; $468e: $00
    ld c, b                                       ; $468f: $48
    dec b                                         ; $4690: $05
    rlca                                          ; $4691: $07
    nop                                           ; $4692: $00
    add hl, bc                                    ; $4693: $09
    ld sp, hl                                     ; $4694: $f9
    ld bc, $0305                                  ; $4695: $01 $05 $03
    nop                                           ; $4698: $00
    dec d                                         ; $4699: $15
    dec a                                         ; $469a: $3d
    nop                                           ; $469b: $00
    inc sp                                        ; $469c: $33
    ld bc, $5fcc                                  ; $469d: $01 $cc $5f
    ld bc, $0000                                  ; $46a0: $01 $00 $00
    nop                                           ; $46a3: $00
    nop                                           ; $46a4: $00
    ld e, a                                       ; $46a5: $5f
    ld bc, $2e00                                  ; $46a6: $01 $00 $2e
    dec d                                         ; $46a9: $15
    nop                                           ; $46aa: $00
    jr z, @+$01                                   ; $46ab: $28 $ff

    nop                                           ; $46ad: $00
    nop                                           ; $46ae: $00
    nop                                           ; $46af: $00
    nop                                           ; $46b0: $00
    ld e, a                                       ; $46b1: $5f
    ld bc, $2800                                  ; $46b2: $01 $00 $28
    rst $38                                       ; $46b5: $ff
    nop                                           ; $46b6: $00
    nop                                           ; $46b7: $00
    nop                                           ; $46b8: $00
    nop                                           ; $46b9: $00
    add hl, bc                                    ; $46ba: $09
    nop                                           ; $46bb: $00
    ld b, c                                       ; $46bc: $41
    dec b                                         ; $46bd: $05
    inc b                                         ; $46be: $04
    nop                                           ; $46bf: $00
    ld a, c                                       ; $46c0: $79
    ld bc, $5f12                                  ; $46c1: $01 $12 $5f
    ld bc, $0000                                  ; $46c4: $01 $00 $00
    nop                                           ; $46c7: $00
    nop                                           ; $46c8: $00
    ld e, a                                       ; $46c9: $5f
    ld bc, $2e00                                  ; $46ca: $01 $00 $2e
    dec d                                         ; $46cd: $15
    nop                                           ; $46ce: $00
    jr z, @+$01                                   ; $46cf: $28 $ff

    nop                                           ; $46d1: $00
    nop                                           ; $46d2: $00
    nop                                           ; $46d3: $00
    nop                                           ; $46d4: $00
    ld e, a                                       ; $46d5: $5f
    ld bc, $2800                                  ; $46d6: $01 $00 $28
    rst $38                                       ; $46d9: $ff
    nop                                           ; $46da: $00
    nop                                           ; $46db: $00
    nop                                           ; $46dc: $00
    nop                                           ; $46dd: $00
    ld e, a                                       ; $46de: $5f
    ld bc, $2800                                  ; $46df: $01 $00 $28
    rst $38                                       ; $46e2: $ff
    nop                                           ; $46e3: $00
    nop                                           ; $46e4: $00
    nop                                           ; $46e5: $00
    nop                                           ; $46e6: $00
    add hl, bc                                    ; $46e7: $09
    nop                                           ; $46e8: $00
    ld h, $05                                     ; $46e9: $26 $05
    rlca                                          ; $46eb: $07
    nop                                           ; $46ec: $00
    add hl, bc                                    ; $46ed: $09
    ld sp, hl                                     ; $46ee: $f9
    ld bc, $0305                                  ; $46ef: $01 $05 $03
    nop                                           ; $46f2: $00
    dec d                                         ; $46f3: $15
    dec a                                         ; $46f4: $3d
    nop                                           ; $46f5: $00
    inc sp                                        ; $46f6: $33
    ld bc, $5fcc                                  ; $46f7: $01 $cc $5f
    ld bc, $0000                                  ; $46fa: $01 $00 $00
    nop                                           ; $46fd: $00
    nop                                           ; $46fe: $00
    add hl, bc                                    ; $46ff: $09
    nop                                           ; $4700: $00
    daa                                           ; $4701: $27
    dec b                                         ; $4702: $05
    rlca                                          ; $4703: $07
    nop                                           ; $4704: $00
    add hl, bc                                    ; $4705: $09
    ld sp, hl                                     ; $4706: $f9
    ld bc, $0305                                  ; $4707: $01 $05 $03
    nop                                           ; $470a: $00
    dec d                                         ; $470b: $15
    dec a                                         ; $470c: $3d
    nop                                           ; $470d: $00
    inc sp                                        ; $470e: $33
    ld bc, $5fcc                                  ; $470f: $01 $cc $5f
    ld bc, $0000                                  ; $4712: $01 $00 $00
    nop                                           ; $4715: $00
    nop                                           ; $4716: $00
    add hl, bc                                    ; $4717: $09
    nop                                           ; $4718: $00
    scf                                           ; $4719: $37
    dec b                                         ; $471a: $05
    rlca                                          ; $471b: $07
    nop                                           ; $471c: $00
    add hl, bc                                    ; $471d: $09
    ld sp, hl                                     ; $471e: $f9
    ld bc, $0305                                  ; $471f: $01 $05 $03
    nop                                           ; $4722: $00
    dec d                                         ; $4723: $15
    dec a                                         ; $4724: $3d
    nop                                           ; $4725: $00
    inc sp                                        ; $4726: $33
    ld bc, $5fcc                                  ; $4727: $01 $cc $5f
    ld bc, $0000                                  ; $472a: $01 $00 $00
    nop                                           ; $472d: $00
    nop                                           ; $472e: $00
    add hl, bc                                    ; $472f: $09
    nop                                           ; $4730: $00
    add hl, sp                                    ; $4731: $39
    dec b                                         ; $4732: $05
    rlca                                          ; $4733: $07
    nop                                           ; $4734: $00
    add hl, bc                                    ; $4735: $09
    ld sp, hl                                     ; $4736: $f9
    ld bc, $0305                                  ; $4737: $01 $05 $03
    nop                                           ; $473a: $00
    dec d                                         ; $473b: $15
    dec a                                         ; $473c: $3d
    nop                                           ; $473d: $00
    inc sp                                        ; $473e: $33
    ld bc, $5fcc                                  ; $473f: $01 $cc $5f
    ld bc, $0000                                  ; $4742: $01 $00 $00
    nop                                           ; $4745: $00
    nop                                           ; $4746: $00
    ld e, a                                       ; $4747: $5f
    ld bc, $2e00                                  ; $4748: $01 $00 $2e
    dec d                                         ; $474b: $15
    nop                                           ; $474c: $00
    jr z, @+$01                                   ; $474d: $28 $ff

    nop                                           ; $474f: $00
    nop                                           ; $4750: $00
    nop                                           ; $4751: $00
    nop                                           ; $4752: $00
    add hl, bc                                    ; $4753: $09
    nop                                           ; $4754: $00
    ld h, $05                                     ; $4755: $26 $05
    rlca                                          ; $4757: $07
    nop                                           ; $4758: $00
    add hl, bc                                    ; $4759: $09
    ld sp, hl                                     ; $475a: $f9
    ld bc, $0305                                  ; $475b: $01 $05 $03
    nop                                           ; $475e: $00
    dec d                                         ; $475f: $15
    dec a                                         ; $4760: $3d
    nop                                           ; $4761: $00
    inc sp                                        ; $4762: $33
    ld bc, $5fcc                                  ; $4763: $01 $cc $5f
    ld bc, $0000                                  ; $4766: $01 $00 $00
    nop                                           ; $4769: $00
    nop                                           ; $476a: $00
    add hl, bc                                    ; $476b: $09
    nop                                           ; $476c: $00
    daa                                           ; $476d: $27
    dec b                                         ; $476e: $05
    rlca                                          ; $476f: $07
    nop                                           ; $4770: $00
    add hl, bc                                    ; $4771: $09
    ld sp, hl                                     ; $4772: $f9
    ld bc, $0305                                  ; $4773: $01 $05 $03
    nop                                           ; $4776: $00
    dec d                                         ; $4777: $15
    dec a                                         ; $4778: $3d
    nop                                           ; $4779: $00
    inc sp                                        ; $477a: $33
    ld bc, $5fcc                                  ; $477b: $01 $cc $5f
    ld bc, $0000                                  ; $477e: $01 $00 $00
    nop                                           ; $4781: $00
    nop                                           ; $4782: $00
    add hl, bc                                    ; $4783: $09
    nop                                           ; $4784: $00
    scf                                           ; $4785: $37
    dec b                                         ; $4786: $05
    rlca                                          ; $4787: $07
    nop                                           ; $4788: $00
    add hl, bc                                    ; $4789: $09
    ld sp, hl                                     ; $478a: $f9
    ld bc, $0305                                  ; $478b: $01 $05 $03
    nop                                           ; $478e: $00
    dec d                                         ; $478f: $15
    dec a                                         ; $4790: $3d
    nop                                           ; $4791: $00
    inc sp                                        ; $4792: $33
    ld bc, $5fcc                                  ; $4793: $01 $cc $5f
    ld bc, $0000                                  ; $4796: $01 $00 $00
    nop                                           ; $4799: $00
    nop                                           ; $479a: $00
    add hl, bc                                    ; $479b: $09
    nop                                           ; $479c: $00
    add hl, sp                                    ; $479d: $39
    dec b                                         ; $479e: $05
    rlca                                          ; $479f: $07
    nop                                           ; $47a0: $00
    add hl, bc                                    ; $47a1: $09
    ld sp, hl                                     ; $47a2: $f9
    ld bc, $0305                                  ; $47a3: $01 $05 $03
    nop                                           ; $47a6: $00
    dec d                                         ; $47a7: $15
    dec a                                         ; $47a8: $3d
    nop                                           ; $47a9: $00
    inc sp                                        ; $47aa: $33
    ld bc, $5fcc                                  ; $47ab: $01 $cc $5f
    ld bc, $0000                                  ; $47ae: $01 $00 $00
    nop                                           ; $47b1: $00
    nop                                           ; $47b2: $00
    add hl, bc                                    ; $47b3: $09
    nop                                           ; $47b4: $00
    ld c, b                                       ; $47b5: $48
    dec b                                         ; $47b6: $05
    rlca                                          ; $47b7: $07
    nop                                           ; $47b8: $00
    add hl, bc                                    ; $47b9: $09
    ld sp, hl                                     ; $47ba: $f9
    ld bc, $0305                                  ; $47bb: $01 $05 $03
    nop                                           ; $47be: $00
    dec d                                         ; $47bf: $15
    dec a                                         ; $47c0: $3d
    nop                                           ; $47c1: $00
    inc sp                                        ; $47c2: $33
    ld bc, $5fcc                                  ; $47c3: $01 $cc $5f
    ld bc, $0000                                  ; $47c6: $01 $00 $00
    nop                                           ; $47c9: $00
    nop                                           ; $47ca: $00
    ld e, a                                       ; $47cb: $5f
    ld bc, $2e00                                  ; $47cc: $01 $00 $2e
    dec d                                         ; $47cf: $15
    nop                                           ; $47d0: $00
    jr z, @+$01                                   ; $47d1: $28 $ff

    nop                                           ; $47d3: $00
    nop                                           ; $47d4: $00
    nop                                           ; $47d5: $00
    nop                                           ; $47d6: $00
    add hl, bc                                    ; $47d7: $09
    nop                                           ; $47d8: $00
    dec sp                                        ; $47d9: $3b
    inc b                                         ; $47da: $04
    rlca                                          ; $47db: $07
    nop                                           ; $47dc: $00
    add hl, bc                                    ; $47dd: $09
    ld sp, hl                                     ; $47de: $f9
    ld bc, $0305                                  ; $47df: $01 $05 $03
    nop                                           ; $47e2: $00
    dec d                                         ; $47e3: $15
    dec a                                         ; $47e4: $3d
    nop                                           ; $47e5: $00
    inc sp                                        ; $47e6: $33
    ld bc, $5fcc                                  ; $47e7: $01 $cc $5f
    ld bc, $0000                                  ; $47ea: $01 $00 $00
    nop                                           ; $47ed: $00
    nop                                           ; $47ee: $00
    ld e, a                                       ; $47ef: $5f
    ld bc, $2e00                                  ; $47f0: $01 $00 $2e
    dec d                                         ; $47f3: $15
    nop                                           ; $47f4: $00
    jr z, @+$01                                   ; $47f5: $28 $ff

    nop                                           ; $47f7: $00
    nop                                           ; $47f8: $00
    nop                                           ; $47f9: $00
    nop                                           ; $47fa: $00
    add hl, bc                                    ; $47fb: $09
    nop                                           ; $47fc: $00
    ld b, e                                       ; $47fd: $43
    inc b                                         ; $47fe: $04
    rlca                                          ; $47ff: $07
    nop                                           ; $4800: $00
    add hl, bc                                    ; $4801: $09
    ld sp, hl                                     ; $4802: $f9
    ld bc, $0305                                  ; $4803: $01 $05 $03
    nop                                           ; $4806: $00
    dec d                                         ; $4807: $15
    nop                                           ; $4808: $00
    nop                                           ; $4809: $00
    inc sp                                        ; $480a: $33
    inc b                                         ; $480b: $04
    ld b, $5f                                     ; $480c: $06 $5f
    ld bc, $0000                                  ; $480e: $01 $00 $00
    nop                                           ; $4811: $00
    nop                                           ; $4812: $00
    ld c, l                                       ; $4813: $4d
    nop                                           ; $4814: $00
    nop                                           ; $4815: $00
    dec bc                                        ; $4816: $0b
    dec b                                         ; $4817: $05
    ld b, $05                                     ; $4818: $06 $05
    rlca                                          ; $481a: $07
    nop                                           ; $481b: $00
    add hl, bc                                    ; $481c: $09
    ld sp, hl                                     ; $481d: $f9
    ld bc, $0305                                  ; $481e: $01 $05 $03
    nop                                           ; $4821: $00
    dec d                                         ; $4822: $15
    nop                                           ; $4823: $00
    nop                                           ; $4824: $00
    inc sp                                        ; $4825: $33
    inc b                                         ; $4826: $04
    ld b, $5f                                     ; $4827: $06 $5f
    ld bc, $0000                                  ; $4829: $01 $00 $00
    nop                                           ; $482c: $00
    nop                                           ; $482d: $00
    ld c, l                                       ; $482e: $4d
    nop                                           ; $482f: $00
    nop                                           ; $4830: $00
    ld e, a                                       ; $4831: $5f
    ld bc, $2e00                                  ; $4832: $01 $00 $2e
    dec d                                         ; $4835: $15
    nop                                           ; $4836: $00
    jr z, @+$01                                   ; $4837: $28 $ff

    nop                                           ; $4839: $00
    nop                                           ; $483a: $00
    nop                                           ; $483b: $00
    nop                                           ; $483c: $00
    ld e, a                                       ; $483d: $5f
    ld bc, $2800                                  ; $483e: $01 $00 $28
    rst $38                                       ; $4841: $ff
    nop                                           ; $4842: $00
    nop                                           ; $4843: $00
    nop                                           ; $4844: $00
    nop                                           ; $4845: $00
    ld e, a                                       ; $4846: $5f
    ld bc, $2800                                  ; $4847: $01 $00 $28
    rst $38                                       ; $484a: $ff
    nop                                           ; $484b: $00
    nop                                           ; $484c: $00
    nop                                           ; $484d: $00
    nop                                           ; $484e: $00
    ld e, a                                       ; $484f: $5f
    ld bc, $2800                                  ; $4850: $01 $00 $28
    rst $38                                       ; $4853: $ff
    nop                                           ; $4854: $00
    nop                                           ; $4855: $00
    nop                                           ; $4856: $00
    nop                                           ; $4857: $00
    ld e, a                                       ; $4858: $5f
    ld bc, $2800                                  ; $4859: $01 $00 $28
    rst $38                                       ; $485c: $ff
    nop                                           ; $485d: $00
    nop                                           ; $485e: $00
    nop                                           ; $485f: $00
    nop                                           ; $4860: $00
    ld e, a                                       ; $4861: $5f
    ld bc, $2800                                  ; $4862: $01 $00 $28
    rst $38                                       ; $4865: $ff
    nop                                           ; $4866: $00
    nop                                           ; $4867: $00
    nop                                           ; $4868: $00
    nop                                           ; $4869: $00
    add hl, bc                                    ; $486a: $09
    nop                                           ; $486b: $00
    ld d, a                                       ; $486c: $57
    dec b                                         ; $486d: $05
    inc bc                                        ; $486e: $03
    nop                                           ; $486f: $00
    ld e, a                                       ; $4870: $5f
    ld bc, $0000                                  ; $4871: $01 $00 $00
    nop                                           ; $4874: $00
    nop                                           ; $4875: $00
    ld e, a                                       ; $4876: $5f
    nop                                           ; $4877: $00
    nop                                           ; $4878: $00
    add hl, bc                                    ; $4879: $09
    nop                                           ; $487a: $00
    ld c, d                                       ; $487b: $4a
    dec b                                         ; $487c: $05
    rlca                                          ; $487d: $07
    nop                                           ; $487e: $00
    add hl, bc                                    ; $487f: $09
    ld sp, hl                                     ; $4880: $f9
    ld bc, $0305                                  ; $4881: $01 $05 $03
    nop                                           ; $4884: $00
    dec d                                         ; $4885: $15
    dec a                                         ; $4886: $3d
    nop                                           ; $4887: $00
    inc sp                                        ; $4888: $33
    ld bc, $5fcc                                  ; $4889: $01 $cc $5f
    ld bc, $0000                                  ; $488c: $01 $00 $00
    nop                                           ; $488f: $00
    nop                                           ; $4890: $00
    add hl, bc                                    ; $4891: $09
    nop                                           ; $4892: $00
    ld c, e                                       ; $4893: $4b
    dec b                                         ; $4894: $05
    rlca                                          ; $4895: $07
    nop                                           ; $4896: $00
    add hl, bc                                    ; $4897: $09
    ld sp, hl                                     ; $4898: $f9
    ld bc, $0305                                  ; $4899: $01 $05 $03
    nop                                           ; $489c: $00
    dec d                                         ; $489d: $15
    dec a                                         ; $489e: $3d
    nop                                           ; $489f: $00
    inc sp                                        ; $48a0: $33
    ld bc, $5fcc                                  ; $48a1: $01 $cc $5f
    ld bc, $0000                                  ; $48a4: $01 $00 $00
    nop                                           ; $48a7: $00
    nop                                           ; $48a8: $00
    ld e, a                                       ; $48a9: $5f
    ld bc, $2e00                                  ; $48aa: $01 $00 $2e
    dec d                                         ; $48ad: $15
    nop                                           ; $48ae: $00
    jr z, @+$01                                   ; $48af: $28 $ff

    nop                                           ; $48b1: $00
    nop                                           ; $48b2: $00
    nop                                           ; $48b3: $00
    nop                                           ; $48b4: $00
    ld e, a                                       ; $48b5: $5f
    ld bc, $2800                                  ; $48b6: $01 $00 $28
    rst $38                                       ; $48b9: $ff
    nop                                           ; $48ba: $00
    nop                                           ; $48bb: $00
    nop                                           ; $48bc: $00
    nop                                           ; $48bd: $00
    add hl, bc                                    ; $48be: $09
    nop                                           ; $48bf: $00
    ld c, d                                       ; $48c0: $4a
    dec b                                         ; $48c1: $05
    ld [hl-], a                                   ; $48c2: $32
    nop                                           ; $48c3: $00
    add hl, bc                                    ; $48c4: $09
    inc de                                        ; $48c5: $13
    ld bc, $0305                                  ; $48c6: $01 $05 $03
    nop                                           ; $48c9: $00
    ld e, a                                       ; $48ca: $5f
    ld bc, $0000                                  ; $48cb: $01 $00 $00
    nop                                           ; $48ce: $00
    nop                                           ; $48cf: $00
    ld d, [hl]                                    ; $48d0: $56
    nop                                           ; $48d1: $00
    nop                                           ; $48d2: $00
    ld e, a                                       ; $48d3: $5f
    ld bc, $1700                                  ; $48d4: $01 $00 $17
    nop                                           ; $48d7: $00
    nop                                           ; $48d8: $00
    dec de                                        ; $48d9: $1b
    ld b, $00                                     ; $48da: $06 $00
    dec d                                         ; $48dc: $15
    nop                                           ; $48dd: $00
    nop                                           ; $48de: $00
    inc sp                                        ; $48df: $33
    inc b                                         ; $48e0: $04
    cp $17                                        ; $48e1: $fe $17
    scf                                           ; $48e3: $37
    nop                                           ; $48e4: $00
    dec de                                        ; $48e5: $1b
    ld b, $00                                     ; $48e6: $06 $00
    dec d                                         ; $48e8: $15
    add hl, de                                    ; $48e9: $19
    nop                                           ; $48ea: $00
    inc sp                                        ; $48eb: $33
    inc b                                         ; $48ec: $04
    rst $38                                       ; $48ed: $ff
    dec d                                         ; $48ee: $15
    nop                                           ; $48ef: $00
    nop                                           ; $48f0: $00
    inc sp                                        ; $48f1: $33
    dec b                                         ; $48f2: $05
    nop                                           ; $48f3: $00
    dec d                                         ; $48f4: $15
    add hl, de                                    ; $48f5: $19
    nop                                           ; $48f6: $00
    inc sp                                        ; $48f7: $33
    dec b                                         ; $48f8: $05
    ld bc, $0015                                  ; $48f9: $01 $15 $00
    nop                                           ; $48fc: $00
    inc sp                                        ; $48fd: $33
    dec b                                         ; $48fe: $05
    ld [bc], a                                    ; $48ff: $02
    dec d                                         ; $4900: $15
    add hl, de                                    ; $4901: $19
    nop                                           ; $4902: $00
    inc sp                                        ; $4903: $33
    dec b                                         ; $4904: $05
    inc bc                                        ; $4905: $03
    ld l, c                                       ; $4906: $69
    ccf                                           ; $4907: $3f
    nop                                           ; $4908: $00
    add hl, bc                                    ; $4909: $09
    cp $01                                        ; $490a: $fe $01
    dec b                                         ; $490c: $05
    ld b, $00                                     ; $490d: $06 $00
    rrca                                          ; $490f: $0f
    inc de                                        ; $4910: $13
    ld bc, $ff0f                                  ; $4911: $01 $0f $ff
    ld [bc], a                                    ; $4914: $02
    ld d, a                                       ; $4915: $57
    nop                                           ; $4916: $00
    nop                                           ; $4917: $00
    ld a, c                                       ; $4918: $79
    ld [bc], a                                    ; $4919: $02
    rra                                           ; $491a: $1f
    nop                                           ; $491b: $00
    nop                                           ; $491c: $00
    nop                                           ; $491d: $00
    ld l, c                                       ; $491e: $69
    ld b, c                                       ; $491f: $41
    nop                                           ; $4920: $00
    add hl, bc                                    ; $4921: $09
    cp $00                                        ; $4922: $fe $00
    dec b                                         ; $4924: $05
    inc c                                         ; $4925: $0c
    nop                                           ; $4926: $00
    dec d                                         ; $4927: $15
    nop                                           ; $4928: $00
    nop                                           ; $4929: $00
    inc sp                                        ; $492a: $33
    dec b                                         ; $492b: $05
    inc b                                         ; $492c: $04
    dec d                                         ; $492d: $15
    dec d                                         ; $492e: $15
    nop                                           ; $492f: $00
    inc sp                                        ; $4930: $33
    dec b                                         ; $4931: $05
    dec b                                         ; $4932: $05
    jr c, @+$41                                   ; $4933: $38 $3f

    nop                                           ; $4935: $00
    rrca                                          ; $4936: $0f
    cp $01                                        ; $4937: $fe $01
    rrca                                          ; $4939: $0f
    inc de                                        ; $493a: $13
    ld bc, $0057                                  ; $493b: $01 $57 $00
    nop                                           ; $493e: $00
    rrca                                          ; $493f: $0f
    rst $38                                       ; $4940: $ff
    ld [bc], a                                    ; $4941: $02
    ld a, c                                       ; $4942: $79
    ld [bc], a                                    ; $4943: $02
    rra                                           ; $4944: $1f
    nop                                           ; $4945: $00
    nop                                           ; $4946: $00
    nop                                           ; $4947: $00
    rrca                                          ; $4948: $0f
    cp $01                                        ; $4949: $fe $01
    rrca                                          ; $494b: $0f
    inc de                                        ; $494c: $13
    ld bc, $ff0f                                  ; $494d: $01 $0f $ff
    ld [bc], a                                    ; $4950: $02
    ld a, c                                       ; $4951: $79
    ld [bc], a                                    ; $4952: $02
    rra                                           ; $4953: $1f
    nop                                           ; $4954: $00
    nop                                           ; $4955: $00
    nop                                           ; $4956: $00
    ld e, a                                       ; $4957: $5f
    ld bc, $2e00                                  ; $4958: $01 $00 $2e
    dec d                                         ; $495b: $15
    nop                                           ; $495c: $00
    jr z, @+$01                                   ; $495d: $28 $ff

    nop                                           ; $495f: $00
    nop                                           ; $4960: $00
    nop                                           ; $4961: $00
    nop                                           ; $4962: $00
    add hl, bc                                    ; $4963: $09
    nop                                           ; $4964: $00
    ld c, e                                       ; $4965: $4b
    dec b                                         ; $4966: $05
    rlca                                          ; $4967: $07
    nop                                           ; $4968: $00
    add hl, bc                                    ; $4969: $09
    ld sp, hl                                     ; $496a: $f9
    ld bc, $0305                                  ; $496b: $01 $05 $03
    nop                                           ; $496e: $00
    dec d                                         ; $496f: $15
    dec a                                         ; $4970: $3d
    nop                                           ; $4971: $00
    inc sp                                        ; $4972: $33
    ld bc, $5fcc                                  ; $4973: $01 $cc $5f
    ld bc, $0000                                  ; $4976: $01 $00 $00
    nop                                           ; $4979: $00
    nop                                           ; $497a: $00
    add hl, bc                                    ; $497b: $09
    nop                                           ; $497c: $00
    ld c, l                                       ; $497d: $4d
    dec b                                         ; $497e: $05
    rlca                                          ; $497f: $07
    nop                                           ; $4980: $00
    add hl, bc                                    ; $4981: $09
    ld sp, hl                                     ; $4982: $f9
    ld bc, $0305                                  ; $4983: $01 $05 $03
    nop                                           ; $4986: $00
    dec d                                         ; $4987: $15
    dec a                                         ; $4988: $3d
    nop                                           ; $4989: $00
    inc sp                                        ; $498a: $33
    ld bc, $5fcc                                  ; $498b: $01 $cc $5f
    ld bc, $0000                                  ; $498e: $01 $00 $00
    nop                                           ; $4991: $00
    nop                                           ; $4992: $00
    add hl, bc                                    ; $4993: $09
    nop                                           ; $4994: $00
    ld c, [hl]                                    ; $4995: $4e
    dec b                                         ; $4996: $05
    rlca                                          ; $4997: $07
    nop                                           ; $4998: $00
    add hl, bc                                    ; $4999: $09
    ld sp, hl                                     ; $499a: $f9
    ld bc, $0305                                  ; $499b: $01 $05 $03
    nop                                           ; $499e: $00
    dec d                                         ; $499f: $15
    dec a                                         ; $49a0: $3d
    nop                                           ; $49a1: $00
    inc sp                                        ; $49a2: $33
    ld bc, $5fcc                                  ; $49a3: $01 $cc $5f
    ld bc, $0000                                  ; $49a6: $01 $00 $00
    nop                                           ; $49a9: $00
    nop                                           ; $49aa: $00
    ld e, a                                       ; $49ab: $5f
    ld bc, $2e00                                  ; $49ac: $01 $00 $2e
    dec d                                         ; $49af: $15
    nop                                           ; $49b0: $00
    jr z, @+$01                                   ; $49b1: $28 $ff

    nop                                           ; $49b3: $00
    nop                                           ; $49b4: $00
    nop                                           ; $49b5: $00
    nop                                           ; $49b6: $00
    ld e, a                                       ; $49b7: $5f
    ld bc, $2800                                  ; $49b8: $01 $00 $28
    rst $38                                       ; $49bb: $ff
    nop                                           ; $49bc: $00
    nop                                           ; $49bd: $00
    nop                                           ; $49be: $00
    nop                                           ; $49bf: $00
    add hl, bc                                    ; $49c0: $09
    nop                                           ; $49c1: $00
    ld c, l                                       ; $49c2: $4d
    dec b                                         ; $49c3: $05
    rlca                                          ; $49c4: $07
    nop                                           ; $49c5: $00
    add hl, bc                                    ; $49c6: $09
    ld sp, hl                                     ; $49c7: $f9
    ld bc, $0305                                  ; $49c8: $01 $05 $03
    nop                                           ; $49cb: $00
    dec d                                         ; $49cc: $15
    dec a                                         ; $49cd: $3d
    nop                                           ; $49ce: $00
    inc sp                                        ; $49cf: $33
    ld bc, $5fcc                                  ; $49d0: $01 $cc $5f
    ld bc, $0000                                  ; $49d3: $01 $00 $00
    nop                                           ; $49d6: $00
    nop                                           ; $49d7: $00
    ld e, a                                       ; $49d8: $5f
    ld bc, $2e00                                  ; $49d9: $01 $00 $2e
    dec d                                         ; $49dc: $15
    nop                                           ; $49dd: $00
    jr z, @+$01                                   ; $49de: $28 $ff

    nop                                           ; $49e0: $00
    nop                                           ; $49e1: $00
    nop                                           ; $49e2: $00
    nop                                           ; $49e3: $00
    add hl, bc                                    ; $49e4: $09
    nop                                           ; $49e5: $00
    ld h, $05                                     ; $49e6: $26 $05
    rlca                                          ; $49e8: $07
    nop                                           ; $49e9: $00
    add hl, bc                                    ; $49ea: $09
    ld sp, hl                                     ; $49eb: $f9
    ld bc, $0305                                  ; $49ec: $01 $05 $03
    nop                                           ; $49ef: $00
    dec d                                         ; $49f0: $15
    dec a                                         ; $49f1: $3d
    nop                                           ; $49f2: $00
    inc sp                                        ; $49f3: $33
    ld bc, $5fcc                                  ; $49f4: $01 $cc $5f
    ld bc, $0000                                  ; $49f7: $01 $00 $00
    nop                                           ; $49fa: $00
    nop                                           ; $49fb: $00
    add hl, bc                                    ; $49fc: $09
    nop                                           ; $49fd: $00
    daa                                           ; $49fe: $27
    dec b                                         ; $49ff: $05
    rlca                                          ; $4a00: $07
    nop                                           ; $4a01: $00
    add hl, bc                                    ; $4a02: $09
    ld sp, hl                                     ; $4a03: $f9
    ld bc, $0305                                  ; $4a04: $01 $05 $03
    nop                                           ; $4a07: $00
    dec d                                         ; $4a08: $15
    dec a                                         ; $4a09: $3d
    nop                                           ; $4a0a: $00
    inc sp                                        ; $4a0b: $33
    ld bc, $5fcc                                  ; $4a0c: $01 $cc $5f
    ld bc, $0000                                  ; $4a0f: $01 $00 $00
    nop                                           ; $4a12: $00
    nop                                           ; $4a13: $00
    add hl, bc                                    ; $4a14: $09
    nop                                           ; $4a15: $00
    scf                                           ; $4a16: $37
    dec b                                         ; $4a17: $05
    rlca                                          ; $4a18: $07
    nop                                           ; $4a19: $00
    add hl, bc                                    ; $4a1a: $09
    ld sp, hl                                     ; $4a1b: $f9
    ld bc, $0305                                  ; $4a1c: $01 $05 $03
    nop                                           ; $4a1f: $00
    dec d                                         ; $4a20: $15
    dec a                                         ; $4a21: $3d
    nop                                           ; $4a22: $00
    inc sp                                        ; $4a23: $33
    ld bc, $5fcc                                  ; $4a24: $01 $cc $5f
    ld bc, $0000                                  ; $4a27: $01 $00 $00
    nop                                           ; $4a2a: $00
    nop                                           ; $4a2b: $00
    add hl, bc                                    ; $4a2c: $09
    nop                                           ; $4a2d: $00
    add hl, sp                                    ; $4a2e: $39
    dec b                                         ; $4a2f: $05
    rlca                                          ; $4a30: $07
    nop                                           ; $4a31: $00
    add hl, bc                                    ; $4a32: $09
    ld sp, hl                                     ; $4a33: $f9
    ld bc, $0305                                  ; $4a34: $01 $05 $03
    nop                                           ; $4a37: $00
    dec d                                         ; $4a38: $15
    dec a                                         ; $4a39: $3d
    nop                                           ; $4a3a: $00
    inc sp                                        ; $4a3b: $33
    ld bc, $5fcc                                  ; $4a3c: $01 $cc $5f
    ld bc, $0000                                  ; $4a3f: $01 $00 $00
    nop                                           ; $4a42: $00
    nop                                           ; $4a43: $00
    ld e, a                                       ; $4a44: $5f
    ld bc, $2e00                                  ; $4a45: $01 $00 $2e
    dec d                                         ; $4a48: $15
    nop                                           ; $4a49: $00
    jr z, @+$01                                   ; $4a4a: $28 $ff

    nop                                           ; $4a4c: $00
    nop                                           ; $4a4d: $00
    nop                                           ; $4a4e: $00
    nop                                           ; $4a4f: $00
    add hl, bc                                    ; $4a50: $09
    nop                                           ; $4a51: $00
    ld h, $05                                     ; $4a52: $26 $05
    rlca                                          ; $4a54: $07
    nop                                           ; $4a55: $00
    add hl, bc                                    ; $4a56: $09
    ld sp, hl                                     ; $4a57: $f9
    ld bc, $0305                                  ; $4a58: $01 $05 $03
    nop                                           ; $4a5b: $00
    dec d                                         ; $4a5c: $15
    dec a                                         ; $4a5d: $3d
    nop                                           ; $4a5e: $00
    inc sp                                        ; $4a5f: $33
    ld bc, $5fcc                                  ; $4a60: $01 $cc $5f
    ld bc, $0000                                  ; $4a63: $01 $00 $00
    nop                                           ; $4a66: $00
    nop                                           ; $4a67: $00
    add hl, bc                                    ; $4a68: $09
    nop                                           ; $4a69: $00
    daa                                           ; $4a6a: $27
    dec b                                         ; $4a6b: $05
    rlca                                          ; $4a6c: $07
    nop                                           ; $4a6d: $00
    add hl, bc                                    ; $4a6e: $09
    ld sp, hl                                     ; $4a6f: $f9
    ld bc, $0305                                  ; $4a70: $01 $05 $03
    nop                                           ; $4a73: $00
    dec d                                         ; $4a74: $15
    dec a                                         ; $4a75: $3d
    nop                                           ; $4a76: $00
    inc sp                                        ; $4a77: $33
    ld bc, $5fcc                                  ; $4a78: $01 $cc $5f
    ld bc, $0000                                  ; $4a7b: $01 $00 $00
    nop                                           ; $4a7e: $00
    nop                                           ; $4a7f: $00
    add hl, bc                                    ; $4a80: $09
    nop                                           ; $4a81: $00
    scf                                           ; $4a82: $37
    dec b                                         ; $4a83: $05
    rlca                                          ; $4a84: $07
    nop                                           ; $4a85: $00
    add hl, bc                                    ; $4a86: $09
    ld sp, hl                                     ; $4a87: $f9
    ld bc, $0305                                  ; $4a88: $01 $05 $03
    nop                                           ; $4a8b: $00
    dec d                                         ; $4a8c: $15
    dec a                                         ; $4a8d: $3d
    nop                                           ; $4a8e: $00
    inc sp                                        ; $4a8f: $33
    ld bc, $5fcc                                  ; $4a90: $01 $cc $5f
    ld bc, $0000                                  ; $4a93: $01 $00 $00
    nop                                           ; $4a96: $00
    nop                                           ; $4a97: $00
    add hl, bc                                    ; $4a98: $09
    nop                                           ; $4a99: $00
    add hl, sp                                    ; $4a9a: $39
    dec b                                         ; $4a9b: $05
    rlca                                          ; $4a9c: $07
    nop                                           ; $4a9d: $00
    add hl, bc                                    ; $4a9e: $09
    ld sp, hl                                     ; $4a9f: $f9
    ld bc, $0305                                  ; $4aa0: $01 $05 $03
    nop                                           ; $4aa3: $00
    dec d                                         ; $4aa4: $15
    dec a                                         ; $4aa5: $3d
    nop                                           ; $4aa6: $00
    inc sp                                        ; $4aa7: $33
    ld bc, $5fcc                                  ; $4aa8: $01 $cc $5f
    ld bc, $0000                                  ; $4aab: $01 $00 $00
    nop                                           ; $4aae: $00
    nop                                           ; $4aaf: $00
    add hl, bc                                    ; $4ab0: $09
    nop                                           ; $4ab1: $00
    ld e, d                                       ; $4ab2: $5a
    dec b                                         ; $4ab3: $05
    rlca                                          ; $4ab4: $07
    nop                                           ; $4ab5: $00
    add hl, bc                                    ; $4ab6: $09
    ld sp, hl                                     ; $4ab7: $f9
    ld bc, $0305                                  ; $4ab8: $01 $05 $03
    nop                                           ; $4abb: $00
    dec d                                         ; $4abc: $15
    dec a                                         ; $4abd: $3d
    nop                                           ; $4abe: $00
    inc sp                                        ; $4abf: $33
    ld bc, $5fcc                                  ; $4ac0: $01 $cc $5f
    ld bc, $0000                                  ; $4ac3: $01 $00 $00
    nop                                           ; $4ac6: $00
    nop                                           ; $4ac7: $00
    ld e, a                                       ; $4ac8: $5f
    ld bc, $2e00                                  ; $4ac9: $01 $00 $2e
    dec d                                         ; $4acc: $15
    nop                                           ; $4acd: $00
    jr z, @+$01                                   ; $4ace: $28 $ff

    nop                                           ; $4ad0: $00
    nop                                           ; $4ad1: $00
    nop                                           ; $4ad2: $00
    nop                                           ; $4ad3: $00
    add hl, bc                                    ; $4ad4: $09
    nop                                           ; $4ad5: $00
    ld h, $05                                     ; $4ad6: $26 $05
    rlca                                          ; $4ad8: $07
    nop                                           ; $4ad9: $00
    add hl, bc                                    ; $4ada: $09
    ld sp, hl                                     ; $4adb: $f9
    ld bc, $0305                                  ; $4adc: $01 $05 $03
    nop                                           ; $4adf: $00
    dec d                                         ; $4ae0: $15
    dec a                                         ; $4ae1: $3d
    nop                                           ; $4ae2: $00
    inc sp                                        ; $4ae3: $33
    ld bc, $5fcc                                  ; $4ae4: $01 $cc $5f
    ld bc, $0000                                  ; $4ae7: $01 $00 $00
    nop                                           ; $4aea: $00
    nop                                           ; $4aeb: $00
    add hl, bc                                    ; $4aec: $09
    nop                                           ; $4aed: $00
    daa                                           ; $4aee: $27
    dec b                                         ; $4aef: $05
    rlca                                          ; $4af0: $07
    nop                                           ; $4af1: $00
    add hl, bc                                    ; $4af2: $09
    ld sp, hl                                     ; $4af3: $f9
    ld bc, $0305                                  ; $4af4: $01 $05 $03
    nop                                           ; $4af7: $00
    dec d                                         ; $4af8: $15
    dec a                                         ; $4af9: $3d
    nop                                           ; $4afa: $00
    inc sp                                        ; $4afb: $33
    ld bc, $5fcc                                  ; $4afc: $01 $cc $5f
    ld bc, $0000                                  ; $4aff: $01 $00 $00
    nop                                           ; $4b02: $00
    nop                                           ; $4b03: $00
    add hl, bc                                    ; $4b04: $09
    nop                                           ; $4b05: $00
    scf                                           ; $4b06: $37
    dec b                                         ; $4b07: $05
    rlca                                          ; $4b08: $07
    nop                                           ; $4b09: $00
    add hl, bc                                    ; $4b0a: $09
    ld sp, hl                                     ; $4b0b: $f9
    ld bc, $0305                                  ; $4b0c: $01 $05 $03
    nop                                           ; $4b0f: $00
    dec d                                         ; $4b10: $15
    dec a                                         ; $4b11: $3d
    nop                                           ; $4b12: $00
    inc sp                                        ; $4b13: $33
    ld bc, $5fcc                                  ; $4b14: $01 $cc $5f
    ld bc, $0000                                  ; $4b17: $01 $00 $00
    nop                                           ; $4b1a: $00
    nop                                           ; $4b1b: $00
    add hl, bc                                    ; $4b1c: $09
    nop                                           ; $4b1d: $00
    add hl, sp                                    ; $4b1e: $39
    dec b                                         ; $4b1f: $05
    rlca                                          ; $4b20: $07
    nop                                           ; $4b21: $00
    add hl, bc                                    ; $4b22: $09
    ld sp, hl                                     ; $4b23: $f9
    ld bc, $0305                                  ; $4b24: $01 $05 $03
    nop                                           ; $4b27: $00
    dec d                                         ; $4b28: $15
    dec a                                         ; $4b29: $3d
    nop                                           ; $4b2a: $00
    inc sp                                        ; $4b2b: $33
    ld bc, $5fcc                                  ; $4b2c: $01 $cc $5f
    ld bc, $0000                                  ; $4b2f: $01 $00 $00
    nop                                           ; $4b32: $00
    nop                                           ; $4b33: $00
    add hl, bc                                    ; $4b34: $09
    nop                                           ; $4b35: $00
    ld e, d                                       ; $4b36: $5a
    dec b                                         ; $4b37: $05
    rlca                                          ; $4b38: $07
    nop                                           ; $4b39: $00
    add hl, bc                                    ; $4b3a: $09
    ld sp, hl                                     ; $4b3b: $f9
    ld bc, $0305                                  ; $4b3c: $01 $05 $03
    nop                                           ; $4b3f: $00
    dec d                                         ; $4b40: $15
    dec a                                         ; $4b41: $3d
    nop                                           ; $4b42: $00
    inc sp                                        ; $4b43: $33
    ld bc, $5fcc                                  ; $4b44: $01 $cc $5f
    ld bc, $0000                                  ; $4b47: $01 $00 $00
    nop                                           ; $4b4a: $00
    nop                                           ; $4b4b: $00
    ld e, a                                       ; $4b4c: $5f
    ld bc, $2e00                                  ; $4b4d: $01 $00 $2e
    dec d                                         ; $4b50: $15
    nop                                           ; $4b51: $00
    jr z, @+$01                                   ; $4b52: $28 $ff

    nop                                           ; $4b54: $00
    nop                                           ; $4b55: $00
    nop                                           ; $4b56: $00
    nop                                           ; $4b57: $00
    add hl, bc                                    ; $4b58: $09
    nop                                           ; $4b59: $00
    ld c, b                                       ; $4b5a: $48
    inc b                                         ; $4b5b: $04
    rlca                                          ; $4b5c: $07
    nop                                           ; $4b5d: $00
    add hl, bc                                    ; $4b5e: $09
    ld sp, hl                                     ; $4b5f: $f9
    ld bc, $0305                                  ; $4b60: $01 $05 $03
    nop                                           ; $4b63: $00
    dec d                                         ; $4b64: $15
    dec a                                         ; $4b65: $3d
    nop                                           ; $4b66: $00
    inc sp                                        ; $4b67: $33
    ld bc, $5fcc                                  ; $4b68: $01 $cc $5f
    ld bc, $0000                                  ; $4b6b: $01 $00 $00
    nop                                           ; $4b6e: $00
    nop                                           ; $4b6f: $00
    ld e, a                                       ; $4b70: $5f
    ld bc, $4d00                                  ; $4b71: $01 $00 $4d
    nop                                           ; $4b74: $00
    nop                                           ; $4b75: $00
    jr z, @+$01                                   ; $4b76: $28 $ff

    nop                                           ; $4b78: $00
    nop                                           ; $4b79: $00
    nop                                           ; $4b7a: $00
    nop                                           ; $4b7b: $00
    add hl, bc                                    ; $4b7c: $09
    nop                                           ; $4b7d: $00
    add hl, bc                                    ; $4b7e: $09
    dec b                                         ; $4b7f: $05
    inc bc                                        ; $4b80: $03
    nop                                           ; $4b81: $00
    ld e, a                                       ; $4b82: $5f
    ld bc, $0000                                  ; $4b83: $01 $00 $00
    nop                                           ; $4b86: $00
    nop                                           ; $4b87: $00
    ld e, a                                       ; $4b88: $5f
    ld bc, $2e00                                  ; $4b89: $01 $00 $2e
    dec d                                         ; $4b8c: $15
    nop                                           ; $4b8d: $00
    jr z, @+$01                                   ; $4b8e: $28 $ff

    nop                                           ; $4b90: $00
    nop                                           ; $4b91: $00
    nop                                           ; $4b92: $00
    nop                                           ; $4b93: $00
    add hl, bc                                    ; $4b94: $09
    nop                                           ; $4b95: $00
    inc sp                                        ; $4b96: $33
    inc b                                         ; $4b97: $04
    rlca                                          ; $4b98: $07
    nop                                           ; $4b99: $00
    add hl, bc                                    ; $4b9a: $09
    ld sp, hl                                     ; $4b9b: $f9
    ld bc, $0305                                  ; $4b9c: $01 $05 $03
    nop                                           ; $4b9f: $00
    dec d                                         ; $4ba0: $15
    dec a                                         ; $4ba1: $3d
    nop                                           ; $4ba2: $00
    inc sp                                        ; $4ba3: $33
    ld bc, $5fcc                                  ; $4ba4: $01 $cc $5f
    ld bc, $0000                                  ; $4ba7: $01 $00 $00
    nop                                           ; $4baa: $00
    nop                                           ; $4bab: $00
    ld e, a                                       ; $4bac: $5f
    ld bc, $2e00                                  ; $4bad: $01 $00 $2e
    dec d                                         ; $4bb0: $15
    nop                                           ; $4bb1: $00
    jr z, @+$01                                   ; $4bb2: $28 $ff

    nop                                           ; $4bb4: $00
    nop                                           ; $4bb5: $00
    nop                                           ; $4bb6: $00
    nop                                           ; $4bb7: $00
    add hl, bc                                    ; $4bb8: $09
    nop                                           ; $4bb9: $00
    ld b, $05                                     ; $4bba: $06 $05
    rlca                                          ; $4bbc: $07
    nop                                           ; $4bbd: $00
    add hl, bc                                    ; $4bbe: $09
    ld sp, hl                                     ; $4bbf: $f9
    ld bc, $0305                                  ; $4bc0: $01 $05 $03
    nop                                           ; $4bc3: $00
    dec d                                         ; $4bc4: $15
    dec a                                         ; $4bc5: $3d
    nop                                           ; $4bc6: $00
    inc sp                                        ; $4bc7: $33
    ld bc, $5fcc                                  ; $4bc8: $01 $cc $5f
    ld bc, $0000                                  ; $4bcb: $01 $00 $00
    nop                                           ; $4bce: $00
    nop                                           ; $4bcf: $00
    add hl, bc                                    ; $4bd0: $09
    nop                                           ; $4bd1: $00
    rlca                                          ; $4bd2: $07
    dec b                                         ; $4bd3: $05
    rlca                                          ; $4bd4: $07
    nop                                           ; $4bd5: $00
    add hl, bc                                    ; $4bd6: $09
    ld sp, hl                                     ; $4bd7: $f9
    ld bc, $0305                                  ; $4bd8: $01 $05 $03
    nop                                           ; $4bdb: $00
    dec d                                         ; $4bdc: $15
    dec a                                         ; $4bdd: $3d
    nop                                           ; $4bde: $00
    inc sp                                        ; $4bdf: $33
    ld bc, $5fcc                                  ; $4be0: $01 $cc $5f
    ld bc, $0000                                  ; $4be3: $01 $00 $00
    nop                                           ; $4be6: $00
    nop                                           ; $4be7: $00
    add hl, bc                                    ; $4be8: $09
    nop                                           ; $4be9: $00
    ld d, d                                       ; $4bea: $52
    dec b                                         ; $4beb: $05
    rlca                                          ; $4bec: $07
    nop                                           ; $4bed: $00
    add hl, bc                                    ; $4bee: $09
    ld sp, hl                                     ; $4bef: $f9
    ld bc, $0305                                  ; $4bf0: $01 $05 $03
    nop                                           ; $4bf3: $00
    dec d                                         ; $4bf4: $15
    dec a                                         ; $4bf5: $3d
    nop                                           ; $4bf6: $00
    inc sp                                        ; $4bf7: $33
    ld bc, $5fcc                                  ; $4bf8: $01 $cc $5f
    ld bc, $0000                                  ; $4bfb: $01 $00 $00
    nop                                           ; $4bfe: $00
    nop                                           ; $4bff: $00
    add hl, bc                                    ; $4c00: $09
    nop                                           ; $4c01: $00
    ld e, b                                       ; $4c02: $58
    dec b                                         ; $4c03: $05
    rlca                                          ; $4c04: $07
    nop                                           ; $4c05: $00
    add hl, bc                                    ; $4c06: $09
    ld sp, hl                                     ; $4c07: $f9
    ld bc, $0305                                  ; $4c08: $01 $05 $03
    nop                                           ; $4c0b: $00
    dec d                                         ; $4c0c: $15
    dec a                                         ; $4c0d: $3d
    nop                                           ; $4c0e: $00
    inc sp                                        ; $4c0f: $33
    ld bc, $5fcc                                  ; $4c10: $01 $cc $5f
    ld bc, $0000                                  ; $4c13: $01 $00 $00
    nop                                           ; $4c16: $00
    nop                                           ; $4c17: $00
    add hl, bc                                    ; $4c18: $09
    nop                                           ; $4c19: $00
    scf                                           ; $4c1a: $37
    dec b                                         ; $4c1b: $05
    rlca                                          ; $4c1c: $07
    nop                                           ; $4c1d: $00
    add hl, bc                                    ; $4c1e: $09
    ld sp, hl                                     ; $4c1f: $f9
    ld bc, $0305                                  ; $4c20: $01 $05 $03
    nop                                           ; $4c23: $00
    dec d                                         ; $4c24: $15
    dec a                                         ; $4c25: $3d
    nop                                           ; $4c26: $00
    inc sp                                        ; $4c27: $33
    ld bc, $5fcc                                  ; $4c28: $01 $cc $5f
    ld bc, $0000                                  ; $4c2b: $01 $00 $00
    nop                                           ; $4c2e: $00
    nop                                           ; $4c2f: $00
    add hl, bc                                    ; $4c30: $09
    nop                                           ; $4c31: $00
    add hl, sp                                    ; $4c32: $39
    dec b                                         ; $4c33: $05
    rlca                                          ; $4c34: $07
    nop                                           ; $4c35: $00
    add hl, bc                                    ; $4c36: $09
    ld sp, hl                                     ; $4c37: $f9
    ld bc, $0305                                  ; $4c38: $01 $05 $03
    nop                                           ; $4c3b: $00
    dec d                                         ; $4c3c: $15
    dec a                                         ; $4c3d: $3d
    nop                                           ; $4c3e: $00
    inc sp                                        ; $4c3f: $33
    ld bc, $5fcc                                  ; $4c40: $01 $cc $5f
    ld bc, $0000                                  ; $4c43: $01 $00 $00
    nop                                           ; $4c46: $00
    nop                                           ; $4c47: $00
    add hl, bc                                    ; $4c48: $09
    nop                                           ; $4c49: $00
    ld e, d                                       ; $4c4a: $5a
    dec b                                         ; $4c4b: $05
    rlca                                          ; $4c4c: $07
    nop                                           ; $4c4d: $00
    add hl, bc                                    ; $4c4e: $09
    ld sp, hl                                     ; $4c4f: $f9
    ld bc, $0305                                  ; $4c50: $01 $05 $03
    nop                                           ; $4c53: $00
    dec d                                         ; $4c54: $15
    dec a                                         ; $4c55: $3d
    nop                                           ; $4c56: $00
    inc sp                                        ; $4c57: $33
    ld bc, $5fcc                                  ; $4c58: $01 $cc $5f
    ld bc, $0000                                  ; $4c5b: $01 $00 $00
    nop                                           ; $4c5e: $00
    nop                                           ; $4c5f: $00
    add hl, bc                                    ; $4c60: $09
    nop                                           ; $4c61: $00
    inc sp                                        ; $4c62: $33
    dec b                                         ; $4c63: $05
    rlca                                          ; $4c64: $07
    nop                                           ; $4c65: $00
    add hl, bc                                    ; $4c66: $09
    ld sp, hl                                     ; $4c67: $f9
    ld bc, $0305                                  ; $4c68: $01 $05 $03
    nop                                           ; $4c6b: $00
    dec d                                         ; $4c6c: $15
    dec a                                         ; $4c6d: $3d
    nop                                           ; $4c6e: $00
    inc sp                                        ; $4c6f: $33
    ld bc, $5fcc                                  ; $4c70: $01 $cc $5f
    ld bc, $0000                                  ; $4c73: $01 $00 $00
    nop                                           ; $4c76: $00
    nop                                           ; $4c77: $00
    ld e, a                                       ; $4c78: $5f
    ld bc, $2e00                                  ; $4c79: $01 $00 $2e
    dec d                                         ; $4c7c: $15
    nop                                           ; $4c7d: $00
    jr z, @+$01                                   ; $4c7e: $28 $ff

    nop                                           ; $4c80: $00
    nop                                           ; $4c81: $00
    nop                                           ; $4c82: $00
    nop                                           ; $4c83: $00
    add hl, bc                                    ; $4c84: $09
    nop                                           ; $4c85: $00
    add hl, bc                                    ; $4c86: $09
    dec b                                         ; $4c87: $05
    rlca                                          ; $4c88: $07
    nop                                           ; $4c89: $00
    add hl, bc                                    ; $4c8a: $09
    ld sp, hl                                     ; $4c8b: $f9
    ld bc, $0305                                  ; $4c8c: $01 $05 $03
    nop                                           ; $4c8f: $00
    dec d                                         ; $4c90: $15
    dec a                                         ; $4c91: $3d
    nop                                           ; $4c92: $00
    inc sp                                        ; $4c93: $33
    ld bc, $5fcc                                  ; $4c94: $01 $cc $5f
    ld bc, $0000                                  ; $4c97: $01 $00 $00
    nop                                           ; $4c9a: $00
    nop                                           ; $4c9b: $00
    add hl, bc                                    ; $4c9c: $09
    nop                                           ; $4c9d: $00
    dec bc                                        ; $4c9e: $0b
    dec b                                         ; $4c9f: $05
    rlca                                          ; $4ca0: $07
    nop                                           ; $4ca1: $00
    add hl, bc                                    ; $4ca2: $09
    ld sp, hl                                     ; $4ca3: $f9
    ld bc, $0305                                  ; $4ca4: $01 $05 $03
    nop                                           ; $4ca7: $00
    dec d                                         ; $4ca8: $15
    dec a                                         ; $4ca9: $3d
    nop                                           ; $4caa: $00
    inc sp                                        ; $4cab: $33
    ld bc, $5fcc                                  ; $4cac: $01 $cc $5f
    ld bc, $0000                                  ; $4caf: $01 $00 $00
    nop                                           ; $4cb2: $00
    nop                                           ; $4cb3: $00
    add hl, bc                                    ; $4cb4: $09
    nop                                           ; $4cb5: $00
    dec c                                         ; $4cb6: $0d
    dec b                                         ; $4cb7: $05
    rlca                                          ; $4cb8: $07
    nop                                           ; $4cb9: $00
    add hl, bc                                    ; $4cba: $09
    ld sp, hl                                     ; $4cbb: $f9
    ld bc, $0305                                  ; $4cbc: $01 $05 $03
    nop                                           ; $4cbf: $00
    dec d                                         ; $4cc0: $15
    dec a                                         ; $4cc1: $3d
    nop                                           ; $4cc2: $00
    inc sp                                        ; $4cc3: $33
    ld bc, $5fcc                                  ; $4cc4: $01 $cc $5f
    ld bc, $0000                                  ; $4cc7: $01 $00 $00
    nop                                           ; $4cca: $00
    nop                                           ; $4ccb: $00
    ld e, a                                       ; $4ccc: $5f
    ld bc, $4d00                                  ; $4ccd: $01 $00 $4d
    nop                                           ; $4cd0: $00
    nop                                           ; $4cd1: $00
    ld l, $15                                     ; $4cd2: $2e $15
    nop                                           ; $4cd4: $00
    jr z, @+$01                                   ; $4cd5: $28 $ff

    nop                                           ; $4cd7: $00
    nop                                           ; $4cd8: $00
    nop                                           ; $4cd9: $00
    nop                                           ; $4cda: $00
    add hl, bc                                    ; $4cdb: $09
    nop                                           ; $4cdc: $00
    ld h, $05                                     ; $4cdd: $26 $05
    rlca                                          ; $4cdf: $07
    nop                                           ; $4ce0: $00
    add hl, bc                                    ; $4ce1: $09
    ld sp, hl                                     ; $4ce2: $f9
    ld bc, $0305                                  ; $4ce3: $01 $05 $03
    nop                                           ; $4ce6: $00
    dec d                                         ; $4ce7: $15
    dec a                                         ; $4ce8: $3d
    nop                                           ; $4ce9: $00
    inc sp                                        ; $4cea: $33
    ld bc, $5fcc                                  ; $4ceb: $01 $cc $5f
    ld bc, $0000                                  ; $4cee: $01 $00 $00
    nop                                           ; $4cf1: $00
    nop                                           ; $4cf2: $00
    add hl, bc                                    ; $4cf3: $09
    nop                                           ; $4cf4: $00
    daa                                           ; $4cf5: $27
    dec b                                         ; $4cf6: $05
    rlca                                          ; $4cf7: $07
    nop                                           ; $4cf8: $00
    add hl, bc                                    ; $4cf9: $09
    ld sp, hl                                     ; $4cfa: $f9
    ld bc, $0305                                  ; $4cfb: $01 $05 $03
    nop                                           ; $4cfe: $00
    dec d                                         ; $4cff: $15
    dec a                                         ; $4d00: $3d
    nop                                           ; $4d01: $00
    inc sp                                        ; $4d02: $33
    ld bc, $5fcc                                  ; $4d03: $01 $cc $5f
    ld bc, $0000                                  ; $4d06: $01 $00 $00
    nop                                           ; $4d09: $00
    nop                                           ; $4d0a: $00
    add hl, bc                                    ; $4d0b: $09
    nop                                           ; $4d0c: $00
    ld d, e                                       ; $4d0d: $53
    dec b                                         ; $4d0e: $05
    dec b                                         ; $4d0f: $05
    nop                                           ; $4d10: $00
    add hl, bc                                    ; $4d11: $09
    dec b                                         ; $4d12: $05
    ld bc, $0305                                  ; $4d13: $01 $05 $03
    nop                                           ; $4d16: $00
    ld a, d                                       ; $4d17: $7a
    nop                                           ; $4d18: $00
    nop                                           ; $4d19: $00
    rrca                                          ; $4d1a: $0f
    dec b                                         ; $4d1b: $05
    nop                                           ; $4d1c: $00
    add hl, bc                                    ; $4d1d: $09
    nop                                           ; $4d1e: $00
    dec bc                                        ; $4d1f: $0b
    dec b                                         ; $4d20: $05
    ld [bc], a                                    ; $4d21: $02
    nop                                           ; $4d22: $00
    ld a, d                                       ; $4d23: $7a
    nop                                           ; $4d24: $00
    nop                                           ; $4d25: $00
    ld e, a                                       ; $4d26: $5f
    ld bc, $2800                                  ; $4d27: $01 $00 $28
    rst $38                                       ; $4d2a: $ff
    nop                                           ; $4d2b: $00
    nop                                           ; $4d2c: $00
    nop                                           ; $4d2d: $00
    nop                                           ; $4d2e: $00
    add hl, bc                                    ; $4d2f: $09
    nop                                           ; $4d30: $00
    ld h, $05                                     ; $4d31: $26 $05
    inc c                                         ; $4d33: $0c
    nop                                           ; $4d34: $00
    ld d, [hl]                                    ; $4d35: $56
    nop                                           ; $4d36: $00
    nop                                           ; $4d37: $00
    rla                                           ; $4d38: $17
    nop                                           ; $4d39: $00
    nop                                           ; $4d3a: $00
    dec de                                        ; $4d3b: $1b
    inc b                                         ; $4d3c: $04
    nop                                           ; $4d3d: $00
    ld e, a                                       ; $4d3e: $5f
    ld bc, $1500                                  ; $4d3f: $01 $00 $15
    dec d                                         ; $4d42: $15
    nop                                           ; $4d43: $00
    inc sp                                        ; $4d44: $33
    inc b                                         ; $4d45: $04
    inc bc                                        ; $4d46: $03
    dec d                                         ; $4d47: $15
    inc b                                         ; $4d48: $04
    nop                                           ; $4d49: $00
    add hl, de                                    ; $4d4a: $19
    nop                                           ; $4d4b: $00
    ld e, $1b                                     ; $4d4c: $1e $1b
    inc b                                         ; $4d4e: $04
    nop                                           ; $4d4f: $00
    ld d, a                                       ; $4d50: $57
    nop                                           ; $4d51: $00
    nop                                           ; $4d52: $00
    nop                                           ; $4d53: $00
    nop                                           ; $4d54: $00
    nop                                           ; $4d55: $00
    ld e, a                                       ; $4d56: $5f
    nop                                           ; $4d57: $00
    nop                                           ; $4d58: $00
    add hl, bc                                    ; $4d59: $09
    nop                                           ; $4d5a: $00
    daa                                           ; $4d5b: $27
    dec b                                         ; $4d5c: $05
    inc c                                         ; $4d5d: $0c
    nop                                           ; $4d5e: $00
    ld d, [hl]                                    ; $4d5f: $56
    nop                                           ; $4d60: $00
    nop                                           ; $4d61: $00
    rla                                           ; $4d62: $17
    nop                                           ; $4d63: $00
    nop                                           ; $4d64: $00
    dec de                                        ; $4d65: $1b
    inc b                                         ; $4d66: $04
    nop                                           ; $4d67: $00
    ld e, a                                       ; $4d68: $5f
    ld bc, $1500                                  ; $4d69: $01 $00 $15
    dec d                                         ; $4d6c: $15
    nop                                           ; $4d6d: $00
    inc sp                                        ; $4d6e: $33
    add hl, bc                                    ; $4d6f: $09
    ld h, e                                       ; $4d70: $63
    dec d                                         ; $4d71: $15
    inc b                                         ; $4d72: $04
    nop                                           ; $4d73: $00
    add hl, de                                    ; $4d74: $19
    nop                                           ; $4d75: $00
    ld e, $1b                                     ; $4d76: $1e $1b
    inc b                                         ; $4d78: $04
    nop                                           ; $4d79: $00
    ld d, a                                       ; $4d7a: $57
    nop                                           ; $4d7b: $00
    nop                                           ; $4d7c: $00
    nop                                           ; $4d7d: $00
    nop                                           ; $4d7e: $00
    nop                                           ; $4d7f: $00
    add hl, bc                                    ; $4d80: $09
    nop                                           ; $4d81: $00
    add hl, sp                                    ; $4d82: $39
    dec b                                         ; $4d83: $05
    inc d                                         ; $4d84: $14
    nop                                           ; $4d85: $00
    ld d, [hl]                                    ; $4d86: $56
    nop                                           ; $4d87: $00
    nop                                           ; $4d88: $00
    rla                                           ; $4d89: $17
    nop                                           ; $4d8a: $00
    nop                                           ; $4d8b: $00
    dec de                                        ; $4d8c: $1b
    nop                                           ; $4d8d: $00
    nop                                           ; $4d8e: $00
    ld e, a                                       ; $4d8f: $5f
    ld bc, $1500                                  ; $4d90: $01 $00 $15
    jr c, jr_009_4d95                             ; $4d93: $38 $00

jr_009_4d95:
    inc sp                                        ; $4d95: $33
    inc b                                         ; $4d96: $04
    ld c, b                                       ; $4d97: $48
    rrca                                          ; $4d98: $0f
    rst $38                                       ; $4d99: $ff
    nop                                           ; $4d9a: $00
    rla                                           ; $4d9b: $17
    nop                                           ; $4d9c: $00
    nop                                           ; $4d9d: $00
    dec de                                        ; $4d9e: $1b
    inc b                                         ; $4d9f: $04
    nop                                           ; $4da0: $00
    rla                                           ; $4da1: $17
    ld c, d                                       ; $4da2: $4a
    nop                                           ; $4da3: $00
    rra                                           ; $4da4: $1f
    nop                                           ; $4da5: $00
    nop                                           ; $4da6: $00
    inc e                                         ; $4da7: $1c
    nop                                           ; $4da8: $00
    nop                                           ; $4da9: $00
    dec d                                         ; $4daa: $15
    jr c, jr_009_4dad                             ; $4dab: $38 $00

jr_009_4dad:
    inc sp                                        ; $4dad: $33
    inc b                                         ; $4dae: $04
    ld c, c                                       ; $4daf: $49
    dec d                                         ; $4db0: $15
    nop                                           ; $4db1: $00
    nop                                           ; $4db2: $00
    ld b, d                                       ; $4db3: $42
    nop                                           ; $4db4: $00
    dec b                                         ; $4db5: $05
    ld d, a                                       ; $4db6: $57
    nop                                           ; $4db7: $00
    nop                                           ; $4db8: $00
    jr z, jr_009_4e01                             ; $4db9: $28 $46

    nop                                           ; $4dbb: $00
    nop                                           ; $4dbc: $00
    nop                                           ; $4dbd: $00
    nop                                           ; $4dbe: $00
    add hl, bc                                    ; $4dbf: $09
    nop                                           ; $4dc0: $00
    ld c, b                                       ; $4dc1: $48
    dec b                                         ; $4dc2: $05
    inc c                                         ; $4dc3: $0c
    nop                                           ; $4dc4: $00
    ld d, [hl]                                    ; $4dc5: $56
    nop                                           ; $4dc6: $00
    nop                                           ; $4dc7: $00
    rla                                           ; $4dc8: $17
    nop                                           ; $4dc9: $00
    nop                                           ; $4dca: $00
    dec de                                        ; $4dcb: $1b
    inc b                                         ; $4dcc: $04
    nop                                           ; $4dcd: $00
    ld e, a                                       ; $4dce: $5f
    ld bc, $1500                                  ; $4dcf: $01 $00 $15
    add hl, de                                    ; $4dd2: $19
    nop                                           ; $4dd3: $00
    inc sp                                        ; $4dd4: $33
    add hl, bc                                    ; $4dd5: $09
    ld h, l                                       ; $4dd6: $65
    dec d                                         ; $4dd7: $15
    inc b                                         ; $4dd8: $04
    nop                                           ; $4dd9: $00
    add hl, de                                    ; $4dda: $19
    nop                                           ; $4ddb: $00
    ld e, $1b                                     ; $4ddc: $1e $1b
    inc b                                         ; $4dde: $04
    nop                                           ; $4ddf: $00
    ld d, a                                       ; $4de0: $57
    nop                                           ; $4de1: $00
    nop                                           ; $4de2: $00
    nop                                           ; $4de3: $00
    nop                                           ; $4de4: $00
    nop                                           ; $4de5: $00
    ld e, a                                       ; $4de6: $5f
    ld bc, $2800                                  ; $4de7: $01 $00 $28
    rst $38                                       ; $4dea: $ff
    nop                                           ; $4deb: $00
    nop                                           ; $4dec: $00
    nop                                           ; $4ded: $00
    nop                                           ; $4dee: $00
    add hl, bc                                    ; $4def: $09
    nop                                           ; $4df0: $00
    ld d, a                                       ; $4df1: $57
    dec b                                         ; $4df2: $05
    dec c                                         ; $4df3: $0d
    nop                                           ; $4df4: $00
    add hl, bc                                    ; $4df5: $09
    dec c                                         ; $4df6: $0d
    ld bc, $0904                                  ; $4df7: $01 $04 $09
    nop                                           ; $4dfa: $00
    add hl, bc                                    ; $4dfb: $09
    ld sp, hl                                     ; $4dfc: $f9
    ld bc, $0505                                  ; $4dfd: $01 $05 $05
    nop                                           ; $4e00: $00

jr_009_4e01:
    ld e, a                                       ; $4e01: $5f
    ld bc, $1500                                  ; $4e02: $01 $00 $15
    dec a                                         ; $4e05: $3d
    nop                                           ; $4e06: $00
    inc sp                                        ; $4e07: $33
    ld bc, $00cc                                  ; $4e08: $01 $cc $00
    nop                                           ; $4e0b: $00
    nop                                           ; $4e0c: $00
    ld e, a                                       ; $4e0d: $5f
    ld bc, $0000                                  ; $4e0e: $01 $00 $00
    nop                                           ; $4e11: $00
    nop                                           ; $4e12: $00
    ld e, a                                       ; $4e13: $5f
    ld bc, $2800                                  ; $4e14: $01 $00 $28
    rst $38                                       ; $4e17: $ff
    nop                                           ; $4e18: $00
    add hl, bc                                    ; $4e19: $09
    nop                                           ; $4e1a: $00
    daa                                           ; $4e1b: $27
    dec b                                         ; $4e1c: $05
    inc c                                         ; $4e1d: $0c
    nop                                           ; $4e1e: $00
    ld d, [hl]                                    ; $4e1f: $56
    nop                                           ; $4e20: $00
    nop                                           ; $4e21: $00
    rla                                           ; $4e22: $17
    nop                                           ; $4e23: $00
    nop                                           ; $4e24: $00
    dec de                                        ; $4e25: $1b
    inc b                                         ; $4e26: $04
    nop                                           ; $4e27: $00
    ld e, a                                       ; $4e28: $5f
    ld bc, $1500                                  ; $4e29: $01 $00 $15
    dec d                                         ; $4e2c: $15
    nop                                           ; $4e2d: $00
    inc sp                                        ; $4e2e: $33
    add hl, bc                                    ; $4e2f: $09
    ld h, e                                       ; $4e30: $63
    dec d                                         ; $4e31: $15
    inc b                                         ; $4e32: $04
    nop                                           ; $4e33: $00
    add hl, de                                    ; $4e34: $19
    nop                                           ; $4e35: $00
    ld e, $1b                                     ; $4e36: $1e $1b
    inc b                                         ; $4e38: $04
    nop                                           ; $4e39: $00
    ld d, a                                       ; $4e3a: $57
    nop                                           ; $4e3b: $00
    nop                                           ; $4e3c: $00
    nop                                           ; $4e3d: $00
    nop                                           ; $4e3e: $00
    nop                                           ; $4e3f: $00
    add hl, bc                                    ; $4e40: $09
    nop                                           ; $4e41: $00
    add hl, sp                                    ; $4e42: $39
    dec b                                         ; $4e43: $05
    inc c                                         ; $4e44: $0c
    nop                                           ; $4e45: $00
    ld d, [hl]                                    ; $4e46: $56
    nop                                           ; $4e47: $00
    nop                                           ; $4e48: $00
    rla                                           ; $4e49: $17
    nop                                           ; $4e4a: $00
    nop                                           ; $4e4b: $00
    dec de                                        ; $4e4c: $1b
    inc b                                         ; $4e4d: $04
    nop                                           ; $4e4e: $00
    ld e, a                                       ; $4e4f: $5f
    ld bc, $1500                                  ; $4e50: $01 $00 $15
    nop                                           ; $4e53: $00
    nop                                           ; $4e54: $00
    inc sp                                        ; $4e55: $33
    add hl, bc                                    ; $4e56: $09
    ld h, h                                       ; $4e57: $64
    dec d                                         ; $4e58: $15
    inc b                                         ; $4e59: $04
    nop                                           ; $4e5a: $00
    add hl, de                                    ; $4e5b: $19
    nop                                           ; $4e5c: $00
    ld e, $1b                                     ; $4e5d: $1e $1b
    inc b                                         ; $4e5f: $04
    nop                                           ; $4e60: $00
    ld d, a                                       ; $4e61: $57
    nop                                           ; $4e62: $00
    nop                                           ; $4e63: $00
    nop                                           ; $4e64: $00
    nop                                           ; $4e65: $00
    nop                                           ; $4e66: $00
    ld e, a                                       ; $4e67: $5f
    ld bc, $2800                                  ; $4e68: $01 $00 $28
    rst $38                                       ; $4e6b: $ff
    nop                                           ; $4e6c: $00
    nop                                           ; $4e6d: $00
    nop                                           ; $4e6e: $00
    nop                                           ; $4e6f: $00
    add hl, bc                                    ; $4e70: $09
    nop                                           ; $4e71: $00
    add hl, sp                                    ; $4e72: $39
    dec b                                         ; $4e73: $05
    inc c                                         ; $4e74: $0c
    nop                                           ; $4e75: $00
    ld d, [hl]                                    ; $4e76: $56
    nop                                           ; $4e77: $00
    nop                                           ; $4e78: $00
    rla                                           ; $4e79: $17
    nop                                           ; $4e7a: $00
    nop                                           ; $4e7b: $00
    dec de                                        ; $4e7c: $1b
    inc b                                         ; $4e7d: $04
    nop                                           ; $4e7e: $00
    ld e, a                                       ; $4e7f: $5f
    ld bc, $1500                                  ; $4e80: $01 $00 $15
    nop                                           ; $4e83: $00
    nop                                           ; $4e84: $00
    inc sp                                        ; $4e85: $33
    add hl, bc                                    ; $4e86: $09
    ld h, h                                       ; $4e87: $64
    dec d                                         ; $4e88: $15
    nop                                           ; $4e89: $00
    nop                                           ; $4e8a: $00
    add hl, de                                    ; $4e8b: $19
    nop                                           ; $4e8c: $00
    ld e, $1b                                     ; $4e8d: $1e $1b
    inc b                                         ; $4e8f: $04
    nop                                           ; $4e90: $00
    ld d, a                                       ; $4e91: $57
    nop                                           ; $4e92: $00
    nop                                           ; $4e93: $00
    nop                                           ; $4e94: $00
    nop                                           ; $4e95: $00
    nop                                           ; $4e96: $00
    add hl, bc                                    ; $4e97: $09
    nop                                           ; $4e98: $00
    daa                                           ; $4e99: $27
    dec b                                         ; $4e9a: $05
    inc c                                         ; $4e9b: $0c
    nop                                           ; $4e9c: $00
    ld d, [hl]                                    ; $4e9d: $56
    nop                                           ; $4e9e: $00
    nop                                           ; $4e9f: $00
    rla                                           ; $4ea0: $17
    nop                                           ; $4ea1: $00
    nop                                           ; $4ea2: $00
    dec de                                        ; $4ea3: $1b
    inc b                                         ; $4ea4: $04
    nop                                           ; $4ea5: $00
    ld e, a                                       ; $4ea6: $5f
    ld bc, $1500                                  ; $4ea7: $01 $00 $15
    dec d                                         ; $4eaa: $15
    nop                                           ; $4eab: $00
    inc sp                                        ; $4eac: $33
    add hl, bc                                    ; $4ead: $09
    ld h, e                                       ; $4eae: $63
    dec d                                         ; $4eaf: $15
    nop                                           ; $4eb0: $00
    nop                                           ; $4eb1: $00
    add hl, de                                    ; $4eb2: $19
    nop                                           ; $4eb3: $00
    ld e, $1b                                     ; $4eb4: $1e $1b
    inc b                                         ; $4eb6: $04
    nop                                           ; $4eb7: $00
    ld d, a                                       ; $4eb8: $57
    nop                                           ; $4eb9: $00
    nop                                           ; $4eba: $00
    nop                                           ; $4ebb: $00
    nop                                           ; $4ebc: $00
    nop                                           ; $4ebd: $00
    add hl, bc                                    ; $4ebe: $09
    nop                                           ; $4ebf: $00
    ld e, d                                       ; $4ec0: $5a
    dec b                                         ; $4ec1: $05
    inc c                                         ; $4ec2: $0c
    nop                                           ; $4ec3: $00
    ld d, [hl]                                    ; $4ec4: $56
    nop                                           ; $4ec5: $00
    nop                                           ; $4ec6: $00
    rla                                           ; $4ec7: $17
    nop                                           ; $4ec8: $00
    nop                                           ; $4ec9: $00
    dec de                                        ; $4eca: $1b
    inc b                                         ; $4ecb: $04
    nop                                           ; $4ecc: $00
    ld e, a                                       ; $4ecd: $5f
    ld bc, $1500                                  ; $4ece: $01 $00 $15
    nop                                           ; $4ed1: $00
    nop                                           ; $4ed2: $00
    inc sp                                        ; $4ed3: $33
    add hl, bc                                    ; $4ed4: $09
    ld h, c                                       ; $4ed5: $61
    dec d                                         ; $4ed6: $15
    nop                                           ; $4ed7: $00
    nop                                           ; $4ed8: $00
    add hl, de                                    ; $4ed9: $19
    nop                                           ; $4eda: $00
    ld e, $1b                                     ; $4edb: $1e $1b
    nop                                           ; $4edd: $00
    nop                                           ; $4ede: $00
    ld d, a                                       ; $4edf: $57
    nop                                           ; $4ee0: $00
    nop                                           ; $4ee1: $00
    nop                                           ; $4ee2: $00
    nop                                           ; $4ee3: $00
    nop                                           ; $4ee4: $00
    ld e, a                                       ; $4ee5: $5f
    ld bc, $2800                                  ; $4ee6: $01 $00 $28
    rst $38                                       ; $4ee9: $ff
    nop                                           ; $4eea: $00
    nop                                           ; $4eeb: $00
    nop                                           ; $4eec: $00
    nop                                           ; $4eed: $00
    add hl, bc                                    ; $4eee: $09
    nop                                           ; $4eef: $00
    daa                                           ; $4ef0: $27
    dec b                                         ; $4ef1: $05
    inc c                                         ; $4ef2: $0c
    nop                                           ; $4ef3: $00
    ld d, [hl]                                    ; $4ef4: $56
    nop                                           ; $4ef5: $00
    nop                                           ; $4ef6: $00
    rla                                           ; $4ef7: $17
    nop                                           ; $4ef8: $00
    nop                                           ; $4ef9: $00
    dec de                                        ; $4efa: $1b
    inc b                                         ; $4efb: $04
    nop                                           ; $4efc: $00
    ld e, a                                       ; $4efd: $5f
    ld bc, $1500                                  ; $4efe: $01 $00 $15
    dec d                                         ; $4f01: $15
    nop                                           ; $4f02: $00
    inc sp                                        ; $4f03: $33
    add hl, bc                                    ; $4f04: $09
    ld h, e                                       ; $4f05: $63
    dec d                                         ; $4f06: $15
    inc b                                         ; $4f07: $04
    nop                                           ; $4f08: $00
    add hl, de                                    ; $4f09: $19
    nop                                           ; $4f0a: $00
    ld e, $1b                                     ; $4f0b: $1e $1b
    inc b                                         ; $4f0d: $04
    nop                                           ; $4f0e: $00
    ld d, a                                       ; $4f0f: $57
    nop                                           ; $4f10: $00
    nop                                           ; $4f11: $00
    nop                                           ; $4f12: $00
    nop                                           ; $4f13: $00
    nop                                           ; $4f14: $00
    add hl, bc                                    ; $4f15: $09
    nop                                           ; $4f16: $00
    ld e, d                                       ; $4f17: $5a
    dec b                                         ; $4f18: $05
    inc c                                         ; $4f19: $0c
    nop                                           ; $4f1a: $00
    ld d, [hl]                                    ; $4f1b: $56
    nop                                           ; $4f1c: $00
    nop                                           ; $4f1d: $00
    rla                                           ; $4f1e: $17
    nop                                           ; $4f1f: $00
    nop                                           ; $4f20: $00
    dec de                                        ; $4f21: $1b
    inc b                                         ; $4f22: $04
    nop                                           ; $4f23: $00
    ld e, a                                       ; $4f24: $5f
    ld bc, $1500                                  ; $4f25: $01 $00 $15
    nop                                           ; $4f28: $00
    nop                                           ; $4f29: $00
    inc sp                                        ; $4f2a: $33
    add hl, bc                                    ; $4f2b: $09
    ld h, c                                       ; $4f2c: $61
    dec d                                         ; $4f2d: $15
    inc b                                         ; $4f2e: $04
    nop                                           ; $4f2f: $00
    add hl, de                                    ; $4f30: $19
    nop                                           ; $4f31: $00
    ld e, $1b                                     ; $4f32: $1e $1b
    inc b                                         ; $4f34: $04
    nop                                           ; $4f35: $00
    ld d, a                                       ; $4f36: $57
    nop                                           ; $4f37: $00
    nop                                           ; $4f38: $00
    nop                                           ; $4f39: $00
    nop                                           ; $4f3a: $00
    nop                                           ; $4f3b: $00
    add hl, bc                                    ; $4f3c: $09
    nop                                           ; $4f3d: $00
    add hl, sp                                    ; $4f3e: $39
    dec b                                         ; $4f3f: $05
    inc c                                         ; $4f40: $0c
    nop                                           ; $4f41: $00
    ld d, [hl]                                    ; $4f42: $56
    nop                                           ; $4f43: $00
    nop                                           ; $4f44: $00
    rla                                           ; $4f45: $17
    nop                                           ; $4f46: $00
    nop                                           ; $4f47: $00
    dec de                                        ; $4f48: $1b
    inc b                                         ; $4f49: $04
    nop                                           ; $4f4a: $00
    ld e, a                                       ; $4f4b: $5f
    ld bc, $1500                                  ; $4f4c: $01 $00 $15
    nop                                           ; $4f4f: $00
    nop                                           ; $4f50: $00
    inc sp                                        ; $4f51: $33
    add hl, bc                                    ; $4f52: $09
    ld h, h                                       ; $4f53: $64
    dec d                                         ; $4f54: $15
    inc b                                         ; $4f55: $04
    nop                                           ; $4f56: $00
    add hl, de                                    ; $4f57: $19
    nop                                           ; $4f58: $00
    ld e, $1b                                     ; $4f59: $1e $1b
    inc b                                         ; $4f5b: $04
    nop                                           ; $4f5c: $00
    ld d, a                                       ; $4f5d: $57
    nop                                           ; $4f5e: $00
    nop                                           ; $4f5f: $00
    nop                                           ; $4f60: $00
    nop                                           ; $4f61: $00
    nop                                           ; $4f62: $00
    ld e, a                                       ; $4f63: $5f
    ld bc, $2800                                  ; $4f64: $01 $00 $28
    rst $38                                       ; $4f67: $ff
    nop                                           ; $4f68: $00
    nop                                           ; $4f69: $00
    nop                                           ; $4f6a: $00
    nop                                           ; $4f6b: $00
    add hl, bc                                    ; $4f6c: $09
    nop                                           ; $4f6d: $00
    daa                                           ; $4f6e: $27
    dec b                                         ; $4f6f: $05
    inc c                                         ; $4f70: $0c
    nop                                           ; $4f71: $00
    ld d, [hl]                                    ; $4f72: $56
    nop                                           ; $4f73: $00
    nop                                           ; $4f74: $00
    rla                                           ; $4f75: $17
    nop                                           ; $4f76: $00
    nop                                           ; $4f77: $00
    dec de                                        ; $4f78: $1b
    inc b                                         ; $4f79: $04
    nop                                           ; $4f7a: $00
    ld e, a                                       ; $4f7b: $5f
    ld bc, $1500                                  ; $4f7c: $01 $00 $15
    dec d                                         ; $4f7f: $15
    nop                                           ; $4f80: $00
    inc sp                                        ; $4f81: $33
    add hl, bc                                    ; $4f82: $09
    ld h, e                                       ; $4f83: $63
    dec d                                         ; $4f84: $15
    nop                                           ; $4f85: $00
    nop                                           ; $4f86: $00
    add hl, de                                    ; $4f87: $19
    nop                                           ; $4f88: $00
    ld e, $1b                                     ; $4f89: $1e $1b
    nop                                           ; $4f8b: $00
    nop                                           ; $4f8c: $00
    ld d, a                                       ; $4f8d: $57
    nop                                           ; $4f8e: $00
    nop                                           ; $4f8f: $00
    nop                                           ; $4f90: $00
    nop                                           ; $4f91: $00
    nop                                           ; $4f92: $00
    add hl, bc                                    ; $4f93: $09
    nop                                           ; $4f94: $00
    add hl, sp                                    ; $4f95: $39
    dec b                                         ; $4f96: $05
    inc c                                         ; $4f97: $0c
    nop                                           ; $4f98: $00
    ld d, [hl]                                    ; $4f99: $56
    nop                                           ; $4f9a: $00
    nop                                           ; $4f9b: $00
    rla                                           ; $4f9c: $17
    nop                                           ; $4f9d: $00
    nop                                           ; $4f9e: $00
    dec de                                        ; $4f9f: $1b
    inc b                                         ; $4fa0: $04
    nop                                           ; $4fa1: $00
    ld e, a                                       ; $4fa2: $5f
    ld bc, $1500                                  ; $4fa3: $01 $00 $15
    nop                                           ; $4fa6: $00
    nop                                           ; $4fa7: $00
    inc sp                                        ; $4fa8: $33
    add hl, bc                                    ; $4fa9: $09
    ld h, h                                       ; $4faa: $64
    dec d                                         ; $4fab: $15
    nop                                           ; $4fac: $00
    nop                                           ; $4fad: $00
    add hl, de                                    ; $4fae: $19
    nop                                           ; $4faf: $00
    ld e, $1b                                     ; $4fb0: $1e $1b
    nop                                           ; $4fb2: $00
    nop                                           ; $4fb3: $00
    ld d, a                                       ; $4fb4: $57
    nop                                           ; $4fb5: $00
    nop                                           ; $4fb6: $00
    nop                                           ; $4fb7: $00
    nop                                           ; $4fb8: $00
    nop                                           ; $4fb9: $00
    add hl, bc                                    ; $4fba: $09
    nop                                           ; $4fbb: $00
    ld e, d                                       ; $4fbc: $5a
    dec b                                         ; $4fbd: $05
    inc c                                         ; $4fbe: $0c
    nop                                           ; $4fbf: $00
    ld d, [hl]                                    ; $4fc0: $56
    nop                                           ; $4fc1: $00
    nop                                           ; $4fc2: $00
    rla                                           ; $4fc3: $17
    nop                                           ; $4fc4: $00
    nop                                           ; $4fc5: $00
    dec de                                        ; $4fc6: $1b
    inc b                                         ; $4fc7: $04
    nop                                           ; $4fc8: $00
    ld e, a                                       ; $4fc9: $5f
    ld bc, $1500                                  ; $4fca: $01 $00 $15
    nop                                           ; $4fcd: $00
    nop                                           ; $4fce: $00
    inc sp                                        ; $4fcf: $33
    add hl, bc                                    ; $4fd0: $09
    ld h, c                                       ; $4fd1: $61
    dec d                                         ; $4fd2: $15
    nop                                           ; $4fd3: $00
    nop                                           ; $4fd4: $00
    add hl, de                                    ; $4fd5: $19
    nop                                           ; $4fd6: $00
    ld e, $1b                                     ; $4fd7: $1e $1b
    nop                                           ; $4fd9: $00
    nop                                           ; $4fda: $00
    ld d, a                                       ; $4fdb: $57
    nop                                           ; $4fdc: $00
    nop                                           ; $4fdd: $00
    nop                                           ; $4fde: $00
    nop                                           ; $4fdf: $00
    nop                                           ; $4fe0: $00
    ld e, a                                       ; $4fe1: $5f
    ld bc, $2800                                  ; $4fe2: $01 $00 $28
    rst $38                                       ; $4fe5: $ff
    nop                                           ; $4fe6: $00
    nop                                           ; $4fe7: $00
    nop                                           ; $4fe8: $00
    nop                                           ; $4fe9: $00
    add hl, bc                                    ; $4fea: $09
    nop                                           ; $4feb: $00
    ld e, d                                       ; $4fec: $5a
    dec b                                         ; $4fed: $05
    inc c                                         ; $4fee: $0c
    nop                                           ; $4fef: $00
    ld d, [hl]                                    ; $4ff0: $56
    nop                                           ; $4ff1: $00
    nop                                           ; $4ff2: $00
    rla                                           ; $4ff3: $17
    nop                                           ; $4ff4: $00
    nop                                           ; $4ff5: $00
    dec de                                        ; $4ff6: $1b
    inc b                                         ; $4ff7: $04
    nop                                           ; $4ff8: $00
    ld e, a                                       ; $4ff9: $5f
    ld bc, $1500                                  ; $4ffa: $01 $00 $15
    nop                                           ; $4ffd: $00
    nop                                           ; $4ffe: $00
    inc sp                                        ; $4fff: $33
    add hl, bc                                    ; $5000: $09
    ld h, c                                       ; $5001: $61
    dec d                                         ; $5002: $15
    inc b                                         ; $5003: $04
    nop                                           ; $5004: $00
    add hl, de                                    ; $5005: $19
    nop                                           ; $5006: $00
    ld e, $1b                                     ; $5007: $1e $1b
    inc b                                         ; $5009: $04
    nop                                           ; $500a: $00
    ld d, a                                       ; $500b: $57
    nop                                           ; $500c: $00
    nop                                           ; $500d: $00
    nop                                           ; $500e: $00
    nop                                           ; $500f: $00
    nop                                           ; $5010: $00
    ld e, a                                       ; $5011: $5f
    ld bc, $2800                                  ; $5012: $01 $00 $28
    rst $38                                       ; $5015: $ff
    nop                                           ; $5016: $00
    nop                                           ; $5017: $00
    nop                                           ; $5018: $00
    nop                                           ; $5019: $00
    ld e, a                                       ; $501a: $5f
    ld bc, $2800                                  ; $501b: $01 $00 $28
    rst $38                                       ; $501e: $ff
    nop                                           ; $501f: $00
    nop                                           ; $5020: $00
    nop                                           ; $5021: $00
    nop                                           ; $5022: $00
    add hl, bc                                    ; $5023: $09
    nop                                           ; $5024: $00
    ld h, $05                                     ; $5025: $26 $05
    rlca                                          ; $5027: $07
    nop                                           ; $5028: $00
    add hl, bc                                    ; $5029: $09
    ld sp, hl                                     ; $502a: $f9
    ld bc, $0305                                  ; $502b: $01 $05 $03
    nop                                           ; $502e: $00
    dec d                                         ; $502f: $15
    dec a                                         ; $5030: $3d
    nop                                           ; $5031: $00
    inc sp                                        ; $5032: $33
    ld bc, $5fcc                                  ; $5033: $01 $cc $5f
    ld bc, $0000                                  ; $5036: $01 $00 $00
    nop                                           ; $5039: $00
    nop                                           ; $503a: $00
    add hl, bc                                    ; $503b: $09
    nop                                           ; $503c: $00
    daa                                           ; $503d: $27
    dec b                                         ; $503e: $05
    rlca                                          ; $503f: $07
    nop                                           ; $5040: $00
    add hl, bc                                    ; $5041: $09
    ld sp, hl                                     ; $5042: $f9
    ld bc, $0305                                  ; $5043: $01 $05 $03
    nop                                           ; $5046: $00
    dec d                                         ; $5047: $15
    dec a                                         ; $5048: $3d
    nop                                           ; $5049: $00
    inc sp                                        ; $504a: $33
    ld bc, $5fcc                                  ; $504b: $01 $cc $5f
    ld bc, $0000                                  ; $504e: $01 $00 $00
    nop                                           ; $5051: $00
    nop                                           ; $5052: $00
    add hl, bc                                    ; $5053: $09
    nop                                           ; $5054: $00
    scf                                           ; $5055: $37
    dec b                                         ; $5056: $05
    rlca                                          ; $5057: $07
    nop                                           ; $5058: $00
    add hl, bc                                    ; $5059: $09
    ld sp, hl                                     ; $505a: $f9
    ld bc, $0305                                  ; $505b: $01 $05 $03
    nop                                           ; $505e: $00
    dec d                                         ; $505f: $15
    dec a                                         ; $5060: $3d
    nop                                           ; $5061: $00
    inc sp                                        ; $5062: $33
    ld bc, $5fcc                                  ; $5063: $01 $cc $5f
    ld bc, $0000                                  ; $5066: $01 $00 $00
    nop                                           ; $5069: $00
    nop                                           ; $506a: $00
    add hl, bc                                    ; $506b: $09
    nop                                           ; $506c: $00
    add hl, sp                                    ; $506d: $39
    dec b                                         ; $506e: $05
    rlca                                          ; $506f: $07
    nop                                           ; $5070: $00
    add hl, bc                                    ; $5071: $09
    ld sp, hl                                     ; $5072: $f9
    ld bc, $0305                                  ; $5073: $01 $05 $03
    nop                                           ; $5076: $00
    dec d                                         ; $5077: $15
    dec a                                         ; $5078: $3d
    nop                                           ; $5079: $00
    inc sp                                        ; $507a: $33
    ld bc, $5fcc                                  ; $507b: $01 $cc $5f
    ld bc, $0000                                  ; $507e: $01 $00 $00
    nop                                           ; $5081: $00
    nop                                           ; $5082: $00
    add hl, bc                                    ; $5083: $09
    nop                                           ; $5084: $00
    ld c, b                                       ; $5085: $48
    dec b                                         ; $5086: $05
    rlca                                          ; $5087: $07
    nop                                           ; $5088: $00
    add hl, bc                                    ; $5089: $09
    ld sp, hl                                     ; $508a: $f9
    ld bc, $0305                                  ; $508b: $01 $05 $03
    nop                                           ; $508e: $00
    dec d                                         ; $508f: $15
    dec a                                         ; $5090: $3d
    nop                                           ; $5091: $00
    inc sp                                        ; $5092: $33
    ld bc, $5fcc                                  ; $5093: $01 $cc $5f
    ld bc, $0000                                  ; $5096: $01 $00 $00
    nop                                           ; $5099: $00
    nop                                           ; $509a: $00
    ld e, a                                       ; $509b: $5f
    ld bc, $2e00                                  ; $509c: $01 $00 $2e
    dec d                                         ; $509f: $15
    nop                                           ; $50a0: $00
    jr z, @+$01                                   ; $50a1: $28 $ff

    nop                                           ; $50a3: $00
    nop                                           ; $50a4: $00
    nop                                           ; $50a5: $00
    nop                                           ; $50a6: $00
    add hl, bc                                    ; $50a7: $09
    nop                                           ; $50a8: $00
    ld h, $05                                     ; $50a9: $26 $05
    rlca                                          ; $50ab: $07
    nop                                           ; $50ac: $00
    add hl, bc                                    ; $50ad: $09
    ld sp, hl                                     ; $50ae: $f9
    ld bc, $0305                                  ; $50af: $01 $05 $03
    nop                                           ; $50b2: $00
    dec d                                         ; $50b3: $15
    dec a                                         ; $50b4: $3d
    nop                                           ; $50b5: $00
    inc sp                                        ; $50b6: $33
    ld bc, $5fcc                                  ; $50b7: $01 $cc $5f
    ld bc, $0000                                  ; $50ba: $01 $00 $00
    nop                                           ; $50bd: $00
    nop                                           ; $50be: $00
    add hl, bc                                    ; $50bf: $09
    nop                                           ; $50c0: $00
    daa                                           ; $50c1: $27
    dec b                                         ; $50c2: $05
    rlca                                          ; $50c3: $07
    nop                                           ; $50c4: $00
    add hl, bc                                    ; $50c5: $09
    ld sp, hl                                     ; $50c6: $f9
    ld bc, $0305                                  ; $50c7: $01 $05 $03
    nop                                           ; $50ca: $00
    dec d                                         ; $50cb: $15
    dec a                                         ; $50cc: $3d
    nop                                           ; $50cd: $00
    inc sp                                        ; $50ce: $33
    ld bc, $5fcc                                  ; $50cf: $01 $cc $5f
    ld bc, $0000                                  ; $50d2: $01 $00 $00
    nop                                           ; $50d5: $00
    nop                                           ; $50d6: $00
    add hl, bc                                    ; $50d7: $09
    nop                                           ; $50d8: $00
    scf                                           ; $50d9: $37
    dec b                                         ; $50da: $05
    rlca                                          ; $50db: $07
    nop                                           ; $50dc: $00
    add hl, bc                                    ; $50dd: $09
    ld sp, hl                                     ; $50de: $f9
    ld bc, $0305                                  ; $50df: $01 $05 $03
    nop                                           ; $50e2: $00
    dec d                                         ; $50e3: $15
    dec a                                         ; $50e4: $3d
    nop                                           ; $50e5: $00
    inc sp                                        ; $50e6: $33
    ld bc, $5fcc                                  ; $50e7: $01 $cc $5f
    ld bc, $0000                                  ; $50ea: $01 $00 $00
    nop                                           ; $50ed: $00
    nop                                           ; $50ee: $00
    add hl, bc                                    ; $50ef: $09
    nop                                           ; $50f0: $00
    add hl, sp                                    ; $50f1: $39
    dec b                                         ; $50f2: $05
    rlca                                          ; $50f3: $07
    nop                                           ; $50f4: $00
    add hl, bc                                    ; $50f5: $09
    ld sp, hl                                     ; $50f6: $f9
    ld bc, $0305                                  ; $50f7: $01 $05 $03
    nop                                           ; $50fa: $00
    dec d                                         ; $50fb: $15
    dec a                                         ; $50fc: $3d
    nop                                           ; $50fd: $00
    inc sp                                        ; $50fe: $33
    ld bc, $5fcc                                  ; $50ff: $01 $cc $5f
    ld bc, $0000                                  ; $5102: $01 $00 $00
    nop                                           ; $5105: $00
    nop                                           ; $5106: $00
    add hl, bc                                    ; $5107: $09
    nop                                           ; $5108: $00
    ld c, b                                       ; $5109: $48
    dec b                                         ; $510a: $05
    rlca                                          ; $510b: $07
    nop                                           ; $510c: $00
    add hl, bc                                    ; $510d: $09
    ld sp, hl                                     ; $510e: $f9
    ld bc, $0305                                  ; $510f: $01 $05 $03
    nop                                           ; $5112: $00
    dec d                                         ; $5113: $15
    dec a                                         ; $5114: $3d
    nop                                           ; $5115: $00
    inc sp                                        ; $5116: $33
    ld bc, $5fcc                                  ; $5117: $01 $cc $5f
    ld bc, $0000                                  ; $511a: $01 $00 $00
    nop                                           ; $511d: $00
    nop                                           ; $511e: $00
    add hl, bc                                    ; $511f: $09
    nop                                           ; $5120: $00
    ld b, c                                       ; $5121: $41
    dec b                                         ; $5122: $05
    rlca                                          ; $5123: $07
    nop                                           ; $5124: $00
    add hl, bc                                    ; $5125: $09
    ld sp, hl                                     ; $5126: $f9
    ld bc, $0305                                  ; $5127: $01 $05 $03
    nop                                           ; $512a: $00
    dec d                                         ; $512b: $15
    dec a                                         ; $512c: $3d
    nop                                           ; $512d: $00
    inc sp                                        ; $512e: $33
    ld bc, $5fcc                                  ; $512f: $01 $cc $5f
    ld bc, $0000                                  ; $5132: $01 $00 $00
    nop                                           ; $5135: $00
    nop                                           ; $5136: $00
    ld e, a                                       ; $5137: $5f
    ld bc, $2e00                                  ; $5138: $01 $00 $2e
    dec d                                         ; $513b: $15
    nop                                           ; $513c: $00
    jr z, @+$01                                   ; $513d: $28 $ff

    nop                                           ; $513f: $00
    nop                                           ; $5140: $00
    nop                                           ; $5141: $00
    nop                                           ; $5142: $00
    add hl, bc                                    ; $5143: $09
    nop                                           ; $5144: $00
    rlca                                          ; $5145: $07
    dec b                                         ; $5146: $05
    rlca                                          ; $5147: $07
    nop                                           ; $5148: $00
    add hl, bc                                    ; $5149: $09
    ld sp, hl                                     ; $514a: $f9
    ld bc, $0305                                  ; $514b: $01 $05 $03
    nop                                           ; $514e: $00
    dec d                                         ; $514f: $15
    dec a                                         ; $5150: $3d
    nop                                           ; $5151: $00
    inc sp                                        ; $5152: $33
    ld bc, $5fcc                                  ; $5153: $01 $cc $5f
    ld bc, $0000                                  ; $5156: $01 $00 $00
    nop                                           ; $5159: $00
    nop                                           ; $515a: $00
    add hl, bc                                    ; $515b: $09
    nop                                           ; $515c: $00
    ld d, d                                       ; $515d: $52
    dec b                                         ; $515e: $05
    rlca                                          ; $515f: $07
    nop                                           ; $5160: $00
    add hl, bc                                    ; $5161: $09
    ld sp, hl                                     ; $5162: $f9
    ld bc, $0305                                  ; $5163: $01 $05 $03
    nop                                           ; $5166: $00
    dec d                                         ; $5167: $15
    dec a                                         ; $5168: $3d
    nop                                           ; $5169: $00
    inc sp                                        ; $516a: $33
    ld bc, $5fcc                                  ; $516b: $01 $cc $5f
    ld bc, $0000                                  ; $516e: $01 $00 $00
    nop                                           ; $5171: $00
    nop                                           ; $5172: $00
    add hl, bc                                    ; $5173: $09
    nop                                           ; $5174: $00
    ld h, $05                                     ; $5175: $26 $05
    rlca                                          ; $5177: $07
    nop                                           ; $5178: $00
    add hl, bc                                    ; $5179: $09
    ld sp, hl                                     ; $517a: $f9
    ld bc, $0305                                  ; $517b: $01 $05 $03
    nop                                           ; $517e: $00
    dec d                                         ; $517f: $15
    dec a                                         ; $5180: $3d
    nop                                           ; $5181: $00
    inc sp                                        ; $5182: $33
    ld bc, $5fcc                                  ; $5183: $01 $cc $5f
    ld bc, $0000                                  ; $5186: $01 $00 $00
    nop                                           ; $5189: $00
    nop                                           ; $518a: $00
    add hl, bc                                    ; $518b: $09
    nop                                           ; $518c: $00
    daa                                           ; $518d: $27
    dec b                                         ; $518e: $05
    rlca                                          ; $518f: $07
    nop                                           ; $5190: $00
    add hl, bc                                    ; $5191: $09
    ld sp, hl                                     ; $5192: $f9
    ld bc, $0305                                  ; $5193: $01 $05 $03
    nop                                           ; $5196: $00
    dec d                                         ; $5197: $15
    dec a                                         ; $5198: $3d
    nop                                           ; $5199: $00
    inc sp                                        ; $519a: $33
    ld bc, $5fcc                                  ; $519b: $01 $cc $5f
    ld bc, $0000                                  ; $519e: $01 $00 $00
    nop                                           ; $51a1: $00
    nop                                           ; $51a2: $00
    add hl, bc                                    ; $51a3: $09
    nop                                           ; $51a4: $00
    ld b, c                                       ; $51a5: $41
    dec b                                         ; $51a6: $05
    rlca                                          ; $51a7: $07
    nop                                           ; $51a8: $00
    add hl, bc                                    ; $51a9: $09
    ld sp, hl                                     ; $51aa: $f9
    ld bc, $0305                                  ; $51ab: $01 $05 $03
    nop                                           ; $51ae: $00
    dec d                                         ; $51af: $15
    dec a                                         ; $51b0: $3d
    nop                                           ; $51b1: $00
    inc sp                                        ; $51b2: $33
    ld bc, $5fcc                                  ; $51b3: $01 $cc $5f
    ld bc, $0000                                  ; $51b6: $01 $00 $00
    nop                                           ; $51b9: $00
    nop                                           ; $51ba: $00
    add hl, bc                                    ; $51bb: $09
    nop                                           ; $51bc: $00
    ld c, b                                       ; $51bd: $48
    dec b                                         ; $51be: $05
    rlca                                          ; $51bf: $07
    nop                                           ; $51c0: $00
    add hl, bc                                    ; $51c1: $09
    ld sp, hl                                     ; $51c2: $f9
    ld bc, $0305                                  ; $51c3: $01 $05 $03
    nop                                           ; $51c6: $00
    dec d                                         ; $51c7: $15
    dec a                                         ; $51c8: $3d
    nop                                           ; $51c9: $00
    inc sp                                        ; $51ca: $33
    ld bc, $5fcc                                  ; $51cb: $01 $cc $5f
    ld bc, $0000                                  ; $51ce: $01 $00 $00
    nop                                           ; $51d1: $00
    nop                                           ; $51d2: $00
    ld e, a                                       ; $51d3: $5f
    ld bc, $2e00                                  ; $51d4: $01 $00 $2e
    dec d                                         ; $51d7: $15
    nop                                           ; $51d8: $00
    jr z, @+$01                                   ; $51d9: $28 $ff

    nop                                           ; $51db: $00
    nop                                           ; $51dc: $00
    nop                                           ; $51dd: $00
    nop                                           ; $51de: $00
    add hl, bc                                    ; $51df: $09
    nop                                           ; $51e0: $00
    rlca                                          ; $51e1: $07
    dec b                                         ; $51e2: $05
    rlca                                          ; $51e3: $07
    nop                                           ; $51e4: $00
    add hl, bc                                    ; $51e5: $09
    ld sp, hl                                     ; $51e6: $f9
    ld bc, $0305                                  ; $51e7: $01 $05 $03
    nop                                           ; $51ea: $00
    dec d                                         ; $51eb: $15
    dec a                                         ; $51ec: $3d
    nop                                           ; $51ed: $00
    inc sp                                        ; $51ee: $33
    ld bc, $5fcc                                  ; $51ef: $01 $cc $5f
    ld bc, $0000                                  ; $51f2: $01 $00 $00
    nop                                           ; $51f5: $00
    nop                                           ; $51f6: $00
    add hl, bc                                    ; $51f7: $09
    nop                                           ; $51f8: $00
    ld d, d                                       ; $51f9: $52
    dec b                                         ; $51fa: $05
    rlca                                          ; $51fb: $07
    nop                                           ; $51fc: $00
    add hl, bc                                    ; $51fd: $09
    ld sp, hl                                     ; $51fe: $f9
    ld bc, $0305                                  ; $51ff: $01 $05 $03
    nop                                           ; $5202: $00
    dec d                                         ; $5203: $15
    dec a                                         ; $5204: $3d
    nop                                           ; $5205: $00
    inc sp                                        ; $5206: $33
    ld bc, $5fcc                                  ; $5207: $01 $cc $5f
    ld bc, $0000                                  ; $520a: $01 $00 $00
    nop                                           ; $520d: $00
    nop                                           ; $520e: $00
    add hl, bc                                    ; $520f: $09
    nop                                           ; $5210: $00
    ld h, $05                                     ; $5211: $26 $05
    rlca                                          ; $5213: $07
    nop                                           ; $5214: $00
    add hl, bc                                    ; $5215: $09
    ld sp, hl                                     ; $5216: $f9
    ld bc, $0305                                  ; $5217: $01 $05 $03
    nop                                           ; $521a: $00
    dec d                                         ; $521b: $15
    dec a                                         ; $521c: $3d
    nop                                           ; $521d: $00
    inc sp                                        ; $521e: $33
    ld bc, $5fcc                                  ; $521f: $01 $cc $5f
    ld bc, $0000                                  ; $5222: $01 $00 $00
    nop                                           ; $5225: $00
    nop                                           ; $5226: $00
    add hl, bc                                    ; $5227: $09
    nop                                           ; $5228: $00
    daa                                           ; $5229: $27
    dec b                                         ; $522a: $05
    rlca                                          ; $522b: $07
    nop                                           ; $522c: $00
    add hl, bc                                    ; $522d: $09
    ld sp, hl                                     ; $522e: $f9
    ld bc, $0305                                  ; $522f: $01 $05 $03
    nop                                           ; $5232: $00
    dec d                                         ; $5233: $15
    dec a                                         ; $5234: $3d
    nop                                           ; $5235: $00
    inc sp                                        ; $5236: $33
    ld bc, $5fcc                                  ; $5237: $01 $cc $5f
    ld bc, $0000                                  ; $523a: $01 $00 $00
    nop                                           ; $523d: $00
    nop                                           ; $523e: $00
    add hl, bc                                    ; $523f: $09
    nop                                           ; $5240: $00
    ld b, c                                       ; $5241: $41
    dec b                                         ; $5242: $05
    rlca                                          ; $5243: $07
    nop                                           ; $5244: $00
    add hl, bc                                    ; $5245: $09
    ld sp, hl                                     ; $5246: $f9
    ld bc, $0305                                  ; $5247: $01 $05 $03
    nop                                           ; $524a: $00
    dec d                                         ; $524b: $15
    dec a                                         ; $524c: $3d
    nop                                           ; $524d: $00
    inc sp                                        ; $524e: $33
    ld bc, $5fcc                                  ; $524f: $01 $cc $5f
    ld bc, $0000                                  ; $5252: $01 $00 $00
    nop                                           ; $5255: $00
    nop                                           ; $5256: $00
    add hl, bc                                    ; $5257: $09
    nop                                           ; $5258: $00
    ld c, b                                       ; $5259: $48
    dec b                                         ; $525a: $05
    rlca                                          ; $525b: $07
    nop                                           ; $525c: $00
    add hl, bc                                    ; $525d: $09
    ld sp, hl                                     ; $525e: $f9
    ld bc, $0305                                  ; $525f: $01 $05 $03
    nop                                           ; $5262: $00
    dec d                                         ; $5263: $15
    dec a                                         ; $5264: $3d
    nop                                           ; $5265: $00
    inc sp                                        ; $5266: $33
    ld bc, $5fcc                                  ; $5267: $01 $cc $5f
    ld bc, $0000                                  ; $526a: $01 $00 $00
    nop                                           ; $526d: $00
    nop                                           ; $526e: $00
    ld e, a                                       ; $526f: $5f
    ld bc, $2e00                                  ; $5270: $01 $00 $2e
    dec d                                         ; $5273: $15
    nop                                           ; $5274: $00
    jr z, @+$01                                   ; $5275: $28 $ff

    nop                                           ; $5277: $00
    nop                                           ; $5278: $00
    nop                                           ; $5279: $00
    nop                                           ; $527a: $00
    add hl, bc                                    ; $527b: $09
    nop                                           ; $527c: $00
    ld h, $05                                     ; $527d: $26 $05
    rlca                                          ; $527f: $07
    nop                                           ; $5280: $00
    add hl, bc                                    ; $5281: $09
    ld sp, hl                                     ; $5282: $f9
    ld bc, $0305                                  ; $5283: $01 $05 $03
    nop                                           ; $5286: $00
    dec d                                         ; $5287: $15
    dec a                                         ; $5288: $3d
    nop                                           ; $5289: $00
    inc sp                                        ; $528a: $33
    ld bc, $5fcc                                  ; $528b: $01 $cc $5f
    ld bc, $0000                                  ; $528e: $01 $00 $00
    nop                                           ; $5291: $00
    nop                                           ; $5292: $00
    add hl, bc                                    ; $5293: $09
    nop                                           ; $5294: $00
    daa                                           ; $5295: $27
    dec b                                         ; $5296: $05
    rlca                                          ; $5297: $07
    nop                                           ; $5298: $00
    add hl, bc                                    ; $5299: $09
    ld sp, hl                                     ; $529a: $f9
    ld bc, $0305                                  ; $529b: $01 $05 $03
    nop                                           ; $529e: $00
    dec d                                         ; $529f: $15
    dec a                                         ; $52a0: $3d
    nop                                           ; $52a1: $00
    inc sp                                        ; $52a2: $33
    ld bc, $5fcc                                  ; $52a3: $01 $cc $5f
    ld bc, $0000                                  ; $52a6: $01 $00 $00
    nop                                           ; $52a9: $00
    nop                                           ; $52aa: $00
    add hl, bc                                    ; $52ab: $09
    nop                                           ; $52ac: $00
    scf                                           ; $52ad: $37
    dec b                                         ; $52ae: $05
    rlca                                          ; $52af: $07
    nop                                           ; $52b0: $00
    add hl, bc                                    ; $52b1: $09
    ld sp, hl                                     ; $52b2: $f9
    ld bc, $0305                                  ; $52b3: $01 $05 $03
    nop                                           ; $52b6: $00
    dec d                                         ; $52b7: $15
    dec a                                         ; $52b8: $3d
    nop                                           ; $52b9: $00
    inc sp                                        ; $52ba: $33
    ld bc, $5fcc                                  ; $52bb: $01 $cc $5f
    ld bc, $0000                                  ; $52be: $01 $00 $00
    nop                                           ; $52c1: $00
    nop                                           ; $52c2: $00
    add hl, bc                                    ; $52c3: $09
    nop                                           ; $52c4: $00
    add hl, sp                                    ; $52c5: $39
    dec b                                         ; $52c6: $05
    rlca                                          ; $52c7: $07
    nop                                           ; $52c8: $00
    add hl, bc                                    ; $52c9: $09
    ld sp, hl                                     ; $52ca: $f9
    ld bc, $0305                                  ; $52cb: $01 $05 $03
    nop                                           ; $52ce: $00
    dec d                                         ; $52cf: $15
    dec a                                         ; $52d0: $3d
    nop                                           ; $52d1: $00
    inc sp                                        ; $52d2: $33
    ld bc, $5fcc                                  ; $52d3: $01 $cc $5f
    ld bc, $0000                                  ; $52d6: $01 $00 $00
    nop                                           ; $52d9: $00
    nop                                           ; $52da: $00
    ld e, a                                       ; $52db: $5f
    ld bc, $2e00                                  ; $52dc: $01 $00 $2e
    dec d                                         ; $52df: $15
    nop                                           ; $52e0: $00
    jr z, @+$01                                   ; $52e1: $28 $ff

    nop                                           ; $52e3: $00
    nop                                           ; $52e4: $00
    nop                                           ; $52e5: $00
    nop                                           ; $52e6: $00
    add hl, bc                                    ; $52e7: $09
    nop                                           ; $52e8: $00
    ld h, $05                                     ; $52e9: $26 $05
    rlca                                          ; $52eb: $07
    nop                                           ; $52ec: $00
    add hl, bc                                    ; $52ed: $09
    ld sp, hl                                     ; $52ee: $f9
    ld bc, $0305                                  ; $52ef: $01 $05 $03
    nop                                           ; $52f2: $00
    dec d                                         ; $52f3: $15
    dec a                                         ; $52f4: $3d
    nop                                           ; $52f5: $00
    inc sp                                        ; $52f6: $33
    ld bc, $5fcc                                  ; $52f7: $01 $cc $5f
    ld bc, $0000                                  ; $52fa: $01 $00 $00
    nop                                           ; $52fd: $00
    nop                                           ; $52fe: $00
    add hl, bc                                    ; $52ff: $09
    nop                                           ; $5300: $00
    daa                                           ; $5301: $27
    dec b                                         ; $5302: $05
    rlca                                          ; $5303: $07
    nop                                           ; $5304: $00
    add hl, bc                                    ; $5305: $09
    ld sp, hl                                     ; $5306: $f9
    ld bc, $0305                                  ; $5307: $01 $05 $03
    nop                                           ; $530a: $00
    dec d                                         ; $530b: $15
    dec a                                         ; $530c: $3d
    nop                                           ; $530d: $00
    inc sp                                        ; $530e: $33
    ld bc, $5fcc                                  ; $530f: $01 $cc $5f
    ld bc, $0000                                  ; $5312: $01 $00 $00
    nop                                           ; $5315: $00
    nop                                           ; $5316: $00
    add hl, bc                                    ; $5317: $09
    nop                                           ; $5318: $00
    scf                                           ; $5319: $37
    dec b                                         ; $531a: $05
    rlca                                          ; $531b: $07
    nop                                           ; $531c: $00
    add hl, bc                                    ; $531d: $09
    ld sp, hl                                     ; $531e: $f9
    ld bc, $0305                                  ; $531f: $01 $05 $03
    nop                                           ; $5322: $00
    dec d                                         ; $5323: $15
    dec a                                         ; $5324: $3d
    nop                                           ; $5325: $00
    inc sp                                        ; $5326: $33
    ld bc, $5fcc                                  ; $5327: $01 $cc $5f
    ld bc, $0000                                  ; $532a: $01 $00 $00
    nop                                           ; $532d: $00
    nop                                           ; $532e: $00
    add hl, bc                                    ; $532f: $09
    nop                                           ; $5330: $00
    add hl, sp                                    ; $5331: $39
    dec b                                         ; $5332: $05
    rlca                                          ; $5333: $07
    nop                                           ; $5334: $00
    add hl, bc                                    ; $5335: $09
    ld sp, hl                                     ; $5336: $f9
    ld bc, $0305                                  ; $5337: $01 $05 $03
    nop                                           ; $533a: $00
    dec d                                         ; $533b: $15
    dec a                                         ; $533c: $3d
    nop                                           ; $533d: $00
    inc sp                                        ; $533e: $33
    ld bc, $5fcc                                  ; $533f: $01 $cc $5f
    ld bc, $0000                                  ; $5342: $01 $00 $00
    nop                                           ; $5345: $00
    nop                                           ; $5346: $00
    add hl, bc                                    ; $5347: $09
    nop                                           ; $5348: $00
    ld c, b                                       ; $5349: $48
    dec b                                         ; $534a: $05
    rlca                                          ; $534b: $07
    nop                                           ; $534c: $00
    add hl, bc                                    ; $534d: $09
    ld sp, hl                                     ; $534e: $f9
    ld bc, $0305                                  ; $534f: $01 $05 $03
    nop                                           ; $5352: $00
    dec d                                         ; $5353: $15
    dec a                                         ; $5354: $3d
    nop                                           ; $5355: $00
    inc sp                                        ; $5356: $33
    ld bc, $5fcc                                  ; $5357: $01 $cc $5f
    ld bc, $0000                                  ; $535a: $01 $00 $00
    nop                                           ; $535d: $00
    nop                                           ; $535e: $00
    add hl, bc                                    ; $535f: $09
    nop                                           ; $5360: $00
    ld e, d                                       ; $5361: $5a
    dec b                                         ; $5362: $05
    rlca                                          ; $5363: $07
    nop                                           ; $5364: $00
    add hl, bc                                    ; $5365: $09
    ld sp, hl                                     ; $5366: $f9
    ld bc, $0305                                  ; $5367: $01 $05 $03
    nop                                           ; $536a: $00
    dec d                                         ; $536b: $15
    dec a                                         ; $536c: $3d
    nop                                           ; $536d: $00
    inc sp                                        ; $536e: $33
    ld bc, $5fcc                                  ; $536f: $01 $cc $5f
    ld bc, $0000                                  ; $5372: $01 $00 $00
    nop                                           ; $5375: $00
    nop                                           ; $5376: $00
    ld e, a                                       ; $5377: $5f
    ld bc, $2e00                                  ; $5378: $01 $00 $2e
    dec d                                         ; $537b: $15
    nop                                           ; $537c: $00
    jr z, @+$01                                   ; $537d: $28 $ff

    nop                                           ; $537f: $00
    nop                                           ; $5380: $00
    nop                                           ; $5381: $00
    nop                                           ; $5382: $00
    add hl, bc                                    ; $5383: $09
    nop                                           ; $5384: $00
    ld h, $05                                     ; $5385: $26 $05
    rlca                                          ; $5387: $07
    nop                                           ; $5388: $00
    add hl, bc                                    ; $5389: $09
    ld sp, hl                                     ; $538a: $f9
    ld bc, $0305                                  ; $538b: $01 $05 $03
    nop                                           ; $538e: $00
    dec d                                         ; $538f: $15
    dec a                                         ; $5390: $3d
    nop                                           ; $5391: $00
    inc sp                                        ; $5392: $33
    ld bc, $5fcc                                  ; $5393: $01 $cc $5f
    ld bc, $0000                                  ; $5396: $01 $00 $00
    nop                                           ; $5399: $00
    nop                                           ; $539a: $00
    ld e, a                                       ; $539b: $5f
    nop                                           ; $539c: $00
    nop                                           ; $539d: $00
    add hl, bc                                    ; $539e: $09
    nop                                           ; $539f: $00
    daa                                           ; $53a0: $27
    dec b                                         ; $53a1: $05
    rlca                                          ; $53a2: $07
    nop                                           ; $53a3: $00
    add hl, bc                                    ; $53a4: $09
    ld sp, hl                                     ; $53a5: $f9
    ld bc, $0305                                  ; $53a6: $01 $05 $03
    nop                                           ; $53a9: $00
    dec d                                         ; $53aa: $15
    dec a                                         ; $53ab: $3d
    nop                                           ; $53ac: $00
    inc sp                                        ; $53ad: $33
    ld bc, $5fcc                                  ; $53ae: $01 $cc $5f
    ld bc, $0000                                  ; $53b1: $01 $00 $00
    nop                                           ; $53b4: $00
    nop                                           ; $53b5: $00
    ld e, a                                       ; $53b6: $5f
    ld bc, $2e00                                  ; $53b7: $01 $00 $2e
    dec d                                         ; $53ba: $15
    nop                                           ; $53bb: $00
    jr z, @+$01                                   ; $53bc: $28 $ff

    nop                                           ; $53be: $00
    nop                                           ; $53bf: $00
    nop                                           ; $53c0: $00
    nop                                           ; $53c1: $00
    add hl, bc                                    ; $53c2: $09
    nop                                           ; $53c3: $00
    ld h, $05                                     ; $53c4: $26 $05
    rlca                                          ; $53c6: $07
    nop                                           ; $53c7: $00
    add hl, bc                                    ; $53c8: $09
    ld sp, hl                                     ; $53c9: $f9
    ld bc, $0305                                  ; $53ca: $01 $05 $03
    nop                                           ; $53cd: $00
    dec d                                         ; $53ce: $15
    dec a                                         ; $53cf: $3d
    nop                                           ; $53d0: $00
    inc sp                                        ; $53d1: $33
    ld bc, $5fcc                                  ; $53d2: $01 $cc $5f
    ld bc, $0000                                  ; $53d5: $01 $00 $00
    nop                                           ; $53d8: $00
    nop                                           ; $53d9: $00
    ld e, a                                       ; $53da: $5f
    ld bc, $2e00                                  ; $53db: $01 $00 $2e
    dec d                                         ; $53de: $15
    nop                                           ; $53df: $00
    jr z, @+$01                                   ; $53e0: $28 $ff

    nop                                           ; $53e2: $00
    nop                                           ; $53e3: $00
    nop                                           ; $53e4: $00
    nop                                           ; $53e5: $00
    add hl, bc                                    ; $53e6: $09
    nop                                           ; $53e7: $00
    ld h, $05                                     ; $53e8: $26 $05
    rlca                                          ; $53ea: $07
    nop                                           ; $53eb: $00
    add hl, bc                                    ; $53ec: $09
    ld sp, hl                                     ; $53ed: $f9
    ld bc, $0305                                  ; $53ee: $01 $05 $03
    nop                                           ; $53f1: $00
    dec d                                         ; $53f2: $15
    dec a                                         ; $53f3: $3d
    nop                                           ; $53f4: $00
    inc sp                                        ; $53f5: $33
    ld bc, $5fcc                                  ; $53f6: $01 $cc $5f
    ld bc, $0000                                  ; $53f9: $01 $00 $00
    nop                                           ; $53fc: $00
    nop                                           ; $53fd: $00
    add hl, bc                                    ; $53fe: $09
    nop                                           ; $53ff: $00
    daa                                           ; $5400: $27
    dec b                                         ; $5401: $05
    rlca                                          ; $5402: $07
    nop                                           ; $5403: $00
    add hl, bc                                    ; $5404: $09
    ld sp, hl                                     ; $5405: $f9
    ld bc, $0305                                  ; $5406: $01 $05 $03
    nop                                           ; $5409: $00
    dec d                                         ; $540a: $15
    dec a                                         ; $540b: $3d
    nop                                           ; $540c: $00
    inc sp                                        ; $540d: $33
    ld bc, $5fcc                                  ; $540e: $01 $cc $5f
    ld bc, $0000                                  ; $5411: $01 $00 $00
    nop                                           ; $5414: $00
    nop                                           ; $5415: $00
    add hl, bc                                    ; $5416: $09
    nop                                           ; $5417: $00
    scf                                           ; $5418: $37
    dec b                                         ; $5419: $05
    rlca                                          ; $541a: $07
    nop                                           ; $541b: $00
    add hl, bc                                    ; $541c: $09
    ld sp, hl                                     ; $541d: $f9
    ld bc, $0305                                  ; $541e: $01 $05 $03
    nop                                           ; $5421: $00
    dec d                                         ; $5422: $15
    dec a                                         ; $5423: $3d
    nop                                           ; $5424: $00
    inc sp                                        ; $5425: $33
    ld bc, $5fcc                                  ; $5426: $01 $cc $5f
    ld bc, $0000                                  ; $5429: $01 $00 $00
    nop                                           ; $542c: $00
    nop                                           ; $542d: $00
    add hl, bc                                    ; $542e: $09
    nop                                           ; $542f: $00
    add hl, sp                                    ; $5430: $39
    dec b                                         ; $5431: $05
    rlca                                          ; $5432: $07
    nop                                           ; $5433: $00
    add hl, bc                                    ; $5434: $09
    ld sp, hl                                     ; $5435: $f9
    ld bc, $0305                                  ; $5436: $01 $05 $03
    nop                                           ; $5439: $00
    dec d                                         ; $543a: $15
    dec a                                         ; $543b: $3d
    nop                                           ; $543c: $00
    inc sp                                        ; $543d: $33
    ld bc, $5fcc                                  ; $543e: $01 $cc $5f
    ld bc, $0000                                  ; $5441: $01 $00 $00
    nop                                           ; $5444: $00
    nop                                           ; $5445: $00
    add hl, bc                                    ; $5446: $09
    nop                                           ; $5447: $00
    ld c, b                                       ; $5448: $48
    dec b                                         ; $5449: $05
    rlca                                          ; $544a: $07
    nop                                           ; $544b: $00
    add hl, bc                                    ; $544c: $09
    ld sp, hl                                     ; $544d: $f9
    ld bc, $0305                                  ; $544e: $01 $05 $03
    nop                                           ; $5451: $00
    dec d                                         ; $5452: $15
    dec a                                         ; $5453: $3d
    nop                                           ; $5454: $00
    inc sp                                        ; $5455: $33
    ld bc, $5fcc                                  ; $5456: $01 $cc $5f
    ld bc, $0000                                  ; $5459: $01 $00 $00
    nop                                           ; $545c: $00
    nop                                           ; $545d: $00
    ld e, a                                       ; $545e: $5f
    ld bc, $2e00                                  ; $545f: $01 $00 $2e
    dec d                                         ; $5462: $15
    nop                                           ; $5463: $00
    jr z, @+$01                                   ; $5464: $28 $ff

    nop                                           ; $5466: $00
    nop                                           ; $5467: $00
    nop                                           ; $5468: $00
    nop                                           ; $5469: $00
    add hl, bc                                    ; $546a: $09
    nop                                           ; $546b: $00
    ld h, $05                                     ; $546c: $26 $05
    rlca                                          ; $546e: $07
    nop                                           ; $546f: $00
    add hl, bc                                    ; $5470: $09
    ld sp, hl                                     ; $5471: $f9
    ld bc, $0305                                  ; $5472: $01 $05 $03
    nop                                           ; $5475: $00
    dec d                                         ; $5476: $15
    dec a                                         ; $5477: $3d
    nop                                           ; $5478: $00
    inc sp                                        ; $5479: $33
    ld bc, $5fcc                                  ; $547a: $01 $cc $5f
    ld bc, $0000                                  ; $547d: $01 $00 $00
    nop                                           ; $5480: $00
    nop                                           ; $5481: $00
    ld e, a                                       ; $5482: $5f
    ld bc, $2e00                                  ; $5483: $01 $00 $2e
    dec d                                         ; $5486: $15
    nop                                           ; $5487: $00
    jr z, @+$01                                   ; $5488: $28 $ff

    nop                                           ; $548a: $00
    nop                                           ; $548b: $00
    nop                                           ; $548c: $00
    nop                                           ; $548d: $00
    ld e, a                                       ; $548e: $5f
    ld bc, $2800                                  ; $548f: $01 $00 $28
    rst $38                                       ; $5492: $ff
    nop                                           ; $5493: $00
    nop                                           ; $5494: $00
    nop                                           ; $5495: $00
    nop                                           ; $5496: $00
    add hl, bc                                    ; $5497: $09
    nop                                           ; $5498: $00
    rlca                                          ; $5499: $07
    dec b                                         ; $549a: $05
    rlca                                          ; $549b: $07
    nop                                           ; $549c: $00
    add hl, bc                                    ; $549d: $09
    ld sp, hl                                     ; $549e: $f9
    ld bc, $0305                                  ; $549f: $01 $05 $03
    nop                                           ; $54a2: $00
    dec d                                         ; $54a3: $15
    dec a                                         ; $54a4: $3d
    nop                                           ; $54a5: $00
    inc sp                                        ; $54a6: $33
    ld bc, $5fcc                                  ; $54a7: $01 $cc $5f
    ld bc, $0000                                  ; $54aa: $01 $00 $00
    nop                                           ; $54ad: $00
    nop                                           ; $54ae: $00
    add hl, bc                                    ; $54af: $09
    nop                                           ; $54b0: $00
    ld d, d                                       ; $54b1: $52
    dec b                                         ; $54b2: $05
    rlca                                          ; $54b3: $07
    nop                                           ; $54b4: $00
    add hl, bc                                    ; $54b5: $09
    ld sp, hl                                     ; $54b6: $f9
    ld bc, $0305                                  ; $54b7: $01 $05 $03
    nop                                           ; $54ba: $00
    dec d                                         ; $54bb: $15
    dec a                                         ; $54bc: $3d
    nop                                           ; $54bd: $00
    inc sp                                        ; $54be: $33
    ld bc, $5fcc                                  ; $54bf: $01 $cc $5f
    ld bc, $0000                                  ; $54c2: $01 $00 $00
    nop                                           ; $54c5: $00
    nop                                           ; $54c6: $00
    add hl, bc                                    ; $54c7: $09
    nop                                           ; $54c8: $00
    ld h, $05                                     ; $54c9: $26 $05
    rlca                                          ; $54cb: $07
    nop                                           ; $54cc: $00
    add hl, bc                                    ; $54cd: $09
    ld sp, hl                                     ; $54ce: $f9
    ld bc, $0305                                  ; $54cf: $01 $05 $03
    nop                                           ; $54d2: $00
    dec d                                         ; $54d3: $15
    dec a                                         ; $54d4: $3d
    nop                                           ; $54d5: $00
    inc sp                                        ; $54d6: $33
    ld bc, $5fcc                                  ; $54d7: $01 $cc $5f
    ld bc, $0000                                  ; $54da: $01 $00 $00
    nop                                           ; $54dd: $00
    nop                                           ; $54de: $00
    add hl, bc                                    ; $54df: $09
    nop                                           ; $54e0: $00
    daa                                           ; $54e1: $27
    dec b                                         ; $54e2: $05
    rlca                                          ; $54e3: $07
    nop                                           ; $54e4: $00
    add hl, bc                                    ; $54e5: $09
    ld sp, hl                                     ; $54e6: $f9
    ld bc, $0305                                  ; $54e7: $01 $05 $03
    nop                                           ; $54ea: $00
    dec d                                         ; $54eb: $15
    dec a                                         ; $54ec: $3d
    nop                                           ; $54ed: $00
    inc sp                                        ; $54ee: $33
    ld bc, $5fcc                                  ; $54ef: $01 $cc $5f
    ld bc, $0000                                  ; $54f2: $01 $00 $00
    nop                                           ; $54f5: $00
    nop                                           ; $54f6: $00
    add hl, bc                                    ; $54f7: $09
    nop                                           ; $54f8: $00
    scf                                           ; $54f9: $37
    dec b                                         ; $54fa: $05
    rlca                                          ; $54fb: $07
    nop                                           ; $54fc: $00
    add hl, bc                                    ; $54fd: $09
    ld sp, hl                                     ; $54fe: $f9
    ld bc, $0305                                  ; $54ff: $01 $05 $03
    nop                                           ; $5502: $00
    dec d                                         ; $5503: $15
    dec a                                         ; $5504: $3d
    nop                                           ; $5505: $00
    inc sp                                        ; $5506: $33
    ld bc, $5fcc                                  ; $5507: $01 $cc $5f
    ld bc, $0000                                  ; $550a: $01 $00 $00
    nop                                           ; $550d: $00
    nop                                           ; $550e: $00
    add hl, bc                                    ; $550f: $09
    nop                                           ; $5510: $00
    add hl, sp                                    ; $5511: $39
    dec b                                         ; $5512: $05
    rlca                                          ; $5513: $07
    nop                                           ; $5514: $00
    add hl, bc                                    ; $5515: $09
    ld sp, hl                                     ; $5516: $f9
    ld bc, $0305                                  ; $5517: $01 $05 $03
    nop                                           ; $551a: $00
    dec d                                         ; $551b: $15
    dec a                                         ; $551c: $3d
    nop                                           ; $551d: $00
    inc sp                                        ; $551e: $33
    ld bc, $5fcc                                  ; $551f: $01 $cc $5f
    ld bc, $0000                                  ; $5522: $01 $00 $00
    nop                                           ; $5525: $00
    nop                                           ; $5526: $00
    ld e, a                                       ; $5527: $5f
    ld bc, $2e00                                  ; $5528: $01 $00 $2e
    dec d                                         ; $552b: $15
    nop                                           ; $552c: $00
    jr z, @+$01                                   ; $552d: $28 $ff

    nop                                           ; $552f: $00
    nop                                           ; $5530: $00
    nop                                           ; $5531: $00
    nop                                           ; $5532: $00
    add hl, bc                                    ; $5533: $09
    nop                                           ; $5534: $00
    ld h, $05                                     ; $5535: $26 $05
    rlca                                          ; $5537: $07
    nop                                           ; $5538: $00
    add hl, bc                                    ; $5539: $09
    ld sp, hl                                     ; $553a: $f9
    ld bc, $0305                                  ; $553b: $01 $05 $03
    nop                                           ; $553e: $00
    dec d                                         ; $553f: $15
    dec a                                         ; $5540: $3d
    nop                                           ; $5541: $00
    inc sp                                        ; $5542: $33
    ld bc, $5fcc                                  ; $5543: $01 $cc $5f
    ld bc, $0000                                  ; $5546: $01 $00 $00
    nop                                           ; $5549: $00
    nop                                           ; $554a: $00
    add hl, bc                                    ; $554b: $09
    nop                                           ; $554c: $00
    daa                                           ; $554d: $27
    dec b                                         ; $554e: $05
    rlca                                          ; $554f: $07
    nop                                           ; $5550: $00
    add hl, bc                                    ; $5551: $09
    ld sp, hl                                     ; $5552: $f9
    ld bc, $0305                                  ; $5553: $01 $05 $03
    nop                                           ; $5556: $00
    dec d                                         ; $5557: $15
    dec a                                         ; $5558: $3d
    nop                                           ; $5559: $00
    inc sp                                        ; $555a: $33
    ld bc, $5fcc                                  ; $555b: $01 $cc $5f
    ld bc, $0000                                  ; $555e: $01 $00 $00
    nop                                           ; $5561: $00
    nop                                           ; $5562: $00
    add hl, bc                                    ; $5563: $09
    nop                                           ; $5564: $00
    scf                                           ; $5565: $37
    dec b                                         ; $5566: $05
    rlca                                          ; $5567: $07
    nop                                           ; $5568: $00
    add hl, bc                                    ; $5569: $09
    ld sp, hl                                     ; $556a: $f9
    ld bc, $0305                                  ; $556b: $01 $05 $03
    nop                                           ; $556e: $00
    dec d                                         ; $556f: $15
    dec a                                         ; $5570: $3d
    nop                                           ; $5571: $00
    inc sp                                        ; $5572: $33
    ld bc, $5fcc                                  ; $5573: $01 $cc $5f
    ld bc, $0000                                  ; $5576: $01 $00 $00
    nop                                           ; $5579: $00
    nop                                           ; $557a: $00
    add hl, bc                                    ; $557b: $09
    nop                                           ; $557c: $00
    add hl, sp                                    ; $557d: $39
    dec b                                         ; $557e: $05
    rlca                                          ; $557f: $07
    nop                                           ; $5580: $00
    add hl, bc                                    ; $5581: $09
    ld sp, hl                                     ; $5582: $f9
    ld bc, $0305                                  ; $5583: $01 $05 $03
    nop                                           ; $5586: $00
    dec d                                         ; $5587: $15
    dec a                                         ; $5588: $3d
    nop                                           ; $5589: $00
    inc sp                                        ; $558a: $33
    ld bc, $5fcc                                  ; $558b: $01 $cc $5f
    ld bc, $0000                                  ; $558e: $01 $00 $00
    nop                                           ; $5591: $00
    nop                                           ; $5592: $00
    ld e, a                                       ; $5593: $5f
    ld bc, $2e00                                  ; $5594: $01 $00 $2e
    dec d                                         ; $5597: $15
    nop                                           ; $5598: $00
    jr z, @+$01                                   ; $5599: $28 $ff

    nop                                           ; $559b: $00
    nop                                           ; $559c: $00
    nop                                           ; $559d: $00
    nop                                           ; $559e: $00
    add hl, bc                                    ; $559f: $09
    nop                                           ; $55a0: $00
    rlca                                          ; $55a1: $07
    dec b                                         ; $55a2: $05
    rlca                                          ; $55a3: $07
    nop                                           ; $55a4: $00
    add hl, bc                                    ; $55a5: $09
    ld sp, hl                                     ; $55a6: $f9
    ld bc, $0305                                  ; $55a7: $01 $05 $03
    nop                                           ; $55aa: $00
    dec d                                         ; $55ab: $15
    dec a                                         ; $55ac: $3d
    nop                                           ; $55ad: $00
    inc sp                                        ; $55ae: $33
    ld bc, $5fcc                                  ; $55af: $01 $cc $5f
    ld bc, $0000                                  ; $55b2: $01 $00 $00
    nop                                           ; $55b5: $00
    nop                                           ; $55b6: $00
    add hl, bc                                    ; $55b7: $09
    nop                                           ; $55b8: $00
    ld d, d                                       ; $55b9: $52
    dec b                                         ; $55ba: $05
    rlca                                          ; $55bb: $07
    nop                                           ; $55bc: $00
    add hl, bc                                    ; $55bd: $09
    ld sp, hl                                     ; $55be: $f9
    ld bc, $0305                                  ; $55bf: $01 $05 $03
    nop                                           ; $55c2: $00
    dec d                                         ; $55c3: $15
    dec a                                         ; $55c4: $3d
    nop                                           ; $55c5: $00
    inc sp                                        ; $55c6: $33
    ld bc, $5fcc                                  ; $55c7: $01 $cc $5f
    ld bc, $0000                                  ; $55ca: $01 $00 $00
    nop                                           ; $55cd: $00
    nop                                           ; $55ce: $00
    add hl, bc                                    ; $55cf: $09
    nop                                           ; $55d0: $00
    scf                                           ; $55d1: $37
    dec b                                         ; $55d2: $05
    rlca                                          ; $55d3: $07
    nop                                           ; $55d4: $00
    add hl, bc                                    ; $55d5: $09
    ld sp, hl                                     ; $55d6: $f9
    ld bc, $0305                                  ; $55d7: $01 $05 $03
    nop                                           ; $55da: $00
    dec d                                         ; $55db: $15
    dec a                                         ; $55dc: $3d
    nop                                           ; $55dd: $00
    inc sp                                        ; $55de: $33
    ld bc, $5fcc                                  ; $55df: $01 $cc $5f
    ld bc, $0000                                  ; $55e2: $01 $00 $00
    nop                                           ; $55e5: $00
    nop                                           ; $55e6: $00
    add hl, bc                                    ; $55e7: $09
    nop                                           ; $55e8: $00
    add hl, sp                                    ; $55e9: $39
    dec b                                         ; $55ea: $05
    rlca                                          ; $55eb: $07
    nop                                           ; $55ec: $00
    add hl, bc                                    ; $55ed: $09
    ld sp, hl                                     ; $55ee: $f9
    ld bc, $0305                                  ; $55ef: $01 $05 $03
    nop                                           ; $55f2: $00
    dec d                                         ; $55f3: $15
    dec a                                         ; $55f4: $3d
    nop                                           ; $55f5: $00
    inc sp                                        ; $55f6: $33
    ld bc, $5fcc                                  ; $55f7: $01 $cc $5f
    ld bc, $0000                                  ; $55fa: $01 $00 $00
    nop                                           ; $55fd: $00
    nop                                           ; $55fe: $00
    add hl, bc                                    ; $55ff: $09
    nop                                           ; $5600: $00
    daa                                           ; $5601: $27
    dec b                                         ; $5602: $05
    rlca                                          ; $5603: $07
    nop                                           ; $5604: $00
    add hl, bc                                    ; $5605: $09
    ld sp, hl                                     ; $5606: $f9
    ld bc, $0305                                  ; $5607: $01 $05 $03
    nop                                           ; $560a: $00
    dec d                                         ; $560b: $15
    dec a                                         ; $560c: $3d
    nop                                           ; $560d: $00
    inc sp                                        ; $560e: $33
    ld bc, $5fcc                                  ; $560f: $01 $cc $5f
    ld bc, $0000                                  ; $5612: $01 $00 $00
    nop                                           ; $5615: $00
    nop                                           ; $5616: $00
    add hl, bc                                    ; $5617: $09
    nop                                           ; $5618: $00
    ld c, b                                       ; $5619: $48
    dec b                                         ; $561a: $05
    rlca                                          ; $561b: $07
    nop                                           ; $561c: $00
    add hl, bc                                    ; $561d: $09
    ld sp, hl                                     ; $561e: $f9
    ld bc, $0305                                  ; $561f: $01 $05 $03
    nop                                           ; $5622: $00
    dec d                                         ; $5623: $15
    dec a                                         ; $5624: $3d
    nop                                           ; $5625: $00
    inc sp                                        ; $5626: $33
    ld bc, $5fcc                                  ; $5627: $01 $cc $5f
    ld bc, $0000                                  ; $562a: $01 $00 $00
    nop                                           ; $562d: $00
    nop                                           ; $562e: $00
    ld e, a                                       ; $562f: $5f
    ld bc, $2e00                                  ; $5630: $01 $00 $2e
    dec d                                         ; $5633: $15
    nop                                           ; $5634: $00
    jr z, @+$01                                   ; $5635: $28 $ff

    nop                                           ; $5637: $00
    nop                                           ; $5638: $00
    nop                                           ; $5639: $00
    nop                                           ; $563a: $00
    ld e, a                                       ; $563b: $5f
    ld bc, $2800                                  ; $563c: $01 $00 $28
    rst $38                                       ; $563f: $ff
    nop                                           ; $5640: $00
    nop                                           ; $5641: $00
    nop                                           ; $5642: $00
    nop                                           ; $5643: $00
    ld e, a                                       ; $5644: $5f
    ld bc, $2800                                  ; $5645: $01 $00 $28
    rst $38                                       ; $5648: $ff
    nop                                           ; $5649: $00
    nop                                           ; $564a: $00
    nop                                           ; $564b: $00
    nop                                           ; $564c: $00
    ld e, a                                       ; $564d: $5f
    ld bc, $2800                                  ; $564e: $01 $00 $28
    rst $38                                       ; $5651: $ff
    nop                                           ; $5652: $00
    nop                                           ; $5653: $00
    nop                                           ; $5654: $00
    nop                                           ; $5655: $00
    add hl, bc                                    ; $5656: $09
    nop                                           ; $5657: $00
    dec c                                         ; $5658: $0d
    dec b                                         ; $5659: $05
    rlca                                          ; $565a: $07
    nop                                           ; $565b: $00
    add hl, bc                                    ; $565c: $09
    ld sp, hl                                     ; $565d: $f9
    ld bc, $0305                                  ; $565e: $01 $05 $03
    nop                                           ; $5661: $00
    dec d                                         ; $5662: $15
    dec a                                         ; $5663: $3d
    nop                                           ; $5664: $00
    inc sp                                        ; $5665: $33
    ld bc, $5fcc                                  ; $5666: $01 $cc $5f
    ld bc, $0000                                  ; $5669: $01 $00 $00
    nop                                           ; $566c: $00
    nop                                           ; $566d: $00
    ld e, a                                       ; $566e: $5f
    ld bc, $2e00                                  ; $566f: $01 $00 $2e
    dec d                                         ; $5672: $15
    nop                                           ; $5673: $00
    jr z, @+$01                                   ; $5674: $28 $ff

    nop                                           ; $5676: $00
    nop                                           ; $5677: $00
    nop                                           ; $5678: $00
    nop                                           ; $5679: $00
    add hl, bc                                    ; $567a: $09
    nop                                           ; $567b: $00
    ld c, b                                       ; $567c: $48
    dec b                                         ; $567d: $05
    rlca                                          ; $567e: $07
    nop                                           ; $567f: $00
    add hl, bc                                    ; $5680: $09
    ld sp, hl                                     ; $5681: $f9
    ld bc, $0305                                  ; $5682: $01 $05 $03
    nop                                           ; $5685: $00
    dec d                                         ; $5686: $15
    dec a                                         ; $5687: $3d
    nop                                           ; $5688: $00
    inc sp                                        ; $5689: $33
    ld bc, $5fcc                                  ; $568a: $01 $cc $5f
    ld bc, $0000                                  ; $568d: $01 $00 $00
    nop                                           ; $5690: $00
    nop                                           ; $5691: $00
    add hl, bc                                    ; $5692: $09
    nop                                           ; $5693: $00
    ld b, c                                       ; $5694: $41
    dec b                                         ; $5695: $05
    rlca                                          ; $5696: $07
    nop                                           ; $5697: $00
    add hl, bc                                    ; $5698: $09
    ld sp, hl                                     ; $5699: $f9
    ld bc, $0305                                  ; $569a: $01 $05 $03
    nop                                           ; $569d: $00
    dec d                                         ; $569e: $15
    dec a                                         ; $569f: $3d
    nop                                           ; $56a0: $00
    inc sp                                        ; $56a1: $33
    ld bc, $5fcc                                  ; $56a2: $01 $cc $5f
    ld bc, $0000                                  ; $56a5: $01 $00 $00
    nop                                           ; $56a8: $00
    nop                                           ; $56a9: $00
    ld e, a                                       ; $56aa: $5f
    ld bc, $2800                                  ; $56ab: $01 $00 $28
    rst $38                                       ; $56ae: $ff
    nop                                           ; $56af: $00
    nop                                           ; $56b0: $00
    nop                                           ; $56b1: $00
    nop                                           ; $56b2: $00
    add hl, bc                                    ; $56b3: $09
    nop                                           ; $56b4: $00
    ld e, b                                       ; $56b5: $58
    dec b                                         ; $56b6: $05
    ld [bc], a                                    ; $56b7: $02
    nop                                           ; $56b8: $00
    rrca                                          ; $56b9: $0f
    dec bc                                        ; $56ba: $0b
    ld bc, $015f                                  ; $56bb: $01 $5f $01
    nop                                           ; $56be: $00
    jr z, @+$01                                   ; $56bf: $28 $ff

    nop                                           ; $56c1: $00
    nop                                           ; $56c2: $00
    nop                                           ; $56c3: $00
    nop                                           ; $56c4: $00
    add hl, bc                                    ; $56c5: $09
    nop                                           ; $56c6: $00
    ld h, $05                                     ; $56c7: $26 $05
    rlca                                          ; $56c9: $07
    nop                                           ; $56ca: $00
    add hl, bc                                    ; $56cb: $09
    ld sp, hl                                     ; $56cc: $f9
    ld bc, $0305                                  ; $56cd: $01 $05 $03
    nop                                           ; $56d0: $00
    dec d                                         ; $56d1: $15
    dec a                                         ; $56d2: $3d
    nop                                           ; $56d3: $00
    inc sp                                        ; $56d4: $33
    ld bc, $5fcc                                  ; $56d5: $01 $cc $5f
    ld bc, $0000                                  ; $56d8: $01 $00 $00
    nop                                           ; $56db: $00
    nop                                           ; $56dc: $00
    add hl, bc                                    ; $56dd: $09
    nop                                           ; $56de: $00
    ld b, $05                                     ; $56df: $06 $05
    rlca                                          ; $56e1: $07
    nop                                           ; $56e2: $00
    add hl, bc                                    ; $56e3: $09
    ld sp, hl                                     ; $56e4: $f9
    ld bc, $0305                                  ; $56e5: $01 $05 $03
    nop                                           ; $56e8: $00
    dec d                                         ; $56e9: $15
    dec a                                         ; $56ea: $3d
    nop                                           ; $56eb: $00
    inc sp                                        ; $56ec: $33
    ld bc, $5fcc                                  ; $56ed: $01 $cc $5f
    ld bc, $0000                                  ; $56f0: $01 $00 $00
    nop                                           ; $56f3: $00
    nop                                           ; $56f4: $00
    add hl, bc                                    ; $56f5: $09
    nop                                           ; $56f6: $00
    daa                                           ; $56f7: $27
    dec b                                         ; $56f8: $05
    rlca                                          ; $56f9: $07
    nop                                           ; $56fa: $00
    add hl, bc                                    ; $56fb: $09
    ld sp, hl                                     ; $56fc: $f9
    ld bc, $0305                                  ; $56fd: $01 $05 $03
    nop                                           ; $5700: $00
    dec d                                         ; $5701: $15
    dec a                                         ; $5702: $3d
    nop                                           ; $5703: $00
    inc sp                                        ; $5704: $33
    ld bc, $5fcc                                  ; $5705: $01 $cc $5f
    ld bc, $0000                                  ; $5708: $01 $00 $00
    nop                                           ; $570b: $00
    nop                                           ; $570c: $00
    ld e, a                                       ; $570d: $5f
    ld bc, $2e00                                  ; $570e: $01 $00 $2e
    dec d                                         ; $5711: $15
    nop                                           ; $5712: $00
    jr z, @+$01                                   ; $5713: $28 $ff

    nop                                           ; $5715: $00
    nop                                           ; $5716: $00
    nop                                           ; $5717: $00
    nop                                           ; $5718: $00
    add hl, bc                                    ; $5719: $09
    nop                                           ; $571a: $00
    ld h, $05                                     ; $571b: $26 $05
    rlca                                          ; $571d: $07
    nop                                           ; $571e: $00
    add hl, bc                                    ; $571f: $09
    ld sp, hl                                     ; $5720: $f9
    ld bc, $0305                                  ; $5721: $01 $05 $03
    nop                                           ; $5724: $00
    dec d                                         ; $5725: $15
    dec a                                         ; $5726: $3d
    nop                                           ; $5727: $00
    inc sp                                        ; $5728: $33
    ld bc, $5fcc                                  ; $5729: $01 $cc $5f
    ld bc, $0000                                  ; $572c: $01 $00 $00
    nop                                           ; $572f: $00
    nop                                           ; $5730: $00
    add hl, bc                                    ; $5731: $09
    nop                                           ; $5732: $00
    ld b, $05                                     ; $5733: $06 $05
    rlca                                          ; $5735: $07
    nop                                           ; $5736: $00
    add hl, bc                                    ; $5737: $09
    ld sp, hl                                     ; $5738: $f9
    ld bc, $0305                                  ; $5739: $01 $05 $03
    nop                                           ; $573c: $00
    dec d                                         ; $573d: $15
    dec a                                         ; $573e: $3d
    nop                                           ; $573f: $00
    inc sp                                        ; $5740: $33
    ld bc, $5fcc                                  ; $5741: $01 $cc $5f
    ld bc, $0000                                  ; $5744: $01 $00 $00
    nop                                           ; $5747: $00
    nop                                           ; $5748: $00
    add hl, bc                                    ; $5749: $09
    nop                                           ; $574a: $00
    daa                                           ; $574b: $27
    dec b                                         ; $574c: $05
    rlca                                          ; $574d: $07
    nop                                           ; $574e: $00
    add hl, bc                                    ; $574f: $09
    ld sp, hl                                     ; $5750: $f9
    ld bc, $0305                                  ; $5751: $01 $05 $03
    nop                                           ; $5754: $00
    dec d                                         ; $5755: $15
    dec a                                         ; $5756: $3d
    nop                                           ; $5757: $00
    inc sp                                        ; $5758: $33
    ld bc, $5fcc                                  ; $5759: $01 $cc $5f
    ld bc, $0000                                  ; $575c: $01 $00 $00
    nop                                           ; $575f: $00
    nop                                           ; $5760: $00
    ld e, a                                       ; $5761: $5f
    ld bc, $2e00                                  ; $5762: $01 $00 $2e
    dec d                                         ; $5765: $15
    nop                                           ; $5766: $00
    jr z, @+$01                                   ; $5767: $28 $ff

    nop                                           ; $5769: $00
    nop                                           ; $576a: $00
    nop                                           ; $576b: $00
    nop                                           ; $576c: $00
    add hl, bc                                    ; $576d: $09
    nop                                           ; $576e: $00
    ld b, $04                                     ; $576f: $06 $04
    inc bc                                        ; $5771: $03
    nop                                           ; $5772: $00
    jr z, jr_009_57cb                             ; $5773: $28 $56

    nop                                           ; $5775: $00
    nop                                           ; $5776: $00
    nop                                           ; $5777: $00
    nop                                           ; $5778: $00
    ld e, a                                       ; $5779: $5f
    ld bc, $2e00                                  ; $577a: $01 $00 $2e
    dec d                                         ; $577d: $15
    nop                                           ; $577e: $00
    jr z, @+$01                                   ; $577f: $28 $ff

    nop                                           ; $5781: $00
    nop                                           ; $5782: $00
    nop                                           ; $5783: $00
    nop                                           ; $5784: $00
    add hl, bc                                    ; $5785: $09
    nop                                           ; $5786: $00
    ld b, $05                                     ; $5787: $06 $05
    rlca                                          ; $5789: $07
    nop                                           ; $578a: $00
    add hl, bc                                    ; $578b: $09
    ld sp, hl                                     ; $578c: $f9
    ld bc, $0305                                  ; $578d: $01 $05 $03
    nop                                           ; $5790: $00
    dec d                                         ; $5791: $15
    dec a                                         ; $5792: $3d
    nop                                           ; $5793: $00
    inc sp                                        ; $5794: $33
    ld bc, $5fcc                                  ; $5795: $01 $cc $5f
    ld bc, $0000                                  ; $5798: $01 $00 $00
    nop                                           ; $579b: $00
    nop                                           ; $579c: $00
    ld e, a                                       ; $579d: $5f
    ld bc, $2e00                                  ; $579e: $01 $00 $2e
    dec d                                         ; $57a1: $15
    nop                                           ; $57a2: $00
    jr z, @+$01                                   ; $57a3: $28 $ff

    nop                                           ; $57a5: $00
    nop                                           ; $57a6: $00
    nop                                           ; $57a7: $00
    nop                                           ; $57a8: $00
    add hl, bc                                    ; $57a9: $09
    nop                                           ; $57aa: $00
    ld b, $05                                     ; $57ab: $06 $05
    rlca                                          ; $57ad: $07
    nop                                           ; $57ae: $00
    add hl, bc                                    ; $57af: $09
    ld sp, hl                                     ; $57b0: $f9
    ld bc, $0305                                  ; $57b1: $01 $05 $03
    nop                                           ; $57b4: $00
    dec d                                         ; $57b5: $15
    add hl, sp                                    ; $57b6: $39
    nop                                           ; $57b7: $00
    inc sp                                        ; $57b8: $33
    ld bc, $5f31                                  ; $57b9: $01 $31 $5f
    ld bc, $0000                                  ; $57bc: $01 $00 $00
    nop                                           ; $57bf: $00
    nop                                           ; $57c0: $00
    ld e, a                                       ; $57c1: $5f
    ld bc, $2e00                                  ; $57c2: $01 $00 $2e
    dec d                                         ; $57c5: $15
    nop                                           ; $57c6: $00
    jr z, @+$01                                   ; $57c7: $28 $ff

    nop                                           ; $57c9: $00
    nop                                           ; $57ca: $00

jr_009_57cb:
    nop                                           ; $57cb: $00
    nop                                           ; $57cc: $00
    add hl, bc                                    ; $57cd: $09
    nop                                           ; $57ce: $00
    ld b, e                                       ; $57cf: $43
    dec b                                         ; $57d0: $05
    rlca                                          ; $57d1: $07
    nop                                           ; $57d2: $00
    add hl, bc                                    ; $57d3: $09
    ld sp, hl                                     ; $57d4: $f9
    ld bc, $0305                                  ; $57d5: $01 $05 $03
    nop                                           ; $57d8: $00
    dec d                                         ; $57d9: $15
    dec a                                         ; $57da: $3d
    nop                                           ; $57db: $00
    inc sp                                        ; $57dc: $33
    ld bc, $5fcc                                  ; $57dd: $01 $cc $5f
    ld bc, $0000                                  ; $57e0: $01 $00 $00
    nop                                           ; $57e3: $00
    nop                                           ; $57e4: $00
    add hl, bc                                    ; $57e5: $09
    nop                                           ; $57e6: $00
    ld b, $05                                     ; $57e7: $06 $05
    rlca                                          ; $57e9: $07
    nop                                           ; $57ea: $00
    add hl, bc                                    ; $57eb: $09
    ld sp, hl                                     ; $57ec: $f9
    ld bc, $0305                                  ; $57ed: $01 $05 $03
    nop                                           ; $57f0: $00
    dec d                                         ; $57f1: $15
    dec a                                         ; $57f2: $3d
    nop                                           ; $57f3: $00
    inc sp                                        ; $57f4: $33
    ld bc, $5fcc                                  ; $57f5: $01 $cc $5f
    ld bc, $0000                                  ; $57f8: $01 $00 $00
    nop                                           ; $57fb: $00
    nop                                           ; $57fc: $00
    add hl, bc                                    ; $57fd: $09
    nop                                           ; $57fe: $00
    rlca                                          ; $57ff: $07
    dec b                                         ; $5800: $05
    rlca                                          ; $5801: $07
    nop                                           ; $5802: $00
    add hl, bc                                    ; $5803: $09
    ld sp, hl                                     ; $5804: $f9
    ld bc, $0305                                  ; $5805: $01 $05 $03
    nop                                           ; $5808: $00
    dec d                                         ; $5809: $15
    dec a                                         ; $580a: $3d
    nop                                           ; $580b: $00
    inc sp                                        ; $580c: $33
    ld bc, $5fcc                                  ; $580d: $01 $cc $5f
    ld bc, $0000                                  ; $5810: $01 $00 $00
    nop                                           ; $5813: $00
    nop                                           ; $5814: $00
    add hl, bc                                    ; $5815: $09
    nop                                           ; $5816: $00
    inc sp                                        ; $5817: $33
    dec b                                         ; $5818: $05
    rlca                                          ; $5819: $07
    nop                                           ; $581a: $00
    add hl, bc                                    ; $581b: $09
    ld sp, hl                                     ; $581c: $f9
    ld bc, $0305                                  ; $581d: $01 $05 $03
    nop                                           ; $5820: $00
    dec d                                         ; $5821: $15
    dec a                                         ; $5822: $3d
    nop                                           ; $5823: $00
    inc sp                                        ; $5824: $33
    ld bc, $5fcc                                  ; $5825: $01 $cc $5f
    ld bc, $0000                                  ; $5828: $01 $00 $00
    nop                                           ; $582b: $00
    nop                                           ; $582c: $00
    ld e, a                                       ; $582d: $5f
    ld bc, $2e00                                  ; $582e: $01 $00 $2e
    dec d                                         ; $5831: $15
    nop                                           ; $5832: $00
    jr z, @+$01                                   ; $5833: $28 $ff

    nop                                           ; $5835: $00
    nop                                           ; $5836: $00
    nop                                           ; $5837: $00
    nop                                           ; $5838: $00
    add hl, bc                                    ; $5839: $09
    nop                                           ; $583a: $00
    add hl, bc                                    ; $583b: $09
    dec b                                         ; $583c: $05
    rlca                                          ; $583d: $07
    nop                                           ; $583e: $00
    add hl, bc                                    ; $583f: $09
    ld sp, hl                                     ; $5840: $f9
    ld bc, $0305                                  ; $5841: $01 $05 $03
    nop                                           ; $5844: $00
    dec d                                         ; $5845: $15
    jr c, jr_009_5848                             ; $5846: $38 $00

jr_009_5848:
    inc sp                                        ; $5848: $33
    ld bc, $5fe7                                  ; $5849: $01 $e7 $5f
    ld bc, $0000                                  ; $584c: $01 $00 $00
    nop                                           ; $584f: $00
    nop                                           ; $5850: $00
    add hl, bc                                    ; $5851: $09
    nop                                           ; $5852: $00
    ld [$0705], sp                                ; $5853: $08 $05 $07
    nop                                           ; $5856: $00
    add hl, bc                                    ; $5857: $09
    ld sp, hl                                     ; $5858: $f9
    ld bc, $0305                                  ; $5859: $01 $05 $03
    nop                                           ; $585c: $00
    dec d                                         ; $585d: $15
    jr c, jr_009_5860                             ; $585e: $38 $00

jr_009_5860:
    inc sp                                        ; $5860: $33
    ld bc, $5fe7                                  ; $5861: $01 $e7 $5f
    ld bc, $0000                                  ; $5864: $01 $00 $00
    nop                                           ; $5867: $00
    nop                                           ; $5868: $00
    ld e, a                                       ; $5869: $5f
    ld bc, $2e00                                  ; $586a: $01 $00 $2e
    dec d                                         ; $586d: $15
    nop                                           ; $586e: $00
    jr z, @+$01                                   ; $586f: $28 $ff

    nop                                           ; $5871: $00
    nop                                           ; $5872: $00
    nop                                           ; $5873: $00
    nop                                           ; $5874: $00
    ld e, a                                       ; $5875: $5f
    ld bc, $2800                                  ; $5876: $01 $00 $28
    rst $38                                       ; $5879: $ff
    nop                                           ; $587a: $00
    nop                                           ; $587b: $00
    nop                                           ; $587c: $00
    nop                                           ; $587d: $00
    add hl, bc                                    ; $587e: $09
    nop                                           ; $587f: $00
    rlca                                          ; $5880: $07
    dec b                                         ; $5881: $05
    rlca                                          ; $5882: $07
    nop                                           ; $5883: $00
    add hl, bc                                    ; $5884: $09
    ld sp, hl                                     ; $5885: $f9
    ld bc, $0305                                  ; $5886: $01 $05 $03
    nop                                           ; $5889: $00
    dec d                                         ; $588a: $15
    dec a                                         ; $588b: $3d
    nop                                           ; $588c: $00
    inc sp                                        ; $588d: $33
    ld bc, $5fcc                                  ; $588e: $01 $cc $5f
    ld bc, $0000                                  ; $5891: $01 $00 $00
    nop                                           ; $5894: $00
    nop                                           ; $5895: $00
    add hl, bc                                    ; $5896: $09
    nop                                           ; $5897: $00
    ld d, d                                       ; $5898: $52
    dec b                                         ; $5899: $05
    rlca                                          ; $589a: $07
    nop                                           ; $589b: $00
    add hl, bc                                    ; $589c: $09
    ld sp, hl                                     ; $589d: $f9
    ld bc, $0305                                  ; $589e: $01 $05 $03
    nop                                           ; $58a1: $00
    dec d                                         ; $58a2: $15
    dec a                                         ; $58a3: $3d
    nop                                           ; $58a4: $00
    inc sp                                        ; $58a5: $33
    ld bc, $5fcc                                  ; $58a6: $01 $cc $5f
    ld bc, $0000                                  ; $58a9: $01 $00 $00
    nop                                           ; $58ac: $00
    nop                                           ; $58ad: $00
    add hl, bc                                    ; $58ae: $09
    nop                                           ; $58af: $00
    ld [$0705], sp                                ; $58b0: $08 $05 $07
    nop                                           ; $58b3: $00
    add hl, bc                                    ; $58b4: $09
    ld sp, hl                                     ; $58b5: $f9
    ld bc, $0305                                  ; $58b6: $01 $05 $03
    nop                                           ; $58b9: $00
    dec d                                         ; $58ba: $15
    dec a                                         ; $58bb: $3d
    nop                                           ; $58bc: $00
    inc sp                                        ; $58bd: $33
    ld bc, $5fcc                                  ; $58be: $01 $cc $5f
    ld bc, $0000                                  ; $58c1: $01 $00 $00
    nop                                           ; $58c4: $00
    nop                                           ; $58c5: $00
    add hl, bc                                    ; $58c6: $09
    nop                                           ; $58c7: $00
    add hl, bc                                    ; $58c8: $09
    dec b                                         ; $58c9: $05
    rlca                                          ; $58ca: $07
    nop                                           ; $58cb: $00
    add hl, bc                                    ; $58cc: $09
    ld sp, hl                                     ; $58cd: $f9
    ld bc, $0305                                  ; $58ce: $01 $05 $03
    nop                                           ; $58d1: $00
    dec d                                         ; $58d2: $15
    dec a                                         ; $58d3: $3d
    nop                                           ; $58d4: $00
    inc sp                                        ; $58d5: $33
    ld bc, $5fcc                                  ; $58d6: $01 $cc $5f
    ld bc, $0000                                  ; $58d9: $01 $00 $00
    nop                                           ; $58dc: $00
    nop                                           ; $58dd: $00
    add hl, bc                                    ; $58de: $09
    nop                                           ; $58df: $00
    dec bc                                        ; $58e0: $0b
    dec b                                         ; $58e1: $05
    rlca                                          ; $58e2: $07
    nop                                           ; $58e3: $00
    add hl, bc                                    ; $58e4: $09
    ld sp, hl                                     ; $58e5: $f9
    ld bc, $0305                                  ; $58e6: $01 $05 $03
    nop                                           ; $58e9: $00
    dec d                                         ; $58ea: $15
    dec a                                         ; $58eb: $3d
    nop                                           ; $58ec: $00
    inc sp                                        ; $58ed: $33
    ld bc, $5fcc                                  ; $58ee: $01 $cc $5f
    ld bc, $0000                                  ; $58f1: $01 $00 $00
    nop                                           ; $58f4: $00
    nop                                           ; $58f5: $00
    add hl, bc                                    ; $58f6: $09
    nop                                           ; $58f7: $00
    ld d, e                                       ; $58f8: $53
    dec b                                         ; $58f9: $05
    rlca                                          ; $58fa: $07
    nop                                           ; $58fb: $00
    add hl, bc                                    ; $58fc: $09
    ld sp, hl                                     ; $58fd: $f9
    ld bc, $0305                                  ; $58fe: $01 $05 $03
    nop                                           ; $5901: $00
    dec d                                         ; $5902: $15
    dec a                                         ; $5903: $3d
    nop                                           ; $5904: $00
    inc sp                                        ; $5905: $33
    ld bc, $5fcc                                  ; $5906: $01 $cc $5f
    ld bc, $0000                                  ; $5909: $01 $00 $00
    nop                                           ; $590c: $00
    nop                                           ; $590d: $00
    add hl, bc                                    ; $590e: $09
    nop                                           ; $590f: $00
    ld de, $0705                                  ; $5910: $11 $05 $07
    nop                                           ; $5913: $00
    add hl, bc                                    ; $5914: $09
    ld sp, hl                                     ; $5915: $f9
    ld bc, $0305                                  ; $5916: $01 $05 $03
    nop                                           ; $5919: $00
    dec d                                         ; $591a: $15
    dec a                                         ; $591b: $3d
    nop                                           ; $591c: $00
    inc sp                                        ; $591d: $33
    ld bc, $5fcc                                  ; $591e: $01 $cc $5f
    ld bc, $0000                                  ; $5921: $01 $00 $00
    nop                                           ; $5924: $00
    nop                                           ; $5925: $00
    add hl, bc                                    ; $5926: $09
    nop                                           ; $5927: $00
    db $10                                        ; $5928: $10
    dec b                                         ; $5929: $05
    rlca                                          ; $592a: $07
    nop                                           ; $592b: $00
    add hl, bc                                    ; $592c: $09
    ld sp, hl                                     ; $592d: $f9
    ld bc, $0305                                  ; $592e: $01 $05 $03
    nop                                           ; $5931: $00
    dec d                                         ; $5932: $15
    dec a                                         ; $5933: $3d
    nop                                           ; $5934: $00
    inc sp                                        ; $5935: $33
    ld bc, $5fcc                                  ; $5936: $01 $cc $5f
    ld bc, $0000                                  ; $5939: $01 $00 $00
    nop                                           ; $593c: $00
    nop                                           ; $593d: $00
    add hl, bc                                    ; $593e: $09
    nop                                           ; $593f: $00
    ld d, h                                       ; $5940: $54
    dec b                                         ; $5941: $05
    rlca                                          ; $5942: $07
    nop                                           ; $5943: $00
    add hl, bc                                    ; $5944: $09
    ld sp, hl                                     ; $5945: $f9
    ld bc, $0305                                  ; $5946: $01 $05 $03
    nop                                           ; $5949: $00
    dec d                                         ; $594a: $15
    dec a                                         ; $594b: $3d
    nop                                           ; $594c: $00
    inc sp                                        ; $594d: $33
    ld bc, $5fcc                                  ; $594e: $01 $cc $5f
    ld bc, $0000                                  ; $5951: $01 $00 $00
    nop                                           ; $5954: $00
    nop                                           ; $5955: $00
    add hl, bc                                    ; $5956: $09
    nop                                           ; $5957: $00
    ld h, $05                                     ; $5958: $26 $05
    rlca                                          ; $595a: $07
    nop                                           ; $595b: $00
    add hl, bc                                    ; $595c: $09
    ld sp, hl                                     ; $595d: $f9
    ld bc, $0305                                  ; $595e: $01 $05 $03
    nop                                           ; $5961: $00
    dec d                                         ; $5962: $15
    dec a                                         ; $5963: $3d
    nop                                           ; $5964: $00
    inc sp                                        ; $5965: $33
    ld bc, $5fcc                                  ; $5966: $01 $cc $5f
    ld bc, $0000                                  ; $5969: $01 $00 $00
    nop                                           ; $596c: $00
    nop                                           ; $596d: $00
    add hl, bc                                    ; $596e: $09
    nop                                           ; $596f: $00
    daa                                           ; $5970: $27
    dec b                                         ; $5971: $05
    rlca                                          ; $5972: $07
    nop                                           ; $5973: $00
    add hl, bc                                    ; $5974: $09
    ld sp, hl                                     ; $5975: $f9
    ld bc, $0305                                  ; $5976: $01 $05 $03
    nop                                           ; $5979: $00
    dec d                                         ; $597a: $15
    dec a                                         ; $597b: $3d
    nop                                           ; $597c: $00
    inc sp                                        ; $597d: $33
    ld bc, $5fcc                                  ; $597e: $01 $cc $5f
    ld bc, $0000                                  ; $5981: $01 $00 $00
    nop                                           ; $5984: $00
    nop                                           ; $5985: $00
    add hl, bc                                    ; $5986: $09
    nop                                           ; $5987: $00
    scf                                           ; $5988: $37
    dec b                                         ; $5989: $05
    rlca                                          ; $598a: $07
    nop                                           ; $598b: $00
    add hl, bc                                    ; $598c: $09
    ld sp, hl                                     ; $598d: $f9
    ld bc, $0305                                  ; $598e: $01 $05 $03
    nop                                           ; $5991: $00
    dec d                                         ; $5992: $15
    dec a                                         ; $5993: $3d
    nop                                           ; $5994: $00
    inc sp                                        ; $5995: $33
    ld bc, $5fcc                                  ; $5996: $01 $cc $5f
    ld bc, $0000                                  ; $5999: $01 $00 $00
    nop                                           ; $599c: $00
    nop                                           ; $599d: $00
    add hl, bc                                    ; $599e: $09
    nop                                           ; $599f: $00
    add hl, sp                                    ; $59a0: $39
    dec b                                         ; $59a1: $05
    rlca                                          ; $59a2: $07
    nop                                           ; $59a3: $00
    add hl, bc                                    ; $59a4: $09
    ld sp, hl                                     ; $59a5: $f9
    ld bc, $0305                                  ; $59a6: $01 $05 $03
    nop                                           ; $59a9: $00
    dec d                                         ; $59aa: $15
    dec a                                         ; $59ab: $3d
    nop                                           ; $59ac: $00
    inc sp                                        ; $59ad: $33
    ld bc, $5fcc                                  ; $59ae: $01 $cc $5f
    ld bc, $0000                                  ; $59b1: $01 $00 $00
    nop                                           ; $59b4: $00
    nop                                           ; $59b5: $00
    add hl, bc                                    ; $59b6: $09
    nop                                           ; $59b7: $00
    ld e, d                                       ; $59b8: $5a
    dec b                                         ; $59b9: $05
    rlca                                          ; $59ba: $07
    nop                                           ; $59bb: $00
    add hl, bc                                    ; $59bc: $09
    ld sp, hl                                     ; $59bd: $f9
    ld bc, $0305                                  ; $59be: $01 $05 $03
    nop                                           ; $59c1: $00
    dec d                                         ; $59c2: $15
    dec a                                         ; $59c3: $3d
    nop                                           ; $59c4: $00
    inc sp                                        ; $59c5: $33
    ld bc, $5fcc                                  ; $59c6: $01 $cc $5f
    ld bc, $0000                                  ; $59c9: $01 $00 $00
    nop                                           ; $59cc: $00
    nop                                           ; $59cd: $00
    add hl, bc                                    ; $59ce: $09
    nop                                           ; $59cf: $00
    ld c, b                                       ; $59d0: $48
    dec b                                         ; $59d1: $05
    rlca                                          ; $59d2: $07
    nop                                           ; $59d3: $00
    add hl, bc                                    ; $59d4: $09
    ld sp, hl                                     ; $59d5: $f9
    ld bc, $0305                                  ; $59d6: $01 $05 $03
    nop                                           ; $59d9: $00
    dec d                                         ; $59da: $15
    dec a                                         ; $59db: $3d
    nop                                           ; $59dc: $00
    inc sp                                        ; $59dd: $33
    ld bc, $5fcc                                  ; $59de: $01 $cc $5f
    ld bc, $0000                                  ; $59e1: $01 $00 $00
    nop                                           ; $59e4: $00
    nop                                           ; $59e5: $00
    add hl, bc                                    ; $59e6: $09
    nop                                           ; $59e7: $00
    ld b, c                                       ; $59e8: $41
    dec b                                         ; $59e9: $05
    rrca                                          ; $59ea: $0f
    nop                                           ; $59eb: $00
    add hl, bc                                    ; $59ec: $09
    inc e                                         ; $59ed: $1c
    ld bc, $0605                                  ; $59ee: $01 $05 $06
    nop                                           ; $59f1: $00
    ld e, a                                       ; $59f2: $5f
    ld bc, $2e00                                  ; $59f3: $01 $00 $2e
    dec d                                         ; $59f6: $15
    nop                                           ; $59f7: $00
    jr z, @+$01                                   ; $59f8: $28 $ff

    nop                                           ; $59fa: $00
    nop                                           ; $59fb: $00
    nop                                           ; $59fc: $00
    nop                                           ; $59fd: $00
    inc bc                                        ; $59fe: $03
    rlca                                          ; $59ff: $07
    nop                                           ; $5a00: $00
    ld e, a                                       ; $5a01: $5f
    ld bc, $0900                                  ; $5a02: $01 $00 $09
    ld sp, hl                                     ; $5a05: $f9
    ld bc, $0405                                  ; $5a06: $01 $05 $04
    nop                                           ; $5a09: $00
    dec d                                         ; $5a0a: $15
    dec a                                         ; $5a0b: $3d
    nop                                           ; $5a0c: $00
    inc sp                                        ; $5a0d: $33
    ld bc, $00cc                                  ; $5a0e: $01 $cc $00
    nop                                           ; $5a11: $00
    nop                                           ; $5a12: $00
    nop                                           ; $5a13: $00
    nop                                           ; $5a14: $00
    nop                                           ; $5a15: $00
    ld e, a                                       ; $5a16: $5f
    ld bc, $2e00                                  ; $5a17: $01 $00 $2e
    dec d                                         ; $5a1a: $15
    nop                                           ; $5a1b: $00
    jr z, @+$01                                   ; $5a1c: $28 $ff

    nop                                           ; $5a1e: $00
    nop                                           ; $5a1f: $00
    nop                                           ; $5a20: $00
    nop                                           ; $5a21: $00
    add hl, bc                                    ; $5a22: $09
    nop                                           ; $5a23: $00
    ld b, e                                       ; $5a24: $43
    dec b                                         ; $5a25: $05
    ld a, [bc]                                    ; $5a26: $0a
    nop                                           ; $5a27: $00
    ld c, l                                       ; $5a28: $4d
    ld bc, $0900                                  ; $5a29: $01 $00 $09
    dec b                                         ; $5a2c: $05
    ld a, [bc]                                    ; $5a2d: $0a
    inc b                                         ; $5a2e: $04
    ld b, $00                                     ; $5a2f: $06 $00
    add hl, bc                                    ; $5a31: $09
    ld sp, hl                                     ; $5a32: $f9
    ld bc, $0105                                  ; $5a33: $01 $05 $01
    nop                                           ; $5a36: $00
    ld e, a                                       ; $5a37: $5f
    ld bc, $0000                                  ; $5a38: $01 $00 $00
    nop                                           ; $5a3b: $00
    nop                                           ; $5a3c: $00
    inc bc                                        ; $5a3d: $03
    ld [bc], a                                    ; $5a3e: $02
    nop                                           ; $5a3f: $00
    ld c, l                                       ; $5a40: $4d
    ld bc, $5f00                                  ; $5a41: $01 $00 $5f
    ld bc, $2800                                  ; $5a44: $01 $00 $28
    rst $38                                       ; $5a47: $ff
    nop                                           ; $5a48: $00
    nop                                           ; $5a49: $00
    nop                                           ; $5a4a: $00
    nop                                           ; $5a4b: $00
    ld e, a                                       ; $5a4c: $5f
    ld bc, $2800                                  ; $5a4d: $01 $00 $28
    rst $38                                       ; $5a50: $ff
    nop                                           ; $5a51: $00
    nop                                           ; $5a52: $00
    nop                                           ; $5a53: $00
    nop                                           ; $5a54: $00
    ld e, a                                       ; $5a55: $5f
    ld bc, $2800                                  ; $5a56: $01 $00 $28
    rst $38                                       ; $5a59: $ff
    nop                                           ; $5a5a: $00
    nop                                           ; $5a5b: $00
    nop                                           ; $5a5c: $00
    nop                                           ; $5a5d: $00
    add hl, bc                                    ; $5a5e: $09
    nop                                           ; $5a5f: $00
    ld b, c                                       ; $5a60: $41
    dec b                                         ; $5a61: $05
    dec b                                         ; $5a62: $05
    nop                                           ; $5a63: $00
    ld c, l                                       ; $5a64: $4d
    ld bc, $5f00                                  ; $5a65: $01 $00 $5f
    ld bc, $2800                                  ; $5a68: $01 $00 $28
    rst $38                                       ; $5a6b: $ff
    nop                                           ; $5a6c: $00
    nop                                           ; $5a6d: $00
    nop                                           ; $5a6e: $00
    nop                                           ; $5a6f: $00
    add hl, bc                                    ; $5a70: $09
    nop                                           ; $5a71: $00
    ld b, e                                       ; $5a72: $43
    dec b                                         ; $5a73: $05
    dec b                                         ; $5a74: $05
    nop                                           ; $5a75: $00
    ld c, l                                       ; $5a76: $4d
    ld bc, $5f00                                  ; $5a77: $01 $00 $5f
    ld bc, $2800                                  ; $5a7a: $01 $00 $28
    rst $38                                       ; $5a7d: $ff
    nop                                           ; $5a7e: $00
    nop                                           ; $5a7f: $00
    nop                                           ; $5a80: $00
    nop                                           ; $5a81: $00
    ld e, a                                       ; $5a82: $5f
    ld bc, $2800                                  ; $5a83: $01 $00 $28
    rst $38                                       ; $5a86: $ff
    nop                                           ; $5a87: $00
    nop                                           ; $5a88: $00
    nop                                           ; $5a89: $00
    nop                                           ; $5a8a: $00
    add hl, bc                                    ; $5a8b: $09
    nop                                           ; $5a8c: $00
    ld h, $05                                     ; $5a8d: $26 $05
    rlca                                          ; $5a8f: $07
    nop                                           ; $5a90: $00
    add hl, bc                                    ; $5a91: $09
    ld sp, hl                                     ; $5a92: $f9
    ld bc, $0305                                  ; $5a93: $01 $05 $03
    nop                                           ; $5a96: $00
    dec d                                         ; $5a97: $15
    dec a                                         ; $5a98: $3d
    nop                                           ; $5a99: $00
    inc sp                                        ; $5a9a: $33
    ld bc, $5fcc                                  ; $5a9b: $01 $cc $5f
    ld bc, $0000                                  ; $5a9e: $01 $00 $00
    nop                                           ; $5aa1: $00
    nop                                           ; $5aa2: $00
    add hl, bc                                    ; $5aa3: $09
    nop                                           ; $5aa4: $00
    daa                                           ; $5aa5: $27
    dec b                                         ; $5aa6: $05
    rlca                                          ; $5aa7: $07
    nop                                           ; $5aa8: $00
    add hl, bc                                    ; $5aa9: $09
    ld sp, hl                                     ; $5aaa: $f9
    ld bc, $0305                                  ; $5aab: $01 $05 $03
    nop                                           ; $5aae: $00
    dec d                                         ; $5aaf: $15
    dec a                                         ; $5ab0: $3d
    nop                                           ; $5ab1: $00
    inc sp                                        ; $5ab2: $33
    ld bc, $5fcc                                  ; $5ab3: $01 $cc $5f
    ld bc, $0000                                  ; $5ab6: $01 $00 $00
    nop                                           ; $5ab9: $00
    nop                                           ; $5aba: $00
    add hl, bc                                    ; $5abb: $09
    nop                                           ; $5abc: $00
    scf                                           ; $5abd: $37
    dec b                                         ; $5abe: $05
    rlca                                          ; $5abf: $07
    nop                                           ; $5ac0: $00
    add hl, bc                                    ; $5ac1: $09
    ld sp, hl                                     ; $5ac2: $f9
    ld bc, $0305                                  ; $5ac3: $01 $05 $03
    nop                                           ; $5ac6: $00
    dec d                                         ; $5ac7: $15
    dec a                                         ; $5ac8: $3d
    nop                                           ; $5ac9: $00
    inc sp                                        ; $5aca: $33
    ld bc, $5fcc                                  ; $5acb: $01 $cc $5f
    ld bc, $0000                                  ; $5ace: $01 $00 $00
    nop                                           ; $5ad1: $00
    nop                                           ; $5ad2: $00
    add hl, bc                                    ; $5ad3: $09
    nop                                           ; $5ad4: $00
    add hl, sp                                    ; $5ad5: $39
    dec b                                         ; $5ad6: $05
    rlca                                          ; $5ad7: $07
    nop                                           ; $5ad8: $00
    add hl, bc                                    ; $5ad9: $09
    ld sp, hl                                     ; $5ada: $f9
    ld bc, $0305                                  ; $5adb: $01 $05 $03
    nop                                           ; $5ade: $00
    dec d                                         ; $5adf: $15
    dec a                                         ; $5ae0: $3d
    nop                                           ; $5ae1: $00
    inc sp                                        ; $5ae2: $33
    ld bc, $5fcc                                  ; $5ae3: $01 $cc $5f
    ld bc, $0000                                  ; $5ae6: $01 $00 $00
    nop                                           ; $5ae9: $00
    nop                                           ; $5aea: $00
    add hl, bc                                    ; $5aeb: $09
    nop                                           ; $5aec: $00
    ld e, d                                       ; $5aed: $5a
    dec b                                         ; $5aee: $05
    rlca                                          ; $5aef: $07
    nop                                           ; $5af0: $00
    add hl, bc                                    ; $5af1: $09
    ld sp, hl                                     ; $5af2: $f9
    ld bc, $0305                                  ; $5af3: $01 $05 $03
    nop                                           ; $5af6: $00
    dec d                                         ; $5af7: $15
    dec a                                         ; $5af8: $3d
    nop                                           ; $5af9: $00
    inc sp                                        ; $5afa: $33
    ld bc, $5fcc                                  ; $5afb: $01 $cc $5f
    ld bc, $0000                                  ; $5afe: $01 $00 $00
    nop                                           ; $5b01: $00
    nop                                           ; $5b02: $00
    add hl, bc                                    ; $5b03: $09
    nop                                           ; $5b04: $00
    ld b, c                                       ; $5b05: $41
    dec b                                         ; $5b06: $05
    rlca                                          ; $5b07: $07
    nop                                           ; $5b08: $00
    add hl, bc                                    ; $5b09: $09
    ld sp, hl                                     ; $5b0a: $f9
    ld bc, $0305                                  ; $5b0b: $01 $05 $03
    nop                                           ; $5b0e: $00
    dec d                                         ; $5b0f: $15
    dec a                                         ; $5b10: $3d
    nop                                           ; $5b11: $00
    inc sp                                        ; $5b12: $33
    ld bc, $5fcc                                  ; $5b13: $01 $cc $5f
    ld bc, $0000                                  ; $5b16: $01 $00 $00
    nop                                           ; $5b19: $00
    nop                                           ; $5b1a: $00
    ld e, a                                       ; $5b1b: $5f
    ld bc, $2e00                                  ; $5b1c: $01 $00 $2e
    dec d                                         ; $5b1f: $15
    nop                                           ; $5b20: $00
    jr z, @+$01                                   ; $5b21: $28 $ff

    nop                                           ; $5b23: $00
    nop                                           ; $5b24: $00
    nop                                           ; $5b25: $00
    nop                                           ; $5b26: $00
    add hl, bc                                    ; $5b27: $09
    nop                                           ; $5b28: $00
    inc sp                                        ; $5b29: $33
    dec b                                         ; $5b2a: $05
    rlca                                          ; $5b2b: $07
    nop                                           ; $5b2c: $00
    add hl, bc                                    ; $5b2d: $09
    ld sp, hl                                     ; $5b2e: $f9
    ld bc, $0305                                  ; $5b2f: $01 $05 $03
    nop                                           ; $5b32: $00
    dec d                                         ; $5b33: $15
    dec a                                         ; $5b34: $3d
    nop                                           ; $5b35: $00
    inc sp                                        ; $5b36: $33
    ld bc, $5fcc                                  ; $5b37: $01 $cc $5f
    ld bc, $0000                                  ; $5b3a: $01 $00 $00
    nop                                           ; $5b3d: $00
    nop                                           ; $5b3e: $00
    ld e, a                                       ; $5b3f: $5f
    ld bc, $2800                                  ; $5b40: $01 $00 $28
    rst $38                                       ; $5b43: $ff
    nop                                           ; $5b44: $00
    nop                                           ; $5b45: $00
    nop                                           ; $5b46: $00
    nop                                           ; $5b47: $00
    ld e, a                                       ; $5b48: $5f
    ld bc, $2800                                  ; $5b49: $01 $00 $28
    rst $38                                       ; $5b4c: $ff
    nop                                           ; $5b4d: $00
    nop                                           ; $5b4e: $00
    nop                                           ; $5b4f: $00
    nop                                           ; $5b50: $00
    ld e, a                                       ; $5b51: $5f
    ld bc, $0000                                  ; $5b52: $01 $00 $00
    nop                                           ; $5b55: $00
    nop                                           ; $5b56: $00
    add hl, bc                                    ; $5b57: $09
    nop                                           ; $5b58: $00
    ld h, $05                                     ; $5b59: $26 $05
    rlca                                          ; $5b5b: $07
    nop                                           ; $5b5c: $00
    add hl, bc                                    ; $5b5d: $09
    ld sp, hl                                     ; $5b5e: $f9
    ld bc, $0305                                  ; $5b5f: $01 $05 $03
    nop                                           ; $5b62: $00
    dec d                                         ; $5b63: $15
    dec a                                         ; $5b64: $3d
    nop                                           ; $5b65: $00
    inc sp                                        ; $5b66: $33
    ld bc, $5fcc                                  ; $5b67: $01 $cc $5f
    ld bc, $0000                                  ; $5b6a: $01 $00 $00
    nop                                           ; $5b6d: $00
    nop                                           ; $5b6e: $00
    add hl, bc                                    ; $5b6f: $09
    nop                                           ; $5b70: $00
    daa                                           ; $5b71: $27
    dec b                                         ; $5b72: $05
    rlca                                          ; $5b73: $07
    nop                                           ; $5b74: $00
    add hl, bc                                    ; $5b75: $09
    ld sp, hl                                     ; $5b76: $f9
    ld bc, $0305                                  ; $5b77: $01 $05 $03
    nop                                           ; $5b7a: $00
    dec d                                         ; $5b7b: $15
    dec a                                         ; $5b7c: $3d
    nop                                           ; $5b7d: $00
    inc sp                                        ; $5b7e: $33
    ld bc, $5fcc                                  ; $5b7f: $01 $cc $5f
    ld bc, $0000                                  ; $5b82: $01 $00 $00
    nop                                           ; $5b85: $00
    nop                                           ; $5b86: $00
    add hl, bc                                    ; $5b87: $09
    nop                                           ; $5b88: $00
    ld c, b                                       ; $5b89: $48
    dec b                                         ; $5b8a: $05
    rlca                                          ; $5b8b: $07
    nop                                           ; $5b8c: $00
    add hl, bc                                    ; $5b8d: $09
    ld sp, hl                                     ; $5b8e: $f9
    ld bc, $0305                                  ; $5b8f: $01 $05 $03
    nop                                           ; $5b92: $00
    dec d                                         ; $5b93: $15
    dec a                                         ; $5b94: $3d
    nop                                           ; $5b95: $00
    inc sp                                        ; $5b96: $33
    ld bc, $5fcc                                  ; $5b97: $01 $cc $5f
    ld bc, $0000                                  ; $5b9a: $01 $00 $00
    nop                                           ; $5b9d: $00
    nop                                           ; $5b9e: $00
    add hl, bc                                    ; $5b9f: $09
    nop                                           ; $5ba0: $00
    scf                                           ; $5ba1: $37
    dec b                                         ; $5ba2: $05
    rlca                                          ; $5ba3: $07
    nop                                           ; $5ba4: $00
    add hl, bc                                    ; $5ba5: $09
    ld sp, hl                                     ; $5ba6: $f9
    ld bc, $0305                                  ; $5ba7: $01 $05 $03
    nop                                           ; $5baa: $00
    dec d                                         ; $5bab: $15
    dec a                                         ; $5bac: $3d
    nop                                           ; $5bad: $00
    inc sp                                        ; $5bae: $33
    ld bc, $5fcc                                  ; $5baf: $01 $cc $5f
    ld bc, $0000                                  ; $5bb2: $01 $00 $00
    nop                                           ; $5bb5: $00
    nop                                           ; $5bb6: $00
    add hl, bc                                    ; $5bb7: $09
    nop                                           ; $5bb8: $00
    add hl, sp                                    ; $5bb9: $39
    dec b                                         ; $5bba: $05
    rlca                                          ; $5bbb: $07
    nop                                           ; $5bbc: $00
    add hl, bc                                    ; $5bbd: $09
    ld sp, hl                                     ; $5bbe: $f9
    ld bc, $0305                                  ; $5bbf: $01 $05 $03
    nop                                           ; $5bc2: $00
    dec d                                         ; $5bc3: $15
    dec a                                         ; $5bc4: $3d
    nop                                           ; $5bc5: $00
    inc sp                                        ; $5bc6: $33
    ld bc, $5fcc                                  ; $5bc7: $01 $cc $5f
    ld bc, $0000                                  ; $5bca: $01 $00 $00
    nop                                           ; $5bcd: $00
    nop                                           ; $5bce: $00
    add hl, bc                                    ; $5bcf: $09
    nop                                           ; $5bd0: $00
    ld e, d                                       ; $5bd1: $5a
    dec b                                         ; $5bd2: $05
    rlca                                          ; $5bd3: $07
    nop                                           ; $5bd4: $00
    add hl, bc                                    ; $5bd5: $09
    ld sp, hl                                     ; $5bd6: $f9
    ld bc, $0305                                  ; $5bd7: $01 $05 $03
    nop                                           ; $5bda: $00
    dec d                                         ; $5bdb: $15
    dec a                                         ; $5bdc: $3d
    nop                                           ; $5bdd: $00
    inc sp                                        ; $5bde: $33
    ld bc, $5fcc                                  ; $5bdf: $01 $cc $5f
    ld bc, $0000                                  ; $5be2: $01 $00 $00
    nop                                           ; $5be5: $00
    nop                                           ; $5be6: $00
    ld e, a                                       ; $5be7: $5f
    ld bc, $2e00                                  ; $5be8: $01 $00 $2e
    dec d                                         ; $5beb: $15
    nop                                           ; $5bec: $00
    jr z, @+$01                                   ; $5bed: $28 $ff

    nop                                           ; $5bef: $00
    nop                                           ; $5bf0: $00
    nop                                           ; $5bf1: $00
    nop                                           ; $5bf2: $00
    add hl, bc                                    ; $5bf3: $09
    nop                                           ; $5bf4: $00
    ld h, $05                                     ; $5bf5: $26 $05
    rlca                                          ; $5bf7: $07
    nop                                           ; $5bf8: $00
    add hl, bc                                    ; $5bf9: $09
    ld sp, hl                                     ; $5bfa: $f9
    ld bc, $0305                                  ; $5bfb: $01 $05 $03
    nop                                           ; $5bfe: $00
    dec d                                         ; $5bff: $15
    dec a                                         ; $5c00: $3d
    nop                                           ; $5c01: $00
    inc sp                                        ; $5c02: $33
    ld bc, $5fcc                                  ; $5c03: $01 $cc $5f
    ld bc, $0000                                  ; $5c06: $01 $00 $00
    nop                                           ; $5c09: $00
    nop                                           ; $5c0a: $00
    add hl, bc                                    ; $5c0b: $09
    nop                                           ; $5c0c: $00
    daa                                           ; $5c0d: $27
    dec b                                         ; $5c0e: $05
    rlca                                          ; $5c0f: $07
    nop                                           ; $5c10: $00
    add hl, bc                                    ; $5c11: $09
    ld sp, hl                                     ; $5c12: $f9
    ld bc, $0305                                  ; $5c13: $01 $05 $03
    nop                                           ; $5c16: $00
    dec d                                         ; $5c17: $15
    dec a                                         ; $5c18: $3d
    nop                                           ; $5c19: $00
    inc sp                                        ; $5c1a: $33
    ld bc, $5fcc                                  ; $5c1b: $01 $cc $5f
    ld bc, $0000                                  ; $5c1e: $01 $00 $00
    nop                                           ; $5c21: $00
    nop                                           ; $5c22: $00
    add hl, bc                                    ; $5c23: $09
    nop                                           ; $5c24: $00
    scf                                           ; $5c25: $37
    dec b                                         ; $5c26: $05
    rlca                                          ; $5c27: $07
    nop                                           ; $5c28: $00
    add hl, bc                                    ; $5c29: $09
    ld sp, hl                                     ; $5c2a: $f9
    ld bc, $0305                                  ; $5c2b: $01 $05 $03
    nop                                           ; $5c2e: $00
    dec d                                         ; $5c2f: $15
    dec a                                         ; $5c30: $3d
    nop                                           ; $5c31: $00
    inc sp                                        ; $5c32: $33
    ld bc, $5fcc                                  ; $5c33: $01 $cc $5f
    ld bc, $0000                                  ; $5c36: $01 $00 $00
    nop                                           ; $5c39: $00
    nop                                           ; $5c3a: $00
    add hl, bc                                    ; $5c3b: $09
    nop                                           ; $5c3c: $00
    add hl, sp                                    ; $5c3d: $39
    dec b                                         ; $5c3e: $05
    rlca                                          ; $5c3f: $07
    nop                                           ; $5c40: $00
    add hl, bc                                    ; $5c41: $09
    ld sp, hl                                     ; $5c42: $f9
    ld bc, $0305                                  ; $5c43: $01 $05 $03
    nop                                           ; $5c46: $00
    dec d                                         ; $5c47: $15
    dec a                                         ; $5c48: $3d
    nop                                           ; $5c49: $00
    inc sp                                        ; $5c4a: $33
    ld bc, $5fcc                                  ; $5c4b: $01 $cc $5f
    ld bc, $0000                                  ; $5c4e: $01 $00 $00
    nop                                           ; $5c51: $00
    nop                                           ; $5c52: $00
    add hl, bc                                    ; $5c53: $09
    nop                                           ; $5c54: $00
    ld e, d                                       ; $5c55: $5a
    dec b                                         ; $5c56: $05
    rlca                                          ; $5c57: $07
    nop                                           ; $5c58: $00
    add hl, bc                                    ; $5c59: $09
    ld sp, hl                                     ; $5c5a: $f9
    ld bc, $0305                                  ; $5c5b: $01 $05 $03
    nop                                           ; $5c5e: $00
    dec d                                         ; $5c5f: $15
    dec a                                         ; $5c60: $3d
    nop                                           ; $5c61: $00
    inc sp                                        ; $5c62: $33
    ld bc, $5fcc                                  ; $5c63: $01 $cc $5f
    ld bc, $0000                                  ; $5c66: $01 $00 $00
    nop                                           ; $5c69: $00
    nop                                           ; $5c6a: $00
    add hl, bc                                    ; $5c6b: $09
    nop                                           ; $5c6c: $00
    ld c, b                                       ; $5c6d: $48
    dec b                                         ; $5c6e: $05
    rlca                                          ; $5c6f: $07
    nop                                           ; $5c70: $00
    add hl, bc                                    ; $5c71: $09
    ld sp, hl                                     ; $5c72: $f9
    ld bc, $0305                                  ; $5c73: $01 $05 $03
    nop                                           ; $5c76: $00
    dec d                                         ; $5c77: $15
    dec a                                         ; $5c78: $3d
    nop                                           ; $5c79: $00
    inc sp                                        ; $5c7a: $33
    ld bc, $5fcc                                  ; $5c7b: $01 $cc $5f
    ld bc, $0000                                  ; $5c7e: $01 $00 $00
    nop                                           ; $5c81: $00
    nop                                           ; $5c82: $00
    ld e, a                                       ; $5c83: $5f
    ld bc, $2e00                                  ; $5c84: $01 $00 $2e
    dec d                                         ; $5c87: $15
    nop                                           ; $5c88: $00
    jr z, @+$01                                   ; $5c89: $28 $ff

    nop                                           ; $5c8b: $00
    nop                                           ; $5c8c: $00
    nop                                           ; $5c8d: $00
    nop                                           ; $5c8e: $00
    add hl, bc                                    ; $5c8f: $09
    nop                                           ; $5c90: $00
    ld h, $05                                     ; $5c91: $26 $05
    rlca                                          ; $5c93: $07
    nop                                           ; $5c94: $00
    add hl, bc                                    ; $5c95: $09
    ld sp, hl                                     ; $5c96: $f9
    ld bc, $0305                                  ; $5c97: $01 $05 $03
    nop                                           ; $5c9a: $00
    dec d                                         ; $5c9b: $15
    dec a                                         ; $5c9c: $3d
    nop                                           ; $5c9d: $00
    inc sp                                        ; $5c9e: $33
    ld bc, $5fcc                                  ; $5c9f: $01 $cc $5f
    ld bc, $0000                                  ; $5ca2: $01 $00 $00
    nop                                           ; $5ca5: $00
    nop                                           ; $5ca6: $00
    add hl, bc                                    ; $5ca7: $09
    nop                                           ; $5ca8: $00
    daa                                           ; $5ca9: $27
    dec b                                         ; $5caa: $05
    rlca                                          ; $5cab: $07
    nop                                           ; $5cac: $00
    add hl, bc                                    ; $5cad: $09
    ld sp, hl                                     ; $5cae: $f9
    ld bc, $0305                                  ; $5caf: $01 $05 $03
    nop                                           ; $5cb2: $00
    dec d                                         ; $5cb3: $15
    dec a                                         ; $5cb4: $3d
    nop                                           ; $5cb5: $00
    inc sp                                        ; $5cb6: $33
    ld bc, $5fcc                                  ; $5cb7: $01 $cc $5f
    ld bc, $0000                                  ; $5cba: $01 $00 $00
    nop                                           ; $5cbd: $00
    nop                                           ; $5cbe: $00
    add hl, bc                                    ; $5cbf: $09
    nop                                           ; $5cc0: $00
    ld c, b                                       ; $5cc1: $48
    dec b                                         ; $5cc2: $05
    rlca                                          ; $5cc3: $07
    nop                                           ; $5cc4: $00
    add hl, bc                                    ; $5cc5: $09
    ld sp, hl                                     ; $5cc6: $f9
    ld bc, $0305                                  ; $5cc7: $01 $05 $03
    nop                                           ; $5cca: $00
    dec d                                         ; $5ccb: $15
    dec a                                         ; $5ccc: $3d
    nop                                           ; $5ccd: $00
    inc sp                                        ; $5cce: $33
    ld bc, $5fcc                                  ; $5ccf: $01 $cc $5f
    ld bc, $0000                                  ; $5cd2: $01 $00 $00
    nop                                           ; $5cd5: $00
    nop                                           ; $5cd6: $00
    add hl, bc                                    ; $5cd7: $09
    nop                                           ; $5cd8: $00
    scf                                           ; $5cd9: $37
    dec b                                         ; $5cda: $05
    rlca                                          ; $5cdb: $07
    nop                                           ; $5cdc: $00
    add hl, bc                                    ; $5cdd: $09
    ld sp, hl                                     ; $5cde: $f9
    ld bc, $0305                                  ; $5cdf: $01 $05 $03
    nop                                           ; $5ce2: $00
    dec d                                         ; $5ce3: $15
    dec a                                         ; $5ce4: $3d
    nop                                           ; $5ce5: $00
    inc sp                                        ; $5ce6: $33
    ld bc, $5fcc                                  ; $5ce7: $01 $cc $5f
    ld bc, $0000                                  ; $5cea: $01 $00 $00
    nop                                           ; $5ced: $00
    nop                                           ; $5cee: $00
    add hl, bc                                    ; $5cef: $09
    nop                                           ; $5cf0: $00
    add hl, sp                                    ; $5cf1: $39
    dec b                                         ; $5cf2: $05
    rlca                                          ; $5cf3: $07
    nop                                           ; $5cf4: $00
    add hl, bc                                    ; $5cf5: $09
    ld sp, hl                                     ; $5cf6: $f9
    ld bc, $0305                                  ; $5cf7: $01 $05 $03
    nop                                           ; $5cfa: $00
    dec d                                         ; $5cfb: $15
    dec a                                         ; $5cfc: $3d
    nop                                           ; $5cfd: $00
    inc sp                                        ; $5cfe: $33
    ld bc, $5fcc                                  ; $5cff: $01 $cc $5f
    ld bc, $0000                                  ; $5d02: $01 $00 $00
    nop                                           ; $5d05: $00
    nop                                           ; $5d06: $00
    add hl, bc                                    ; $5d07: $09
    nop                                           ; $5d08: $00
    ld e, d                                       ; $5d09: $5a
    dec b                                         ; $5d0a: $05
    rlca                                          ; $5d0b: $07
    nop                                           ; $5d0c: $00
    add hl, bc                                    ; $5d0d: $09
    ld sp, hl                                     ; $5d0e: $f9
    ld bc, $0305                                  ; $5d0f: $01 $05 $03
    nop                                           ; $5d12: $00
    dec d                                         ; $5d13: $15
    dec a                                         ; $5d14: $3d
    nop                                           ; $5d15: $00
    inc sp                                        ; $5d16: $33
    ld bc, $5fcc                                  ; $5d17: $01 $cc $5f
    ld bc, $0000                                  ; $5d1a: $01 $00 $00
    nop                                           ; $5d1d: $00
    nop                                           ; $5d1e: $00
    ld e, a                                       ; $5d1f: $5f
    ld bc, $2e00                                  ; $5d20: $01 $00 $2e
    dec d                                         ; $5d23: $15
    nop                                           ; $5d24: $00
    jr z, @+$01                                   ; $5d25: $28 $ff

    nop                                           ; $5d27: $00
    nop                                           ; $5d28: $00
    nop                                           ; $5d29: $00
    nop                                           ; $5d2a: $00
    add hl, bc                                    ; $5d2b: $09
    nop                                           ; $5d2c: $00
    ld h, $05                                     ; $5d2d: $26 $05
    rlca                                          ; $5d2f: $07
    nop                                           ; $5d30: $00
    add hl, bc                                    ; $5d31: $09
    ld sp, hl                                     ; $5d32: $f9
    ld bc, $0305                                  ; $5d33: $01 $05 $03
    nop                                           ; $5d36: $00
    dec d                                         ; $5d37: $15
    dec a                                         ; $5d38: $3d
    nop                                           ; $5d39: $00
    inc sp                                        ; $5d3a: $33
    ld bc, $5fcc                                  ; $5d3b: $01 $cc $5f
    ld bc, $0000                                  ; $5d3e: $01 $00 $00
    nop                                           ; $5d41: $00
    nop                                           ; $5d42: $00
    add hl, bc                                    ; $5d43: $09
    nop                                           ; $5d44: $00
    daa                                           ; $5d45: $27
    dec b                                         ; $5d46: $05
    rlca                                          ; $5d47: $07
    nop                                           ; $5d48: $00
    add hl, bc                                    ; $5d49: $09
    ld sp, hl                                     ; $5d4a: $f9
    ld bc, $0305                                  ; $5d4b: $01 $05 $03
    nop                                           ; $5d4e: $00
    dec d                                         ; $5d4f: $15
    dec a                                         ; $5d50: $3d
    nop                                           ; $5d51: $00
    inc sp                                        ; $5d52: $33
    ld bc, $5fcc                                  ; $5d53: $01 $cc $5f
    ld bc, $0000                                  ; $5d56: $01 $00 $00
    nop                                           ; $5d59: $00
    nop                                           ; $5d5a: $00
    add hl, bc                                    ; $5d5b: $09
    nop                                           ; $5d5c: $00
    scf                                           ; $5d5d: $37
    dec b                                         ; $5d5e: $05
    rlca                                          ; $5d5f: $07
    nop                                           ; $5d60: $00
    add hl, bc                                    ; $5d61: $09
    ld sp, hl                                     ; $5d62: $f9
    ld bc, $0305                                  ; $5d63: $01 $05 $03
    nop                                           ; $5d66: $00
    dec d                                         ; $5d67: $15
    dec a                                         ; $5d68: $3d
    nop                                           ; $5d69: $00
    inc sp                                        ; $5d6a: $33
    ld bc, $5fcc                                  ; $5d6b: $01 $cc $5f
    ld bc, $0000                                  ; $5d6e: $01 $00 $00
    nop                                           ; $5d71: $00
    nop                                           ; $5d72: $00
    add hl, bc                                    ; $5d73: $09
    nop                                           ; $5d74: $00
    add hl, sp                                    ; $5d75: $39
    dec b                                         ; $5d76: $05
    rlca                                          ; $5d77: $07
    nop                                           ; $5d78: $00
    add hl, bc                                    ; $5d79: $09
    ld sp, hl                                     ; $5d7a: $f9
    ld bc, $0305                                  ; $5d7b: $01 $05 $03
    nop                                           ; $5d7e: $00
    dec d                                         ; $5d7f: $15
    dec a                                         ; $5d80: $3d
    nop                                           ; $5d81: $00
    inc sp                                        ; $5d82: $33
    ld bc, $5fcc                                  ; $5d83: $01 $cc $5f
    ld bc, $0000                                  ; $5d86: $01 $00 $00
    nop                                           ; $5d89: $00
    nop                                           ; $5d8a: $00
    add hl, bc                                    ; $5d8b: $09
    nop                                           ; $5d8c: $00
    ld e, d                                       ; $5d8d: $5a
    dec b                                         ; $5d8e: $05
    rlca                                          ; $5d8f: $07
    nop                                           ; $5d90: $00
    add hl, bc                                    ; $5d91: $09
    ld sp, hl                                     ; $5d92: $f9
    ld bc, $0305                                  ; $5d93: $01 $05 $03
    nop                                           ; $5d96: $00
    dec d                                         ; $5d97: $15
    dec a                                         ; $5d98: $3d
    nop                                           ; $5d99: $00
    inc sp                                        ; $5d9a: $33
    ld bc, $5fcc                                  ; $5d9b: $01 $cc $5f
    ld bc, $0000                                  ; $5d9e: $01 $00 $00
    nop                                           ; $5da1: $00
    nop                                           ; $5da2: $00
    add hl, bc                                    ; $5da3: $09
    nop                                           ; $5da4: $00
    ld c, b                                       ; $5da5: $48
    dec b                                         ; $5da6: $05
    rlca                                          ; $5da7: $07
    nop                                           ; $5da8: $00
    add hl, bc                                    ; $5da9: $09
    ld sp, hl                                     ; $5daa: $f9
    ld bc, $0305                                  ; $5dab: $01 $05 $03
    nop                                           ; $5dae: $00
    dec d                                         ; $5daf: $15
    dec a                                         ; $5db0: $3d
    nop                                           ; $5db1: $00
    inc sp                                        ; $5db2: $33
    ld bc, $5fcc                                  ; $5db3: $01 $cc $5f
    ld bc, $0000                                  ; $5db6: $01 $00 $00
    nop                                           ; $5db9: $00
    nop                                           ; $5dba: $00
    ld e, a                                       ; $5dbb: $5f
    ld bc, $2e00                                  ; $5dbc: $01 $00 $2e
    dec d                                         ; $5dbf: $15
    nop                                           ; $5dc0: $00
    jr z, @+$01                                   ; $5dc1: $28 $ff

    nop                                           ; $5dc3: $00
    nop                                           ; $5dc4: $00
    nop                                           ; $5dc5: $00
    nop                                           ; $5dc6: $00

    db $09, $00, $18, $04, $07, $00, $09, $f9, $01, $05, $03, $00, $15, $3d, $00, $33
    db $01, $cc, $5f, $01, $00, $00, $00, $00

    ld e, a                                       ; $5ddf: $5f
    ld bc, $0f00                                  ; $5de0: $01 $00 $0f
    ld a, [$2e00]                                 ; $5de3: $fa $00 $2e
    dec d                                         ; $5de6: $15
    nop                                           ; $5de7: $00
    jr z, @+$01                                   ; $5de8: $28 $ff

    nop                                           ; $5dea: $00
    nop                                           ; $5deb: $00
    nop                                           ; $5dec: $00
    nop                                           ; $5ded: $00
    add hl, bc                                    ; $5dee: $09
    nop                                           ; $5def: $00
    ld h, $05                                     ; $5df0: $26 $05
    rlca                                          ; $5df2: $07
    nop                                           ; $5df3: $00
    add hl, bc                                    ; $5df4: $09
    ld sp, hl                                     ; $5df5: $f9
    ld bc, $0305                                  ; $5df6: $01 $05 $03
    nop                                           ; $5df9: $00
    dec d                                         ; $5dfa: $15
    dec a                                         ; $5dfb: $3d
    nop                                           ; $5dfc: $00
    inc sp                                        ; $5dfd: $33
    ld bc, $5fcc                                  ; $5dfe: $01 $cc $5f
    ld bc, $0000                                  ; $5e01: $01 $00 $00
    nop                                           ; $5e04: $00
    nop                                           ; $5e05: $00
    add hl, bc                                    ; $5e06: $09
    nop                                           ; $5e07: $00
    daa                                           ; $5e08: $27
    dec b                                         ; $5e09: $05
    rlca                                          ; $5e0a: $07
    nop                                           ; $5e0b: $00
    add hl, bc                                    ; $5e0c: $09
    ld sp, hl                                     ; $5e0d: $f9
    ld bc, $0305                                  ; $5e0e: $01 $05 $03
    nop                                           ; $5e11: $00
    dec d                                         ; $5e12: $15
    dec a                                         ; $5e13: $3d
    nop                                           ; $5e14: $00
    inc sp                                        ; $5e15: $33
    ld bc, $5fcc                                  ; $5e16: $01 $cc $5f
    ld bc, $0000                                  ; $5e19: $01 $00 $00
    nop                                           ; $5e1c: $00
    nop                                           ; $5e1d: $00
    ld e, a                                       ; $5e1e: $5f
    ld bc, $2800                                  ; $5e1f: $01 $00 $28
    rst $38                                       ; $5e22: $ff
    nop                                           ; $5e23: $00
    nop                                           ; $5e24: $00
    nop                                           ; $5e25: $00
    nop                                           ; $5e26: $00
    add hl, bc                                    ; $5e27: $09
    nop                                           ; $5e28: $00
    ld h, $05                                     ; $5e29: $26 $05
    rlca                                          ; $5e2b: $07
    nop                                           ; $5e2c: $00
    add hl, bc                                    ; $5e2d: $09
    ld sp, hl                                     ; $5e2e: $f9
    ld bc, $0305                                  ; $5e2f: $01 $05 $03
    nop                                           ; $5e32: $00
    dec d                                         ; $5e33: $15
    dec a                                         ; $5e34: $3d
    nop                                           ; $5e35: $00
    inc sp                                        ; $5e36: $33
    ld bc, $5fcc                                  ; $5e37: $01 $cc $5f
    ld bc, $0000                                  ; $5e3a: $01 $00 $00
    nop                                           ; $5e3d: $00
    nop                                           ; $5e3e: $00
    add hl, bc                                    ; $5e3f: $09
    nop                                           ; $5e40: $00
    daa                                           ; $5e41: $27
    dec b                                         ; $5e42: $05
    rlca                                          ; $5e43: $07
    nop                                           ; $5e44: $00
    add hl, bc                                    ; $5e45: $09
    ld sp, hl                                     ; $5e46: $f9
    ld bc, $0305                                  ; $5e47: $01 $05 $03
    nop                                           ; $5e4a: $00
    dec d                                         ; $5e4b: $15
    dec a                                         ; $5e4c: $3d
    nop                                           ; $5e4d: $00
    inc sp                                        ; $5e4e: $33
    ld bc, $5fcc                                  ; $5e4f: $01 $cc $5f
    ld bc, $0000                                  ; $5e52: $01 $00 $00
    nop                                           ; $5e55: $00
    nop                                           ; $5e56: $00
    add hl, bc                                    ; $5e57: $09
    nop                                           ; $5e58: $00
    ld c, b                                       ; $5e59: $48
    dec b                                         ; $5e5a: $05
    rlca                                          ; $5e5b: $07
    nop                                           ; $5e5c: $00
    add hl, bc                                    ; $5e5d: $09
    ld sp, hl                                     ; $5e5e: $f9
    ld bc, $0305                                  ; $5e5f: $01 $05 $03
    nop                                           ; $5e62: $00
    dec d                                         ; $5e63: $15
    dec a                                         ; $5e64: $3d
    nop                                           ; $5e65: $00
    inc sp                                        ; $5e66: $33
    ld bc, $5fcc                                  ; $5e67: $01 $cc $5f
    ld bc, $0000                                  ; $5e6a: $01 $00 $00
    nop                                           ; $5e6d: $00
    nop                                           ; $5e6e: $00
    add hl, bc                                    ; $5e6f: $09
    nop                                           ; $5e70: $00
    scf                                           ; $5e71: $37
    dec b                                         ; $5e72: $05
    rlca                                          ; $5e73: $07
    nop                                           ; $5e74: $00
    add hl, bc                                    ; $5e75: $09
    ld sp, hl                                     ; $5e76: $f9
    ld bc, $0305                                  ; $5e77: $01 $05 $03
    nop                                           ; $5e7a: $00
    dec d                                         ; $5e7b: $15
    dec a                                         ; $5e7c: $3d
    nop                                           ; $5e7d: $00
    inc sp                                        ; $5e7e: $33
    ld bc, $5fcc                                  ; $5e7f: $01 $cc $5f
    ld bc, $0000                                  ; $5e82: $01 $00 $00
    nop                                           ; $5e85: $00
    nop                                           ; $5e86: $00
    add hl, bc                                    ; $5e87: $09
    nop                                           ; $5e88: $00
    add hl, sp                                    ; $5e89: $39
    dec b                                         ; $5e8a: $05
    rlca                                          ; $5e8b: $07
    nop                                           ; $5e8c: $00
    add hl, bc                                    ; $5e8d: $09
    ld sp, hl                                     ; $5e8e: $f9
    ld bc, $0305                                  ; $5e8f: $01 $05 $03
    nop                                           ; $5e92: $00
    dec d                                         ; $5e93: $15
    dec a                                         ; $5e94: $3d
    nop                                           ; $5e95: $00
    inc sp                                        ; $5e96: $33
    ld bc, $5fcc                                  ; $5e97: $01 $cc $5f
    ld bc, $0000                                  ; $5e9a: $01 $00 $00
    nop                                           ; $5e9d: $00
    nop                                           ; $5e9e: $00
    add hl, bc                                    ; $5e9f: $09
    nop                                           ; $5ea0: $00
    ld e, d                                       ; $5ea1: $5a
    dec b                                         ; $5ea2: $05
    rlca                                          ; $5ea3: $07
    nop                                           ; $5ea4: $00
    add hl, bc                                    ; $5ea5: $09
    ld sp, hl                                     ; $5ea6: $f9
    ld bc, $0305                                  ; $5ea7: $01 $05 $03
    nop                                           ; $5eaa: $00
    dec d                                         ; $5eab: $15
    dec a                                         ; $5eac: $3d
    nop                                           ; $5ead: $00
    inc sp                                        ; $5eae: $33
    ld bc, $5fcc                                  ; $5eaf: $01 $cc $5f
    ld bc, $0000                                  ; $5eb2: $01 $00 $00
    nop                                           ; $5eb5: $00
    nop                                           ; $5eb6: $00
    ld e, a                                       ; $5eb7: $5f
    ld bc, $2e00                                  ; $5eb8: $01 $00 $2e
    dec d                                         ; $5ebb: $15
    nop                                           ; $5ebc: $00
    jr z, @+$01                                   ; $5ebd: $28 $ff

    nop                                           ; $5ebf: $00
    nop                                           ; $5ec0: $00
    nop                                           ; $5ec1: $00
    nop                                           ; $5ec2: $00
    add hl, bc                                    ; $5ec3: $09
    nop                                           ; $5ec4: $00
    ld h, $05                                     ; $5ec5: $26 $05
    rlca                                          ; $5ec7: $07
    nop                                           ; $5ec8: $00
    add hl, bc                                    ; $5ec9: $09
    ld sp, hl                                     ; $5eca: $f9
    ld bc, $0305                                  ; $5ecb: $01 $05 $03
    nop                                           ; $5ece: $00
    dec d                                         ; $5ecf: $15
    dec a                                         ; $5ed0: $3d
    nop                                           ; $5ed1: $00
    inc sp                                        ; $5ed2: $33
    ld bc, $5fcc                                  ; $5ed3: $01 $cc $5f
    ld bc, $0000                                  ; $5ed6: $01 $00 $00
    nop                                           ; $5ed9: $00
    nop                                           ; $5eda: $00
    add hl, bc                                    ; $5edb: $09
    nop                                           ; $5edc: $00
    daa                                           ; $5edd: $27
    dec b                                         ; $5ede: $05
    rlca                                          ; $5edf: $07
    nop                                           ; $5ee0: $00
    add hl, bc                                    ; $5ee1: $09
    ld sp, hl                                     ; $5ee2: $f9
    ld bc, $0305                                  ; $5ee3: $01 $05 $03
    nop                                           ; $5ee6: $00
    dec d                                         ; $5ee7: $15
    dec a                                         ; $5ee8: $3d
    nop                                           ; $5ee9: $00
    inc sp                                        ; $5eea: $33
    ld bc, $5fcc                                  ; $5eeb: $01 $cc $5f
    ld bc, $0000                                  ; $5eee: $01 $00 $00
    nop                                           ; $5ef1: $00
    nop                                           ; $5ef2: $00
    add hl, bc                                    ; $5ef3: $09
    nop                                           ; $5ef4: $00
    scf                                           ; $5ef5: $37
    dec b                                         ; $5ef6: $05
    rlca                                          ; $5ef7: $07
    nop                                           ; $5ef8: $00
    add hl, bc                                    ; $5ef9: $09
    ld sp, hl                                     ; $5efa: $f9
    ld bc, $0305                                  ; $5efb: $01 $05 $03
    nop                                           ; $5efe: $00
    dec d                                         ; $5eff: $15
    dec a                                         ; $5f00: $3d
    nop                                           ; $5f01: $00
    inc sp                                        ; $5f02: $33
    ld bc, $5fcc                                  ; $5f03: $01 $cc $5f
    ld bc, $0000                                  ; $5f06: $01 $00 $00
    nop                                           ; $5f09: $00
    nop                                           ; $5f0a: $00
    add hl, bc                                    ; $5f0b: $09
    nop                                           ; $5f0c: $00
    add hl, sp                                    ; $5f0d: $39
    dec b                                         ; $5f0e: $05
    rlca                                          ; $5f0f: $07
    nop                                           ; $5f10: $00
    add hl, bc                                    ; $5f11: $09
    ld sp, hl                                     ; $5f12: $f9
    ld bc, $0305                                  ; $5f13: $01 $05 $03
    nop                                           ; $5f16: $00
    dec d                                         ; $5f17: $15
    dec a                                         ; $5f18: $3d
    nop                                           ; $5f19: $00
    inc sp                                        ; $5f1a: $33
    ld bc, $5fcc                                  ; $5f1b: $01 $cc $5f
    ld bc, $0000                                  ; $5f1e: $01 $00 $00
    nop                                           ; $5f21: $00
    nop                                           ; $5f22: $00
    add hl, bc                                    ; $5f23: $09
    nop                                           ; $5f24: $00
    ld e, d                                       ; $5f25: $5a
    dec b                                         ; $5f26: $05
    rlca                                          ; $5f27: $07
    nop                                           ; $5f28: $00
    add hl, bc                                    ; $5f29: $09
    ld sp, hl                                     ; $5f2a: $f9
    ld bc, $0305                                  ; $5f2b: $01 $05 $03
    nop                                           ; $5f2e: $00
    dec d                                         ; $5f2f: $15
    dec a                                         ; $5f30: $3d
    nop                                           ; $5f31: $00
    inc sp                                        ; $5f32: $33
    ld bc, $5fcc                                  ; $5f33: $01 $cc $5f
    ld bc, $0000                                  ; $5f36: $01 $00 $00
    nop                                           ; $5f39: $00
    nop                                           ; $5f3a: $00
    ld e, a                                       ; $5f3b: $5f
    ld bc, $2e00                                  ; $5f3c: $01 $00 $2e
    dec d                                         ; $5f3f: $15
    nop                                           ; $5f40: $00
    jr z, @+$01                                   ; $5f41: $28 $ff

    nop                                           ; $5f43: $00
    nop                                           ; $5f44: $00
    nop                                           ; $5f45: $00
    nop                                           ; $5f46: $00

    db $13, $00, $3e, $68, $00, $40, $00, $00, $00

    db $10                                        ; $5f50: $10
    ld hl, $0fff                                  ; $5f51: $21 $ff $0f
    rst $38                                       ; $5f54: $ff
    nop                                           ; $5f55: $00
    cpl                                           ; $5f56: $2f
    jr z, jr_009_5f59                             ; $5f57: $28 $00

jr_009_5f59:
    ld d, [hl]                                    ; $5f59: $56
    nop                                           ; $5f5a: $00
    nop                                           ; $5f5b: $00
    rla                                           ; $5f5c: $17
    nop                                           ; $5f5d: $00
    nop                                           ; $5f5e: $00
    ld hl, $003d                                  ; $5f5f: $21 $3d $00
    daa                                           ; $5f62: $27
    nop                                           ; $5f63: $00
    ld e, $57                                     ; $5f64: $1e $57
    nop                                           ; $5f66: $00
    nop                                           ; $5f67: $00
    db $10                                        ; $5f68: $10
    rst $38                                       ; $5f69: $ff
    ld hl, $003a                                  ; $5f6a: $21 $3a $00
    nop                                           ; $5f6d: $00
    nop                                           ; $5f6e: $00
    nop                                           ; $5f6f: $00
    nop                                           ; $5f70: $00
    ld d, [hl]                                    ; $5f71: $56
    nop                                           ; $5f72: $00
    nop                                           ; $5f73: $00
    ld l, l                                       ; $5f74: $6d
    nop                                           ; $5f75: $00
    nop                                           ; $5f76: $00
    ld l, d                                       ; $5f77: $6a
    stop                                          ; $5f78: $10 $00
    ld d, a                                       ; $5f7a: $57
    nop                                           ; $5f7b: $00
    nop                                           ; $5f7c: $00
    nop                                           ; $5f7d: $00
    nop                                           ; $5f7e: $00
    nop                                           ; $5f7f: $00

    db $16, $00, $00

    nop                                           ; $5f83: $00
    ld l, a                                       ; $5f84: $6f
    nop                                           ; $5f85: $00
    pop hl                                        ; $5f86: $e1
    ld bc, $0153                                  ; $5f87: $01 $53 $01
    push bc                                       ; $5f8a: $c5
    ld [bc], a                                    ; $5f8b: $02
    scf                                           ; $5f8c: $37
    ld [bc], a                                    ; $5f8d: $02
    xor c                                         ; $5f8e: $a9
    inc bc                                        ; $5f8f: $03
    dec de                                        ; $5f90: $1b
    inc bc                                        ; $5f91: $03
    adc l                                         ; $5f92: $8d
    inc bc                                        ; $5f93: $03
    rst $38                                       ; $5f94: $ff
    inc b                                         ; $5f95: $04
    db $08                                        ; $5f96: $08

    db $04, $0e

    dec b                                         ; $5f99: $05
    db $10                                        ; $5f9a: $10
    ld b, $03                                     ; $5f9b: $06 $03
    ld b, $ff                                     ; $5f9d: $06 $ff
    rlca                                          ; $5f9f: $07
    ld h, d                                       ; $5fa0: $62
    rlca                                          ; $5fa1: $07
    sbc [hl]                                      ; $5fa2: $9e
    rlca                                          ; $5fa3: $07
    or b                                          ; $5fa4: $b0
    rlca                                          ; $5fa5: $07
    jp nz, $ef07                                  ; $5fa6: $c2 $07 $ef

    db $08, $01

    add hl, bc                                    ; $5fab: $09
    inc sp                                        ; $5fac: $33

    db $5f, $00, $00, $09, $00, $59, $05, $21, $00, $09, $0c, $01, $05, $03, $00

    ld e, a                                       ; $5fbc: $5f
    ld bc, $0000                                  ; $5fbd: $01 $00 $00
    nop                                           ; $5fc0: $00
    nop                                           ; $5fc1: $00

    db $56, $00, $00, $13, $02, $5b, $14, $01, $26, $15, $00, $00, $16, $0d, $00, $1b
    db $06, $00, $17, $00, $00, $13, $01, $26, $58, $02, $47, $1b, $02, $00, $7a, $01
    db $00, $5f, $01, $00, $6d, $00, $00, $15, $01, $00, $33, $00, $1d, $15, $59, $00
    db $33, $00, $1e, $15, $01, $00, $33, $00, $1f, $17, $0d, $00, $15, $00, $00, $19
    db $00, $16, $2e, $15, $00, $27, $00, $05, $1e, $0d, $00, $0f, $0c, $01, $57, $00
    db $00, $00, $00, $00

    ld e, a                                       ; $6016: $5f
    ld bc, $0000                                  ; $6017: $01 $00 $00
    nop                                           ; $601a: $00
    nop                                           ; $601b: $00
    add hl, bc                                    ; $601c: $09
    nop                                           ; $601d: $00
    ld e, c                                       ; $601e: $59
    dec b                                         ; $601f: $05
    inc b                                         ; $6020: $04
    nop                                           ; $6021: $00
    dec d                                         ; $6022: $15
    inc bc                                        ; $6023: $03
    nop                                           ; $6024: $00
    inc sp                                        ; $6025: $33
    nop                                           ; $6026: $00
    ld c, l                                       ; $6027: $4d
    nop                                           ; $6028: $00
    nop                                           ; $6029: $00
    nop                                           ; $602a: $00
    add hl, bc                                    ; $602b: $09
    nop                                           ; $602c: $00
    nop                                           ; $602d: $00
    dec b                                         ; $602e: $05
    inc b                                         ; $602f: $04
    nop                                           ; $6030: $00
    dec d                                         ; $6031: $15
    inc bc                                        ; $6032: $03
    nop                                           ; $6033: $00
    inc sp                                        ; $6034: $33
    nop                                           ; $6035: $00
    ld c, l                                       ; $6036: $4d
    nop                                           ; $6037: $00
    nop                                           ; $6038: $00
    nop                                           ; $6039: $00
    add hl, bc                                    ; $603a: $09
    nop                                           ; $603b: $00
    ld bc, $0405                                  ; $603c: $01 $05 $04
    nop                                           ; $603f: $00
    dec d                                         ; $6040: $15
    inc bc                                        ; $6041: $03
    nop                                           ; $6042: $00
    inc sp                                        ; $6043: $33
    nop                                           ; $6044: $00
    ld c, l                                       ; $6045: $4d
    nop                                           ; $6046: $00
    nop                                           ; $6047: $00
    nop                                           ; $6048: $00
    add hl, bc                                    ; $6049: $09
    nop                                           ; $604a: $00
    ld d, c                                       ; $604b: $51
    dec b                                         ; $604c: $05
    inc b                                         ; $604d: $04
    nop                                           ; $604e: $00
    dec d                                         ; $604f: $15
    inc bc                                        ; $6050: $03
    nop                                           ; $6051: $00
    inc sp                                        ; $6052: $33
    nop                                           ; $6053: $00
    ld c, l                                       ; $6054: $4d
    nop                                           ; $6055: $00
    nop                                           ; $6056: $00
    nop                                           ; $6057: $00
    add hl, bc                                    ; $6058: $09
    nop                                           ; $6059: $00
    rla                                           ; $605a: $17
    dec b                                         ; $605b: $05
    ld b, $00                                     ; $605c: $06 $00
    dec d                                         ; $605e: $15
    nop                                           ; $605f: $00
    nop                                           ; $6060: $00
    inc sp                                        ; $6061: $33
    inc bc                                        ; $6062: $03
    inc de                                        ; $6063: $13
    dec d                                         ; $6064: $15
    inc bc                                        ; $6065: $03
    nop                                           ; $6066: $00
    inc sp                                        ; $6067: $33
    inc bc                                        ; $6068: $03
    inc d                                         ; $6069: $14
    nop                                           ; $606a: $00
    nop                                           ; $606b: $00
    nop                                           ; $606c: $00
    add hl, bc                                    ; $606d: $09
    nop                                           ; $606e: $00
    jr jr_009_6076                                ; $606f: $18 $05

    inc b                                         ; $6071: $04
    nop                                           ; $6072: $00
    dec d                                         ; $6073: $15
    inc bc                                        ; $6074: $03
    nop                                           ; $6075: $00

jr_009_6076:
    inc sp                                        ; $6076: $33
    inc bc                                        ; $6077: $03
    ld b, h                                       ; $6078: $44
    nop                                           ; $6079: $00
    nop                                           ; $607a: $00
    nop                                           ; $607b: $00
    add hl, bc                                    ; $607c: $09
    nop                                           ; $607d: $00
    ld d, $05                                     ; $607e: $16 $05
    inc b                                         ; $6080: $04
    nop                                           ; $6081: $00
    dec d                                         ; $6082: $15
    inc bc                                        ; $6083: $03
    nop                                           ; $6084: $00
    inc sp                                        ; $6085: $33
    inc bc                                        ; $6086: $03
    ld b, h                                       ; $6087: $44
    nop                                           ; $6088: $00
    nop                                           ; $6089: $00
    nop                                           ; $608a: $00
    nop                                           ; $608b: $00
    nop                                           ; $608c: $00
    nop                                           ; $608d: $00
    add hl, bc                                    ; $608e: $09
    nop                                           ; $608f: $00
    ld e, c                                       ; $6090: $59
    dec b                                         ; $6091: $05
    inc b                                         ; $6092: $04
    nop                                           ; $6093: $00
    dec d                                         ; $6094: $15
    inc b                                         ; $6095: $04
    nop                                           ; $6096: $00
    inc sp                                        ; $6097: $33
    nop                                           ; $6098: $00
    ld c, [hl]                                    ; $6099: $4e
    nop                                           ; $609a: $00
    nop                                           ; $609b: $00
    nop                                           ; $609c: $00
    add hl, bc                                    ; $609d: $09
    nop                                           ; $609e: $00
    nop                                           ; $609f: $00
    dec b                                         ; $60a0: $05
    inc b                                         ; $60a1: $04
    nop                                           ; $60a2: $00
    dec d                                         ; $60a3: $15
    inc b                                         ; $60a4: $04
    nop                                           ; $60a5: $00
    inc sp                                        ; $60a6: $33
    nop                                           ; $60a7: $00
    ld c, [hl]                                    ; $60a8: $4e
    nop                                           ; $60a9: $00
    nop                                           ; $60aa: $00
    nop                                           ; $60ab: $00
    add hl, bc                                    ; $60ac: $09
    nop                                           ; $60ad: $00
    ld bc, $0405                                  ; $60ae: $01 $05 $04
    nop                                           ; $60b1: $00
    dec d                                         ; $60b2: $15
    inc b                                         ; $60b3: $04
    nop                                           ; $60b4: $00
    inc sp                                        ; $60b5: $33
    nop                                           ; $60b6: $00
    ld c, [hl]                                    ; $60b7: $4e
    nop                                           ; $60b8: $00
    nop                                           ; $60b9: $00
    nop                                           ; $60ba: $00
    add hl, bc                                    ; $60bb: $09
    nop                                           ; $60bc: $00
    ld d, c                                       ; $60bd: $51
    dec b                                         ; $60be: $05
    inc b                                         ; $60bf: $04
    nop                                           ; $60c0: $00
    dec d                                         ; $60c1: $15
    inc b                                         ; $60c2: $04
    nop                                           ; $60c3: $00
    inc sp                                        ; $60c4: $33
    nop                                           ; $60c5: $00
    ld c, [hl]                                    ; $60c6: $4e
    nop                                           ; $60c7: $00
    nop                                           ; $60c8: $00
    nop                                           ; $60c9: $00
    add hl, bc                                    ; $60ca: $09
    nop                                           ; $60cb: $00
    rla                                           ; $60cc: $17
    dec b                                         ; $60cd: $05
    ld b, $00                                     ; $60ce: $06 $00
    dec d                                         ; $60d0: $15
    nop                                           ; $60d1: $00
    nop                                           ; $60d2: $00
    inc sp                                        ; $60d3: $33
    inc bc                                        ; $60d4: $03
    inc de                                        ; $60d5: $13
    dec d                                         ; $60d6: $15
    inc b                                         ; $60d7: $04
    nop                                           ; $60d8: $00
    inc sp                                        ; $60d9: $33
    inc bc                                        ; $60da: $03
    dec d                                         ; $60db: $15
    nop                                           ; $60dc: $00
    nop                                           ; $60dd: $00
    nop                                           ; $60de: $00
    add hl, bc                                    ; $60df: $09
    nop                                           ; $60e0: $00
    jr jr_009_60e8                                ; $60e1: $18 $05

    inc b                                         ; $60e3: $04
    nop                                           ; $60e4: $00
    dec d                                         ; $60e5: $15
    inc b                                         ; $60e6: $04
    nop                                           ; $60e7: $00

jr_009_60e8:
    inc sp                                        ; $60e8: $33
    inc bc                                        ; $60e9: $03
    ld b, l                                       ; $60ea: $45
    nop                                           ; $60eb: $00
    nop                                           ; $60ec: $00
    nop                                           ; $60ed: $00
    add hl, bc                                    ; $60ee: $09
    nop                                           ; $60ef: $00
    ld d, $05                                     ; $60f0: $16 $05
    inc b                                         ; $60f2: $04
    nop                                           ; $60f3: $00
    dec d                                         ; $60f4: $15
    inc b                                         ; $60f5: $04
    nop                                           ; $60f6: $00
    inc sp                                        ; $60f7: $33
    inc bc                                        ; $60f8: $03
    ld b, l                                       ; $60f9: $45
    nop                                           ; $60fa: $00
    nop                                           ; $60fb: $00
    nop                                           ; $60fc: $00
    nop                                           ; $60fd: $00
    nop                                           ; $60fe: $00
    nop                                           ; $60ff: $00
    add hl, bc                                    ; $6100: $09
    nop                                           ; $6101: $00
    ld e, c                                       ; $6102: $59
    dec b                                         ; $6103: $05
    inc b                                         ; $6104: $04
    nop                                           ; $6105: $00
    dec d                                         ; $6106: $15
    dec b                                         ; $6107: $05
    nop                                           ; $6108: $00
    inc sp                                        ; $6109: $33
    nop                                           ; $610a: $00
    ld c, a                                       ; $610b: $4f
    nop                                           ; $610c: $00
    nop                                           ; $610d: $00
    nop                                           ; $610e: $00
    add hl, bc                                    ; $610f: $09
    nop                                           ; $6110: $00
    nop                                           ; $6111: $00
    dec b                                         ; $6112: $05
    inc b                                         ; $6113: $04
    nop                                           ; $6114: $00
    dec d                                         ; $6115: $15
    dec b                                         ; $6116: $05
    nop                                           ; $6117: $00
    inc sp                                        ; $6118: $33
    nop                                           ; $6119: $00
    ld c, a                                       ; $611a: $4f
    nop                                           ; $611b: $00
    nop                                           ; $611c: $00
    nop                                           ; $611d: $00
    add hl, bc                                    ; $611e: $09
    nop                                           ; $611f: $00
    ld bc, $0405                                  ; $6120: $01 $05 $04
    nop                                           ; $6123: $00
    dec d                                         ; $6124: $15
    dec b                                         ; $6125: $05
    nop                                           ; $6126: $00
    inc sp                                        ; $6127: $33
    nop                                           ; $6128: $00
    ld c, a                                       ; $6129: $4f
    nop                                           ; $612a: $00
    nop                                           ; $612b: $00
    nop                                           ; $612c: $00
    add hl, bc                                    ; $612d: $09
    nop                                           ; $612e: $00
    ld d, c                                       ; $612f: $51
    dec b                                         ; $6130: $05
    inc b                                         ; $6131: $04
    nop                                           ; $6132: $00
    dec d                                         ; $6133: $15
    dec b                                         ; $6134: $05
    nop                                           ; $6135: $00
    inc sp                                        ; $6136: $33
    nop                                           ; $6137: $00
    ld c, a                                       ; $6138: $4f
    nop                                           ; $6139: $00
    nop                                           ; $613a: $00
    nop                                           ; $613b: $00
    add hl, bc                                    ; $613c: $09
    nop                                           ; $613d: $00
    rla                                           ; $613e: $17
    dec b                                         ; $613f: $05
    ld b, $00                                     ; $6140: $06 $00
    dec d                                         ; $6142: $15
    nop                                           ; $6143: $00
    nop                                           ; $6144: $00
    inc sp                                        ; $6145: $33
    inc bc                                        ; $6146: $03
    inc de                                        ; $6147: $13
    dec d                                         ; $6148: $15
    dec b                                         ; $6149: $05
    nop                                           ; $614a: $00
    inc sp                                        ; $614b: $33
    inc bc                                        ; $614c: $03
    ld d, $00                                     ; $614d: $16 $00
    nop                                           ; $614f: $00
    nop                                           ; $6150: $00
    add hl, bc                                    ; $6151: $09
    nop                                           ; $6152: $00
    jr jr_009_615a                                ; $6153: $18 $05

    inc b                                         ; $6155: $04
    nop                                           ; $6156: $00
    dec d                                         ; $6157: $15
    dec b                                         ; $6158: $05
    nop                                           ; $6159: $00

jr_009_615a:
    inc sp                                        ; $615a: $33
    inc bc                                        ; $615b: $03
    ld b, [hl]                                    ; $615c: $46
    nop                                           ; $615d: $00
    nop                                           ; $615e: $00
    nop                                           ; $615f: $00
    add hl, bc                                    ; $6160: $09
    nop                                           ; $6161: $00
    ld d, $05                                     ; $6162: $16 $05
    inc b                                         ; $6164: $04
    nop                                           ; $6165: $00
    dec d                                         ; $6166: $15
    dec b                                         ; $6167: $05
    nop                                           ; $6168: $00
    inc sp                                        ; $6169: $33
    inc bc                                        ; $616a: $03
    ld b, [hl]                                    ; $616b: $46
    nop                                           ; $616c: $00
    nop                                           ; $616d: $00
    nop                                           ; $616e: $00
    nop                                           ; $616f: $00
    nop                                           ; $6170: $00
    nop                                           ; $6171: $00
    add hl, bc                                    ; $6172: $09
    nop                                           ; $6173: $00
    ld e, c                                       ; $6174: $59
    dec b                                         ; $6175: $05
    inc b                                         ; $6176: $04
    nop                                           ; $6177: $00
    dec d                                         ; $6178: $15
    ld b, $00                                     ; $6179: $06 $00
    inc sp                                        ; $617b: $33
    nop                                           ; $617c: $00
    ld d, b                                       ; $617d: $50
    nop                                           ; $617e: $00
    nop                                           ; $617f: $00
    nop                                           ; $6180: $00
    add hl, bc                                    ; $6181: $09
    nop                                           ; $6182: $00
    nop                                           ; $6183: $00
    dec b                                         ; $6184: $05
    inc b                                         ; $6185: $04
    nop                                           ; $6186: $00
    dec d                                         ; $6187: $15
    ld b, $00                                     ; $6188: $06 $00
    inc sp                                        ; $618a: $33
    nop                                           ; $618b: $00
    ld d, b                                       ; $618c: $50
    nop                                           ; $618d: $00
    nop                                           ; $618e: $00
    nop                                           ; $618f: $00
    add hl, bc                                    ; $6190: $09
    nop                                           ; $6191: $00
    ld bc, $0405                                  ; $6192: $01 $05 $04
    nop                                           ; $6195: $00
    dec d                                         ; $6196: $15
    ld b, $00                                     ; $6197: $06 $00
    inc sp                                        ; $6199: $33
    nop                                           ; $619a: $00
    ld d, b                                       ; $619b: $50
    nop                                           ; $619c: $00
    nop                                           ; $619d: $00
    nop                                           ; $619e: $00
    add hl, bc                                    ; $619f: $09
    nop                                           ; $61a0: $00
    ld d, c                                       ; $61a1: $51
    dec b                                         ; $61a2: $05
    inc b                                         ; $61a3: $04
    nop                                           ; $61a4: $00
    dec d                                         ; $61a5: $15
    ld b, $00                                     ; $61a6: $06 $00
    inc sp                                        ; $61a8: $33
    nop                                           ; $61a9: $00
    ld d, b                                       ; $61aa: $50
    nop                                           ; $61ab: $00
    nop                                           ; $61ac: $00
    nop                                           ; $61ad: $00
    add hl, bc                                    ; $61ae: $09
    nop                                           ; $61af: $00
    rla                                           ; $61b0: $17
    dec b                                         ; $61b1: $05
    ld b, $00                                     ; $61b2: $06 $00
    dec d                                         ; $61b4: $15
    nop                                           ; $61b5: $00
    nop                                           ; $61b6: $00
    inc sp                                        ; $61b7: $33
    inc bc                                        ; $61b8: $03
    inc de                                        ; $61b9: $13
    dec d                                         ; $61ba: $15
    ld b, $00                                     ; $61bb: $06 $00
    inc sp                                        ; $61bd: $33
    inc bc                                        ; $61be: $03
    rla                                           ; $61bf: $17
    nop                                           ; $61c0: $00
    nop                                           ; $61c1: $00
    nop                                           ; $61c2: $00
    add hl, bc                                    ; $61c3: $09
    nop                                           ; $61c4: $00
    jr jr_009_61cc                                ; $61c5: $18 $05

    inc b                                         ; $61c7: $04
    nop                                           ; $61c8: $00
    dec d                                         ; $61c9: $15
    ld b, $00                                     ; $61ca: $06 $00

jr_009_61cc:
    inc sp                                        ; $61cc: $33
    inc bc                                        ; $61cd: $03
    ld b, a                                       ; $61ce: $47
    nop                                           ; $61cf: $00
    nop                                           ; $61d0: $00
    nop                                           ; $61d1: $00
    add hl, bc                                    ; $61d2: $09
    nop                                           ; $61d3: $00
    ld d, $05                                     ; $61d4: $16 $05
    inc b                                         ; $61d6: $04
    nop                                           ; $61d7: $00
    dec d                                         ; $61d8: $15
    ld b, $00                                     ; $61d9: $06 $00
    inc sp                                        ; $61db: $33
    inc bc                                        ; $61dc: $03
    ld b, a                                       ; $61dd: $47
    nop                                           ; $61de: $00
    nop                                           ; $61df: $00
    nop                                           ; $61e0: $00
    nop                                           ; $61e1: $00
    nop                                           ; $61e2: $00
    nop                                           ; $61e3: $00
    add hl, bc                                    ; $61e4: $09
    nop                                           ; $61e5: $00
    ld e, c                                       ; $61e6: $59
    dec b                                         ; $61e7: $05
    inc b                                         ; $61e8: $04
    nop                                           ; $61e9: $00
    dec d                                         ; $61ea: $15
    rlca                                          ; $61eb: $07
    nop                                           ; $61ec: $00
    inc sp                                        ; $61ed: $33
    nop                                           ; $61ee: $00
    ld d, c                                       ; $61ef: $51
    nop                                           ; $61f0: $00
    nop                                           ; $61f1: $00
    nop                                           ; $61f2: $00
    add hl, bc                                    ; $61f3: $09
    nop                                           ; $61f4: $00
    nop                                           ; $61f5: $00
    dec b                                         ; $61f6: $05
    inc b                                         ; $61f7: $04
    nop                                           ; $61f8: $00
    dec d                                         ; $61f9: $15
    rlca                                          ; $61fa: $07
    nop                                           ; $61fb: $00
    inc sp                                        ; $61fc: $33
    nop                                           ; $61fd: $00
    ld d, c                                       ; $61fe: $51
    nop                                           ; $61ff: $00
    nop                                           ; $6200: $00
    nop                                           ; $6201: $00
    add hl, bc                                    ; $6202: $09
    nop                                           ; $6203: $00
    ld bc, $0405                                  ; $6204: $01 $05 $04
    nop                                           ; $6207: $00
    dec d                                         ; $6208: $15
    rlca                                          ; $6209: $07
    nop                                           ; $620a: $00
    inc sp                                        ; $620b: $33
    nop                                           ; $620c: $00
    ld d, c                                       ; $620d: $51
    nop                                           ; $620e: $00
    nop                                           ; $620f: $00
    nop                                           ; $6210: $00
    add hl, bc                                    ; $6211: $09
    nop                                           ; $6212: $00
    ld d, c                                       ; $6213: $51
    dec b                                         ; $6214: $05
    inc b                                         ; $6215: $04
    nop                                           ; $6216: $00
    dec d                                         ; $6217: $15
    rlca                                          ; $6218: $07
    nop                                           ; $6219: $00
    inc sp                                        ; $621a: $33
    nop                                           ; $621b: $00
    ld d, c                                       ; $621c: $51
    nop                                           ; $621d: $00
    nop                                           ; $621e: $00
    nop                                           ; $621f: $00
    add hl, bc                                    ; $6220: $09
    nop                                           ; $6221: $00
    rla                                           ; $6222: $17
    dec b                                         ; $6223: $05
    ld b, $00                                     ; $6224: $06 $00
    dec d                                         ; $6226: $15
    nop                                           ; $6227: $00
    nop                                           ; $6228: $00
    inc sp                                        ; $6229: $33
    inc bc                                        ; $622a: $03
    inc de                                        ; $622b: $13
    dec d                                         ; $622c: $15
    rlca                                          ; $622d: $07
    nop                                           ; $622e: $00
    inc sp                                        ; $622f: $33
    inc bc                                        ; $6230: $03
    jr jr_009_6233                                ; $6231: $18 $00

jr_009_6233:
    nop                                           ; $6233: $00
    nop                                           ; $6234: $00
    add hl, bc                                    ; $6235: $09
    nop                                           ; $6236: $00
    jr jr_009_623e                                ; $6237: $18 $05

    inc b                                         ; $6239: $04
    nop                                           ; $623a: $00
    dec d                                         ; $623b: $15
    rlca                                          ; $623c: $07
    nop                                           ; $623d: $00

jr_009_623e:
    inc sp                                        ; $623e: $33
    inc bc                                        ; $623f: $03
    ld c, b                                       ; $6240: $48
    nop                                           ; $6241: $00
    nop                                           ; $6242: $00
    nop                                           ; $6243: $00
    add hl, bc                                    ; $6244: $09
    nop                                           ; $6245: $00
    ld d, $05                                     ; $6246: $16 $05
    inc b                                         ; $6248: $04
    nop                                           ; $6249: $00
    dec d                                         ; $624a: $15
    rlca                                          ; $624b: $07
    nop                                           ; $624c: $00
    inc sp                                        ; $624d: $33
    inc bc                                        ; $624e: $03
    ld c, b                                       ; $624f: $48
    nop                                           ; $6250: $00
    nop                                           ; $6251: $00
    nop                                           ; $6252: $00
    nop                                           ; $6253: $00
    nop                                           ; $6254: $00
    nop                                           ; $6255: $00
    add hl, bc                                    ; $6256: $09
    nop                                           ; $6257: $00
    ld e, c                                       ; $6258: $59
    dec b                                         ; $6259: $05
    inc b                                         ; $625a: $04
    nop                                           ; $625b: $00
    dec d                                         ; $625c: $15
    ld [$3300], sp                                ; $625d: $08 $00 $33
    nop                                           ; $6260: $00
    ld d, d                                       ; $6261: $52
    nop                                           ; $6262: $00
    nop                                           ; $6263: $00
    nop                                           ; $6264: $00
    add hl, bc                                    ; $6265: $09
    nop                                           ; $6266: $00
    nop                                           ; $6267: $00
    dec b                                         ; $6268: $05
    inc b                                         ; $6269: $04
    nop                                           ; $626a: $00
    dec d                                         ; $626b: $15
    ld [$3300], sp                                ; $626c: $08 $00 $33
    nop                                           ; $626f: $00
    ld d, d                                       ; $6270: $52
    nop                                           ; $6271: $00
    nop                                           ; $6272: $00
    nop                                           ; $6273: $00
    add hl, bc                                    ; $6274: $09
    nop                                           ; $6275: $00
    ld bc, $0405                                  ; $6276: $01 $05 $04
    nop                                           ; $6279: $00
    dec d                                         ; $627a: $15
    ld [$3300], sp                                ; $627b: $08 $00 $33
    nop                                           ; $627e: $00
    ld d, d                                       ; $627f: $52
    nop                                           ; $6280: $00
    nop                                           ; $6281: $00
    nop                                           ; $6282: $00
    add hl, bc                                    ; $6283: $09
    nop                                           ; $6284: $00
    ld d, c                                       ; $6285: $51
    dec b                                         ; $6286: $05
    inc b                                         ; $6287: $04
    nop                                           ; $6288: $00
    dec d                                         ; $6289: $15
    ld [$3300], sp                                ; $628a: $08 $00 $33
    nop                                           ; $628d: $00
    ld d, d                                       ; $628e: $52
    nop                                           ; $628f: $00
    nop                                           ; $6290: $00
    nop                                           ; $6291: $00
    add hl, bc                                    ; $6292: $09
    nop                                           ; $6293: $00
    rla                                           ; $6294: $17
    dec b                                         ; $6295: $05
    ld b, $00                                     ; $6296: $06 $00
    dec d                                         ; $6298: $15
    nop                                           ; $6299: $00
    nop                                           ; $629a: $00
    inc sp                                        ; $629b: $33
    inc bc                                        ; $629c: $03
    inc de                                        ; $629d: $13
    dec d                                         ; $629e: $15
    ld [$3300], sp                                ; $629f: $08 $00 $33
    inc bc                                        ; $62a2: $03
    add hl, de                                    ; $62a3: $19
    nop                                           ; $62a4: $00
    nop                                           ; $62a5: $00
    nop                                           ; $62a6: $00
    add hl, bc                                    ; $62a7: $09
    nop                                           ; $62a8: $00
    jr @+$07                                      ; $62a9: $18 $05

    inc b                                         ; $62ab: $04
    nop                                           ; $62ac: $00
    dec d                                         ; $62ad: $15
    ld [$3300], sp                                ; $62ae: $08 $00 $33
    inc bc                                        ; $62b1: $03
    ld c, c                                       ; $62b2: $49
    nop                                           ; $62b3: $00
    nop                                           ; $62b4: $00
    nop                                           ; $62b5: $00
    add hl, bc                                    ; $62b6: $09
    nop                                           ; $62b7: $00
    ld d, $05                                     ; $62b8: $16 $05
    inc b                                         ; $62ba: $04
    nop                                           ; $62bb: $00
    dec d                                         ; $62bc: $15
    ld [$3300], sp                                ; $62bd: $08 $00 $33
    inc bc                                        ; $62c0: $03
    ld c, c                                       ; $62c1: $49
    nop                                           ; $62c2: $00
    nop                                           ; $62c3: $00
    nop                                           ; $62c4: $00
    nop                                           ; $62c5: $00
    nop                                           ; $62c6: $00
    nop                                           ; $62c7: $00
    add hl, bc                                    ; $62c8: $09
    nop                                           ; $62c9: $00
    ld e, c                                       ; $62ca: $59
    dec b                                         ; $62cb: $05
    inc b                                         ; $62cc: $04
    nop                                           ; $62cd: $00
    dec d                                         ; $62ce: $15
    add hl, bc                                    ; $62cf: $09
    nop                                           ; $62d0: $00
    inc sp                                        ; $62d1: $33
    nop                                           ; $62d2: $00
    ld d, e                                       ; $62d3: $53
    nop                                           ; $62d4: $00
    nop                                           ; $62d5: $00
    nop                                           ; $62d6: $00
    add hl, bc                                    ; $62d7: $09
    nop                                           ; $62d8: $00
    nop                                           ; $62d9: $00
    dec b                                         ; $62da: $05
    inc b                                         ; $62db: $04
    nop                                           ; $62dc: $00
    dec d                                         ; $62dd: $15
    add hl, bc                                    ; $62de: $09
    nop                                           ; $62df: $00
    inc sp                                        ; $62e0: $33
    nop                                           ; $62e1: $00
    ld d, e                                       ; $62e2: $53
    nop                                           ; $62e3: $00
    nop                                           ; $62e4: $00
    nop                                           ; $62e5: $00
    add hl, bc                                    ; $62e6: $09
    nop                                           ; $62e7: $00
    ld bc, $0405                                  ; $62e8: $01 $05 $04
    nop                                           ; $62eb: $00
    dec d                                         ; $62ec: $15
    add hl, bc                                    ; $62ed: $09
    nop                                           ; $62ee: $00
    inc sp                                        ; $62ef: $33
    nop                                           ; $62f0: $00
    ld d, e                                       ; $62f1: $53
    nop                                           ; $62f2: $00
    nop                                           ; $62f3: $00
    nop                                           ; $62f4: $00
    add hl, bc                                    ; $62f5: $09
    nop                                           ; $62f6: $00
    ld d, c                                       ; $62f7: $51
    dec b                                         ; $62f8: $05
    inc b                                         ; $62f9: $04
    nop                                           ; $62fa: $00
    dec d                                         ; $62fb: $15
    add hl, bc                                    ; $62fc: $09
    nop                                           ; $62fd: $00
    inc sp                                        ; $62fe: $33
    nop                                           ; $62ff: $00
    ld d, e                                       ; $6300: $53
    nop                                           ; $6301: $00
    nop                                           ; $6302: $00
    nop                                           ; $6303: $00
    add hl, bc                                    ; $6304: $09
    nop                                           ; $6305: $00
    rla                                           ; $6306: $17
    dec b                                         ; $6307: $05
    ld b, $00                                     ; $6308: $06 $00
    dec d                                         ; $630a: $15
    nop                                           ; $630b: $00
    nop                                           ; $630c: $00
    inc sp                                        ; $630d: $33
    inc bc                                        ; $630e: $03
    inc de                                        ; $630f: $13
    dec d                                         ; $6310: $15
    add hl, bc                                    ; $6311: $09
    nop                                           ; $6312: $00
    inc sp                                        ; $6313: $33
    inc bc                                        ; $6314: $03
    ld a, [de]                                    ; $6315: $1a
    nop                                           ; $6316: $00
    nop                                           ; $6317: $00
    nop                                           ; $6318: $00
    add hl, bc                                    ; $6319: $09
    nop                                           ; $631a: $00
    jr jr_009_6322                                ; $631b: $18 $05

    inc b                                         ; $631d: $04
    nop                                           ; $631e: $00
    dec d                                         ; $631f: $15
    add hl, bc                                    ; $6320: $09
    nop                                           ; $6321: $00

jr_009_6322:
    inc sp                                        ; $6322: $33
    inc bc                                        ; $6323: $03
    ld c, d                                       ; $6324: $4a
    nop                                           ; $6325: $00
    nop                                           ; $6326: $00
    nop                                           ; $6327: $00
    add hl, bc                                    ; $6328: $09
    nop                                           ; $6329: $00
    ld d, $05                                     ; $632a: $16 $05
    inc b                                         ; $632c: $04
    nop                                           ; $632d: $00
    dec d                                         ; $632e: $15
    add hl, bc                                    ; $632f: $09
    nop                                           ; $6330: $00
    inc sp                                        ; $6331: $33
    inc bc                                        ; $6332: $03
    ld c, d                                       ; $6333: $4a
    nop                                           ; $6334: $00
    nop                                           ; $6335: $00
    nop                                           ; $6336: $00
    nop                                           ; $6337: $00
    nop                                           ; $6338: $00
    nop                                           ; $6339: $00
    add hl, bc                                    ; $633a: $09
    nop                                           ; $633b: $00
    ld e, c                                       ; $633c: $59
    dec b                                         ; $633d: $05
    inc b                                         ; $633e: $04
    nop                                           ; $633f: $00
    dec d                                         ; $6340: $15
    ld a, [bc]                                    ; $6341: $0a
    nop                                           ; $6342: $00
    inc sp                                        ; $6343: $33
    nop                                           ; $6344: $00
    ld d, h                                       ; $6345: $54
    nop                                           ; $6346: $00
    nop                                           ; $6347: $00
    nop                                           ; $6348: $00
    add hl, bc                                    ; $6349: $09
    nop                                           ; $634a: $00
    nop                                           ; $634b: $00
    dec b                                         ; $634c: $05
    inc b                                         ; $634d: $04
    nop                                           ; $634e: $00
    dec d                                         ; $634f: $15
    ld a, [bc]                                    ; $6350: $0a
    nop                                           ; $6351: $00
    inc sp                                        ; $6352: $33
    nop                                           ; $6353: $00
    ld d, h                                       ; $6354: $54
    nop                                           ; $6355: $00
    nop                                           ; $6356: $00
    nop                                           ; $6357: $00
    add hl, bc                                    ; $6358: $09
    nop                                           ; $6359: $00
    ld bc, $0405                                  ; $635a: $01 $05 $04
    nop                                           ; $635d: $00
    dec d                                         ; $635e: $15
    ld a, [bc]                                    ; $635f: $0a
    nop                                           ; $6360: $00
    inc sp                                        ; $6361: $33
    nop                                           ; $6362: $00
    ld d, h                                       ; $6363: $54
    nop                                           ; $6364: $00
    nop                                           ; $6365: $00
    nop                                           ; $6366: $00
    add hl, bc                                    ; $6367: $09
    nop                                           ; $6368: $00
    ld d, c                                       ; $6369: $51
    dec b                                         ; $636a: $05
    inc b                                         ; $636b: $04
    nop                                           ; $636c: $00
    dec d                                         ; $636d: $15
    ld a, [bc]                                    ; $636e: $0a
    nop                                           ; $636f: $00
    inc sp                                        ; $6370: $33
    nop                                           ; $6371: $00
    ld d, h                                       ; $6372: $54
    nop                                           ; $6373: $00
    nop                                           ; $6374: $00
    nop                                           ; $6375: $00
    add hl, bc                                    ; $6376: $09
    nop                                           ; $6377: $00
    rla                                           ; $6378: $17
    dec b                                         ; $6379: $05
    ld b, $00                                     ; $637a: $06 $00
    dec d                                         ; $637c: $15
    nop                                           ; $637d: $00
    nop                                           ; $637e: $00
    inc sp                                        ; $637f: $33
    inc bc                                        ; $6380: $03
    inc de                                        ; $6381: $13
    dec d                                         ; $6382: $15
    ld a, [bc]                                    ; $6383: $0a
    nop                                           ; $6384: $00
    inc sp                                        ; $6385: $33
    inc bc                                        ; $6386: $03
    inc d                                         ; $6387: $14
    nop                                           ; $6388: $00
    nop                                           ; $6389: $00
    nop                                           ; $638a: $00
    add hl, bc                                    ; $638b: $09
    nop                                           ; $638c: $00
    jr jr_009_6394                                ; $638d: $18 $05

    inc b                                         ; $638f: $04
    nop                                           ; $6390: $00
    dec d                                         ; $6391: $15
    ld a, [bc]                                    ; $6392: $0a
    nop                                           ; $6393: $00

jr_009_6394:
    inc sp                                        ; $6394: $33
    inc bc                                        ; $6395: $03
    ld b, h                                       ; $6396: $44
    nop                                           ; $6397: $00
    nop                                           ; $6398: $00
    nop                                           ; $6399: $00
    add hl, bc                                    ; $639a: $09
    nop                                           ; $639b: $00
    ld d, $05                                     ; $639c: $16 $05
    inc b                                         ; $639e: $04
    nop                                           ; $639f: $00
    dec d                                         ; $63a0: $15
    ld a, [bc]                                    ; $63a1: $0a
    nop                                           ; $63a2: $00
    inc sp                                        ; $63a3: $33
    inc bc                                        ; $63a4: $03
    ld b, h                                       ; $63a5: $44
    nop                                           ; $63a6: $00
    nop                                           ; $63a7: $00
    nop                                           ; $63a8: $00
    nop                                           ; $63a9: $00
    nop                                           ; $63aa: $00
    nop                                           ; $63ab: $00
    dec d                                         ; $63ac: $15
    ld a, [bc]                                    ; $63ad: $0a
    nop                                           ; $63ae: $00
    inc sp                                        ; $63af: $33
    nop                                           ; $63b0: $00
    ld d, h                                       ; $63b1: $54
    nop                                           ; $63b2: $00
    nop                                           ; $63b3: $00
    nop                                           ; $63b4: $00
    ld l, $07                                     ; $63b5: $2e $07
    nop                                           ; $63b7: $00
    nop                                           ; $63b8: $00
    nop                                           ; $63b9: $00
    nop                                           ; $63ba: $00

    db $5f, $00, $00, $09, $39, $00, $05, $05, $00, $2b, $00, $00, $0a, $fe, $00, $05
    db $02, $00

    ld [bc], a                                    ; $63cd: $02
    ld c, b                                       ; $63ce: $48
    nop                                           ; $63cf: $00

    db $09, $00, $00, $04, $45, $00, $09, $00, $51, $04, $43, $00, $09, $00, $59, $04
    db $14, $00

    add hl, bc                                    ; $63e2: $09
    nop                                           ; $63e3: $00
    ld [bc], a                                    ; $63e4: $02
    dec b                                         ; $63e5: $05
    inc b                                         ; $63e6: $04
    nop                                           ; $63e7: $00
    jr z, jr_009_642d                             ; $63e8: $28 $43

    nop                                           ; $63ea: $00
    ld e, a                                       ; $63eb: $5f
    ld bc, $0000                                  ; $63ec: $01 $00 $00
    nop                                           ; $63ef: $00
    nop                                           ; $63f0: $00
    add hl, bc                                    ; $63f1: $09
    nop                                           ; $63f2: $00
    inc e                                         ; $63f3: $1c
    dec b                                         ; $63f4: $05
    ld b, $00                                     ; $63f5: $06 $00
    rrca                                          ; $63f7: $0f
    scf                                           ; $63f8: $37
    inc bc                                        ; $63f9: $03
    ld a, d                                       ; $63fa: $7a
    ld bc, $2800                                  ; $63fb: $01 $00 $28
    inc [hl]                                      ; $63fe: $34
    nop                                           ; $63ff: $00
    ld e, a                                       ; $6400: $5f
    ld bc, $0000                                  ; $6401: $01 $00 $00
    nop                                           ; $6404: $00
    nop                                           ; $6405: $00
    ld e, a                                       ; $6406: $5f
    nop                                           ; $6407: $00
    nop                                           ; $6408: $00
    inc de                                        ; $6409: $13
    inc bc                                        ; $640a: $03
    nop                                           ; $640b: $00
    inc d                                         ; $640c: $14
    ld bc, $154b                                  ; $640d: $01 $4b $15
    nop                                           ; $6410: $00
    nop                                           ; $6411: $00
    ld d, $0d                                     ; $6412: $16 $0d
    nop                                           ; $6414: $00
    ld d, d                                       ; $6415: $52
    nop                                           ; $6416: $00
    nop                                           ; $6417: $00
    ld e, a                                       ; $6418: $5f
    db $01                                        ; $6419: $01
    nop                                           ; $641a: $00

    db $09, $00, $01, $05, $0e, $00

    ld e, a                                       ; $6421: $5f
    nop                                           ; $6422: $00
    nop                                           ; $6423: $00
    inc de                                        ; $6424: $13
    nop                                           ; $6425: $00
    ld e, h                                       ; $6426: $5c
    inc d                                         ; $6427: $14
    nop                                           ; $6428: $00
    sbc l                                         ; $6429: $9d
    dec d                                         ; $642a: $15
    nop                                           ; $642b: $00
    nop                                           ; $642c: $00

jr_009_642d:
    ld d, $1e                                     ; $642d: $16 $1e
    nop                                           ; $642f: $00
    ld d, d                                       ; $6430: $52
    nop                                           ; $6431: $00
    nop                                           ; $6432: $00
    inc de                                        ; $6433: $13
    ld bc, $149c                                  ; $6434: $01 $9c $14
    nop                                           ; $6437: $00
    ld a, [c]                                     ; $6438: $f2
    dec d                                         ; $6439: $15
    dec d                                         ; $643a: $15
    nop                                           ; $643b: $00
    ld d, $65                                     ; $643c: $16 $65
    nop                                           ; $643e: $00
    ld d, d                                       ; $643f: $52
    nop                                           ; $6440: $00
    nop                                           ; $6441: $00
    ld e, a                                       ; $6442: $5f
    ld bc, $0000                                  ; $6443: $01 $00 $00
    nop                                           ; $6446: $00
    nop                                           ; $6447: $00

    db $09, $00, $17, $05, $09, $00

    ld e, a                                       ; $644e: $5f
    nop                                           ; $644f: $00
    nop                                           ; $6450: $00
    inc de                                        ; $6451: $13
    inc bc                                        ; $6452: $03
    ld [hl], $14                                  ; $6453: $36 $14
    ld bc, $154e                                  ; $6455: $01 $4e $15
    nop                                           ; $6458: $00
    nop                                           ; $6459: $00
    ld d, $1e                                     ; $645a: $16 $1e
    nop                                           ; $645c: $00
    ld d, d                                       ; $645d: $52
    nop                                           ; $645e: $00
    nop                                           ; $645f: $00
    ld e, a                                       ; $6460: $5f
    ld bc, $0000                                  ; $6461: $01 $00 $00
    nop                                           ; $6464: $00
    nop                                           ; $6465: $00

    db $09, $00, $18, $05, $09, $00

    ld e, a                                       ; $646c: $5f
    nop                                           ; $646d: $00
    nop                                           ; $646e: $00
    inc de                                        ; $646f: $13
    inc bc                                        ; $6470: $03
    ld [hl], $14                                  ; $6471: $36 $14
    ld bc, $154e                                  ; $6473: $01 $4e $15
    nop                                           ; $6476: $00
    nop                                           ; $6477: $00
    ld d, $1e                                     ; $6478: $16 $1e
    nop                                           ; $647a: $00
    ld d, d                                       ; $647b: $52
    nop                                           ; $647c: $00
    nop                                           ; $647d: $00
    ld e, a                                       ; $647e: $5f
    ld bc, $0000                                  ; $647f: $01 $00 $00
    nop                                           ; $6482: $00
    nop                                           ; $6483: $00

    db $09, $00, $16, $05, $09, $00

    ld e, a                                       ; $648a: $5f
    nop                                           ; $648b: $00
    nop                                           ; $648c: $00
    inc de                                        ; $648d: $13
    inc bc                                        ; $648e: $03
    ld [hl], $14                                  ; $648f: $36 $14
    ld bc, $154e                                  ; $6491: $01 $4e $15
    nop                                           ; $6494: $00
    nop                                           ; $6495: $00
    ld d, $1e                                     ; $6496: $16 $1e
    nop                                           ; $6498: $00
    ld d, d                                       ; $6499: $52
    nop                                           ; $649a: $00
    nop                                           ; $649b: $00
    ld e, a                                       ; $649c: $5f
    ld bc, $0000                                  ; $649d: $01 $00 $00
    nop                                           ; $64a0: $00
    nop                                           ; $64a1: $00

    db $00, $00, $00

    rrca                                          ; $64a5: $0f
    add hl, sp                                    ; $64a6: $39
    ld bc, $0056                                  ; $64a7: $01 $56 $00
    nop                                           ; $64aa: $00
    ld e, a                                       ; $64ab: $5f
    ld bc, $6d00                                  ; $64ac: $01 $00 $6d
    nop                                           ; $64af: $00
    nop                                           ; $64b0: $00
    ld a, a                                       ; $64b1: $7f
    add hl, bc                                    ; $64b2: $09
    push de                                       ; $64b3: $d5
    ld d, a                                       ; $64b4: $57
    nop                                           ; $64b5: $00
    nop                                           ; $64b6: $00
    ld e, a                                       ; $64b7: $5f
    nop                                           ; $64b8: $00
    nop                                           ; $64b9: $00
    ld bc, $0000                                  ; $64ba: $01 $00 $00
    ld e, a                                       ; $64bd: $5f
    nop                                           ; $64be: $00
    nop                                           ; $64bf: $00
    add hl, bc                                    ; $64c0: $09
    nop                                           ; $64c1: $00
    ld bc, $2005                                  ; $64c2: $01 $05 $20
    nop                                           ; $64c5: $00
    ld d, [hl]                                    ; $64c6: $56
    nop                                           ; $64c7: $00
    nop                                           ; $64c8: $00
    rla                                           ; $64c9: $17
    nop                                           ; $64ca: $00
    nop                                           ; $64cb: $00
    inc e                                         ; $64cc: $1c
    dec c                                         ; $64cd: $0d
    nop                                           ; $64ce: $00
    ld e, a                                       ; $64cf: $5f
    ld bc, $5500                                  ; $64d0: $01 $00 $55
    ld [bc], a                                    ; $64d3: $02
    nop                                           ; $64d4: $00
    add hl, bc                                    ; $64d5: $09
    cp $01                                        ; $64d6: $fe $01
    dec b                                         ; $64d8: $05
    dec d                                         ; $64d9: $15
    nop                                           ; $64da: $00
    add hl, sp                                    ; $64db: $39
    inc hl                                        ; $64dc: $23
    ld bc, $0115                                  ; $64dd: $01 $15 $01
    nop                                           ; $64e0: $00
    inc sp                                        ; $64e1: $33
    nop                                           ; $64e2: $00
    adc a                                         ; $64e3: $8f
    jr c, jr_009_653e                             ; $64e4: $38 $58

    nop                                           ; $64e6: $00
    dec d                                         ; $64e7: $15
    ld e, c                                       ; $64e8: $59
    nop                                           ; $64e9: $00
    inc sp                                        ; $64ea: $33
    nop                                           ; $64eb: $00
    sub b                                         ; $64ec: $90
    dec d                                         ; $64ed: $15
    ld bc, $3300                                  ; $64ee: $01 $00 $33
    nop                                           ; $64f1: $00
    sub c                                         ; $64f2: $91
    dec d                                         ; $64f3: $15
    ld e, c                                       ; $64f4: $59
    nop                                           ; $64f5: $00
    inc sp                                        ; $64f6: $33
    nop                                           ; $64f7: $00
    sub d                                         ; $64f8: $92
    dec d                                         ; $64f9: $15
    ld bc, $3300                                  ; $64fa: $01 $00 $33
    nop                                           ; $64fd: $00
    sub e                                         ; $64fe: $93
    dec d                                         ; $64ff: $15
    ld bc, $3300                                  ; $6500: $01 $00 $33
    dec bc                                        ; $6503: $0b
    ld l, $62                                     ; $6504: $2e $62
    ld [bc], a                                    ; $6506: $02
    nop                                           ; $6507: $00
    inc l                                         ; $6508: $2c
    ld [bc], a                                    ; $6509: $02
    nop                                           ; $650a: $00
    ld d, a                                       ; $650b: $57
    nop                                           ; $650c: $00
    nop                                           ; $650d: $00
    ld d, l                                       ; $650e: $55
    nop                                           ; $650f: $00
    nop                                           ; $6510: $00
    nop                                           ; $6511: $00
    nop                                           ; $6512: $00
    nop                                           ; $6513: $00
    inc bc                                        ; $6514: $03
    inc b                                         ; $6515: $04
    nop                                           ; $6516: $00
    dec d                                         ; $6517: $15
    ld bc, $3300                                  ; $6518: $01 $00 $33
    nop                                           ; $651b: $00
    sub h                                         ; $651c: $94
    ld d, a                                       ; $651d: $57
    nop                                           ; $651e: $00
    nop                                           ; $651f: $00
    nop                                           ; $6520: $00
    nop                                           ; $6521: $00
    nop                                           ; $6522: $00
    add hl, bc                                    ; $6523: $09
    nop                                           ; $6524: $00
    rla                                           ; $6525: $17
    dec b                                         ; $6526: $05
    rla                                           ; $6527: $17
    nop                                           ; $6528: $00
    add hl, bc                                    ; $6529: $09
    ld c, $01                                     ; $652a: $0e $01
    dec b                                         ; $652c: $05
    inc bc                                        ; $652d: $03
    nop                                           ; $652e: $00
    ld e, a                                       ; $652f: $5f
    ld bc, $0000                                  ; $6530: $01 $00 $00
    nop                                           ; $6533: $00
    nop                                           ; $6534: $00
    ld d, [hl]                                    ; $6535: $56
    nop                                           ; $6536: $00
    nop                                           ; $6537: $00
    rla                                           ; $6538: $17
    nop                                           ; $6539: $00
    nop                                           ; $653a: $00
    inc e                                         ; $653b: $1c
    dec c                                         ; $653c: $0d
    nop                                           ; $653d: $00

jr_009_653e:
    ld e, a                                       ; $653e: $5f
    ld bc, $0900                                  ; $653f: $01 $00 $09
    inc b                                         ; $6542: $04
    ld bc, $0905                                  ; $6543: $01 $05 $09
    nop                                           ; $6546: $00
    dec d                                         ; $6547: $15
    nop                                           ; $6548: $00
    nop                                           ; $6549: $00
    inc sp                                        ; $654a: $33
    inc bc                                        ; $654b: $03
    jr nz, jr_009_6563                            ; $654c: $20 $15

    ld bc, $3300                                  ; $654e: $01 $00 $33
    inc bc                                        ; $6551: $03
    ld hl, $003f                                  ; $6552: $21 $3f $00
    ld a, [bc]                                    ; $6555: $0a
    ld d, a                                       ; $6556: $57
    nop                                           ; $6557: $00
    nop                                           ; $6558: $00
    rrca                                          ; $6559: $0f
    ld c, $01                                     ; $655a: $0e $01
    inc bc                                        ; $655c: $03
    dec b                                         ; $655d: $05
    nop                                           ; $655e: $00
    dec d                                         ; $655f: $15
    ld bc, $3300                                  ; $6560: $01 $00 $33

jr_009_6563:
    inc bc                                        ; $6563: $03
    ld [de], a                                    ; $6564: $12
    ld d, a                                       ; $6565: $57
    nop                                           ; $6566: $00
    nop                                           ; $6567: $00
    nop                                           ; $6568: $00
    nop                                           ; $6569: $00
    nop                                           ; $656a: $00
    add hl, bc                                    ; $656b: $09
    nop                                           ; $656c: $00
    jr jr_009_6574                                ; $656d: $18 $05

    add hl, bc                                    ; $656f: $09
    nop                                           ; $6570: $00
    ld d, [hl]                                    ; $6571: $56
    nop                                           ; $6572: $00
    nop                                           ; $6573: $00

jr_009_6574:
    rla                                           ; $6574: $17
    nop                                           ; $6575: $00
    nop                                           ; $6576: $00
    inc e                                         ; $6577: $1c
    dec c                                         ; $6578: $0d
    nop                                           ; $6579: $00
    ld e, a                                       ; $657a: $5f
    ld bc, $1500                                  ; $657b: $01 $00 $15
    ld bc, $3300                                  ; $657e: $01 $00 $33
    inc bc                                        ; $6581: $03
    ld sp, $0057                                  ; $6582: $31 $57 $00
    nop                                           ; $6585: $00
    nop                                           ; $6586: $00
    nop                                           ; $6587: $00
    nop                                           ; $6588: $00
    add hl, bc                                    ; $6589: $09
    nop                                           ; $658a: $00
    ld d, $05                                     ; $658b: $16 $05
    dec bc                                        ; $658d: $0b
    nop                                           ; $658e: $00
    ld d, [hl]                                    ; $658f: $56
    nop                                           ; $6590: $00
    nop                                           ; $6591: $00
    rla                                           ; $6592: $17
    nop                                           ; $6593: $00
    nop                                           ; $6594: $00
    inc e                                         ; $6595: $1c
    dec c                                         ; $6596: $0d
    nop                                           ; $6597: $00
    ld e, a                                       ; $6598: $5f
    ld bc, $1500                                  ; $6599: $01 $00 $15
    ld bc, $3300                                  ; $659c: $01 $00 $33
    inc bc                                        ; $659f: $03
    ld b, c                                       ; $65a0: $41
    dec d                                         ; $65a1: $15
    nop                                           ; $65a2: $00
    nop                                           ; $65a3: $00
    inc sp                                        ; $65a4: $33
    inc bc                                        ; $65a5: $03
    ld c, e                                       ; $65a6: $4b
    ld d, a                                       ; $65a7: $57
    nop                                           ; $65a8: $00
    nop                                           ; $65a9: $00
    nop                                           ; $65aa: $00
    nop                                           ; $65ab: $00
    nop                                           ; $65ac: $00
    nop                                           ; $65ad: $00
    nop                                           ; $65ae: $00
    nop                                           ; $65af: $00
    add hl, bc                                    ; $65b0: $09
    nop                                           ; $65b1: $00
    rla                                           ; $65b2: $17
    dec b                                         ; $65b3: $05
    add hl, de                                    ; $65b4: $19
    nop                                           ; $65b5: $00
    add hl, bc                                    ; $65b6: $09
    inc b                                         ; $65b7: $04
    ld bc, $0205                                  ; $65b8: $01 $05 $02
    nop                                           ; $65bb: $00
    inc bc                                        ; $65bc: $03
    dec b                                         ; $65bd: $05
    nop                                           ; $65be: $00
    dec d                                         ; $65bf: $15
    nop                                           ; $65c0: $00
    nop                                           ; $65c1: $00
    inc sp                                        ; $65c2: $33
    inc bc                                        ; $65c3: $03
    inc de                                        ; $65c4: $13
    dec d                                         ; $65c5: $15
    dec l                                         ; $65c6: $2d
    nop                                           ; $65c7: $00
    inc sp                                        ; $65c8: $33
    inc bc                                        ; $65c9: $03
    dec de                                        ; $65ca: $1b
    dec l                                         ; $65cb: $2d
    nop                                           ; $65cc: $00
    ld a, [bc]                                    ; $65cd: $0a
    add hl, bc                                    ; $65ce: $09
    cp $01                                        ; $65cf: $fe $01
    dec b                                         ; $65d1: $05
    add hl, bc                                    ; $65d2: $09
    nop                                           ; $65d3: $00
    dec d                                         ; $65d4: $15
    nop                                           ; $65d5: $00
    nop                                           ; $65d6: $00
    inc sp                                        ; $65d7: $33
    inc bc                                        ; $65d8: $03
    inc e                                         ; $65d9: $1c
    ld b, b                                       ; $65da: $40
    nop                                           ; $65db: $00
    ld a, [bc]                                    ; $65dc: $0a
    dec d                                         ; $65dd: $15
    dec l                                         ; $65de: $2d
    nop                                           ; $65df: $00
    inc sp                                        ; $65e0: $33
    inc bc                                        ; $65e1: $03
    dec e                                         ; $65e2: $1d
    ld h, d                                       ; $65e3: $62
    ld e, [hl]                                    ; $65e4: $5e
    nop                                           ; $65e5: $00
    jr z, jr_009_65f0                             ; $65e6: $28 $08

    nop                                           ; $65e8: $00
    inc bc                                        ; $65e9: $03
    rlca                                          ; $65ea: $07
    nop                                           ; $65eb: $00
    dec d                                         ; $65ec: $15
    nop                                           ; $65ed: $00
    nop                                           ; $65ee: $00
    inc sp                                        ; $65ef: $33

jr_009_65f0:
    inc bc                                        ; $65f0: $03
    ld e, $15                                     ; $65f1: $1e $15
    dec l                                         ; $65f3: $2d
    nop                                           ; $65f4: $00
    inc sp                                        ; $65f5: $33
    inc bc                                        ; $65f6: $03
    rra                                           ; $65f7: $1f
    rrca                                          ; $65f8: $0f
    inc b                                         ; $65f9: $04
    ld bc, $0000                                  ; $65fa: $01 $00 $00
    nop                                           ; $65fd: $00
    add hl, bc                                    ; $65fe: $09
    nop                                           ; $65ff: $00
    jr jr_009_6607                                ; $6600: $18 $05

    ld [$1500], sp                                ; $6602: $08 $00 $15
    dec l                                         ; $6605: $2d
    nop                                           ; $6606: $00

jr_009_6607:
    inc sp                                        ; $6607: $33
    inc bc                                        ; $6608: $03
    ld l, $15                                     ; $6609: $2e $15
    nop                                           ; $660b: $00
    nop                                           ; $660c: $00
    inc sp                                        ; $660d: $33
    inc bc                                        ; $660e: $03
    cpl                                           ; $660f: $2f
    dec d                                         ; $6610: $15
    dec l                                         ; $6611: $2d
    nop                                           ; $6612: $00
    inc sp                                        ; $6613: $33
    inc bc                                        ; $6614: $03
    jr nc, jr_009_6617                            ; $6615: $30 $00

jr_009_6617:
    nop                                           ; $6617: $00
    nop                                           ; $6618: $00
    add hl, bc                                    ; $6619: $09
    nop                                           ; $661a: $00
    ld d, $05                                     ; $661b: $16 $05
    cpl                                           ; $661d: $2f
    nop                                           ; $661e: $00
    add hl, bc                                    ; $661f: $09
    db $10                                        ; $6620: $10
    ld bc, $0205                                  ; $6621: $01 $05 $02
    nop                                           ; $6624: $00
    nop                                           ; $6625: $00
    nop                                           ; $6626: $00
    nop                                           ; $6627: $00
    ld d, [hl]                                    ; $6628: $56
    nop                                           ; $6629: $00
    nop                                           ; $662a: $00
    dec d                                         ; $662b: $15
    dec l                                         ; $662c: $2d
    nop                                           ; $662d: $00
    inc sp                                        ; $662e: $33
    inc bc                                        ; $662f: $03
    ld a, $15                                     ; $6630: $3e $15
    nop                                           ; $6632: $00
    nop                                           ; $6633: $00
    inc sp                                        ; $6634: $33
    inc bc                                        ; $6635: $03
    ccf                                           ; $6636: $3f
    dec d                                         ; $6637: $15
    dec l                                         ; $6638: $2d
    nop                                           ; $6639: $00
    inc sp                                        ; $663a: $33
    inc bc                                        ; $663b: $03
    ld b, b                                       ; $663c: $40
    rla                                           ; $663d: $17
    dec c                                         ; $663e: $0d
    nop                                           ; $663f: $00
    dec d                                         ; $6640: $15
    ld [bc], a                                    ; $6641: $02
    nop                                           ; $6642: $00
    add hl, de                                    ; $6643: $19
    nop                                           ; $6644: $00
    jr z, jr_009_6662                             ; $6645: $28 $1b

    ld [bc], a                                    ; $6647: $02
    nop                                           ; $6648: $00
    dec d                                         ; $6649: $15
    ld bc, $3300                                  ; $664a: $01 $00 $33
    inc bc                                        ; $664d: $03
    ld b, c                                       ; $664e: $41
    dec d                                         ; $664f: $15
    nop                                           ; $6650: $00
    nop                                           ; $6651: $00
    inc sp                                        ; $6652: $33
    inc bc                                        ; $6653: $03
    ld b, d                                       ; $6654: $42
    ld e, h                                       ; $6655: $5c
    nop                                           ; $6656: $00
    nop                                           ; $6657: $00
    rla                                           ; $6658: $17
    nop                                           ; $6659: $00
    nop                                           ; $665a: $00
    inc [hl]                                      ; $665b: $34
    nop                                           ; $665c: $00
    nop                                           ; $665d: $00
    ld e, d                                       ; $665e: $5a
    nop                                           ; $665f: $00
    nop                                           ; $6660: $00
    ld e, [hl]                                    ; $6661: $5e

jr_009_6662:
    nop                                           ; $6662: $00
    nop                                           ; $6663: $00
    dec d                                         ; $6664: $15
    inc b                                         ; $6665: $04
    nop                                           ; $6666: $00
    add hl, de                                    ; $6667: $19
    nop                                           ; $6668: $00
    ld a, b                                       ; $6669: $78
    rla                                           ; $666a: $17
    dec c                                         ; $666b: $0d
    nop                                           ; $666c: $00
    ld e, d                                       ; $666d: $5a
    nop                                           ; $666e: $00
    nop                                           ; $666f: $00
    dec d                                         ; $6670: $15
    inc b                                         ; $6671: $04
    nop                                           ; $6672: $00
    add hl, de                                    ; $6673: $19
    nop                                           ; $6674: $00
    ld a, b                                       ; $6675: $78
    dec h                                         ; $6676: $25
    nop                                           ; $6677: $00
    nop                                           ; $6678: $00
    rla                                           ; $6679: $17
    dec c                                         ; $667a: $0d
    nop                                           ; $667b: $00
    dec de                                        ; $667c: $1b
    inc b                                         ; $667d: $04
    nop                                           ; $667e: $00
    rla                                           ; $667f: $17
    nop                                           ; $6680: $00
    nop                                           ; $6681: $00
    dec de                                        ; $6682: $1b
    inc b                                         ; $6683: $04
    nop                                           ; $6684: $00
    dec d                                         ; $6685: $15
    dec l                                         ; $6686: $2d
    nop                                           ; $6687: $00
    inc sp                                        ; $6688: $33
    inc bc                                        ; $6689: $03
    ld b, e                                       ; $668a: $43
    ld e, e                                       ; $668b: $5b
    nop                                           ; $668c: $00
    nop                                           ; $668d: $00
    rla                                           ; $668e: $17
    dec c                                         ; $668f: $0d
    nop                                           ; $6690: $00
    ld e, e                                       ; $6691: $5b
    nop                                           ; $6692: $00
    nop                                           ; $6693: $00
    ld h, d                                       ; $6694: $62
    inc e                                         ; $6695: $1c
    nop                                           ; $6696: $00
    rrca                                          ; $6697: $0f
    db $10                                        ; $6698: $10
    ld bc, $0057                                  ; $6699: $01 $57 $00
    nop                                           ; $669c: $00
    rrca                                          ; $669d: $0f
    scf                                           ; $669e: $37
    inc bc                                        ; $669f: $03
    ld a, d                                       ; $66a0: $7a
    ld bc, $2800                                  ; $66a1: $01 $00 $28
    inc [hl]                                      ; $66a4: $34
    nop                                           ; $66a5: $00
    nop                                           ; $66a6: $00
    nop                                           ; $66a7: $00
    nop                                           ; $66a8: $00
    nop                                           ; $66a9: $00
    nop                                           ; $66aa: $00
    nop                                           ; $66ab: $00
    ld e, a                                       ; $66ac: $5f
    nop                                           ; $66ad: $00
    nop                                           ; $66ae: $00
    add hl, bc                                    ; $66af: $09
    nop                                           ; $66b0: $00
    ld bc, $1d05                                  ; $66b1: $01 $05 $1d
    nop                                           ; $66b4: $00
    add hl, bc                                    ; $66b5: $09
    ld e, $01                                     ; $66b6: $1e $01
    dec b                                         ; $66b8: $05
    inc bc                                        ; $66b9: $03
    nop                                           ; $66ba: $00
    ld e, a                                       ; $66bb: $5f
    ld bc, $0000                                  ; $66bc: $01 $00 $00
    nop                                           ; $66bf: $00
    nop                                           ; $66c0: $00
    ld d, [hl]                                    ; $66c1: $56
    nop                                           ; $66c2: $00
    nop                                           ; $66c3: $00
    rla                                           ; $66c4: $17
    nop                                           ; $66c5: $00
    nop                                           ; $66c6: $00
    inc e                                         ; $66c7: $1c
    ld e, $00                                     ; $66c8: $1e $00
    ld e, a                                       ; $66ca: $5f
    ld bc, $1300                                  ; $66cb: $01 $00 $13
    nop                                           ; $66ce: $00
    sbc a                                         ; $66cf: $9f
    ld [hl], c                                    ; $66d0: $71
    nop                                           ; $66d1: $00
    ld [hl], b                                    ; $66d2: $70
    inc e                                         ; $66d3: $1c
    ld e, $00                                     ; $66d4: $1e $00
    dec d                                         ; $66d6: $15
    dec l                                         ; $66d7: $2d
    nop                                           ; $66d8: $00
    inc sp                                        ; $66d9: $33
    nop                                           ; $66da: $00
    adc b                                         ; $66db: $88
    dec d                                         ; $66dc: $15
    ld e, c                                       ; $66dd: $59
    nop                                           ; $66de: $00
    inc sp                                        ; $66df: $33
    nop                                           ; $66e0: $00
    adc c                                         ; $66e1: $89
    dec d                                         ; $66e2: $15
    dec l                                         ; $66e3: $2d
    nop                                           ; $66e4: $00
    inc sp                                        ; $66e5: $33
    nop                                           ; $66e6: $00
    adc d                                         ; $66e7: $8a
    dec d                                         ; $66e8: $15
    ld e, c                                       ; $66e9: $59
    nop                                           ; $66ea: $00
    inc sp                                        ; $66eb: $33
    nop                                           ; $66ec: $00
    adc e                                         ; $66ed: $8b
    dec d                                         ; $66ee: $15
    dec l                                         ; $66ef: $2d
    nop                                           ; $66f0: $00
    inc sp                                        ; $66f1: $33
    nop                                           ; $66f2: $00
    adc h                                         ; $66f3: $8c
    dec d                                         ; $66f4: $15
    ld e, c                                       ; $66f5: $59
    nop                                           ; $66f6: $00
    inc sp                                        ; $66f7: $33
    nop                                           ; $66f8: $00
    adc l                                         ; $66f9: $8d
    dec d                                         ; $66fa: $15
    dec l                                         ; $66fb: $2d
    nop                                           ; $66fc: $00
    inc sp                                        ; $66fd: $33
    nop                                           ; $66fe: $00
    adc [hl]                                      ; $66ff: $8e
    ld d, a                                       ; $6700: $57
    nop                                           ; $6701: $00
    nop                                           ; $6702: $00
    rrca                                          ; $6703: $0f
    ld e, $01                                     ; $6704: $1e $01
    nop                                           ; $6706: $00
    nop                                           ; $6707: $00
    nop                                           ; $6708: $00
    ld e, a                                       ; $6709: $5f
    ld bc, $0000                                  ; $670a: $01 $00 $00
    nop                                           ; $670d: $00
    nop                                           ; $670e: $00
    ld e, a                                       ; $670f: $5f
    nop                                           ; $6710: $00
    nop                                           ; $6711: $00
    add hl, bc                                    ; $6712: $09
    ld [hl+], a                                   ; $6713: $22
    ld bc, $0305                                  ; $6714: $01 $05 $03
    nop                                           ; $6717: $00
    ld e, a                                       ; $6718: $5f
    ld bc, $0000                                  ; $6719: $01 $00 $00
    nop                                           ; $671c: $00
    nop                                           ; $671d: $00
    add hl, bc                                    ; $671e: $09
    nop                                           ; $671f: $00
    ld bc, $0d05                                  ; $6720: $01 $05 $0d
    nop                                           ; $6723: $00
    ld d, [hl]                                    ; $6724: $56
    nop                                           ; $6725: $00
    nop                                           ; $6726: $00
    rla                                           ; $6727: $17
    nop                                           ; $6728: $00
    nop                                           ; $6729: $00
    inc e                                         ; $672a: $1c
    ld h, l                                       ; $672b: $65
    dec d                                         ; $672c: $15
    rla                                           ; $672d: $17
    ld h, l                                       ; $672e: $65
    nop                                           ; $672f: $00
    inc e                                         ; $6730: $1c
    nop                                           ; $6731: $00
    nop                                           ; $6732: $00
    ld e, a                                       ; $6733: $5f
    ld bc, $1500                                  ; $6734: $01 $00 $15
    ld h, $00                                     ; $6737: $26 $00
    inc sp                                        ; $6739: $33
    nop                                           ; $673a: $00
    ld d, l                                       ; $673b: $55
    rrca                                          ; $673c: $0f
    ld [hl+], a                                   ; $673d: $22
    ld bc, $097f                                  ; $673e: $01 $7f $09
    rst $18                                       ; $6741: $df
    ld d, a                                       ; $6742: $57
    nop                                           ; $6743: $00
    nop                                           ; $6744: $00
    nop                                           ; $6745: $00
    nop                                           ; $6746: $00
    nop                                           ; $6747: $00
    nop                                           ; $6748: $00
    nop                                           ; $6749: $00
    nop                                           ; $674a: $00
    add hl, bc                                    ; $674b: $09
    inc hl                                        ; $674c: $23
    ld bc, $0205                                  ; $674d: $01 $05 $02
    nop                                           ; $6750: $00
    nop                                           ; $6751: $00
    nop                                           ; $6752: $00
    nop                                           ; $6753: $00
    ccf                                           ; $6754: $3f
    nop                                           ; $6755: $00
    dec b                                         ; $6756: $05
    rrca                                          ; $6757: $0f
    inc hl                                        ; $6758: $23
    ld bc, $0000                                  ; $6759: $01 $00 $00
    nop                                           ; $675c: $00
    add hl, bc                                    ; $675d: $09
    inc h                                         ; $675e: $24
    ld bc, $0205                                  ; $675f: $01 $05 $02
    nop                                           ; $6762: $00
    nop                                           ; $6763: $00
    nop                                           ; $6764: $00
    nop                                           ; $6765: $00
    jr c, jr_009_6793                             ; $6766: $38 $2b

    nop                                           ; $6768: $00
    rrca                                          ; $6769: $0f
    inc h                                         ; $676a: $24
    ld bc, $0000                                  ; $676b: $01 $00 $00
    nop                                           ; $676e: $00
    ld e, a                                       ; $676f: $5f
    nop                                           ; $6770: $00
    nop                                           ; $6771: $00
    add hl, bc                                    ; $6772: $09
    nop                                           ; $6773: $00
    ld bc, $0b05                                  ; $6774: $01 $05 $0b
    nop                                           ; $6777: $00
    add hl, bc                                    ; $6778: $09
    ld e, $01                                     ; $6779: $1e $01
    dec b                                         ; $677b: $05
    add hl, bc                                    ; $677c: $09
    nop                                           ; $677d: $00
    ld d, [hl]                                    ; $677e: $56
    nop                                           ; $677f: $00
    nop                                           ; $6780: $00
    rla                                           ; $6781: $17
    nop                                           ; $6782: $00
    nop                                           ; $6783: $00
    inc e                                         ; $6784: $1c
    ld e, $00                                     ; $6785: $1e $00
    ld e, a                                       ; $6787: $5f
    ld bc, $1500                                  ; $6788: $01 $00 $15
    dec l                                         ; $678b: $2d
    nop                                           ; $678c: $00
    inc sp                                        ; $678d: $33
    add hl, bc                                    ; $678e: $09
    ld d, a                                       ; $678f: $57
    ld d, a                                       ; $6790: $57
    nop                                           ; $6791: $00
    nop                                           ; $6792: $00

jr_009_6793:
    nop                                           ; $6793: $00
    nop                                           ; $6794: $00
    nop                                           ; $6795: $00
    ld e, a                                       ; $6796: $5f
    ld bc, $0000                                  ; $6797: $01 $00 $00
    nop                                           ; $679a: $00
    nop                                           ; $679b: $00
    add hl, bc                                    ; $679c: $09
    nop                                           ; $679d: $00
    rla                                           ; $679e: $17
    dec b                                         ; $679f: $05
    inc b                                         ; $67a0: $04
    nop                                           ; $67a1: $00
    dec d                                         ; $67a2: $15
    ld bc, $3300                                  ; $67a3: $01 $00 $33
    inc bc                                        ; $67a6: $03
    ld [de], a                                    ; $67a7: $12
    nop                                           ; $67a8: $00
    nop                                           ; $67a9: $00
    nop                                           ; $67aa: $00
    nop                                           ; $67ab: $00
    nop                                           ; $67ac: $00
    nop                                           ; $67ad: $00

    db $09, $00, $00, $05, $64, $00, $09, $1f, $01, $05, $03, $00, $5f, $01, $00, $00
    db $00, $00, $56, $00, $00, $17, $00, $00, $15, $04, $00, $19, $00, $10, $1b, $02
    db $00, $13, $00, $64, $14, $00, $00, $15, $00, $00, $16, $65, $01, $52, $00, $00
    db $1b, $06, $00, $5f, $01, $00, $17, $65, $00, $15, $06, $00, $19, $00, $50, $1b
    db $06, $00, $15, $26, $00, $33, $0a, $b2, $15, $59, $00, $33, $0a, $b3, $15, $26
    db $00, $33, $0a, $b4, $15, $59, $00, $33, $0a, $b5, $15, $26, $00, $33, $0a, $b6
    db $15, $59, $00, $33, $0a, $b7, $15, $26, $00, $33, $0a, $b8, $15, $59, $00, $33
    db $0a, $b9, $15, $26, $00, $33, $0a, $ba, $55, $12, $00, $5f, $00, $00, $56, $00
    db $00, $17, $00, $00, $1b, $02, $00, $13, $00, $14, $14, $00, $00, $15, $00, $00
    db $16, $65, $01, $52, $00, $00, $1b, $06, $00, $5f, $01, $00, $6d, $00, $00, $15
    db $59, $00, $33, $0a, $bb, $15, $26, $00, $33, $0a, $bc, $38, $3a, $00, $15, $26
    db $00, $33, $0a, $bd, $38, $39, $00, $27, $00, $05, $2a, $01, $00, $27, $00, $05
    db $2a, $02, $00, $09, $f3, $00, $05, $05, $00

    inc a                                         ; $6877: $3c
    ld h, h                                       ; $6878: $64
    nop                                           ; $6879: $00
    inc a                                         ; $687a: $3c
    nop                                           ; $687b: $00
    nop                                           ; $687c: $00
    inc a                                         ; $687d: $3c
    ld e, [hl]                                    ; $687e: $5e
    nop                                           ; $687f: $00
    inc a                                         ; $6880: $3c
    ld e, e                                       ; $6881: $5b
    nop                                           ; $6882: $00

    db $09, $f3, $01, $05, $05, $00, $3c, $22, $00, $3c, $1d, $00, $3c, $1f, $00, $3c
    db $3d, $00, $09, $f3, $02, $05, $05, $00

    inc a                                         ; $689b: $3c
    ld d, b                                       ; $689c: $50
    nop                                           ; $689d: $00
    inc a                                         ; $689e: $3c
    ld c, h                                       ; $689f: $4c
    nop                                           ; $68a0: $00
    inc a                                         ; $68a1: $3c
    ld c, [hl]                                    ; $68a2: $4e
    nop                                           ; $68a3: $00
    inc a                                         ; $68a4: $3c
    ld d, e                                       ; $68a5: $53
    nop                                           ; $68a6: $00

    db $09, $f3, $03, $05, $05, $00

    inc a                                         ; $68ad: $3c
    inc l                                         ; $68ae: $2c
    nop                                           ; $68af: $00
    inc a                                         ; $68b0: $3c
    ld h, h                                       ; $68b1: $64
    nop                                           ; $68b2: $00
    inc a                                         ; $68b3: $3c
    ld h, d                                       ; $68b4: $62
    nop                                           ; $68b5: $00
    inc a                                         ; $68b6: $3c
    ld e, a                                       ; $68b7: $5f
    nop                                           ; $68b8: $00

    db $15, $59, $00, $33, $0a, $be, $15, $26, $00, $33, $0a, $bf, $7f, $09, $d9, $17
    db $65, $00, $15, $02, $00, $19, $00, $50, $1e, $65, $00, $57, $00, $00, $0f, $1f
    db $01, $00, $00, $00, $00, $00, $00

    add hl, bc                                    ; $68e0: $09
    nop                                           ; $68e1: $00
    ld bc, $0805                                  ; $68e2: $01 $05 $08
    nop                                           ; $68e5: $00
    ld d, [hl]                                    ; $68e6: $56
    nop                                           ; $68e7: $00
    nop                                           ; $68e8: $00
    rla                                           ; $68e9: $17
    nop                                           ; $68ea: $00
    nop                                           ; $68eb: $00
    inc e                                         ; $68ec: $1c
    ld h, l                                       ; $68ed: $65
    dec d                                         ; $68ee: $15
    dec d                                         ; $68ef: $15
    ld h, $00                                     ; $68f0: $26 $00
    inc sp                                        ; $68f2: $33
    ld a, [bc]                                    ; $68f3: $0a
    ret nz                                        ; $68f4: $c0

    ld d, a                                       ; $68f5: $57
    nop                                           ; $68f6: $00
    nop                                           ; $68f7: $00
    nop                                           ; $68f8: $00
    nop                                           ; $68f9: $00
    nop                                           ; $68fa: $00
    nop                                           ; $68fb: $00
    nop                                           ; $68fc: $00
    nop                                           ; $68fd: $00
    ld [bc], a                                    ; $68fe: $02
    nop                                           ; $68ff: $00
    nop                                           ; $6900: $00
    nop                                           ; $6901: $00
    ld [de], a                                    ; $6902: $12
    add hl, bc                                    ; $6903: $09
    scf                                           ; $6904: $37
    nop                                           ; $6905: $00
    dec b                                         ; $6906: $05
    inc bc                                        ; $6907: $03
    nop                                           ; $6908: $00
    ld d, h                                       ; $6909: $54
    nop                                           ; $690a: $00
    nop                                           ; $690b: $00
    inc bc                                        ; $690c: $03
    ld [bc], a                                    ; $690d: $02
    nop                                           ; $690e: $00
    ld d, h                                       ; $690f: $54
    nop                                           ; $6910: $00
    add hl, bc                                    ; $6911: $09
    nop                                           ; $6912: $00
    nop                                           ; $6913: $00
    nop                                           ; $6914: $00
    ld e, a                                       ; $6915: $5f
    nop                                           ; $6916: $00
    nop                                           ; $6917: $00
    add hl, bc                                    ; $6918: $09
    jr c, jr_009_691b                             ; $6919: $38 $00

jr_009_691b:
    dec b                                         ; $691b: $05
    dec d                                         ; $691c: $15
    nop                                           ; $691d: $00
    ld l, c                                       ; $691e: $69
    ld [hl-], a                                   ; $691f: $32
    nop                                           ; $6920: $00
    ld a, [bc]                                    ; $6921: $0a
    cp $00                                        ; $6922: $fe $00
    dec b                                         ; $6924: $05
    ld [bc], a                                    ; $6925: $02
    nop                                           ; $6926: $00
    inc bc                                        ; $6927: $03
    inc de                                        ; $6928: $13
    nop                                           ; $6929: $00
    ld l, c                                       ; $692a: $69
    inc sp                                        ; $692b: $33
    nop                                           ; $692c: $00
    ld a, [bc]                                    ; $692d: $0a
    cp $00                                        ; $692e: $fe $00
    dec b                                         ; $6930: $05
    ld [bc], a                                    ; $6931: $02
    nop                                           ; $6932: $00
    inc bc                                        ; $6933: $03
    rrca                                          ; $6934: $0f
    nop                                           ; $6935: $00
    ld l, c                                       ; $6936: $69
    inc [hl]                                      ; $6937: $34
    nop                                           ; $6938: $00
    ld a, [bc]                                    ; $6939: $0a
    cp $00                                        ; $693a: $fe $00
    dec b                                         ; $693c: $05
    ld [bc], a                                    ; $693d: $02
    nop                                           ; $693e: $00
    inc bc                                        ; $693f: $03
    dec bc                                        ; $6940: $0b
    nop                                           ; $6941: $00
    ld l, c                                       ; $6942: $69
    dec [hl]                                      ; $6943: $35
    nop                                           ; $6944: $00
    ld a, [bc]                                    ; $6945: $0a
    cp $00                                        ; $6946: $fe $00
    dec b                                         ; $6948: $05
    ld [bc], a                                    ; $6949: $02
    nop                                           ; $694a: $00
    inc bc                                        ; $694b: $03
    rlca                                          ; $694c: $07
    nop                                           ; $694d: $00
    ld l, c                                       ; $694e: $69
    ld [hl], $00                                  ; $694f: $36 $00
    ld a, [bc]                                    ; $6951: $0a
    cp $00                                        ; $6952: $fe $00
    dec b                                         ; $6954: $05
    ld [bc], a                                    ; $6955: $02
    nop                                           ; $6956: $00
    inc bc                                        ; $6957: $03
    inc bc                                        ; $6958: $03
    nop                                           ; $6959: $00
    ld e, a                                       ; $695a: $5f
    ld bc, $0000                                  ; $695b: $01 $00 $00
    nop                                           ; $695e: $00
    nop                                           ; $695f: $00
    rrca                                          ; $6960: $0f
    jr c, jr_009_6964                             ; $6961: $38 $01

    ld d, [hl]                                    ; $6963: $56

jr_009_6964:
    nop                                           ; $6964: $00
    nop                                           ; $6965: $00
    ld e, a                                       ; $6966: $5f
    ld bc, $2700                                  ; $6967: $01 $00 $27
    nop                                           ; $696a: $00
    ld [$097f], sp                                ; $696b: $08 $7f $09
    rst $10                                       ; $696e: $d7
    ld d, a                                       ; $696f: $57
    nop                                           ; $6970: $00
    nop                                           ; $6971: $00
    nop                                           ; $6972: $00
    nop                                           ; $6973: $00
    nop                                           ; $6974: $00
    ld bc, $0000                                  ; $6975: $01 $00 $00
    ld d, h                                       ; $6978: $54
    nop                                           ; $6979: $00
    ld bc, $0000                                  ; $697a: $01 $00 $00
    nop                                           ; $697d: $00
    ld bc, $0000                                  ; $697e: $01 $00 $00
    ld e, a                                       ; $6981: $5f
    nop                                           ; $6982: $00
    nop                                           ; $6983: $00
    add hl, bc                                    ; $6984: $09
    nop                                           ; $6985: $00
    ld e, c                                       ; $6986: $59
    dec b                                         ; $6987: $05
    inc e                                         ; $6988: $1c
    nop                                           ; $6989: $00
    add hl, bc                                    ; $698a: $09
    inc l                                         ; $698b: $2c
    ld bc, $0905                                  ; $698c: $01 $05 $09
    nop                                           ; $698f: $00
    ld d, [hl]                                    ; $6990: $56
    nop                                           ; $6991: $00
    nop                                           ; $6992: $00
    rla                                           ; $6993: $17
    nop                                           ; $6994: $00
    nop                                           ; $6995: $00
    dec de                                        ; $6996: $1b
    nop                                           ; $6997: $00
    nop                                           ; $6998: $00
    ld e, a                                       ; $6999: $5f
    ld bc, $1500                                  ; $699a: $01 $00 $15
    dec c                                         ; $699d: $0d
    nop                                           ; $699e: $00
    inc sp                                        ; $699f: $33
    nop                                           ; $69a0: $00
    ld e, e                                       ; $69a1: $5b
    ld d, a                                       ; $69a2: $57
    nop                                           ; $69a3: $00
    nop                                           ; $69a4: $00
    nop                                           ; $69a5: $00
    nop                                           ; $69a6: $00
    nop                                           ; $69a7: $00
    ld d, [hl]                                    ; $69a8: $56
    nop                                           ; $69a9: $00
    nop                                           ; $69aa: $00
    rla                                           ; $69ab: $17
    nop                                           ; $69ac: $00
    nop                                           ; $69ad: $00
    dec de                                        ; $69ae: $1b
    nop                                           ; $69af: $00
    nop                                           ; $69b0: $00
    ld e, a                                       ; $69b1: $5f
    ld bc, $1500                                  ; $69b2: $01 $00 $15
    dec c                                         ; $69b5: $0d
    nop                                           ; $69b6: $00
    inc sp                                        ; $69b7: $33
    nop                                           ; $69b8: $00
    ld d, a                                       ; $69b9: $57
    dec d                                         ; $69ba: $15
    ld e, c                                       ; $69bb: $59
    nop                                           ; $69bc: $00
    inc sp                                        ; $69bd: $33
    nop                                           ; $69be: $00
    ld e, b                                       ; $69bf: $58
    dec d                                         ; $69c0: $15
    dec c                                         ; $69c1: $0d
    nop                                           ; $69c2: $00
    inc sp                                        ; $69c3: $33
    nop                                           ; $69c4: $00
    ld e, c                                       ; $69c5: $59
    dec d                                         ; $69c6: $15
    ld e, c                                       ; $69c7: $59
    nop                                           ; $69c8: $00
    inc sp                                        ; $69c9: $33
    nop                                           ; $69ca: $00
    ld e, d                                       ; $69cb: $5a
    dec d                                         ; $69cc: $15
    dec c                                         ; $69cd: $0d
    nop                                           ; $69ce: $00
    inc sp                                        ; $69cf: $33
    nop                                           ; $69d0: $00
    ld e, e                                       ; $69d1: $5b
    rrca                                          ; $69d2: $0f
    inc l                                         ; $69d3: $2c
    ld bc, $0057                                  ; $69d4: $01 $57 $00
    nop                                           ; $69d7: $00
    nop                                           ; $69d8: $00
    nop                                           ; $69d9: $00
    nop                                           ; $69da: $00
    add hl, bc                                    ; $69db: $09
    nop                                           ; $69dc: $00
    ld bc, $1c05                                  ; $69dd: $01 $05 $1c
    nop                                           ; $69e0: $00
    add hl, bc                                    ; $69e1: $09
    inc l                                         ; $69e2: $2c
    ld bc, $0905                                  ; $69e3: $01 $05 $09
    nop                                           ; $69e6: $00
    ld d, [hl]                                    ; $69e7: $56
    nop                                           ; $69e8: $00
    nop                                           ; $69e9: $00
    rla                                           ; $69ea: $17
    nop                                           ; $69eb: $00
    nop                                           ; $69ec: $00
    dec de                                        ; $69ed: $1b
    nop                                           ; $69ee: $00
    nop                                           ; $69ef: $00
    ld e, a                                       ; $69f0: $5f
    ld bc, $1500                                  ; $69f1: $01 $00 $15
    dec c                                         ; $69f4: $0d
    nop                                           ; $69f5: $00
    inc sp                                        ; $69f6: $33
    nop                                           ; $69f7: $00
    ld e, e                                       ; $69f8: $5b
    ld d, a                                       ; $69f9: $57
    nop                                           ; $69fa: $00
    nop                                           ; $69fb: $00
    nop                                           ; $69fc: $00
    nop                                           ; $69fd: $00
    nop                                           ; $69fe: $00
    ld d, [hl]                                    ; $69ff: $56
    nop                                           ; $6a00: $00
    nop                                           ; $6a01: $00
    rla                                           ; $6a02: $17
    nop                                           ; $6a03: $00
    nop                                           ; $6a04: $00
    dec de                                        ; $6a05: $1b
    nop                                           ; $6a06: $00
    nop                                           ; $6a07: $00
    ld e, a                                       ; $6a08: $5f
    ld bc, $1500                                  ; $6a09: $01 $00 $15
    dec c                                         ; $6a0c: $0d
    nop                                           ; $6a0d: $00
    inc sp                                        ; $6a0e: $33
    nop                                           ; $6a0f: $00
    ld d, a                                       ; $6a10: $57
    dec d                                         ; $6a11: $15
    ld e, c                                       ; $6a12: $59
    nop                                           ; $6a13: $00
    inc sp                                        ; $6a14: $33
    nop                                           ; $6a15: $00
    ld e, b                                       ; $6a16: $58
    dec d                                         ; $6a17: $15
    dec c                                         ; $6a18: $0d
    nop                                           ; $6a19: $00
    inc sp                                        ; $6a1a: $33
    nop                                           ; $6a1b: $00
    ld e, c                                       ; $6a1c: $59
    dec d                                         ; $6a1d: $15
    ld e, c                                       ; $6a1e: $59
    nop                                           ; $6a1f: $00
    inc sp                                        ; $6a20: $33
    nop                                           ; $6a21: $00
    ld e, d                                       ; $6a22: $5a
    dec d                                         ; $6a23: $15
    dec c                                         ; $6a24: $0d
    nop                                           ; $6a25: $00
    inc sp                                        ; $6a26: $33
    nop                                           ; $6a27: $00
    ld e, e                                       ; $6a28: $5b
    rrca                                          ; $6a29: $0f
    inc l                                         ; $6a2a: $2c
    ld bc, $0057                                  ; $6a2b: $01 $57 $00
    nop                                           ; $6a2e: $00
    nop                                           ; $6a2f: $00
    nop                                           ; $6a30: $00
    nop                                           ; $6a31: $00
    add hl, bc                                    ; $6a32: $09
    nop                                           ; $6a33: $00
    nop                                           ; $6a34: $00
    dec b                                         ; $6a35: $05
    inc e                                         ; $6a36: $1c
    nop                                           ; $6a37: $00
    add hl, bc                                    ; $6a38: $09
    inc l                                         ; $6a39: $2c
    ld bc, $0905                                  ; $6a3a: $01 $05 $09
    nop                                           ; $6a3d: $00
    ld d, [hl]                                    ; $6a3e: $56
    nop                                           ; $6a3f: $00
    nop                                           ; $6a40: $00
    rla                                           ; $6a41: $17
    nop                                           ; $6a42: $00
    nop                                           ; $6a43: $00
    dec de                                        ; $6a44: $1b
    nop                                           ; $6a45: $00
    nop                                           ; $6a46: $00
    ld e, a                                       ; $6a47: $5f
    ld bc, $1500                                  ; $6a48: $01 $00 $15
    dec c                                         ; $6a4b: $0d
    nop                                           ; $6a4c: $00
    inc sp                                        ; $6a4d: $33
    nop                                           ; $6a4e: $00
    ld e, e                                       ; $6a4f: $5b
    ld d, a                                       ; $6a50: $57
    nop                                           ; $6a51: $00
    nop                                           ; $6a52: $00
    nop                                           ; $6a53: $00
    nop                                           ; $6a54: $00
    nop                                           ; $6a55: $00
    ld d, [hl]                                    ; $6a56: $56
    nop                                           ; $6a57: $00
    nop                                           ; $6a58: $00
    rla                                           ; $6a59: $17
    nop                                           ; $6a5a: $00
    nop                                           ; $6a5b: $00
    dec de                                        ; $6a5c: $1b
    nop                                           ; $6a5d: $00
    nop                                           ; $6a5e: $00
    ld e, a                                       ; $6a5f: $5f
    ld bc, $1500                                  ; $6a60: $01 $00 $15
    dec c                                         ; $6a63: $0d
    nop                                           ; $6a64: $00
    inc sp                                        ; $6a65: $33
    nop                                           ; $6a66: $00
    ld d, a                                       ; $6a67: $57
    dec d                                         ; $6a68: $15
    ld e, c                                       ; $6a69: $59
    nop                                           ; $6a6a: $00
    inc sp                                        ; $6a6b: $33
    nop                                           ; $6a6c: $00
    ld e, b                                       ; $6a6d: $58
    dec d                                         ; $6a6e: $15
    dec c                                         ; $6a6f: $0d
    nop                                           ; $6a70: $00
    inc sp                                        ; $6a71: $33
    nop                                           ; $6a72: $00
    ld e, c                                       ; $6a73: $59
    dec d                                         ; $6a74: $15
    ld e, c                                       ; $6a75: $59
    nop                                           ; $6a76: $00
    inc sp                                        ; $6a77: $33
    nop                                           ; $6a78: $00
    ld e, d                                       ; $6a79: $5a
    dec d                                         ; $6a7a: $15
    dec c                                         ; $6a7b: $0d
    nop                                           ; $6a7c: $00
    inc sp                                        ; $6a7d: $33
    nop                                           ; $6a7e: $00
    ld e, e                                       ; $6a7f: $5b
    rrca                                          ; $6a80: $0f
    inc l                                         ; $6a81: $2c
    ld bc, $0057                                  ; $6a82: $01 $57 $00
    nop                                           ; $6a85: $00
    nop                                           ; $6a86: $00
    nop                                           ; $6a87: $00
    nop                                           ; $6a88: $00
    ld d, [hl]                                    ; $6a89: $56
    nop                                           ; $6a8a: $00
    nop                                           ; $6a8b: $00
    rla                                           ; $6a8c: $17
    nop                                           ; $6a8d: $00
    nop                                           ; $6a8e: $00
    dec de                                        ; $6a8f: $1b
    nop                                           ; $6a90: $00
    nop                                           ; $6a91: $00
    ld e, a                                       ; $6a92: $5f
    ld bc, $1500                                  ; $6a93: $01 $00 $15
    dec c                                         ; $6a96: $0d
    nop                                           ; $6a97: $00
    inc sp                                        ; $6a98: $33
    nop                                           ; $6a99: $00
    ld e, e                                       ; $6a9a: $5b
    ld d, a                                       ; $6a9b: $57
    nop                                           ; $6a9c: $00
    nop                                           ; $6a9d: $00
    nop                                           ; $6a9e: $00
    nop                                           ; $6a9f: $00
    nop                                           ; $6aa0: $00
    ld e, a                                       ; $6aa1: $5f
    ld bc, $0000                                  ; $6aa2: $01 $00 $00
    nop                                           ; $6aa5: $00
    nop                                           ; $6aa6: $00

    db $02, $00, $00

    db $01                                        ; $6aaa: $01
    inc d                                         ; $6aab: $14

    db $5f, $00, $00, $13, $00, $3e, $68, $00, $40, $09, $00, $59, $05, $02, $00, $03
    db $03, $00, $5f, $01, $00, $00, $00, $00, $56, $00, $00, $13, $00, $1e, $14, $00
    db $5a, $15, $00, $00, $16, $0d, $00, $52, $00, $00, $1b, $02, $00, $5f, $01, $00
    db $6d, $00, $00, $17, $00, $00, $13, $00, $58, $71, $00, $2b, $1b, $06, $00, $15
    db $01, $00, $33, $00, $20, $17, $0d, $00, $13, $00, $7f, $71, $00, $3b, $2e, $15
    db $00, $1e, $0d, $00, $17, $00, $00, $1b, $00, $00, $15, $0e, $00, $33, $00, $5c
    db $17, $08, $00, $21, $25, $00, $27, $00, $20, $17, $00, $00, $1b, $04, $00, $1b
    db $09, $00, $27, $00, $14, $2e, $0f, $00, $21, $27, $00, $27, $00, $19, $1b, $00
    db $00, $15, $0e, $00, $33, $00, $5d, $17, $08, $00, $21, $26, $00, $27, $00, $0a
    db $17, $00, $00, $1b, $04, $00, $27, $00, $14, $2e, $0f, $00, $21, $27, $00, $27
    db $00, $19, $1b, $00, $00, $15, $0e, $00, $33, $00, $5e, $17, $08, $00, $21, $25
    db $00, $27, $00, $20, $15, $0e, $00, $33, $00, $63, $17, $00, $00, $1b, $04, $00
    db $27, $00, $14, $55, $0d, $00, $21, $06, $00, $27, $00, $0f, $2e, $0e, $00, $55
    db $0f, $00, $27, $00, $02, $55, $10, $00, $27, $00, $13, $55, $0e, $00, $27, $00
    db $14, $1b, $00, $00, $15, $0e, $00, $33, $00, $5f, $15, $59, $00, $33, $00, $60
    db $15, $0e, $00, $33, $00, $61, $38, $3d, $00, $15, $59, $00, $33, $00, $4c, $15
    db $0e, $00, $33, $00, $62, $62, $00, $00, $7a, $00, $00, $2c, $00, $00, $57, $00
    db $00, $00, $00, $00

    add hl, bc                                    ; $6bc0: $09
    nop                                           ; $6bc1: $00
    ld e, c                                       ; $6bc2: $59
    inc b                                         ; $6bc3: $04
    inc b                                         ; $6bc4: $04
    nop                                           ; $6bc5: $00
    dec d                                         ; $6bc6: $15
    ld c, $00                                     ; $6bc7: $0e $00
    inc sp                                        ; $6bc9: $33
    nop                                           ; $6bca: $00
    dec hl                                        ; $6bcb: $2b
    nop                                           ; $6bcc: $00
    nop                                           ; $6bcd: $00
    nop                                           ; $6bce: $00
    nop                                           ; $6bcf: $00
    nop                                           ; $6bd0: $00
    nop                                           ; $6bd1: $00
    ld bc, $0000                                  ; $6bd2: $01 $00 $00
    ld e, a                                       ; $6bd5: $5f
    nop                                           ; $6bd6: $00
    nop                                           ; $6bd7: $00
    add hl, bc                                    ; $6bd8: $09
    nop                                           ; $6bd9: $00
    ld bc, $0904                                  ; $6bda: $01 $04 $09
    nop                                           ; $6bdd: $00
    ld d, [hl]                                    ; $6bde: $56
    nop                                           ; $6bdf: $00
    nop                                           ; $6be0: $00
    rla                                           ; $6be1: $17
    nop                                           ; $6be2: $00
    nop                                           ; $6be3: $00
    dec de                                        ; $6be4: $1b
    nop                                           ; $6be5: $00
    nop                                           ; $6be6: $00
    ld e, a                                       ; $6be7: $5f
    ld bc, $1500                                  ; $6be8: $01 $00 $15
    rrca                                          ; $6beb: $0f
    nop                                           ; $6bec: $00
    inc sp                                        ; $6bed: $33
    nop                                           ; $6bee: $00
    ld [hl], b                                    ; $6bef: $70
    ld d, a                                       ; $6bf0: $57
    nop                                           ; $6bf1: $00
    nop                                           ; $6bf2: $00
    nop                                           ; $6bf3: $00
    nop                                           ; $6bf4: $00
    nop                                           ; $6bf5: $00
    add hl, bc                                    ; $6bf6: $09
    nop                                           ; $6bf7: $00
    ld bc, $3705                                  ; $6bf8: $01 $05 $37
    nop                                           ; $6bfb: $00
    add hl, bc                                    ; $6bfc: $09
    ld a, [bc]                                    ; $6bfd: $0a
    ld bc, $0905                                  ; $6bfe: $01 $05 $09
    nop                                           ; $6c01: $00
    ld d, [hl]                                    ; $6c02: $56
    nop                                           ; $6c03: $00
    nop                                           ; $6c04: $00
    rla                                           ; $6c05: $17
    nop                                           ; $6c06: $00
    nop                                           ; $6c07: $00
    dec de                                        ; $6c08: $1b
    nop                                           ; $6c09: $00
    nop                                           ; $6c0a: $00
    ld e, a                                       ; $6c0b: $5f
    ld bc, $1500                                  ; $6c0c: $01 $00 $15
    rrca                                          ; $6c0f: $0f
    nop                                           ; $6c10: $00
    inc sp                                        ; $6c11: $33
    nop                                           ; $6c12: $00
    dec hl                                        ; $6c13: $2b
    ld d, a                                       ; $6c14: $57
    nop                                           ; $6c15: $00
    nop                                           ; $6c16: $00
    nop                                           ; $6c17: $00
    nop                                           ; $6c18: $00
    nop                                           ; $6c19: $00
    add hl, bc                                    ; $6c1a: $09
    ld a, [bc]                                    ; $6c1b: $0a
    ld [bc], a                                    ; $6c1c: $02
    dec b                                         ; $6c1d: $05
    ld [$5600], sp                                ; $6c1e: $08 $00 $56
    nop                                           ; $6c21: $00
    nop                                           ; $6c22: $00
    rla                                           ; $6c23: $17
    nop                                           ; $6c24: $00
    nop                                           ; $6c25: $00
    dec de                                        ; $6c26: $1b
    nop                                           ; $6c27: $00
    nop                                           ; $6c28: $00
    ld e, a                                       ; $6c29: $5f
    ld bc, $1500                                  ; $6c2a: $01 $00 $15
    rrca                                          ; $6c2d: $0f
    nop                                           ; $6c2e: $00
    inc sp                                        ; $6c2f: $33
    nop                                           ; $6c30: $00
    ld l, a                                       ; $6c31: $6f
    inc bc                                        ; $6c32: $03
    dec bc                                        ; $6c33: $0b
    nop                                           ; $6c34: $00
    ld d, [hl]                                    ; $6c35: $56
    nop                                           ; $6c36: $00
    nop                                           ; $6c37: $00
    rla                                           ; $6c38: $17
    nop                                           ; $6c39: $00
    nop                                           ; $6c3a: $00
    dec de                                        ; $6c3b: $1b
    nop                                           ; $6c3c: $00
    nop                                           ; $6c3d: $00
    ld e, a                                       ; $6c3e: $5f
    ld bc, $1500                                  ; $6c3f: $01 $00 $15
    rrca                                          ; $6c42: $0f
    nop                                           ; $6c43: $00
    inc sp                                        ; $6c44: $33
    nop                                           ; $6c45: $00
    ld h, a                                       ; $6c46: $67
    dec d                                         ; $6c47: $15
    ld e, c                                       ; $6c48: $59
    nop                                           ; $6c49: $00
    inc sp                                        ; $6c4a: $33
    nop                                           ; $6c4b: $00
    ld l, b                                       ; $6c4c: $68
    dec d                                         ; $6c4d: $15
    rrca                                          ; $6c4e: $0f
    nop                                           ; $6c4f: $00
    inc sp                                        ; $6c50: $33
    nop                                           ; $6c51: $00
    ld l, c                                       ; $6c52: $69
    dec d                                         ; $6c53: $15
    rrca                                          ; $6c54: $0f
    nop                                           ; $6c55: $00
    ld d, c                                       ; $6c56: $51
    rlca                                          ; $6c57: $07
    inc sp                                        ; $6c58: $33
    add hl, bc                                    ; $6c59: $09
    cp $00                                        ; $6c5a: $fe $00
    dec b                                         ; $6c5c: $05
    dec b                                         ; $6c5d: $05
    nop                                           ; $6c5e: $00
    dec d                                         ; $6c5f: $15
    rrca                                          ; $6c60: $0f
    nop                                           ; $6c61: $00
    inc sp                                        ; $6c62: $33
    nop                                           ; $6c63: $00
    ld l, h                                       ; $6c64: $6c
    rrca                                          ; $6c65: $0f
    ld a, [bc]                                    ; $6c66: $0a
    ld [bc], a                                    ; $6c67: $02
    inc bc                                        ; $6c68: $03
    ld de, $2d00                                  ; $6c69: $11 $00 $2d
    nop                                           ; $6c6c: $00
    adc a                                         ; $6c6d: $8f
    add hl, bc                                    ; $6c6e: $09
    cp $01                                        ; $6c6f: $fe $01
    dec b                                         ; $6c71: $05
    add hl, bc                                    ; $6c72: $09
    nop                                           ; $6c73: $00
    ld b, b                                       ; $6c74: $40
    nop                                           ; $6c75: $00
    adc a                                         ; $6c76: $8f
    jr c, jr_009_6cb1                             ; $6c77: $38 $38

    nop                                           ; $6c79: $00
    dec d                                         ; $6c7a: $15
    ld e, c                                       ; $6c7b: $59
    nop                                           ; $6c7c: $00
    inc sp                                        ; $6c7d: $33
    nop                                           ; $6c7e: $00
    ld c, h                                       ; $6c7f: $4c
    dec d                                         ; $6c80: $15
    rrca                                          ; $6c81: $0f
    nop                                           ; $6c82: $00
    inc sp                                        ; $6c83: $33
    nop                                           ; $6c84: $00
    ld l, d                                       ; $6c85: $6a
    rrca                                          ; $6c86: $0f
    ld a, [bc]                                    ; $6c87: $0a
    ld bc, $0603                                  ; $6c88: $01 $03 $06
    nop                                           ; $6c8b: $00
    dec d                                         ; $6c8c: $15
    ld e, c                                       ; $6c8d: $59
    nop                                           ; $6c8e: $00
    inc sp                                        ; $6c8f: $33
    nop                                           ; $6c90: $00
    ld l, e                                       ; $6c91: $6b
    dec d                                         ; $6c92: $15
    rrca                                          ; $6c93: $0f
    nop                                           ; $6c94: $00
    inc sp                                        ; $6c95: $33
    nop                                           ; $6c96: $00
    ld l, h                                       ; $6c97: $6c
    rrca                                          ; $6c98: $0f
    ld a, [bc]                                    ; $6c99: $0a
    ld [bc], a                                    ; $6c9a: $02
    ld d, a                                       ; $6c9b: $57
    nop                                           ; $6c9c: $00
    nop                                           ; $6c9d: $00
    nop                                           ; $6c9e: $00
    nop                                           ; $6c9f: $00
    nop                                           ; $6ca0: $00
    ld e, a                                       ; $6ca1: $5f
    ld bc, $0000                                  ; $6ca2: $01 $00 $00
    nop                                           ; $6ca5: $00
    nop                                           ; $6ca6: $00
    ld [bc], a                                    ; $6ca7: $02
    nop                                           ; $6ca8: $00
    nop                                           ; $6ca9: $00
    nop                                           ; $6caa: $00
    cp d                                          ; $6cab: $ba
    ld e, a                                       ; $6cac: $5f
    nop                                           ; $6cad: $00
    nop                                           ; $6cae: $00
    add hl, bc                                    ; $6caf: $09
    nop                                           ; $6cb0: $00

jr_009_6cb1:
    ld bc, $0205                                  ; $6cb1: $01 $05 $02
    nop                                           ; $6cb4: $00
    inc bc                                        ; $6cb5: $03
    rlca                                          ; $6cb6: $07
    nop                                           ; $6cb7: $00
    add hl, bc                                    ; $6cb8: $09
    add hl, sp                                    ; $6cb9: $39
    nop                                           ; $6cba: $00
    dec b                                         ; $6cbb: $05
    inc bc                                        ; $6cbc: $03
    nop                                           ; $6cbd: $00
    ld d, [hl]                                    ; $6cbe: $56
    nop                                           ; $6cbf: $00
    nop                                           ; $6cc0: $00
    inc bc                                        ; $6cc1: $03
    dec hl                                        ; $6cc2: $2b
    nop                                           ; $6cc3: $00
    ld e, a                                       ; $6cc4: $5f
    ld bc, $0000                                  ; $6cc5: $01 $00 $00
    nop                                           ; $6cc8: $00
    nop                                           ; $6cc9: $00
    add hl, bc                                    ; $6cca: $09
    inc de                                        ; $6ccb: $13
    ld bc, $0305                                  ; $6ccc: $01 $05 $03
    nop                                           ; $6ccf: $00
    ld e, a                                       ; $6cd0: $5f
    ld bc, $0000                                  ; $6cd1: $01 $00 $00
    nop                                           ; $6cd4: $00
    nop                                           ; $6cd5: $00
    rrca                                          ; $6cd6: $0f
    inc de                                        ; $6cd7: $13
    ld bc, $0056                                  ; $6cd8: $01 $56 $00
    nop                                           ; $6cdb: $00
    rla                                           ; $6cdc: $17
    nop                                           ; $6cdd: $00
    nop                                           ; $6cde: $00
    dec de                                        ; $6cdf: $1b
    nop                                           ; $6ce0: $00
    nop                                           ; $6ce1: $00
    inc de                                        ; $6ce2: $13
    nop                                           ; $6ce3: $00
    ld b, l                                       ; $6ce4: $45
    inc d                                         ; $6ce5: $14
    nop                                           ; $6ce6: $00
    ld e, [hl]                                    ; $6ce7: $5e
    dec d                                         ; $6ce8: $15
    nop                                           ; $6ce9: $00
    nop                                           ; $6cea: $00
    ld d, $0e                                     ; $6ceb: $16 $0e
    nop                                           ; $6ced: $00
    ld d, d                                       ; $6cee: $52
    nop                                           ; $6cef: $00
    nop                                           ; $6cf0: $00
    ld e, a                                       ; $6cf1: $5f
    ld bc, $1700                                  ; $6cf2: $01 $00 $17
    nop                                           ; $6cf5: $00
    nop                                           ; $6cf6: $00
    dec d                                         ; $6cf7: $15
    ld b, $00                                     ; $6cf8: $06 $00
    add hl, de                                    ; $6cfa: $19
    nop                                           ; $6cfb: $00
    inc l                                         ; $6cfc: $2c
    dec de                                        ; $6cfd: $1b
    nop                                           ; $6cfe: $00
    nop                                           ; $6cff: $00
    dec d                                         ; $6d00: $15
    ld d, $00                                     ; $6d01: $16 $00
    inc sp                                        ; $6d03: $33
    nop                                           ; $6d04: $00
    ld [hl], c                                    ; $6d05: $71
    dec d                                         ; $6d06: $15
    ld e, c                                       ; $6d07: $59
    nop                                           ; $6d08: $00
    inc sp                                        ; $6d09: $33
    nop                                           ; $6d0a: $00
    ld [hl], d                                    ; $6d0b: $72
    dec d                                         ; $6d0c: $15
    ld d, $00                                     ; $6d0d: $16 $00
    inc sp                                        ; $6d0f: $33
    nop                                           ; $6d10: $00
    ld [hl], e                                    ; $6d11: $73
    dec d                                         ; $6d12: $15
    ld e, c                                       ; $6d13: $59
    nop                                           ; $6d14: $00
    inc sp                                        ; $6d15: $33
    nop                                           ; $6d16: $00
    ld [hl], h                                    ; $6d17: $74
    dec d                                         ; $6d18: $15
    ld d, $00                                     ; $6d19: $16 $00
    inc sp                                        ; $6d1b: $33
    nop                                           ; $6d1c: $00
    ld [hl], l                                    ; $6d1d: $75
    daa                                           ; $6d1e: $27
    nop                                           ; $6d1f: $00
    ld a, [bc]                                    ; $6d20: $0a
    rla                                           ; $6d21: $17
    ld c, $00                                     ; $6d22: $0e $00
    dec d                                         ; $6d24: $15
    ld [bc], a                                    ; $6d25: $02
    nop                                           ; $6d26: $00
    add hl, de                                    ; $6d27: $19
    nop                                           ; $6d28: $00
    inc l                                         ; $6d29: $2c
    dec de                                        ; $6d2a: $1b
    inc b                                         ; $6d2b: $04
    nop                                           ; $6d2c: $00
    dec d                                         ; $6d2d: $15
    inc b                                         ; $6d2e: $04
    nop                                           ; $6d2f: $00
    add hl, de                                    ; $6d30: $19
    nop                                           ; $6d31: $00
    jr nz, jr_009_6d4f                            ; $6d32: $20 $1b

    inc b                                         ; $6d34: $04
    nop                                           ; $6d35: $00
    ld l, $15                                     ; $6d36: $2e $15
    nop                                           ; $6d38: $00
    ld e, $0e                                     ; $6d39: $1e $0e
    nop                                           ; $6d3b: $00
    ld d, a                                       ; $6d3c: $57
    nop                                           ; $6d3d: $00
    nop                                           ; $6d3e: $00
    nop                                           ; $6d3f: $00
    nop                                           ; $6d40: $00
    nop                                           ; $6d41: $00
    dec hl                                        ; $6d42: $2b
    nop                                           ; $6d43: $00
    nop                                           ; $6d44: $00
    add hl, bc                                    ; $6d45: $09
    cp $00                                        ; $6d46: $fe $00
    dec b                                         ; $6d48: $05
    inc b                                         ; $6d49: $04
    nop                                           ; $6d4a: $00
    ld e, a                                       ; $6d4b: $5f
    ld bc, $5700                                  ; $6d4c: $01 $00 $57

jr_009_6d4f:
    nop                                           ; $6d4f: $00
    nop                                           ; $6d50: $00
    nop                                           ; $6d51: $00
    nop                                           ; $6d52: $00
    nop                                           ; $6d53: $00
    rrca                                          ; $6d54: $0f
    add hl, sp                                    ; $6d55: $39
    ld bc, $015f                                  ; $6d56: $01 $5f $01
    nop                                           ; $6d59: $00
    daa                                           ; $6d5a: $27
    nop                                           ; $6d5b: $00
    ld [$097f], sp                                ; $6d5c: $08 $7f $09
    push de                                       ; $6d5f: $d5
    ld d, a                                       ; $6d60: $57
    nop                                           ; $6d61: $00
    nop                                           ; $6d62: $00
    nop                                           ; $6d63: $00
    nop                                           ; $6d64: $00
    nop                                           ; $6d65: $00
    add hl, bc                                    ; $6d66: $09
    scf                                           ; $6d67: $37
    nop                                           ; $6d68: $00
    dec b                                         ; $6d69: $05
    inc bc                                        ; $6d6a: $03
    nop                                           ; $6d6b: $00
    ld d, h                                       ; $6d6c: $54
    nop                                           ; $6d6d: $00
    inc bc                                        ; $6d6e: $03
    inc bc                                        ; $6d6f: $03
    ld [bc], a                                    ; $6d70: $02
    nop                                           ; $6d71: $00
    ld d, h                                       ; $6d72: $54
    nop                                           ; $6d73: $00
    inc b                                         ; $6d74: $04
    nop                                           ; $6d75: $00
    nop                                           ; $6d76: $00
    nop                                           ; $6d77: $00
    ld bc, $0000                                  ; $6d78: $01 $00 $00
    ld d, h                                       ; $6d7b: $54
    nop                                           ; $6d7c: $00
    ld [bc], a                                    ; $6d7d: $02
    nop                                           ; $6d7e: $00
    nop                                           ; $6d7f: $00
    nop                                           ; $6d80: $00

    db $08, $00, $00

    nop                                           ; $6d84: $00
    ld [$e001], a                                 ; $6d85: $ea $01 $e0
    ld [bc], a                                    ; $6d88: $02
    db $d3                                        ; $6d89: $d3
    inc bc                                        ; $6d8a: $03
    add $04                                       ; $6d8b: $c6 $04
    ld [hl], c                                    ; $6d8d: $71
    dec b                                         ; $6d8e: $05
    inc e                                         ; $6d8f: $1c

    db $05, $2e, $5f, $00, $00, $09, $00, $59, $05, $05, $00

    ld e, a                                       ; $6d9b: $5f
    ld bc, $1500                                  ; $6d9c: $01 $00 $15
    ld [bc], a                                    ; $6d9f: $02
    nop                                           ; $6da0: $00
    inc sp                                        ; $6da1: $33
    nop                                           ; $6da2: $00
    ld h, $00                                     ; $6da3: $26 $00
    nop                                           ; $6da5: $00
    nop                                           ; $6da6: $00

    db $09, $00, $00, $05, $23, $00, $09, $0e, $01, $05, $02, $00

    nop                                           ; $6db3: $00
    nop                                           ; $6db4: $00
    nop                                           ; $6db5: $00

    db $56, $00, $00, $17, $00, $00, $1b, $00, $00, $5f, $01, $00, $15, $01, $00, $33
    db $00, $2b, $15, $02, $00, $33, $00, $2c, $15, $01, $00, $33, $00, $2d, $15, $02
    db $00, $33, $00, $2e, $15, $01, $00, $33, $00, $2f, $15, $02, $00, $33, $00, $30
    db $5e, $00, $00, $17, $15, $00, $15, $00, $00, $19, $00, $1e, $17, $00, $00, $15
    db $00, $00, $19, $00, $1e, $17, $0d, $00, $5e, $01, $00, $15, $00, $00, $19, $00
    db $1e, $62, $51, $00, $0f, $0e, $01, $28, $09, $00

    nop                                           ; $6e10: $00
    nop                                           ; $6e11: $00
    nop                                           ; $6e12: $00
    add hl, bc                                    ; $6e13: $09
    nop                                           ; $6e14: $00
    ld e, [hl]                                    ; $6e15: $5e
    dec b                                         ; $6e16: $05
    jr nz, jr_009_6e19                            ; $6e17: $20 $00

jr_009_6e19:
    add hl, bc                                    ; $6e19: $09
    ld de, $0501                                  ; $6e1a: $11 $01 $05
    inc bc                                        ; $6e1d: $03
    nop                                           ; $6e1e: $00
    ld e, a                                       ; $6e1f: $5f
    ld bc, $0000                                  ; $6e20: $01 $00 $00
    nop                                           ; $6e23: $00
    nop                                           ; $6e24: $00
    ld d, [hl]                                    ; $6e25: $56
    nop                                           ; $6e26: $00
    nop                                           ; $6e27: $00
    rla                                           ; $6e28: $17
    nop                                           ; $6e29: $00
    nop                                           ; $6e2a: $00
    dec de                                        ; $6e2b: $1b
    nop                                           ; $6e2c: $00
    nop                                           ; $6e2d: $00
    ld e, a                                       ; $6e2e: $5f
    ld bc, $1500                                  ; $6e2f: $01 $00 $15
    ld [bc], a                                    ; $6e32: $02
    nop                                           ; $6e33: $00
    inc sp                                        ; $6e34: $33
    inc bc                                        ; $6e35: $03
    ld [hl+], a                                   ; $6e36: $22
    dec d                                         ; $6e37: $15
    dec l                                         ; $6e38: $2d
    nop                                           ; $6e39: $00
    inc sp                                        ; $6e3a: $33
    inc bc                                        ; $6e3b: $03
    inc hl                                        ; $6e3c: $23
    dec d                                         ; $6e3d: $15
    ld [bc], a                                    ; $6e3e: $02
    nop                                           ; $6e3f: $00
    inc sp                                        ; $6e40: $33
    inc bc                                        ; $6e41: $03
    inc h                                         ; $6e42: $24
    dec d                                         ; $6e43: $15
    dec l                                         ; $6e44: $2d
    nop                                           ; $6e45: $00
    inc sp                                        ; $6e46: $33
    inc bc                                        ; $6e47: $03
    dec h                                         ; $6e48: $25
    dec d                                         ; $6e49: $15
    ld [bc], a                                    ; $6e4a: $02
    nop                                           ; $6e4b: $00
    inc sp                                        ; $6e4c: $33
    inc bc                                        ; $6e4d: $03
    ld h, $5e                                     ; $6e4e: $26 $5e
    nop                                           ; $6e50: $00
    nop                                           ; $6e51: $00
    rla                                           ; $6e52: $17
    dec d                                         ; $6e53: $15
    nop                                           ; $6e54: $00
    dec d                                         ; $6e55: $15
    nop                                           ; $6e56: $00
    nop                                           ; $6e57: $00
    add hl, de                                    ; $6e58: $19
    nop                                           ; $6e59: $00
    ld e, $17                                     ; $6e5a: $1e $17
    nop                                           ; $6e5c: $00
    nop                                           ; $6e5d: $00
    dec d                                         ; $6e5e: $15
    nop                                           ; $6e5f: $00
    nop                                           ; $6e60: $00
    add hl, de                                    ; $6e61: $19
    nop                                           ; $6e62: $00
    ld e, $5e                                     ; $6e63: $1e $5e
    ld bc, $6200                                  ; $6e65: $01 $00 $62
    jr jr_009_6e6a                                ; $6e68: $18 $00

jr_009_6e6a:
    ld d, a                                       ; $6e6a: $57
    nop                                           ; $6e6b: $00
    nop                                           ; $6e6c: $00
    rrca                                          ; $6e6d: $0f
    ld de, $2801                                  ; $6e6e: $11 $01 $28
    add hl, bc                                    ; $6e71: $09
    nop                                           ; $6e72: $00
    nop                                           ; $6e73: $00
    nop                                           ; $6e74: $00
    nop                                           ; $6e75: $00
    ld e, a                                       ; $6e76: $5f
    ld bc, $0000                                  ; $6e77: $01 $00 $00
    nop                                           ; $6e7a: $00
    nop                                           ; $6e7b: $00
    ld e, a                                       ; $6e7c: $5f
    nop                                           ; $6e7d: $00
    nop                                           ; $6e7e: $00
    add hl, bc                                    ; $6e7f: $09
    nop                                           ; $6e80: $00
    ld e, c                                       ; $6e81: $59
    dec b                                         ; $6e82: $05
    rlca                                          ; $6e83: $07
    nop                                           ; $6e84: $00
    ld d, [hl]                                    ; $6e85: $56
    nop                                           ; $6e86: $00
    nop                                           ; $6e87: $00
    ld e, a                                       ; $6e88: $5f
    ld bc, $1500                                  ; $6e89: $01 $00 $15
    ld c, d                                       ; $6e8c: $4a
    nop                                           ; $6e8d: $00
    inc sp                                        ; $6e8e: $33
    nop                                           ; $6e8f: $00
    inc [hl]                                      ; $6e90: $34
    ld d, a                                       ; $6e91: $57
    nop                                           ; $6e92: $00
    nop                                           ; $6e93: $00
    nop                                           ; $6e94: $00
    nop                                           ; $6e95: $00
    nop                                           ; $6e96: $00
    add hl, bc                                    ; $6e97: $09
    nop                                           ; $6e98: $00
    ld d, c                                       ; $6e99: $51
    dec b                                         ; $6e9a: $05
    rrca                                          ; $6e9b: $0f
    nop                                           ; $6e9c: $00
    ld d, [hl]                                    ; $6e9d: $56
    nop                                           ; $6e9e: $00
    nop                                           ; $6e9f: $00
    ld e, a                                       ; $6ea0: $5f
    ld bc, $0900                                  ; $6ea1: $01 $00 $09
    rlca                                          ; $6ea4: $07
    nop                                           ; $6ea5: $00
    dec b                                         ; $6ea6: $05
    ld b, $00                                     ; $6ea7: $06 $00
    dec d                                         ; $6ea9: $15
    ld c, d                                       ; $6eaa: $4a
    nop                                           ; $6eab: $00
    inc sp                                        ; $6eac: $33
    nop                                           ; $6ead: $00
    inc [hl]                                      ; $6eae: $34
    rrca                                          ; $6eaf: $0f
    rlca                                          ; $6eb0: $07
    ld bc, $0057                                  ; $6eb1: $01 $57 $00
    nop                                           ; $6eb4: $00
    inc bc                                        ; $6eb5: $03
    dec b                                         ; $6eb6: $05
    nop                                           ; $6eb7: $00
    dec d                                         ; $6eb8: $15
    ld c, d                                       ; $6eb9: $4a
    nop                                           ; $6eba: $00
    inc sp                                        ; $6ebb: $33
    nop                                           ; $6ebc: $00
    dec [hl]                                      ; $6ebd: $35
    rrca                                          ; $6ebe: $0f
    rlca                                          ; $6ebf: $07
    nop                                           ; $6ec0: $00
    ld d, a                                       ; $6ec1: $57
    nop                                           ; $6ec2: $00
    nop                                           ; $6ec3: $00
    nop                                           ; $6ec4: $00
    nop                                           ; $6ec5: $00
    nop                                           ; $6ec6: $00
    add hl, bc                                    ; $6ec7: $09
    nop                                           ; $6ec8: $00
    nop                                           ; $6ec9: $00
    dec b                                         ; $6eca: $05
    rlca                                          ; $6ecb: $07
    nop                                           ; $6ecc: $00
    ld d, [hl]                                    ; $6ecd: $56
    nop                                           ; $6ece: $00
    nop                                           ; $6ecf: $00
    ld e, a                                       ; $6ed0: $5f
    ld bc, $1500                                  ; $6ed1: $01 $00 $15
    ld c, d                                       ; $6ed4: $4a
    nop                                           ; $6ed5: $00
    inc sp                                        ; $6ed6: $33
    nop                                           ; $6ed7: $00
    daa                                           ; $6ed8: $27
    ld d, a                                       ; $6ed9: $57
    nop                                           ; $6eda: $00
    nop                                           ; $6edb: $00
    nop                                           ; $6edc: $00
    nop                                           ; $6edd: $00
    nop                                           ; $6ede: $00
    add hl, bc                                    ; $6edf: $09
    nop                                           ; $6ee0: $00
    ld d, c                                       ; $6ee1: $51
    dec b                                         ; $6ee2: $05
    rrca                                          ; $6ee3: $0f
    nop                                           ; $6ee4: $00
    ld d, [hl]                                    ; $6ee5: $56
    nop                                           ; $6ee6: $00
    nop                                           ; $6ee7: $00
    ld e, a                                       ; $6ee8: $5f
    ld bc, $0900                                  ; $6ee9: $01 $00 $09
    rlca                                          ; $6eec: $07
    nop                                           ; $6eed: $00
    dec b                                         ; $6eee: $05
    ld b, $00                                     ; $6eef: $06 $00
    dec d                                         ; $6ef1: $15
    ld c, d                                       ; $6ef2: $4a
    nop                                           ; $6ef3: $00
    inc sp                                        ; $6ef4: $33
    nop                                           ; $6ef5: $00
    inc [hl]                                      ; $6ef6: $34
    rrca                                          ; $6ef7: $0f
    rlca                                          ; $6ef8: $07
    ld bc, $0057                                  ; $6ef9: $01 $57 $00
    nop                                           ; $6efc: $00
    inc bc                                        ; $6efd: $03
    dec b                                         ; $6efe: $05
    nop                                           ; $6eff: $00
    dec d                                         ; $6f00: $15
    ld c, d                                       ; $6f01: $4a
    nop                                           ; $6f02: $00
    inc sp                                        ; $6f03: $33
    nop                                           ; $6f04: $00
    dec [hl]                                      ; $6f05: $35
    rrca                                          ; $6f06: $0f
    rlca                                          ; $6f07: $07
    nop                                           ; $6f08: $00
    ld d, a                                       ; $6f09: $57
    nop                                           ; $6f0a: $00
    nop                                           ; $6f0b: $00
    nop                                           ; $6f0c: $00
    nop                                           ; $6f0d: $00
    nop                                           ; $6f0e: $00
    add hl, bc                                    ; $6f0f: $09
    nop                                           ; $6f10: $00
    ld bc, $0705                                  ; $6f11: $01 $05 $07
    nop                                           ; $6f14: $00
    ld d, [hl]                                    ; $6f15: $56
    nop                                           ; $6f16: $00
    nop                                           ; $6f17: $00
    ld e, a                                       ; $6f18: $5f
    ld bc, $1500                                  ; $6f19: $01 $00 $15
    ld c, d                                       ; $6f1c: $4a
    nop                                           ; $6f1d: $00
    inc sp                                        ; $6f1e: $33
    nop                                           ; $6f1f: $00
    ld b, l                                       ; $6f20: $45
    ld d, a                                       ; $6f21: $57
    nop                                           ; $6f22: $00
    nop                                           ; $6f23: $00
    nop                                           ; $6f24: $00
    nop                                           ; $6f25: $00
    nop                                           ; $6f26: $00
    add hl, bc                                    ; $6f27: $09
    nop                                           ; $6f28: $00
    jr jr_009_6f30                                ; $6f29: $18 $05

    rrca                                          ; $6f2b: $0f
    nop                                           ; $6f2c: $00
    ld d, [hl]                                    ; $6f2d: $56
    nop                                           ; $6f2e: $00
    nop                                           ; $6f2f: $00

jr_009_6f30:
    ld e, a                                       ; $6f30: $5f
    ld bc, $0900                                  ; $6f31: $01 $00 $09
    inc bc                                        ; $6f34: $03
    nop                                           ; $6f35: $00
    dec b                                         ; $6f36: $05
    ld b, $00                                     ; $6f37: $06 $00
    dec d                                         ; $6f39: $15
    ld c, d                                       ; $6f3a: $4a
    nop                                           ; $6f3b: $00
    inc sp                                        ; $6f3c: $33
    inc bc                                        ; $6f3d: $03
    inc sp                                        ; $6f3e: $33
    rrca                                          ; $6f3f: $0f
    inc bc                                        ; $6f40: $03
    ld bc, $0057                                  ; $6f41: $01 $57 $00
    nop                                           ; $6f44: $00
    inc bc                                        ; $6f45: $03
    dec b                                         ; $6f46: $05
    nop                                           ; $6f47: $00
    dec d                                         ; $6f48: $15
    ld c, d                                       ; $6f49: $4a
    nop                                           ; $6f4a: $00
    inc sp                                        ; $6f4b: $33
    inc bc                                        ; $6f4c: $03
    add hl, sp                                    ; $6f4d: $39
    rrca                                          ; $6f4e: $0f
    inc bc                                        ; $6f4f: $03
    nop                                           ; $6f50: $00
    ld d, a                                       ; $6f51: $57
    nop                                           ; $6f52: $00
    nop                                           ; $6f53: $00
    nop                                           ; $6f54: $00
    nop                                           ; $6f55: $00
    nop                                           ; $6f56: $00
    add hl, bc                                    ; $6f57: $09
    nop                                           ; $6f58: $00
    rla                                           ; $6f59: $17
    dec b                                         ; $6f5a: $05
    rlca                                          ; $6f5b: $07
    nop                                           ; $6f5c: $00
    ld d, [hl]                                    ; $6f5d: $56
    nop                                           ; $6f5e: $00
    nop                                           ; $6f5f: $00
    ld e, a                                       ; $6f60: $5f
    ld bc, $1500                                  ; $6f61: $01 $00 $15
    ld c, d                                       ; $6f64: $4a
    nop                                           ; $6f65: $00
    inc sp                                        ; $6f66: $33
    inc bc                                        ; $6f67: $03
    add hl, hl                                    ; $6f68: $29
    ld d, a                                       ; $6f69: $57
    nop                                           ; $6f6a: $00
    nop                                           ; $6f6b: $00
    nop                                           ; $6f6c: $00
    nop                                           ; $6f6d: $00
    nop                                           ; $6f6e: $00
    nop                                           ; $6f6f: $00
    nop                                           ; $6f70: $00
    nop                                           ; $6f71: $00
    ld e, a                                       ; $6f72: $5f
    nop                                           ; $6f73: $00
    nop                                           ; $6f74: $00
    add hl, bc                                    ; $6f75: $09
    nop                                           ; $6f76: $00
    ld e, c                                       ; $6f77: $59
    dec b                                         ; $6f78: $05
    rlca                                          ; $6f79: $07
    nop                                           ; $6f7a: $00
    ld d, [hl]                                    ; $6f7b: $56
    nop                                           ; $6f7c: $00
    nop                                           ; $6f7d: $00
    ld e, a                                       ; $6f7e: $5f
    ld bc, $1500                                  ; $6f7f: $01 $00 $15
    ld c, h                                       ; $6f82: $4c
    nop                                           ; $6f83: $00
    inc sp                                        ; $6f84: $33
    nop                                           ; $6f85: $00
    ld [hl], $57                                  ; $6f86: $36 $57
    nop                                           ; $6f88: $00
    nop                                           ; $6f89: $00
    nop                                           ; $6f8a: $00
    nop                                           ; $6f8b: $00
    nop                                           ; $6f8c: $00
    add hl, bc                                    ; $6f8d: $09
    nop                                           ; $6f8e: $00
    ld d, c                                       ; $6f8f: $51
    dec b                                         ; $6f90: $05
    rrca                                          ; $6f91: $0f
    nop                                           ; $6f92: $00
    ld d, [hl]                                    ; $6f93: $56
    nop                                           ; $6f94: $00
    nop                                           ; $6f95: $00
    ld e, a                                       ; $6f96: $5f
    ld bc, $0900                                  ; $6f97: $01 $00 $09
    ld [$0500], sp                                ; $6f9a: $08 $00 $05
    ld b, $00                                     ; $6f9d: $06 $00
    dec d                                         ; $6f9f: $15
    ld c, h                                       ; $6fa0: $4c
    nop                                           ; $6fa1: $00
    inc sp                                        ; $6fa2: $33
    nop                                           ; $6fa3: $00
    ld [hl], $0f                                  ; $6fa4: $36 $0f
    ld [$5701], sp                                ; $6fa6: $08 $01 $57
    nop                                           ; $6fa9: $00
    nop                                           ; $6faa: $00
    inc bc                                        ; $6fab: $03
    dec b                                         ; $6fac: $05
    nop                                           ; $6fad: $00
    dec d                                         ; $6fae: $15
    ld c, h                                       ; $6faf: $4c
    nop                                           ; $6fb0: $00
    inc sp                                        ; $6fb1: $33
    nop                                           ; $6fb2: $00
    scf                                           ; $6fb3: $37
    rrca                                          ; $6fb4: $0f
    ld [$5700], sp                                ; $6fb5: $08 $00 $57
    nop                                           ; $6fb8: $00
    nop                                           ; $6fb9: $00
    nop                                           ; $6fba: $00
    nop                                           ; $6fbb: $00
    nop                                           ; $6fbc: $00
    add hl, bc                                    ; $6fbd: $09
    nop                                           ; $6fbe: $00
    nop                                           ; $6fbf: $00
    dec b                                         ; $6fc0: $05
    rlca                                          ; $6fc1: $07
    nop                                           ; $6fc2: $00
    ld d, [hl]                                    ; $6fc3: $56
    nop                                           ; $6fc4: $00
    nop                                           ; $6fc5: $00
    ld e, a                                       ; $6fc6: $5f
    ld bc, $1500                                  ; $6fc7: $01 $00 $15
    ld c, h                                       ; $6fca: $4c
    nop                                           ; $6fcb: $00
    inc sp                                        ; $6fcc: $33
    nop                                           ; $6fcd: $00
    jr z, jr_009_7027                             ; $6fce: $28 $57

    nop                                           ; $6fd0: $00
    nop                                           ; $6fd1: $00
    nop                                           ; $6fd2: $00
    nop                                           ; $6fd3: $00
    nop                                           ; $6fd4: $00
    add hl, bc                                    ; $6fd5: $09
    nop                                           ; $6fd6: $00
    ld d, c                                       ; $6fd7: $51
    dec b                                         ; $6fd8: $05
    rrca                                          ; $6fd9: $0f
    nop                                           ; $6fda: $00
    ld d, [hl]                                    ; $6fdb: $56
    nop                                           ; $6fdc: $00
    nop                                           ; $6fdd: $00
    ld e, a                                       ; $6fde: $5f
    ld bc, $0900                                  ; $6fdf: $01 $00 $09
    ld [$0500], sp                                ; $6fe2: $08 $00 $05
    ld b, $00                                     ; $6fe5: $06 $00
    dec d                                         ; $6fe7: $15
    ld c, h                                       ; $6fe8: $4c
    nop                                           ; $6fe9: $00
    inc sp                                        ; $6fea: $33
    nop                                           ; $6feb: $00
    ld [hl], $0f                                  ; $6fec: $36 $0f
    ld [$5701], sp                                ; $6fee: $08 $01 $57
    nop                                           ; $6ff1: $00
    nop                                           ; $6ff2: $00
    inc bc                                        ; $6ff3: $03
    dec b                                         ; $6ff4: $05
    nop                                           ; $6ff5: $00
    dec d                                         ; $6ff6: $15
    ld c, h                                       ; $6ff7: $4c
    nop                                           ; $6ff8: $00
    inc sp                                        ; $6ff9: $33
    nop                                           ; $6ffa: $00
    scf                                           ; $6ffb: $37
    rrca                                          ; $6ffc: $0f
    ld [$5700], sp                                ; $6ffd: $08 $00 $57
    nop                                           ; $7000: $00
    nop                                           ; $7001: $00
    nop                                           ; $7002: $00
    nop                                           ; $7003: $00
    nop                                           ; $7004: $00
    add hl, bc                                    ; $7005: $09
    nop                                           ; $7006: $00
    ld bc, $0705                                  ; $7007: $01 $05 $07
    nop                                           ; $700a: $00
    ld d, [hl]                                    ; $700b: $56
    nop                                           ; $700c: $00
    nop                                           ; $700d: $00
    ld e, a                                       ; $700e: $5f
    ld bc, $1500                                  ; $700f: $01 $00 $15
    ld c, h                                       ; $7012: $4c
    nop                                           ; $7013: $00
    inc sp                                        ; $7014: $33
    nop                                           ; $7015: $00
    ld b, [hl]                                    ; $7016: $46
    ld d, a                                       ; $7017: $57
    nop                                           ; $7018: $00
    nop                                           ; $7019: $00
    nop                                           ; $701a: $00
    nop                                           ; $701b: $00
    nop                                           ; $701c: $00
    add hl, bc                                    ; $701d: $09
    nop                                           ; $701e: $00
    jr jr_009_7026                                ; $701f: $18 $05

    ld c, $00                                     ; $7021: $0e $00
    ld d, [hl]                                    ; $7023: $56
    nop                                           ; $7024: $00
    nop                                           ; $7025: $00

jr_009_7026:
    ld e, a                                       ; $7026: $5f

jr_009_7027:
    ld bc, $0900                                  ; $7027: $01 $00 $09
    inc b                                         ; $702a: $04
    nop                                           ; $702b: $00
    dec b                                         ; $702c: $05
    ld b, $00                                     ; $702d: $06 $00
    dec d                                         ; $702f: $15
    ld c, h                                       ; $7030: $4c
    nop                                           ; $7031: $00
    inc sp                                        ; $7032: $33
    inc bc                                        ; $7033: $03
    inc [hl]                                      ; $7034: $34
    rrca                                          ; $7035: $0f
    inc b                                         ; $7036: $04
    ld bc, $0057                                  ; $7037: $01 $57 $00
    nop                                           ; $703a: $00
    inc bc                                        ; $703b: $03
    dec b                                         ; $703c: $05
    nop                                           ; $703d: $00
    dec d                                         ; $703e: $15
    ld c, h                                       ; $703f: $4c
    nop                                           ; $7040: $00
    inc sp                                        ; $7041: $33
    inc bc                                        ; $7042: $03
    ld a, [hl-]                                   ; $7043: $3a
    rrca                                          ; $7044: $0f
    inc b                                         ; $7045: $04
    nop                                           ; $7046: $00
    ld d, a                                       ; $7047: $57
    nop                                           ; $7048: $00
    nop                                           ; $7049: $00
    add hl, bc                                    ; $704a: $09
    nop                                           ; $704b: $00
    rla                                           ; $704c: $17
    dec b                                         ; $704d: $05
    rlca                                          ; $704e: $07
    nop                                           ; $704f: $00
    ld d, [hl]                                    ; $7050: $56
    nop                                           ; $7051: $00
    nop                                           ; $7052: $00
    ld e, a                                       ; $7053: $5f
    ld bc, $1500                                  ; $7054: $01 $00 $15
    ld c, h                                       ; $7057: $4c
    nop                                           ; $7058: $00
    inc sp                                        ; $7059: $33
    inc bc                                        ; $705a: $03
    ld a, [hl+]                                   ; $705b: $2a
    ld d, a                                       ; $705c: $57
    nop                                           ; $705d: $00
    nop                                           ; $705e: $00
    nop                                           ; $705f: $00
    nop                                           ; $7060: $00
    nop                                           ; $7061: $00
    nop                                           ; $7062: $00
    nop                                           ; $7063: $00
    nop                                           ; $7064: $00
    ld e, a                                       ; $7065: $5f
    nop                                           ; $7066: $00
    nop                                           ; $7067: $00
    add hl, bc                                    ; $7068: $09
    nop                                           ; $7069: $00
    ld e, c                                       ; $706a: $59
    dec b                                         ; $706b: $05
    rlca                                          ; $706c: $07
    nop                                           ; $706d: $00
    ld d, [hl]                                    ; $706e: $56
    nop                                           ; $706f: $00
    nop                                           ; $7070: $00
    ld e, a                                       ; $7071: $5f
    ld bc, $1500                                  ; $7072: $01 $00 $15
    ld c, h                                       ; $7075: $4c
    nop                                           ; $7076: $00
    inc sp                                        ; $7077: $33
    nop                                           ; $7078: $00
    jr c, jr_009_70d2                             ; $7079: $38 $57

    nop                                           ; $707b: $00
    nop                                           ; $707c: $00
    nop                                           ; $707d: $00
    nop                                           ; $707e: $00
    nop                                           ; $707f: $00
    add hl, bc                                    ; $7080: $09
    nop                                           ; $7081: $00
    ld d, c                                       ; $7082: $51
    dec b                                         ; $7083: $05
    rrca                                          ; $7084: $0f
    nop                                           ; $7085: $00
    ld d, [hl]                                    ; $7086: $56
    nop                                           ; $7087: $00
    nop                                           ; $7088: $00
    ld e, a                                       ; $7089: $5f
    ld bc, $0900                                  ; $708a: $01 $00 $09
    ld a, [bc]                                    ; $708d: $0a
    nop                                           ; $708e: $00
    dec b                                         ; $708f: $05
    ld b, $00                                     ; $7090: $06 $00
    dec d                                         ; $7092: $15
    ld c, h                                       ; $7093: $4c
    nop                                           ; $7094: $00
    inc sp                                        ; $7095: $33
    nop                                           ; $7096: $00
    jr c, jr_009_70a8                             ; $7097: $38 $0f

    ld a, [bc]                                    ; $7099: $0a
    ld bc, $0057                                  ; $709a: $01 $57 $00
    nop                                           ; $709d: $00
    inc bc                                        ; $709e: $03
    dec b                                         ; $709f: $05
    nop                                           ; $70a0: $00
    dec d                                         ; $70a1: $15
    ld c, h                                       ; $70a2: $4c
    nop                                           ; $70a3: $00
    inc sp                                        ; $70a4: $33
    nop                                           ; $70a5: $00
    add hl, sp                                    ; $70a6: $39
    rrca                                          ; $70a7: $0f

jr_009_70a8:
    ld a, [bc]                                    ; $70a8: $0a
    nop                                           ; $70a9: $00
    ld d, a                                       ; $70aa: $57
    nop                                           ; $70ab: $00
    nop                                           ; $70ac: $00
    nop                                           ; $70ad: $00
    nop                                           ; $70ae: $00
    nop                                           ; $70af: $00
    add hl, bc                                    ; $70b0: $09
    nop                                           ; $70b1: $00
    nop                                           ; $70b2: $00
    dec b                                         ; $70b3: $05
    rlca                                          ; $70b4: $07
    nop                                           ; $70b5: $00
    ld d, [hl]                                    ; $70b6: $56
    nop                                           ; $70b7: $00
    nop                                           ; $70b8: $00
    ld e, a                                       ; $70b9: $5f
    ld bc, $1500                                  ; $70ba: $01 $00 $15
    ld c, h                                       ; $70bd: $4c
    nop                                           ; $70be: $00
    inc sp                                        ; $70bf: $33
    nop                                           ; $70c0: $00
    add hl, hl                                    ; $70c1: $29
    ld d, a                                       ; $70c2: $57
    nop                                           ; $70c3: $00
    nop                                           ; $70c4: $00
    nop                                           ; $70c5: $00
    nop                                           ; $70c6: $00
    nop                                           ; $70c7: $00
    add hl, bc                                    ; $70c8: $09
    nop                                           ; $70c9: $00
    ld d, c                                       ; $70ca: $51
    dec b                                         ; $70cb: $05
    rrca                                          ; $70cc: $0f
    nop                                           ; $70cd: $00
    ld d, [hl]                                    ; $70ce: $56
    nop                                           ; $70cf: $00
    nop                                           ; $70d0: $00
    ld e, a                                       ; $70d1: $5f

jr_009_70d2:
    ld bc, $0900                                  ; $70d2: $01 $00 $09
    ld a, [bc]                                    ; $70d5: $0a
    nop                                           ; $70d6: $00
    dec b                                         ; $70d7: $05
    ld b, $00                                     ; $70d8: $06 $00
    dec d                                         ; $70da: $15
    ld c, h                                       ; $70db: $4c
    nop                                           ; $70dc: $00
    inc sp                                        ; $70dd: $33
    nop                                           ; $70de: $00
    jr c, jr_009_70f0                             ; $70df: $38 $0f

    ld a, [bc]                                    ; $70e1: $0a
    ld bc, $0057                                  ; $70e2: $01 $57 $00
    nop                                           ; $70e5: $00
    inc bc                                        ; $70e6: $03
    dec b                                         ; $70e7: $05
    nop                                           ; $70e8: $00
    dec d                                         ; $70e9: $15
    ld c, h                                       ; $70ea: $4c
    nop                                           ; $70eb: $00
    inc sp                                        ; $70ec: $33
    nop                                           ; $70ed: $00
    add hl, sp                                    ; $70ee: $39
    rrca                                          ; $70ef: $0f

jr_009_70f0:
    ld a, [bc]                                    ; $70f0: $0a
    nop                                           ; $70f1: $00
    ld d, a                                       ; $70f2: $57
    nop                                           ; $70f3: $00
    nop                                           ; $70f4: $00
    nop                                           ; $70f5: $00
    nop                                           ; $70f6: $00
    nop                                           ; $70f7: $00
    add hl, bc                                    ; $70f8: $09
    nop                                           ; $70f9: $00
    ld bc, $0705                                  ; $70fa: $01 $05 $07
    nop                                           ; $70fd: $00
    ld d, [hl]                                    ; $70fe: $56
    nop                                           ; $70ff: $00
    nop                                           ; $7100: $00
    ld e, a                                       ; $7101: $5f
    ld bc, $1500                                  ; $7102: $01 $00 $15
    ld c, h                                       ; $7105: $4c
    nop                                           ; $7106: $00
    inc sp                                        ; $7107: $33
    nop                                           ; $7108: $00
    ld b, a                                       ; $7109: $47
    ld d, a                                       ; $710a: $57
    nop                                           ; $710b: $00
    nop                                           ; $710c: $00
    nop                                           ; $710d: $00
    nop                                           ; $710e: $00
    nop                                           ; $710f: $00
    add hl, bc                                    ; $7110: $09
    nop                                           ; $7111: $00
    jr jr_009_7119                                ; $7112: $18 $05

    ld c, $00                                     ; $7114: $0e $00
    ld d, [hl]                                    ; $7116: $56
    nop                                           ; $7117: $00
    nop                                           ; $7118: $00

jr_009_7119:
    ld e, a                                       ; $7119: $5f
    ld bc, $0900                                  ; $711a: $01 $00 $09
    dec b                                         ; $711d: $05
    nop                                           ; $711e: $00
    dec b                                         ; $711f: $05
    ld b, $00                                     ; $7120: $06 $00
    dec d                                         ; $7122: $15
    ld c, h                                       ; $7123: $4c
    nop                                           ; $7124: $00
    inc sp                                        ; $7125: $33
    inc bc                                        ; $7126: $03
    dec [hl]                                      ; $7127: $35
    rrca                                          ; $7128: $0f
    dec b                                         ; $7129: $05
    ld bc, $0057                                  ; $712a: $01 $57 $00
    nop                                           ; $712d: $00
    inc bc                                        ; $712e: $03
    dec b                                         ; $712f: $05
    nop                                           ; $7130: $00
    dec d                                         ; $7131: $15
    ld c, h                                       ; $7132: $4c
    nop                                           ; $7133: $00
    inc sp                                        ; $7134: $33
    inc bc                                        ; $7135: $03
    dec sp                                        ; $7136: $3b
    rrca                                          ; $7137: $0f
    dec b                                         ; $7138: $05
    nop                                           ; $7139: $00
    ld d, a                                       ; $713a: $57
    nop                                           ; $713b: $00
    nop                                           ; $713c: $00
    add hl, bc                                    ; $713d: $09
    nop                                           ; $713e: $00
    rla                                           ; $713f: $17
    dec b                                         ; $7140: $05
    rlca                                          ; $7141: $07
    nop                                           ; $7142: $00
    ld d, [hl]                                    ; $7143: $56
    nop                                           ; $7144: $00
    nop                                           ; $7145: $00
    ld e, a                                       ; $7146: $5f
    ld bc, $1500                                  ; $7147: $01 $00 $15
    ld c, h                                       ; $714a: $4c
    nop                                           ; $714b: $00
    inc sp                                        ; $714c: $33
    inc bc                                        ; $714d: $03
    dec hl                                        ; $714e: $2b
    ld d, a                                       ; $714f: $57
    nop                                           ; $7150: $00
    nop                                           ; $7151: $00
    nop                                           ; $7152: $00
    nop                                           ; $7153: $00
    nop                                           ; $7154: $00
    nop                                           ; $7155: $00
    nop                                           ; $7156: $00
    nop                                           ; $7157: $00
    ld e, a                                       ; $7158: $5f
    nop                                           ; $7159: $00
    nop                                           ; $715a: $00
    add hl, bc                                    ; $715b: $09
    nop                                           ; $715c: $00
    ld e, c                                       ; $715d: $59
    dec b                                         ; $715e: $05
    rlca                                          ; $715f: $07
    nop                                           ; $7160: $00
    ld d, [hl]                                    ; $7161: $56
    nop                                           ; $7162: $00
    nop                                           ; $7163: $00
    ld e, a                                       ; $7164: $5f
    ld bc, $1500                                  ; $7165: $01 $00 $15
    ld c, e                                       ; $7168: $4b
    nop                                           ; $7169: $00
    inc sp                                        ; $716a: $33
    nop                                           ; $716b: $00
    ld a, [hl-]                                   ; $716c: $3a
    ld d, a                                       ; $716d: $57
    nop                                           ; $716e: $00
    nop                                           ; $716f: $00
    nop                                           ; $7170: $00
    nop                                           ; $7171: $00
    nop                                           ; $7172: $00
    add hl, bc                                    ; $7173: $09
    nop                                           ; $7174: $00
    nop                                           ; $7175: $00
    dec b                                         ; $7176: $05
    rlca                                          ; $7177: $07
    nop                                           ; $7178: $00
    ld d, [hl]                                    ; $7179: $56
    nop                                           ; $717a: $00
    nop                                           ; $717b: $00
    ld e, a                                       ; $717c: $5f
    ld bc, $1500                                  ; $717d: $01 $00 $15
    ld c, e                                       ; $7180: $4b
    nop                                           ; $7181: $00
    inc sp                                        ; $7182: $33
    nop                                           ; $7183: $00
    ld a, [hl+]                                   ; $7184: $2a
    ld d, a                                       ; $7185: $57
    nop                                           ; $7186: $00
    nop                                           ; $7187: $00
    nop                                           ; $7188: $00
    nop                                           ; $7189: $00
    nop                                           ; $718a: $00
    add hl, bc                                    ; $718b: $09
    nop                                           ; $718c: $00
    ld d, c                                       ; $718d: $51
    dec b                                         ; $718e: $05
    rlca                                          ; $718f: $07
    nop                                           ; $7190: $00
    ld d, [hl]                                    ; $7191: $56
    nop                                           ; $7192: $00
    nop                                           ; $7193: $00
    ld e, a                                       ; $7194: $5f
    ld bc, $1500                                  ; $7195: $01 $00 $15
    ld c, e                                       ; $7198: $4b
    nop                                           ; $7199: $00
    inc sp                                        ; $719a: $33
    nop                                           ; $719b: $00
    ld a, [hl-]                                   ; $719c: $3a
    ld d, a                                       ; $719d: $57
    nop                                           ; $719e: $00
    nop                                           ; $719f: $00
    nop                                           ; $71a0: $00
    nop                                           ; $71a1: $00
    nop                                           ; $71a2: $00
    add hl, bc                                    ; $71a3: $09
    nop                                           ; $71a4: $00
    ld bc, $0705                                  ; $71a5: $01 $05 $07
    nop                                           ; $71a8: $00
    ld d, [hl]                                    ; $71a9: $56
    nop                                           ; $71aa: $00
    nop                                           ; $71ab: $00
    ld e, a                                       ; $71ac: $5f
    ld bc, $1500                                  ; $71ad: $01 $00 $15
    ld c, e                                       ; $71b0: $4b
    nop                                           ; $71b1: $00
    inc sp                                        ; $71b2: $33
    nop                                           ; $71b3: $00
    ld c, b                                       ; $71b4: $48
    ld d, a                                       ; $71b5: $57
    nop                                           ; $71b6: $00
    nop                                           ; $71b7: $00
    nop                                           ; $71b8: $00
    nop                                           ; $71b9: $00
    nop                                           ; $71ba: $00
    add hl, bc                                    ; $71bb: $09
    nop                                           ; $71bc: $00
    jr jr_009_71c4                                ; $71bd: $18 $05

    ld c, $00                                     ; $71bf: $0e $00
    ld d, [hl]                                    ; $71c1: $56
    nop                                           ; $71c2: $00
    nop                                           ; $71c3: $00

jr_009_71c4:
    ld e, a                                       ; $71c4: $5f
    ld bc, $0900                                  ; $71c5: $01 $00 $09
    ld b, $00                                     ; $71c8: $06 $00
    dec b                                         ; $71ca: $05
    ld b, $00                                     ; $71cb: $06 $00
    dec d                                         ; $71cd: $15
    ld c, e                                       ; $71ce: $4b
    nop                                           ; $71cf: $00
    inc sp                                        ; $71d0: $33
    inc bc                                        ; $71d1: $03
    ld [hl], $0f                                  ; $71d2: $36 $0f
    ld b, $01                                     ; $71d4: $06 $01
    ld d, a                                       ; $71d6: $57
    nop                                           ; $71d7: $00
    nop                                           ; $71d8: $00
    inc bc                                        ; $71d9: $03
    dec b                                         ; $71da: $05
    nop                                           ; $71db: $00
    dec d                                         ; $71dc: $15
    ld c, e                                       ; $71dd: $4b
    nop                                           ; $71de: $00
    inc sp                                        ; $71df: $33
    inc bc                                        ; $71e0: $03
    inc a                                         ; $71e1: $3c
    rrca                                          ; $71e2: $0f
    ld b, $00                                     ; $71e3: $06 $00
    ld d, a                                       ; $71e5: $57
    nop                                           ; $71e6: $00
    nop                                           ; $71e7: $00
    add hl, bc                                    ; $71e8: $09
    nop                                           ; $71e9: $00
    rla                                           ; $71ea: $17
    dec b                                         ; $71eb: $05
    rlca                                          ; $71ec: $07
    nop                                           ; $71ed: $00
    ld d, [hl]                                    ; $71ee: $56
    nop                                           ; $71ef: $00
    nop                                           ; $71f0: $00
    ld e, a                                       ; $71f1: $5f
    ld bc, $1500                                  ; $71f2: $01 $00 $15
    ld c, e                                       ; $71f5: $4b
    nop                                           ; $71f6: $00
    inc sp                                        ; $71f7: $33
    inc bc                                        ; $71f8: $03
    inc l                                         ; $71f9: $2c
    ld d, a                                       ; $71fa: $57
    nop                                           ; $71fb: $00
    nop                                           ; $71fc: $00
    nop                                           ; $71fd: $00
    nop                                           ; $71fe: $00
    nop                                           ; $71ff: $00
    nop                                           ; $7200: $00
    nop                                           ; $7201: $00
    nop                                           ; $7202: $00
    ld e, a                                       ; $7203: $5f
    nop                                           ; $7204: $00
    nop                                           ; $7205: $00
    add hl, bc                                    ; $7206: $09
    nop                                           ; $7207: $00
    ld e, c                                       ; $7208: $59
    dec b                                         ; $7209: $05
    rlca                                          ; $720a: $07
    nop                                           ; $720b: $00
    ld d, [hl]                                    ; $720c: $56
    nop                                           ; $720d: $00
    nop                                           ; $720e: $00
    ld e, a                                       ; $720f: $5f
    ld bc, $1500                                  ; $7210: $01 $00 $15
    ld c, d                                       ; $7213: $4a
    nop                                           ; $7214: $00
    inc sp                                        ; $7215: $33
    nop                                           ; $7216: $00
    dec sp                                        ; $7217: $3b
    ld d, a                                       ; $7218: $57
    nop                                           ; $7219: $00
    nop                                           ; $721a: $00
    nop                                           ; $721b: $00
    nop                                           ; $721c: $00
    nop                                           ; $721d: $00
    add hl, bc                                    ; $721e: $09
    nop                                           ; $721f: $00
    nop                                           ; $7220: $00
    dec b                                         ; $7221: $05
    rlca                                          ; $7222: $07
    nop                                           ; $7223: $00
    ld d, [hl]                                    ; $7224: $56
    nop                                           ; $7225: $00
    nop                                           ; $7226: $00
    ld e, a                                       ; $7227: $5f
    ld bc, $1500                                  ; $7228: $01 $00 $15
    ld c, d                                       ; $722b: $4a
    nop                                           ; $722c: $00
    inc sp                                        ; $722d: $33
    nop                                           ; $722e: $00
    daa                                           ; $722f: $27
    ld d, a                                       ; $7230: $57
    nop                                           ; $7231: $00
    nop                                           ; $7232: $00
    nop                                           ; $7233: $00
    nop                                           ; $7234: $00
    nop                                           ; $7235: $00
    add hl, bc                                    ; $7236: $09
    nop                                           ; $7237: $00
    ld d, c                                       ; $7238: $51
    dec b                                         ; $7239: $05
    rlca                                          ; $723a: $07
    nop                                           ; $723b: $00
    ld d, [hl]                                    ; $723c: $56
    nop                                           ; $723d: $00
    nop                                           ; $723e: $00
    ld e, a                                       ; $723f: $5f
    ld bc, $1500                                  ; $7240: $01 $00 $15
    ld c, d                                       ; $7243: $4a
    nop                                           ; $7244: $00
    inc sp                                        ; $7245: $33
    nop                                           ; $7246: $00
    dec sp                                        ; $7247: $3b
    ld d, a                                       ; $7248: $57
    nop                                           ; $7249: $00
    nop                                           ; $724a: $00
    nop                                           ; $724b: $00
    nop                                           ; $724c: $00
    nop                                           ; $724d: $00
    add hl, bc                                    ; $724e: $09
    nop                                           ; $724f: $00
    ld bc, $0705                                  ; $7250: $01 $05 $07
    nop                                           ; $7253: $00
    ld d, [hl]                                    ; $7254: $56
    nop                                           ; $7255: $00
    nop                                           ; $7256: $00
    ld e, a                                       ; $7257: $5f
    ld bc, $1500                                  ; $7258: $01 $00 $15
    ld c, d                                       ; $725b: $4a
    nop                                           ; $725c: $00
    inc sp                                        ; $725d: $33
    nop                                           ; $725e: $00
    ld c, c                                       ; $725f: $49
    ld d, a                                       ; $7260: $57
    nop                                           ; $7261: $00
    nop                                           ; $7262: $00
    nop                                           ; $7263: $00
    nop                                           ; $7264: $00
    nop                                           ; $7265: $00
    add hl, bc                                    ; $7266: $09
    nop                                           ; $7267: $00
    jr jr_009_726f                                ; $7268: $18 $05

    ld c, $00                                     ; $726a: $0e $00
    ld d, [hl]                                    ; $726c: $56
    nop                                           ; $726d: $00
    nop                                           ; $726e: $00

jr_009_726f:
    ld e, a                                       ; $726f: $5f
    ld bc, $0900                                  ; $7270: $01 $00 $09
    rlca                                          ; $7273: $07
    nop                                           ; $7274: $00
    dec b                                         ; $7275: $05
    ld b, $00                                     ; $7276: $06 $00
    dec d                                         ; $7278: $15
    ld c, d                                       ; $7279: $4a
    nop                                           ; $727a: $00
    inc sp                                        ; $727b: $33
    inc bc                                        ; $727c: $03
    jr c, jr_009_728e                             ; $727d: $38 $0f

    rlca                                          ; $727f: $07
    ld bc, $0057                                  ; $7280: $01 $57 $00
    nop                                           ; $7283: $00
    inc bc                                        ; $7284: $03
    dec b                                         ; $7285: $05
    nop                                           ; $7286: $00
    dec d                                         ; $7287: $15
    ld c, d                                       ; $7288: $4a
    nop                                           ; $7289: $00
    inc sp                                        ; $728a: $33
    inc bc                                        ; $728b: $03
    dec a                                         ; $728c: $3d
    rrca                                          ; $728d: $0f

jr_009_728e:
    rlca                                          ; $728e: $07
    nop                                           ; $728f: $00
    ld d, a                                       ; $7290: $57
    nop                                           ; $7291: $00
    nop                                           ; $7292: $00
    add hl, bc                                    ; $7293: $09
    nop                                           ; $7294: $00
    rla                                           ; $7295: $17
    dec b                                         ; $7296: $05
    rlca                                          ; $7297: $07
    nop                                           ; $7298: $00
    ld d, [hl]                                    ; $7299: $56
    nop                                           ; $729a: $00
    nop                                           ; $729b: $00
    ld e, a                                       ; $729c: $5f
    ld bc, $1500                                  ; $729d: $01 $00 $15
    ld c, d                                       ; $72a0: $4a
    nop                                           ; $72a1: $00
    inc sp                                        ; $72a2: $33
    inc bc                                        ; $72a3: $03
    dec l                                         ; $72a4: $2d
    ld d, a                                       ; $72a5: $57
    nop                                           ; $72a6: $00
    nop                                           ; $72a7: $00
    nop                                           ; $72a8: $00
    nop                                           ; $72a9: $00
    nop                                           ; $72aa: $00
    nop                                           ; $72ab: $00
    nop                                           ; $72ac: $00
    nop                                           ; $72ad: $00
    add hl, bc                                    ; $72ae: $09
    dec h                                         ; $72af: $25
    ld bc, $0205                                  ; $72b0: $01 $05 $02
    nop                                           ; $72b3: $00
    nop                                           ; $72b4: $00
    nop                                           ; $72b5: $00
    nop                                           ; $72b6: $00
    jr c, @+$2d                                   ; $72b7: $38 $2b

    nop                                           ; $72b9: $00
    rrca                                          ; $72ba: $0f
    dec h                                         ; $72bb: $25
    ld bc, $0000                                  ; $72bc: $01 $00 $00
    nop                                           ; $72bf: $00

    db $5f, $00, $00, $09, $39, $00, $05, $06, $00, $2b, $00, $00, $0a, $fe, $00, $05
    db $03, $00

    dec d                                         ; $72d2: $15
    ld bc, $0600                                  ; $72d3: $01 $00 $06
    inc b                                         ; $72d6: $04
    db $f8                                        ; $72d7: $f8

    db $09, $3a, $00, $05, $08, $00, $0f, $3a, $01, $56, $00, $00, $5f, $01, $00, $27
    db $00, $08, $7f, $09, $de, $57, $00, $00, $5f, $00, $00, $09, $00, $59, $05, $08
    db $00

    inc de                                        ; $72f9: $13
    nop                                           ; $72fa: $00
    add l                                         ; $72fb: $85
    inc d                                         ; $72fc: $14
    nop                                           ; $72fd: $00
    ld e, [hl]                                    ; $72fe: $5e
    dec d                                         ; $72ff: $15
    nop                                           ; $7300: $00
    nop                                           ; $7301: $00
    ld d, $15                                     ; $7302: $16 $15
    nop                                           ; $7304: $00
    ld d, d                                       ; $7305: $52
    nop                                           ; $7306: $00
    nop                                           ; $7307: $00
    ld e, a                                       ; $7308: $5f
    ld bc, $0000                                  ; $7309: $01 $00 $00
    nop                                           ; $730c: $00
    nop                                           ; $730d: $00

    db $09, $00, $00, $05, $0d, $00, $13, $00, $99, $14, $00, $5e, $15, $00, $00, $16
    db $0d, $00, $52, $00, $00, $13, $00, $85, $14, $00, $5e, $15, $00, $00, $16, $15
    db $00, $52, $00, $00, $5f, $01, $00, $00, $00, $00

    add hl, bc                                    ; $7338: $09
    nop                                           ; $7339: $00
    ld e, [hl]                                    ; $733a: $5e
    dec b                                         ; $733b: $05
    dec c                                         ; $733c: $0d
    nop                                           ; $733d: $00
    inc de                                        ; $733e: $13
    nop                                           ; $733f: $00
    and b                                         ; $7340: $a0
    inc d                                         ; $7341: $14
    nop                                           ; $7342: $00
    ld l, b                                       ; $7343: $68
    dec d                                         ; $7344: $15
    nop                                           ; $7345: $00
    nop                                           ; $7346: $00
    ld d, $1e                                     ; $7347: $16 $1e
    nop                                           ; $7349: $00
    ld d, d                                       ; $734a: $52
    nop                                           ; $734b: $00
    nop                                           ; $734c: $00
    inc de                                        ; $734d: $13
    nop                                           ; $734e: $00
    add l                                         ; $734f: $85
    inc d                                         ; $7350: $14
    nop                                           ; $7351: $00
    ld e, [hl]                                    ; $7352: $5e
    dec d                                         ; $7353: $15
    nop                                           ; $7354: $00
    nop                                           ; $7355: $00
    ld d, $15                                     ; $7356: $16 $15
    nop                                           ; $7358: $00
    ld d, d                                       ; $7359: $52
    nop                                           ; $735a: $00
    nop                                           ; $735b: $00
    ld e, a                                       ; $735c: $5f
    ld bc, $0000                                  ; $735d: $01 $00 $00
    nop                                           ; $7360: $00
    nop                                           ; $7361: $00
    ld e, a                                       ; $7362: $5f
    ld bc, $0000                                  ; $7363: $01 $00 $00
    nop                                           ; $7366: $00
    nop                                           ; $7367: $00

    db $0b, $00, $00

    ld bc, $0120                                  ; $736b: $01 $20 $01
    dec sp                                        ; $736e: $3b
    ld bc, $0156                                  ; $736f: $01 $56 $01
    ld [hl], c                                    ; $7372: $71
    ld bc, $018c                                  ; $7373: $01 $8c $01
    and a                                         ; $7376: $a7
    ld bc, $01c2                                  ; $7377: $01 $c2 $01
    db $dd                                        ; $737a: $dd
    db $01                                        ; $737b: $01
    db $f8                                        ; $737c: $f8

    db $02, $13, $5f, $00, $00, $09, $00, $51, $05, $3a, $00, $09, $0c, $01, $05, $03
    db $00, $5f, $01, $00, $00, $00, $00, $56, $00, $00, $17, $00, $00, $13, $02, $e4
    db $58, $00, $e9, $1b, $02, $00, $13, $01, $03, $14, $02, $ea, $15, $00, $00, $16
    db $0d, $00, $1b, $06, $00, $13, $01, $13, $14, $02, $d5, $15, $00, $00, $16, $15
    db $00, $1b, $06, $00, $17, $15, $00, $52, $00, $00, $5f, $01, $00, $15, $02, $00
    db $33, $00, $31, $15, $01, $00, $33, $00, $32, $5f, $00, $00, $5e, $00, $00, $15
    db $02, $00, $19, $00, $69, $17, $0d, $00, $52, $00, $00, $15, $02, $00, $19, $00
    db $73, $5e, $01, $00, $17, $00, $00, $5f, $01, $00, $15, $02, $00, $19, $00, $23
    db $5f, $00, $00, $1b, $08, $00, $21, $00, $00, $2e, $20, $00, $5f, $01, $00, $27
    db $00, $1e, $21, $01, $00, $27, $00, $0c, $1b, $02, $00, $15, $59, $00, $33, $00
    db $33, $17, $15, $00, $1e, $15, $00, $17, $0d, $00, $1e, $0d, $00, $57, $00, $00
    db $0f, $0c, $01, $00, $00, $00

    add hl, bc                                    ; $7433: $09
    nop                                           ; $7434: $00
    jr @+$07                                      ; $7435: $18 $05

    ld hl, $0900                                  ; $7437: $21 $00 $09
    inc c                                         ; $743a: $0c
    ld bc, $0305                                  ; $743b: $01 $05 $03
    nop                                           ; $743e: $00
    ld e, a                                       ; $743f: $5f
    ld bc, $0000                                  ; $7440: $01 $00 $00
    nop                                           ; $7443: $00
    nop                                           ; $7444: $00
    ld d, [hl]                                    ; $7445: $56
    nop                                           ; $7446: $00
    nop                                           ; $7447: $00
    rla                                           ; $7448: $17
    nop                                           ; $7449: $00
    nop                                           ; $744a: $00
    inc de                                        ; $744b: $13
    ld [bc], a                                    ; $744c: $02
    db $e4                                        ; $744d: $e4
    ld e, b                                       ; $744e: $58
    nop                                           ; $744f: $00
    jp hl                                         ; $7450: $e9


    dec de                                        ; $7451: $1b
    ld b, $00                                     ; $7452: $06 $00
    inc de                                        ; $7454: $13
    nop                                           ; $7455: $00
    reti                                          ; $7456: $d9


    inc d                                         ; $7457: $14
    ld [bc], a                                    ; $7458: $02
    and $15                                       ; $7459: $e6 $15
    nop                                           ; $745b: $00
    nop                                           ; $745c: $00
    ld d, $15                                     ; $745d: $16 $15
    nop                                           ; $745f: $00
    ld d, d                                       ; $7460: $52
    nop                                           ; $7461: $00
    nop                                           ; $7462: $00
    dec de                                        ; $7463: $1b
    ld [bc], a                                    ; $7464: $02
    nop                                           ; $7465: $00
    ld e, a                                       ; $7466: $5f
    ld bc, $1700                                  ; $7467: $01 $00 $17
    dec d                                         ; $746a: $15
    nop                                           ; $746b: $00
    inc de                                        ; $746c: $13
    ld [bc], a                                    ; $746d: $02
    cp h                                          ; $746e: $bc
    ld [hl], c                                    ; $746f: $71
    nop                                           ; $7470: $00
    ld h, e                                       ; $7471: $63
    dec de                                        ; $7472: $1b
    ld [bc], a                                    ; $7473: $02
    nop                                           ; $7474: $00
    rla                                           ; $7475: $17
    nop                                           ; $7476: $00
    nop                                           ; $7477: $00
    inc de                                        ; $7478: $13
    ld [bc], a                                    ; $7479: $02
    cp h                                          ; $747a: $bc
    ld [hl], c                                    ; $747b: $71
    nop                                           ; $747c: $00
    ld [hl], c                                    ; $747d: $71
    dec de                                        ; $747e: $1b
    ld b, $00                                     ; $747f: $06 $00
    dec d                                         ; $7481: $15
    ld [bc], a                                    ; $7482: $02
    nop                                           ; $7483: $00
    inc sp                                        ; $7484: $33
    inc bc                                        ; $7485: $03
    daa                                           ; $7486: $27
    dec d                                         ; $7487: $15
    ld [bc], a                                    ; $7488: $02
    nop                                           ; $7489: $00
    inc sp                                        ; $748a: $33
    inc bc                                        ; $748b: $03
    jr z, jr_009_74e5                             ; $748c: $28 $57

    nop                                           ; $748e: $00
    nop                                           ; $748f: $00
    rrca                                          ; $7490: $0f
    inc c                                         ; $7491: $0c
    ld bc, $5c28                                  ; $7492: $01 $28 $5c
    nop                                           ; $7495: $00
    nop                                           ; $7496: $00
    nop                                           ; $7497: $00
    nop                                           ; $7498: $00
    ld e, a                                       ; $7499: $5f
    ld bc, $0000                                  ; $749a: $01 $00 $00
    nop                                           ; $749d: $00
    nop                                           ; $749e: $00
    ld e, a                                       ; $749f: $5f
    nop                                           ; $74a0: $00
    nop                                           ; $74a1: $00
    ld d, [hl]                                    ; $74a2: $56
    nop                                           ; $74a3: $00
    nop                                           ; $74a4: $00
    rla                                           ; $74a5: $17
    nop                                           ; $74a6: $00
    nop                                           ; $74a7: $00
    dec de                                        ; $74a8: $1b
    nop                                           ; $74a9: $00
    nop                                           ; $74aa: $00
    ld e, a                                       ; $74ab: $5f
    ld bc, $1500                                  ; $74ac: $01 $00 $15
    dec a                                         ; $74af: $3d
    nop                                           ; $74b0: $00
    inc sp                                        ; $74b1: $33
    rlca                                          ; $74b2: $07
    ld [hl], $57                                  ; $74b3: $36 $57
    nop                                           ; $74b5: $00
    nop                                           ; $74b6: $00
    nop                                           ; $74b7: $00
    nop                                           ; $74b8: $00
    nop                                           ; $74b9: $00
    ld e, a                                       ; $74ba: $5f
    nop                                           ; $74bb: $00
    nop                                           ; $74bc: $00
    ld d, [hl]                                    ; $74bd: $56
    nop                                           ; $74be: $00
    nop                                           ; $74bf: $00
    rla                                           ; $74c0: $17
    nop                                           ; $74c1: $00
    nop                                           ; $74c2: $00
    dec de                                        ; $74c3: $1b
    nop                                           ; $74c4: $00
    nop                                           ; $74c5: $00
    ld e, a                                       ; $74c6: $5f
    ld bc, $1500                                  ; $74c7: $01 $00 $15
    dec a                                         ; $74ca: $3d
    nop                                           ; $74cb: $00
    inc sp                                        ; $74cc: $33
    rlca                                          ; $74cd: $07
    scf                                           ; $74ce: $37
    ld d, a                                       ; $74cf: $57
    nop                                           ; $74d0: $00
    nop                                           ; $74d1: $00
    nop                                           ; $74d2: $00
    nop                                           ; $74d3: $00
    nop                                           ; $74d4: $00
    ld e, a                                       ; $74d5: $5f
    nop                                           ; $74d6: $00
    nop                                           ; $74d7: $00
    ld d, [hl]                                    ; $74d8: $56
    nop                                           ; $74d9: $00
    nop                                           ; $74da: $00
    rla                                           ; $74db: $17
    nop                                           ; $74dc: $00
    nop                                           ; $74dd: $00
    dec de                                        ; $74de: $1b
    nop                                           ; $74df: $00
    nop                                           ; $74e0: $00
    ld e, a                                       ; $74e1: $5f
    ld bc, $1500                                  ; $74e2: $01 $00 $15

jr_009_74e5:
    dec a                                         ; $74e5: $3d
    nop                                           ; $74e6: $00
    inc sp                                        ; $74e7: $33
    rlca                                          ; $74e8: $07
    jr c, jr_009_7542                             ; $74e9: $38 $57

    nop                                           ; $74eb: $00
    nop                                           ; $74ec: $00
    nop                                           ; $74ed: $00
    nop                                           ; $74ee: $00
    nop                                           ; $74ef: $00
    ld e, a                                       ; $74f0: $5f
    nop                                           ; $74f1: $00
    nop                                           ; $74f2: $00
    ld d, [hl]                                    ; $74f3: $56
    nop                                           ; $74f4: $00
    nop                                           ; $74f5: $00
    rla                                           ; $74f6: $17
    nop                                           ; $74f7: $00
    nop                                           ; $74f8: $00
    dec de                                        ; $74f9: $1b
    nop                                           ; $74fa: $00
    nop                                           ; $74fb: $00
    ld e, a                                       ; $74fc: $5f
    ld bc, $1500                                  ; $74fd: $01 $00 $15
    dec a                                         ; $7500: $3d
    nop                                           ; $7501: $00
    inc sp                                        ; $7502: $33
    rlca                                          ; $7503: $07
    add hl, sp                                    ; $7504: $39
    ld d, a                                       ; $7505: $57
    nop                                           ; $7506: $00
    nop                                           ; $7507: $00
    nop                                           ; $7508: $00
    nop                                           ; $7509: $00
    nop                                           ; $750a: $00
    ld e, a                                       ; $750b: $5f
    nop                                           ; $750c: $00
    nop                                           ; $750d: $00
    ld d, [hl]                                    ; $750e: $56
    nop                                           ; $750f: $00
    nop                                           ; $7510: $00
    rla                                           ; $7511: $17
    nop                                           ; $7512: $00
    nop                                           ; $7513: $00
    dec de                                        ; $7514: $1b
    nop                                           ; $7515: $00
    nop                                           ; $7516: $00
    ld e, a                                       ; $7517: $5f
    ld bc, $1500                                  ; $7518: $01 $00 $15
    dec a                                         ; $751b: $3d
    nop                                           ; $751c: $00
    inc sp                                        ; $751d: $33
    rlca                                          ; $751e: $07
    ld a, [hl-]                                   ; $751f: $3a
    ld d, a                                       ; $7520: $57
    nop                                           ; $7521: $00
    nop                                           ; $7522: $00
    nop                                           ; $7523: $00
    nop                                           ; $7524: $00
    nop                                           ; $7525: $00
    ld e, a                                       ; $7526: $5f
    nop                                           ; $7527: $00
    nop                                           ; $7528: $00
    ld d, [hl]                                    ; $7529: $56
    nop                                           ; $752a: $00
    nop                                           ; $752b: $00
    rla                                           ; $752c: $17
    nop                                           ; $752d: $00
    nop                                           ; $752e: $00
    dec de                                        ; $752f: $1b
    nop                                           ; $7530: $00
    nop                                           ; $7531: $00
    ld e, a                                       ; $7532: $5f
    ld bc, $1500                                  ; $7533: $01 $00 $15
    dec a                                         ; $7536: $3d
    nop                                           ; $7537: $00
    inc sp                                        ; $7538: $33
    rlca                                          ; $7539: $07
    dec sp                                        ; $753a: $3b
    ld d, a                                       ; $753b: $57
    nop                                           ; $753c: $00
    nop                                           ; $753d: $00
    nop                                           ; $753e: $00
    nop                                           ; $753f: $00
    nop                                           ; $7540: $00
    ld e, a                                       ; $7541: $5f

jr_009_7542:
    nop                                           ; $7542: $00
    nop                                           ; $7543: $00
    ld d, [hl]                                    ; $7544: $56
    nop                                           ; $7545: $00
    nop                                           ; $7546: $00
    rla                                           ; $7547: $17
    nop                                           ; $7548: $00
    nop                                           ; $7549: $00
    dec de                                        ; $754a: $1b
    nop                                           ; $754b: $00
    nop                                           ; $754c: $00
    ld e, a                                       ; $754d: $5f
    ld bc, $1500                                  ; $754e: $01 $00 $15
    dec a                                         ; $7551: $3d
    nop                                           ; $7552: $00
    inc sp                                        ; $7553: $33
    rlca                                          ; $7554: $07
    inc a                                         ; $7555: $3c
    ld d, a                                       ; $7556: $57
    nop                                           ; $7557: $00
    nop                                           ; $7558: $00
    nop                                           ; $7559: $00
    nop                                           ; $755a: $00
    nop                                           ; $755b: $00
    ld e, a                                       ; $755c: $5f
    nop                                           ; $755d: $00
    nop                                           ; $755e: $00
    ld d, [hl]                                    ; $755f: $56
    nop                                           ; $7560: $00
    nop                                           ; $7561: $00
    rla                                           ; $7562: $17
    nop                                           ; $7563: $00
    nop                                           ; $7564: $00
    dec de                                        ; $7565: $1b
    nop                                           ; $7566: $00
    nop                                           ; $7567: $00
    ld e, a                                       ; $7568: $5f
    ld bc, $1500                                  ; $7569: $01 $00 $15
    dec a                                         ; $756c: $3d
    nop                                           ; $756d: $00
    inc sp                                        ; $756e: $33
    rlca                                          ; $756f: $07
    dec a                                         ; $7570: $3d
    ld d, a                                       ; $7571: $57
    nop                                           ; $7572: $00
    nop                                           ; $7573: $00
    nop                                           ; $7574: $00
    nop                                           ; $7575: $00
    nop                                           ; $7576: $00
    ld e, a                                       ; $7577: $5f
    nop                                           ; $7578: $00
    nop                                           ; $7579: $00
    ld d, [hl]                                    ; $757a: $56
    nop                                           ; $757b: $00
    nop                                           ; $757c: $00
    rla                                           ; $757d: $17
    nop                                           ; $757e: $00
    nop                                           ; $757f: $00
    dec de                                        ; $7580: $1b
    nop                                           ; $7581: $00
    nop                                           ; $7582: $00
    ld e, a                                       ; $7583: $5f
    ld bc, $1500                                  ; $7584: $01 $00 $15
    dec a                                         ; $7587: $3d
    nop                                           ; $7588: $00
    inc sp                                        ; $7589: $33
    rlca                                          ; $758a: $07
    ld a, $57                                     ; $758b: $3e $57
    nop                                           ; $758d: $00
    nop                                           ; $758e: $00
    nop                                           ; $758f: $00
    nop                                           ; $7590: $00
    nop                                           ; $7591: $00

    db $5f, $00, $00, $09, $39, $00, $05, $06, $00, $2b, $00, $00, $0a, $fe, $00, $05
    db $03, $00

    dec d                                         ; $75a4: $15
    ld bc, $0600                                  ; $75a5: $01 $00 $06
    inc b                                         ; $75a8: $04
    db $f8                                        ; $75a9: $f8

    db $5f, $01, $00, $00, $00, $00

    ld [bc], a                                    ; $75b0: $02
    nop                                           ; $75b1: $00
    nop                                           ; $75b2: $00
    nop                                           ; $75b3: $00
    jr nc, jr_009_760c                            ; $75b4: $30 $56

    nop                                           ; $75b6: $00
    nop                                           ; $75b7: $00
    ld e, a                                       ; $75b8: $5f
    nop                                           ; $75b9: $00
    nop                                           ; $75ba: $00
    inc de                                        ; $75bb: $13
    nop                                           ; $75bc: $00
    nop                                           ; $75bd: $00
    inc d                                         ; $75be: $14
    nop                                           ; $75bf: $00
    nop                                           ; $75c0: $00
    dec d                                         ; $75c1: $15
    nop                                           ; $75c2: $00
    nop                                           ; $75c3: $00
    ld d, $0f                                     ; $75c4: $16 $0f
    ld bc, $0059                                  ; $75c6: $01 $59 $00
    nop                                           ; $75c9: $00
    inc de                                        ; $75ca: $13
    nop                                           ; $75cb: $00
    nop                                           ; $75cc: $00
    inc d                                         ; $75cd: $14
    nop                                           ; $75ce: $00
    inc c                                         ; $75cf: $0c
    dec d                                         ; $75d0: $15
    nop                                           ; $75d1: $00
    nop                                           ; $75d2: $00
    ld d, $10                                     ; $75d3: $16 $10
    ld bc, $0017                                  ; $75d5: $01 $17 $00
    nop                                           ; $75d8: $00
    inc de                                        ; $75d9: $13
    inc b                                         ; $75da: $04
    ld a, c                                       ; $75db: $79
    ld e, b                                       ; $75dc: $58
    nop                                           ; $75dd: $00
    ret z                                         ; $75de: $c8

    ld e, a                                       ; $75df: $5f
    ld bc, $0000                                  ; $75e0: $01 $00 $00
    nop                                           ; $75e3: $00
    nop                                           ; $75e4: $00
    ld e, a                                       ; $75e5: $5f
    nop                                           ; $75e6: $00
    nop                                           ; $75e7: $00
    rla                                           ; $75e8: $17
    nop                                           ; $75e9: $00
    nop                                           ; $75ea: $00
    ld e, c                                       ; $75eb: $59
    nop                                           ; $75ec: $00
    nop                                           ; $75ed: $00
    ld a, c                                       ; $75ee: $79
    nop                                           ; $75ef: $00
    ld a, [bc]                                    ; $75f0: $0a
    ld e, a                                       ; $75f1: $5f
    ld bc, $0000                                  ; $75f2: $01 $00 $00
    nop                                           ; $75f5: $00
    nop                                           ; $75f6: $00
    ld [bc], a                                    ; $75f7: $02
    nop                                           ; $75f8: $00
    nop                                           ; $75f9: $00
    ld bc, $5f29                                  ; $75fa: $01 $29 $5f
    nop                                           ; $75fd: $00
    nop                                           ; $75fe: $00
    add hl, bc                                    ; $75ff: $09
    nop                                           ; $7600: $00
    inc b                                         ; $7601: $04
    dec b                                         ; $7602: $05
    ld d, b                                       ; $7603: $50
    nop                                           ; $7604: $00
    ld h, d                                       ; $7605: $62
    dec b                                         ; $7606: $05
    nop                                           ; $7607: $00
    ld d, [hl]                                    ; $7608: $56
    nop                                           ; $7609: $00
    nop                                           ; $760a: $00
    rla                                           ; $760b: $17

jr_009_760c:
    nop                                           ; $760c: $00
    nop                                           ; $760d: $00
    inc de                                        ; $760e: $13
    ld bc, $5822                                  ; $760f: $01 $22 $58
    nop                                           ; $7612: $00
    dec [hl]                                      ; $7613: $35
    dec de                                        ; $7614: $1b
    nop                                           ; $7615: $00
    nop                                           ; $7616: $00
    inc de                                        ; $7617: $13
    nop                                           ; $7618: $00
    dec [hl]                                      ; $7619: $35
    inc d                                         ; $761a: $14
    nop                                           ; $761b: $00
    rst $10                                       ; $761c: $d7
    dec d                                         ; $761d: $15
    nop                                           ; $761e: $00
    nop                                           ; $761f: $00
    ld d, $0d                                     ; $7620: $16 $0d
    nop                                           ; $7622: $00
    ld d, d                                       ; $7623: $52
    nop                                           ; $7624: $00
    nop                                           ; $7625: $00
    dec de                                        ; $7626: $1b
    inc b                                         ; $7627: $04
    nop                                           ; $7628: $00
    inc de                                        ; $7629: $13
    nop                                           ; $762a: $00
    jr z, @+$16                                   ; $762b: $28 $14

    nop                                           ; $762d: $00
    push af                                       ; $762e: $f5
    dec d                                         ; $762f: $15
    nop                                           ; $7630: $00
    nop                                           ; $7631: $00
    ld d, $24                                     ; $7632: $16 $24
    nop                                           ; $7634: $00
    ld d, d                                       ; $7635: $52
    nop                                           ; $7636: $00
    nop                                           ; $7637: $00
    dec de                                        ; $7638: $1b
    nop                                           ; $7639: $00
    nop                                           ; $763a: $00
    inc de                                        ; $763b: $13
    nop                                           ; $763c: $00
    ld b, [hl]                                    ; $763d: $46
    inc d                                         ; $763e: $14
    nop                                           ; $763f: $00
    ld a, [$0015]                                 ; $7640: $fa $15 $00
    nop                                           ; $7643: $00
    ld d, $19                                     ; $7644: $16 $19
    nop                                           ; $7646: $00
    ld d, d                                       ; $7647: $52
    nop                                           ; $7648: $00
    nop                                           ; $7649: $00
    dec de                                        ; $764a: $1b
    nop                                           ; $764b: $00
    nop                                           ; $764c: $00
    inc de                                        ; $764d: $13
    nop                                           ; $764e: $00
    ld d, e                                       ; $764f: $53
    inc d                                         ; $7650: $14
    nop                                           ; $7651: $00
    pop hl                                        ; $7652: $e1
    dec d                                         ; $7653: $15
    nop                                           ; $7654: $00
    nop                                           ; $7655: $00
    ld d, $25                                     ; $7656: $16 $25
    nop                                           ; $7658: $00
    ld d, d                                       ; $7659: $52
    nop                                           ; $765a: $00
    nop                                           ; $765b: $00
    dec de                                        ; $765c: $1b
    ld b, $00                                     ; $765d: $06 $00
    rrca                                          ; $765f: $0f
    ld a, [$5f00]                                 ; $7660: $fa $00 $5f
    ld bc, $6d00                                  ; $7663: $01 $00 $6d
    nop                                           ; $7666: $00
    nop                                           ; $7667: $00
    dec d                                         ; $7668: $15
    ld bc, $3300                                  ; $7669: $01 $00 $33
    ld bc, $1506                                  ; $766c: $01 $06 $15
    nop                                           ; $766f: $00
    nop                                           ; $7670: $00
    inc sp                                        ; $7671: $33
    ld bc, $1507                                  ; $7672: $01 $07 $15
    ld bc, $3300                                  ; $7675: $01 $00 $33
    ld bc, $1708                                  ; $7678: $01 $08 $17
    dec c                                         ; $767b: $0d
    nop                                           ; $767c: $00
    dec de                                        ; $767d: $1b
    ld [bc], a                                    ; $767e: $02
    nop                                           ; $767f: $00
    dec d                                         ; $7680: $15
    ld bc, $3300                                  ; $7681: $01 $00 $33
    ld bc, $1509                                  ; $7684: $01 $09 $15
    inc l                                         ; $7687: $2c
    nop                                           ; $7688: $00
    inc sp                                        ; $7689: $33
    ld bc, $1b0a                                  ; $768a: $01 $0a $1b
    inc b                                         ; $768d: $04
    nop                                           ; $768e: $00
    dec d                                         ; $768f: $15
    ld bc, $3300                                  ; $7690: $01 $00 $33
    ld bc, $170b                                  ; $7693: $01 $0b $17
    dec c                                         ; $7696: $0d
    nop                                           ; $7697: $00
    dec d                                         ; $7698: $15
    ld [bc], a                                    ; $7699: $02
    nop                                           ; $769a: $00
    add hl, de                                    ; $769b: $19
    nop                                           ; $769c: $00
    inc a                                         ; $769d: $3c
    ld e, [hl]                                    ; $769e: $5e
    nop                                           ; $769f: $00
    nop                                           ; $76a0: $00
    ld e, a                                       ; $76a1: $5f
    nop                                           ; $76a2: $00
    nop                                           ; $76a3: $00
    rla                                           ; $76a4: $17
    dec c                                         ; $76a5: $0d
    nop                                           ; $76a6: $00
    dec d                                         ; $76a7: $15
    ld [bc], a                                    ; $76a8: $02
    nop                                           ; $76a9: $00
    add hl, de                                    ; $76aa: $19
    nop                                           ; $76ab: $00
    ld b, c                                       ; $76ac: $41
    rla                                           ; $76ad: $17
    dec h                                         ; $76ae: $25
    nop                                           ; $76af: $00
    dec d                                         ; $76b0: $15
    ld [bc], a                                    ; $76b1: $02
    nop                                           ; $76b2: $00
    add hl, de                                    ; $76b3: $19
    nop                                           ; $76b4: $00
    ld d, l                                       ; $76b5: $55
    rla                                           ; $76b6: $17
    add hl, de                                    ; $76b7: $19
    nop                                           ; $76b8: $00
    dec d                                         ; $76b9: $15
    ld [bc], a                                    ; $76ba: $02
    nop                                           ; $76bb: $00
    add hl, de                                    ; $76bc: $19
    nop                                           ; $76bd: $00
    ld a, l                                       ; $76be: $7d
    rla                                           ; $76bf: $17
    inc h                                         ; $76c0: $24
    nop                                           ; $76c1: $00
    ld e, a                                       ; $76c2: $5f
    ld bc, $5e00                                  ; $76c3: $01 $00 $5e
    ld bc, $1500                                  ; $76c6: $01 $00 $15
    ld [bc], a                                    ; $76c9: $02
    nop                                           ; $76ca: $00
    add hl, de                                    ; $76cb: $19
    nop                                           ; $76cc: $00
    add d                                         ; $76cd: $82
    ld e, a                                       ; $76ce: $5f
    nop                                           ; $76cf: $00
    nop                                           ; $76d0: $00
    rla                                           ; $76d1: $17
    dec c                                         ; $76d2: $0d
    nop                                           ; $76d3: $00
    ld e, $0d                                     ; $76d4: $1e $0d
    nop                                           ; $76d6: $00
    rla                                           ; $76d7: $17
    dec h                                         ; $76d8: $25
    nop                                           ; $76d9: $00
    ld e, $25                                     ; $76da: $1e $25
    nop                                           ; $76dc: $00
    rla                                           ; $76dd: $17
    add hl, de                                    ; $76de: $19
    nop                                           ; $76df: $00
    ld e, $19                                     ; $76e0: $1e $19
    nop                                           ; $76e2: $00
    rla                                           ; $76e3: $17
    inc h                                         ; $76e4: $24
    nop                                           ; $76e5: $00
    ld e, $24                                     ; $76e6: $1e $24
    nop                                           ; $76e8: $00
    ld e, a                                       ; $76e9: $5f
    ld bc, $5700                                  ; $76ea: $01 $00 $57
    nop                                           ; $76ed: $00
    nop                                           ; $76ee: $00
    nop                                           ; $76ef: $00
    nop                                           ; $76f0: $00
    nop                                           ; $76f1: $00
    add hl, bc                                    ; $76f2: $09
    nop                                           ; $76f3: $00
    dec b                                         ; $76f4: $05
    dec b                                         ; $76f5: $05
    rlca                                          ; $76f6: $07
    nop                                           ; $76f7: $00
    add hl, bc                                    ; $76f8: $09
    ld a, [$0502]                                 ; $76f9: $fa $02 $05
    dec b                                         ; $76fc: $05
    nop                                           ; $76fd: $00
    rrca                                          ; $76fe: $0f
    ld a, [$5f63]                                 ; $76ff: $fa $63 $5f
    ld bc, $7900                                  ; $7702: $01 $00 $79
    ld bc, $000b                                  ; $7705: $01 $0b $00
    nop                                           ; $7708: $00
    nop                                           ; $7709: $00
    add hl, bc                                    ; $770a: $09
    ld a, [$0563]                                 ; $770b: $fa $63 $05
    ld b, $00                                     ; $770e: $06 $00
    rrca                                          ; $7710: $0f
    ld a, [$5f00]                                 ; $7711: $fa $00 $5f
    ld bc, $6d00                                  ; $7714: $01 $00 $6d
    nop                                           ; $7717: $00
    nop                                           ; $7718: $00
    ld h, c                                       ; $7719: $61
    ld bc, $0000                                  ; $771a: $01 $00 $00
    nop                                           ; $771d: $00
    nop                                           ; $771e: $00
    ld e, a                                       ; $771f: $5f
    ld bc, $0000                                  ; $7720: $01 $00 $00
    nop                                           ; $7723: $00
    nop                                           ; $7724: $00
    ld e, a                                       ; $7725: $5f
    nop                                           ; $7726: $00
    nop                                           ; $7727: $00
    add hl, bc                                    ; $7728: $09
    nop                                           ; $7729: $00
    dec b                                         ; $772a: $05
    dec b                                         ; $772b: $05
    inc e                                         ; $772c: $1c
    nop                                           ; $772d: $00
    add hl, bc                                    ; $772e: $09
    ld a, [de]                                    ; $772f: $1a
    ld bc, $0305                                  ; $7730: $01 $05 $03
    nop                                           ; $7733: $00
    ld e, a                                       ; $7734: $5f
    ld bc, $0000                                  ; $7735: $01 $00 $00
    nop                                           ; $7738: $00
    nop                                           ; $7739: $00
    rrca                                          ; $773a: $0f
    ld a, [de]                                    ; $773b: $1a
    ld bc, $0056                                  ; $773c: $01 $56 $00
    nop                                           ; $773f: $00
    inc de                                        ; $7740: $13
    ld bc, $14e0                                  ; $7741: $01 $e0 $14
    nop                                           ; $7744: $00
    or b                                          ; $7745: $b0
    dec d                                         ; $7746: $15
    nop                                           ; $7747: $00
    nop                                           ; $7748: $00
    ld d, $0d                                     ; $7749: $16 $0d
    nop                                           ; $774b: $00
    ld d, d                                       ; $774c: $52
    nop                                           ; $774d: $00
    nop                                           ; $774e: $00
    dec de                                        ; $774f: $1b
    ld b, $00                                     ; $7750: $06 $00
    rla                                           ; $7752: $17
    nop                                           ; $7753: $00
    nop                                           ; $7754: $00
    ld e, a                                       ; $7755: $5f
    ld bc, $1500                                  ; $7756: $01 $00 $15
    ld [bc], a                                    ; $7759: $02
    nop                                           ; $775a: $00
    add hl, de                                    ; $775b: $19
    nop                                           ; $775c: $00
    inc a                                         ; $775d: $3c
    dec de                                        ; $775e: $1b
    ld [bc], a                                    ; $775f: $02
    nop                                           ; $7760: $00
    dec d                                         ; $7761: $15
    ld bc, $3300                                  ; $7762: $01 $00 $33
    ld bc, $150c                                  ; $7765: $01 $0c $15
    ld bc, $3300                                  ; $7768: $01 $00 $33
    ld bc, $170d                                  ; $776b: $01 $0d $17
    dec c                                         ; $776e: $0d
    nop                                           ; $776f: $00
    dec d                                         ; $7770: $15
    ld [bc], a                                    ; $7771: $02
    nop                                           ; $7772: $00
    add hl, de                                    ; $7773: $19
    nop                                           ; $7774: $00
    scf                                           ; $7775: $37
    ld e, $0d                                     ; $7776: $1e $0d
    nop                                           ; $7778: $00
    ld d, a                                       ; $7779: $57
    nop                                           ; $777a: $00
    nop                                           ; $777b: $00
    nop                                           ; $777c: $00
    nop                                           ; $777d: $00
    nop                                           ; $777e: $00
    nop                                           ; $777f: $00
    nop                                           ; $7780: $00
    nop                                           ; $7781: $00
    ld [bc], a                                    ; $7782: $02
    nop                                           ; $7783: $00
    nop                                           ; $7784: $00
    nop                                           ; $7785: $00
    ld e, d                                       ; $7786: $5a
    ld e, a                                       ; $7787: $5f
    nop                                           ; $7788: $00
    nop                                           ; $7789: $00
    add hl, bc                                    ; $778a: $09
    nop                                           ; $778b: $00
    dec b                                         ; $778c: $05
    dec b                                         ; $778d: $05
    ld a, [de]                                    ; $778e: $1a
    nop                                           ; $778f: $00
    add hl, bc                                    ; $7790: $09
    dec de                                        ; $7791: $1b
    ld bc, $0305                                  ; $7792: $01 $05 $03
    nop                                           ; $7795: $00
    ld e, a                                       ; $7796: $5f
    ld bc, $0000                                  ; $7797: $01 $00 $00
    nop                                           ; $779a: $00
    nop                                           ; $779b: $00
    ld d, [hl]                                    ; $779c: $56
    nop                                           ; $779d: $00
    nop                                           ; $779e: $00
    inc de                                        ; $779f: $13
    ld [bc], a                                    ; $77a0: $02
    ld l, h                                       ; $77a1: $6c
    inc d                                         ; $77a2: $14
    ld bc, $15db                                  ; $77a3: $01 $db $15
    nop                                           ; $77a6: $00
    nop                                           ; $77a7: $00
    ld d, $0d                                     ; $77a8: $16 $0d
    nop                                           ; $77aa: $00
    ld d, d                                       ; $77ab: $52
    nop                                           ; $77ac: $00
    nop                                           ; $77ad: $00
    dec de                                        ; $77ae: $1b
    ld b, $00                                     ; $77af: $06 $00
    rla                                           ; $77b1: $17
    nop                                           ; $77b2: $00
    nop                                           ; $77b3: $00
    ld e, a                                       ; $77b4: $5f
    ld bc, $1500                                  ; $77b5: $01 $00 $15
    ld [bc], a                                    ; $77b8: $02
    nop                                           ; $77b9: $00
    add hl, de                                    ; $77ba: $19
    nop                                           ; $77bb: $00
    inc a                                         ; $77bc: $3c
    dec de                                        ; $77bd: $1b
    ld [bc], a                                    ; $77be: $02
    nop                                           ; $77bf: $00
    dec d                                         ; $77c0: $15
    ld bc, $3300                                  ; $77c1: $01 $00 $33
    ld bc, $1710                                  ; $77c4: $01 $10 $17
    dec c                                         ; $77c7: $0d
    nop                                           ; $77c8: $00
    dec d                                         ; $77c9: $15
    ld [bc], a                                    ; $77ca: $02
    nop                                           ; $77cb: $00
    add hl, de                                    ; $77cc: $19
    nop                                           ; $77cd: $00
    ld [hl-], a                                   ; $77ce: $32
    ld e, $0d                                     ; $77cf: $1e $0d
    nop                                           ; $77d1: $00
    ld d, a                                       ; $77d2: $57
    nop                                           ; $77d3: $00
    nop                                           ; $77d4: $00
    rrca                                          ; $77d5: $0f
    dec de                                        ; $77d6: $1b
    ld bc, $0000                                  ; $77d7: $01 $00 $00
    nop                                           ; $77da: $00
    ld e, a                                       ; $77db: $5f
    ld bc, $0000                                  ; $77dc: $01 $00 $00
    nop                                           ; $77df: $00
    nop                                           ; $77e0: $00
    ld e, a                                       ; $77e1: $5f
    nop                                           ; $77e2: $00
    nop                                           ; $77e3: $00
    add hl, bc                                    ; $77e4: $09
    nop                                           ; $77e5: $00
    dec b                                         ; $77e6: $05
    dec b                                         ; $77e7: $05
    rlca                                          ; $77e8: $07
    nop                                           ; $77e9: $00
    add hl, bc                                    ; $77ea: $09
    ld a, [$0502]                                 ; $77eb: $fa $02 $05
    dec b                                         ; $77ee: $05
    nop                                           ; $77ef: $00
    rrca                                          ; $77f0: $0f
    ld a, [$5f63]                                 ; $77f1: $fa $63 $5f
    ld bc, $7900                                  ; $77f4: $01 $00 $79
    ld [bc], a                                    ; $77f7: $02
    inc c                                         ; $77f8: $0c
    nop                                           ; $77f9: $00
    nop                                           ; $77fa: $00
    nop                                           ; $77fb: $00
    ld e, a                                       ; $77fc: $5f
    ld bc, $0000                                  ; $77fd: $01 $00 $00
    nop                                           ; $7800: $00
    nop                                           ; $7801: $00
    inc bc                                        ; $7802: $03
    nop                                           ; $7803: $00
    nop                                           ; $7804: $00
    nop                                           ; $7805: $00
    ld h, e                                       ; $7806: $63
    nop                                           ; $7807: $00
    add h                                         ; $7808: $84
    ld e, a                                       ; $7809: $5f
    nop                                           ; $780a: $00
    nop                                           ; $780b: $00
    add hl, bc                                    ; $780c: $09
    nop                                           ; $780d: $00
    dec b                                         ; $780e: $05
    dec b                                         ; $780f: $05
    dec e                                         ; $7810: $1d
    nop                                           ; $7811: $00
    add hl, bc                                    ; $7812: $09
    inc e                                         ; $7813: $1c
    ld bc, $0305                                  ; $7814: $01 $05 $03
    nop                                           ; $7817: $00
    ld e, a                                       ; $7818: $5f
    ld bc, $0000                                  ; $7819: $01 $00 $00
    nop                                           ; $781c: $00
    nop                                           ; $781d: $00
    ld a, d                                       ; $781e: $7a
    ld bc, $5600                                  ; $781f: $01 $00 $56
    nop                                           ; $7822: $00
    nop                                           ; $7823: $00
    inc de                                        ; $7824: $13
    nop                                           ; $7825: $00
    push bc                                       ; $7826: $c5
    inc d                                         ; $7827: $14
    nop                                           ; $7828: $00
    ret z                                         ; $7829: $c8

    dec d                                         ; $782a: $15
    nop                                           ; $782b: $00
    nop                                           ; $782c: $00
    ld d, $0d                                     ; $782d: $16 $0d
    nop                                           ; $782f: $00
    ld d, d                                       ; $7830: $52
    nop                                           ; $7831: $00
    nop                                           ; $7832: $00
    dec de                                        ; $7833: $1b
    inc b                                         ; $7834: $04
    nop                                           ; $7835: $00
    ld e, a                                       ; $7836: $5f
    ld bc, $1700                                  ; $7837: $01 $00 $17
    nop                                           ; $783a: $00
    nop                                           ; $783b: $00
    dec d                                         ; $783c: $15
    nop                                           ; $783d: $00
    nop                                           ; $783e: $00
    add hl, de                                    ; $783f: $19
    nop                                           ; $7840: $00
    inc a                                         ; $7841: $3c
    dec de                                        ; $7842: $1b
    nop                                           ; $7843: $00
    nop                                           ; $7844: $00
    dec d                                         ; $7845: $15
    ld bc, $3300                                  ; $7846: $01 $00 $33
    ld bc, $1515                                  ; $7849: $01 $15 $15
    ld bc, $3300                                  ; $784c: $01 $00 $33
    ld bc, $1711                                  ; $784f: $01 $11 $17
    dec c                                         ; $7852: $0d
    nop                                           ; $7853: $00
    dec d                                         ; $7854: $15
    nop                                           ; $7855: $00
    nop                                           ; $7856: $00
    add hl, de                                    ; $7857: $19
    nop                                           ; $7858: $00
    scf                                           ; $7859: $37
    ld e, $0d                                     ; $785a: $1e $0d
    nop                                           ; $785c: $00
    ld h, d                                       ; $785d: $62
    ld b, $00                                     ; $785e: $06 $00
    ld d, a                                       ; $7860: $57
    nop                                           ; $7861: $00
    nop                                           ; $7862: $00
    nop                                           ; $7863: $00
    nop                                           ; $7864: $00
    nop                                           ; $7865: $00
    ld e, a                                       ; $7866: $5f
    ld bc, $0000                                  ; $7867: $01 $00 $00
    nop                                           ; $786a: $00
    nop                                           ; $786b: $00
    ld e, a                                       ; $786c: $5f
    nop                                           ; $786d: $00
    nop                                           ; $786e: $00
    add hl, bc                                    ; $786f: $09
    nop                                           ; $7870: $00
    dec b                                         ; $7871: $05
    dec b                                         ; $7872: $05
    rlca                                          ; $7873: $07
    nop                                           ; $7874: $00
    add hl, bc                                    ; $7875: $09
    ld a, [$0502]                                 ; $7876: $fa $02 $05
    dec b                                         ; $7879: $05
    nop                                           ; $787a: $00
    rrca                                          ; $787b: $0f
    ld a, [$5f63]                                 ; $787c: $fa $63 $5f
    ld bc, $7900                                  ; $787f: $01 $00 $79
    ld [bc], a                                    ; $7882: $02
    dec c                                         ; $7883: $0d
    nop                                           ; $7884: $00
    nop                                           ; $7885: $00
    nop                                           ; $7886: $00
    ld e, a                                       ; $7887: $5f
    ld bc, $0000                                  ; $7888: $01 $00 $00
    nop                                           ; $788b: $00
    nop                                           ; $788c: $00
    ld e, a                                       ; $788d: $5f
    nop                                           ; $788e: $00
    nop                                           ; $788f: $00
    ld d, [hl]                                    ; $7890: $56
    nop                                           ; $7891: $00
    nop                                           ; $7892: $00
    add hl, bc                                    ; $7893: $09
    ld d, a                                       ; $7894: $57
    ld bc, $0405                                  ; $7895: $01 $05 $04
    nop                                           ; $7898: $00
    ld d, a                                       ; $7899: $57
    nop                                           ; $789a: $00
    nop                                           ; $789b: $00
    ld e, a                                       ; $789c: $5f
    ld bc, $0000                                  ; $789d: $01 $00 $00
    nop                                           ; $78a0: $00
    nop                                           ; $78a1: $00
    add hl, bc                                    ; $78a2: $09
    nop                                           ; $78a3: $00
    dec b                                         ; $78a4: $05
    dec b                                         ; $78a5: $05
    ld [$1700], sp                                ; $78a6: $08 $00 $17
    nop                                           ; $78a9: $00
    nop                                           ; $78aa: $00
    dec de                                        ; $78ab: $1b
    ld b, $00                                     ; $78ac: $06 $00
    rrca                                          ; $78ae: $0f
    ld a, [$5700]                                 ; $78af: $fa $00 $57
    nop                                           ; $78b2: $00
    nop                                           ; $78b3: $00
    ld e, a                                       ; $78b4: $5f
    ld bc, $3500                                  ; $78b5: $01 $00 $35
    ld c, $00                                     ; $78b8: $0e $00
    nop                                           ; $78ba: $00
    nop                                           ; $78bb: $00
    nop                                           ; $78bc: $00
    ld e, a                                       ; $78bd: $5f
    ld bc, $0000                                  ; $78be: $01 $00 $00
    nop                                           ; $78c1: $00
    nop                                           ; $78c2: $00
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
