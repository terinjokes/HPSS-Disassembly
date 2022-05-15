; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0b6", ROMX[$4000], BANK[$b6]

    or [hl]                                       ; $4000: $b6
    nop                                           ; $4001: $00
    jr nz, jr_0b6_4004                            ; $4002: $20 $00

jr_0b6_4004:
    db $20, $f8                                   ; $4004: $20 $f8

jr_0b6_4006:
    ld b, $5c                                     ; $4006: $06 $5c
    rlca                                          ; $4008: $07
    nop                                           ; $4009: $00

jr_0b6_400a:
    jr nz, jr_0b6_400c                            ; $400a: $20 $00

jr_0b6_400c:
    jr nz, jr_0b6_4006                            ; $400c: $20 $f8

jr_0b6_400e:
    ld b, $5c                                     ; $400e: $06 $5c
    rlca                                          ; $4010: $07
    nop                                           ; $4011: $00
    jr nz, jr_0b6_4014                            ; $4012: $20 $00

jr_0b6_4014:
    jr nz, jr_0b6_400e                            ; $4014: $20 $f8

    ld b, $5c                                     ; $4016: $06 $5c
    rlca                                          ; $4018: $07
    nop                                           ; $4019: $00
    db $20, $9d                                   ; $401a: $20 $9d
    rrca                                          ; $401c: $0f
    rst $18                                       ; $401d: $df
    ld c, e                                       ; $401e: $4b
    rst $38                                       ; $401f: $ff
    ld l, a                                       ; $4020: $6f
    nop                                           ; $4021: $00
    db $18, $9f                                   ; $4022: $18 $9f
    dec b                                         ; $4024: $05
    ld e, a                                       ; $4025: $5f
    ld a, [bc]                                    ; $4026: $0a
    nop                                           ; $4027: $00
    jr nz, jr_0b6_402a                            ; $4028: $20 $00

jr_0b6_402a:
    inc c                                         ; $402a: $0c
    rra                                           ; $402b: $1f
    add hl, bc                                    ; $402c: $09
    nop                                           ; $402d: $00
    inc e                                         ; $402e: $1c
    nop                                           ; $402f: $00
    jr nz, jr_0b6_4032                            ; $4030: $20 $00

jr_0b6_4032:
    inc e                                         ; $4032: $1c
    nop                                           ; $4033: $00
    jr nz, jr_0b6_4036                            ; $4034: $20 $00

jr_0b6_4036:
    inc e                                         ; $4036: $1c
    nop                                           ; $4037: $00
    jr nz, jr_0b6_403a                            ; $4038: $20 $00

jr_0b6_403a:
    jr nz, jr_0b6_403c                            ; $403a: $20 $00

jr_0b6_403c:
    jr nz, jr_0b6_4036                            ; $403c: $20 $f8

jr_0b6_403e:
    ld b, $5c                                     ; $403e: $06 $5c
    rlca                                          ; $4040: $07
    nop                                           ; $4041: $00
    jr nz, jr_0b6_4044                            ; $4042: $20 $00

jr_0b6_4044:
    jr nz, jr_0b6_403e                            ; $4044: $20 $f8

    ld b, $5c                                     ; $4046: $06 $5c
    rlca                                          ; $4048: $07
    nop                                           ; $4049: $00
    jr nz, jr_0b6_400a                            ; $404a: $20 $be

    rra                                           ; $404c: $1f
    cp [hl]                                       ; $404d: $be
    inc sp                                        ; $404e: $33
    ld e, h                                       ; $404f: $5c
    rlca                                          ; $4050: $07
    dec b                                         ; $4051: $05
    nop                                           ; $4052: $00
    ld d, e                                       ; $4053: $53
    ld c, $9e                                     ; $4054: $0e $9e
    rrca                                          ; $4056: $0f
    ld a, a                                       ; $4057: $7f
    ld c, $06                                     ; $4058: $0e $06
    nop                                           ; $405a: $00
    cp [hl]                                       ; $405b: $be
    rra                                           ; $405c: $1f
    nop                                           ; $405d: $00
    inc e                                         ; $405e: $1c
    rst $38                                       ; $405f: $ff
    dec b                                         ; $4060: $05
    nop                                           ; $4061: $00
    jr nz, @+$21                                  ; $4062: $20 $1f

Jump_0b6_4064:
    add hl, bc                                    ; $4064: $09
    ld [$9f00], sp                                ; $4065: $08 $00 $9f
    dec b                                         ; $4068: $05
    nop                                           ; $4069: $00
    jr jr_0b6_408b                                ; $406a: $18 $1f

    add hl, bc                                    ; $406c: $09
    rra                                           ; $406d: $1f
    ld a, [bc]                                    ; $406e: $0a
    nop                                           ; $406f: $00
    jr nz, jr_0b6_4072                            ; $4070: $20 $00

jr_0b6_4072:
    jr nz, jr_0b6_4032                            ; $4072: $20 $be

    rra                                           ; $4074: $1f
    cp [hl]                                       ; $4075: $be
    inc sp                                        ; $4076: $33
    ld e, h                                       ; $4077: $5c
    rlca                                          ; $4078: $07
    nop                                           ; $4079: $00
    jr nz, jr_0b6_403a                            ; $407a: $20 $be

    rra                                           ; $407c: $1f
    cp [hl]                                       ; $407d: $be
    inc sp                                        ; $407e: $33
    ld e, h                                       ; $407f: $5c
    rlca                                          ; $4080: $07
    nop                                           ; $4081: $00
    jr nz, jr_0b6_4095                            ; $4082: $20 $11

    ld [de], a                                    ; $4084: $12
    db $fc                                        ; $4085: $fc
    ld b, $08                                     ; $4086: $06 $08
    nop                                           ; $4088: $00
    nop                                           ; $4089: $00
    nop                                           ; $408a: $00

jr_0b6_408b:
    ld e, e                                       ; $408b: $5b
    ld l, [hl]                                    ; $408c: $6e
    rst $38                                       ; $408d: $ff
    add hl, bc                                    ; $408e: $09

jr_0b6_408f:
    ld [$0000], sp                                ; $408f: $08 $00 $00
    jr nz, jr_0b6_40d2                            ; $4092: $20 $3e

    dec b                                         ; $4094: $05

jr_0b6_4095:
    ld [$be00], sp                                ; $4095: $08 $00 $be
    rra                                           ; $4098: $1f
    nop                                           ; $4099: $00
    inc e                                         ; $409a: $1c
    rra                                           ; $409b: $1f
    add hl, bc                                    ; $409c: $09
    ld e, a                                       ; $409d: $5f
    ld a, [bc]                                    ; $409e: $0a
    sbc a                                         ; $409f: $9f
    dec b                                         ; $40a0: $05
    nop                                           ; $40a1: $00
    inc e                                         ; $40a2: $1c
    nop                                           ; $40a3: $00
    jr nz, jr_0b6_4105                            ; $40a4: $20 $5f

    ld a, [bc]                                    ; $40a6: $0a
    sbc a                                         ; $40a7: $9f
    dec b                                         ; $40a8: $05

jr_0b6_40a9:
    nop                                           ; $40a9: $00
    jr nz, @+$13                                  ; $40aa: $20 $11

jr_0b6_40ac:
    ld [de], a                                    ; $40ac: $12
    db $fc                                        ; $40ad: $fc
    ld b, $08                                     ; $40ae: $06 $08
    nop                                           ; $40b0: $00
    nop                                           ; $40b1: $00
    jr nz, jr_0b6_40bc                            ; $40b2: $20 $08

    nop                                           ; $40b4: $00
    db $fc                                        ; $40b5: $fc
    ld b, $08                                     ; $40b6: $06 $08
    nop                                           ; $40b8: $00
    nop                                           ; $40b9: $00
    jr nz, jr_0b6_40ac                            ; $40ba: $20 $f0

jr_0b6_40bc:
    ld de, $09ff                                  ; $40bc: $11 $ff $09
    ld [$2900], sp                                ; $40bf: $08 $00 $29
    nop                                           ; $40c2: $00
    or $08                                        ; $40c3: $f6 $08
    ld e, e                                       ; $40c5: $5b
    ld l, [hl]                                    ; $40c6: $6e
    sbc $09                                       ; $40c7: $de $09
    ld [$7900], sp                                ; $40c9: $08 $00 $79
    dec b                                         ; $40cc: $05
    cp a                                          ; $40cd: $bf
    add hl, bc                                    ; $40ce: $09
    ld a, a                                       ; $40cf: $7f
    ld c, $00                                     ; $40d0: $0e $00

jr_0b6_40d2:
    jr nz, jr_0b6_408f                            ; $40d2: $20 $bb

    inc b                                         ; $40d4: $04
    rra                                           ; $40d5: $1f
    ld a, [bc]                                    ; $40d6: $0a
    ld [$0000], sp                                ; $40d7: $08 $00 $00
    jr nz, @-$43                                  ; $40da: $20 $bb

    inc b                                         ; $40dc: $04
    rra                                           ; $40dd: $1f
    ld a, [bc]                                    ; $40de: $0a
    ld [$0000], sp                                ; $40df: $08 $00 $00
    jr nz, @+$81                                  ; $40e2: $20 $7f

    ld c, $08                                     ; $40e4: $0e $08
    nop                                           ; $40e6: $00
    ld [$0800], sp                                ; $40e7: $08 $00 $08
    nop                                           ; $40ea: $00
    cp a                                          ; $40eb: $bf
    add hl, bc                                    ; $40ec: $09
    inc sp                                        ; $40ed: $33
    dec b                                         ; $40ee: $05
    ld a, a                                       ; $40ef: $7f
    ld c, $9e                                     ; $40f0: $0e $9e
    inc b                                         ; $40f2: $04
    rst $38                                       ; $40f3: $ff
    add hl, bc                                    ; $40f4: $09
    inc e                                         ; $40f5: $1c
    add hl, bc                                    ; $40f6: $09
    ld e, a                                       ; $40f7: $5f
    ld a, [bc]                                    ; $40f8: $0a
    nop                                           ; $40f9: $00
    nop                                           ; $40fa: $00
    add hl, de                                    ; $40fb: $19
    nop                                           ; $40fc: $00
    ld e, l                                       ; $40fd: $5d
    add hl, bc                                    ; $40fe: $09
    ld c, d                                       ; $40ff: $4a
    nop                                           ; $4100: $00
    ld [$9f00], sp                                ; $4101: $08 $00 $9f
    nop                                           ; $4104: $00

jr_0b6_4105:
    cp a                                          ; $4105: $bf
    add hl, bc                                    ; $4106: $09
    ld a, a                                       ; $4107: $7f
    ld c, $00                                     ; $4108: $0e $00
    jr nz, jr_0b6_40a9                            ; $410a: $20 $9d

    dec bc                                        ; $410c: $0b
    ld [$1f00], sp                                ; $410d: $08 $00 $1f
    ld a, [bc]                                    ; $4110: $0a
    nop                                           ; $4111: $00
    inc e                                         ; $4112: $1c
    rra                                           ; $4113: $1f
    add hl, bc                                    ; $4114: $09
    rra                                           ; $4115: $1f
    ld a, [bc]                                    ; $4116: $0a
    nop                                           ; $4117: $00
    jr nz, jr_0b6_411a                            ; $4118: $20 $00

jr_0b6_411a:
    jr nz, jr_0b6_4170                            ; $411a: $20 $54

    dec c                                         ; $411c: $0d
    ld [$5f00], sp                                ; $411d: $08 $00 $5f
    ld a, [bc]                                    ; $4120: $0a
    ld [$7e00], sp                                ; $4121: $08 $00 $7e
    nop                                           ; $4124: $00
    dec a                                         ; $4125: $3d
    add hl, bc                                    ; $4126: $09
    rra                                           ; $4127: $1f
    ld a, [bc]                                    ; $4128: $0a
    rla                                           ; $4129: $17
    nop                                           ; $412a: $00
    dec sp                                        ; $412b: $3b
    add hl, bc                                    ; $412c: $09
    ld e, $00                                     ; $412d: $1e $00
    db $dd                                        ; $412f: $dd
    inc b                                         ; $4130: $04
    ld [$5b00], sp                                ; $4131: $08 $00 $5b
    ld l, d                                       ; $4134: $6a
    dec a                                         ; $4135: $3d
    nop                                           ; $4136: $00
    ld a, l                                       ; $4137: $7d
    add hl, bc                                    ; $4138: $09
    ld [$5b00], sp                                ; $4139: $08 $00 $5b
    ld l, [hl]                                    ; $413c: $6e
    rst $18                                       ; $413d: $df
    inc b                                         ; $413e: $04
    cp a                                          ; $413f: $bf
    add hl, bc                                    ; $4140: $09
    ld [$bf00], sp                                ; $4141: $08 $00 $bf
    inc b                                         ; $4144: $04
    call c, $bf06                                 ; $4145: $dc $06 $bf
    add hl, bc                                    ; $4148: $09
    nop                                           ; $4149: $00
    inc b                                         ; $414a: $04
    nop                                           ; $414b: $00
    inc e                                         ; $414c: $1c
    nop                                           ; $414d: $00
    inc d                                         ; $414e: $14
    nop                                           ; $414f: $00
    jr nz, jr_0b6_4152                            ; $4150: $20 $00

jr_0b6_4152:
    jr nz, @+$01                                  ; $4152: $20 $ff

    inc b                                         ; $4154: $04
    ld [$bc00], sp                                ; $4155: $08 $00 $bc
    add hl, bc                                    ; $4158: $09
    dec hl                                        ; $4159: $2b
    nop                                           ; $415a: $00
    jr jr_0b6_415d                                ; $415b: $18 $00

jr_0b6_415d:
    ld a, a                                       ; $415d: $7f
    ld c, $9e                                     ; $415e: $0e $9e
    nop                                           ; $4160: $00
    ld [$ff00], sp                                ; $4161: $08 $00 $ff
    add hl, bc                                    ; $4164: $09
    rla                                           ; $4165: $17
    nop                                           ; $4166: $00
    ld a, a                                       ; $4167: $7f
    ld c, $09                                     ; $4168: $0e $09
    nop                                           ; $416a: $00
    ld a, b                                       ; $416b: $78
    dec b                                         ; $416c: $05
    ld e, e                                       ; $416d: $5b
    ld l, [hl]                                    ; $416e: $6e
    rra                                           ; $416f: $1f

jr_0b6_4170:
    ld a, [bc]                                    ; $4170: $0a
    ld [$3a00], sp                                ; $4171: $08 $00 $3a
    ld l, d                                       ; $4174: $6a
    ld e, e                                       ; $4175: $5b
    ld l, [hl]                                    ; $4176: $6e
    ld e, d                                       ; $4177: $5a
    ld l, d                                       ; $4178: $6a
    dec b                                         ; $4179: $05
    nop                                           ; $417a: $00
    sbc [hl]                                      ; $417b: $9e
    rlca                                          ; $417c: $07
    inc e                                         ; $417d: $1c
    ld d, a                                       ; $417e: $57
    rra                                           ; $417f: $1f
    add hl, bc                                    ; $4180: $09
    nop                                           ; $4181: $00
    jr nz, @-$3f                                  ; $4182: $20 $bf

    add hl, bc                                    ; $4184: $09
    ld [$1f00], sp                                ; $4185: $08 $00 $1f
    ld a, [bc]                                    ; $4188: $0a
    ld [$7d00], sp                                ; $4189: $08 $00 $7d
    nop                                           ; $418c: $00
    rst $38                                       ; $418d: $ff
    ld d, d                                       ; $418e: $52
    rst $38                                       ; $418f: $ff
    add hl, bc                                    ; $4190: $09
    ld [$ff00], sp                                ; $4191: $08 $00 $ff
    ld d, d                                       ; $4194: $52
    ld e, d                                       ; $4195: $5a
    nop                                           ; $4196: $00
    cp a                                          ; $4197: $bf
    inc b                                         ; $4198: $04
    ld [$df00], sp                                ; $4199: $08 $00 $df
    add hl, bc                                    ; $419c: $09
    sbc a                                         ; $419d: $9f
    inc b                                         ; $419e: $04
    ld a, a                                       ; $419f: $7f
    ld a, [bc]                                    ; $41a0: $0a
    nop                                           ; $41a1: $00
    nop                                           ; $41a2: $00
    ld e, e                                       ; $41a3: $5b
    ld l, [hl]                                    ; $41a4: $6e
    ld [$1f00], sp                                ; $41a5: $08 $00 $1f
    ld a, [bc]                                    ; $41a8: $0a
    nop                                           ; $41a9: $00
    nop                                           ; $41aa: $00
    db $e3                                        ; $41ab: $e3
    ld e, h                                       ; $41ac: $5c
    ld e, e                                       ; $41ad: $5b
    ld l, [hl]                                    ; $41ae: $6e
    ret                                           ; $41af: $c9


    ld a, l                                       ; $41b0: $7d
    nop                                           ; $41b1: $00
    nop                                           ; $41b2: $00
    ld e, e                                       ; $41b3: $5b
    ld l, [hl]                                    ; $41b4: $6e
    dec sp                                        ; $41b5: $3b
    inc bc                                        ; $41b6: $03
    cp [hl]                                       ; $41b7: $be
    dec sp                                        ; $41b8: $3b
    nop                                           ; $41b9: $00
    jr nz, @-$2f                                  ; $41ba: $20 $cf

    dec d                                         ; $41bc: $15

jr_0b6_41bd:
    sub [hl]                                      ; $41bd: $96
    ld c, $f0                                     ; $41be: $0e $f0
    dec d                                         ; $41c0: $15
    rlca                                          ; $41c1: $07
    nop                                           ; $41c2: $00
    dec a                                         ; $41c3: $3d
    dec b                                         ; $41c4: $05
    rst $38                                       ; $41c5: $ff
    ld d, d                                       ; $41c6: $52
    ld c, e                                       ; $41c7: $4b
    dec e                                         ; $41c8: $1d
    ld b, e                                       ; $41c9: $43
    nop                                           ; $41ca: $00
    ret nz                                        ; $41cb: $c0

    ld a, h                                       ; $41cc: $7c
    cp c                                          ; $41cd: $b9
    ld e, [hl]                                    ; $41ce: $5e
    rla                                           ; $41cf: $17
    nop                                           ; $41d0: $00
    ld [$5b00], sp                                ; $41d1: $08 $00 $5b
    ld l, [hl]                                    ; $41d4: $6e
    cp c                                          ; $41d5: $b9
    ld e, [hl]                                    ; $41d6: $5e
    rla                                           ; $41d7: $17
    nop                                           ; $41d8: $00
    nop                                           ; $41d9: $00
    nop                                           ; $41da: $00
    xor b                                         ; $41db: $a8
    ld [hl], l                                    ; $41dc: $75
    ld [de], a                                    ; $41dd: $12
    ld a, [de]                                    ; $41de: $1a
    ld e, e                                       ; $41df: $5b
    ld l, [hl]                                    ; $41e0: $6e
    add h                                         ; $41e1: $84
    jr z, jr_0b6_41bd                             ; $41e2: $28 $d9

    ld [bc], a                                    ; $41e4: $02
    jr nz, jr_0b6_4257                            ; $41e5: $20 $70

    rst $18                                       ; $41e7: $df
    scf                                           ; $41e8: $37
    nop                                           ; $41e9: $00
    nop                                           ; $41ea: $00
    ld e, e                                       ; $41eb: $5b
    ld l, [hl]                                    ; $41ec: $6e
    add b                                         ; $41ed: $80
    ld d, h                                       ; $41ee: $54
    jr nz, @+$1e                                  ; $41ef: $20 $1c

    nop                                           ; $41f1: $00
    inc e                                         ; $41f2: $1c
    ld [hl-], a                                   ; $41f3: $32
    ld c, $3b                                     ; $41f4: $0e $3b
    inc bc                                        ; $41f6: $03
    cp [hl]                                       ; $41f7: $be
    daa                                           ; $41f8: $27
    ld [$dd00], sp                                ; $41f9: $08 $00 $dd
    ld c, [hl]                                    ; $41fc: $4e
    dec a                                         ; $41fd: $3d
    nop                                           ; $41fe: $00
    ld e, h                                       ; $41ff: $5c
    add hl, bc                                    ; $4200: $09
    db $e4                                        ; $4201: $e4
    ld d, b                                       ; $4202: $50
    rst $38                                       ; $4203: $ff
    ld d, d                                       ; $4204: $52
    xor b                                         ; $4205: $a8
    inc d                                         ; $4206: $14
    jp nc, $2135                                  ; $4207: $d2 $35 $21

    nop                                           ; $420a: $00
    or b                                          ; $420b: $b0
    ld bc, $4861                                  ; $420c: $01 $61 $48
    inc a                                         ; $420f: $3c
    rrca                                          ; $4210: $0f
    nop                                           ; $4211: $00
    nop                                           ; $4212: $00
    add c                                         ; $4213: $81
    ld l, h                                       ; $4214: $6c
    dec bc                                        ; $4215: $0b
    ld a, [hl]                                    ; $4216: $7e
    nop                                           ; $4217: $00
    jr c, jr_0b6_421a                             ; $4218: $38 $00

jr_0b6_421a:
    nop                                           ; $421a: $00
    ld e, e                                       ; $421b: $5b
    ld l, [hl]                                    ; $421c: $6e
    ld e, h                                       ; $421d: $5c
    rlca                                          ; $421e: $07
    adc [hl]                                      ; $421f: $8e
    ld bc, $0000                                  ; $4220: $01 $00 $00
    ld e, e                                       ; $4223: $5b
    ld l, d                                       ; $4224: $6a
    ld e, e                                       ; $4225: $5b
    ld l, [hl]                                    ; $4226: $6e
    adc [hl]                                      ; $4227: $8e
    ld bc, $1c00                                  ; $4228: $01 $00 $1c
    or [hl]                                       ; $422b: $b6
    ld a, [bc]                                    ; $422c: $0a
    ld e, l                                       ; $422d: $5d
    ld l, a                                       ; $422e: $6f
    cp [hl]                                       ; $422f: $be
    inc hl                                        ; $4230: $23
    jr nz, jr_0b6_4243                            ; $4231: $20 $10

    ld a, c                                       ; $4233: $79
    dec bc                                        ; $4234: $0b
    adc h                                         ; $4235: $8c
    inc b                                         ; $4236: $04
    rst $38                                       ; $4237: $ff
    ld d, d                                       ; $4238: $52
    jr nz, jr_0b6_425f                            ; $4239: $20 $24

    cp [hl]                                       ; $423b: $be
    ld c, [hl]                                    ; $423c: $4e
    rla                                           ; $423d: $17
    nop                                           ; $423e: $00
    ld a, [bc]                                    ; $423f: $0a
    dec b                                         ; $4240: $05
    nop                                           ; $4241: $00
    nop                                           ; $4242: $00

jr_0b6_4243:
    ld b, [hl]                                    ; $4243: $46
    ld [hl], c                                    ; $4244: $71
    ld l, l                                       ; $4245: $6d
    ld bc, $01f2                                  ; $4246: $01 $f2 $01
    nop                                           ; $4249: $00
    db $10                                        ; $424a: $10
    rst $18                                       ; $424b: $df

Call_0b6_424c:
    inc bc                                        ; $424c: $03
    ld a, [de]                                    ; $424d: $1a
    daa                                           ; $424e: $27
    rst $38                                       ; $424f: $ff
    ld c, e                                       ; $4250: $4b
    nop                                           ; $4251: $00
    nop                                           ; $4252: $00
    reti                                          ; $4253: $d9


    ld b, $5b                                     ; $4254: $06 $5b
    ld l, [hl]                                    ; $4256: $6e

jr_0b6_4257:
    add hl, bc                                    ; $4257: $09
    ld bc, $0000                                  ; $4258: $01 $00 $00
    sub a                                         ; $425b: $97
    ld c, $5b                                     ; $425c: $0e $5b
    ld l, [hl]                                    ; $425e: $6e

jr_0b6_425f:
    ld l, h                                       ; $425f: $6c
    dec b                                         ; $4260: $05
    nop                                           ; $4261: $00
    inc e                                         ; $4262: $1c
    cp [hl]                                       ; $4263: $be
    rra                                           ; $4264: $1f
    ld e, e                                       ; $4265: $5b
    ld l, [hl]                                    ; $4266: $6e
    rst $18                                       ; $4267: $df
    ld h, a                                       ; $4268: $67
    add [hl]                                      ; $4269: $86
    ld [$60a1], sp                                ; $426a: $08 $a1 $60
    rst $38                                       ; $426d: $ff
    ld d, d                                       ; $426e: $52
    xor c                                         ; $426f: $a9
    ld l, c                                       ; $4270: $69
    ld [hl+], a                                   ; $4271: $22
    nop                                           ; $4272: $00

jr_0b6_4273:
    ld e, l                                       ; $4273: $5d
    ld hl, $6a3a                                  ; $4274: $21 $3a $6a
    cp [hl]                                       ; $4277: $be
    ld c, [hl]                                    ; $4278: $4e
    nop                                           ; $4279: $00
    nop                                           ; $427a: $00
    add c                                         ; $427b: $81
    ld l, h                                       ; $427c: $6c
    ld c, $7a                                     ; $427d: $0e $7a
    and l                                         ; $427f: $a5
    jr nz, jr_0b6_42c5                            ; $4280: $20 $43

    nop                                           ; $4282: $00
    cp b                                          ; $4283: $b8
    ld b, $8f                                     ; $4284: $06 $8f
    ld bc, $0b9e                                  ; $4286: $01 $9e $0b
    nop                                           ; $4289: $00
    nop                                           ; $428a: $00
    jp c, $a40a                                   ; $428b: $da $0a $a4

    jr c, jr_0b6_421a                             ; $428e: $38 $8a

    ld a, l                                       ; $4290: $7d
    nop                                           ; $4291: $00
    ld [$0677], sp                                ; $4292: $08 $77 $06
    ld a, [de]                                    ; $4295: $1a
    ld l, d                                       ; $4296: $6a
    ld c, h                                       ; $4297: $4c
    ld bc, $1c00                                  ; $4298: $01 $00 $1c
    ld a, [de]                                    ; $429b: $1a
    ld l, d                                       ; $429c: $6a
    add hl, de                                    ; $429d: $19
    inc bc                                        ; $429e: $03
    cp [hl]                                       ; $429f: $be
    inc sp                                        ; $42a0: $33
    nop                                           ; $42a1: $00
    db $10                                        ; $42a2: $10

jr_0b6_42a3:
    rst $38                                       ; $42a3: $ff
    ccf                                           ; $42a4: $3f
    ld h, b                                       ; $42a5: $60
    ld e, h                                       ; $42a6: $5c
    ld l, h                                       ; $42a7: $6c
    dec e                                         ; $42a8: $1d
    nop                                           ; $42a9: $00
    ld [$7e0b], sp                                ; $42aa: $08 $0b $7e
    sub [hl]                                      ; $42ad: $96
    ld a, [de]                                    ; $42ae: $1a
    rst $38                                       ; $42af: $ff
    cpl                                           ; $42b0: $2f
    rst $00                                       ; $42b1: $c7
    nop                                           ; $42b2: $00
    rst $18                                       ; $42b3: $df
    dec sp                                        ; $42b4: $3b
    jr nz, @+$52                                  ; $42b5: $20 $50

    and a                                         ; $42b7: $a7
    ld a, l                                       ; $42b8: $7d
    ld h, h                                       ; $42b9: $64
    nop                                           ; $42ba: $00
    ret nc                                        ; $42bb: $d0

    ld bc, $40a3                                  ; $42bc: $01 $a3 $40
    dec de                                        ; $42bf: $1b
    rlca                                          ; $42c0: $07
    add l                                         ; $42c1: $85
    nop                                           ; $42c2: $00
    and e                                         ; $42c3: $a3
    ld b, b                                       ; $42c4: $40

jr_0b6_42c5:
    xor a                                         ; $42c5: $af
    ld bc, $6948                                  ; $42c6: $01 $48 $69
    nop                                           ; $42c9: $00
    nop                                           ; $42ca: $00
    cp b                                          ; $42cb: $b8
    ld h, c                                       ; $42cc: $61
    add d                                         ; $42cd: $82
    jr nc, jr_0b6_4273                            ; $42ce: $30 $a3

    ld b, h                                       ; $42d0: $44
    nop                                           ; $42d1: $00
    inc e                                         ; $42d2: $1c
    cp b                                          ; $42d3: $b8
    ld h, c                                       ; $42d4: $61
    ld d, e                                       ; $42d5: $53
    ld c, $be                                     ; $42d6: $0e $be
    rra                                           ; $42d8: $1f
    nop                                           ; $42d9: $00
    ld [$4fff], sp                                ; $42da: $08 $ff $4f
    ld h, b                                       ; $42dd: $60
    ld d, b                                       ; $42de: $50
    sub b                                         ; $42df: $90
    dec b                                         ; $42e0: $05
    and [hl]                                      ; $42e1: $a6
    nop                                           ; $42e2: $00
    nop                                           ; $42e3: $00
    jr c, jr_0b6_431b                             ; $42e4: $38 $35

    ld [bc], a                                    ; $42e6: $02
    ret nz                                        ; $42e7: $c0

    ld [hl], h                                    ; $42e8: $74
    nop                                           ; $42e9: $00
    jr nz, jr_0b6_42a3                            ; $42ea: $20 $b7

    ld [de], a                                    ; $42ec: $12
    ld a, l                                       ; $42ed: $7d
    daa                                           ; $42ee: $27
    ld a, [bc]                                    ; $42ef: $0a
    ld bc, $0000                                  ; $42f0: $01 $00 $00
    ld [hl], $59                                  ; $42f3: $36 $59
    ld h, c                                       ; $42f5: $61
    inc l                                         ; $42f6: $2c
    dec hl                                        ; $42f7: $2b
    ld bc, $0420                                  ; $42f8: $01 $20 $04
    ld a, [bc]                                    ; $42fb: $0a
    ld bc, $2c40                                  ; $42fc: $01 $40 $2c
    adc [hl]                                      ; $42ff: $8e
    ld bc, $0000                                  ; $4300: $01 $00 $00
    ld d, [hl]                                    ; $4303: $56
    ld e, c                                       ; $4304: $59
    and e                                         ; $4305: $a3
    jr c, @+$79                                   ; $4306: $38 $77

    ld e, l                                       ; $4308: $5d
    nop                                           ; $4309: $00
    nop                                           ; $430a: $00
    ld [hl], a                                    ; $430b: $77
    ld e, c                                       ; $430c: $59
    ld [hl], h                                    ; $430d: $74
    ld a, [bc]                                    ; $430e: $0a
    nop                                           ; $430f: $00
    jr nz, jr_0b6_4312                            ; $4310: $20 $00

jr_0b6_4312:
    nop                                           ; $4312: $00
    dec b                                         ; $4313: $05
    scf                                           ; $4314: $37
    db $eb                                        ; $4315: $eb
    ld c, a                                       ; $4316: $4f
    nop                                           ; $4317: $00
    jr nz, jr_0b6_431a                            ; $4318: $20 $00

jr_0b6_431a:
    nop                                           ; $431a: $00

jr_0b6_431b:
    adc l                                         ; $431b: $8d
    ld e, e                                       ; $431c: $5b
    or [hl]                                       ; $431d: $b6
    ld c, $86                                     ; $431e: $0e $86
    nop                                           ; $4320: $00
    nop                                           ; $4321: $00
    nop                                           ; $4322: $00
    ld [de], a                                    ; $4323: $12
    ld b, $28                                     ; $4324: $06 $28
    ld [$0e75], sp                                ; $4326: $08 $75 $0e
    nop                                           ; $4329: $00
    nop                                           ; $432a: $00
    push af                                       ; $432b: $f5
    ld d, h                                       ; $432c: $54
    ld [hl], $59                                  ; $432d: $36 $59
    nop                                           ; $432f: $00
    jr nz, jr_0b6_4332                            ; $4330: $20 $00

jr_0b6_4332:
    nop                                           ; $4332: $00
    push af                                       ; $4333: $f5
    ld d, h                                       ; $4334: $54
    ld [hl], $59                                  ; $4335: $36 $59
    nop                                           ; $4337: $00
    jr nz, jr_0b6_433a                            ; $4338: $20 $00

jr_0b6_433a:
    nop                                           ; $433a: $00
    ld de, $f526                                  ; $433b: $11 $26 $f5
    ld d, h                                       ; $433e: $54
    ld [hl], $59                                  ; $433f: $36 $59
    nop                                           ; $4341: $00
    nop                                           ; $4342: $00
    dec d                                         ; $4343: $15
    ld d, l                                       ; $4344: $55
    or [hl]                                       ; $4345: $b6
    ld a, [bc]                                    ; $4346: $0a
    nop                                           ; $4347: $00
    jr nz, jr_0b6_434a                            ; $4348: $20 $00

jr_0b6_434a:
    db $10                                        ; $434a: $10
    add e                                         ; $434b: $83
    ld a, [hl+]                                   ; $434c: $2a
    ld b, c                                       ; $434d: $41
    dec d                                         ; $434e: $15
    ld b, [hl]                                    ; $434f: $46
    scf                                           ; $4350: $37
    nop                                           ; $4351: $00
    nop                                           ; $4352: $00
    ld c, d                                       ; $4353: $4a
    ld b, a                                       ; $4354: $47
    pop af                                        ; $4355: $f1
    ld l, e                                       ; $4356: $6b
    ld b, $2a                                     ; $4357: $06 $2a
    nop                                           ; $4359: $00
    inc b                                         ; $435a: $04
    ldh a, [$67]                                  ; $435b: $f0 $67
    ld h, b                                       ; $435d: $60
    ld h, b                                       ; $435e: $60
    jr nz, @+$2a                                  ; $435f: $20 $28

    nop                                           ; $4361: $00
    nop                                           ; $4362: $00
    push af                                       ; $4363: $f5
    ld d, h                                       ; $4364: $54
    jr nz, jr_0b6_4383                            ; $4365: $20 $1c

    ld b, b                                       ; $4367: $40
    inc a                                         ; $4368: $3c
    nop                                           ; $4369: $00
    nop                                           ; $436a: $00
    push af                                       ; $436b: $f5
    ld d, h                                       ; $436c: $54
    jr nz, jr_0b6_438b                            ; $436d: $20 $1c

    ld b, b                                       ; $436f: $40
    inc a                                         ; $4370: $3c
    ld hl, $f500                                  ; $4371: $21 $00 $f5
    ld d, h                                       ; $4374: $54
    sbc [hl]                                      ; $4375: $9e
    dec bc                                        ; $4376: $0b
    rst $38                                       ; $4377: $ff
    ld d, a                                       ; $4378: $57
    nop                                           ; $4379: $00
    inc e                                         ; $437a: $1c
    push af                                       ; $437b: $f5
    ld d, h                                       ; $437c: $54
    ld [hl-], a                                   ; $437d: $32
    ld c, $5c                                     ; $437e: $0e $5c
    rrca                                          ; $4380: $0f
    jr nz, jr_0b6_4383                            ; $4381: $20 $00

jr_0b6_4383:
    pop bc                                        ; $4383: $c1
    dec e                                         ; $4384: $1d
    ld h, $37                                     ; $4385: $26 $37
    nop                                           ; $4387: $00
    jr nz, jr_0b6_438a                            ; $4388: $20 $00

jr_0b6_438a:
    nop                                           ; $438a: $00

jr_0b6_438b:
    db $e4                                        ; $438b: $e4
    dec h                                         ; $438c: $25
    ld h, $37                                     ; $438d: $26 $37
    xor b                                         ; $438f: $a8
    ld b, e                                       ; $4390: $43
    nop                                           ; $4391: $00
    inc b                                         ; $4392: $04
    xor c                                         ; $4393: $a9
    ld a, $60                                     ; $4394: $3e $60
    ld h, b                                       ; $4396: $60
    rst $08                                       ; $4397: $cf
    ld e, a                                       ; $4398: $5f
    nop                                           ; $4399: $00
    nop                                           ; $439a: $00
    ld h, b                                       ; $439b: $60
    ld c, b                                       ; $439c: $48
    add b                                         ; $439d: $80
    ld [hl], b                                    ; $439e: $70
    ld b, b                                       ; $439f: $40
    jr nc, jr_0b6_43a2                            ; $43a0: $30 $00

jr_0b6_43a2:
    nop                                           ; $43a2: $00
    ld h, b                                       ; $43a3: $60
    ld d, h                                       ; $43a4: $54
    nop                                           ; $43a5: $00
    inc e                                         ; $43a6: $1c
    ret nz                                        ; $43a7: $c0

    ld a, h                                       ; $43a8: $7c
    ld bc, $f500                                  ; $43a9: $01 $00 $f5
    ld d, h                                       ; $43ac: $54
    add sp, $00                                   ; $43ad: $e8 $00
    adc [hl]                                      ; $43af: $8e
    ld bc, $1c00                                  ; $43b0: $01 $00 $1c
    push af                                       ; $43b3: $f5
    ld d, h                                       ; $43b4: $54
    or [hl]                                       ; $43b5: $b6
    ld b, $be                                     ; $43b6: $06 $be
    rla                                           ; $43b8: $17
    nop                                           ; $43b9: $00
    ld [$2202], sp                                ; $43ba: $08 $02 $22
    ldh [$08], a                                  ; $43bd: $e0 $08
    inc h                                         ; $43bf: $24
    inc sp                                        ; $43c0: $33
    ld b, b                                       ; $43c1: $40
    inc b                                         ; $43c2: $04
    ld h, $37                                     ; $43c3: $26 $37
    adc c                                         ; $43c5: $89
    ld b, e                                       ; $43c6: $43
    db $eb                                        ; $43c7: $eb
    ld c, a                                       ; $43c8: $4f
    nop                                           ; $43c9: $00
    nop                                           ; $43ca: $00
    ld h, b                                       ; $43cb: $60
    ld d, b                                       ; $43cc: $50
    ret                                           ; $43cd: $c9


    ld b, d                                       ; $43ce: $42
    add d                                         ; $43cf: $82
    ld hl, $0000                                  ; $43d0: $21 $00 $00
    ld h, b                                       ; $43d3: $60
    ld c, h                                       ; $43d4: $4c
    add b                                         ; $43d5: $80
    ld l, h                                       ; $43d6: $6c
    jr nz, jr_0b6_43fd                            ; $43d7: $20 $24

    nop                                           ; $43d9: $00
    nop                                           ; $43da: $00
    ld h, b                                       ; $43db: $60
    ld c, h                                       ; $43dc: $4c
    ret nz                                        ; $43dd: $c0

    ld a, h                                       ; $43de: $7c
    add b                                         ; $43df: $80
    ld h, h                                       ; $43e0: $64
    nop                                           ; $43e1: $00
    nop                                           ; $43e2: $00
    push af                                       ; $43e3: $f5
    ld d, h                                       ; $43e4: $54
    and a                                         ; $43e5: $a7

jr_0b6_43e6:
    nop                                           ; $43e6: $00
    ld a, [bc]                                    ; $43e7: $0a

jr_0b6_43e8:
    ld bc, $0000                                  ; $43e8: $01 $00 $00
    add hl, de                                    ; $43eb: $19
    rlca                                          ; $43ec: $07
    cp [hl]                                       ; $43ed: $be
    ccf                                           ; $43ee: $3f
    nop                                           ; $43ef: $00
    jr nz, jr_0b6_43f2                            ; $43f0: $20 $00

jr_0b6_43f2:
    nop                                           ; $43f2: $00
    pop bc                                        ; $43f3: $c1
    dec e                                         ; $43f4: $1d
    nop                                           ; $43f5: $00
    inc e                                         ; $43f6: $1c
    ret nz                                        ; $43f7: $c0

    ld [$0440], sp                                ; $43f8: $08 $40 $04
    dec b                                         ; $43fb: $05
    inc sp                                        ; $43fc: $33

jr_0b6_43fd:
    db $ed                                        ; $43fd: $ed
    ld d, e                                       ; $43fe: $53
    and h                                         ; $43ff: $a4
    ld hl, $0800                                  ; $4400: $21 $00 $08
    inc l                                         ; $4403: $2c
    ld c, e                                       ; $4404: $4b
    ld b, b                                       ; $4405: $40
    jr c, jr_0b6_444b                             ; $4406: $38 $43

    add hl, de                                    ; $4408: $19
    nop                                           ; $4409: $00
    nop                                           ; $440a: $00
    add b                                         ; $440b: $80
    ld l, b                                       ; $440c: $68
    jr nz, jr_0b6_4437                            ; $440d: $20 $28

    ld h, b                                       ; $440f: $60
    ld b, b                                       ; $4410: $40
    jr nz, jr_0b6_443b                            ; $4411: $20 $28

    add b                                         ; $4413: $80
    ld e, h                                       ; $4414: $5c
    ld h, b                                       ; $4415: $60
    ld b, h                                       ; $4416: $44
    and b                                         ; $4417: $a0
    ld [hl], h                                    ; $4418: $74
    nop                                           ; $4419: $00
    ld [$54f5], sp                                ; $441a: $08 $f5 $54
    sbc h                                         ; $441d: $9c
    ld b, e                                       ; $441e: $43
    ret nz                                        ; $441f: $c0

    ld a, h                                       ; $4420: $7c
    nop                                           ; $4421: $00
    inc e                                         ; $4422: $1c
    rst $10                                       ; $4423: $d7
    ld b, $de                                     ; $4424: $06 $de
    ld b, e                                       ; $4426: $43
    sbc l                                         ; $4427: $9d
    dec bc                                        ; $4428: $0b
    jr nz, jr_0b6_442b                            ; $4429: $20 $00

jr_0b6_442b:
    ret nz                                        ; $442b: $c0

    inc b                                         ; $442c: $04
    nop                                           ; $442d: $00
    jr nz, @+$62                                  ; $442e: $20 $60

    dec d                                         ; $4430: $15
    ld h, d                                       ; $4431: $62
    add hl, de                                    ; $4432: $19
    push hl                                       ; $4433: $e5
    ld [hl-], a                                   ; $4434: $32
    ld b, h                                       ; $4435: $44
    ld a, [hl+]                                   ; $4436: $2a

jr_0b6_4437:
    and a                                         ; $4437: $a7
    ccf                                           ; $4438: $3f
    nop                                           ; $4439: $00
    inc b                                         ; $443a: $04

jr_0b6_443b:
    add a                                         ; $443b: $87
    ld [hl-], a                                   ; $443c: $32
    adc e                                         ; $443d: $8b

jr_0b6_443e:
    ld c, e                                       ; $443e: $4b
    rst $28                                       ; $443f: $ef
    ld e, a                                       ; $4440: $5f
    nop                                           ; $4441: $00
    jr @-$7e                                      ; $4442: $18 $80

    ld e, h                                       ; $4444: $5c
    ld b, b                                       ; $4445: $40
    jr c, jr_0b6_43e8                             ; $4446: $38 $a0

    ld [hl], b                                    ; $4448: $70
    nop                                           ; $4449: $00
    nop                                           ; $444a: $00

jr_0b6_444b:
    ld b, b                                       ; $444b: $40
    inc [hl]                                      ; $444c: $34
    jr nz, jr_0b6_446f                            ; $444d: $20 $20

    ld h, b                                       ; $444f: $60
    ld c, b                                       ; $4450: $48
    nop                                           ; $4451: $00
    nop                                           ; $4452: $00
    push af                                       ; $4453: $f5
    ld d, h                                       ; $4454: $54
    rst $18                                       ; $4455: $df
    dec hl                                        ; $4456: $2b
    jr nz, jr_0b6_44a1                            ; $4457: $20 $48

    nop                                           ; $4459: $00
    jr nz, @-$48                                  ; $445a: $20 $b6

    ld a, [bc]                                    ; $445c: $0a
    ld e, e                                       ; $445d: $5b
    inc bc                                        ; $445e: $03
    cp [hl]                                       ; $445f: $be
    rra                                           ; $4460: $1f
    nop                                           ; $4461: $00
    nop                                           ; $4462: $00
    nop                                           ; $4463: $00
    jr nz, jr_0b6_43e6                            ; $4464: $20 $80

    nop                                           ; $4466: $00
    nop                                           ; $4467: $00
    dec c                                         ; $4468: $0d
    ld h, b                                       ; $4469: $60
    dec d                                         ; $446a: $15
    push hl                                       ; $446b: $e5
    ld [hl-], a                                   ; $446c: $32
    xor b                                         ; $446d: $a8
    ld b, a                                       ; $446e: $47

jr_0b6_446f:
    inc hl                                        ; $446f: $23
    ld h, $00                                     ; $4470: $26 $00
    nop                                           ; $4472: $00
    ld b, l                                       ; $4473: $45
    ld l, $ce                                     ; $4474: $2e $ce
    ld d, a                                       ; $4476: $57
    ld b, $3b                                     ; $4477: $06 $3b
    nop                                           ; $4479: $00
    nop                                           ; $447a: $00
    ld b, b                                       ; $447b: $40
    inc a                                         ; $447c: $3c
    add b                                         ; $447d: $80
    ld h, h                                       ; $447e: $64
    jr nz, jr_0b6_44a1                            ; $447f: $20 $20

    nop                                           ; $4481: $00
    nop                                           ; $4482: $00
    ret nz                                        ; $4483: $c0

    ld a, b                                       ; $4484: $78
    nop                                           ; $4485: $00
    jr @+$42                                      ; $4486: $18 $40

    jr z, jr_0b6_448a                             ; $4488: $28 $00

jr_0b6_448a:
    nop                                           ; $448a: $00
    ld [hl], a                                    ; $448b: $77
    ld [bc], a                                    ; $448c: $02
    ld l, l                                       ; $448d: $6d
    ld bc, $037d                                  ; $448e: $01 $7d $03
    nop                                           ; $4491: $00
    jr nz, jr_0b6_44c6                            ; $4492: $20 $32

    ld [de], a                                    ; $4494: $12
    ld a, [de]                                    ; $4495: $1a
    inc bc                                        ; $4496: $03
    sub [hl]                                      ; $4497: $96
    ld c, $00                                     ; $4498: $0e $00
    nop                                           ; $449a: $00
    nop                                           ; $449b: $00
    jr nz, jr_0b6_443e                            ; $449c: $20 $a0

    inc b                                         ; $449e: $04
    ret nz                                        ; $449f: $c0

    inc b                                         ; $44a0: $04

jr_0b6_44a1:
    ld h, b                                       ; $44a1: $60

jr_0b6_44a2:
    nop                                           ; $44a2: $00
    ld b, d                                       ; $44a3: $42
    ld h, $67                                     ; $44a4: $26 $67
    ccf                                           ; $44a6: $3f
    add c                                         ; $44a7: $81
    dec d                                         ; $44a8: $15
    add [hl]                                      ; $44a9: $86
    ld [hl-], a                                   ; $44aa: $32
    adc d                                         ; $44ab: $8a
    ld b, a                                       ; $44ac: $47
    call z, $e753                                 ; $44ad: $cc $53 $e7
    ld a, [hl-]                                   ; $44b0: $3a
    nop                                           ; $44b1: $00
    nop                                           ; $44b2: $00
    ld l, b                                       ; $44b3: $68
    ld [hl-], a                                   ; $44b4: $32
    jr nz, jr_0b6_44df                            ; $44b5: $20 $28

    call $004f                                    ; $44b7: $cd $4f $00
    inc b                                         ; $44ba: $04
    add b                                         ; $44bb: $80
    ld e, h                                       ; $44bc: $5c
    ld a, [c]                                     ; $44bd: $f2
    ld bc, $78c0                                  ; $44be: $01 $c0 $78
    ld b, d                                       ; $44c1: $42
    nop                                           ; $44c2: $00
    push af                                       ; $44c3: $f5
    ld d, h                                       ; $44c4: $54
    adc [hl]                                      ; $44c5: $8e

jr_0b6_44c6:
    ld bc, $0e75                                  ; $44c6: $01 $75 $0e
    nop                                           ; $44c9: $00
    jr nz, jr_0b6_44dc                            ; $44ca: $20 $10

    ld d, $11                                     ; $44cc: $16 $11
    ld [de], a                                    ; $44ce: $12
    ld [hl], l                                    ; $44cf: $75
    ld c, $00                                     ; $44d0: $0e $00
    nop                                           ; $44d2: $00
    nop                                           ; $44d3: $00
    jr nz, jr_0b6_44a2                            ; $44d4: $20 $cc

    ld d, e                                       ; $44d6: $53
    rst $20                                       ; $44d7: $e7
    ld a, [hl-]                                   ; $44d8: $3a
    nop                                           ; $44d9: $00
    nop                                           ; $44da: $00
    pop hl                                        ; $44db: $e1

jr_0b6_44dc:
    dec e                                         ; $44dc: $1d
    nop                                           ; $44dd: $00
    add hl, bc                                    ; $44de: $09

jr_0b6_44df:
    ld b, d                                       ; $44df: $42
    ld h, $e2                                     ; $44e0: $26 $e2
    inc d                                         ; $44e2: $14
    ld c, b                                       ; $44e3: $48
    ccf                                           ; $44e4: $3f
    ld h, e                                       ; $44e5: $63
    ld a, [hl+]                                   ; $44e6: $2a
    jp z, Jump_000_204b                           ; $44e7: $ca $4b $20

    inc c                                         ; $44ea: $0c
    add a                                         ; $44eb: $87
    ld [hl-], a                                   ; $44ec: $32
    push af                                       ; $44ed: $f5
    ld d, h                                       ; $44ee: $54
    db $eb                                        ; $44ef: $eb
    ld d, a                                       ; $44f0: $57
    nop                                           ; $44f1: $00
    nop                                           ; $44f2: $00
    add b                                         ; $44f3: $80
    ld e, h                                       ; $44f4: $5c
    ld b, b                                       ; $44f5: $40
    inc [hl]                                      ; $44f6: $34
    ret nz                                        ; $44f7: $c0

    ld a, b                                       ; $44f8: $78
    nop                                           ; $44f9: $00
    nop                                           ; $44fa: $00
    push af                                       ; $44fb: $f5
    ld d, h                                       ; $44fc: $54
    ld [hl-], a                                   ; $44fd: $32
    ld c, $0a                                     ; $44fe: $0e $0a
    ld bc, $2000                                  ; $4500: $01 $00 $20
    ld a, [de]                                    ; $4503: $1a
    inc bc                                        ; $4504: $03
    ld [hl-], a                                   ; $4505: $32
    ld c, $0a                                     ; $4506: $0e $0a
    ld bc, $0000                                  ; $4508: $01 $00 $00
    nop                                           ; $450b: $00
    jr nz, jr_0b6_4571                            ; $450c: $20 $63

    ld a, [hl+]                                   ; $450e: $2a
    jp z, $404b                                   ; $450f: $ca $4b $40

    nop                                           ; $4512: $00
    and c                                         ; $4513: $a1
    add hl, de                                    ; $4514: $19
    ldh [$08], a                                  ; $4515: $e0 $08
    ld [hl+], a                                   ; $4517: $22
    ld [hl+], a                                   ; $4518: $22
    ld bc, $2712                                  ; $4519: $01 $12 $27
    dec sp                                        ; $451c: $3b
    add e                                         ; $451d: $83
    ld a, [hl+]                                   ; $451e: $2a
    ld b, e                                       ; $451f: $43
    dec e                                         ; $4520: $1d
    nop                                           ; $4521: $00
    nop                                           ; $4522: $00
    ld l, e                                       ; $4523: $6b

jr_0b6_4524:
    ld a, l                                       ; $4524: $7d
    push af                                       ; $4525: $f5
    ld d, h                                       ; $4526: $54
    ld l, $7e                                     ; $4527: $2e $7e
    nop                                           ; $4529: $00
    inc b                                         ; $452a: $04
    ld h, b                                       ; $452b: $60
    ld c, h                                       ; $452c: $4c
    jr nz, @+$2a                                  ; $452d: $20 $28

    and b                                         ; $452f: $a0
    ld [hl], b                                    ; $4530: $70

jr_0b6_4531:
    nop                                           ; $4531: $00
    nop                                           ; $4532: $00
    push af                                       ; $4533: $f5
    ld d, h                                       ; $4534: $54
    rst $38                                       ; $4535: $ff
    ld c, a                                       ; $4536: $4f
    dec sp                                        ; $4537: $3b
    dec bc                                        ; $4538: $0b
    nop                                           ; $4539: $00
    jr nz, jr_0b6_4531                            ; $453a: $20 $f5

    ld d, h                                       ; $453c: $54
    rst $38                                       ; $453d: $ff
    ld c, a                                       ; $453e: $4f
    dec sp                                        ; $453f: $3b
    dec bc                                        ; $4540: $0b
    nop                                           ; $4541: $00
    jr nz, @+$29                                  ; $4542: $20 $27

    dec sp                                        ; $4544: $3b
    add e                                         ; $4545: $83
    ld a, [hl+]                                   ; $4546: $2a
    ld b, e                                       ; $4547: $43
    dec e                                         ; $4548: $1d
    nop                                           ; $4549: $00
    nop                                           ; $454a: $00
    ldh [$08], a                                  ; $454b: $e0 $08
    ld b, b                                       ; $454d: $40
    ld de, $0460                                  ; $454e: $11 $60 $04
    nop                                           ; $4551: $00
    nop                                           ; $4552: $00
    xor b                                         ; $4553: $a8
    ld a, l                                       ; $4554: $7d
    inc b                                         ; $4555: $04
    ld e, $65                                     ; $4556: $1e $65
    inc l                                         ; $4558: $2c
    ld hl, $2300                                  ; $4559: $21 $00 $23
    ld [hl], c                                    ; $455c: $71
    inc d                                         ; $455d: $14
    ld [bc], a                                    ; $455e: $02
    ld b, c                                       ; $455f: $41
    inc h                                         ; $4560: $24
    nop                                           ; $4561: $00
    ld [$54f5], sp                                ; $4562: $08 $f5 $54
    ld [hl], a                                    ; $4565: $77
    ld [bc], a                                    ; $4566: $02
    jp hl                                         ; $4567: $e9


    nop                                           ; $4568: $00
    nop                                           ; $4569: $00
    ld [$0296], sp                                ; $456a: $08 $96 $02
    rst $18                                       ; $456d: $df
    ld e, a                                       ; $456e: $5f
    cp [hl]                                       ; $456f: $be
    rla                                           ; $4570: $17

jr_0b6_4571:
    nop                                           ; $4571: $00
    jr nz, @-$68                                  ; $4572: $20 $96

    ld [bc], a                                    ; $4574: $02
    rst $18                                       ; $4575: $df
    ld e, a                                       ; $4576: $5f
    cp [hl]                                       ; $4577: $be
    rla                                           ; $4578: $17
    nop                                           ; $4579: $00

jr_0b6_457a:
    jr nz, jr_0b6_4524                            ; $457a: $20 $a8

    ld a, l                                       ; $457c: $7d
    inc b                                         ; $457d: $04
    ld e, $65                                     ; $457e: $1e $65
    inc l                                         ; $4580: $2c
    nop                                           ; $4581: $00
    nop                                           ; $4582: $00
    daa                                           ; $4583: $27
    ld l, c                                       ; $4584: $69
    ret nz                                        ; $4585: $c0

    ld de, $2000                                  ; $4586: $11 $00 $20
    ld hl, $2500                                  ; $4589: $21 $00 $25
    ld [hl], c                                    ; $458c: $71
    or b                                          ; $458d: $b0
    ld bc, $2820                                  ; $458e: $01 $20 $28
    ld hl, $b000                                  ; $4591: $21 $00 $b0
    ld bc, $5040                                  ; $4594: $01 $40 $50
    ld d, [hl]                                    ; $4597: $56
    ld [bc], a                                    ; $4598: $02
    nop                                           ; $4599: $00
    nop                                           ; $459a: $00
    ld a, [bc]                                    ; $459b: $0a
    ld bc, $54f5                                  ; $459c: $01 $f5 $54
    adc [hl]                                      ; $459f: $8e
    ld bc, $0c00                                  ; $45a0: $01 $00 $0c
    inc de                                        ; $45a3: $13
    ld [bc], a                                    ; $45a4: $02
    rst $18                                       ; $45a5: $df
    ld h, e                                       ; $45a6: $63
    sbc [hl]                                      ; $45a7: $9e
    inc de                                        ; $45a8: $13
    nop                                           ; $45a9: $00
    jr nz, jr_0b6_45bf                            ; $45aa: $20 $13

    ld [bc], a                                    ; $45ac: $02
    rst $18                                       ; $45ad: $df
    ld h, e                                       ; $45ae: $63
    sbc [hl]                                      ; $45af: $9e
    inc de                                        ; $45b0: $13
    nop                                           ; $45b1: $00
    jr nz, jr_0b6_45d9                            ; $45b2: $20 $25

    ld [hl], c                                    ; $45b4: $71
    or b                                          ; $45b5: $b0
    ld bc, $2820                                  ; $45b6: $01 $20 $28
    jr nz, jr_0b6_45bb                            ; $45b9: $20 $00

jr_0b6_45bb:
    ld h, b                                       ; $45bb: $60
    ld h, h                                       ; $45bc: $64
    ret z                                         ; $45bd: $c8

    ld a, l                                       ; $45be: $7d

jr_0b6_45bf:
    nop                                           ; $45bf: $00
    jr nz, jr_0b6_45c2                            ; $45c0: $20 $00

jr_0b6_45c2:
    inc b                                         ; $45c2: $04
    adc [hl]                                      ; $45c3: $8e
    ld bc, $7840                                  ; $45c4: $01 $40 $78
    ld a, l                                       ; $45c7: $7d
    inc bc                                        ; $45c8: $03
    nop                                           ; $45c9: $00
    nop                                           ; $45ca: $00
    ld de, $5312                                  ; $45cb: $11 $12 $53
    ld c, $b6                                     ; $45ce: $0e $b6

jr_0b6_45d0:
    ld a, [bc]                                    ; $45d0: $0a
    nop                                           ; $45d1: $00
    nop                                           ; $45d2: $00
    dec sp                                        ; $45d3: $3b
    rlca                                          ; $45d4: $07
    ld a, [hl+]                                   ; $45d5: $2a
    ld bc, $0dcf                                  ; $45d6: $01 $cf $0d

jr_0b6_45d9:
    nop                                           ; $45d9: $00
    inc c                                         ; $45da: $0c
    ld d, e                                       ; $45db: $53
    ld a, [bc]                                    ; $45dc: $0a
    ld a, l                                       ; $45dd: $7d
    rlca                                          ; $45de: $07
    cp [hl]                                       ; $45df: $be

jr_0b6_45e0:
    scf                                           ; $45e0: $37
    nop                                           ; $45e1: $00
    jr nz, jr_0b6_4637                            ; $45e2: $20 $53

    ld a, [bc]                                    ; $45e4: $0a
    ld a, l                                       ; $45e5: $7d
    rlca                                          ; $45e6: $07
    cp [hl]                                       ; $45e7: $be

jr_0b6_45e8:
    scf                                           ; $45e8: $37
    nop                                           ; $45e9: $00
    jr nz, jr_0b6_457a                            ; $45ea: $20 $8e

    ld bc, $7840                                  ; $45ec: $01 $40 $78
    ld a, l                                       ; $45ef: $7d
    inc bc                                        ; $45f0: $03
    nop                                           ; $45f1: $00
    nop                                           ; $45f2: $00
    sub a                                         ; $45f3: $97
    ld a, [bc]                                    ; $45f4: $0a
    nop                                           ; $45f5: $00
    jr nz, jr_0b6_463a                            ; $45f6: $20 $42

    inc d                                         ; $45f8: $14
    nop                                           ; $45f9: $00
    nop                                           ; $45fa: $00
    adc [hl]                                      ; $45fb: $8e
    add hl, bc                                    ; $45fc: $09
    ld hl, sp+$06                                 ; $45fd: $f8 $06
    ld e, h                                       ; $45ff: $5c
    rlca                                          ; $4600: $07
    nop                                           ; $4601: $00
    jr nz, jr_0b6_4615                            ; $4602: $20 $11

    ld [de], a                                    ; $4604: $12
    ld [hl], h                                    ; $4605: $74
    ld c, $b6                                     ; $4606: $0e $b6
    ld a, [bc]                                    ; $4608: $0a
    nop                                           ; $4609: $00
    nop                                           ; $460a: $00
    ld a, [de]                                    ; $460b: $1a

jr_0b6_460c:
    inc bc                                        ; $460c: $03
    cp [hl]                                       ; $460d: $be
    dec hl                                        ; $460e: $2b
    nop                                           ; $460f: $00
    jr nz, jr_0b6_4612                            ; $4610: $20 $00

jr_0b6_4612:
    inc e                                         ; $4612: $1c
    ldh a, [$0d]                                  ; $4613: $f0 $0d

jr_0b6_4615:
    cp [hl]                                       ; $4615: $be
    dec hl                                        ; $4616: $2b
    ld hl, sp+$06                                 ; $4617: $f8 $06
    nop                                           ; $4619: $00
    jr nz, jr_0b6_460c                            ; $461a: $20 $f0

    dec c                                         ; $461c: $0d
    cp [hl]                                       ; $461d: $be
    dec hl                                        ; $461e: $2b
    ld hl, sp+$06                                 ; $461f: $f8 $06
    nop                                           ; $4621: $00
    jr nz, jr_0b6_4624                            ; $4622: $20 $00

jr_0b6_4624:
    jr nz, jr_0b6_463e                            ; $4624: $20 $18

    ld [hl], a                                    ; $4626: $77
    ld c, b                                       ; $4627: $48
    ld b, l                                       ; $4628: $45
    nop                                           ; $4629: $00
    jr nz, jr_0b6_462c                            ; $462a: $20 $00

jr_0b6_462c:
    jr nz, jr_0b6_4646                            ; $462c: $20 $18

    ld [hl], a                                    ; $462e: $77
    ld c, b                                       ; $462f: $48
    ld b, l                                       ; $4630: $45
    nop                                           ; $4631: $00
    jr nz, jr_0b6_4634                            ; $4632: $20 $00

jr_0b6_4634:
    jr nz, jr_0b6_464e                            ; $4634: $20 $18

    ld [hl], a                                    ; $4636: $77

jr_0b6_4637:
    ld c, b                                       ; $4637: $48
    ld b, l                                       ; $4638: $45
    nop                                           ; $4639: $00

jr_0b6_463a:
    jr nz, jr_0b6_45d0                            ; $463a: $20 $94

    ld [hl], d                                    ; $463c: $72
    sbc h                                         ; $463d: $9c

jr_0b6_463e:
    ld a, e                                       ; $463e: $7b
    cp l                                          ; $463f: $bd
    ld a, e                                       ; $4640: $7b
    nop                                           ; $4641: $00
    jr nz, @-$6a                                  ; $4642: $20 $94

    ld [hl], d                                    ; $4644: $72
    sbc h                                         ; $4645: $9c

jr_0b6_4646:
    ld a, e                                       ; $4646: $7b
    cp l                                          ; $4647: $bd
    ld a, e                                       ; $4648: $7b
    nop                                           ; $4649: $00
    jr nz, jr_0b6_45e0                            ; $464a: $20 $94

    ld [hl], d                                    ; $464c: $72
    sbc h                                         ; $464d: $9c

jr_0b6_464e:
    ld a, e                                       ; $464e: $7b
    cp l                                          ; $464f: $bd
    ld a, e                                       ; $4650: $7b
    nop                                           ; $4651: $00
    jr nz, jr_0b6_45e8                            ; $4652: $20 $94

    ld [hl], d                                    ; $4654: $72
    sbc h                                         ; $4655: $9c
    ld a, e                                       ; $4656: $7b
    cp l                                          ; $4657: $bd
    ld a, e                                       ; $4658: $7b
    nop                                           ; $4659: $00
    jr nz, jr_0b6_465c                            ; $465a: $20 $00

jr_0b6_465c:
    jr nz, jr_0b6_4676                            ; $465c: $20 $18

    ld [hl], a                                    ; $465e: $77
    ld c, b                                       ; $465f: $48
    ld b, l                                       ; $4660: $45
    nop                                           ; $4661: $00
    jr nz, jr_0b6_4664                            ; $4662: $20 $00

jr_0b6_4664:
    jr nz, @+$1a                                  ; $4664: $20 $18

    ld [hl], a                                    ; $4666: $77
    ld c, b                                       ; $4667: $48
    ld b, l                                       ; $4668: $45
    nop                                           ; $4669: $00
    jr nz, jr_0b6_466c                            ; $466a: $20 $00

jr_0b6_466c:
    jr nz, @+$1a                                  ; $466c: $20 $18

    ld [hl], a                                    ; $466e: $77
    ld c, b                                       ; $466f: $48
    ld b, l                                       ; $4670: $45
    nop                                           ; $4671: $00
    nop                                           ; $4672: $00

jr_0b6_4673:
    adc e                                         ; $4673: $8b
    ld d, c                                       ; $4674: $51
    ld [hl], a                                    ; $4675: $77

jr_0b6_4676:
    ld a, h                                       ; $4676: $7c
    halt                                          ; $4677: $76
    ld [hl], d                                    ; $4678: $72
    nop                                           ; $4679: $00
    jr nz, jr_0b6_4682                            ; $467a: $20 $06

    dec a                                         ; $467c: $3d
    call Call_0b6_7659                            ; $467d: $cd $59 $76
    ld [hl], d                                    ; $4680: $72
    nop                                           ; $4681: $00

jr_0b6_4682:
    jr nz, jr_0b6_468a                            ; $4682: $20 $06

    dec a                                         ; $4684: $3d
    call Call_0b6_7659                            ; $4685: $cd $59 $76
    ld [hl], d                                    ; $4688: $72

jr_0b6_4689:
    nop                                           ; $4689: $00

jr_0b6_468a:
    jr nz, jr_0b6_4692                            ; $468a: $20 $06

    dec a                                         ; $468c: $3d
    call Call_0b6_7659                            ; $468d: $cd $59 $76
    ld [hl], d                                    ; $4690: $72
    nop                                           ; $4691: $00

jr_0b6_4692:
    jr nz, jr_0b6_4694                            ; $4692: $20 $00

jr_0b6_4694:
    jr nz, jr_0b6_46ae                            ; $4694: $20 $18

    ld [hl], a                                    ; $4696: $77
    ld c, b                                       ; $4697: $48
    ld b, l                                       ; $4698: $45
    nop                                           ; $4699: $00
    jr nz, jr_0b6_469c                            ; $469a: $20 $00

jr_0b6_469c:
    jr nz, jr_0b6_46b6                            ; $469c: $20 $18

    ld [hl], a                                    ; $469e: $77
    ld c, b                                       ; $469f: $48
    ld b, l                                       ; $46a0: $45
    nop                                           ; $46a1: $00
    jr nz, jr_0b6_4689                            ; $46a2: $20 $e5

    inc a                                         ; $46a4: $3c
    rst $28                                       ; $46a5: $ef
    ld h, c                                       ; $46a6: $61
    dec b                                         ; $46a7: $05
    dec a                                         ; $46a8: $3d
    nop                                           ; $46a9: $00
    inc b                                         ; $46aa: $04
    ld a, h                                       ; $46ab: $7c
    ld a, l                                       ; $46ac: $7d
    and a                                         ; $46ad: $a7

jr_0b6_46ae:
    jr c, jr_0b6_46fa                             ; $46ae: $38 $4a

    dec b                                         ; $46b0: $05

jr_0b6_46b1:
    nop                                           ; $46b1: $00
    inc e                                         ; $46b2: $1c
    dec b                                         ; $46b3: $05
    dec a                                         ; $46b4: $3d
    sub e                                         ; $46b5: $93

jr_0b6_46b6:
    ld e, [hl]                                    ; $46b6: $5e
    xor e                                         ; $46b7: $ab
    ld c, c                                       ; $46b8: $49
    nop                                           ; $46b9: $00
    nop                                           ; $46ba: $00
    rst $38                                       ; $46bb: $ff
    ld c, e                                       ; $46bc: $4b
    nop                                           ; $46bd: $00
    jr nz, @-$53                                  ; $46be: $20 $ab

    ld c, c                                       ; $46c0: $49
    nop                                           ; $46c1: $00
    jr nz, @+$01                                  ; $46c2: $20 $ff

    ld c, e                                       ; $46c4: $4b
    nop                                           ; $46c5: $00
    jr nz, jr_0b6_4673                            ; $46c6: $20 $ab

    ld c, c                                       ; $46c8: $49
    nop                                           ; $46c9: $00
    jr nz, jr_0b6_46b1                            ; $46ca: $20 $e5

    inc a                                         ; $46cc: $3c
    rst $28                                       ; $46cd: $ef
    ld h, c                                       ; $46ce: $61
    dec b                                         ; $46cf: $05

jr_0b6_46d0:
    dec a                                         ; $46d0: $3d
    nop                                           ; $46d1: $00
    nop                                           ; $46d2: $00
    sra b                                         ; $46d3: $cb $28
    nop                                           ; $46d5: $00
    jr jr_0b6_46d8                                ; $46d6: $18 $00

jr_0b6_46d8:
    jr nz, jr_0b6_46da                            ; $46d8: $20 $00

jr_0b6_46da:
    ld [$4569], sp                                ; $46da: $08 $69 $45
    rst $38                                       ; $46dd: $ff
    ld d, e                                       ; $46de: $53
    jr nc, jr_0b6_4737                            ; $46df: $30 $56

    jr nz, jr_0b6_46e7                            ; $46e1: $20 $04

    jr c, @+$11                                   ; $46e3: $38 $0f

    rst $38                                       ; $46e5: $ff
    ld l, a                                       ; $46e6: $6f

jr_0b6_46e7:
    adc $01                                       ; $46e7: $ce $01
    nop                                           ; $46e9: $00
    db $10                                        ; $46ea: $10
    sub e                                         ; $46eb: $93
    ld e, [hl]                                    ; $46ec: $5e
    ld a, d                                       ; $46ed: $7a
    ld [hl], e                                    ; $46ee: $73
    xor h                                         ; $46ef: $ac
    ld bc, $0c01                                  ; $46f0: $01 $01 $0c
    cp $37                                        ; $46f3: $fe $37
    db $fc                                        ; $46f5: $fc
    ld [hl], l                                    ; $46f6: $75
    rst $38                                       ; $46f7: $ff
    ld a, a                                       ; $46f8: $7f
    nop                                           ; $46f9: $00

jr_0b6_46fa:
    jr nz, jr_0b6_46fa                            ; $46fa: $20 $fe

    scf                                           ; $46fc: $37
    db $fc                                        ; $46fd: $fc
    ld [hl], l                                    ; $46fe: $75
    rst $38                                       ; $46ff: $ff
    ld a, a                                       ; $4700: $7f
    nop                                           ; $4701: $00
    jr nz, jr_0b6_476d                            ; $4702: $20 $69

    ld b, l                                       ; $4704: $45
    rst $38                                       ; $4705: $ff
    ld d, e                                       ; $4706: $53
    jr nc, jr_0b6_475f                            ; $4707: $30 $56

    nop                                           ; $4709: $00
    nop                                           ; $470a: $00
    dec d                                         ; $470b: $15
    ld a, $9e                                     ; $470c: $3e $9e

jr_0b6_470e:
    ld a, l                                       ; $470e: $7d
    nop                                           ; $470f: $00
    jr nz, jr_0b6_4772                            ; $4710: $20 $60

    nop                                           ; $4712: $00
    sub h                                         ; $4713: $94
    ld d, $7b                                     ; $4714: $16 $7b
    ld e, e                                       ; $4716: $5b
    rst $38                                       ; $4717: $ff
    daa                                           ; $4718: $27
    ld [bc], a                                    ; $4719: $02
    inc d                                         ; $471a: $14
    sub d                                         ; $471b: $92
    ld [bc], a                                    ; $471c: $02
    rst $38                                       ; $471d: $ff
    daa                                           ; $471e: $27
    rst $38                                       ; $471f: $ff
    ld h, a                                       ; $4720: $67
    nop                                           ; $4721: $00
    nop                                           ; $4722: $00
    cp l                                          ; $4723: $bd
    ld a, e                                       ; $4724: $7b
    adc d                                         ; $4725: $8a
    jr nc, jr_0b6_4791                            ; $4726: $30 $69

    ld bc, $0042                                  ; $4728: $01 $42 $00
    ld [hl], c                                    ; $472b: $71
    ld d, b                                       ; $472c: $50
    inc a                                         ; $472d: $3c
    ld a, c                                       ; $472e: $79
    add hl, bc                                    ; $472f: $09
    inc [hl]                                      ; $4730: $34
    nop                                           ; $4731: $00
    jr nz, @+$73                                  ; $4732: $20 $71

    ld d, b                                       ; $4734: $50
    inc a                                         ; $4735: $3c
    ld a, c                                       ; $4736: $79

jr_0b6_4737:
    add hl, bc                                    ; $4737: $09
    inc [hl]                                      ; $4738: $34
    nop                                           ; $4739: $00
    jr nz, jr_0b6_46d0                            ; $473a: $20 $94

    ld d, $7b                                     ; $473c: $16 $7b
    ld e, e                                       ; $473e: $5b
    rst $38                                       ; $473f: $ff
    daa                                           ; $4740: $27
    ld hl, $0900                                  ; $4741: $21 $00 $09
    jr nc, jr_0b6_4746                            ; $4744: $30 $00

jr_0b6_4746:
    jr nz, jr_0b6_4757                            ; $4746: $20 $0f

    ld d, b                                       ; $4748: $50
    jr nz, jr_0b6_474b                            ; $4749: $20 $00

jr_0b6_474b:
    sbc d                                         ; $474b: $9a
    ld a, b                                       ; $474c: $78
    ccf                                           ; $474d: $3f
    ld a, [hl]                                    ; $474e: $7e
    inc h                                         ; $474f: $24
    inc d                                         ; $4750: $14
    and h                                         ; $4751: $a4
    ld [$78da], sp                                ; $4752: $08 $da $78
    inc l                                         ; $4755: $2c
    ld b, b                                       ; $4756: $40

jr_0b6_4757:
    sbc d                                         ; $4757: $9a
    rla                                           ; $4758: $17
    nop                                           ; $4759: $00
    nop                                           ; $475a: $00
    sbc a                                         ; $475b: $9f
    ld a, l                                       ; $475c: $7d
    adc e                                         ; $475d: $8b
    inc l                                         ; $475e: $2c

jr_0b6_475f:
    rst $38                                       ; $475f: $ff
    ld h, e                                       ; $4760: $63
    nop                                           ; $4761: $00
    nop                                           ; $4762: $00
    rst $38                                       ; $4763: $ff
    ld b, a                                       ; $4764: $47
    ld c, $44                                     ; $4765: $0e $44
    rst $38                                       ; $4767: $ff
    ld e, a                                       ; $4768: $5f
    nop                                           ; $4769: $00
    jr nz, @+$01                                  ; $476a: $20 $ff

    ld b, a                                       ; $476c: $47

jr_0b6_476d:
    ld c, $44                                     ; $476d: $0e $44
    rst $38                                       ; $476f: $ff
    ld e, a                                       ; $4770: $5f
    nop                                           ; $4771: $00

jr_0b6_4772:
    jr nz, jr_0b6_470e                            ; $4772: $20 $9a

    ld a, b                                       ; $4774: $78
    ccf                                           ; $4775: $3f
    ld a, [hl]                                    ; $4776: $7e
    inc h                                         ; $4777: $24
    inc d                                         ; $4778: $14
    nop                                           ; $4779: $00
    inc d                                         ; $477a: $14
    ld a, d                                       ; $477b: $7a
    rra                                           ; $477c: $1f
    jr nc, jr_0b6_47d9                            ; $477d: $30 $5a

    ld e, d                                       ; $477f: $5a
    ld [hl], e                                    ; $4780: $73
    nop                                           ; $4781: $00
    nop                                           ; $4782: $00
    ld a, e                                       ; $4783: $7b

jr_0b6_4784:
    inc de                                        ; $4784: $13
    rst $38                                       ; $4785: $ff
    ld e, a                                       ; $4786: $5f
    jp z, Jump_000_0009                           ; $4787: $ca $09 $00

    inc c                                         ; $478a: $0c
    ld d, c                                       ; $478b: $51
    ld d, b                                       ; $478c: $50
    sbc [hl]                                      ; $478d: $9e
    ld l, d                                       ; $478e: $6a
    rst $10                                       ; $478f: $d7
    ld [hl], b                                    ; $4790: $70

jr_0b6_4791:
    nop                                           ; $4791: $00
    nop                                           ; $4792: $00
    jp c, $0b7c                                   ; $4793: $da $7c $0b

    ld hl, $1b59                                  ; $4796: $21 $59 $1b
    nop                                           ; $4799: $00
    nop                                           ; $479a: $00
    ld [hl], d                                    ; $479b: $72
    ld [hl+], a                                   ; $479c: $22
    sbc $5b                                       ; $479d: $de $5b
    dec b                                         ; $479f: $05
    add hl, de                                    ; $47a0: $19
    nop                                           ; $47a1: $00
    nop                                           ; $47a2: $00
    nop                                           ; $47a3: $00
    jr nz, jr_0b6_4784                            ; $47a4: $20 $de

    ld e, e                                       ; $47a6: $5b
    dec b                                         ; $47a7: $05
    add hl, de                                    ; $47a8: $19
    nop                                           ; $47a9: $00
    jr nz, jr_0b6_47f4                            ; $47aa: $20 $48

    ld b, l                                       ; $47ac: $45
    rst $38                                       ; $47ad: $ff
    ld e, a                                       ; $47ae: $5f
    jp z, Jump_000_0009                           ; $47af: $ca $09 $00

    inc b                                         ; $47b2: $04
    rrca                                          ; $47b3: $0f
    ld d, [hl]                                    ; $47b4: $56
    ld b, l                                       ; $47b5: $45
    dec e                                         ; $47b6: $1d
    ld e, c                                       ; $47b7: $59
    ld [hl], e                                    ; $47b8: $73
    ld hl, $3004                                  ; $47b9: $21 $04 $30
    ld c, h                                       ; $47bc: $4c
    inc [hl]                                      ; $47bd: $34
    inc bc                                        ; $47be: $03
    add hl, de                                    ; $47bf: $19
    ld [hl], h                                    ; $47c0: $74
    ld hl, $770c                                  ; $47c1: $21 $0c $77
    ld l, b                                       ; $47c4: $68
    cp e                                          ; $47c5: $bb
    rla                                           ; $47c6: $17
    rst $38                                       ; $47c7: $ff
    ld e, a                                       ; $47c8: $5f

jr_0b6_47c9:
    nop                                           ; $47c9: $00
    nop                                           ; $47ca: $00
    ld hl, sp+$61                                 ; $47cb: $f8 $61
    rlca                                          ; $47cd: $07
    add hl, hl                                    ; $47ce: $29
    jp z, $2201                                   ; $47cf: $ca $01 $22

    ld [$3b9b], sp                                ; $47d2: $08 $9b $3b
    ld d, c                                       ; $47d5: $51
    ld d, b                                       ; $47d6: $50
    ccf                                           ; $47d7: $3f
    ld a, a                                       ; $47d8: $7f

jr_0b6_47d9:
    nop                                           ; $47d9: $00
    nop                                           ; $47da: $00
    rst $30                                       ; $47db: $f7
    ld l, d                                       ; $47dc: $6a
    nop                                           ; $47dd: $00
    jr nz, jr_0b6_481f                            ; $47de: $20 $3f

    ld a, a                                       ; $47e0: $7f
    nop                                           ; $47e1: $00
    jr nz, jr_0b6_47c9                            ; $47e2: $20 $e5

    inc a                                         ; $47e4: $3c
    adc e                                         ; $47e5: $8b
    ld c, c                                       ; $47e6: $49
    daa                                           ; $47e7: $27
    ld b, c                                       ; $47e8: $41
    nop                                           ; $47e9: $00
    nop                                           ; $47ea: $00
    ld d, c                                       ; $47eb: $51
    ld e, d                                       ; $47ec: $5a
    ld h, h                                       ; $47ed: $64
    add hl, bc                                    ; $47ee: $09
    sbc h                                         ; $47ef: $9c
    ld [hl], a                                    ; $47f0: $77
    nop                                           ; $47f1: $00
    nop                                           ; $47f2: $00
    db $fc                                        ; $47f3: $fc

jr_0b6_47f4:
    dec de                                        ; $47f4: $1b
    ld a, [bc]                                    ; $47f5: $0a
    jr nc, @+$5b                                  ; $47f6: $30 $59

    ld c, a                                       ; $47f8: $4f
    nop                                           ; $47f9: $00
    nop                                           ; $47fa: $00
    ld c, c                                       ; $47fb: $49
    add hl, bc                                    ; $47fc: $09
    ld [hl], e                                    ; $47fd: $73
    dec h                                         ; $47fe: $25
    ld hl, $2108                                  ; $47ff: $21 $08 $21
    nop                                           ; $4802: $00
    scf                                           ; $4803: $37

Call_0b6_4804:
    rlca                                          ; $4804: $07
    jr c, @+$6d                                   ; $4805: $38 $6b

    rst $38                                       ; $4807: $ff
    ld e, a                                       ; $4808: $5f

jr_0b6_4809:
    ld b, d                                       ; $4809: $42
    ld [$4e10], sp                                ; $480a: $08 $10 $4e
    sbc h                                         ; $480d: $9c
    ld [hl], a                                    ; $480e: $77
    sbc e                                         ; $480f: $9b
    dec sp                                        ; $4810: $3b
    nop                                           ; $4811: $00
    nop                                           ; $4812: $00
    ld c, b                                       ; $4813: $48
    ld b, l                                       ; $4814: $45
    ld d, c                                       ; $4815: $51
    ld e, d                                       ; $4816: $5a
    nop                                           ; $4817: $00
    jr nz, jr_0b6_481a                            ; $4818: $20 $00

jr_0b6_481a:
    jr jr_0b6_4809                                ; $481a: $18 $ed

    ld d, l                                       ; $481c: $55
    daa                                           ; $481d: $27
    ld b, c                                       ; $481e: $41

jr_0b6_481f:
    sub h                                         ; $481f: $94
    ld l, [hl]                                    ; $4820: $6e
    nop                                           ; $4821: $00
    nop                                           ; $4822: $00
    and l                                         ; $4823: $a5
    dec c                                         ; $4824: $0d
    and [hl]                                      ; $4825: $a6
    ld de, $6e94                                  ; $4826: $11 $94 $6e
    inc bc                                        ; $4829: $03
    inc d                                         ; $482a: $14
    or e                                          ; $482b: $b3
    add hl, sp                                    ; $482c: $39
    ld a, d                                       ; $482d: $7a
    cpl                                           ; $482e: $2f
    add hl, sp                                    ; $482f: $39
    ld h, e                                       ; $4830: $63
    ld a, [bc]                                    ; $4831: $0a
    ld de, $32b7                                  ; $4832: $11 $b7 $32
    sub a                                         ; $4835: $97
    ld h, l                                       ; $4836: $65
    ld e, a                                       ; $4837: $5f
    ld l, e                                       ; $4838: $6b
    nop                                           ; $4839: $00
    nop                                           ; $483a: $00
    ld [hl-], a                                   ; $483b: $32
    ld a, [hl-]                                   ; $483c: $3a
    dec sp                                        ; $483d: $3b
    ld a, c                                       ; $483e: $79
    sbc h                                         ; $483f: $9c
    ld [hl], e                                    ; $4840: $73
    ld l, e                                       ; $4841: $6b
    ld hl, $339b                                  ; $4842: $21 $9b $33
    rst $38                                       ; $4845: $ff
    ld a, a                                       ; $4846: $7f
    ld d, d                                       ; $4847: $52
    ld a, [hl+]                                   ; $4848: $2a
    nop                                           ; $4849: $00
    nop                                           ; $484a: $00
    ld c, b                                       ; $484b: $48
    ld b, l                                       ; $484c: $45
    ld sp, $0062                                  ; $484d: $31 $62 $00
    jr nz, jr_0b6_4852                            ; $4850: $20 $00

jr_0b6_4852:
    ld [$6a31], sp                                ; $4852: $08 $31 $6a
    and a                                         ; $4855: $a7
    dec e                                         ; $4856: $1d
    ld e, e                                       ; $4857: $5b
    ld [hl], a                                    ; $4858: $77
    nop                                           ; $4859: $00
    nop                                           ; $485a: $00
    add $11                                       ; $485b: $c6 $11
    rst $00                                       ; $485d: $c7
    dec d                                         ; $485e: $15
    rst $20                                       ; $485f: $e7
    dec d                                         ; $4860: $15
    ld b, e                                       ; $4861: $43
    inc b                                         ; $4862: $04
    inc d                                         ; $4863: $14
    ld b, [hl]                                    ; $4864: $46
    rst $38                                       ; $4865: $ff
    ld a, a                                       ; $4866: $7f
    rrca                                          ; $4867: $0f
    ld c, h                                       ; $4868: $4c
    ld bc, $9a0c                                  ; $4869: $01 $0c $9a
    ld c, d                                       ; $486c: $4a
    xor a                                         ; $486d: $af
    inc a                                         ; $486e: $3c
    rst $38                                       ; $486f: $ff
    ld a, a                                       ; $4870: $7f
    ld hl, $4b04                                  ; $4871: $21 $04 $4b
    ld sp, $6338                                  ; $4874: $31 $38 $63
    rrca                                          ; $4877: $0f
    ld c, b                                       ; $4878: $48
    ld l, e                                       ; $4879: $6b
    dec [hl]                                      ; $487a: $35
    sbc $3b                                       ; $487b: $de $3b
    rst $38                                       ; $487d: $ff
    ld a, a                                       ; $487e: $7f
    ld sp, $001a                                  ; $487f: $31 $1a $00
    inc e                                         ; $4882: $1c
    db $10                                        ; $4883: $10
    ld h, d                                       ; $4884: $62
    ret z                                         ; $4885: $c8

    ld de, $7b9c                                  ; $4886: $11 $9c $7b
    nop                                           ; $4889: $00
    nop                                           ; $488a: $00
    sub h                                         ; $488b: $94
    ld l, [hl]                                    ; $488c: $6e
    rst $20                                       ; $488d: $e7
    dec d                                         ; $488e: $15
    cp l                                          ; $488f: $bd
    ld a, e                                       ; $4890: $7b
    nop                                           ; $4891: $00
    nop                                           ; $4892: $00
    rst $20                                       ; $4893: $e7
    dec d                                         ; $4894: $15
    rst $30                                       ; $4895: $f7
    ld d, d                                       ; $4896: $52
    adc h                                         ; $4897: $8c
    add hl, hl                                    ; $4898: $29
    ld b, l                                       ; $4899: $45
    inc c                                         ; $489a: $0c
    ld a, [de]                                    ; $489b: $1a
    dec hl                                        ; $489c: $2b
    cp a                                          ; $489d: $bf
    ld [hl], e                                    ; $489e: $73
    cpl                                           ; $489f: $2f
    ld c, $22                                     ; $48a0: $0e $22
    inc b                                         ; $48a2: $04
    ld a, e                                       ; $48a3: $7b
    ld b, d                                       ; $48a4: $42
    cpl                                           ; $48a5: $2f
    ld hl, $5b3f                                  ; $48a6: $21 $3f $5b
    ld b, d                                       ; $48a9: $42
    ld [$356b], sp                                ; $48aa: $08 $6b $35
    rst $38                                       ; $48ad: $ff

jr_0b6_48ae:
    ld e, e                                       ; $48ae: $5b
    ld sp, $6b3e                                  ; $48af: $31 $3e $6b
    dec [hl]                                      ; $48b2: $35
    sbc $3b                                       ; $48b3: $de $3b
    rst $38                                       ; $48b5: $ff
    ld a, a                                       ; $48b6: $7f
    sub e                                         ; $48b7: $93
    ld [de], a                                    ; $48b8: $12
    nop                                           ; $48b9: $00
    inc e                                         ; $48ba: $1c
    ret z                                         ; $48bb: $c8

    ld hl, $6e94                                  ; $48bc: $21 $94 $6e
    sub h                                         ; $48bf: $94
    ld e, $00                                     ; $48c0: $1e $00
    ld [$6610], sp                                ; $48c2: $08 $10 $66
    ld [$181a], sp                                ; $48c5: $08 $1a $18
    ld [hl], a                                    ; $48c8: $77
    nop                                           ; $48c9: $00
    nop                                           ; $48ca: $00
    ld e, d                                       ; $48cb: $5a
    ld d, e                                       ; $48cc: $53
    ld [$ff1a], sp                                ; $48cd: $08 $1a $ff
    ld a, a                                       ; $48d0: $7f
    ld b, l                                       ; $48d1: $45
    ld [$2717], sp                                ; $48d2: $08 $17 $27
    db $fd                                        ; $48d5: $fd
    ld e, d                                       ; $48d6: $5a
    adc a                                         ; $48d7: $8f
    ld d, h                                       ; $48d8: $54
    nop                                           ; $48d9: $00
    nop                                           ; $48da: $00
    add hl, sp                                    ; $48db: $39
    ld a, [hl-]                                   ; $48dc: $3a
    ccf                                           ; $48dd: $3f
    ld e, e                                       ; $48de: $5b
    adc d                                         ; $48df: $8a
    db $10                                        ; $48e0: $10
    jr nz, jr_0b6_48e3                            ; $48e1: $20 $00

jr_0b6_48e3:
    cpl                                           ; $48e3: $2f
    ld [bc], a                                    ; $48e4: $02
    rst $38                                       ; $48e5: $ff
    ld a, a                                       ; $48e6: $7f
    ld c, [hl]                                    ; $48e7: $4e
    ld b, l                                       ; $48e8: $45
    adc h                                         ; $48e9: $8c
    dec l                                         ; $48ea: $2d
    ld e, d                                       ; $48eb: $5a
    rra                                           ; $48ec: $1f
    rst $38                                       ; $48ed: $ff
    ld a, a                                       ; $48ee: $7f
    sbc $47                                       ; $48ef: $de $47
    nop                                           ; $48f1: $00
    inc e                                         ; $48f2: $1c
    adc $59                                       ; $48f3: $ce $59
    sub b                                         ; $48f5: $90
    ld e, $e5                                     ; $48f6: $1e $e5
    inc a                                         ; $48f8: $3c
    nop                                           ; $48f9: $00
    db $10                                        ; $48fa: $10
    ld b, $3d                                     ; $48fb: $06 $3d
    ld d, c                                       ; $48fd: $51
    ld h, [hl]                                    ; $48fe: $66
    ld c, c                                       ; $48ff: $49
    ld e, $00                                     ; $4900: $1e $00
    nop                                           ; $4902: $00
    ld sp, $4a56                                  ; $4903: $31 $56 $4a
    ld e, $bd                                     ; $4906: $1e $bd
    ld e, e                                       ; $4908: $5b
    ld b, h                                       ; $4909: $44
    ld [$427c], sp                                ; $490a: $08 $7c $42
    ld d, c                                       ; $490d: $51
    ld d, $de                                     ; $490e: $16 $de
    ld l, e                                       ; $4910: $6b
    ld b, l                                       ; $4911: $45
    ld [$4ede], sp                                ; $4912: $08 $de $4e
    xor a                                         ; $4915: $af
    inc h                                         ; $4916: $24
    or l                                          ; $4917: $b5
    ld b, h                                       ; $4918: $44
    nop                                           ; $4919: $00
    nop                                           ; $491a: $00
    sub e                                         ; $491b: $93
    ld e, c                                       ; $491c: $59
    sbc $63                                       ; $491d: $de $63
    ret                                           ; $491f: $c9


    jr nz, jr_0b6_48ae                            ; $4920: $20 $8c

    dec a                                         ; $4922: $3d
    sbc $47                                       ; $4923: $de $47
    push de                                       ; $4925: $d5
    ld [hl+], a                                   ; $4926: $22
    rst $38                                       ; $4927: $ff
    ld [hl], e                                    ; $4928: $73
    nop                                           ; $4929: $00
    inc e                                         ; $492a: $1c
    cpl                                           ; $492b: $2f
    ld d, [hl]                                    ; $492c: $56
    ld h, $3d                                     ; $492d: $26 $3d
    ld a, e                                       ; $492f: $7b
    dec hl                                        ; $4930: $2b
    nop                                           ; $4931: $00
    inc d                                         ; $4932: $14
    ld c, b                                       ; $4933: $48
    ld b, l                                       ; $4934: $45
    ld l, d                                       ; $4935: $6a
    ld [hl+], a                                   ; $4936: $22
    ld d, c                                       ; $4937: $51
    ld e, d                                       ; $4938: $5a
    nop                                           ; $4939: $00
    nop                                           ; $493a: $00
    sbc $2f                                       ; $493b: $de $2f
    ld e, d                                       ; $493d: $5a
    ld h, e                                       ; $493e: $63
    ld l, d                                       ; $493f: $6a
    ld [hl+], a                                   ; $4940: $22
    ld b, e                                       ; $4941: $43
    nop                                           ; $4942: $00
    sub $0e                                       ; $4943: $d6 $0e
    rst $38                                       ; $4945: $ff
    ld a, a                                       ; $4946: $7f
    ld a, e                                       ; $4947: $7b
    inc sp                                        ; $4948: $33
    adc d                                         ; $4949: $8a
    db $10                                        ; $494a: $10
    ld a, h                                       ; $494b: $7c
    ld b, d                                       ; $494c: $42
    ldh a, [rNR50]                                ; $494d: $f0 $24
    ld a, e                                       ; $494f: $7b
    dec hl                                        ; $4950: $2b
    nop                                           ; $4951: $00
    nop                                           ; $4952: $00
    ld [hl], d                                    ; $4953: $72
    ld [hl-], a                                   ; $4954: $32
    rst $38                                       ; $4955: $ff
    dec sp                                        ; $4956: $3b
    sbc $6f                                       ; $4957: $de $6f
    ld d, d                                       ; $4959: $52
    ld l, $ff                                     ; $495a: $2e $ff
    inc sp                                        ; $495c: $33
    sbc $5f                                       ; $495d: $de $5f
    ld [hl], d                                    ; $495f: $72
    ld d, d                                       ; $4960: $52
    nop                                           ; $4961: $00
    inc e                                         ; $4962: $1c
    jr nc, jr_0b6_499b                            ; $4963: $30 $36

    cp $4b                                        ; $4965: $fe $4b
    ld c, b                                       ; $4967: $48
    ld b, c                                       ; $4968: $41
    nop                                           ; $4969: $00
    inc d                                         ; $496a: $14
    ld c, b                                       ; $496b: $48
    ld b, l                                       ; $496c: $45
    adc e                                         ; $496d: $8b
    ld h, $51                                     ; $496e: $26 $51
    ld e, d                                       ; $4970: $5a
    ld b, c                                       ; $4971: $41
    inc b                                         ; $4972: $04
    rst $38                                       ; $4973: $ff
    ccf                                           ; $4974: $3f
    ld c, a                                       ; $4975: $4f
    ld a, [de]                                    ; $4976: $1a
    ld a, e                                       ; $4977: $7b
    ld [hl], e                                    ; $4978: $73
    nop                                           ; $4979: $00
    nop                                           ; $497a: $00
    adc $45                                       ; $497b: $ce $45
    rst $38                                       ; $497d: $ff
    ld a, a                                       ; $497e: $7f
    or h                                          ; $497f: $b4
    ld h, d                                       ; $4980: $62
    adc d                                         ; $4981: $8a
    db $10                                        ; $4982: $10
    ld a, h                                       ; $4983: $7c
    ld b, d                                       ; $4984: $42
    ccf                                           ; $4985: $3f
    ld e, e                                       ; $4986: $5b

jr_0b6_4987:
    ld c, b                                       ; $4987: $48
    ld b, c                                       ; $4988: $41
    nop                                           ; $4989: $00
    nop                                           ; $498a: $00
    ld [hl], e                                    ; $498b: $73
    ld [hl-], a                                   ; $498c: $32
    rst $38                                       ; $498d: $ff
    ld e, e                                       ; $498e: $5b
    ld l, e                                       ; $498f: $6b
    add hl, bc                                    ; $4990: $09
    xor l                                         ; $4991: $ad
    dec a                                         ; $4992: $3d
    sbc $33                                       ; $4993: $de $33
    cp l                                          ; $4995: $bd
    ld h, e                                       ; $4996: $63
    or l                                          ; $4997: $b5
    ld d, [hl]                                    ; $4998: $56
    nop                                           ; $4999: $00
    inc e                                         ; $499a: $1c

jr_0b6_499b:
    ld sp, $dd1e                                  ; $499b: $31 $1e $dd

jr_0b6_499e:
    ld b, e                                       ; $499e: $43
    rst $38                                       ; $499f: $ff
    ld l, a                                       ; $49a0: $6f
    nop                                           ; $49a1: $00
    jr jr_0b6_49cb                                ; $49a2: $18 $27

    ld b, c                                       ; $49a4: $41
    ld [hl], d                                    ; $49a5: $72
    ld e, [hl]                                    ; $49a6: $5e
    xor h                                         ; $49a7: $ac
    ld a, [hl+]                                   ; $49a8: $2a
    nop                                           ; $49a9: $00
    nop                                           ; $49aa: $00
    ld e, c                                       ; $49ab: $59
    ld c, a                                       ; $49ac: $4f
    dec hl                                        ; $49ad: $2b
    ld a, [hl+]                                   ; $49ae: $2a
    rst $38                                       ; $49af: $ff
    ld a, e                                       ; $49b0: $7b
    nop                                           ; $49b1: $00
    nop                                           ; $49b2: $00
    cp e                                          ; $49b3: $bb
    rra                                           ; $49b4: $1f
    or $62                                        ; $49b5: $f6 $62
    ld c, $02                                     ; $49b7: $0e $02
    nop                                           ; $49b9: $00
    nop                                           ; $49ba: $00
    ld a, h                                       ; $49bb: $7c
    ld b, d                                       ; $49bc: $42
    ccf                                           ; $49bd: $3f
    ld e, e                                       ; $49be: $5b
    xor h                                         ; $49bf: $ac
    inc d                                         ; $49c0: $14
    nop                                           ; $49c1: $00
    nop                                           ; $49c2: $00
    ld a, c                                       ; $49c3: $79
    rla                                           ; $49c4: $17
    ld [hl], e                                    ; $49c5: $73
    ld d, [hl]                                    ; $49c6: $56
    sbc h                                         ; $49c7: $9c
    ld [hl], a                                    ; $49c8: $77
    nop                                           ; $49c9: $00
    nop                                           ; $49ca: $00

jr_0b6_49cb:
    ld [hl], e                                    ; $49cb: $73
    ld d, [hl]                                    ; $49cc: $56
    cp l                                          ; $49cd: $bd
    ld [hl], a                                    ; $49ce: $77
    ld a, d                                       ; $49cf: $7a
    daa                                           ; $49d0: $27
    nop                                           ; $49d1: $00
    nop                                           ; $49d2: $00
    ld sp, $de1a                                  ; $49d3: $31 $1a $de
    ld c, e                                       ; $49d6: $4b
    nop                                           ; $49d7: $00
    jr nz, jr_0b6_49da                            ; $49d8: $20 $00

jr_0b6_49da:
    jr jr_0b6_4987                                ; $49da: $18 $ab

    ld c, l                                       ; $49dc: $4d
    sub $66                                       ; $49dd: $d6 $66
    call $012a                                    ; $49df: $cd $2a $01
    inc b                                         ; $49e2: $04
    db $dd                                        ; $49e3: $dd
    ld [hl], e                                    ; $49e4: $73
    ld c, d                                       ; $49e5: $4a
    dec d                                         ; $49e6: $15
    xor h                                         ; $49e7: $ac
    ld b, c                                       ; $49e8: $41
    nop                                           ; $49e9: $00
    inc b                                         ; $49ea: $04
    ld [hl], d                                    ; $49eb: $72
    ld e, d                                       ; $49ec: $5a
    cp l                                          ; $49ed: $bd
    cpl                                           ; $49ee: $2f
    inc l                                         ; $49ef: $2c
    ld hl, $0000                                  ; $49f0: $21 $00 $00
    ld a, [hl-]                                   ; $49f3: $3a
    ld a, $5f                                     ; $49f4: $3e $5f
    ld d, a                                       ; $49f6: $57
    adc h                                         ; $49f7: $8c
    inc e                                         ; $49f8: $1c
    ld hl, $3904                                  ; $49f9: $21 $04 $39
    ld c, e                                       ; $49fc: $4b
    cp l                                          ; $49fd: $bd
    ld [hl], a                                    ; $49fe: $77
    add hl, bc                                    ; $49ff: $09
    jr c, jr_0b6_4a02                             ; $4a00: $38 $00

jr_0b6_4a02:
    nop                                           ; $4a02: $00
    ld [hl], d                                    ; $4a03: $72
    ld d, [hl]                                    ; $4a04: $56
    cp l                                          ; $4a05: $bd
    ld l, a                                       ; $4a06: $6f
    ld [$4229], sp                                ; $4a07: $08 $29 $42
    inc b                                         ; $4a0a: $04
    rst $38                                       ; $4a0b: $ff
    dec sp                                        ; $4a0c: $3b
    nop                                           ; $4a0d: $00
    inc e                                         ; $4a0e: $1c

jr_0b6_4a0f:
    rst $38                                       ; $4a0f: $ff
    ld e, a                                       ; $4a10: $5f
    nop                                           ; $4a11: $00
    jr jr_0b6_499e                                ; $4a12: $18 $8a

    ld c, c                                       ; $4a14: $49
    ld a, d                                       ; $4a15: $7a
    ld [hl], e                                    ; $4a16: $73
    ld [hl], d                                    ; $4a17: $72
    ld e, d                                       ; $4a18: $5a
    ld bc, $ae04                                  ; $4a19: $01 $04 $ae
    ld a, [hl+]                                   ; $4a1c: $2a
    ld l, $46                                     ; $4a1d: $2e $46
    add [hl]                                      ; $4a1f: $86
    jr nz, jr_0b6_4a23                            ; $4a20: $20 $01

    inc b                                         ; $4a22: $04

jr_0b6_4a23:
    ld [hl], c                                    ; $4a23: $71
    ld c, d                                       ; $4a24: $4a
    rst $38                                       ; $4a25: $ff
    ld e, e                                       ; $4a26: $5b
    ret                                           ; $4a27: $c9


    inc h                                         ; $4a28: $24
    ld bc, $b800                                  ; $4a29: $01 $00 $b8
    dec a                                         ; $4a2c: $3d
    ld e, b                                       ; $4a2d: $58
    daa                                           ; $4a2e: $27
    rst $38                                       ; $4a2f: $ff
    ld c, a                                       ; $4a30: $4f
    ld [hl+], a                                   ; $4a31: $22
    inc c                                         ; $4a32: $0c
    or e                                          ; $4a33: $b3
    ld d, d                                       ; $4a34: $52
    srl b                                         ; $4a35: $cb $38
    cp l                                          ; $4a37: $bd
    ld [hl], a                                    ; $4a38: $77
    nop                                           ; $4a39: $00
    nop                                           ; $4a3a: $00
    ld d, c                                       ; $4a3b: $51
    ld c, d                                       ; $4a3c: $4a
    ld c, h                                       ; $4a3d: $4c
    ld sp, $6b7a                                  ; $4a3e: $31 $7a $6b
    nop                                           ; $4a41: $00
    inc e                                         ; $4a42: $1c
    push de                                       ; $4a43: $d5
    ld a, [hl+]                                   ; $4a44: $2a
    rst $38                                       ; $4a45: $ff
    ld b, e                                       ; $4a46: $43
    rst $38                                       ; $4a47: $ff
    ld [hl], a                                    ; $4a48: $77
    nop                                           ; $4a49: $00
    inc e                                         ; $4a4a: $1c
    xor h                                         ; $4a4b: $ac
    ld c, l                                       ; $4a4c: $4d
    or h                                          ; $4a4d: $b4
    ld h, d                                       ; $4a4e: $62
    sbc e                                         ; $4a4f: $9b
    ld [hl], a                                    ; $4a50: $77
    ld bc, $2f04                                  ; $4a51: $01 $04 $2f
    ld d, d                                       ; $4a54: $52
    rst $20                                       ; $4a55: $e7
    inc e                                         ; $4a56: $1c
    ld c, $33                                     ; $4a57: $0e $33
    nop                                           ; $4a59: $00
    nop                                           ; $4a5a: $00
    cpl                                           ; $4a5b: $2f
    ld c, [hl]                                    ; $4a5c: $4e
    sbc e                                         ; $4a5d: $9b
    daa                                           ; $4a5e: $27
    ld a, [hl+]                                   ; $4a5f: $2a
    jr nc, jr_0b6_4a62                            ; $4a60: $30 $00

jr_0b6_4a62:
    nop                                           ; $4a62: $00
    ld e, b                                       ; $4a63: $58
    daa                                           ; $4a64: $27
    rst $38                                       ; $4a65: $ff
    ld c, a                                       ; $4a66: $4f
    ld b, $28                                     ; $4a67: $06 $28
    ld [bc], a                                    ; $4a69: $02
    ld [$62f6], sp                                ; $4a6a: $08 $f6 $62
    rlca                                          ; $4a6d: $07
    ld hl, $7fff                                  ; $4a6e: $21 $ff $7f
    ld b, e                                       ; $4a71: $43
    inc c                                         ; $4a72: $0c
    sub $1a                                       ; $4a73: $d6 $1a
    jr nc, jr_0b6_4ac1                            ; $4a75: $30 $4a

    push af                                       ; $4a77: $f5
    ld h, d                                       ; $4a78: $62
    nop                                           ; $4a79: $00
    inc e                                         ; $4a7a: $1c
    or l                                          ; $4a7b: $b5
    ld l, $ff                                     ; $4a7c: $2e $ff
    ld l, a                                       ; $4a7e: $6f
    sub $5e                                       ; $4a7f: $d6 $5e
    nop                                           ; $4a81: $00
    jr nz, jr_0b6_4a0f                            ; $4a82: $20 $8b

    ld c, c                                       ; $4a84: $49
    push de                                       ; $4a85: $d5
    ld h, [hl]                                    ; $4a86: $66
    cpl                                           ; $4a87: $2f
    ld d, [hl]                                    ; $4a88: $56
    ld hl, $4904                                  ; $4a89: $21 $04 $49
    add hl, hl                                    ; $4a8c: $29
    cpl                                           ; $4a8d: $2f
    scf                                           ; $4a8e: $37
    adc $45                                       ; $4a8f: $ce $45
    ld b, d                                       ; $4a91: $42
    ld [$6456], sp                                ; $4a92: $08 $56 $64
    jp c, $0975                                   ; $4a95: $da $75 $09

    jr z, jr_0b6_4ae7                             ; $4a98: $28 $4d

    inc a                                         ; $4a9a: $3c
    add hl, de                                    ; $4a9b: $19
    ld l, l                                       ; $4a9c: $6d
    sbc e                                         ; $4a9d: $9b
    ld [hl], l                                    ; $4a9e: $75
    or h                                          ; $4a9f: $b4
    ld e, b                                       ; $4aa0: $58
    nop                                           ; $4aa1: $00
    nop                                           ; $4aa2: $00
    ld l, e                                       ; $4aa3: $6b
    ld sp, $4e50                                  ; $4aa4: $31 $50 $4e
    ld h, l                                       ; $4aa7: $65
    inc d                                         ; $4aa8: $14
    nop                                           ; $4aa9: $00
    nop                                           ; $4aaa: $00
    xor h                                         ; $4aab: $ac
    dec [hl]                                      ; $4aac: $35
    ld l, e                                       ; $4aad: $6b
    ld de, $5230                                  ; $4aae: $11 $30 $52
    nop                                           ; $4ab1: $00
    nop                                           ; $4ab2: $00
    ld d, d                                       ; $4ab3: $52
    ld c, [hl]                                    ; $4ab4: $4e
    rst $38                                       ; $4ab5: $ff
    ld [hl], e                                    ; $4ab6: $73
    nop                                           ; $4ab7: $00
    inc e                                         ; $4ab8: $1c
    nop                                           ; $4ab9: $00
    jr nz, jr_0b6_4b04                            ; $4aba: $20 $48

    ld b, c                                       ; $4abc: $41
    cpl                                           ; $4abd: $2f
    ld d, [hl]                                    ; $4abe: $56
    adc e                                         ; $4abf: $8b
    ld c, c                                       ; $4ac0: $49

jr_0b6_4ac1:
    nop                                           ; $4ac1: $00
    nop                                           ; $4ac2: $00
    ld d, b                                       ; $4ac3: $50
    dec sp                                        ; $4ac4: $3b
    rst $20                                       ; $4ac5: $e7
    inc e                                         ; $4ac6: $1c
    or h                                          ; $4ac7: $b4
    ld h, d                                       ; $4ac8: $62
    nop                                           ; $4ac9: $00
    nop                                           ; $4aca: $00
    sub [hl]                                      ; $4acb: $96
    ld h, h                                       ; $4acc: $64
    call c, $2a75                                 ; $4acd: $dc $75 $2a
    jr nc, jr_0b6_4aeb                            ; $4ad0: $30 $19

    ld [hl], c                                    ; $4ad2: $71
    ld a, d                                       ; $4ad3: $7a
    ld [hl], c                                    ; $4ad4: $71
    sbc a                                         ; $4ad5: $9f
    ld a, l                                       ; $4ad6: $7d
    db $db                                        ; $4ad7: $db
    ld [hl], c                                    ; $4ad8: $71
    ld hl, $0b04                                  ; $4ad9: $21 $04 $0b
    ld sp, $74ba                                  ; $4adc: $31 $ba $74
    ld c, $4a                                     ; $4adf: $0e $4a
    ld hl, $cc04                                  ; $4ae1: $21 $04 $cc
    add hl, sp                                    ; $4ae4: $39
    ld a, e                                       ; $4ae5: $7b
    inc hl                                        ; $4ae6: $23

jr_0b6_4ae7:
    jr nc, jr_0b6_4b3b                            ; $4ae7: $30 $52

    nop                                           ; $4ae9: $00
    nop                                           ; $4aea: $00

jr_0b6_4aeb:
    rst $38                                       ; $4aeb: $ff
    ld c, e                                       ; $4aec: $4b
    nop                                           ; $4aed: $00
    inc e                                         ; $4aee: $1c
    nop                                           ; $4aef: $00
    jr nz, jr_0b6_4af2                            ; $4af0: $20 $00

jr_0b6_4af2:
    jr nz, jr_0b6_4afa                            ; $4af2: $20 $06

    ld b, c                                       ; $4af4: $41
    ld h, $41                                     ; $4af5: $26 $41
    ld a, [hl+]                                   ; $4af7: $2a
    jr nc, jr_0b6_4afa                            ; $4af8: $30 $00

jr_0b6_4afa:
    nop                                           ; $4afa: $00
    adc d                                         ; $4afb: $8a
    ld c, c                                       ; $4afc: $49
    ld [hl], c                                    ; $4afd: $71
    dec sp                                        ; $4afe: $3b
    add h                                         ; $4aff: $84
    db $10                                        ; $4b00: $10
    dec b                                         ; $4b01: $05
    inc d                                         ; $4b02: $14
    ld d, a                                       ; $4b03: $57

jr_0b6_4b04:
    ld l, b                                       ; $4b04: $68
    ld [hl], b                                    ; $4b05: $70
    ld c, b                                       ; $4b06: $48
    add hl, de                                    ; $4b07: $19
    ld [hl], c                                    ; $4b08: $71

jr_0b6_4b09:
    ld d, a                                       ; $4b09: $57
    ld l, b                                       ; $4b0a: $68
    ret c                                         ; $4b0b: $d8

    ld l, b                                       ; $4b0c: $68
    sub a                                         ; $4b0d: $97
    ld l, b                                       ; $4b0e: $68
    jr jr_0b6_4b7e                                ; $4b0f: $18 $6d

    ld [bc], a                                    ; $4b11: $02
    ld [$4a0e], sp                                ; $4b12: $08 $0e $4a
    ld e, c                                       ; $4b15: $59
    ld [hl], h                                    ; $4b16: $74
    and $1c                                       ; $4b17: $e6 $1c
    ld bc, $6904                                  ; $4b19: $01 $04 $69
    dec [hl]                                      ; $4b1c: $35
    jr nc, @+$50                                  ; $4b1d: $30 $4e

    sub e                                         ; $4b1f: $93
    ld e, [hl]                                    ; $4b20: $5e
    nop                                           ; $4b21: $00
    jr nz, jr_0b6_4b09                            ; $4b22: $20 $e5

    inc a                                         ; $4b24: $3c
    ld c, b                                       ; $4b25: $48
    ld b, l                                       ; $4b26: $45
    sub e                                         ; $4b27: $93
    ld e, [hl]                                    ; $4b28: $5e
    nop                                           ; $4b29: $00
    jr nz, @-$10                                  ; $4b2a: $20 $ee

    ld e, l                                       ; $4b2c: $5d
    ld [hl], b                                    ; $4b2d: $70
    ld c, b                                       ; $4b2e: $48
    add hl, de                                    ; $4b2f: $19
    ld [hl], c                                    ; $4b30: $71
    ld bc, $ff00                                  ; $4b31: $01 $00 $ff
    scf                                           ; $4b34: $37
    daa                                           ; $4b35: $27
    ld b, l                                       ; $4b36: $45
    ld l, d                                       ; $4b37: $6a
    add hl, bc                                    ; $4b38: $09
    ld [bc], a                                    ; $4b39: $02
    inc c                                         ; $4b3a: $0c

jr_0b6_4b3b:
    dec l                                         ; $4b3b: $2d
    inc a                                         ; $4b3c: $3c
    jr nc, jr_0b6_4b49                            ; $4b3d: $30 $0a

    dec [hl]                                      ; $4b3f: $35
    ld h, b                                       ; $4b40: $60

jr_0b6_4b41:
    nop                                           ; $4b41: $00
    nop                                           ; $4b42: $00
    ld [de], a                                    ; $4b43: $12
    ld d, b                                       ; $4b44: $50
    ld a, [bc]                                    ; $4b45: $0a
    jr nc, jr_0b6_4b7e                            ; $4b46: $30 $36

    ld l, b                                       ; $4b48: $68

jr_0b6_4b49:
    nop                                           ; $4b49: $00
    nop                                           ; $4b4a: $00
    add hl, hl                                    ; $4b4b: $29
    add hl, hl                                    ; $4b4c: $29
    call $0d41                                    ; $4b4d: $cd $41 $0d
    inc a                                         ; $4b50: $3c
    ld hl, $e504                                  ; $4b51: $21 $04 $e5
    inc a                                         ; $4b54: $3c
    adc h                                         ; $4b55: $8c
    ld sp, $4d8b                                  ; $4b56: $31 $8b $4d
    nop                                           ; $4b59: $00
    jr nz, jr_0b6_4b41                            ; $4b5a: $20 $e5

    inc a                                         ; $4b5c: $3c
    adc h                                         ; $4b5d: $8c
    ld sp, $4d8b                                  ; $4b5e: $31 $8b $4d
    nop                                           ; $4b61: $00
    jr nz, jr_0b6_4b91                            ; $4b62: $20 $2d

    inc a                                         ; $4b64: $3c
    jr nc, jr_0b6_4b71                            ; $4b65: $30 $0a

    dec [hl]                                      ; $4b67: $35
    ld h, b                                       ; $4b68: $60
    ld hl, $3100                                  ; $4b69: $21 $00 $31
    ld c, $31                                     ; $4b6c: $0e $31
    ld h, [hl]                                    ; $4b6e: $66
    sbc h                                         ; $4b6f: $9c
    cpl                                           ; $4b70: $2f

jr_0b6_4b71:
    inc b                                         ; $4b71: $04
    inc d                                         ; $4b72: $14
    ld c, $0a                                     ; $4b73: $0e $0a
    inc de                                        ; $4b75: $13
    ld e, b                                       ; $4b76: $58
    rst $38                                       ; $4b77: $ff
    inc sp                                        ; $4b78: $33
    nop                                           ; $4b79: $00
    nop                                           ; $4b7a: $00
    db $10                                        ; $4b7b: $10
    ld c, b                                       ; $4b7c: $48
    inc [hl]                                      ; $4b7d: $34

jr_0b6_4b7e:
    ld e, h                                       ; $4b7e: $5c
    jr c, jr_0b6_4bf1                             ; $4b7f: $38 $70

    ld bc, $e704                                  ; $4b81: $01 $04 $e7
    jr nc, @-$31                                  ; $4b84: $30 $cd

    add hl, bc                                    ; $4b86: $09
    db $10                                        ; $4b87: $10
    ld c, b                                       ; $4b88: $48
    nop                                           ; $4b89: $00
    inc b                                         ; $4b8a: $04
    db $10                                        ; $4b8b: $10
    ld h, d                                       ; $4b8c: $62
    and h                                         ; $4b8d: $a4
    inc l                                         ; $4b8e: $2c
    xor h                                         ; $4b8f: $ac
    dec b                                         ; $4b90: $05

jr_0b6_4b91:
    nop                                           ; $4b91: $00
    jr nz, @+$12                                  ; $4b92: $20 $10

    ld h, d                                       ; $4b94: $62
    and h                                         ; $4b95: $a4
    inc l                                         ; $4b96: $2c
    xor h                                         ; $4b97: $ac
    dec b                                         ; $4b98: $05
    nop                                           ; $4b99: $00
    jr nz, @+$10                                  ; $4b9a: $20 $0e

    ld a, [bc]                                    ; $4b9c: $0a
    inc de                                        ; $4b9d: $13
    ld e, b                                       ; $4b9e: $58
    rst $38                                       ; $4b9f: $ff
    inc sp                                        ; $4ba0: $33
    nop                                           ; $4ba1: $00
    ld [$277b], sp                                ; $4ba2: $08 $7b $27
    add hl, sp                                    ; $4ba5: $39
    ld [hl], e                                    ; $4ba6: $73

jr_0b6_4ba7:
    ld l, d                                       ; $4ba7: $6a
    ld bc, $0021                                  ; $4ba8: $01 $21 $00
    jr c, @+$72                                   ; $4bab: $38 $70

    inc c                                         ; $4bad: $0c
    inc [hl]                                      ; $4bae: $34
    or h                                          ; $4baf: $b4
    ld c, $34                                     ; $4bb0: $0e $34
    ld e, h                                       ; $4bb2: $5c
    add hl, sp                                    ; $4bb3: $39
    ld [hl], h                                    ; $4bb4: $74
    inc a                                         ; $4bb5: $3c
    ld a, h                                       ; $4bb6: $7c
    ld e, l                                       ; $4bb7: $5d
    ld a, h                                       ; $4bb8: $7c
    nop                                           ; $4bb9: $00
    nop                                           ; $4bba: $00
    ld d, c                                       ; $4bbb: $51
    ld c, $de                                     ; $4bbc: $0e $de
    dec sp                                        ; $4bbe: $3b
    ld de, $004c                                  ; $4bbf: $11 $4c $00
    db $10                                        ; $4bc2: $10

jr_0b6_4bc3:
    rst $30                                       ; $4bc3: $f7
    ld [hl], d                                    ; $4bc4: $72
    sub e                                         ; $4bc5: $93
    ld a, [bc]                                    ; $4bc6: $0a
    rst $38                                       ; $4bc7: $ff
    ld h, a                                       ; $4bc8: $67
    nop                                           ; $4bc9: $00
    jr nz, jr_0b6_4bc3                            ; $4bca: $20 $f7

    ld [hl], d                                    ; $4bcc: $72
    sub e                                         ; $4bcd: $93
    ld a, [bc]                                    ; $4bce: $0a
    rst $38                                       ; $4bcf: $ff
    ld h, a                                       ; $4bd0: $67
    nop                                           ; $4bd1: $00
    jr nz, jr_0b6_4c0c                            ; $4bd2: $20 $38

    ld [hl], b                                    ; $4bd4: $70
    inc c                                         ; $4bd5: $0c
    inc [hl]                                      ; $4bd6: $34
    or h                                          ; $4bd7: $b4
    ld c, $00                                     ; $4bd8: $0e $00
    ld [$239b], sp                                ; $4bda: $08 $9b $23
    sbc h                                         ; $4bdd: $9c
    ld [hl], a                                    ; $4bde: $77
    jr z, jr_0b6_4bea                             ; $4bdf: $28 $09

    nop                                           ; $4be1: $00
    nop                                           ; $4be2: $00
    scf                                           ; $4be3: $37
    ld l, h                                       ; $4be4: $6c
    dec bc                                        ; $4be5: $0b
    jr nc, jr_0b6_4c23                            ; $4be6: $30 $3b

    ld a, h                                       ; $4be8: $7c
    nop                                           ; $4be9: $00

jr_0b6_4bea:
    nop                                           ; $4bea: $00
    rrca                                          ; $4beb: $0f
    ld h, d                                       ; $4bec: $62
    sbc h                                         ; $4bed: $9c
    ld a, e                                       ; $4bee: $7b
    or l                                          ; $4bef: $b5
    ld l, [hl]                                    ; $4bf0: $6e

jr_0b6_4bf1:
    nop                                           ; $4bf1: $00
    nop                                           ; $4bf2: $00
    push hl                                       ; $4bf3: $e5
    inc a                                         ; $4bf4: $3c
    rrca                                          ; $4bf5: $0f
    ld e, d                                       ; $4bf6: $5a
    ld c, c                                       ; $4bf7: $49
    ld c, c                                       ; $4bf8: $49
    nop                                           ; $4bf9: $00
    nop                                           ; $4bfa: $00

jr_0b6_4bfb:
    rst $30                                       ; $4bfb: $f7
    ld [hl], d                                    ; $4bfc: $72
    sbc $7b                                       ; $4bfd: $de $7b
    nop                                           ; $4bff: $00
    jr nz, jr_0b6_4c02                            ; $4c00: $20 $00

jr_0b6_4c02:
    jr nz, jr_0b6_4bfb                            ; $4c02: $20 $f7

    ld [hl], d                                    ; $4c04: $72
    sbc $7b                                       ; $4c05: $de $7b
    nop                                           ; $4c07: $00
    jr nz, jr_0b6_4c0a                            ; $4c08: $20 $00

jr_0b6_4c0a:
    jr nz, @+$39                                  ; $4c0a: $20 $37

jr_0b6_4c0c:
    ld l, h                                       ; $4c0c: $6c
    dec bc                                        ; $4c0d: $0b
    jr nc, @+$3d                                  ; $4c0e: $30 $3b

    ld a, h                                       ; $4c10: $7c
    nop                                           ; $4c11: $00
    jr nz, jr_0b6_4ba7                            ; $4c12: $20 $93

    ld h, d                                       ; $4c14: $62
    sbc h                                         ; $4c15: $9c
    ld [hl], a                                    ; $4c16: $77
    ld l, c                                       ; $4c17: $69
    ld b, l                                       ; $4c18: $45
    push hl                                       ; $4c19: $e5
    inc a                                         ; $4c1a: $3c
    ld sp, $f766                                  ; $4c1b: $31 $66 $f7
    ld [hl], d                                    ; $4c1e: $72
    ld c, c                                       ; $4c1f: $49
    ld c, l                                       ; $4c20: $4d
    daa                                           ; $4c21: $27
    ld b, l                                       ; $4c22: $45

jr_0b6_4c23:
    sub l                                         ; $4c23: $95
    ld [hl], d                                    ; $4c24: $72
    sbc h                                         ; $4c25: $9c
    ld a, e                                       ; $4c26: $7b
    adc $5d                                       ; $4c27: $ce $5d
    ld l, d                                       ; $4c29: $6a
    ld c, l                                       ; $4c2a: $4d
    sub h                                         ; $4c2b: $94
    ld l, [hl]                                    ; $4c2c: $6e
    jr nc, jr_0b6_4c8d                            ; $4c2d: $30 $5e

    ld e, d                                       ; $4c2f: $5a
    ld [hl], e                                    ; $4c30: $73
    nop                                           ; $4c31: $00
    jr nz, @+$75                                  ; $4c32: $20 $73

    ld e, [hl]                                    ; $4c34: $5e
    cp h                                          ; $4c35: $bc
    ld a, e                                       ; $4c36: $7b
    push hl                                       ; $4c37: $e5
    inc a                                         ; $4c38: $3c
    nop                                           ; $4c39: $00
    jr nz, @+$75                                  ; $4c3a: $20 $73

    ld e, [hl]                                    ; $4c3c: $5e
    cp h                                          ; $4c3d: $bc
    ld a, e                                       ; $4c3e: $7b
    push hl                                       ; $4c3f: $e5
    inc a                                         ; $4c40: $3c
    nop                                           ; $4c41: $00
    jr nz, jr_0b6_4c44                            ; $4c42: $20 $00

jr_0b6_4c44:
    jr nz, jr_0b6_4c5e                            ; $4c44: $20 $18

    ld [hl], a                                    ; $4c46: $77
    ld c, b                                       ; $4c47: $48
    ld b, l                                       ; $4c48: $45
    nop                                           ; $4c49: $00
    jr nz, jr_0b6_4c4c                            ; $4c4a: $20 $00

jr_0b6_4c4c:
    jr nz, jr_0b6_4c66                            ; $4c4c: $20 $18

    ld [hl], a                                    ; $4c4e: $77
    ld c, b                                       ; $4c4f: $48
    ld b, l                                       ; $4c50: $45
    nop                                           ; $4c51: $00
    jr nz, jr_0b6_4c54                            ; $4c52: $20 $00

jr_0b6_4c54:
    jr nz, jr_0b6_4c6e                            ; $4c54: $20 $18

    ld [hl], a                                    ; $4c56: $77
    ld c, b                                       ; $4c57: $48
    ld b, l                                       ; $4c58: $45
    nop                                           ; $4c59: $00
    nop                                           ; $4c5a: $00
    ld d, $73                                     ; $4c5b: $16 $73
    add b                                         ; $4c5d: $80

jr_0b6_4c5e:
    ld l, b                                       ; $4c5e: $68
    nop                                           ; $4c5f: $00
    inc e                                         ; $4c60: $1c
    nop                                           ; $4c61: $00
    jr nz, jr_0b6_4c7a                            ; $4c62: $20 $16

    ld [hl], e                                    ; $4c64: $73
    add b                                         ; $4c65: $80

jr_0b6_4c66:
    ld l, b                                       ; $4c66: $68
    nop                                           ; $4c67: $00
    inc e                                         ; $4c68: $1c
    nop                                           ; $4c69: $00
    jr nz, jr_0b6_4c82                            ; $4c6a: $20 $16

    ld [hl], e                                    ; $4c6c: $73
    add b                                         ; $4c6d: $80

jr_0b6_4c6e:
    ld l, b                                       ; $4c6e: $68
    nop                                           ; $4c6f: $00
    inc e                                         ; $4c70: $1c
    nop                                           ; $4c71: $00
    jr nz, jr_0b6_4c8a                            ; $4c72: $20 $16

    ld [hl], e                                    ; $4c74: $73
    add b                                         ; $4c75: $80
    ld l, b                                       ; $4c76: $68
    nop                                           ; $4c77: $00
    inc e                                         ; $4c78: $1c
    nop                                           ; $4c79: $00

jr_0b6_4c7a:
    jr nz, jr_0b6_4c7c                            ; $4c7a: $20 $00

jr_0b6_4c7c:
    jr nz, jr_0b6_4c96                            ; $4c7c: $20 $18

    ld [hl], a                                    ; $4c7e: $77
    ld c, b                                       ; $4c7f: $48
    ld b, l                                       ; $4c80: $45
    nop                                           ; $4c81: $00

jr_0b6_4c82:
    jr nz, jr_0b6_4c84                            ; $4c82: $20 $00

jr_0b6_4c84:
    jr nz, @+$1a                                  ; $4c84: $20 $18

    ld [hl], a                                    ; $4c86: $77
    ld c, b                                       ; $4c87: $48
    ld b, l                                       ; $4c88: $45
    nop                                           ; $4c89: $00

jr_0b6_4c8a:
    nop                                           ; $4c8a: $00
    nop                                           ; $4c8b: $00
    inc e                                         ; $4c8c: $1c

jr_0b6_4c8d:
    nop                                           ; $4c8d: $00
    jr nz, jr_0b6_4cd8                            ; $4c8e: $20 $48

    ld b, l                                       ; $4c90: $45
    nop                                           ; $4c91: $00
    nop                                           ; $4c92: $00
    add b                                         ; $4c93: $80
    ld e, b                                       ; $4c94: $58
    xor e                                         ; $4c95: $ab

jr_0b6_4c96:
    ld d, c                                       ; $4c96: $51
    call nc, Call_000_0072                        ; $4c97: $d4 $72 $00
    jr nz, jr_0b6_4ca2                            ; $4c9a: $20 $06

    dec a                                         ; $4c9c: $3d
    call $d459                                    ; $4c9d: $cd $59 $d4
    ld [hl], d                                    ; $4ca0: $72
    nop                                           ; $4ca1: $00

jr_0b6_4ca2:
    jr nz, jr_0b6_4caa                            ; $4ca2: $20 $06

    dec a                                         ; $4ca4: $3d
    call $d459                                    ; $4ca5: $cd $59 $d4
    ld [hl], d                                    ; $4ca8: $72
    nop                                           ; $4ca9: $00

jr_0b6_4caa:
    jr nz, jr_0b6_4cb2                            ; $4caa: $20 $06

    dec a                                         ; $4cac: $3d
    call $d459                                    ; $4cad: $cd $59 $d4
    ld [hl], d                                    ; $4cb0: $72
    nop                                           ; $4cb1: $00

jr_0b6_4cb2:
    jr nz, jr_0b6_4cb4                            ; $4cb2: $20 $00

jr_0b6_4cb4:
    inc e                                         ; $4cb4: $1c
    nop                                           ; $4cb5: $00
    jr nz, jr_0b6_4d00                            ; $4cb6: $20 $48

    ld b, l                                       ; $4cb8: $45
    nop                                           ; $4cb9: $00
    jr nz, jr_0b6_4cbc                            ; $4cba: $20 $00

jr_0b6_4cbc:
    inc e                                         ; $4cbc: $1c
    nop                                           ; $4cbd: $00
    jr nz, jr_0b6_4d08                            ; $4cbe: $20 $48

    ld b, l                                       ; $4cc0: $45
    nop                                           ; $4cc1: $00
    nop                                           ; $4cc2: $00
    push hl                                       ; $4cc3: $e5
    inc a                                         ; $4cc4: $3c
    rst $28                                       ; $4cc5: $ef
    ld h, c                                       ; $4cc6: $61
    nop                                           ; $4cc7: $00
    jr nz, jr_0b6_4cca                            ; $4cc8: $20 $00

jr_0b6_4cca:
    nop                                           ; $4cca: $00
    add c                                         ; $4ccb: $81
    ld d, h                                       ; $4ccc: $54
    inc de                                        ; $4ccd: $13
    ld [hl], e                                    ; $4cce: $73
    ld b, a                                       ; $4ccf: $47
    ld b, l                                       ; $4cd0: $45

jr_0b6_4cd1:
    nop                                           ; $4cd1: $00
    jr nz, jr_0b6_4cfb                            ; $4cd2: $20 $27

    ld b, c                                       ; $4cd4: $41
    call z, $934d                                 ; $4cd5: $cc $4d $93

jr_0b6_4cd8:
    ld e, [hl]                                    ; $4cd8: $5e

jr_0b6_4cd9:
    nop                                           ; $4cd9: $00
    jr nz, jr_0b6_4d03                            ; $4cda: $20 $27

    ld b, c                                       ; $4cdc: $41
    call z, $934d                                 ; $4cdd: $cc $4d $93
    ld e, [hl]                                    ; $4ce0: $5e
    nop                                           ; $4ce1: $00
    jr nz, jr_0b6_4d0b                            ; $4ce2: $20 $27

    ld b, c                                       ; $4ce4: $41
    call z, $934d                                 ; $4ce5: $cc $4d $93
    ld e, [hl]                                    ; $4ce8: $5e
    nop                                           ; $4ce9: $00
    jr nz, jr_0b6_4cd1                            ; $4cea: $20 $e5

    inc a                                         ; $4cec: $3c
    rst $28                                       ; $4ced: $ef
    ld h, c                                       ; $4cee: $61
    nop                                           ; $4cef: $00
    jr nz, jr_0b6_4cf2                            ; $4cf0: $20 $00

jr_0b6_4cf2:
    jr nz, jr_0b6_4cd9                            ; $4cf2: $20 $e5

    inc a                                         ; $4cf4: $3c
    rst $28                                       ; $4cf5: $ef
    ld h, c                                       ; $4cf6: $61
    nop                                           ; $4cf7: $00
    jr nz, jr_0b6_4cfa                            ; $4cf8: $20 $00

jr_0b6_4cfa:
    nop                                           ; $4cfa: $00

jr_0b6_4cfb:
    ld l, c                                       ; $4cfb: $69
    ld b, l                                       ; $4cfc: $45
    ld [hl], d                                    ; $4cfd: $72
    ld e, d                                       ; $4cfe: $5a
    nop                                           ; $4cff: $00

jr_0b6_4d00:
    jr nz, jr_0b6_4d02                            ; $4d00: $20 $00

jr_0b6_4d02:
    nop                                           ; $4d02: $00

jr_0b6_4d03:
    and c                                         ; $4d03: $a1
    ld e, b                                       ; $4d04: $58
    ld [de], a                                    ; $4d05: $12
    ld [hl], a                                    ; $4d06: $77
    ld [bc], a                                    ; $4d07: $02

jr_0b6_4d08:
    ld d, $00                                     ; $4d08: $16 $00
    db $10                                        ; $4d0a: $10

jr_0b6_4d0b:
    sub e                                         ; $4d0b: $93
    ld e, [hl]                                    ; $4d0c: $5e
    ld a, d                                       ; $4d0d: $7a
    ld [hl], e                                    ; $4d0e: $73
    ld [bc], a                                    ; $4d0f: $02
    ld d, $00                                     ; $4d10: $16 $00
    jr nz, @-$6b                                  ; $4d12: $20 $93

    ld e, [hl]                                    ; $4d14: $5e
    ld a, d                                       ; $4d15: $7a
    ld [hl], e                                    ; $4d16: $73
    ld [bc], a                                    ; $4d17: $02
    ld d, $00                                     ; $4d18: $16 $00
    jr nz, @-$6b                                  ; $4d1a: $20 $93

    ld e, [hl]                                    ; $4d1c: $5e
    ld a, d                                       ; $4d1d: $7a
    ld [hl], e                                    ; $4d1e: $73
    ld [bc], a                                    ; $4d1f: $02
    ld d, $00                                     ; $4d20: $16 $00
    jr nz, jr_0b6_4d8d                            ; $4d22: $20 $69

    ld b, l                                       ; $4d24: $45
    ld [hl], d                                    ; $4d25: $72
    ld e, d                                       ; $4d26: $5a
    nop                                           ; $4d27: $00
    jr nz, jr_0b6_4d2a                            ; $4d28: $20 $00

jr_0b6_4d2a:
    jr nz, jr_0b6_4d95                            ; $4d2a: $20 $69

    ld b, l                                       ; $4d2c: $45
    ld [hl], d                                    ; $4d2d: $72
    ld e, d                                       ; $4d2e: $5a
    nop                                           ; $4d2f: $00
    jr nz, jr_0b6_4d32                            ; $4d30: $20 $00

jr_0b6_4d32:
    inc b                                         ; $4d32: $04
    ld d, c                                       ; $4d33: $51
    ld e, d                                       ; $4d34: $5a
    ld a, [de]                                    ; $4d35: $1a
    ld c, $87                                     ; $4d36: $0e $87
    nop                                           ; $4d38: $00
    nop                                           ; $4d39: $00
    nop                                           ; $4d3a: $00
    ld b, b                                       ; $4d3b: $40
    ld b, b                                       ; $4d3c: $40
    add b                                         ; $4d3d: $80
    ld l, b                                       ; $4d3e: $68
    ld h, e                                       ; $4d3f: $63
    ld [$0000], sp                                ; $4d40: $08 $00 $00

jr_0b6_4d43:
    rla                                           ; $4d43: $17
    ld l, e                                       ; $4d44: $6b
    ld [bc], a                                    ; $4d45: $02
    ld d, $dd                                     ; $4d46: $16 $dd
    ld a, e                                       ; $4d48: $7b
    nop                                           ; $4d49: $00
    jr nz, jr_0b6_4d43                            ; $4d4a: $20 $f7

    ld l, d                                       ; $4d4c: $6a
    sbc $7f                                       ; $4d4d: $de $7f
    db $dd                                        ; $4d4f: $dd
    ld a, e                                       ; $4d50: $7b
    nop                                           ; $4d51: $00
    jr nz, @-$07                                  ; $4d52: $20 $f7

    ld l, d                                       ; $4d54: $6a
    sbc $7f                                       ; $4d55: $de $7f
    db $dd                                        ; $4d57: $dd
    ld a, e                                       ; $4d58: $7b
    nop                                           ; $4d59: $00

jr_0b6_4d5a:
    jr nz, jr_0b6_4dad                            ; $4d5a: $20 $51

    ld e, d                                       ; $4d5c: $5a
    ld a, [de]                                    ; $4d5d: $1a
    ld c, $87                                     ; $4d5e: $0e $87
    nop                                           ; $4d60: $00
    nop                                           ; $4d61: $00

jr_0b6_4d62:
    jr nz, @+$74                                  ; $4d62: $20 $72

    ld e, [hl]                                    ; $4d64: $5e
    ld e, d                                       ; $4d65: $5a
    ld [hl], e                                    ; $4d66: $73
    or h                                          ; $4d67: $b4
    ld h, d                                       ; $4d68: $62
    ld bc, $7b00                                  ; $4d69: $01 $00 $7b
    ld [hl], e                                    ; $4d6c: $73
    jr nc, jr_0b6_4d80                            ; $4d6d: $30 $11

    ret c                                         ; $4d6f: $d8

    dec d                                         ; $4d70: $15
    nop                                           ; $4d71: $00
    nop                                           ; $4d72: $00
    ld [hl], c                                    ; $4d73: $71
    dec c                                         ; $4d74: $0d
    xor c                                         ; $4d75: $a9
    ld [$0e1a], sp                                ; $4d76: $08 $1a $0e
    nop                                           ; $4d79: $00
    nop                                           ; $4d7a: $00
    rst $10                                       ; $4d7b: $d7
    ld de, $737a                                  ; $4d7c: $11 $7a $73
    dec b                                         ; $4d7f: $05

jr_0b6_4d80:
    add hl, bc                                    ; $4d80: $09
    nop                                           ; $4d81: $00
    jr nz, jr_0b6_4d5a                            ; $4d82: $20 $d6

    ld h, [hl]                                    ; $4d84: $66
    sbc $7b                                       ; $4d85: $de $7b
    ld e, d                                       ; $4d87: $5a
    ld [hl], e                                    ; $4d88: $73
    nop                                           ; $4d89: $00
    jr nz, jr_0b6_4d62                            ; $4d8a: $20 $d6

    ld h, [hl]                                    ; $4d8c: $66

jr_0b6_4d8d:
    sbc $7b                                       ; $4d8d: $de $7b
    ld e, d                                       ; $4d8f: $5a
    ld [hl], e                                    ; $4d90: $73
    nop                                           ; $4d91: $00
    jr nz, jr_0b6_4e0f                            ; $4d92: $20 $7b

    ld [hl], e                                    ; $4d94: $73

jr_0b6_4d95:
    jr nc, jr_0b6_4da8                            ; $4d95: $30 $11

    ret c                                         ; $4d97: $d8

    dec d                                         ; $4d98: $15
    nop                                           ; $4d99: $00

jr_0b6_4d9a:
    jr jr_0b6_4dcc                                ; $4d9a: $18 $30

    ld e, d                                       ; $4d9c: $5a
    sbc $7b                                       ; $4d9d: $de $7b
    or $66                                        ; $4d9f: $f6 $66
    nop                                           ; $4da1: $00
    nop                                           ; $4da2: $00
    ld c, $19                                     ; $4da3: $0e $19
    inc e                                         ; $4da5: $1c
    ld c, $06                                     ; $4da6: $0e $06

jr_0b6_4da8:
    add hl, bc                                    ; $4da8: $09
    nop                                           ; $4da9: $00
    nop                                           ; $4daa: $00
    cpl                                           ; $4dab: $2f
    dec c                                         ; $4dac: $0d

jr_0b6_4dad:
    ld a, [de]                                    ; $4dad: $1a
    ld d, $e8                                     ; $4dae: $16 $e8
    inc c                                         ; $4db0: $0c
    nop                                           ; $4db1: $00
    nop                                           ; $4db2: $00
    sub h                                         ; $4db3: $94
    dec c                                         ; $4db4: $0d
    ld [bc], a                                    ; $4db5: $02
    ld d, $eb                                     ; $4db6: $16 $eb
    nop                                           ; $4db8: $00
    nop                                           ; $4db9: $00
    db $10                                        ; $4dba: $10
    sub $66                                       ; $4dbb: $d6 $66
    ld [bc], a                                    ; $4dbd: $02
    ld d, $de                                     ; $4dbe: $16 $de
    ld a, e                                       ; $4dc0: $7b
    nop                                           ; $4dc1: $00
    jr nz, jr_0b6_4d9a                            ; $4dc2: $20 $d6

    ld h, [hl]                                    ; $4dc4: $66
    ld [bc], a                                    ; $4dc5: $02
    ld d, $de                                     ; $4dc6: $16 $de
    ld a, e                                       ; $4dc8: $7b
    nop                                           ; $4dc9: $00
    jr nz, jr_0b6_4e14                            ; $4dca: $20 $48

jr_0b6_4dcc:
    ld b, l                                       ; $4dcc: $45
    inc e                                         ; $4dcd: $1c
    ld c, $06                                     ; $4dce: $0e $06
    add hl, bc                                    ; $4dd0: $09
    nop                                           ; $4dd1: $00
    inc b                                         ; $4dd2: $04
    rrca                                          ; $4dd3: $0f
    ld d, [hl]                                    ; $4dd4: $56
    jp Jump_0b6_5921                              ; $4dd5: $c3 $21 $59


    ld [hl], e                                    ; $4dd8: $73
    nop                                           ; $4dd9: $00
    inc b                                         ; $4dda: $04
    ld [bc], a                                    ; $4ddb: $02
    ld d, $2f                                     ; $4ddc: $16 $2f
    dec e                                         ; $4dde: $1d
    cp c                                          ; $4ddf: $b9
    dec c                                         ; $4de0: $0d
    nop                                           ; $4de1: $00
    nop                                           ; $4de2: $00
    db $eb                                        ; $4de3: $eb
    inc d                                         ; $4de4: $14
    ld a, [hl-]                                   ; $4de5: $3a
    ld a, [bc]                                    ; $4de6: $0a
    ld h, b                                       ; $4de7: $60
    ld c, h                                       ; $4de8: $4c

jr_0b6_4de9:
    nop                                           ; $4de9: $00
    nop                                           ; $4dea: $00
    ld [bc], a                                    ; $4deb: $02
    ld d, $b6                                     ; $4dec: $16 $b6
    dec d                                         ; $4dee: $15
    rst $00                                       ; $4def: $c7
    jr nz, jr_0b6_4df2                            ; $4df0: $20 $00

jr_0b6_4df2:
    nop                                           ; $4df2: $00
    ld [hl], e                                    ; $4df3: $73
    ld e, [hl]                                    ; $4df4: $5e
    sbc $7b                                       ; $4df5: $de $7b
    ld [bc], a                                    ; $4df7: $02
    ld d, $00                                     ; $4df8: $16 $00
    jr nz, jr_0b6_4de9                            ; $4dfa: $20 $ed

    ld d, c                                       ; $4dfc: $51
    or h                                          ; $4dfd: $b4
    ld h, d                                       ; $4dfe: $62
    rst $30                                       ; $4dff: $f7
    ld l, d                                       ; $4e00: $6a
    nop                                           ; $4e01: $00
    jr nz, jr_0b6_4de9                            ; $4e02: $20 $e5

    inc a                                         ; $4e04: $3c
    adc e                                         ; $4e05: $8b
    ld c, c                                       ; $4e06: $49
    daa                                           ; $4e07: $27
    ld b, c                                       ; $4e08: $41
    nop                                           ; $4e09: $00
    nop                                           ; $4e0a: $00
    jr nc, jr_0b6_4e63                            ; $4e0b: $30 $56

    cp c                                          ; $4e0d: $b9
    ld a, e                                       ; $4e0e: $7b

jr_0b6_4e0f:
    ld [bc], a                                    ; $4e0f: $02
    ld d, $00                                     ; $4e10: $16 $00
    inc c                                         ; $4e12: $0c
    db $eb                                        ; $4e13: $eb

jr_0b6_4e14:
    ld e, l                                       ; $4e14: $5d
    ret nc                                        ; $4e15: $d0

    ld a, [hl]                                    ; $4e16: $7e
    ld b, $3d                                     ; $4e17: $06 $3d
    nop                                           ; $4e19: $00
    nop                                           ; $4e1a: $00
    jp z, $b769                                   ; $4e1b: $ca $69 $b7

    ld a, a                                       ; $4e1e: $7f
    adc [hl]                                      ; $4e1f: $8e
    ld a, [hl]                                    ; $4e20: $7e
    nop                                           ; $4e21: $00
    nop                                           ; $4e22: $00
    or b                                          ; $4e23: $b0
    ld h, d                                       ; $4e24: $62
    jp c, $c77f                                   ; $4e25: $da $7f $c7

    add hl, hl                                    ; $4e28: $29
    nop                                           ; $4e29: $00
    nop                                           ; $4e2a: $00
    ld e, d                                       ; $4e2b: $5a
    ld [hl], e                                    ; $4e2c: $73
    inc bc                                        ; $4e2d: $03
    ld d, $60                                     ; $4e2e: $16 $60
    inc b                                         ; $4e30: $04
    nop                                           ; $4e31: $00
    jr nz, jr_0b6_4e7d                            ; $4e32: $20 $49

    ld c, c                                       ; $4e34: $49
    ld [hl], d                                    ; $4e35: $72
    ld e, [hl]                                    ; $4e36: $5e
    dec b                                         ; $4e37: $05
    dec a                                         ; $4e38: $3d
    nop                                           ; $4e39: $00
    inc d                                         ; $4e3a: $14
    ld c, $5a                                     ; $4e3b: $0e $5a
    daa                                           ; $4e3d: $27
    ld b, c                                       ; $4e3e: $41
    sub h                                         ; $4e3f: $94
    ld l, [hl]                                    ; $4e40: $6e
    jr nz, jr_0b6_4e47                            ; $4e41: $20 $04

    halt                                          ; $4e43: $76
    ld a, e                                       ; $4e44: $7b
    srl l                                         ; $4e45: $cb $3d

jr_0b6_4e47:
    db $fc                                        ; $4e47: $fc
    ld a, a                                       ; $4e48: $7f
    nop                                           ; $4e49: $00
    nop                                           ; $4e4a: $00
    push hl                                       ; $4e4b: $e5
    inc l                                         ; $4e4c: $2c
    add a                                         ; $4e4d: $87
    inc b                                         ; $4e4e: $04
    ld c, b                                       ; $4e4f: $48
    add hl, sp                                    ; $4e50: $39
    add a                                         ; $4e51: $87
    inc b                                         ; $4e52: $04
    sub l                                         ; $4e53: $95
    dec e                                         ; $4e54: $1d
    call c, $054e                                 ; $4e55: $dc $4e $05
    dec a                                         ; $4e58: $3d
    nop                                           ; $4e59: $00
    inc b                                         ; $4e5a: $04
    bit 0, c                                      ; $4e5b: $cb $41
    sbc c                                         ; $4e5d: $99
    ld a, e                                       ; $4e5e: $7b
    and a                                         ; $4e5f: $a7
    stop                                          ; $4e60: $10 $00
    nop                                           ; $4e62: $00

jr_0b6_4e63:
    jp c, Jump_000_237f                           ; $4e63: $da $7f $23

    ld a, [de]                                    ; $4e66: $1a
    ld c, b                                       ; $4e67: $48
    add hl, hl                                    ; $4e68: $29
    nop                                           ; $4e69: $00
    inc e                                         ; $4e6a: $1c
    inc h                                         ; $4e6b: $24
    ld a, [de]                                    ; $4e6c: $1a
    ld sp, $4862                                  ; $4e6d: $31 $62 $48
    ld b, l                                       ; $4e70: $45
    nop                                           ; $4e71: $00
    ld [$6692], sp                                ; $4e72: $08 $92 $66
    jr z, jr_0b6_4eb8                             ; $4e75: $28 $41

    ld e, e                                       ; $4e77: $5b
    ld [hl], a                                    ; $4e78: $77
    nop                                           ; $4e79: $00
    nop                                           ; $4e7a: $00
    ld h, c                                       ; $4e7b: $61
    inc a                                         ; $4e7c: $3c

jr_0b6_4e7d:
    ld b, l                                       ; $4e7d: $45
    ld [hl+], a                                   ; $4e7e: $22
    ld l, c                                       ; $4e7f: $69
    ld sp, $1800                                  ; $4e80: $31 $00 $18
    ld e, d                                       ; $4e83: $5a
    ld [hl], $87                                  ; $4e84: $36 $87
    inc b                                         ; $4e86: $04
    ld e, [hl]                                    ; $4e87: $5e
    ld h, e                                       ; $4e88: $63
    inc bc                                        ; $4e89: $03
    nop                                           ; $4e8a: $00
    ld e, d                                       ; $4e8b: $5a
    ld [hl], $dc                                  ; $4e8c: $36 $dc
    ld c, [hl]                                    ; $4e8e: $4e
    ld e, [hl]                                    ; $4e8f: $5e
    ld h, e                                       ; $4e90: $63
    nop                                           ; $4e91: $00
    db $10                                        ; $4e92: $10
    sub l                                         ; $4e93: $95
    dec e                                         ; $4e94: $1d
    sbc e                                         ; $4e95: $9b
    ld b, d                                       ; $4e96: $42
    adc c                                         ; $4e97: $89
    nop                                           ; $4e98: $00
    nop                                           ; $4e99: $00
    inc b                                         ; $4e9a: $04
    ld l, a                                       ; $4e9b: $6f
    ld d, [hl]                                    ; $4e9c: $56
    inc h                                         ; $4e9d: $24
    ld e, $fb                                     ; $4e9e: $1e $fb
    ld a, a                                       ; $4ea0: $7f
    nop                                           ; $4ea1: $00
    inc e                                         ; $4ea2: $1c
    db $10                                        ; $4ea3: $10
    ld h, d                                       ; $4ea4: $62
    inc h                                         ; $4ea5: $24
    ld e, $9c                                     ; $4ea6: $1e $9c
    ld a, e                                       ; $4ea8: $7b
    nop                                           ; $4ea9: $00
    inc b                                         ; $4eaa: $04
    sub h                                         ; $4eab: $94
    ld l, [hl]                                    ; $4eac: $6e
    ld b, l                                       ; $4ead: $45
    ld [hl+], a                                   ; $4eae: $22
    cp l                                          ; $4eaf: $bd
    ld a, e                                       ; $4eb0: $7b
    nop                                           ; $4eb1: $00
    nop                                           ; $4eb2: $00

jr_0b6_4eb3:
    ld h, d                                       ; $4eb3: $62
    jr nc, @+$47                                  ; $4eb4: $30 $45

    ld e, $c4                                     ; $4eb6: $1e $c4

jr_0b6_4eb8:
    ld b, h                                       ; $4eb8: $44
    ld bc, $4500                                  ; $4eb9: $01 $00 $45
    ld [hl+], a                                   ; $4ebc: $22
    rst $38                                       ; $4ebd: $ff
    ld a, a                                       ; $4ebe: $7f
    inc sp                                        ; $4ebf: $33
    ld b, d                                       ; $4ec0: $42
    ld bc, $9904                                  ; $4ec1: $01 $04 $99
    ld c, [hl]                                    ; $4ec4: $4e
    add b                                         ; $4ec5: $80
    ld l, b                                       ; $4ec6: $68
    rst $38                                       ; $4ec7: $ff
    ld a, a                                       ; $4ec8: $7f
    ld bc, $9504                                  ; $4ec9: $01 $04 $95
    dec e                                         ; $4ecc: $1d
    sbc e                                         ; $4ecd: $9b
    ld b, d                                       ; $4ece: $42
    ld b, c                                       ; $4ecf: $41
    inc h                                         ; $4ed0: $24
    nop                                           ; $4ed1: $00
    inc c                                         ; $4ed2: $0c
    dec l                                         ; $4ed3: $2d
    ld e, [hl]                                    ; $4ed4: $5e
    add d                                         ; $4ed5: $82
    inc [hl]                                      ; $4ed6: $34
    sub [hl]                                      ; $4ed7: $96
    ld a, a                                       ; $4ed8: $7f
    nop                                           ; $4ed9: $00
    nop                                           ; $4eda: $00
    dec b                                         ; $4edb: $05
    ld a, [hl+]                                   ; $4edc: $2a
    or h                                          ; $4edd: $b4
    ld [hl], d                                    ; $4ede: $72
    nop                                           ; $4edf: $00
    jr nz, jr_0b6_4ee2                            ; $4ee0: $20 $00

jr_0b6_4ee2:
    ld [$6610], sp                                ; $4ee2: $08 $10 $66
    ld b, l                                       ; $4ee5: $45
    ld [hl+], a                                   ; $4ee6: $22
    jr jr_0b6_4f60                                ; $4ee7: $18 $77

    ld b, l                                       ; $4ee9: $45
    ld [hl+], a                                   ; $4eea: $22
    ld b, [hl]                                    ; $4eeb: $46
    ld [hl+], a                                   ; $4eec: $22
    ld b, [hl]                                    ; $4eed: $46
    ld h, $18                                     ; $4eee: $26 $18
    ld [hl], a                                    ; $4ef0: $77
    nop                                           ; $4ef1: $00
    inc b                                         ; $4ef2: $04
    and d                                         ; $4ef3: $a2
    ld e, b                                       ; $4ef4: $58
    rst $38                                       ; $4ef5: $ff
    ld a, a                                       ; $4ef6: $7f
    ld b, l                                       ; $4ef7: $45
    ld [hl+], a                                   ; $4ef8: $22
    ld bc, $d708                                  ; $4ef9: $01 $08 $d7
    dec h                                         ; $4efc: $25
    call c, $ab52                                 ; $4efd: $dc $52 $ab
    nop                                           ; $4f00: $00
    inc hl                                        ; $4f01: $23
    nop                                           ; $4f02: $00
    xor $49                                       ; $4f03: $ee $49

jr_0b6_4f05:
    jp c, $e456                                   ; $4f05: $da $56 $e4

    ld b, b                                       ; $4f08: $40
    nop                                           ; $4f09: $00
    nop                                           ; $4f0a: $00
    or d                                          ; $4f0b: $b2
    ld l, d                                       ; $4f0c: $6a
    ld h, d                                       ; $4f0d: $62
    jr z, jr_0b6_4eb3                             ; $4f0e: $28 $a3

    ld b, h                                       ; $4f10: $44
    nop                                           ; $4f11: $00
    nop                                           ; $4f12: $00
    daa                                           ; $4f13: $27
    dec a                                         ; $4f14: $3d
    ld l, $66                                     ; $4f15: $2e $66
    nop                                           ; $4f17: $00
    jr nz, jr_0b6_4f1a                            ; $4f18: $20 $00

jr_0b6_4f1a:
    db $10                                        ; $4f1a: $10
    ld b, $2a                                     ; $4f1b: $06 $2a
    xor h                                         ; $4f1d: $ac
    ld d, l                                       ; $4f1e: $55
    rst $30                                       ; $4f1f: $f7
    ld [hl], d                                    ; $4f20: $72
    nop                                           ; $4f21: $00
    nop                                           ; $4f22: $00
    ld h, [hl]                                    ; $4f23: $66
    ld h, $cc                                     ; $4f24: $26 $cc
    ld c, c                                       ; $4f26: $49
    ld h, a                                       ; $4f27: $67
    ld h, $02                                     ; $4f28: $26 $02
    nop                                           ; $4f2a: $00
    adc l                                         ; $4f2b: $8d
    ld b, l                                       ; $4f2c: $45
    ld a, [$e562]                                 ; $4f2d: $fa $62 $e5
    inc a                                         ; $4f30: $3c
    xor e                                         ; $4f31: $ab
    nop                                           ; $4f32: $00
    call c, Call_0b6_5a4e                         ; $4f33: $dc $4e $5a
    ld b, l                                       ; $4f36: $45
    ld e, [hl]                                    ; $4f37: $5e
    ld h, e                                       ; $4f38: $63
    ld [bc], a                                    ; $4f39: $02
    nop                                           ; $4f3a: $00
    inc c                                         ; $4f3b: $0c
    ld e, d                                       ; $4f3c: $5a
    ld l, [hl]                                    ; $4f3d: $6e
    add hl, hl                                    ; $4f3e: $29
    push af                                       ; $4f3f: $f5
    ld l, [hl]                                    ; $4f40: $6e
    nop                                           ; $4f41: $00
    ld [$72f2], sp                                ; $4f42: $08 $f2 $72
    daa                                           ; $4f45: $27
    ld a, [hl+]                                   ; $4f46: $2a
    ld sp, hl                                     ; $4f47: $f9
    ld a, a                                       ; $4f48: $7f
    nop                                           ; $4f49: $00
    nop                                           ; $4f4a: $00
    ld l, c                                       ; $4f4b: $69
    ld b, l                                       ; $4f4c: $45
    ld h, a                                       ; $4f4d: $67
    ld a, [hl+]                                   ; $4f4e: $2a
    nop                                           ; $4f4f: $00
    inc e                                         ; $4f50: $1c
    nop                                           ; $4f51: $00
    inc d                                         ; $4f52: $14
    ld c, b                                       ; $4f53: $48
    ld b, l                                       ; $4f54: $45
    ld h, a                                       ; $4f55: $67
    ld a, [hl+]                                   ; $4f56: $2a
    ld d, c                                       ; $4f57: $51
    ld e, d                                       ; $4f58: $5a
    nop                                           ; $4f59: $00
    nop                                           ; $4f5a: $00
    or c                                          ; $4f5b: $b1
    ld h, d                                       ; $4f5c: $62
    ld b, a                                       ; $4f5d: $47
    ld a, [hl+]                                   ; $4f5e: $2a
    reti                                          ; $4f5f: $d9


jr_0b6_4f60:
    ld a, a                                       ; $4f60: $7f
    ld b, l                                       ; $4f61: $45
    nop                                           ; $4f62: $00
    xor e                                         ; $4f63: $ab
    ld e, c                                       ; $4f64: $59
    di                                            ; $4f65: $f3
    halt                                          ; $4f66: $76
    call c, $004e                                 ; $4f67: $dc $4e $00
    nop                                           ; $4f6a: $00
    cp h                                          ; $4f6b: $bc
    ld c, d                                       ; $4f6c: $4a
    ld [hl], d                                    ; $4f6d: $72
    jr z, jr_0b6_4f05                             ; $4f6e: $28 $95

    dec e                                         ; $4f70: $1d
    nop                                           ; $4f71: $00
    nop                                           ; $4f72: $00
    db $ec                                        ; $4f73: $ec
    ld d, c                                       ; $4f74: $51
    ld a, b                                       ; $4f75: $78
    ld a, e                                       ; $4f76: $7b
    push bc                                       ; $4f77: $c5
    jr z, jr_0b6_4f7a                             ; $4f78: $28 $00

jr_0b6_4f7a:
    nop                                           ; $4f7a: $00
    ld h, a                                       ; $4f7b: $67
    ld h, $20                                     ; $4f7c: $26 $20
    jr nz, jr_0b6_4fc0                            ; $4f7e: $20 $40

    jr c, jr_0b6_4f82                             ; $4f80: $38 $00

jr_0b6_4f82:
    inc e                                         ; $4f82: $1c
    jr z, jr_0b6_4fb3                             ; $4f83: $28 $2e

    rrca                                          ; $4f85: $0f
    ld e, d                                       ; $4f86: $5a
    ld e, d                                       ; $4f87: $5a
    ld [hl], e                                    ; $4f88: $73
    nop                                           ; $4f89: $00
    inc d                                         ; $4f8a: $14
    ld c, b                                       ; $4f8b: $48
    ld b, l                                       ; $4f8c: $45
    adc b                                         ; $4f8d: $88
    ld a, [hl+]                                   ; $4f8e: $2a
    ld d, c                                       ; $4f8f: $51
    ld e, d                                       ; $4f90: $5a
    nop                                           ; $4f91: $00
    nop                                           ; $4f92: $00
    adc b                                         ; $4f93: $88
    ld a, [hl+]                                   ; $4f94: $2a
    adc c                                         ; $4f95: $89
    ld l, $51                                     ; $4f96: $2e $51
    ld e, d                                       ; $4f98: $5a
    nop                                           ; $4f99: $00
    nop                                           ; $4f9a: $00
    ld [$124d], a                                 ; $4f9b: $ea $4d $12
    ld a, a                                       ; $4f9e: $7f
    sub l                                         ; $4f9f: $95
    dec e                                         ; $4fa0: $1d
    nop                                           ; $4fa1: $00
    nop                                           ; $4fa2: $00
    sub l                                         ; $4fa3: $95
    dec e                                         ; $4fa4: $1d
    dec e                                         ; $4fa5: $1d
    ld e, e                                       ; $4fa6: $5b

jr_0b6_4fa7:
    nop                                           ; $4fa7: $00
    inc e                                         ; $4fa8: $1c
    nop                                           ; $4fa9: $00
    nop                                           ; $4faa: $00
    ld l, $62                                     ; $4fab: $2e $62
    and e                                         ; $4fad: $a3
    inc l                                         ; $4fae: $2c
    or a                                          ; $4faf: $b7
    ld a, a                                       ; $4fb0: $7f
    nop                                           ; $4fb1: $00
    nop                                           ; $4fb2: $00

jr_0b6_4fb3:
    adc b                                         ; $4fb3: $88
    ld a, [hl+]                                   ; $4fb4: $2a
    ld b, b                                       ; $4fb5: $40
    jr nc, jr_0b6_4fb8                            ; $4fb6: $30 $00

jr_0b6_4fb8:
    inc c                                         ; $4fb8: $0c
    nop                                           ; $4fb9: $00
    inc e                                         ; $4fba: $1c
    adc c                                         ; $4fbb: $89
    ld l, $30                                     ; $4fbc: $2e $30

jr_0b6_4fbe:
    ld e, d                                       ; $4fbe: $5a
    ld e, c                                       ; $4fbf: $59

jr_0b6_4fc0:
    ld l, a                                       ; $4fc0: $6f
    nop                                           ; $4fc1: $00
    jr jr_0b6_4feb                                ; $4fc2: $18 $27

    ld b, c                                       ; $4fc4: $41
    ld [hl], d                                    ; $4fc5: $72
    ld e, [hl]                                    ; $4fc6: $5e
    adc c                                         ; $4fc7: $89
    ld l, $00                                     ; $4fc8: $2e $00
    nop                                           ; $4fca: $00
    adc c                                         ; $4fcb: $89
    ld l, $00                                     ; $4fcc: $2e $00
    jr nc, jr_0b6_4ff0                            ; $4fce: $30 $20

    jr nz, jr_0b6_4fd2                            ; $4fd0: $20 $00

jr_0b6_4fd2:
    nop                                           ; $4fd2: $00
    ld c, l                                       ; $4fd3: $4d
    ld l, [hl]                                    ; $4fd4: $6e
    ld de, $f901                                  ; $4fd5: $11 $01 $f9
    dec b                                         ; $4fd8: $05
    nop                                           ; $4fd9: $00
    inc b                                         ; $4fda: $04
    adc b                                         ; $4fdb: $88
    ld h, l                                       ; $4fdc: $65
    ld b, c                                       ; $4fdd: $41
    inc l                                         ; $4fde: $2c
    call nz, $2238                                ; $4fdf: $c4 $38 $22
    nop                                           ; $4fe2: $00
    dec c                                         ; $4fe3: $0d
    ld l, d                                       ; $4fe4: $6a
    sub l                                         ; $4fe5: $95
    dec b                                         ; $4fe6: $05
    and e                                         ; $4fe7: $a3
    inc l                                         ; $4fe8: $2c
    nop                                           ; $4fe9: $00
    nop                                           ; $4fea: $00

jr_0b6_4feb:
    ld b, a                                       ; $4feb: $47
    ld d, l                                       ; $4fec: $55
    ld h, c                                       ; $4fed: $61
    jr nc, @-$75                                  ; $4fee: $30 $89

jr_0b6_4ff0:
    ld [hl-], a                                   ; $4ff0: $32
    nop                                           ; $4ff1: $00
    inc e                                         ; $4ff2: $1c
    adc c                                         ; $4ff3: $89
    ld l, $7b                                     ; $4ff4: $2e $7b
    ld [hl], a                                    ; $4ff6: $77
    ld d, c                                       ; $4ff7: $51
    ld e, d                                       ; $4ff8: $5a
    nop                                           ; $4ff9: $00
    jr jr_0b6_4fa7                                ; $4ffa: $18 $ab

    ld c, l                                       ; $4ffc: $4d
    sub $66                                       ; $4ffd: $d6 $66
    xor d                                         ; $4fff: $aa
    ld [hl-], a                                   ; $5000: $32
    jr nz, @+$16                                  ; $5001: $20 $14

    ld h, a                                       ; $5003: $67
    ld [hl], c                                    ; $5004: $71
    xor d                                         ; $5005: $aa
    ld [hl-], a                                   ; $5006: $32
    ld h, c                                       ; $5007: $61
    inc a                                         ; $5008: $3c
    ld hl, $5100                                  ; $5009: $21 $00 $51
    dec b                                         ; $500c: $05
    ld e, a                                       ; $500d: $5f
    cpl                                           ; $500e: $2f
    add hl, de                                    ; $500f: $19
    ld b, $00                                     ; $5010: $06 $00
    inc b                                         ; $5012: $04
    ld h, c                                       ; $5013: $61
    inc [hl]                                      ; $5014: $34
    call RST_00                                   ; $5015: $cd $00 $00
    inc d                                         ; $5018: $14
    nop                                           ; $5019: $00
    nop                                           ; $501a: $00
    ld e, [hl]                                    ; $501b: $5e
    ld b, e                                       ; $501c: $43
    ld [hl], h                                    ; $501d: $74
    ld bc, $4d05                                  ; $501e: $01 $05 $4d
    nop                                           ; $5021: $00
    nop                                           ; $5022: $00
    ret                                           ; $5023: $c9


    ld l, l                                       ; $5024: $6d
    and $2c                                       ; $5025: $e6 $2c
    ld [de], a                                    ; $5027: $12
    ld a, e                                       ; $5028: $7b
    nop                                           ; $5029: $00
    inc e                                         ; $502a: $1c
    xor d                                         ; $502b: $aa
    ld [hl-], a                                   ; $502c: $32
    cp l                                          ; $502d: $bd
    ld [hl], a                                    ; $502e: $77

jr_0b6_502f:
    or h                                          ; $502f: $b4
    ld h, d                                       ; $5030: $62
    nop                                           ; $5031: $00
    jr jr_0b6_4fbe                                ; $5032: $18 $8a

    ld c, c                                       ; $5034: $49
    ld a, d                                       ; $5035: $7a
    ld [hl], e                                    ; $5036: $73
    ld [hl], d                                    ; $5037: $72
    ld e, d                                       ; $5038: $5a
    nop                                           ; $5039: $00
    nop                                           ; $503a: $00
    dec h                                         ; $503b: $25
    ld l, c                                       ; $503c: $69
    adc a                                         ; $503d: $8f
    ld h, [hl]                                    ; $503e: $66
    ld h, b                                       ; $503f: $60
    ld b, b                                       ; $5040: $40
    nop                                           ; $5041: $00
    nop                                           ; $5042: $00
    ld a, l                                       ; $5043: $7d
    ld a, [bc]                                    ; $5044: $0a
    ld e, l                                       ; $5045: $5d

jr_0b6_5046:
    ld b, a                                       ; $5046: $47
    jp z, Jump_000_2000                           ; $5047: $ca $00 $20

    ld [$0089], sp                                ; $504a: $08 $89 $00
    ld h, c                                       ; $504d: $61
    jr nc, @+$34                                  ; $504e: $30 $32

    ld bc, $0000                                  ; $5050: $01 $00 $00
    add b                                         ; $5053: $80
    ld c, b                                       ; $5054: $48
    ld [hl], a                                    ; $5055: $77
    ld a, [hl+]                                   ; $5056: $2a
    ld l, b                                       ; $5057: $68
    nop                                           ; $5058: $00
    nop                                           ; $5059: $00
    nop                                           ; $505a: $00
    ld c, l                                       ; $505b: $4d
    ld l, [hl]                                    ; $505c: $6e
    call c, Call_000_036b                         ; $505d: $dc $6b $03
    ld c, l                                       ; $5060: $4d
    nop                                           ; $5061: $00
    nop                                           ; $5062: $00
    rla                                           ; $5063: $17
    ld l, e                                       ; $5064: $6b
    nop                                           ; $5065: $00
    jr nz, jr_0b6_5046                            ; $5066: $20 $de

    ld a, a                                       ; $5068: $7f
    nop                                           ; $5069: $00
    nop                                           ; $506a: $00
    adc a                                         ; $506b: $8f
    add hl, de                                    ; $506c: $19
    nop                                           ; $506d: $00
    jr nz, @-$10                                  ; $506e: $20 $ee

    ld d, c                                       ; $5070: $51
    ld b, c                                       ; $5071: $41
    inc c                                         ; $5072: $0c
    dec l                                         ; $5073: $2d
    ld h, [hl]                                    ; $5074: $66
    ld h, $5d                                     ; $5075: $26 $5d
    inc de                                        ; $5077: $13
    ld a, e                                       ; $5078: $7b
    nop                                           ; $5079: $00

jr_0b6_507a:
    nop                                           ; $507a: $00
    rst $38                                       ; $507b: $ff
    ld h, a                                       ; $507c: $67
    jr nz, jr_0b6_50a7                            ; $507d: $20 $28

    ret z                                         ; $507f: $c8

    ld [$0000], sp                                ; $5080: $08 $00 $00
    or b                                          ; $5083: $b0
    nop                                           ; $5084: $00
    jr nz, jr_0b6_50b3                            ; $5085: $20 $2c

    ldh a, [rTIMA]                                ; $5087: $f0 $05
    nop                                           ; $5089: $00
    nop                                           ; $508a: $00
    add c                                         ; $508b: $81
    ld b, b                                       ; $508c: $40
    db $e3                                        ; $508d: $e3
    ld l, h                                       ; $508e: $6c
    ld b, [hl]                                    ; $508f: $46
    ld h, l                                       ; $5090: $65
    jr nz, jr_0b6_5097                            ; $5091: $20 $04

    inc c                                         ; $5093: $0c
    ld l, d                                       ; $5094: $6a
    sub [hl]                                      ; $5095: $96
    ld a, a                                       ; $5096: $7f

jr_0b6_5097:
    cp a                                          ; $5097: $bf
    ld b, a                                       ; $5098: $47
    nop                                           ; $5099: $00
    jr nz, jr_0b6_502f                            ; $509a: $20 $93

    ld e, [hl]                                    ; $509c: $5e
    db $dd                                        ; $509d: $dd
    ld a, e                                       ; $509e: $7b
    jr jr_0b6_510c                                ; $509f: $18 $6b

    nop                                           ; $50a1: $00
    inc b                                         ; $50a2: $04
    inc d                                         ; $50a3: $14
    ld [hl+], a                                   ; $50a4: $22
    sbc a                                         ; $50a5: $9f
    ld c, a                                       ; $50a6: $4f

jr_0b6_50a7:
    nop                                           ; $50a7: $00
    jr nz, jr_0b6_50aa                            ; $50a8: $20 $00

jr_0b6_50aa:
    nop                                           ; $50aa: $00
    adc b                                         ; $50ab: $88
    ld h, l                                       ; $50ac: $65
    or b                                          ; $50ad: $b0
    ld [hl], d                                    ; $50ae: $72
    ret c                                         ; $50af: $d8

    ld a, a                                       ; $50b0: $7f
    nop                                           ; $50b1: $00
    nop                                           ; $50b2: $00

jr_0b6_50b3:
    add c                                         ; $50b3: $81
    ld c, h                                       ; $50b4: $4c
    ld b, b                                       ; $50b5: $40
    jr nc, jr_0b6_507a                            ; $50b6: $30 $c2

    ld h, h                                       ; $50b8: $64
    nop                                           ; $50b9: $00
    db $10                                        ; $50ba: $10
    ld e, h                                       ; $50bb: $5c
    inc bc                                        ; $50bc: $03
    adc a                                         ; $50bd: $8f
    dec b                                         ; $50be: $05
    rst $38                                       ; $50bf: $ff
    ld h, a                                       ; $50c0: $67
    nop                                           ; $50c1: $00
    nop                                           ; $50c2: $00
    ld b, [hl]                                    ; $50c3: $46
    ld l, c                                       ; $50c4: $69
    add c                                         ; $50c5: $81
    ld c, b                                       ; $50c6: $48
    ld c, h                                       ; $50c7: $4c
    ld a, [hl]                                    ; $50c8: $7e
    nop                                           ; $50c9: $00
    nop                                           ; $50ca: $00
    ld d, [hl]                                    ; $50cb: $56
    ld a, a                                       ; $50cc: $7f
    rst $38                                       ; $50cd: $ff
    ld e, $34                                     ; $50ce: $1e $34
    ld bc, $2000                                  ; $50d0: $01 $00 $20
    ld d, c                                       ; $50d3: $51
    ld e, d                                       ; $50d4: $5a
    rst $30                                       ; $50d5: $f7
    ld l, d                                       ; $50d6: $6a
    sbc h                                         ; $50d7: $9c
    ld [hl], a                                    ; $50d8: $77
    nop                                           ; $50d9: $00
    nop                                           ; $50da: $00
    rst $18                                       ; $50db: $df
    ld c, e                                       ; $50dc: $4b
    ld c, b                                       ; $50dd: $48
    ld b, c                                       ; $50de: $41
    nop                                           ; $50df: $00
    jr nz, jr_0b6_5104                            ; $50e0: $20 $22

    nop                                           ; $50e2: $00
    db $eb                                        ; $50e3: $eb
    ld l, c                                       ; $50e4: $69
    cp a                                          ; $50e5: $bf
    ccf                                           ; $50e6: $3f
    ld [hl-], a                                   ; $50e7: $32
    ld a, a                                       ; $50e8: $7f
    nop                                           ; $50e9: $00
    nop                                           ; $50ea: $00
    jp nz, Jump_0b6_4064                          ; $50eb: $c2 $64 $40

    jr nc, jr_0b6_5115                            ; $50ee: $30 $25

    ld h, c                                       ; $50f0: $61
    nop                                           ; $50f1: $00
    nop                                           ; $50f2: $00
    jr nz, jr_0b6_5121                            ; $50f3: $20 $2c

    ld h, b                                       ; $50f5: $60
    ld b, h                                       ; $50f6: $44
    nop                                           ; $50f7: $00
    inc e                                         ; $50f8: $1c

jr_0b6_50f9:
    nop                                           ; $50f9: $00
    nop                                           ; $50fa: $00
    and d                                         ; $50fb: $a2
    ld c, h                                       ; $50fc: $4c
    inc [hl]                                      ; $50fd: $34
    ld bc, $7944                                  ; $50fe: $01 $44 $79

Call_0b6_5101:
    nop                                           ; $5101: $00
    nop                                           ; $5102: $00
    sub h                                         ; $5103: $94

jr_0b6_5104:
    ld d, [hl]                                    ; $5104: $56
    ld e, a                                       ; $5105: $5f
    ld [bc], a                                    ; $5106: $02
    jr nc, jr_0b6_510e                            ; $5107: $30 $05

    nop                                           ; $5109: $00
    jr nz, jr_0b6_50f9                            ; $510a: $20 $ed

jr_0b6_510c:
    ld d, c                                       ; $510c: $51
    ld [hl], d                                    ; $510d: $72

jr_0b6_510e:
    ld e, [hl]                                    ; $510e: $5e
    cpl                                           ; $510f: $2f
    ld d, [hl]                                    ; $5110: $56
    nop                                           ; $5111: $00
    jr nz, jr_0b6_511a                            ; $5112: $20 $06

    ld b, c                                       ; $5114: $41

jr_0b6_5115:
    ld h, $41                                     ; $5115: $26 $41
    dec h                                         ; $5117: $25
    ld h, c                                       ; $5118: $61
    ld [hl+], a                                   ; $5119: $22

jr_0b6_511a:
    nop                                           ; $511a: $00
    xor c                                         ; $511b: $a9
    ld h, c                                       ; $511c: $61
    sub $05                                       ; $511d: $d6 $05
    ld a, a                                       ; $511f: $7f
    daa                                           ; $5120: $27

jr_0b6_5121:
    nop                                           ; $5121: $00
    ld [$58a2], sp                                ; $5122: $08 $a2 $58
    add a                                         ; $5125: $87
    ld [hl], l                                    ; $5126: $75
    pop bc                                        ; $5127: $c1
    ld [hl], b                                    ; $5128: $70

jr_0b6_5129:
    nop                                           ; $5129: $00
    nop                                           ; $512a: $00
    sbc e                                         ; $512b: $9b
    add hl, bc                                    ; $512c: $09
    adc b                                         ; $512d: $88
    nop                                           ; $512e: $00
    ld b, b                                       ; $512f: $40
    inc [hl]                                      ; $5130: $34
    ld bc, $f100                                  ; $5131: $01 $00 $f1
    nop                                           ; $5134: $00
    ld b, b                                       ; $5135: $40
    inc a                                         ; $5136: $3c
    xor l                                         ; $5137: $ad
    dec [hl]                                      ; $5138: $35
    nop                                           ; $5139: $00

jr_0b6_513a:
    nop                                           ; $513a: $00
    adc e                                         ; $513b: $8b
    add hl, sp                                    ; $513c: $39
    ld d, c                                       ; $513d: $51
    ld d, [hl]                                    ; $513e: $56
    ld h, e                                       ; $513f: $63
    stop                                          ; $5140: $10 $00
    jr nz, jr_0b6_5129                            ; $5142: $20 $e5

    inc a                                         ; $5144: $3c
    ld c, b                                       ; $5145: $48
    ld b, l                                       ; $5146: $45
    ld h, e                                       ; $5147: $63
    stop                                          ; $5148: $10 $00
    jr nz, jr_0b6_513a                            ; $514a: $20 $ee

    ld e, l                                       ; $514c: $5d
    add a                                         ; $514d: $87
    ld [hl], l                                    ; $514e: $75
    pop bc                                        ; $514f: $c1
    ld [hl], b                                    ; $5150: $70
    ld [hl+], a                                   ; $5151: $22
    nop                                           ; $5152: $00
    push hl                                       ; $5153: $e5
    inc [hl]                                      ; $5154: $34
    ld d, e                                       ; $5155: $53
    ld bc, $4d8a                                  ; $5156: $01 $8a $4d
    nop                                           ; $5159: $00
    nop                                           ; $515a: $00
    adc d                                         ; $515b: $8a
    nop                                           ; $515c: $00
    ld [de], a                                    ; $515d: $12
    ld bc, $00ad                                  ; $515e: $01 $ad $00

jr_0b6_5161:
    ld bc, $6b00                                  ; $5161: $01 $00 $6b
    dec c                                         ; $5164: $0d
    dec sp                                        ; $5165: $3b
    dec bc                                        ; $5166: $0b
    jp nc, RST_00                                 ; $5167: $d2 $00 $00

    nop                                           ; $516a: $00
    adc h                                         ; $516b: $8c
    ld sp, $56b5                                  ; $516c: $31 $b5 $56
    xor a                                         ; $516f: $af
    nop                                           ; $5170: $00
    nop                                           ; $5171: $00
    nop                                           ; $5172: $00
    ld b, $35                                     ; $5173: $06 $35
    adc e                                         ; $5175: $8b
    ld c, l                                       ; $5176: $4d
    ld h, e                                       ; $5177: $63
    inc c                                         ; $5178: $0c
    nop                                           ; $5179: $00
    jr nz, jr_0b6_5161                            ; $517a: $20 $e5

    inc a                                         ; $517c: $3c
    adc e                                         ; $517d: $8b
    ld c, l                                       ; $517e: $4d
    ld h, e                                       ; $517f: $63

jr_0b6_5180:
    inc c                                         ; $5180: $0c
    nop                                           ; $5181: $00
    jr nz, jr_0b6_510e                            ; $5182: $20 $8a

    nop                                           ; $5184: $00
    ld [de], a                                    ; $5185: $12
    ld bc, $00ad                                  ; $5186: $01 $ad $00
    nop                                           ; $5189: $00
    nop                                           ; $518a: $00
    xor h                                         ; $518b: $ac
    ld d, l                                       ; $518c: $55
    sub h                                         ; $518d: $94
    ld l, [hl]                                    ; $518e: $6e
    and h                                         ; $518f: $a4
    stop                                          ; $5190: $10 $00
    nop                                           ; $5192: $00
    ld c, c                                       ; $5193: $49
    dec l                                         ; $5194: $2d
    ld h, [hl]                                    ; $5195: $66
    ld [$5271], sp                                ; $5196: $08 $71 $52
    ld [bc], a                                    ; $5199: $02
    nop                                           ; $519a: $00
    or l                                          ; $519b: $b5
    ld a, [bc]                                    ; $519c: $0a
    sbc e                                         ; $519d: $9b
    ld c, a                                       ; $519e: $4f
    ld l, e                                       ; $519f: $6b
    dec c                                         ; $51a0: $0d
    nop                                           ; $51a1: $00
    nop                                           ; $51a2: $00
    adc $39                                       ; $51a3: $ce $39
    sub h                                         ; $51a5: $94
    ld d, d                                       ; $51a6: $52
    and l                                         ; $51a7: $a5
    inc d                                         ; $51a8: $14
    ld hl, $ac04                                  ; $51a9: $21 $04 $ac
    ld d, l                                       ; $51ac: $55
    push hl                                       ; $51ad: $e5
    inc a                                         ; $51ae: $3c
    ld [hl], e                                    ; $51af: $73
    ld l, [hl]                                    ; $51b0: $6e
    nop                                           ; $51b1: $00
    jr nz, @-$52                                  ; $51b2: $20 $ac

    ld d, l                                       ; $51b4: $55
    push hl                                       ; $51b5: $e5
    inc a                                         ; $51b6: $3c
    ld [hl], e                                    ; $51b7: $73
    ld l, [hl]                                    ; $51b8: $6e
    nop                                           ; $51b9: $00
    jr nz, jr_0b6_5205                            ; $51ba: $20 $49

    dec l                                         ; $51bc: $2d
    ld h, [hl]                                    ; $51bd: $66
    ld [$5271], sp                                ; $51be: $08 $71 $52
    nop                                           ; $51c1: $00
    nop                                           ; $51c2: $00
    rst $30                                       ; $51c3: $f7
    ld [hl], d                                    ; $51c4: $72
    rst $38                                       ; $51c5: $ff
    ld a, a                                       ; $51c6: $7f

jr_0b6_51c7:
    ld b, d                                       ; $51c7: $42
    inc c                                         ; $51c8: $0c
    and l                                         ; $51c9: $a5
    inc d                                         ; $51ca: $14
    ld sp, $4a46                                  ; $51cb: $31 $46 $4a
    add hl, hl                                    ; $51ce: $29
    sub h                                         ; $51cf: $94
    ld d, d                                       ; $51d0: $52
    nop                                           ; $51d1: $00
    nop                                           ; $51d2: $00
    ld e, b                                       ; $51d3: $58
    dec b                                         ; $51d4: $05
    ld l, c                                       ; $51d5: $69
    nop                                           ; $51d6: $00
    ld h, e                                       ; $51d7: $63
    inc c                                         ; $51d8: $0c
    ld b, c                                       ; $51d9: $41
    ld [$39ce], sp                                ; $51da: $08 $ce $39
    ld [hl], e                                    ; $51dd: $73
    ld c, [hl]                                    ; $51de: $4e
    add $18                                       ; $51df: $c6 $18
    ld hl, $9404                                  ; $51e1: $21 $04 $94
    ld [hl], d                                    ; $51e4: $72
    ld a, e                                       ; $51e5: $7b
    ld [hl], a                                    ; $51e6: $77
    nop                                           ; $51e7: $00
    jr nz, jr_0b6_51ea                            ; $51e8: $20 $00

jr_0b6_51ea:
    jr nz, jr_0b6_5180                            ; $51ea: $20 $94

    ld [hl], d                                    ; $51ec: $72
    ld a, e                                       ; $51ed: $7b
    ld [hl], a                                    ; $51ee: $77
    nop                                           ; $51ef: $00
    jr nz, jr_0b6_51f2                            ; $51f0: $20 $00

jr_0b6_51f2:
    jr nz, jr_0b6_5225                            ; $51f2: $20 $31

    ld b, [hl]                                    ; $51f4: $46
    ld c, d                                       ; $51f5: $4a
    add hl, hl                                    ; $51f6: $29
    sub h                                         ; $51f7: $94
    ld d, d                                       ; $51f8: $52
    nop                                           ; $51f9: $00
    nop                                           ; $51fa: $00
    ld a, e                                       ; $51fb: $7b
    ld [hl], a                                    ; $51fc: $77
    nop                                           ; $51fd: $00
    jr nz, @+$01                                  ; $51fe: $20 $ff

    ld a, a                                       ; $5200: $7f
    nop                                           ; $5201: $00
    nop                                           ; $5202: $00
    db $10                                        ; $5203: $10
    ld b, d                                       ; $5204: $42

jr_0b6_5205:
    rlca                                          ; $5205: $07
    ld hl, $5294                                  ; $5206: $21 $94 $52
    nop                                           ; $5209: $00
    nop                                           ; $520a: $00
    rrca                                          ; $520b: $0f
    ld h, d                                       ; $520c: $62
    sbc h                                         ; $520d: $9c
    ld a, e                                       ; $520e: $7b
    or l                                          ; $520f: $b5
    ld l, [hl]                                    ; $5210: $6e
    nop                                           ; $5211: $00
    nop                                           ; $5212: $00
    push hl                                       ; $5213: $e5
    inc a                                         ; $5214: $3c
    rrca                                          ; $5215: $0f
    ld e, d                                       ; $5216: $5a
    ld c, c                                       ; $5217: $49
    ld c, c                                       ; $5218: $49
    nop                                           ; $5219: $00
    nop                                           ; $521a: $00

jr_0b6_521b:
    rst $30                                       ; $521b: $f7
    ld [hl], d                                    ; $521c: $72
    sbc $7b                                       ; $521d: $de $7b
    nop                                           ; $521f: $00
    jr nz, jr_0b6_5222                            ; $5220: $20 $00

jr_0b6_5222:
    jr nz, jr_0b6_521b                            ; $5222: $20 $f7

    ld [hl], d                                    ; $5224: $72

jr_0b6_5225:
    sbc $7b                                       ; $5225: $de $7b
    nop                                           ; $5227: $00
    jr nz, jr_0b6_522a                            ; $5228: $20 $00

jr_0b6_522a:
    jr nz, @+$12                                  ; $522a: $20 $10

    ld b, d                                       ; $522c: $42
    rlca                                          ; $522d: $07
    ld hl, $5294                                  ; $522e: $21 $94 $52
    nop                                           ; $5231: $00
    jr nz, jr_0b6_51c7                            ; $5232: $20 $93

    ld h, d                                       ; $5234: $62
    sbc h                                         ; $5235: $9c
    ld [hl], a                                    ; $5236: $77
    ld l, c                                       ; $5237: $69
    ld b, l                                       ; $5238: $45
    push hl                                       ; $5239: $e5
    inc a                                         ; $523a: $3c
    ld sp, $f766                                  ; $523b: $31 $66 $f7
    ld [hl], d                                    ; $523e: $72
    ld c, c                                       ; $523f: $49
    ld c, l                                       ; $5240: $4d
    daa                                           ; $5241: $27
    ld b, l                                       ; $5242: $45
    sub l                                         ; $5243: $95
    ld [hl], d                                    ; $5244: $72
    sbc h                                         ; $5245: $9c
    ld a, e                                       ; $5246: $7b
    adc $5d                                       ; $5247: $ce $5d
    ld l, d                                       ; $5249: $6a
    ld c, l                                       ; $524a: $4d
    sub h                                         ; $524b: $94
    ld l, [hl]                                    ; $524c: $6e
    jr nc, @+$60                                  ; $524d: $30 $5e

    ld e, d                                       ; $524f: $5a
    ld [hl], e                                    ; $5250: $73
    nop                                           ; $5251: $00
    jr nz, @+$75                                  ; $5252: $20 $73

    ld e, [hl]                                    ; $5254: $5e
    cp h                                          ; $5255: $bc
    ld a, e                                       ; $5256: $7b
    push hl                                       ; $5257: $e5
    inc a                                         ; $5258: $3c
    nop                                           ; $5259: $00
    jr nz, @+$75                                  ; $525a: $20 $73

    ld e, [hl]                                    ; $525c: $5e
    cp h                                          ; $525d: $bc
    ld a, e                                       ; $525e: $7b
    push hl                                       ; $525f: $e5
    inc a                                         ; $5260: $3c
    nop                                           ; $5261: $00
    jr nz, jr_0b6_5264                            ; $5262: $20 $00

jr_0b6_5264:
    jr nz, jr_0b6_5266                            ; $5264: $20 $00

jr_0b6_5266:
    jr nz, jr_0b6_526a                            ; $5266: $20 $02

    inc d                                         ; $5268: $14
    nop                                           ; $5269: $00

jr_0b6_526a:
    jr nz, jr_0b6_526c                            ; $526a: $20 $00

jr_0b6_526c:
    jr nz, jr_0b6_526e                            ; $526c: $20 $00

jr_0b6_526e:
    jr nz, jr_0b6_5272                            ; $526e: $20 $02

    inc d                                         ; $5270: $14
    nop                                           ; $5271: $00

jr_0b6_5272:
    jr nz, jr_0b6_5274                            ; $5272: $20 $00

jr_0b6_5274:
    jr nz, jr_0b6_5276                            ; $5274: $20 $00

jr_0b6_5276:
    jr nz, jr_0b6_527a                            ; $5276: $20 $02

    inc d                                         ; $5278: $14
    nop                                           ; $5279: $00

jr_0b6_527a:
    nop                                           ; $527a: $00
    rst $38                                       ; $527b: $ff
    ld a, a                                       ; $527c: $7f
    nop                                           ; $527d: $00
    jr nz, jr_0b6_5280                            ; $527e: $20 $00

jr_0b6_5280:
    jr nz, jr_0b6_5282                            ; $5280: $20 $00

jr_0b6_5282:
    jr nz, @+$01                                  ; $5282: $20 $ff

    ld a, a                                       ; $5284: $7f
    nop                                           ; $5285: $00
    jr nz, jr_0b6_5288                            ; $5286: $20 $00

jr_0b6_5288:
    jr nz, jr_0b6_528a                            ; $5288: $20 $00

jr_0b6_528a:
    jr nz, @+$01                                  ; $528a: $20 $ff

    ld a, a                                       ; $528c: $7f
    nop                                           ; $528d: $00
    jr nz, jr_0b6_5290                            ; $528e: $20 $00

jr_0b6_5290:
    jr nz, jr_0b6_5292                            ; $5290: $20 $00

jr_0b6_5292:
    jr nz, @+$01                                  ; $5292: $20 $ff

    ld a, a                                       ; $5294: $7f
    nop                                           ; $5295: $00
    jr nz, jr_0b6_5298                            ; $5296: $20 $00

jr_0b6_5298:
    jr nz, jr_0b6_529a                            ; $5298: $20 $00

jr_0b6_529a:
    jr nz, jr_0b6_529c                            ; $529a: $20 $00

jr_0b6_529c:
    jr nz, jr_0b6_529e                            ; $529c: $20 $00

jr_0b6_529e:
    jr nz, jr_0b6_52a2                            ; $529e: $20 $02

    inc d                                         ; $52a0: $14
    nop                                           ; $52a1: $00

jr_0b6_52a2:
    jr nz, jr_0b6_52a4                            ; $52a2: $20 $00

jr_0b6_52a4:
    jr nz, jr_0b6_52a6                            ; $52a4: $20 $00

jr_0b6_52a6:
    jr nz, jr_0b6_52aa                            ; $52a6: $20 $02

    inc d                                         ; $52a8: $14
    nop                                           ; $52a9: $00

jr_0b6_52aa:
    nop                                           ; $52aa: $00
    nop                                           ; $52ab: $00
    jr nz, jr_0b6_52ae                            ; $52ac: $20 $00

jr_0b6_52ae:
    jr nz, jr_0b6_52b2                            ; $52ae: $20 $02

    inc d                                         ; $52b0: $14
    nop                                           ; $52b1: $00

jr_0b6_52b2:
    nop                                           ; $52b2: $00
    rst $38                                       ; $52b3: $ff
    ld a, a                                       ; $52b4: $7f
    nop                                           ; $52b5: $00
    jr nz, jr_0b6_52b8                            ; $52b6: $20 $00

jr_0b6_52b8:
    jr nz, jr_0b6_52ba                            ; $52b8: $20 $00

jr_0b6_52ba:
    nop                                           ; $52ba: $00
    nop                                           ; $52bb: $00
    jr nz, jr_0b6_52be                            ; $52bc: $20 $00

jr_0b6_52be:
    jr nz, jr_0b6_52c0                            ; $52be: $20 $00

jr_0b6_52c0:
    jr nz, jr_0b6_52c2                            ; $52c0: $20 $00

jr_0b6_52c2:
    jr nz, jr_0b6_52c4                            ; $52c2: $20 $00

jr_0b6_52c4:
    jr nz, jr_0b6_52c6                            ; $52c4: $20 $00

jr_0b6_52c6:
    jr nz, jr_0b6_52c8                            ; $52c6: $20 $00

jr_0b6_52c8:
    jr nz, jr_0b6_52ca                            ; $52c8: $20 $00

jr_0b6_52ca:
    jr nz, jr_0b6_52cc                            ; $52ca: $20 $00

jr_0b6_52cc:
    jr nz, jr_0b6_52ce                            ; $52cc: $20 $00

jr_0b6_52ce:
    jr nz, jr_0b6_52d0                            ; $52ce: $20 $00

jr_0b6_52d0:
    jr nz, jr_0b6_52d2                            ; $52d0: $20 $00

jr_0b6_52d2:
    jr nz, jr_0b6_52d4                            ; $52d2: $20 $00

jr_0b6_52d4:
    jr nz, jr_0b6_52d6                            ; $52d4: $20 $00

jr_0b6_52d6:
    jr nz, jr_0b6_52da                            ; $52d6: $20 $02

    inc d                                         ; $52d8: $14
    nop                                           ; $52d9: $00

jr_0b6_52da:
    nop                                           ; $52da: $00
    nop                                           ; $52db: $00
    jr nz, jr_0b6_52de                            ; $52dc: $20 $00

jr_0b6_52de:
    jr nz, jr_0b6_52e2                            ; $52de: $20 $02

    inc d                                         ; $52e0: $14
    nop                                           ; $52e1: $00

jr_0b6_52e2:
    nop                                           ; $52e2: $00
    adc a                                         ; $52e3: $8f
    add hl, de                                    ; $52e4: $19
    ld a, a                                       ; $52e5: $7f
    ccf                                           ; $52e6: $3f
    ld d, a                                       ; $52e7: $57
    ld a, [de]                                    ; $52e8: $1a
    ld hl, $d200                                  ; $52e9: $21 $00 $d2
    add hl, de                                    ; $52ec: $19
    dec a                                         ; $52ed: $3d
    inc sp                                        ; $52ee: $33
    rst $38                                       ; $52ef: $ff
    ld a, a                                       ; $52f0: $7f
    nop                                           ; $52f1: $00
    nop                                           ; $52f2: $00
    rst $38                                       ; $52f3: $ff
    ld a, a                                       ; $52f4: $7f
    nop                                           ; $52f5: $00
    jr nz, @+$01                                  ; $52f6: $20 $ff

    ld a, a                                       ; $52f8: $7f
    nop                                           ; $52f9: $00
    jr nz, @+$01                                  ; $52fa: $20 $ff

    ld a, a                                       ; $52fc: $7f
    nop                                           ; $52fd: $00
    jr nz, @+$01                                  ; $52fe: $20 $ff

    ld a, a                                       ; $5300: $7f
    nop                                           ; $5301: $00
    jr nz, @+$01                                  ; $5302: $20 $ff

Call_0b6_5304:
    ld a, a                                       ; $5304: $7f
    nop                                           ; $5305: $00
    jr nz, @+$01                                  ; $5306: $20 $ff

    ld a, a                                       ; $5308: $7f
    nop                                           ; $5309: $00
    jr nz, @-$6f                                  ; $530a: $20 $8f

    add hl, de                                    ; $530c: $19
    ld a, a                                       ; $530d: $7f
    ccf                                           ; $530e: $3f
    ld d, a                                       ; $530f: $57
    ld a, [de]                                    ; $5310: $1a
    nop                                           ; $5311: $00
    nop                                           ; $5312: $00
    cp d                                          ; $5313: $ba
    ld [hl+], a                                   ; $5314: $22
    nop                                           ; $5315: $00
    jr nz, @+$81                                  ; $5316: $20 $7f

jr_0b6_5318:
    ccf                                           ; $5318: $3f
    nop                                           ; $5319: $00
    nop                                           ; $531a: $00
    ld [hl], $12                                  ; $531b: $36 $12
    cp a                                          ; $531d: $bf
    dec de                                        ; $531e: $1b
    xor c                                         ; $531f: $a9
    nop                                           ; $5320: $00
    ld [hl+], a                                   ; $5321: $22
    nop                                           ; $5322: $00
    ld [de], a                                    ; $5323: $12
    db $10                                        ; $5324: $10
    call c, $2d1e                                 ; $5325: $dc $1e $2d
    ld bc, $0000                                  ; $5328: $01 $00 $00
    rst $38                                       ; $532b: $ff
    ld a, a                                       ; $532c: $7f
    ld [de], a                                    ; $532d: $12
    stop                                          ; $532e: $10 $00
    jr nz, jr_0b6_5332                            ; $5330: $20 $00

jr_0b6_5332:
    jr nz, @+$01                                  ; $5332: $20 $ff

    ld a, a                                       ; $5334: $7f
    ld [de], a                                    ; $5335: $12
    stop                                          ; $5336: $10 $00
    jr nz, jr_0b6_533a                            ; $5338: $20 $00

jr_0b6_533a:
    jr nz, @+$01                                  ; $533a: $20 $ff

    ld a, a                                       ; $533c: $7f
    ld [de], a                                    ; $533d: $12
    stop                                          ; $533e: $10 $00
    jr nz, jr_0b6_5342                            ; $5340: $20 $00

jr_0b6_5342:
    jr nz, jr_0b6_537a                            ; $5342: $20 $36

    ld [de], a                                    ; $5344: $12
    cp a                                          ; $5345: $bf
    dec de                                        ; $5346: $1b

jr_0b6_5347:
    xor c                                         ; $5347: $a9
    nop                                           ; $5348: $00
    ld bc, $2d00                                  ; $5349: $01 $00 $2d
    ld bc, $1e57                                  ; $534c: $01 $57 $1e
    nop                                           ; $534f: $00
    jr nz, jr_0b6_5353                            ; $5350: $20 $01

    inc b                                         ; $5352: $04

jr_0b6_5353:
    call c, Call_0b6_5101                         ; $5353: $dc $01 $51
    ld b, [hl]                                    ; $5356: $46
    db $ec                                        ; $5357: $ec

jr_0b6_5358:
    inc c                                         ; $5358: $0c
    ld bc, $b100                                  ; $5359: $01 $00 $b1
    ld [hl], l                                    ; $535c: $75
    ld [hl+], a                                   ; $535d: $22
    jr c, @-$35                                   ; $535e: $38 $c9

    inc b                                         ; $5360: $04
    nop                                           ; $5361: $00
    nop                                           ; $5362: $00
    rst $38                                       ; $5363: $ff
    ld a, a                                       ; $5364: $7f
    ld [de], a                                    ; $5365: $12
    stop                                          ; $5366: $10 $00
    jr nz, jr_0b6_536a                            ; $5368: $20 $00

jr_0b6_536a:
    nop                                           ; $536a: $00
    nop                                           ; $536b: $00
    jr nz, jr_0b6_5380                            ; $536c: $20 $12

    stop                                          ; $536e: $10 $00
    jr nz, jr_0b6_5372                            ; $5370: $20 $00

jr_0b6_5372:
    jr nz, jr_0b6_5374                            ; $5372: $20 $00

jr_0b6_5374:
    jr nz, jr_0b6_5388                            ; $5374: $20 $12

    stop                                          ; $5376: $10 $00
    jr nz, jr_0b6_537a                            ; $5378: $20 $00

jr_0b6_537a:
    jr nz, jr_0b6_5358                            ; $537a: $20 $dc

jr_0b6_537c:
    ld bc, $4651                                  ; $537c: $01 $51 $46
    db $ec                                        ; $537f: $ec

jr_0b6_5380:
    inc c                                         ; $5380: $0c
    nop                                           ; $5381: $00
    nop                                           ; $5382: $00
    dec l                                         ; $5383: $2d

jr_0b6_5384:
    dec b                                         ; $5384: $05
    nop                                           ; $5385: $00
    jr nz, jr_0b6_5318                            ; $5386: $20 $90

jr_0b6_5388:
    add hl, bc                                    ; $5388: $09
    and h                                         ; $5389: $a4
    inc d                                         ; $538a: $14
    ld a, a                                       ; $538b: $7f
    ld h, e                                       ; $538c: $63
    dec b                                         ; $538d: $05
    ld l, h                                       ; $538e: $6c
    xor $3d                                       ; $538f: $ee $3d
    nop                                           ; $5391: $00
    jr @+$77                                      ; $5392: $18 $75

    ld b, $ea                                     ; $5394: $06 $ea
    jr c, jr_0b6_5372                             ; $5396: $38 $da

    ld h, d                                       ; $5398: $62
    nop                                           ; $5399: $00
    nop                                           ; $539a: $00
    ld a, e                                       ; $539b: $7b
    ld h, a                                       ; $539c: $67
    ld [de], a                                    ; $539d: $12
    inc d                                         ; $539e: $14
    call nc, Call_000_0006                        ; $539f: $d4 $06 $00
    nop                                           ; $53a2: $00
    rst $38                                       ; $53a3: $ff
    ld a, a                                       ; $53a4: $7f
    nop                                           ; $53a5: $00
    jr nz, jr_0b6_537c                            ; $53a6: $20 $d4

    ld b, $00                                     ; $53a8: $06 $00
    jr nz, @+$01                                  ; $53aa: $20 $ff

    ld a, a                                       ; $53ac: $7f
    nop                                           ; $53ad: $00
    jr nz, jr_0b6_5384                            ; $53ae: $20 $d4

    ld b, $00                                     ; $53b0: $06 $00
    jr nz, @+$81                                  ; $53b2: $20 $7f

    ld h, e                                       ; $53b4: $63
    dec b                                         ; $53b5: $05
    ld l, h                                       ; $53b6: $6c
    xor $3d                                       ; $53b7: $ee $3d
    ld hl, $f300                                  ; $53b9: $21 $00 $f3
    add hl, de                                    ; $53bc: $19
    rst $38                                       ; $53bd: $ff
    ld a, a                                       ; $53be: $7f
    nop                                           ; $53bf: $00
    jr nz, jr_0b6_5347                            ; $53c0: $20 $85

    ld [$5f7f], sp                                ; $53c2: $08 $7f $5f
    nop                                           ; $53c5: $00
    inc l                                         ; $53c6: $2c
    dec b                                         ; $53c7: $05
    ld l, h                                       ; $53c8: $6c
    ld h, e                                       ; $53c9: $63
    inc c                                         ; $53ca: $0c
    bit 7, h                                      ; $53cb: $cb $7c
    db $f4                                        ; $53cd: $f4
    add hl, bc                                    ; $53ce: $09
    rst $28                                       ; $53cf: $ef
    dec a                                         ; $53d0: $3d
    nop                                           ; $53d1: $00
    nop                                           ; $53d2: $00
    ld e, a                                       ; $53d3: $5f
    inc bc                                        ; $53d4: $03
    inc sp                                        ; $53d5: $33
    inc d                                         ; $53d6: $14
    and [hl]                                      ; $53d7: $a6
    ld b, h                                       ; $53d8: $44
    nop                                           ; $53d9: $00
    nop                                           ; $53da: $00
    rst $38                                       ; $53db: $ff
    ld a, a                                       ; $53dc: $7f
    inc [hl]                                      ; $53dd: $34
    jr jr_0b6_53e0                                ; $53de: $18 $00

jr_0b6_53e0:
    jr nz, jr_0b6_53e2                            ; $53e0: $20 $00

jr_0b6_53e2:
    jr nz, @+$01                                  ; $53e2: $20 $ff

    ld a, a                                       ; $53e4: $7f
    inc [hl]                                      ; $53e5: $34
    jr jr_0b6_53e8                                ; $53e6: $18 $00

jr_0b6_53e8:
    jr nz, jr_0b6_53ea                            ; $53e8: $20 $00

jr_0b6_53ea:
    jr nz, jr_0b6_546b                            ; $53ea: $20 $7f

    ld e, a                                       ; $53ec: $5f
    nop                                           ; $53ed: $00
    inc l                                         ; $53ee: $2c
    dec b                                         ; $53ef: $05
    ld l, h                                       ; $53f0: $6c
    nop                                           ; $53f1: $00
    inc b                                         ; $53f2: $04
    ld a, c                                       ; $53f3: $79
    ld e, $ff                                     ; $53f4: $1e $ff
    ld a, a                                       ; $53f6: $7f
    dec [hl]                                      ; $53f7: $35
    jr jr_0b6_541a                                ; $53f8: $18 $20

    inc b                                         ; $53fa: $04
    sub e                                         ; $53fb: $93
    ld d, d                                       ; $53fc: $52
    dec hl                                        ; $53fd: $2b
    dec e                                         ; $53fe: $1d
    ld a, a                                       ; $53ff: $7f
    ld e, a                                       ; $5400: $5f
    nop                                           ; $5401: $00
    nop                                           ; $5402: $00
    ld l, h                                       ; $5403: $6c
    ld hl, $1a79                                  ; $5404: $21 $79 $1a
    add [hl]                                      ; $5407: $86
    ld [$0422], sp                                ; $5408: $08 $22 $04
    ld c, [hl]                                    ; $540b: $4e
    ld bc, $5002                                  ; $540c: $01 $02 $50
    dec [hl]                                      ; $540f: $35
    jr jr_0b6_5412                                ; $5410: $18 $00

jr_0b6_5412:
    nop                                           ; $5412: $00
    rst $38                                       ; $5413: $ff
    ld a, a                                       ; $5414: $7f
    dec [hl]                                      ; $5415: $35
    jr jr_0b6_546d                                ; $5416: $18 $55

    inc e                                         ; $5418: $1c
    nop                                           ; $5419: $00

jr_0b6_541a:
    nop                                           ; $541a: $00
    nop                                           ; $541b: $00
    jr nz, jr_0b6_5453                            ; $541c: $20 $35

    jr jr_0b6_5475                                ; $541e: $18 $55

    inc e                                         ; $5420: $1c
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00
    rst $38                                       ; $5423: $ff
    ld a, a                                       ; $5424: $7f
    nop                                           ; $5425: $00
    jr nz, jr_0b6_54a7                            ; $5426: $20 $7f

    ld e, a                                       ; $5428: $5f
    nop                                           ; $5429: $00
    inc b                                         ; $542a: $04
    rst $38                                       ; $542b: $ff
    ld a, a                                       ; $542c: $7f
    ld c, d                                       ; $542d: $4a
    add hl, hl                                    ; $542e: $29
    ld d, l                                       ; $542f: $55
    inc e                                         ; $5430: $1c
    ld b, d                                       ; $5431: $42
    ld [$5294], sp                                ; $5432: $08 $94 $52
    adc h                                         ; $5435: $8c
    dec [hl]                                      ; $5436: $35
    ld a, h                                       ; $5437: $7c
    ld [hl], e                                    ; $5438: $73
    ld hl, $5704                                  ; $5439: $21 $04 $57
    ld h, $c7                                     ; $543c: $26 $c7
    inc c                                         ; $543e: $0c
    dec a                                         ; $543f: $3d
    ccf                                           ; $5440: $3f
    nop                                           ; $5441: $00
    inc b                                         ; $5442: $04
    db $d3                                        ; $5443: $d3
    ld a, l                                       ; $5444: $7d
    sub $14                                       ; $5445: $d6 $14
    db $eb                                        ; $5447: $eb
    nop                                           ; $5448: $00
    nop                                           ; $5449: $00
    nop                                           ; $544a: $00
    xor h                                         ; $544b: $ac
    inc [hl]                                      ; $544c: $34
    rst $38                                       ; $544d: $ff
    ld a, a                                       ; $544e: $7f
    ld d, [hl]                                    ; $544f: $56
    inc e                                         ; $5450: $1c
    nop                                           ; $5451: $00
    nop                                           ; $5452: $00

jr_0b6_5453:
    rst $38                                       ; $5453: $ff

jr_0b6_5454:
    ld a, a                                       ; $5454: $7f
    nop                                           ; $5455: $00
    jr nz, jr_0b6_54ae                            ; $5456: $20 $56

    inc e                                         ; $5458: $1c
    nop                                           ; $5459: $00
    nop                                           ; $545a: $00
    rst $38                                       ; $545b: $ff
    ld a, a                                       ; $545c: $7f
    nop                                           ; $545d: $00
    jr nz, jr_0b6_54dc                            ; $545e: $20 $7c

    ld [hl], e                                    ; $5460: $73
    nop                                           ; $5461: $00
    nop                                           ; $5462: $00
    bit 7, h                                      ; $5463: $cb $7c
    ld d, [hl]                                    ; $5465: $56
    inc e                                         ; $5466: $1c
    ld a, b                                       ; $5467: $78
    jr nz, jr_0b6_548b                            ; $5468: $20 $21

    inc b                                         ; $546a: $04

jr_0b6_546b:
    or l                                          ; $546b: $b5
    ld d, d                                       ; $546c: $52

jr_0b6_546d:
    ld bc, $2948                                  ; $546d: $01 $48 $29
    ld hl, $0000                                  ; $5470: $21 $00 $00
    inc de                                        ; $5473: $13
    ld [hl+], a                                   ; $5474: $22

jr_0b6_5475:
    dec a                                         ; $5475: $3d
    ccf                                           ; $5476: $3f
    and a                                         ; $5477: $a7
    nop                                           ; $5478: $00
    ld bc, $7700                                  ; $5479: $01 $00 $77
    ld e, $cb                                     ; $547c: $1e $cb
    inc b                                         ; $547e: $04
    nop                                           ; $547f: $00
    inc a                                         ; $5480: $3c
    nop                                           ; $5481: $00
    nop                                           ; $5482: $00
    ld l, l                                       ; $5483: $6d
    ld e, l                                       ; $5484: $5d
    ld a, [de]                                    ; $5485: $1a
    dec bc                                        ; $5486: $0b
    ld a, b                                       ; $5487: $78
    jr nz, jr_0b6_548a                            ; $5488: $20 $00

jr_0b6_548a:
    nop                                           ; $548a: $00

jr_0b6_548b:
    rst $38                                       ; $548b: $ff
    ld a, a                                       ; $548c: $7f
    ld a, b                                       ; $548d: $78
    inc h                                         ; $548e: $24
    nop                                           ; $548f: $00
    jr nz, jr_0b6_5492                            ; $5490: $20 $00

jr_0b6_5492:
    nop                                           ; $5492: $00
    rst $38                                       ; $5493: $ff
    ld a, a                                       ; $5494: $7f
    ld a, b                                       ; $5495: $78
    jr nz, jr_0b6_5498                            ; $5496: $20 $00

jr_0b6_5498:
    jr nz, jr_0b6_549a                            ; $5498: $20 $00

jr_0b6_549a:
    nop                                           ; $549a: $00
    ld a, b                                       ; $549b: $78
    jr nz, jr_0b6_5454                            ; $549c: $20 $b6

    ld d, [hl]                                    ; $549e: $56
    ld [$211d], sp                                ; $549f: $08 $1d $21
    inc c                                         ; $54a2: $0c
    ld h, [hl]                                    ; $54a3: $66
    ld h, b                                       ; $54a4: $60
    ld l, e                                       ; $54a5: $6b
    dec l                                         ; $54a6: $2d

jr_0b6_54a7:
    rst $20                                       ; $54a7: $e7
    jr jr_0b6_54ec                                ; $54a8: $18 $42

    ld [$2676], sp                                ; $54aa: $08 $76 $26
    ld c, [hl]                                    ; $54ad: $4e

jr_0b6_54ae:
    add hl, bc                                    ; $54ae: $09
    inc e                                         ; $54af: $1c
    dec sp                                        ; $54b0: $3b
    ld b, e                                       ; $54b1: $43
    nop                                           ; $54b2: $00
    or c                                          ; $54b3: $b1
    dec c                                         ; $54b4: $0d
    jr c, @+$1c                                   ; $54b5: $38 $1a

    nop                                           ; $54b7: $00
    inc h                                         ; $54b8: $24
    nop                                           ; $54b9: $00
    nop                                           ; $54ba: $00
    ld a, c                                       ; $54bb: $79
    inc h                                         ; $54bc: $24
    rst $38                                       ; $54bd: $ff
    rlca                                          ; $54be: $07
    nop                                           ; $54bf: $00
    inc h                                         ; $54c0: $24
    nop                                           ; $54c1: $00
    nop                                           ; $54c2: $00
    ld a, c                                       ; $54c3: $79
    inc h                                         ; $54c4: $24
    rst $38                                       ; $54c5: $ff
    ld a, a                                       ; $54c6: $7f
    nop                                           ; $54c7: $00
    jr nz, jr_0b6_54ca                            ; $54c8: $20 $00

jr_0b6_54ca:
    nop                                           ; $54ca: $00
    rst $38                                       ; $54cb: $ff
    ld a, a                                       ; $54cc: $7f
    ld a, c                                       ; $54cd: $79
    inc h                                         ; $54ce: $24
    rst $20                                       ; $54cf: $e7
    jr jr_0b6_5515                                ; $54d0: $18 $43

    inc b                                         ; $54d2: $04
    ldh a, [$2d]                                  ; $54d3: $f0 $2d
    add hl, de                                    ; $54d5: $19
    ld e, e                                       ; $54d6: $5b
    ld a, c                                       ; $54d7: $79
    inc h                                         ; $54d8: $24
    ld hl, $7204                                  ; $54d9: $21 $04 $72

jr_0b6_54dc:
    ld c, [hl]                                    ; $54dc: $4e
    db $dd                                        ; $54dd: $dd
    ld a, a                                       ; $54de: $7f
    add hl, hl                                    ; $54df: $29
    dec h                                         ; $54e0: $25
    ld [hl+], a                                   ; $54e1: $22
    nop                                           ; $54e2: $00
    ld d, a                                       ; $54e3: $57
    ld [hl+], a                                   ; $54e4: $22
    xor b                                         ; $54e5: $a8
    nop                                           ; $54e6: $00
    inc l                                         ; $54e7: $2c
    dec b                                         ; $54e8: $05
    inc hl                                        ; $54e9: $23
    nop                                           ; $54ea: $00
    inc d                                         ; $54eb: $14

jr_0b6_54ec:
    ld e, $88                                     ; $54ec: $1e $88
    ld h, b                                       ; $54ee: $60
    sbc b                                         ; $54ef: $98
    ld a, [hl+]                                   ; $54f0: $2a
    nop                                           ; $54f1: $00
    nop                                           ; $54f2: $00
    ld a, c                                       ; $54f3: $79
    inc h                                         ; $54f4: $24
    ld a, [hl]                                    ; $54f5: $7e
    dec bc                                        ; $54f6: $0b
    ld bc, $0048                                  ; $54f7: $01 $48 $00
    nop                                           ; $54fa: $00
    ld a, c                                       ; $54fb: $79
    inc h                                         ; $54fc: $24

jr_0b6_54fd:
    rst $38                                       ; $54fd: $ff
    ld a, a                                       ; $54fe: $7f
    nop                                           ; $54ff: $00
    jr nz, jr_0b6_5502                            ; $5500: $20 $00

jr_0b6_5502:
    nop                                           ; $5502: $00
    ld a, c                                       ; $5503: $79
    inc h                                         ; $5504: $24
    rst $38                                       ; $5505: $ff
    ld a, a                                       ; $5506: $7f
    nop                                           ; $5507: $00
    jr nz, jr_0b6_552c                            ; $5508: $20 $22

    nop                                           ; $550a: $00
    ld e, l                                       ; $550b: $5d
    dec hl                                        ; $550c: $2b
    ld c, l                                       ; $550d: $4d
    ld de, $3422                                  ; $550e: $11 $22 $34
    ld b, e                                       ; $5511: $43
    nop                                           ; $5512: $00
    adc l                                         ; $5513: $8d
    dec d                                         ; $5514: $15

jr_0b6_5515:
    ld b, e                                       ; $5515: $43
    inc [hl]                                      ; $5516: $34
    halt                                          ; $5517: $76
    ld b, $00                                     ; $5518: $06 $00
    nop                                           ; $551a: $00
    ld [$3600], a                                 ; $551b: $ea $00 $36
    ld e, $64                                     ; $551e: $1e $64
    nop                                           ; $5520: $00
    jr nz, jr_0b6_5523                            ; $5521: $20 $00

jr_0b6_5523:
    ld a, b                                       ; $5523: $78
    ld bc, $1e34                                  ; $5524: $01 $34 $1e
    ld [hl], a                                    ; $5527: $77
    ld h, $00                                     ; $5528: $26 $00
    nop                                           ; $552a: $00
    ld a, c                                       ; $552b: $79

jr_0b6_552c:
    inc h                                         ; $552c: $24
    ld e, a                                       ; $552d: $5f
    rrca                                          ; $552e: $0f
    rst $38                                       ; $552f: $ff
    rra                                           ; $5530: $1f
    nop                                           ; $5531: $00
    nop                                           ; $5532: $00
    ld a, c                                       ; $5533: $79
    inc h                                         ; $5534: $24
    rst $38                                       ; $5535: $ff
    ld a, a                                       ; $5536: $7f
    nop                                           ; $5537: $00
    jr nz, jr_0b6_553a                            ; $5538: $20 $00

jr_0b6_553a:
    ld [$7fff], sp                                ; $553a: $08 $ff $7f
    ld a, [c]                                     ; $553d: $f2
    dec h                                         ; $553e: $25
    ld a, c                                       ; $553f: $79
    inc h                                         ; $5540: $24
    ld b, e                                       ; $5541: $43
    jr jr_0b6_54fd                                ; $5542: $18 $b9

    ld [hl-], a                                   ; $5544: $32
    ld c, h                                       ; $5545: $4c
    ld h, c                                       ; $5546: $61
    sbc c                                         ; $5547: $99
    ld a, [hl]                                    ; $5548: $7e
    ld [hl+], a                                   ; $5549: $22
    inc c                                         ; $554a: $0c
    rst $00                                       ; $554b: $c7
    ld l, b                                       ; $554c: $68
    jp nc, $b009                                  ; $554d: $d2 $09 $b0

    ld a, c                                       ; $5550: $79
    ld bc, $9100                                  ; $5551: $01 $00 $91
    add hl, bc                                    ; $5554: $09
    add a                                         ; $5555: $87
    nop                                           ; $5556: $00

jr_0b6_5557:
    dec d                                         ; $5557: $15
    ld d, $01                                     ; $5558: $16 $01
    nop                                           ; $555a: $00
    adc a                                         ; $555b: $8f
    dec d                                         ; $555c: $15
    ret                                           ; $555d: $c9


    inc b                                         ; $555e: $04
    dec [hl]                                      ; $555f: $35
    ld [hl+], a                                   ; $5560: $22
    ld [hl+], a                                   ; $5561: $22
    inc b                                         ; $5562: $04
    inc [hl]                                      ; $5563: $34
    ld [hl], d                                    ; $5564: $72
    rla                                           ; $5565: $17
    inc de                                        ; $5566: $13
    adc d                                         ; $5567: $8a
    inc h                                         ; $5568: $24
    nop                                           ; $5569: $00
    inc e                                         ; $556a: $1c
    sub c                                         ; $556b: $91
    dec b                                         ; $556c: $05
    rst $38                                       ; $556d: $ff
    ld a, a                                       ; $556e: $7f
    ld a, a                                       ; $556f: $7f
    inc de                                        ; $5570: $13
    nop                                           ; $5571: $00
    inc c                                         ; $5572: $0c
    db $db                                        ; $5573: $db
    ld [hl], $79                                  ; $5574: $36 $79
    inc h                                         ; $5576: $24
    rst $38                                       ; $5577: $ff
    ld a, a                                       ; $5578: $7f
    ld [hl+], a                                   ; $5579: $22
    inc e                                         ; $557a: $1c
    cp c                                          ; $557b: $b9
    ld a, [de]                                    ; $557c: $1a
    ld d, a                                       ; $557d: $57
    ld a, [hl]                                    ; $557e: $7e
    xor b                                         ; $557f: $a8
    ld [hl], h                                    ; $5580: $74
    ld b, d                                       ; $5581: $42

jr_0b6_5582:
    jr z, jr_0b6_5557                             ; $5582: $28 $d3

    add hl, bc                                    ; $5584: $09
    cp a                                          ; $5585: $bf
    inc bc                                        ; $5586: $03
    inc l                                         ; $5587: $2c
    ld h, l                                       ; $5588: $65
    nop                                           ; $5589: $00
    nop                                           ; $558a: $00
    ld l, [hl]                                    ; $558b: $6e
    dec c                                         ; $558c: $0d
    dec [hl]                                      ; $558d: $35
    ld [hl+], a                                   ; $558e: $22
    dec bc                                        ; $558f: $0b
    add hl, bc                                    ; $5590: $09
    nop                                           ; $5591: $00
    nop                                           ; $5592: $00
    ret nc                                        ; $5593: $d0

    ld de, $04ea                                  ; $5594: $11 $ea $04
    dec [hl]                                      ; $5597: $35
    ld e, $02                                     ; $5598: $1e $02
    inc c                                         ; $559a: $0c
    ld b, [hl]                                    ; $559b: $46
    ld l, h                                       ; $559c: $6c
    rst $38                                       ; $559d: $ff
    dec de                                        ; $559e: $1b
    ld c, d                                       ; $559f: $4a
    add hl, bc                                    ; $55a0: $09
    nop                                           ; $55a1: $00
    nop                                           ; $55a2: $00
    rst $38                                       ; $55a3: $ff
    ld a, a                                       ; $55a4: $7f
    sub b                                         ; $55a5: $90
    ld de, $2000                                  ; $55a6: $11 $00 $20
    nop                                           ; $55a9: $00
    db $10                                        ; $55aa: $10
    ld d, a                                       ; $55ab: $57
    ld e, $ff                                     ; $55ac: $1e $ff
    ld a, a                                       ; $55ae: $7f
    ret                                           ; $55af: $c9


    inc c                                         ; $55b0: $0c
    add l                                         ; $55b1: $85
    nop                                           ; $55b2: $00
    ld b, d                                       ; $55b3: $42
    jr nc, jr_0b6_5582                            ; $55b4: $30 $cc

    ld [hl], h                                    ; $55b6: $74
    di                                            ; $55b7: $f3
    ld de, $2400                                  ; $55b8: $11 $00 $24
    inc d                                         ; $55bb: $14
    ld a, [de]                                    ; $55bc: $1a
    bit 7, h                                      ; $55bd: $cb $7c
    jp hl                                         ; $55bf: $e9


    inc d                                         ; $55c0: $14
    ld c, h                                       ; $55c1: $4c
    ld de, $1e13                                  ; $55c2: $11 $13 $1e
    dec [hl]                                      ; $55c5: $35
    ld h, $77                                     ; $55c6: $26 $77
    ld h, $00                                     ; $55c8: $26 $00
    nop                                           ; $55ca: $00
    ld l, a                                       ; $55cb: $6f
    dec b                                         ; $55cc: $05
    dec [hl]                                      ; $55cd: $35
    ld e, $66                                     ; $55ce: $1e $66
    nop                                           ; $55d0: $00
    nop                                           ; $55d1: $00
    jr z, @+$61                                   ; $55d2: $28 $5f

    ld b, $2f                                     ; $55d4: $06 $2f
    add hl, bc                                    ; $55d6: $09
    rst $38                                       ; $55d7: $ff
    dec de                                        ; $55d8: $1b
    nop                                           ; $55d9: $00
    nop                                           ; $55da: $00
    rst $38                                       ; $55db: $ff
    ld a, a                                       ; $55dc: $7f
    ld a, b                                       ; $55dd: $78
    jr nz, jr_0b6_55e0                            ; $55de: $20 $00

jr_0b6_55e0:
    jr nz, jr_0b6_55e2                            ; $55e0: $20 $00

jr_0b6_55e2:
    nop                                           ; $55e2: $00
    rst $38                                       ; $55e3: $ff
    ld a, a                                       ; $55e4: $7f
    db $d3                                        ; $55e5: $d3
    add hl, bc                                    ; $55e6: $09
    nop                                           ; $55e7: $00
    jr nz, jr_0b6_562c                            ; $55e8: $20 $42

    inc e                                         ; $55ea: $1c
    add a                                         ; $55eb: $87
    ld e, h                                       ; $55ec: $5c
    pop de                                        ; $55ed: $d1
    dec b                                         ; $55ee: $05
    call z, Call_000_0078                         ; $55ef: $cc $78 $00
    inc h                                         ; $55f2: $24
    xor l                                         ; $55f3: $ad
    dec b                                         ; $55f4: $05
    xor c                                         ; $55f5: $a9
    ld [hl], b                                    ; $55f6: $70
    dec [hl]                                      ; $55f7: $35
    ld [hl+], a                                   ; $55f8: $22
    dec [hl]                                      ; $55f9: $35
    ld [hl+], a                                   ; $55fa: $22
    halt                                          ; $55fb: $76
    ld a, [hl+]                                   ; $55fc: $2a
    ld d, [hl]                                    ; $55fd: $56
    ld h, $77                                     ; $55fe: $26 $77
    ld l, $00                                     ; $5600: $2e $00
    nop                                           ; $5602: $00
    ld [hl], b                                    ; $5603: $70
    ld bc, $1a15                                  ; $5604: $01 $15 $1a
    ld h, h                                       ; $5607: $64
    nop                                           ; $5608: $00
    nop                                           ; $5609: $00
    ld [$0d96], sp                                ; $560a: $08 $96 $0d
    cp b                                          ; $560d: $b8
    ld a, [hl]                                    ; $560e: $7e
    ret z                                         ; $560f: $c8

    inc b                                         ; $5610: $04
    nop                                           ; $5611: $00
    nop                                           ; $5612: $00
    rst $38                                       ; $5613: $ff
    ld a, a                                       ; $5614: $7f
    ld a, c                                       ; $5615: $79
    inc h                                         ; $5616: $24
    nop                                           ; $5617: $00
    jr nz, jr_0b6_561a                            ; $5618: $20 $00

jr_0b6_561a:
    nop                                           ; $561a: $00
    rst $38                                       ; $561b: $ff
    ld a, a                                       ; $561c: $7f
    ld l, $01                                     ; $561d: $2e $01
    nop                                           ; $561f: $00
    jr nz, jr_0b6_5644                            ; $5620: $20 $22

    db $10                                        ; $5622: $10
    jp nc, $2409                                  ; $5623: $d2 $09 $24

    ld h, b                                       ; $5626: $60
    rst $18                                       ; $5627: $df
    inc bc                                        ; $5628: $03
    nop                                           ; $5629: $00
    inc h                                         ; $562a: $24
    inc d                                         ; $562b: $14

jr_0b6_562c:
    ld b, $05                                     ; $562c: $06 $05
    ld a, h                                       ; $562e: $7c
    dec [hl]                                      ; $562f: $35
    ld [hl+], a                                   ; $5630: $22
    ld d, l                                       ; $5631: $55
    ld h, $77                                     ; $5632: $26 $77
    ld l, $97                                     ; $5634: $2e $97
    ld [hl-], a                                   ; $5636: $32
    halt                                          ; $5637: $76
    ld a, [hl+]                                   ; $5638: $2a
    ld [hl+], a                                   ; $5639: $22
    nop                                           ; $563a: $00
    ld [hl], b                                    ; $563b: $70
    ld bc, $1614                                  ; $563c: $01 $14 $16
    ret                                           ; $563f: $c9


    nop                                           ; $5640: $00
    ld bc, $0408                                  ; $5641: $01 $08 $04

jr_0b6_5644:
    ld a, h                                       ; $5644: $7c
    ld l, e                                       ; $5645: $6b
    dec c                                         ; $5646: $0d
    inc de                                        ; $5647: $13
    ld a, d                                       ; $5648: $7a
    nop                                           ; $5649: $00
    nop                                           ; $564a: $00
    rst $38                                       ; $564b: $ff
    ld a, a                                       ; $564c: $7f
    ld a, c                                       ; $564d: $79
    inc h                                         ; $564e: $24
    nop                                           ; $564f: $00
    jr nz, jr_0b6_5652                            ; $5650: $20 $00

jr_0b6_5652:
    nop                                           ; $5652: $00
    rst $38                                       ; $5653: $ff
    ld a, a                                       ; $5654: $7f
    nop                                           ; $5655: $00
    jr nz, jr_0b6_568d                            ; $5656: $20 $35

    ld [hl+], a                                   ; $5658: $22
    ld [hl+], a                                   ; $5659: $22
    inc d                                         ; $565a: $14
    inc bc                                        ; $565b: $03
    ld a, h                                       ; $565c: $7c
    inc l                                         ; $565d: $2c
    dec a                                         ; $565e: $3d
    or b                                          ; $565f: $b0
    dec b                                         ; $5660: $05
    nop                                           ; $5661: $00
    inc h                                         ; $5662: $24
    or d                                          ; $5663: $b2
    add hl, bc                                    ; $5664: $09
    inc [hl]                                      ; $5665: $34
    ld [hl+], a                                   ; $5666: $22
    nop                                           ; $5667: $00
    ld l, h                                       ; $5668: $6c
    inc d                                         ; $5669: $14
    ld a, [de]                                    ; $566a: $1a
    ld d, [hl]                                    ; $566b: $56
    ld a, [hl+]                                   ; $566c: $2a
    ld [hl], a                                    ; $566d: $77
    ld l, $35                                     ; $566e: $2e $35
    ld [hl+], a                                   ; $5670: $22
    ld [hl+], a                                   ; $5671: $22
    nop                                           ; $5672: $00
    ld c, [hl]                                    ; $5673: $4e
    ld bc, $0dd3                                  ; $5674: $01 $d3 $0d
    sub d                                         ; $5677: $92
    ld bc, $0c01                                  ; $5678: $01 $01 $0c
    ld h, a                                       ; $567b: $67
    ld l, h                                       ; $567c: $6c
    dec a                                         ; $567d: $3d
    ld a, a                                       ; $567e: $7f
    sbc d                                         ; $567f: $9a
    ld d, $00                                     ; $5680: $16 $00
    nop                                           ; $5682: $00
    dec e                                         ; $5683: $1d
    dec sp                                        ; $5684: $3b
    nop                                           ; $5685: $00
    jr nz, @+$01                                  ; $5686: $20 $ff

    ld a, a                                       ; $5688: $7f
    nop                                           ; $5689: $00
    nop                                           ; $568a: $00
    rst $38                                       ; $568b: $ff
    ld a, a                                       ; $568c: $7f

jr_0b6_568d:
    nop                                           ; $568d: $00
    jr nz, jr_0b6_5690                            ; $568e: $20 $00

jr_0b6_5690:
    ld l, h                                       ; $5690: $6c
    ld [hl+], a                                   ; $5691: $22
    jr jr_0b6_5697                                ; $5692: $18 $03

    ld c, h                                       ; $5694: $4c
    sbc c                                         ; $5695: $99
    inc bc                                        ; $5696: $03

jr_0b6_5697:
    dec b                                         ; $5697: $05
    ld [hl], h                                    ; $5698: $74
    nop                                           ; $5699: $00
    inc l                                         ; $569a: $2c
    or d                                          ; $569b: $b2
    dec b                                         ; $569c: $05
    inc bc                                        ; $569d: $03
    ld [hl], b                                    ; $569e: $70
    inc d                                         ; $569f: $14
    ld a, [de]                                    ; $56a0: $1a
    or d                                          ; $56a1: $b2
    add hl, bc                                    ; $56a2: $09
    inc d                                         ; $56a3: $14
    ld a, [de]                                    ; $56a4: $1a
    di                                            ; $56a5: $f3
    dec d                                         ; $56a6: $15
    dec [hl]                                      ; $56a7: $35
    ld [hl+], a                                   ; $56a8: $22
    ld b, e                                       ; $56a9: $43
    nop                                           ; $56aa: $00
    inc c                                         ; $56ab: $0c
    ld bc, $0170                                  ; $56ac: $01 $70 $01
    or d                                          ; $56af: $b2
    ld bc, $0463                                  ; $56b0: $01 $63 $04
    or l                                          ; $56b3: $b5
    ld bc, $5402                                  ; $56b4: $01 $02 $54
    rst $38                                       ; $56b7: $ff
    rra                                           ; $56b8: $1f
    ld bc, $d300                                  ; $56b9: $01 $00 $d3
    add hl, bc                                    ; $56bc: $09
    nop                                           ; $56bd: $00
    jr nz, jr_0b6_5716                            ; $56be: $20 $56

    ld e, $00                                     ; $56c0: $1e $00
    nop                                           ; $56c2: $00
    rst $38                                       ; $56c3: $ff
    ld a, a                                       ; $56c4: $7f
    nop                                           ; $56c5: $00
    jr nz, @+$16                                  ; $56c6: $20 $14

    ld a, [de]                                    ; $56c8: $1a
    ld bc, $7d00                                  ; $56c9: $01 $00 $7d
    inc bc                                        ; $56cc: $03
    ld [bc], a                                    ; $56cd: $02
    ld h, h                                       ; $56ce: $64
    ld [hl+], a                                   ; $56cf: $22
    inc l                                         ; $56d0: $2c
    nop                                           ; $56d1: $00
    inc h                                         ; $56d2: $24
    or d                                          ; $56d3: $b2
    dec b                                         ; $56d4: $05
    nop                                           ; $56d5: $00
    ld d, h                                       ; $56d6: $54
    ld b, d                                       ; $56d7: $42
    nop                                           ; $56d8: $00
    sub c                                         ; $56d9: $91
    ld bc, $05b1                                  ; $56da: $01 $b1 $05
    sub c                                         ; $56dd: $91
    dec b                                         ; $56de: $05
    or d                                          ; $56df: $b2
    add hl, bc                                    ; $56e0: $09
    ld h, h                                       ; $56e1: $64
    nop                                           ; $56e2: $00
    sub c                                         ; $56e3: $91
    ld bc, $00c9                                  ; $56e4: $01 $c9 $00
    call nc, $0101                                ; $56e7: $d4 $01 $01
    ld [$012f], sp                                ; $56ea: $08 $2f $01
    add hl, de                                    ; $56ed: $19
    ld c, $ff                                     ; $56ee: $0e $ff
    daa                                           ; $56f0: $27
    nop                                           ; $56f1: $00
    nop                                           ; $56f2: $00
    nop                                           ; $56f3: $00
    jr nz, jr_0b6_5760                            ; $56f4: $20 $6a

    dec c                                         ; $56f6: $0d
    rst $38                                       ; $56f7: $ff
    daa                                           ; $56f8: $27
    nop                                           ; $56f9: $00
    nop                                           ; $56fa: $00
    rst $38                                       ; $56fb: $ff
    ld a, a                                       ; $56fc: $7f
    nop                                           ; $56fd: $00
    jr nz, jr_0b6_5742                            ; $56fe: $20 $42

    nop                                           ; $5700: $00
    and a                                         ; $5701: $a7
    ld [$033a], sp                                ; $5702: $08 $3a $03
    nop                                           ; $5705: $00
    ld l, b                                       ; $5706: $68
    rst $38                                       ; $5707: $ff
    ld a, a                                       ; $5708: $7f
    nop                                           ; $5709: $00
    inc e                                         ; $570a: $1c
    ld c, a                                       ; $570b: $4f
    ld bc, $0256                                  ; $570c: $01 $56 $02
    sub c                                         ; $570f: $91
    ld bc, $0191                                  ; $5710: $01 $91 $01
    nop                                           ; $5713: $00
    jr nz, jr_0b6_5780                            ; $5714: $20 $6a

jr_0b6_5716:
    dec c                                         ; $5716: $0d
    rst $38                                       ; $5717: $ff
    daa                                           ; $5718: $27
    ld b, e                                       ; $5719: $43
    nop                                           ; $571a: $00
    ld c, a                                       ; $571b: $4f
    ld bc, $00a8                                  ; $571c: $01 $a8 $00
    sub c                                         ; $571f: $91
    ld bc, $0400                                  ; $5720: $01 $00 $04
    ld [hl], b                                    ; $5723: $70
    ld bc, $1ef9                                  ; $5724: $01 $f9 $1e

jr_0b6_5727:
    ret                                           ; $5727: $c9


    nop                                           ; $5728: $00
    nop                                           ; $5729: $00

jr_0b6_572a:
    nop                                           ; $572a: $00
    nop                                           ; $572b: $00
    jr nz, jr_0b6_5727                            ; $572c: $20 $f9

    ld e, $c9                                     ; $572e: $1e $c9
    nop                                           ; $5730: $00
    nop                                           ; $5731: $00
    nop                                           ; $5732: $00
    nop                                           ; $5733: $00
    jr nz, jr_0b6_578c                            ; $5734: $20 $56

    ld [bc], a                                    ; $5736: $02
    sub c                                         ; $5737: $91
    ld bc, $0000                                  ; $5738: $01 $00 $00
    rst $38                                       ; $573b: $ff
    ld a, a                                       ; $573c: $7f
    inc bc                                        ; $573d: $03
    ld d, b                                       ; $573e: $50
    ld [hl+], a                                   ; $573f: $22
    jr z, jr_0b6_5742                             ; $5740: $28 $00

jr_0b6_5742:
    inc e                                         ; $5742: $1c
    ld [hl], b                                    ; $5743: $70
    ld bc, $6800                                  ; $5744: $01 $00 $68
    ld h, l                                       ; $5747: $65
    inc l                                         ; $5748: $2c
    sub c                                         ; $5749: $91
    ld bc, $2000                                  ; $574a: $01 $00 $20
    ld sp, hl                                     ; $574d: $f9
    ld e, $c9                                     ; $574e: $1e $c9
    nop                                           ; $5750: $00
    ld h, h                                       ; $5751: $64
    nop                                           ; $5752: $00
    sub c                                         ; $5753: $91
    ld bc, $00ea                                  ; $5754: $01 $ea $00
    or d                                          ; $5757: $b2
    ld bc, $0000                                  ; $5758: $01 $00 $00
    sub c                                         ; $575b: $91
    ld bc, $135e                                  ; $575c: $01 $5e $13
    ld b, [hl]                                    ; $575f: $46

jr_0b6_5760:
    nop                                           ; $5760: $00
    nop                                           ; $5761: $00
    nop                                           ; $5762: $00
    nop                                           ; $5763: $00
    jr nz, jr_0b6_57c4                            ; $5764: $20 $5e

    inc de                                        ; $5766: $13
    ld b, [hl]                                    ; $5767: $46
    nop                                           ; $5768: $00
    nop                                           ; $5769: $00
    nop                                           ; $576a: $00
    nop                                           ; $576b: $00
    jr nz, jr_0b6_576e                            ; $576c: $20 $00

jr_0b6_576e:
    ld l, b                                       ; $576e: $68
    ld h, l                                       ; $576f: $65
    inc l                                         ; $5770: $2c
    ld bc, $ff0c                                  ; $5771: $01 $0c $ff
    ld a, a                                       ; $5774: $7f
    pop de                                        ; $5775: $d1
    ld de, $5800                                  ; $5776: $11 $00 $58
    ld hl, $0c24                                  ; $5779: $21 $24 $0c
    ld bc, $5c00                                  ; $577c: $01 $00 $5c
    ld [hl], b                                    ; $577f: $70

jr_0b6_5780:
    ld bc, $0170                                  ; $5780: $01 $70 $01
    sub c                                         ; $5783: $91
    ld bc, $135e                                  ; $5784: $01 $5e $13
    ld b, [hl]                                    ; $5787: $46
    nop                                           ; $5788: $00
    add l                                         ; $5789: $85
    nop                                           ; $578a: $00
    dec l                                         ; $578b: $2d

jr_0b6_578c:
    ld bc, $00c9                                  ; $578c: $01 $c9 $00
    sub c                                         ; $578f: $91
    ld bc, $0000                                  ; $5790: $01 $00 $00
    adc [hl]                                      ; $5793: $8e
    nop                                           ; $5794: $00
    ld [hl], b                                    ; $5795: $70
    ld bc, $0044                                  ; $5796: $01 $44 $00
    nop                                           ; $5799: $00
    jr nz, jr_0b6_572a                            ; $579a: $20 $8e

    nop                                           ; $579c: $00
    ld [hl], b                                    ; $579d: $70
    ld bc, $0044                                  ; $579e: $01 $44 $00
    nop                                           ; $57a1: $00
    jr nz, jr_0b6_57b0                            ; $57a2: $20 $0c

    ld bc, $5c00                                  ; $57a4: $01 $00 $5c
    ld [hl], b                                    ; $57a7: $70
    ld bc, $0043                                  ; $57a8: $01 $43 $00
    ld e, h                                       ; $57ab: $5c
    inc bc                                        ; $57ac: $03
    nop                                           ; $57ad: $00
    inc a                                         ; $57ae: $3c
    rst $38                                       ; $57af: $ff

jr_0b6_57b0:
    ld a, a                                       ; $57b0: $7f
    ld bc, $900c                                  ; $57b1: $01 $0c $90
    ld bc, $03ff                                  ; $57b4: $01 $ff $03
    ld [$c900], a                                 ; $57b7: $ea $00 $c9
    nop                                           ; $57ba: $00
    dec l                                         ; $57bb: $2d
    ld bc, $010b                                  ; $57bc: $01 $0b $01
    ld c, a                                       ; $57bf: $4f
    ld bc, $0001                                  ; $57c0: $01 $01 $00
    xor b                                         ; $57c3: $a8

jr_0b6_57c4:
    nop                                           ; $57c4: $00
    inc c                                         ; $57c5: $0c
    ld bc, HeaderGlobalChecksum                   ; $57c6: $01 $4e $01
    nop                                           ; $57c9: $00
    inc b                                         ; $57ca: $04
    rst $38                                       ; $57cb: $ff
    ld a, a                                       ; $57cc: $7f
    jp hl                                         ; $57cd: $e9


    nop                                           ; $57ce: $00
    ld [hl], b                                    ; $57cf: $70
    ld bc, $2000                                  ; $57d0: $01 $00 $20
    rst $38                                       ; $57d3: $ff
    ld a, a                                       ; $57d4: $7f
    jp hl                                         ; $57d5: $e9


    nop                                           ; $57d6: $00
    ld [hl], b                                    ; $57d7: $70
    ld bc, $2000                                  ; $57d8: $01 $00 $20
    sub b                                         ; $57db: $90
    ld bc, $03ff                                  ; $57dc: $01 $ff $03
    ld [$0000], a                                 ; $57df: $ea $00 $00
    nop                                           ; $57e2: $00
    rst $38                                       ; $57e3: $ff
    ld a, a                                       ; $57e4: $7f
    nop                                           ; $57e5: $00
    inc h                                         ; $57e6: $24
    inc bc                                        ; $57e7: $03
    inc a                                         ; $57e8: $3c
    ld [bc], a                                    ; $57e9: $02
    nop                                           ; $57ea: $00
    ld a, e                                       ; $57eb: $7b
    dec bc                                        ; $57ec: $0b
    nop                                           ; $57ed: $00
    inc h                                         ; $57ee: $24
    and a                                         ; $57ef: $a7
    nop                                           ; $57f0: $00
    ld bc, $8600                                  ; $57f1: $01 $00 $86
    nop                                           ; $57f4: $00
    add a                                         ; $57f5: $87
    nop                                           ; $57f6: $00
    ld b, h                                       ; $57f7: $44
    nop                                           ; $57f8: $00
    ld bc, $a700                                  ; $57f9: $01 $00 $a7
    nop                                           ; $57fc: $00
    ld b, h                                       ; $57fd: $44
    nop                                           ; $57fe: $00
    ret                                           ; $57ff: $c9


    nop                                           ; $5800: $00
    nop                                           ; $5801: $00
    nop                                           ; $5802: $00
    rst $38                                       ; $5803: $ff
    ld a, a                                       ; $5804: $7f
    xor c                                         ; $5805: $a9
    nop                                           ; $5806: $00
    nop                                           ; $5807: $00
    jr nz, jr_0b6_580a                            ; $5808: $20 $00

jr_0b6_580a:
    jr nz, @+$01                                  ; $580a: $20 $ff

    ld a, a                                       ; $580c: $7f
    xor c                                         ; $580d: $a9
    nop                                           ; $580e: $00
    nop                                           ; $580f: $00
    jr nz, jr_0b6_5812                            ; $5810: $20 $00

jr_0b6_5812:
    jr nz, @+$7d                                  ; $5812: $20 $7b

    dec bc                                        ; $5814: $0b
    nop                                           ; $5815: $00
    inc h                                         ; $5816: $24
    and a                                         ; $5817: $a7
    nop                                           ; $5818: $00
    nop                                           ; $5819: $00
    nop                                           ; $581a: $00
    rst $38                                       ; $581b: $ff
    ld a, a                                       ; $581c: $7f
    nop                                           ; $581d: $00
    jr nz, @+$07                                  ; $581e: $20 $05

    inc a                                         ; $5820: $3c
    nop                                           ; $5821: $00
    nop                                           ; $5822: $00
    inc hl                                        ; $5823: $23
    jr nz, jr_0b6_5829                            ; $5824: $20 $03

    ld b, b                                       ; $5826: $40
    ld [bc], a                                    ; $5827: $02
    inc d                                         ; $5828: $14

jr_0b6_5829:
    nop                                           ; $5829: $00
    nop                                           ; $582a: $00
    rst $38                                       ; $582b: $ff
    ld a, a                                       ; $582c: $7f
    xor c                                         ; $582d: $a9
    nop                                           ; $582e: $00
    nop                                           ; $582f: $00
    jr nz, jr_0b6_5832                            ; $5830: $20 $00

jr_0b6_5832:
    nop                                           ; $5832: $00
    rst $38                                       ; $5833: $ff
    ld a, a                                       ; $5834: $7f
    xor c                                         ; $5835: $a9
    nop                                           ; $5836: $00
    nop                                           ; $5837: $00
    jr nz, jr_0b6_583a                            ; $5838: $20 $00

jr_0b6_583a:
    nop                                           ; $583a: $00
    rst $38                                       ; $583b: $ff
    ld a, a                                       ; $583c: $7f
    nop                                           ; $583d: $00
    jr nz, jr_0b6_5840                            ; $583e: $20 $00

jr_0b6_5840:
    jr nz, jr_0b6_5842                            ; $5840: $20 $00

jr_0b6_5842:
    jr nz, @+$01                                  ; $5842: $20 $ff

    ld a, a                                       ; $5844: $7f
    nop                                           ; $5845: $00
    jr nz, jr_0b6_5848                            ; $5846: $20 $00

jr_0b6_5848:
    jr nz, jr_0b6_584a                            ; $5848: $20 $00

jr_0b6_584a:
    jr nz, @+$25                                  ; $584a: $20 $23

    jr nz, jr_0b6_5851                            ; $584c: $20 $03

    ld b, b                                       ; $584e: $40

jr_0b6_584f:
    ld [bc], a                                    ; $584f: $02
    inc d                                         ; $5850: $14

jr_0b6_5851:
    nop                                           ; $5851: $00
    nop                                           ; $5852: $00
    rst $38                                       ; $5853: $ff
    ld a, a                                       ; $5854: $7f
    nop                                           ; $5855: $00
    jr nz, jr_0b6_585a                            ; $5856: $20 $02

    inc d                                         ; $5858: $14
    nop                                           ; $5859: $00

jr_0b6_585a:
    nop                                           ; $585a: $00
    rst $38                                       ; $585b: $ff
    ld a, a                                       ; $585c: $7f
    nop                                           ; $585d: $00
    jr nz, jr_0b6_5862                            ; $585e: $20 $02

    inc d                                         ; $5860: $14
    nop                                           ; $5861: $00

jr_0b6_5862:
    nop                                           ; $5862: $00
    nop                                           ; $5863: $00
    jr nz, jr_0b6_5866                            ; $5864: $20 $00

jr_0b6_5866:
    jr nz, jr_0b6_5868                            ; $5866: $20 $00

jr_0b6_5868:
    jr nz, jr_0b6_586a                            ; $5868: $20 $00

jr_0b6_586a:
    nop                                           ; $586a: $00
    nop                                           ; $586b: $00
    jr nz, jr_0b6_586e                            ; $586c: $20 $00

jr_0b6_586e:
    jr nz, jr_0b6_5870                            ; $586e: $20 $00

jr_0b6_5870:
    jr nz, jr_0b6_5872                            ; $5870: $20 $00

jr_0b6_5872:
    nop                                           ; $5872: $00
    nop                                           ; $5873: $00
    jr nz, jr_0b6_5876                            ; $5874: $20 $00

jr_0b6_5876:
    jr nz, jr_0b6_5878                            ; $5876: $20 $00

jr_0b6_5878:
    jr nz, jr_0b6_587a                            ; $5878: $20 $00

jr_0b6_587a:
    jr nz, jr_0b6_587c                            ; $587a: $20 $00

jr_0b6_587c:
    jr nz, jr_0b6_587e                            ; $587c: $20 $00

jr_0b6_587e:
    jr nz, jr_0b6_5880                            ; $587e: $20 $00

jr_0b6_5880:
    jr nz, jr_0b6_5882                            ; $5880: $20 $00

jr_0b6_5882:
    jr nz, jr_0b6_5884                            ; $5882: $20 $00

jr_0b6_5884:
    jr nz, jr_0b6_5886                            ; $5884: $20 $00

jr_0b6_5886:
    jr nz, jr_0b6_58b2                            ; $5886: $20 $2a

    nop                                           ; $5888: $00
    nop                                           ; $5889: $00
    jr nz, jr_0b6_588c                            ; $588a: $20 $00

jr_0b6_588c:
    jr nz, jr_0b6_588e                            ; $588c: $20 $00

jr_0b6_588e:
    jr nz, jr_0b6_58ba                            ; $588e: $20 $2a

    nop                                           ; $5890: $00
    nop                                           ; $5891: $00
    jr nz, jr_0b6_5894                            ; $5892: $20 $00

jr_0b6_5894:
    jr nz, jr_0b6_5896                            ; $5894: $20 $00

jr_0b6_5896:
    jr nz, jr_0b6_58c2                            ; $5896: $20 $2a

    nop                                           ; $5898: $00
    nop                                           ; $5899: $00
    nop                                           ; $589a: $00
    rst $38                                       ; $589b: $ff
    ld a, a                                       ; $589c: $7f
    nop                                           ; $589d: $00
    jr nz, @-$5f                                  ; $589e: $20 $9f

    ld a, [hl+]                                   ; $58a0: $2a
    nop                                           ; $58a1: $00
    jr nz, @+$01                                  ; $58a2: $20 $ff

    ld a, a                                       ; $58a4: $7f
    nop                                           ; $58a5: $00
    jr nz, @-$5f                                  ; $58a6: $20 $9f

    ld a, [hl+]                                   ; $58a8: $2a
    nop                                           ; $58a9: $00
    jr nz, @+$01                                  ; $58aa: $20 $ff

    ld a, a                                       ; $58ac: $7f
    nop                                           ; $58ad: $00
    jr nz, jr_0b6_584f                            ; $58ae: $20 $9f

    ld a, [hl+]                                   ; $58b0: $2a
    nop                                           ; $58b1: $00

jr_0b6_58b2:
    jr nz, @+$01                                  ; $58b2: $20 $ff

    ld a, a                                       ; $58b4: $7f
    nop                                           ; $58b5: $00
    jr nz, @-$5f                                  ; $58b6: $20 $9f

    ld a, [hl+]                                   ; $58b8: $2a
    nop                                           ; $58b9: $00

jr_0b6_58ba:
    jr nz, jr_0b6_58bc                            ; $58ba: $20 $00

jr_0b6_58bc:
    jr nz, jr_0b6_58be                            ; $58bc: $20 $00

jr_0b6_58be:
    jr nz, jr_0b6_58ea                            ; $58be: $20 $2a

    nop                                           ; $58c0: $00
    nop                                           ; $58c1: $00

jr_0b6_58c2:
    jr nz, jr_0b6_58c4                            ; $58c2: $20 $00

jr_0b6_58c4:
    jr nz, jr_0b6_58c6                            ; $58c4: $20 $00

jr_0b6_58c6:
    jr nz, jr_0b6_58f2                            ; $58c6: $20 $2a

    nop                                           ; $58c8: $00
    nop                                           ; $58c9: $00
    jr nz, jr_0b6_58cc                            ; $58ca: $20 $00

jr_0b6_58cc:
    jr nz, jr_0b6_58ce                            ; $58cc: $20 $00

jr_0b6_58ce:
    jr nz, jr_0b6_58fa                            ; $58ce: $20 $2a

    nop                                           ; $58d0: $00
    nop                                           ; $58d1: $00
    nop                                           ; $58d2: $00
    dec de                                        ; $58d3: $1b
    nop                                           ; $58d4: $00
    nop                                           ; $58d5: $00
    jr nz, jr_0b6_58dd                            ; $58d6: $20 $05

    nop                                           ; $58d8: $00
    nop                                           ; $58d9: $00
    jr nz, @+$1d                                  ; $58da: $20 $1b

    nop                                           ; $58dc: $00

jr_0b6_58dd:
    dec b                                         ; $58dd: $05
    nop                                           ; $58de: $00
    ld a, h                                       ; $58df: $7c
    inc b                                         ; $58e0: $04
    nop                                           ; $58e1: $00
    jr nz, @+$1d                                  ; $58e2: $20 $1b

    nop                                           ; $58e4: $00
    dec b                                         ; $58e5: $05
    nop                                           ; $58e6: $00
    ld a, h                                       ; $58e7: $7c
    inc b                                         ; $58e8: $04
    nop                                           ; $58e9: $00

jr_0b6_58ea:
    jr nz, jr_0b6_5907                            ; $58ea: $20 $1b

    nop                                           ; $58ec: $00
    dec b                                         ; $58ed: $05
    nop                                           ; $58ee: $00
    ld a, h                                       ; $58ef: $7c
    inc b                                         ; $58f0: $04
    nop                                           ; $58f1: $00

jr_0b6_58f2:
    jr nz, jr_0b6_58f4                            ; $58f2: $20 $00

jr_0b6_58f4:
    jr nz, jr_0b6_58f6                            ; $58f4: $20 $00

jr_0b6_58f6:
    jr nz, jr_0b6_5922                            ; $58f6: $20 $2a

    nop                                           ; $58f8: $00
    nop                                           ; $58f9: $00

jr_0b6_58fa:
    jr nz, jr_0b6_58fc                            ; $58fa: $20 $00

jr_0b6_58fc:
    jr nz, jr_0b6_58fe                            ; $58fc: $20 $00

jr_0b6_58fe:
    jr nz, jr_0b6_592a                            ; $58fe: $20 $2a

    nop                                           ; $5900: $00
    nop                                           ; $5901: $00
    nop                                           ; $5902: $00
    nop                                           ; $5903: $00
    jr nz, jr_0b6_590b                            ; $5904: $20 $05

    nop                                           ; $5906: $00

jr_0b6_5907:
    ld a, [hl+]                                   ; $5907: $2a
    nop                                           ; $5908: $00
    dec de                                        ; $5909: $1b
    nop                                           ; $590a: $00

jr_0b6_590b:
    cp [hl]                                       ; $590b: $be
    ld de, $267f                                  ; $590c: $11 $7f $26
    rra                                           ; $590f: $1f
    ld d, $00                                     ; $5910: $16 $00
    jr nz, jr_0b6_594f                            ; $5912: $20 $3b

    nop                                           ; $5914: $00
    rst $38                                       ; $5915: $ff
    dec d                                         ; $5916: $15
    dec b                                         ; $5917: $05
    nop                                           ; $5918: $00
    nop                                           ; $5919: $00
    jr nz, jr_0b6_5957                            ; $591a: $20 $3b

    nop                                           ; $591c: $00
    rst $38                                       ; $591d: $ff
    dec d                                         ; $591e: $15
    dec b                                         ; $591f: $05
    nop                                           ; $5920: $00

Jump_0b6_5921:
    nop                                           ; $5921: $00

jr_0b6_5922:
    jr nz, jr_0b6_595f                            ; $5922: $20 $3b

    nop                                           ; $5924: $00
    rst $38                                       ; $5925: $ff
    dec d                                         ; $5926: $15
    dec b                                         ; $5927: $05
    nop                                           ; $5928: $00
    nop                                           ; $5929: $00

jr_0b6_592a:
    jr nz, jr_0b6_592c                            ; $592a: $20 $00

jr_0b6_592c:
    jr nz, @+$07                                  ; $592c: $20 $05

    nop                                           ; $592e: $00
    ld a, [hl+]                                   ; $592f: $2a
    nop                                           ; $5930: $00
    nop                                           ; $5931: $00
    jr nz, jr_0b6_5934                            ; $5932: $20 $00

jr_0b6_5934:
    jr nz, jr_0b6_593b                            ; $5934: $20 $05

    nop                                           ; $5936: $00
    ld a, [hl+]                                   ; $5937: $2a
    nop                                           ; $5938: $00
    ld [bc], a                                    ; $5939: $02
    nop                                           ; $593a: $00

jr_0b6_593b:
    rst $38                                       ; $593b: $ff
    ld a, a                                       ; $593c: $7f
    dec de                                        ; $593d: $1b
    nop                                           ; $593e: $00
    nop                                           ; $593f: $00
    jr nz, @+$7f                                  ; $5940: $20 $7d

    dec d                                         ; $5942: $15
    ld e, a                                       ; $5943: $5f
    ld e, $fe                                     ; $5944: $1e $fe
    dec e                                         ; $5946: $1d
    sbc a                                         ; $5947: $9f
    ld l, $05                                     ; $5948: $2e $05
    nop                                           ; $594a: $00
    sbc $15                                       ; $594b: $de $15
    jr @+$06                                      ; $594d: $18 $04

jr_0b6_594f:
    sbc a                                         ; $594f: $9f
    ld a, [hl+]                                   ; $5950: $2a
    nop                                           ; $5951: $00
    jr nz, jr_0b6_5959                            ; $5952: $20 $05

    nop                                           ; $5954: $00
    jr @+$06                                      ; $5955: $18 $04

jr_0b6_5957:
    sbc a                                         ; $5957: $9f
    ld a, [hl+]                                   ; $5958: $2a

jr_0b6_5959:
    nop                                           ; $5959: $00
    jr nz, jr_0b6_5961                            ; $595a: $20 $05

    nop                                           ; $595c: $00
    jr @+$06                                      ; $595d: $18 $04

jr_0b6_595f:
    sbc a                                         ; $595f: $9f
    ld a, [hl+]                                   ; $5960: $2a

jr_0b6_5961:
    nop                                           ; $5961: $00
    jr nz, @+$01                                  ; $5962: $20 $ff

    ld a, a                                       ; $5964: $7f
    dec de                                        ; $5965: $1b
    nop                                           ; $5966: $00
    nop                                           ; $5967: $00
    jr nz, jr_0b6_596a                            ; $5968: $20 $00

jr_0b6_596a:
    jr nz, @+$01                                  ; $596a: $20 $ff

    ld a, a                                       ; $596c: $7f
    dec de                                        ; $596d: $1b
    nop                                           ; $596e: $00
    nop                                           ; $596f: $00
    jr nz, jr_0b6_5973                            ; $5970: $20 $01

    nop                                           ; $5972: $00

jr_0b6_5973:
    rst $38                                       ; $5973: $ff
    ld a, a                                       ; $5974: $7f
    cp d                                          ; $5975: $ba
    inc b                                         ; $5976: $04
    nop                                           ; $5977: $00
    jr nz, jr_0b6_5997                            ; $5978: $20 $1d

    ld de, $2e9f                                  ; $597a: $11 $9f $2e
    cp l                                          ; $597d: $bd
    add hl, de                                    ; $597e: $19
    ld e, l                                       ; $597f: $5d
    dec d                                         ; $5980: $15
    inc e                                         ; $5981: $1c
    dec c                                         ; $5982: $0d
    ld e, $1a                                     ; $5983: $1e $1a
    sbc a                                         ; $5985: $9f
    ld a, [hl+]                                   ; $5986: $2a
    sbc l                                         ; $5987: $9d
    dec d                                         ; $5988: $15
    nop                                           ; $5989: $00
    jr nz, @+$17                                  ; $598a: $20 $15

    inc b                                         ; $598c: $04
    dec b                                         ; $598d: $05
    nop                                           ; $598e: $00
    dec de                                        ; $598f: $1b
    nop                                           ; $5990: $00
    nop                                           ; $5991: $00
    jr nz, @+$17                                  ; $5992: $20 $15

    inc b                                         ; $5994: $04
    dec b                                         ; $5995: $05
    nop                                           ; $5996: $00

jr_0b6_5997:
    dec de                                        ; $5997: $1b
    nop                                           ; $5998: $00
    nop                                           ; $5999: $00
    jr nz, @+$01                                  ; $599a: $20 $ff

    ld a, a                                       ; $599c: $7f
    cp d                                          ; $599d: $ba
    inc b                                         ; $599e: $04
    nop                                           ; $599f: $00
    jr nz, jr_0b6_59a2                            ; $59a0: $20 $00

jr_0b6_59a2:
    nop                                           ; $59a2: $00
    rst $38                                       ; $59a3: $ff
    ld a, a                                       ; $59a4: $7f
    nop                                           ; $59a5: $00
    jr nz, jr_0b6_59a8                            ; $59a6: $20 $00

jr_0b6_59a8:
    jr nz, jr_0b6_59ab                            ; $59a8: $20 $01

    nop                                           ; $59aa: $00

jr_0b6_59ab:
    cp a                                          ; $59ab: $bf
    ld l, a                                       ; $59ac: $6f
    rla                                           ; $59ad: $17
    nop                                           ; $59ae: $00
    rra                                           ; $59af: $1f
    ld d, $3c                                     ; $59b0: $16 $3c
    ld de, $223d                                  ; $59b2: $11 $3d $22
    cp l                                          ; $59b5: $bd
    dec e                                         ; $59b6: $1d
    ld a, a                                       ; $59b7: $7f
    ld l, $dc                                     ; $59b8: $2e $dc
    inc c                                         ; $59ba: $0c
    sbc a                                         ; $59bb: $9f
    ld h, $3d                                     ; $59bc: $26 $3d
    ld de, $199d                                  ; $59be: $11 $9d $19
    inc bc                                        ; $59c1: $03
    nop                                           ; $59c2: $00
    db $dd                                        ; $59c3: $dd
    ld [$2000], sp                                ; $59c4: $08 $00 $20
    ccf                                           ; $59c7: $3f
    ld a, [de]                                    ; $59c8: $1a
    nop                                           ; $59c9: $00
    jr nz, @-$21                                  ; $59ca: $20 $dd

    ld [$2000], sp                                ; $59cc: $08 $00 $20
    ccf                                           ; $59cf: $3f
    ld a, [de]                                    ; $59d0: $1a
    nop                                           ; $59d1: $00

jr_0b6_59d2:
    jr nz, @-$3f                                  ; $59d2: $20 $bf

    ld l, a                                       ; $59d4: $6f
    rla                                           ; $59d5: $17
    nop                                           ; $59d6: $00
    rra                                           ; $59d7: $1f
    ld d, $00                                     ; $59d8: $16 $00
    nop                                           ; $59da: $00
    rst $38                                       ; $59db: $ff
    ld a, a                                       ; $59dc: $7f
    nop                                           ; $59dd: $00
    jr nz, jr_0b6_59ff                            ; $59de: $20 $1f

    ld d, $03                                     ; $59e0: $16 $03
    nop                                           ; $59e2: $00
    ld e, l                                       ; $59e3: $5d
    dec d                                         ; $59e4: $15
    ld c, a                                       ; $59e5: $4f
    nop                                           ; $59e6: $00
    ld a, a                                       ; $59e7: $7f
    ld h, $14                                     ; $59e8: $26 $14
    nop                                           ; $59ea: $00
    inc e                                         ; $59eb: $1c
    ld de, $1dbc                                  ; $59ec: $11 $bc $1d
    cp b                                          ; $59ef: $b8
    ld [$0015], sp                                ; $59f0: $08 $15 $00
    db $fd                                        ; $59f3: $fd
    ld hl, $0cdb                                  ; $59f4: $21 $db $0c
    cp a                                          ; $59f7: $bf
    ld l, $01                                     ; $59f8: $2e $01
    db $10                                        ; $59fa: $10
    adc $39                                       ; $59fb: $ce $39
    rst $38                                       ; $59fd: $ff
    ld a, a                                       ; $59fe: $7f

jr_0b6_59ff:
    dec a                                         ; $59ff: $3d
    dec c                                         ; $5a00: $0d
    nop                                           ; $5a01: $00
    jr nz, jr_0b6_59d2                            ; $5a02: $20 $ce

    add hl, sp                                    ; $5a04: $39
    rst $38                                       ; $5a05: $ff
    ld a, a                                       ; $5a06: $7f
    dec a                                         ; $5a07: $3d
    dec c                                         ; $5a08: $0d
    nop                                           ; $5a09: $00
    jr nz, jr_0b6_5a69                            ; $5a0a: $20 $5d

    dec d                                         ; $5a0c: $15
    ld c, a                                       ; $5a0d: $4f
    nop                                           ; $5a0e: $00
    ld a, a                                       ; $5a0f: $7f
    ld h, $00                                     ; $5a10: $26 $00
    nop                                           ; $5a12: $00
    jp z, $ff7d                                   ; $5a13: $ca $7d $ff

    ld a, a                                       ; $5a16: $7f
    nop                                           ; $5a17: $00
    jr nz, @+$07                                  ; $5a18: $20 $05

    nop                                           ; $5a1a: $00
    xor e                                         ; $5a1b: $ab
    ld l, l                                       ; $5a1c: $6d
    sub d                                         ; $5a1d: $92
    ld [$0cfd], sp                                ; $5a1e: $08 $fd $0c
    dec b                                         ; $5a21: $05
    nop                                           ; $5a22: $00
    ld a, [$530c]                                 ; $5a23: $fa $0c $53
    nop                                           ; $5a26: $00
    db $dd                                        ; $5a27: $dd
    ld hl, $0005                                  ; $5a28: $21 $05 $00
    ld a, [$130c]                                 ; $5a2b: $fa $0c $13
    nop                                           ; $5a2e: $00
    ld a, [hl]                                    ; $5a2f: $7e
    ld a, [hl+]                                   ; $5a30: $2a
    inc b                                         ; $5a31: $04
    nop                                           ; $5a32: $00
    ld hl, sp+$5e                                 ; $5a33: $f8 $5e
    dec de                                        ; $5a35: $1b
    nop                                           ; $5a36: $00
    sbc [hl]                                      ; $5a37: $9e
    ld de, $0000                                  ; $5a38: $11 $00 $00
    nop                                           ; $5a3b: $00
    jr nz, jr_0b6_5a59                            ; $5a3c: $20 $1b

    nop                                           ; $5a3e: $00
    sbc [hl]                                      ; $5a3f: $9e
    ld de, $0000                                  ; $5a40: $11 $00 $00
    rst $38                                       ; $5a43: $ff
    ld a, a                                       ; $5a44: $7f

jr_0b6_5a45:
    nop                                           ; $5a45: $00
    jr nz, jr_0b6_5a45                            ; $5a46: $20 $fd

    inc c                                         ; $5a48: $0c
    nop                                           ; $5a49: $00
    nop                                           ; $5a4a: $00
    jp z, $ff79                                   ; $5a4b: $ca $79 $ff

Call_0b6_5a4e:
    ld a, a                                       ; $5a4e: $7f
    ld [$2749], sp                                ; $5a4f: $08 $49 $27
    inc b                                         ; $5a52: $04
    add hl, sp                                    ; $5a53: $39
    inc b                                         ; $5a54: $04
    ld c, d                                       ; $5a55: $4a
    ld e, c                                       ; $5a56: $59
    cp l                                          ; $5a57: $bd
    dec e                                         ; $5a58: $1d

jr_0b6_5a59:
    dec b                                         ; $5a59: $05
    nop                                           ; $5a5a: $00
    ld [hl-], a                                   ; $5a5b: $32
    nop                                           ; $5a5c: $00
    cp b                                          ; $5a5d: $b8
    ld [$157f], sp                                ; $5a5e: $08 $7f $15
    dec b                                         ; $5a61: $05
    nop                                           ; $5a62: $00
    ei                                            ; $5a63: $fb
    inc c                                         ; $5a64: $0c
    cp a                                          ; $5a65: $bf
    ld l, $11                                     ; $5a66: $2e $11
    nop                                           ; $5a68: $00

jr_0b6_5a69:
    dec b                                         ; $5a69: $05
    nop                                           ; $5a6a: $00
    dec sp                                        ; $5a6b: $3b
    nop                                           ; $5a6c: $00
    ld e, [hl]                                    ; $5a6d: $5e
    ld h, $5e                                     ; $5a6e: $26 $5e
    add hl, bc                                    ; $5a70: $09
    nop                                           ; $5a71: $00
    nop                                           ; $5a72: $00
    rst $38                                       ; $5a73: $ff
    ld a, a                                       ; $5a74: $7f
    nop                                           ; $5a75: $00
    jr nz, jr_0b6_5ad6                            ; $5a76: $20 $5e

    add hl, bc                                    ; $5a78: $09
    nop                                           ; $5a79: $00
    nop                                           ; $5a7a: $00
    rst $38                                       ; $5a7b: $ff
    ld a, a                                       ; $5a7c: $7f
    nop                                           ; $5a7d: $00
    jr nz, @-$41                                  ; $5a7e: $20 $bd

    dec e                                         ; $5a80: $1d
    nop                                           ; $5a81: $00
    nop                                           ; $5a82: $00
    ret                                           ; $5a83: $c9


    ld a, c                                       ; $5a84: $79
    cp h                                          ; $5a85: $bc
    ld [$0005], sp                                ; $5a86: $08 $05 $00
    ld c, e                                       ; $5a89: $4b
    ld [$656a], sp                                ; $5a8a: $08 $6a $65
    sbc b                                         ; $5a8d: $98
    ld [$19b9], sp                                ; $5a8e: $08 $b9 $19
    dec b                                         ; $5a91: $05
    nop                                           ; $5a92: $00
    ld d, $11                                     ; $5a93: $16 $11
    ld a, [bc]                                    ; $5a95: $0a
    nop                                           ; $5a96: $00
    sbc a                                         ; $5a97: $9f
    add hl, de                                    ; $5a98: $19
    dec b                                         ; $5a99: $05
    nop                                           ; $5a9a: $00
    dec d                                         ; $5a9b: $15
    nop                                           ; $5a9c: $00
    inc e                                         ; $5a9d: $1c
    dec c                                         ; $5a9e: $0d
    push de                                       ; $5a9f: $d5
    ld [$0009], sp                                ; $5aa0: $08 $09 $00
    inc a                                         ; $5aa3: $3c
    add hl, bc                                    ; $5aa4: $09
    ld c, b                                       ; $5aa5: $48
    ld d, l                                       ; $5aa6: $55
    ld e, [hl]                                    ; $5aa7: $5e
    ld h, $00                                     ; $5aa8: $26 $00
    nop                                           ; $5aaa: $00
    rst $38                                       ; $5aab: $ff
    ld a, a                                       ; $5aac: $7f
    adc c                                         ; $5aad: $89
    ld l, l                                       ; $5aae: $6d
    nop                                           ; $5aaf: $00
    jr nz, jr_0b6_5ab2                            ; $5ab0: $20 $00

jr_0b6_5ab2:
    nop                                           ; $5ab2: $00
    jp z, $ff79                                   ; $5ab3: $ca $79 $ff

    ld a, a                                       ; $5ab6: $7f
    nop                                           ; $5ab7: $00
    jr nz, jr_0b6_5abf                            ; $5ab8: $20 $05

    nop                                           ; $5aba: $00
    jp z, Jump_0b6_5c79                           ; $5abb: $ca $79 $5c

    ld a, [hl+]                                   ; $5abe: $2a

jr_0b6_5abf:
    adc d                                         ; $5abf: $8a
    jr jr_0b6_5aec                                ; $5ac0: $18 $2a

    nop                                           ; $5ac2: $00
    xor d                                         ; $5ac3: $aa
    ld [hl], c                                    ; $5ac4: $71
    jp z, $2b28                                   ; $5ac5: $ca $28 $2b

    ld c, l                                       ; $5ac8: $4d
    ld a, [hl+]                                   ; $5ac9: $2a
    nop                                           ; $5aca: $00
    rst $18                                       ; $5acb: $df
    ld l, $1b                                     ; $5acc: $2e $1b
    nop                                           ; $5ace: $00
    cp e                                          ; $5acf: $bb
    db $10                                        ; $5ad0: $10
    dec b                                         ; $5ad1: $05
    nop                                           ; $5ad2: $00
    ld [hl], $00                                  ; $5ad3: $36 $00
    dec de                                        ; $5ad5: $1b

jr_0b6_5ad6:
    dec c                                         ; $5ad6: $0d
    ld c, e                                       ; $5ad7: $4b
    nop                                           ; $5ad8: $00
    ld b, $00                                     ; $5ad9: $06 $00
    adc d                                         ; $5adb: $8a
    ld [hl], c                                    ; $5adc: $71
    ld e, l                                       ; $5add: $5d
    ld de, $223d                                  ; $5ade: $11 $3d $22
    nop                                           ; $5ae1: $00
    nop                                           ; $5ae2: $00
    xor d                                         ; $5ae3: $aa
    ld a, c                                       ; $5ae4: $79
    rst $38                                       ; $5ae5: $ff
    ld a, a                                       ; $5ae6: $7f
    nop                                           ; $5ae7: $00
    jr nz, jr_0b6_5aea                            ; $5ae8: $20 $00

jr_0b6_5aea:
    nop                                           ; $5aea: $00
    xor d                                         ; $5aeb: $aa

jr_0b6_5aec:
    ld a, c                                       ; $5aec: $79
    rst $38                                       ; $5aed: $ff
    ld a, a                                       ; $5aee: $7f
    dec hl                                        ; $5aef: $2b
    ld c, l                                       ; $5af0: $4d
    ld a, [bc]                                    ; $5af1: $0a
    ld b, l                                       ; $5af2: $45
    xor d                                         ; $5af3: $aa
    ld [hl], l                                    ; $5af4: $75
    xor d                                         ; $5af5: $aa
    ld a, c                                       ; $5af6: $79
    dec hl                                        ; $5af7: $2b
    ld c, l                                       ; $5af8: $4d
    inc l                                         ; $5af9: $2c
    inc b                                         ; $5afa: $04
    db $dd                                        ; $5afb: $dd
    inc b                                         ; $5afc: $04
    ld a, $26                                     ; $5afd: $3e $26
    ld c, d                                       ; $5aff: $4a
    ld e, c                                       ; $5b00: $59
    sub e                                         ; $5b01: $93
    ld [$0d3d], sp                                ; $5b02: $08 $3d $0d
    rra                                           ; $5b05: $1f
    ld e, $1b                                     ; $5b06: $1e $1b
    nop                                           ; $5b08: $00
    dec b                                         ; $5b09: $05
    nop                                           ; $5b0a: $00
    ld d, $00                                     ; $5b0b: $16 $00
    dec de                                        ; $5b0d: $1b
    add hl, bc                                    ; $5b0e: $09
    dec bc                                        ; $5b0f: $0b
    nop                                           ; $5b10: $00
    ld l, e                                       ; $5b11: $6b
    inc b                                         ; $5b12: $04
    ld [$5c40], a                                 ; $5b13: $ea $40 $5c
    ld de, $79aa                                  ; $5b16: $11 $aa $79
    nop                                           ; $5b19: $00
    nop                                           ; $5b1a: $00
    xor d                                         ; $5b1b: $aa
    ld [hl], l                                    ; $5b1c: $75
    rst $38                                       ; $5b1d: $ff
    ld a, a                                       ; $5b1e: $7f
    nop                                           ; $5b1f: $00
    jr nz, jr_0b6_5b22                            ; $5b20: $20 $00

jr_0b6_5b22:
    nop                                           ; $5b22: $00
    xor d                                         ; $5b23: $aa
    ld [hl], l                                    ; $5b24: $75
    rst $38                                       ; $5b25: $ff
    ld a, a                                       ; $5b26: $7f
    nop                                           ; $5b27: $00
    jr nz, jr_0b6_5b30                            ; $5b28: $20 $06

    nop                                           ; $5b2a: $00
    add hl, hl                                    ; $5b2b: $29
    ld d, l                                       ; $5b2c: $55
    ld e, h                                       ; $5b2d: $5c
    ld h, $11                                     ; $5b2e: $26 $11

jr_0b6_5b30:
    nop                                           ; $5b30: $00
    ld d, b                                       ; $5b31: $50
    inc b                                         ; $5b32: $04
    dec e                                         ; $5b33: $1d
    add hl, bc                                    ; $5b34: $09
    ld a, d                                       ; $5b35: $7a
    inc b                                         ; $5b36: $04
    ld a, $26                                     ; $5b37: $3e $26
    dec hl                                        ; $5b39: $2b
    nop                                           ; $5b3a: $00
    dec e                                         ; $5b3b: $1d
    ld de, $0094                                  ; $5b3c: $11 $94 $00
    rst $38                                       ; $5b3f: $ff
    add hl, de                                    ; $5b40: $19
    rlca                                          ; $5b41: $07
    nop                                           ; $5b42: $00
    jr jr_0b6_5b45                                ; $5b43: $18 $00

jr_0b6_5b45:
    ccf                                           ; $5b45: $3f
    ld [hl+], a                                   ; $5b46: $22
    reti                                          ; $5b47: $d9


    ld [$002a], sp                                ; $5b48: $08 $2a $00
    adc d                                         ; $5b4b: $8a
    ld [hl], c                                    ; $5b4c: $71
    inc a                                         ; $5b4d: $3c
    ld de, $2a7d                                  ; $5b4e: $11 $7d $2a
    nop                                           ; $5b51: $00
    nop                                           ; $5b52: $00
    xor d                                         ; $5b53: $aa
    ld [hl], l                                    ; $5b54: $75
    rst $38                                       ; $5b55: $ff
    ld a, a                                       ; $5b56: $7f
    nop                                           ; $5b57: $00
    jr nz, jr_0b6_5b5a                            ; $5b58: $20 $00

jr_0b6_5b5a:
    nop                                           ; $5b5a: $00
    adc c                                         ; $5b5b: $89
    ld l, l                                       ; $5b5c: $6d
    rst $38                                       ; $5b5d: $ff
    ld a, a                                       ; $5b5e: $7f
    nop                                           ; $5b5f: $00
    jr nz, jr_0b6_5b89                            ; $5b60: $20 $27

    nop                                           ; $5b62: $00
    sbc b                                         ; $5b63: $98
    dec c                                         ; $5b64: $0d
    cp [hl]                                       ; $5b65: $be
    ld [hl], $32                                  ; $5b66: $36 $32
    add hl, bc                                    ; $5b68: $09
    ld b, $00                                     ; $5b69: $06 $00
    ld e, b                                       ; $5b6b: $58
    nop                                           ; $5b6c: $00
    inc a                                         ; $5b6d: $3c
    ld de, $2a7f                                  ; $5b6e: $11 $7f $2a
    dec b                                         ; $5b71: $05
    nop                                           ; $5b72: $00
    dec de                                        ; $5b73: $1b
    dec c                                         ; $5b74: $0d
    sbc l                                         ; $5b75: $9d
    ld c, d                                       ; $5b76: $4a
    ld [hl], e                                    ; $5b77: $73
    nop                                           ; $5b78: $00
    rlca                                          ; $5b79: $07
    nop                                           ; $5b7a: $00
    jr c, jr_0b6_5b7d                             ; $5b7b: $38 $00

jr_0b6_5b7d:
    rst $18                                       ; $5b7d: $df
    ld [hl-], a                                   ; $5b7e: $32
    dec de                                        ; $5b7f: $1b
    add hl, bc                                    ; $5b80: $09
    add hl, hl                                    ; $5b81: $29
    nop                                           ; $5b82: $00
    ld a, [de]                                    ; $5b83: $1a
    ld de, $7589                                  ; $5b84: $11 $89 $75
    cp $1d                                        ; $5b87: $fe $1d

jr_0b6_5b89:
    nop                                           ; $5b89: $00
    nop                                           ; $5b8a: $00
    adc c                                         ; $5b8b: $89
    ld [hl], l                                    ; $5b8c: $75
    rst $38                                       ; $5b8d: $ff
    ld a, a                                       ; $5b8e: $7f
    nop                                           ; $5b8f: $00
    jr nz, jr_0b6_5b94                            ; $5b90: $20 $02

    nop                                           ; $5b92: $00
    adc c                                         ; $5b93: $89

jr_0b6_5b94:
    ld [hl], l                                    ; $5b94: $75
    rst $38                                       ; $5b95: $ff
    ld a, a                                       ; $5b96: $7f
    nop                                           ; $5b97: $00
    jr nz, jr_0b6_5b9f                            ; $5b98: $20 $05

    nop                                           ; $5b9a: $00
    sbc b                                         ; $5b9b: $98
    dec c                                         ; $5b9c: $0d
    sbc [hl]                                      ; $5b9d: $9e
    ld [hl-], a                                   ; $5b9e: $32

jr_0b6_5b9f:
    db $ed                                        ; $5b9f: $ed
    ld [$0006], sp                                ; $5ba0: $08 $06 $00
    cp l                                          ; $5ba3: $bd
    ld c, d                                       ; $5ba4: $4a
    dec l                                         ; $5ba5: $2d
    ld hl, $0cd8                                  ; $5ba6: $21 $d8 $0c
    dec b                                         ; $5ba9: $05
    nop                                           ; $5baa: $00
    cp [hl]                                       ; $5bab: $be
    ld c, d                                       ; $5bac: $4a
    or a                                          ; $5bad: $b7
    inc b                                         ; $5bae: $04
    dec de                                        ; $5baf: $1b
    nop                                           ; $5bb0: $00
    rlca                                          ; $5bb1: $07
    nop                                           ; $5bb2: $00
    dec e                                         ; $5bb3: $1d
    add hl, bc                                    ; $5bb4: $09
    rst $18                                       ; $5bb5: $df
    ld [hl-], a                                   ; $5bb6: $32
    ld d, d                                       ; $5bb7: $52
    nop                                           ; $5bb8: $00
    ld b, $00                                     ; $5bb9: $06 $00
    adc c                                         ; $5bbb: $89
    ld [hl], l                                    ; $5bbc: $75
    rst $30                                       ; $5bbd: $f7
    dec h                                         ; $5bbe: $25
    ld a, l                                       ; $5bbf: $7d
    ld [hl-], a                                   ; $5bc0: $32
    nop                                           ; $5bc1: $00
    nop                                           ; $5bc2: $00
    adc c                                         ; $5bc3: $89
    ld [hl], l                                    ; $5bc4: $75
    rst $38                                       ; $5bc5: $ff
    ld a, a                                       ; $5bc6: $7f
    nop                                           ; $5bc7: $00
    jr nz, jr_0b6_5bcc                            ; $5bc8: $20 $02

    nop                                           ; $5bca: $00
    adc c                                         ; $5bcb: $89

jr_0b6_5bcc:
    ld [hl], c                                    ; $5bcc: $71
    rst $38                                       ; $5bcd: $ff
    ld a, a                                       ; $5bce: $7f
    nop                                           ; $5bcf: $00
    jr nz, @+$28                                  ; $5bd0: $20 $26

    nop                                           ; $5bd2: $00
    sbc b                                         ; $5bd3: $98
    ld de, $08cd                                  ; $5bd4: $11 $cd $08
    cp [hl]                                       ; $5bd7: $be
    ld [hl], $2a                                  ; $5bd8: $36 $2a
    nop                                           ; $5bda: $00
    sbc [hl]                                      ; $5bdb: $9e
    ld b, [hl]                                    ; $5bdc: $46
    ld a, b                                       ; $5bdd: $78
    inc b                                         ; $5bde: $04
    cp a                                          ; $5bdf: $bf
    ld a, e                                       ; $5be0: $7b
    call nz, Call_0b6_7d08                        ; $5be1: $c4 $08 $7d
    ld b, d                                       ; $5be4: $42
    ld d, a                                       ; $5be5: $57
    nop                                           ; $5be6: $00
    cp a                                          ; $5be7: $bf
    ld a, e                                       ; $5be8: $7b
    daa                                           ; $5be9: $27
    nop                                           ; $5bea: $00
    cp h                                          ; $5beb: $bc
    nop                                           ; $5bec: $00
    ret c                                         ; $5bed: $d8

    dec e                                         ; $5bee: $1d
    cp [hl]                                       ; $5bef: $be
    ld [hl], $05                                  ; $5bf0: $36 $05
    nop                                           ; $5bf2: $00
    reti                                          ; $5bf3: $d9


    dec d                                         ; $5bf4: $15
    sbc [hl]                                      ; $5bf5: $9e
    ld [hl-], a                                   ; $5bf6: $32
    xor $10                                       ; $5bf7: $ee $10
    ld bc, $8900                                  ; $5bf9: $01 $00 $89
    ld [hl], c                                    ; $5bfc: $71
    rst $38                                       ; $5bfd: $ff
    ld a, a                                       ; $5bfe: $7f
    nop                                           ; $5bff: $00
    jr nz, jr_0b6_5c02                            ; $5c00: $20 $00

jr_0b6_5c02:
    nop                                           ; $5c02: $00
    ld l, c                                       ; $5c03: $69
    ld l, c                                       ; $5c04: $69
    rst $38                                       ; $5c05: $ff
    ld a, a                                       ; $5c06: $7f
    nop                                           ; $5c07: $00
    jr nz, jr_0b6_5c0f                            ; $5c08: $20 $05

    nop                                           ; $5c0a: $00
    ld [de], a                                    ; $5c0b: $12

Call_0b6_5c0c:
    add hl, bc                                    ; $5c0c: $09
    xor e                                         ; $5c0d: $ab
    inc b                                         ; $5c0e: $04

jr_0b6_5c0f:
    sub a                                         ; $5c0f: $97
    dec c                                         ; $5c10: $0d
    ld h, h                                       ; $5c11: $64
    inc b                                         ; $5c12: $04
    db $fc                                        ; $5c13: $fc
    ld d, d                                       ; $5c14: $52
    jp nz, $d522                                  ; $5c15: $c2 $22 $d5

    inc b                                         ; $5c18: $04
    and c                                         ; $5c19: $a1
    dec d                                         ; $5c1a: $15
    ld e, c                                       ; $5c1b: $59
    ld [hl], $f2                                  ; $5c1c: $36 $f2
    db $10                                        ; $5c1e: $10
    ld e, $5f                                     ; $5c1f: $1e $5f
    ld b, [hl]                                    ; $5c21: $46
    inc b                                         ; $5c22: $04
    ld a, [de]                                    ; $5c23: $1a
    nop                                           ; $5c24: $00
    sbc l                                         ; $5c25: $9d
    ld [hl], $9a                                  ; $5c26: $36 $9a
    ld de, $0027                                  ; $5c28: $11 $27 $00
    sbc b                                         ; $5c2b: $98
    ld de, $36be                                  ; $5c2c: $11 $be $36
    rst $28                                       ; $5c2f: $ef
    inc c                                         ; $5c30: $0c
    nop                                           ; $5c31: $00
    nop                                           ; $5c32: $00
    rst $38                                       ; $5c33: $ff
    ld a, a                                       ; $5c34: $7f
    ld d, c                                       ; $5c35: $51

jr_0b6_5c36:
    dec d                                         ; $5c36: $15
    nop                                           ; $5c37: $00
    jr nz, jr_0b6_5c3a                            ; $5c38: $20 $00

jr_0b6_5c3a:
    nop                                           ; $5c3a: $00
    ld l, c                                       ; $5c3b: $69
    ld [hl], c                                    ; $5c3c: $71
    rst $38                                       ; $5c3d: $ff
    ld a, a                                       ; $5c3e: $7f
    nop                                           ; $5c3f: $00
    jr nz, @+$07                                  ; $5c40: $20 $05

    nop                                           ; $5c42: $00
    sub a                                         ; $5c43: $97
    dec c                                         ; $5c44: $0d
    ld [$ab51], sp                                ; $5c45: $08 $51 $ab
    inc b                                         ; $5c48: $04
    ld b, $00                                     ; $5c49: $06 $00
    sub [hl]                                      ; $5c4b: $96
    dec d                                         ; $5c4c: $15
    ld bc, $be1a                                  ; $5c4d: $01 $1a $be
    ld c, [hl]                                    ; $5c50: $4e
    and $04                                       ; $5c51: $e6 $04
    jr jr_0b6_5c8b                                ; $5c53: $18 $36

    inc sp                                        ; $5c55: $33
    add hl, de                                    ; $5c56: $19
    sbc $4e                                       ; $5c57: $de $4e
    ld c, c                                       ; $5c59: $49
    nop                                           ; $5c5a: $00
    dec sp                                        ; $5c5b: $3b
    nop                                           ; $5c5c: $00

jr_0b6_5c5d:
    scf                                           ; $5c5d: $37
    rra                                           ; $5c5e: $1f
    cp l                                          ; $5c5f: $bd
    ld de, $090f                                  ; $5c60: $11 $0f $09
    sbc [hl]                                      ; $5c63: $9e
    ld [hl], $98                                  ; $5c64: $36 $98
    dec c                                         ; $5c66: $0d
    rst $10                                       ; $5c67: $d7
    dec e                                         ; $5c68: $1d
    ld bc, $ff00                                  ; $5c69: $01 $00 $ff
    ld a, a                                       ; $5c6c: $7f
    nop                                           ; $5c6d: $00
    jr nz, jr_0b6_5c5d                            ; $5c6e: $20 $ed

    ld [$0000], sp                                ; $5c70: $08 $00 $00
    rst $38                                       ; $5c73: $ff
    ld a, a                                       ; $5c74: $7f
    nop                                           ; $5c75: $00
    jr nz, jr_0b6_5c36                            ; $5c76: $20 $be

    ld c, [hl]                                    ; $5c78: $4e

Jump_0b6_5c79:
    ld b, $00                                     ; $5c79: $06 $00
    ld c, b                                       ; $5c7b: $48
    ld h, l                                       ; $5c7c: $65
    sbc b                                         ; $5c7d: $98
    dec c                                         ; $5c7e: $0d
    call z, Call_0b6_4804                         ; $5c7f: $cc $04 $48
    nop                                           ; $5c82: $00
    rst $38                                       ; $5c83: $ff
    ld d, d                                       ; $5c84: $52
    sbc b                                         ; $5c85: $98
    dec c                                         ; $5c86: $0d
    ld e, $00                                     ; $5c87: $1e $00
    add hl, hl                                    ; $5c89: $29
    inc b                                         ; $5c8a: $04

jr_0b6_5c8b:
    cp h                                          ; $5c8b: $bc
    ld c, d                                       ; $5c8c: $4a
    ld d, $19                                     ; $5c8d: $16 $19
    ld a, h                                       ; $5c8f: $7c
    inc b                                         ; $5c90: $04
    ld c, c                                       ; $5c91: $49
    nop                                           ; $5c92: $00
    dec de                                        ; $5c93: $1b
    nop                                           ; $5c94: $00
    sbc a                                         ; $5c95: $9f
    ld a, [hl+]                                   ; $5c96: $2a
    ld a, d                                       ; $5c97: $7a
    add hl, bc                                    ; $5c98: $09
    dec b                                         ; $5c99: $05
    nop                                           ; $5c9a: $00
    sub a                                         ; $5c9b: $97
    ld de, $2e7d                                  ; $5c9c: $11 $7d $2e
    call z, Call_000_0208                         ; $5c9f: $cc $08 $02
    nop                                           ; $5ca2: $00
    rst $18                                       ; $5ca3: $df
    ld [hl-], a                                   ; $5ca4: $32
    nop                                           ; $5ca5: $00
    jr nz, @+$01                                  ; $5ca6: $20 $ff

    ld a, a                                       ; $5ca8: $7f
    nop                                           ; $5ca9: $00
    nop                                           ; $5caa: $00
    rst $38                                       ; $5cab: $ff
    ld a, a                                       ; $5cac: $7f
    nop                                           ; $5cad: $00
    jr nz, jr_0b6_5cce                            ; $5cae: $20 $1e

    nop                                           ; $5cb0: $00
    inc b                                         ; $5cb1: $04
    nop                                           ; $5cb2: $00
    jr z, jr_0b6_5d16                             ; $5cb3: $28 $61

    call z, Call_0b6_7504                         ; $5cb5: $cc $04 $75
    dec c                                         ; $5cb8: $0d
    ld b, $00                                     ; $5cb9: $06 $00
    sbc d                                         ; $5cbb: $9a
    ld de, $4edd                                  ; $5cbc: $11 $dd $4e
    ld d, h                                       ; $5cbf: $54
    inc c                                         ; $5cc0: $0c
    add hl, bc                                    ; $5cc1: $09
    nop                                           ; $5cc2: $00
    dec a                                         ; $5cc3: $3d
    ld l, $14                                     ; $5cc4: $2e $14
    dec d                                         ; $5cc6: $15
    dec de                                        ; $5cc7: $1b
    nop                                           ; $5cc8: $00
    rlca                                          ; $5cc9: $07
    nop                                           ; $5cca: $00
    dec sp                                        ; $5ccb: $3b
    nop                                           ; $5ccc: $00
    sbc b                                         ; $5ccd: $98

jr_0b6_5cce:
    dec c                                         ; $5cce: $0d
    cp a                                          ; $5ccf: $bf
    ld de, $0003                                  ; $5cd0: $11 $03 $00
    rst $10                                       ; $5cd3: $d7
    add hl, de                                    ; $5cd4: $19
    xor $08                                       ; $5cd5: $ee $08
    sbc l                                         ; $5cd7: $9d
    ld [hl-], a                                   ; $5cd8: $32
    nop                                           ; $5cd9: $00
    inc e                                         ; $5cda: $1c
    ccf                                           ; $5cdb: $3f
    ld h, $14                                     ; $5cdc: $26 $14
    nop                                           ; $5cde: $00
    rst $38                                       ; $5cdf: $ff
    ld a, a                                       ; $5ce0: $7f
    nop                                           ; $5ce1: $00
    nop                                           ; $5ce2: $00
    rst $38                                       ; $5ce3: $ff
    ld a, a                                       ; $5ce4: $7f
    nop                                           ; $5ce5: $00
    jr nz, jr_0b6_5d3c                            ; $5ce6: $20 $54

    inc c                                         ; $5ce8: $0c
    nop                                           ; $5ce9: $00
    nop                                           ; $5cea: $00
    ld c, c                                       ; $5ceb: $49
    ld l, l                                       ; $5cec: $6d
    xor h                                         ; $5ced: $ac
    inc b                                         ; $5cee: $04
    dec b                                         ; $5cef: $05
    nop                                           ; $5cf0: $00
    jr z, jr_0b6_5cf3                             ; $5cf1: $28 $00

jr_0b6_5cf3:
    dec de                                        ; $5cf3: $1b
    nop                                           ; $5cf4: $00
    ld [hl], e                                    ; $5cf5: $73
    dec e                                         ; $5cf6: $1d
    ld a, [hl]                                    ; $5cf7: $7e
    dec d                                         ; $5cf8: $15
    ld b, $00                                     ; $5cf9: $06 $00
    cp d                                          ; $5cfb: $ba
    add hl, hl                                    ; $5cfc: $29
    ld e, b                                       ; $5cfd: $58
    inc b                                         ; $5cfe: $04
    ld a, l                                       ; $5cff: $7d
    ld b, [hl]                                    ; $5d00: $46
    dec b                                         ; $5d01: $05
    nop                                           ; $5d02: $00
    sbc b                                         ; $5d03: $98
    ld de, $369e                                  ; $5d04: $11 $9e $36
    adc $04                                       ; $5d07: $ce $04
    dec b                                         ; $5d09: $05
    nop                                           ; $5d0a: $00
    ld hl, sp+$21                                 ; $5d0b: $f8 $21
    sbc a                                         ; $5d0d: $9f
    ld de, $04cc                                  ; $5d0e: $11 $cc $04
    nop                                           ; $5d11: $00
    inc e                                         ; $5d12: $1c
    inc d                                         ; $5d13: $14
    nop                                           ; $5d14: $00
    ld a, a                                       ; $5d15: $7f

jr_0b6_5d16:
    add hl, bc                                    ; $5d16: $09
    cp a                                          ; $5d17: $bf
    ld [hl-], a                                   ; $5d18: $32
    nop                                           ; $5d19: $00
    nop                                           ; $5d1a: $00
    rst $38                                       ; $5d1b: $ff
    ld a, a                                       ; $5d1c: $7f
    nop                                           ; $5d1d: $00
    jr nz, jr_0b6_5d9e                            ; $5d1e: $20 $7e

    dec d                                         ; $5d20: $15
    inc bc                                        ; $5d21: $03
    nop                                           ; $5d22: $00
    jr z, jr_0b6_5d8a                             ; $5d23: $28 $65

    rst $38                                       ; $5d25: $ff
    ld a, a                                       ; $5d26: $7f
    adc d                                         ; $5d27: $8a
    ld [$0005], sp                                ; $5d28: $08 $05 $00
    dec d                                         ; $5d2b: $15
    dec d                                         ; $5d2c: $15
    ei                                            ; $5d2d: $fb
    ld h, $cc                                     ; $5d2e: $26 $cc
    inc b                                         ; $5d30: $04
    ld h, $00                                     ; $5d31: $26 $00
    ld [hl], a                                    ; $5d33: $77
    dec c                                         ; $5d34: $0d
    cp l                                          ; $5d35: $bd
    ld c, d                                       ; $5d36: $4a
    ld e, c                                       ; $5d37: $59
    inc bc                                        ; $5d38: $03
    dec b                                         ; $5d39: $05
    nop                                           ; $5d3a: $00
    sbc b                                         ; $5d3b: $98

jr_0b6_5d3c:
    dec c                                         ; $5d3c: $0d
    ld e, h                                       ; $5d3d: $5c
    ld a, [hl+]                                   ; $5d3e: $2a
    xor $08                                       ; $5d3f: $ee $08
    ld h, $00                                     ; $5d41: $26 $00
    ld a, a                                       ; $5d43: $7f
    add hl, bc                                    ; $5d44: $09
    db $ed                                        ; $5d45: $ed
    ld [$0014], sp                                ; $5d46: $08 $14 $00
    nop                                           ; $5d49: $00
    jr nz, jr_0b6_5d51                            ; $5d4a: $20 $05

    nop                                           ; $5d4c: $00
    inc d                                         ; $5d4d: $14
    nop                                           ; $5d4e: $00
    inc d                                         ; $5d4f: $14
    nop                                           ; $5d50: $00

jr_0b6_5d51:
    nop                                           ; $5d51: $00
    nop                                           ; $5d52: $00
    nop                                           ; $5d53: $00
    jr nz, jr_0b6_5d51                            ; $5d54: $20 $fb

    ld h, $cc                                     ; $5d56: $26 $cc
    inc b                                         ; $5d58: $04
    inc bc                                        ; $5d59: $03
    inc b                                         ; $5d5a: $04
    add hl, hl                                    ; $5d5b: $29
    ld l, c                                       ; $5d5c: $69
    rst $38                                       ; $5d5d: $ff
    ld a, a                                       ; $5d5e: $7f
    xor e                                         ; $5d5f: $ab
    inc b                                         ; $5d60: $04
    ld l, c                                       ; $5d61: $69
    nop                                           ; $5d62: $00
    ld e, d                                       ; $5d63: $5a
    ld a, $59                                     ; $5d64: $3e $59
    inc bc                                        ; $5d66: $03
    dec a                                         ; $5d67: $3d
    inc c                                         ; $5d68: $0c
    dec b                                         ; $5d69: $05
    nop                                           ; $5d6a: $00
    adc $04                                       ; $5d6b: $ce $04
    halt                                          ; $5d6d: $76
    dec c                                         ; $5d6e: $0d
    sub a                                         ; $5d6f: $97
    dec c                                         ; $5d70: $0d
    db $ed                                        ; $5d71: $ed
    ld [$329e], sp                                ; $5d72: $08 $9e $32
    sub $21                                       ; $5d75: $d6 $21
    sbc b                                         ; $5d77: $98
    dec c                                         ; $5d78: $0d
    inc b                                         ; $5d79: $04
    nop                                           ; $5d7a: $00
    rst $38                                       ; $5d7b: $ff
    ld a, a                                       ; $5d7c: $7f
    ld a, c                                       ; $5d7d: $79
    nop                                           ; $5d7e: $00
    xor e                                         ; $5d7f: $ab
    inc b                                         ; $5d80: $04
    nop                                           ; $5d81: $00
    nop                                           ; $5d82: $00
    nop                                           ; $5d83: $00
    jr nz, @+$7b                                  ; $5d84: $20 $79

    nop                                           ; $5d86: $00
    xor e                                         ; $5d87: $ab
    inc b                                         ; $5d88: $04
    nop                                           ; $5d89: $00

jr_0b6_5d8a:
    nop                                           ; $5d8a: $00
    nop                                           ; $5d8b: $00
    jr nz, @+$5b                                  ; $5d8c: $20 $59

    inc bc                                        ; $5d8e: $03
    dec a                                         ; $5d8f: $3d
    inc c                                         ; $5d90: $0c
    ld [bc], a                                    ; $5d91: $02
    nop                                           ; $5d92: $00
    add hl, hl                                    ; $5d93: $29
    ld l, c                                       ; $5d94: $69
    rst $38                                       ; $5d95: $ff
    ld a, a                                       ; $5d96: $7f
    call z, Call_0b6_4804                         ; $5d97: $cc $04 $48
    nop                                           ; $5d9a: $00

jr_0b6_5d9b:
    rst $38                                       ; $5d9b: $ff
    ld d, d                                       ; $5d9c: $52
    scf                                           ; $5d9d: $37

jr_0b6_5d9e:
    inc c                                         ; $5d9e: $0c
    sub h                                         ; $5d9f: $94
    ld [bc], a                                    ; $5da0: $02
    dec b                                         ; $5da1: $05
    nop                                           ; $5da2: $00
    call Call_0b6_7704                            ; $5da3: $cd $04 $77
    dec c                                         ; $5da6: $0d
    rrca                                          ; $5da7: $0f
    add hl, bc                                    ; $5da8: $09
    ld c, b                                       ; $5da9: $48
    nop                                           ; $5daa: $00
    halt                                          ; $5dab: $76
    ld de, $327b                                  ; $5dac: $11 $7b $32
    ld c, $0d                                     ; $5daf: $0e $0d
    inc bc                                        ; $5db1: $03
    nop                                           ; $5db2: $00
    rst $18                                       ; $5db3: $df
    dec d                                         ; $5db4: $15
    rst $38                                       ; $5db5: $ff
    ld a, a                                       ; $5db6: $7f
    rla                                           ; $5db7: $17
    nop                                           ; $5db8: $00
    nop                                           ; $5db9: $00
    jr nz, jr_0b6_5d9b                            ; $5dba: $20 $df

    dec d                                         ; $5dbc: $15
    rst $38                                       ; $5dbd: $ff
    ld a, a                                       ; $5dbe: $7f
    rla                                           ; $5dbf: $17
    nop                                           ; $5dc0: $00
    nop                                           ; $5dc1: $00
    jr nz, @+$01                                  ; $5dc2: $20 $ff

    ld d, d                                       ; $5dc4: $52
    scf                                           ; $5dc5: $37
    inc c                                         ; $5dc6: $0c
    sub h                                         ; $5dc7: $94
    ld [bc], a                                    ; $5dc8: $02
    ld [bc], a                                    ; $5dc9: $02
    nop                                           ; $5dca: $00
    rst $38                                       ; $5dcb: $ff
    ld a, a                                       ; $5dcc: $7f
    add hl, hl                                    ; $5dcd: $29
    ld l, c                                       ; $5dce: $69
    call z, $0704                                 ; $5dcf: $cc $04 $07
    nop                                           ; $5dd2: $00
    rst $38                                       ; $5dd3: $ff
    ld d, d                                       ; $5dd4: $52
    ld c, a                                       ; $5dd5: $4f
    ld [$0c56], sp                                ; $5dd6: $08 $56 $0c
    dec b                                         ; $5dd9: $05
    nop                                           ; $5dda: $00
    db $10                                        ; $5ddb: $10
    add hl, bc                                    ; $5ddc: $09
    adc d                                         ; $5ddd: $8a
    inc b                                         ; $5dde: $04
    ld [hl], a                                    ; $5ddf: $77
    dec c                                         ; $5de0: $0d
    dec b                                         ; $5de1: $05
    nop                                           ; $5de2: $00
    ld c, $09                                     ; $5de3: $0e $09
    sub l                                         ; $5de5: $95
    ld de, $0469                                  ; $5de6: $11 $69 $04
    dec b                                         ; $5de9: $05
    nop                                           ; $5dea: $00
    ld e, d                                       ; $5deb: $5a
    nop                                           ; $5dec: $00
    rst $18                                       ; $5ded: $df

jr_0b6_5dee:
    ld [hl-], a                                   ; $5dee: $32
    ld a, a                                       ; $5def: $7f
    add hl, bc                                    ; $5df0: $09
    nop                                           ; $5df1: $00
    jr nz, jr_0b6_5e4e                            ; $5df2: $20 $5a

    nop                                           ; $5df4: $00
    rst $18                                       ; $5df5: $df
    ld [hl-], a                                   ; $5df6: $32
    ld a, a                                       ; $5df7: $7f
    add hl, bc                                    ; $5df8: $09
    nop                                           ; $5df9: $00
    jr nz, @+$01                                  ; $5dfa: $20 $ff

    ld d, d                                       ; $5dfc: $52
    ld c, a                                       ; $5dfd: $4f
    ld [$0c56], sp                                ; $5dfe: $08 $56 $0c
    nop                                           ; $5e01: $00
    ld [$7fff], sp                                ; $5e02: $08 $ff $7f
    cp e                                          ; $5e05: $bb
    inc d                                         ; $5e06: $14

jr_0b6_5e07:
    daa                                           ; $5e07: $27
    nop                                           ; $5e08: $00
    ld [$ba00], sp                                ; $5e09: $08 $00 $ba
    inc d                                         ; $5e0c: $14
    ld a, [hl]                                    ; $5e0d: $7e
    ld sp, $0831                                  ; $5e0e: $31 $31 $08
    dec b                                         ; $5e11: $05
    nop                                           ; $5e12: $00
    call z, Call_0b6_5304                         ; $5e13: $cc $04 $53
    add hl, bc                                    ; $5e16: $09
    ld l, c                                       ; $5e17: $69
    inc b                                         ; $5e18: $04
    dec b                                         ; $5e19: $05
    nop                                           ; $5e1a: $00
    ld e, d                                       ; $5e1b: $5a
    nop                                           ; $5e1c: $00
    call z, Call_0b6_7f04                         ; $5e1d: $cc $04 $7f
    add hl, bc                                    ; $5e20: $09
    ld [$7f00], sp                                ; $5e21: $08 $00 $7f
    add hl, bc                                    ; $5e24: $09
    rla                                           ; $5e25: $17
    nop                                           ; $5e26: $00
    rst $18                                       ; $5e27: $df
    ld [hl-], a                                   ; $5e28: $32
    nop                                           ; $5e29: $00
    jr nz, jr_0b6_5e31                            ; $5e2a: $20 $05

    nop                                           ; $5e2c: $00
    rla                                           ; $5e2d: $17
    nop                                           ; $5e2e: $00
    rst $18                                       ; $5e2f: $df
    ld [hl-], a                                   ; $5e30: $32

jr_0b6_5e31:
    nop                                           ; $5e31: $00
    jr nz, jr_0b6_5dee                            ; $5e32: $20 $ba

    inc d                                         ; $5e34: $14
    ld a, [hl]                                    ; $5e35: $7e
    ld sp, $0831                                  ; $5e36: $31 $31 $08
    nop                                           ; $5e39: $00
    ld [$39bf], sp                                ; $5e3a: $08 $bf $39
    reti                                          ; $5e3d: $d9


    jr @+$01                                      ; $5e3e: $18 $ff

    ld a, a                                       ; $5e40: $7f
    nop                                           ; $5e41: $00
    nop                                           ; $5e42: $00
    sbc e                                         ; $5e43: $9b
    inc d                                         ; $5e44: $14
    ld a, a                                       ; $5e45: $7f
    dec l                                         ; $5e46: $2d

jr_0b6_5e47:
    ld a, [hl+]                                   ; $5e47: $2a
    nop                                           ; $5e48: $00
    nop                                           ; $5e49: $00
    nop                                           ; $5e4a: $00
    rst $38                                       ; $5e4b: $ff
    ld a, a                                       ; $5e4c: $7f
    rla                                           ; $5e4d: $17

jr_0b6_5e4e:
    nop                                           ; $5e4e: $00
    rst $18                                       ; $5e4f: $df
    ld [hl-], a                                   ; $5e50: $32
    nop                                           ; $5e51: $00
    nop                                           ; $5e52: $00
    rst $38                                       ; $5e53: $ff
    ld a, a                                       ; $5e54: $7f
    rla                                           ; $5e55: $17
    nop                                           ; $5e56: $00
    rst $18                                       ; $5e57: $df
    ld [hl-], a                                   ; $5e58: $32
    nop                                           ; $5e59: $00
    nop                                           ; $5e5a: $00
    rst $38                                       ; $5e5b: $ff
    ld a, a                                       ; $5e5c: $7f
    nop                                           ; $5e5d: $00
    jr nz, @-$1f                                  ; $5e5e: $20 $df

    ld [hl-], a                                   ; $5e60: $32
    nop                                           ; $5e61: $00
    jr nz, @+$01                                  ; $5e62: $20 $ff

    ld a, a                                       ; $5e64: $7f
    nop                                           ; $5e65: $00
    jr nz, jr_0b6_5e47                            ; $5e66: $20 $df

    ld [hl-], a                                   ; $5e68: $32
    nop                                           ; $5e69: $00
    jr nz, jr_0b6_5e07                            ; $5e6a: $20 $9b

    inc d                                         ; $5e6c: $14
    ld a, a                                       ; $5e6d: $7f
    dec l                                         ; $5e6e: $2d

jr_0b6_5e6f:
    ld a, [hl+]                                   ; $5e6f: $2a
    nop                                           ; $5e70: $00
    nop                                           ; $5e71: $00
    nop                                           ; $5e72: $00
    rst $38                                       ; $5e73: $ff
    ld a, a                                       ; $5e74: $7f
    nop                                           ; $5e75: $00
    jr nz, jr_0b6_5ea2                            ; $5e76: $20 $2a

    nop                                           ; $5e78: $00
    nop                                           ; $5e79: $00
    nop                                           ; $5e7a: $00
    rst $38                                       ; $5e7b: $ff
    ld a, a                                       ; $5e7c: $7f
    nop                                           ; $5e7d: $00
    jr nz, @+$2c                                  ; $5e7e: $20 $2a

    nop                                           ; $5e80: $00
    nop                                           ; $5e81: $00
    nop                                           ; $5e82: $00
    nop                                           ; $5e83: $00
    jr nz, jr_0b6_5e86                            ; $5e84: $20 $00

jr_0b6_5e86:
    jr nz, @-$1f                                  ; $5e86: $20 $df

    ld [hl-], a                                   ; $5e88: $32
    nop                                           ; $5e89: $00
    nop                                           ; $5e8a: $00
    nop                                           ; $5e8b: $00
    jr nz, jr_0b6_5e8e                            ; $5e8c: $20 $00

jr_0b6_5e8e:
    jr nz, jr_0b6_5e6f                            ; $5e8e: $20 $df

    ld [hl-], a                                   ; $5e90: $32
    nop                                           ; $5e91: $00
    nop                                           ; $5e92: $00
    nop                                           ; $5e93: $00
    jr nz, jr_0b6_5e96                            ; $5e94: $20 $00

jr_0b6_5e96:
    jr nz, @-$1f                                  ; $5e96: $20 $df

    ld [hl-], a                                   ; $5e98: $32
    nop                                           ; $5e99: $00
    jr nz, jr_0b6_5e9c                            ; $5e9a: $20 $00

jr_0b6_5e9c:
    jr nz, jr_0b6_5e9e                            ; $5e9c: $20 $00

jr_0b6_5e9e:
    jr nz, @-$1f                                  ; $5e9e: $20 $df

    ld [hl-], a                                   ; $5ea0: $32
    nop                                           ; $5ea1: $00

jr_0b6_5ea2:
    jr nz, jr_0b6_5ea4                            ; $5ea2: $20 $00

jr_0b6_5ea4:
    jr nz, jr_0b6_5ea6                            ; $5ea4: $20 $00

jr_0b6_5ea6:
    jr nz, @-$03                                  ; $5ea6: $20 $fb

    ld de, $2000                                  ; $5ea8: $11 $00 $20

jr_0b6_5eab:
    nop                                           ; $5eab: $00
    jr nz, jr_0b6_5eae                            ; $5eac: $20 $00

jr_0b6_5eae:
    jr nz, jr_0b6_5eab                            ; $5eae: $20 $fb

    ld de, $2000                                  ; $5eb0: $11 $00 $20

jr_0b6_5eb3:
    add hl, bc                                    ; $5eb3: $09
    nop                                           ; $5eb4: $00
    nop                                           ; $5eb5: $00
    jr nz, jr_0b6_5eb3                            ; $5eb6: $20 $fb

    ld de, $2000                                  ; $5eb8: $11 $00 $20
    db $db                                        ; $5ebb: $db
    ld de, $0009                                  ; $5ebc: $11 $09 $00
    ld c, $09                                     ; $5ebf: $0e $09
    nop                                           ; $5ec1: $00
    jr nz, @-$23                                  ; $5ec2: $20 $db

    ld de, $0009                                  ; $5ec4: $11 $09 $00
    ld c, $09                                     ; $5ec7: $0e $09
    nop                                           ; $5ec9: $00
    jr nz, @-$23                                  ; $5eca: $20 $db

    ld de, $0009                                  ; $5ecc: $11 $09 $00
    ld c, $09                                     ; $5ecf: $0e $09
    nop                                           ; $5ed1: $00
    jr nz, @-$23                                  ; $5ed2: $20 $db

    ld de, $0009                                  ; $5ed4: $11 $09 $00
    ld c, $09                                     ; $5ed7: $0e $09
    nop                                           ; $5ed9: $00
    jr nz, jr_0b6_5ee5                            ; $5eda: $20 $09

    nop                                           ; $5edc: $00
    nop                                           ; $5edd: $00
    jr nz, @-$03                                  ; $5ede: $20 $fb

    ld de, $2000                                  ; $5ee0: $11 $00 $20

jr_0b6_5ee3:
    add hl, bc                                    ; $5ee3: $09
    nop                                           ; $5ee4: $00

jr_0b6_5ee5:
    nop                                           ; $5ee5: $00
    jr nz, jr_0b6_5ee3                            ; $5ee6: $20 $fb

    ld de, $2000                                  ; $5ee8: $11 $00 $20
    ld [hl], l                                    ; $5eeb: $75
    add hl, bc                                    ; $5eec: $09
    ld c, c                                       ; $5eed: $49
    nop                                           ; $5eee: $00
    rra                                           ; $5eef: $1f
    dec de                                        ; $5ef0: $1b
    nop                                           ; $5ef1: $00
    nop                                           ; $5ef2: $00
    ld d, h                                       ; $5ef3: $54
    add hl, bc                                    ; $5ef4: $09
    ld e, l                                       ; $5ef5: $5d
    ld [de], a                                    ; $5ef6: $12
    dec bc                                        ; $5ef7: $0b
    nop                                           ; $5ef8: $00
    nop                                           ; $5ef9: $00
    jr nz, jr_0b6_5f05                            ; $5efa: $20 $09

    nop                                           ; $5efc: $00
    or l                                          ; $5efd: $b5
    dec c                                         ; $5efe: $0d
    dec bc                                        ; $5eff: $0b
    nop                                           ; $5f00: $00
    nop                                           ; $5f01: $00
    jr nz, jr_0b6_5f0d                            ; $5f02: $20 $09

    nop                                           ; $5f04: $00

jr_0b6_5f05:
    or l                                          ; $5f05: $b5
    dec c                                         ; $5f06: $0d
    dec bc                                        ; $5f07: $0b
    nop                                           ; $5f08: $00
    nop                                           ; $5f09: $00
    jr nz, jr_0b6_5f15                            ; $5f0a: $20 $09

    nop                                           ; $5f0c: $00

jr_0b6_5f0d:
    or l                                          ; $5f0d: $b5
    dec c                                         ; $5f0e: $0d
    dec bc                                        ; $5f0f: $0b
    nop                                           ; $5f10: $00
    nop                                           ; $5f11: $00
    jr nz, @+$77                                  ; $5f12: $20 $75

    add hl, bc                                    ; $5f14: $09

jr_0b6_5f15:
    ld c, c                                       ; $5f15: $49
    nop                                           ; $5f16: $00
    rra                                           ; $5f17: $1f
    dec de                                        ; $5f18: $1b
    nop                                           ; $5f19: $00
    jr nz, @+$77                                  ; $5f1a: $20 $75

    add hl, bc                                    ; $5f1c: $09
    ld c, c                                       ; $5f1d: $49
    nop                                           ; $5f1e: $00
    rra                                           ; $5f1f: $1f
    dec de                                        ; $5f20: $1b
    nop                                           ; $5f21: $00
    db $10                                        ; $5f22: $10
    halt                                          ; $5f23: $76
    dec c                                         ; $5f24: $0d
    jr z, jr_0b6_5f27                             ; $5f25: $28 $00

jr_0b6_5f27:
    ld a, [hl]                                    ; $5f27: $7e
    ld d, $01                                     ; $5f28: $16 $01
    nop                                           ; $5f2a: $00
    rrca                                          ; $5f2b: $0f
    add hl, bc                                    ; $5f2c: $09
    ld a, a                                       ; $5f2d: $7f
    ld d, $5a                                     ; $5f2e: $16 $5a
    ld [$1800], sp                                ; $5f30: $08 $00 $18
    or d                                          ; $5f33: $b2
    inc b                                         ; $5f34: $04
    add hl, hl                                    ; $5f35: $29
    nop                                           ; $5f36: $00
    sub l                                         ; $5f37: $95
    dec c                                         ; $5f38: $0d
    nop                                           ; $5f39: $00
    nop                                           ; $5f3a: $00
    nop                                           ; $5f3b: $00
    jr nz, jr_0b6_5f47                            ; $5f3c: $20 $09

    nop                                           ; $5f3e: $00
    sub l                                         ; $5f3f: $95
    dec c                                         ; $5f40: $0d
    nop                                           ; $5f41: $00
    jr nz, jr_0b6_5f44                            ; $5f42: $20 $00

jr_0b6_5f44:
    jr nz, jr_0b6_5f4f                            ; $5f44: $20 $09

    nop                                           ; $5f46: $00

jr_0b6_5f47:
    sub l                                         ; $5f47: $95
    dec c                                         ; $5f48: $0d
    nop                                           ; $5f49: $00
    jr nz, jr_0b6_5fc2                            ; $5f4a: $20 $76

    dec c                                         ; $5f4c: $0d
    jr z, jr_0b6_5f4f                             ; $5f4d: $28 $00

jr_0b6_5f4f:
    ld a, [hl]                                    ; $5f4f: $7e
    ld d, $00                                     ; $5f50: $16 $00
    jr nz, jr_0b6_5fca                            ; $5f52: $20 $76

    dec c                                         ; $5f54: $0d
    jr z, jr_0b6_5f57                             ; $5f55: $28 $00

jr_0b6_5f57:
    ld a, [hl]                                    ; $5f57: $7e
    ld d, $00                                     ; $5f58: $16 $00
    nop                                           ; $5f5a: $00
    inc sp                                        ; $5f5b: $33
    add hl, bc                                    ; $5f5c: $09
    ld a, [bc]                                    ; $5f5d: $0a
    nop                                           ; $5f5e: $00
    cp l                                          ; $5f5f: $bd
    ld de, $0000                                  ; $5f60: $11 $00 $00
    ld [hl], a                                    ; $5f63: $77
    add hl, bc                                    ; $5f64: $09
    cp a                                          ; $5f65: $bf
    ld [de], a                                    ; $5f66: $12
    add hl, bc                                    ; $5f67: $09
    nop                                           ; $5f68: $00
    nop                                           ; $5f69: $00
    ld [$7fff], sp                                ; $5f6a: $08 $ff $7f
    add hl, sp                                    ; $5f6d: $39
    dec c                                         ; $5f6e: $0d
    rlca                                          ; $5f6f: $07
    nop                                           ; $5f70: $00
    nop                                           ; $5f71: $00
    nop                                           ; $5f72: $00
    ld [$7200], sp                                ; $5f73: $08 $00 $72
    ld [$2000], sp                                ; $5f76: $08 $00 $20
    nop                                           ; $5f79: $00
    jr nz, jr_0b6_5f84                            ; $5f7a: $20 $08

    nop                                           ; $5f7c: $00
    ld [hl], d                                    ; $5f7d: $72
    ld [$2000], sp                                ; $5f7e: $08 $00 $20
    nop                                           ; $5f81: $00
    jr nz, jr_0b6_5fb7                            ; $5f82: $20 $33

jr_0b6_5f84:
    add hl, bc                                    ; $5f84: $09
    ld a, [bc]                                    ; $5f85: $0a
    nop                                           ; $5f86: $00
    cp l                                          ; $5f87: $bd
    ld de, $2000                                  ; $5f88: $11 $00 $20

jr_0b6_5f8b:
    inc sp                                        ; $5f8b: $33
    add hl, bc                                    ; $5f8c: $09
    ld a, [bc]                                    ; $5f8d: $0a
    nop                                           ; $5f8e: $00
    cp l                                          ; $5f8f: $bd
    ld de, $0001                                  ; $5f90: $11 $01 $00

jr_0b6_5f93:
    xor $08                                       ; $5f93: $ee $08
    ld [$5400], sp                                ; $5f95: $08 $00 $54
    dec c                                         ; $5f98: $0d
    ld h, h                                       ; $5f99: $64
    ld [$2151], sp                                ; $5f9a: $08 $51 $21
    cp a                                          ; $5f9d: $bf

jr_0b6_5f9e:
    ld c, $96                                     ; $5f9e: $0e $96
    add hl, bc                                    ; $5fa0: $09
    rlca                                          ; $5fa1: $07
    nop                                           ; $5fa2: $00
    db $fc                                        ; $5fa3: $fc
    ld de, $77bd                                  ; $5fa4: $11 $bd $77
    adc [hl]                                      ; $5fa7: $8e
    inc b                                         ; $5fa8: $04
    nop                                           ; $5fa9: $00

jr_0b6_5faa:
    jr nz, jr_0b6_5f8b                            ; $5faa: $20 $df

    inc c                                         ; $5fac: $0c
    ld b, a                                       ; $5fad: $47
    nop                                           ; $5fae: $00
    rra                                           ; $5faf: $1f
    ld d, $00                                     ; $5fb0: $16 $00
    jr nz, jr_0b6_5f93                            ; $5fb2: $20 $df

    inc c                                         ; $5fb4: $0c
    ld b, a                                       ; $5fb5: $47
    nop                                           ; $5fb6: $00

jr_0b6_5fb7:
    rra                                           ; $5fb7: $1f
    ld d, $00                                     ; $5fb8: $16 $00
    jr nz, jr_0b6_5faa                            ; $5fba: $20 $ee

    ld [$0008], sp                                ; $5fbc: $08 $08 $00
    ld d, h                                       ; $5fbf: $54
    dec c                                         ; $5fc0: $0d
    nop                                           ; $5fc1: $00

jr_0b6_5fc2:
    nop                                           ; $5fc2: $00
    rst $38                                       ; $5fc3: $ff
    ld a, a                                       ; $5fc4: $7f
    nop                                           ; $5fc5: $00
    jr nz, jr_0b6_601c                            ; $5fc6: $20 $54

    dec c                                         ; $5fc8: $0d
    ld [bc], a                                    ; $5fc9: $02

jr_0b6_5fca:
    nop                                           ; $5fca: $00
    ld [hl], $09                                  ; $5fcb: $36 $09
    rst $38                                       ; $5fcd: $ff
    ld a, a                                       ; $5fce: $7f
    sbc [hl]                                      ; $5fcf: $9e
    ld c, $84                                     ; $5fd0: $0e $84
    inc b                                         ; $5fd2: $04
    sub e                                         ; $5fd3: $93
    ld c, [hl]                                    ; $5fd4: $4e
    ld e, c                                       ; $5fd5: $59
    ld e, a                                       ; $5fd6: $5f
    ld a, e                                       ; $5fd7: $7b
    ld a, $00                                     ; $5fd8: $3e $00
    nop                                           ; $5fda: $00
    inc l                                         ; $5fdb: $2c
    inc b                                         ; $5fdc: $04
    ld c, b                                       ; $5fdd: $48
    dec [hl]                                      ; $5fde: $35
    ld l, h                                       ; $5fdf: $6c
    add hl, de                                    ; $5fe0: $19
    nop                                           ; $5fe1: $00
    nop                                           ; $5fe2: $00
    ei                                            ; $5fe3: $fb
    inc c                                         ; $5fe4: $0c
    nop                                           ; $5fe5: $00
    jr nz, jr_0b6_5ff1                            ; $5fe6: $20 $09

    nop                                           ; $5fe8: $00
    nop                                           ; $5fe9: $00
    jr nz, @-$03                                  ; $5fea: $20 $fb

    inc c                                         ; $5fec: $0c
    nop                                           ; $5fed: $00
    jr nz, @+$0b                                  ; $5fee: $20 $09

    nop                                           ; $5ff0: $00

jr_0b6_5ff1:
    nop                                           ; $5ff1: $00
    jr nz, jr_0b6_602a                            ; $5ff2: $20 $36

    add hl, bc                                    ; $5ff4: $09
    rst $38                                       ; $5ff5: $ff
    ld a, a                                       ; $5ff6: $7f
    sbc [hl]                                      ; $5ff7: $9e
    ld c, $00                                     ; $5ff8: $0e $00
    nop                                           ; $5ffa: $00
    rst $38                                       ; $5ffb: $ff
    ld a, a                                       ; $5ffc: $7f
    nop                                           ; $5ffd: $00
    jr nz, jr_0b6_5f9e                            ; $5ffe: $20 $9e

    ld c, $01                                     ; $6000: $0e $01
    inc b                                         ; $6002: $04
    ld [hl], d                                    ; $6003: $72
    ld a, $9c                                     ; $6004: $3e $9c
    ld d, a                                       ; $6006: $57
    ret                                           ; $6007: $c9


    inc c                                         ; $6008: $0c
    ld h, h                                       ; $6009: $64
    inc b                                         ; $600a: $04
    db $eb                                        ; $600b: $eb
    ld h, c                                       ; $600c: $61
    ld a, e                                       ; $600d: $7b
    ld a, $9c                                     ; $600e: $3e $9c
    ld h, e                                       ; $6010: $63
    nop                                           ; $6011: $00
    nop                                           ; $6012: $00
    sub l                                         ; $6013: $95
    ld [hl-], a                                   ; $6014: $32
    sbc $77                                       ; $6015: $de $77
    call z, RST_08                                ; $6017: $cc $08 $00
    nop                                           ; $601a: $00
    rst $38                                       ; $601b: $ff

jr_0b6_601c:
    ld a, a                                       ; $601c: $7f
    nop                                           ; $601d: $00
    jr nz, @+$0f                                  ; $601e: $20 $0d

    inc b                                         ; $6020: $04
    nop                                           ; $6021: $00
    jr nz, @+$01                                  ; $6022: $20 $ff

    ld a, a                                       ; $6024: $7f
    nop                                           ; $6025: $00
    jr nz, jr_0b6_6035                            ; $6026: $20 $0d

    inc b                                         ; $6028: $04
    nop                                           ; $6029: $00

jr_0b6_602a:
    jr nz, jr_0b6_609e                            ; $602a: $20 $72

    ld a, $9c                                     ; $602c: $3e $9c
    ld d, a                                       ; $602e: $57
    ret                                           ; $602f: $c9


    inc c                                         ; $6030: $0c
    nop                                           ; $6031: $00
    nop                                           ; $6032: $00
    rst $38                                       ; $6033: $ff
    ld [hl], a                                    ; $6034: $77

jr_0b6_6035:
    rst $00                                       ; $6035: $c7
    ld de, $2000                                  ; $6036: $11 $00 $20
    ld [hl+], a                                   ; $6039: $22
    nop                                           ; $603a: $00
    jr jr_0b6_6098                                ; $603b: $18 $5b

    adc l                                         ; $603d: $8d
    ld hl, $7fff                                  ; $603e: $21 $ff $7f
    nop                                           ; $6041: $00
    db $10                                        ; $6042: $10
    ld a, c                                       ; $6043: $79
    ld [de], a                                    ; $6044: $12
    db $eb                                        ; $6045: $eb
    ld h, c                                       ; $6046: $61
    rst $38                                       ; $6047: $ff
    ld a, a                                       ; $6048: $7f
    nop                                           ; $6049: $00
    nop                                           ; $604a: $00
    rst $30                                       ; $604b: $f7
    ld d, [hl]                                    ; $604c: $56
    adc a                                         ; $604d: $8f
    dec e                                         ; $604e: $1d
    cp l                                          ; $604f: $bd
    ld h, a                                       ; $6050: $67
    nop                                           ; $6051: $00
    nop                                           ; $6052: $00
    rst $38                                       ; $6053: $ff
    ld l, e                                       ; $6054: $6b
    ld bc, $ff16                                  ; $6055: $01 $16 $ff
    ld a, a                                       ; $6058: $7f
    nop                                           ; $6059: $00
    nop                                           ; $605a: $00
    nop                                           ; $605b: $00
    jr nz, @+$03                                  ; $605c: $20 $01

    ld d, $ff                                     ; $605e: $16 $ff
    ld a, a                                       ; $6060: $7f
    nop                                           ; $6061: $00
    nop                                           ; $6062: $00
    rst $38                                       ; $6063: $ff
    ld a, a                                       ; $6064: $7f
    nop                                           ; $6065: $00
    jr nz, @+$01                                  ; $6066: $20 $ff

    ld a, a                                       ; $6068: $7f
    jr nz, jr_0b6_606b                            ; $6069: $20 $00

jr_0b6_606b:
    sbc $77                                       ; $606b: $de $77
    ld bc, $6b16                                  ; $606d: $01 $16 $6b
    dec d                                         ; $6070: $15
    ld hl, $d600                                  ; $6071: $21 $00 $d6
    ld c, [hl]                                    ; $6074: $4e
    sbc $73                                       ; $6075: $de $73
    cpl                                           ; $6077: $2f
    dec e                                         ; $6078: $1d
    nop                                           ; $6079: $00
    nop                                           ; $607a: $00
    push de                                       ; $607b: $d5
    ld e, d                                       ; $607c: $5a
    ld b, d                                       ; $607d: $42
    inc l                                         ; $607e: $2c
    sbc a                                         ; $607f: $9f
    ld l, e                                       ; $6080: $6b
    add h                                         ; $6081: $84
    inc b                                         ; $6082: $04
    sub h                                         ; $6083: $94
    ld c, d                                       ; $6084: $4a
    cp l                                          ; $6085: $bd
    ld l, a                                       ; $6086: $6f
    adc l                                         ; $6087: $8d
    dec e                                         ; $6088: $1d
    jr nz, jr_0b6_608b                            ; $6089: $20 $00

jr_0b6_608b:
    sub l                                         ; $608b: $95
    ld b, d                                       ; $608c: $42
    ld bc, $de16                                  ; $608d: $01 $16 $de
    ld a, e                                       ; $6090: $7b
    nop                                           ; $6091: $00
    nop                                           ; $6092: $00
    rst $38                                       ; $6093: $ff
    ld a, a                                       ; $6094: $7f
    nop                                           ; $6095: $00
    jr nz, @-$20                                  ; $6096: $20 $de

jr_0b6_6098:
    ld a, e                                       ; $6098: $7b
    nop                                           ; $6099: $00
    nop                                           ; $609a: $00
    rst $38                                       ; $609b: $ff
    ld a, a                                       ; $609c: $7f
    nop                                           ; $609d: $00

jr_0b6_609e:
    jr nz, @+$31                                  ; $609e: $20 $2f

    dec e                                         ; $60a0: $1d
    ld h, c                                       ; $60a1: $61
    inc b                                         ; $60a2: $04
    sub $4e                                       ; $60a3: $d6 $4e
    jp $bd19                                      ; $60a5: $c3 $19 $bd


    ld h, e                                       ; $60a8: $63
    nop                                           ; $60a9: $00
    inc b                                         ; $60aa: $04
    ld e, a                                       ; $60ab: $5f
    dec de                                        ; $60ac: $1b
    adc l                                         ; $60ad: $8d
    ld hl, $73de                                  ; $60ae: $21 $de $73
    nop                                           ; $60b1: $00
    inc e                                         ; $60b2: $1c
    ld l, $1d                                     ; $60b3: $2e $1d
    ld sp, $5f3a                                  ; $60b5: $31 $3a $5f
    ld e, e                                       ; $60b8: $5b
    nop                                           ; $60b9: $00
    nop                                           ; $60ba: $00
    db $10                                        ; $60bb: $10
    ld a, [hl-]                                   ; $60bc: $3a
    sbc $77                                       ; $60bd: $de $77
    ld c, d                                       ; $60bf: $4a
    add hl, de                                    ; $60c0: $19
    ld h, c                                       ; $60c1: $61
    inc b                                         ; $60c2: $04
    db $10                                        ; $60c3: $10
    ld [hl-], a                                   ; $60c4: $32
    ld [c], a                                     ; $60c5: $e2
    dec d                                         ; $60c6: $15
    jr jr_0b6_6120                                ; $60c7: $18 $57

    nop                                           ; $60c9: $00
    nop                                           ; $60ca: $00
    rst $38                                       ; $60cb: $ff
    ld a, a                                       ; $60cc: $7f
    nop                                           ; $60cd: $00
    jr nz, @+$03                                  ; $60ce: $20 $01

    ld d, $00                                     ; $60d0: $16 $00
    nop                                           ; $60d2: $00
    rst $38                                       ; $60d3: $ff
    ld a, a                                       ; $60d4: $7f
    pop hl                                        ; $60d5: $e1
    dec d                                         ; $60d6: $15
    nop                                           ; $60d7: $00
    jr nz, jr_0b6_611a                            ; $60d8: $20 $40

    inc b                                         ; $60da: $04
    ld [hl], h                                    ; $60db: $74
    ld a, $bd                                     ; $60dc: $3e $bd
    ld l, e                                       ; $60de: $6b
    ld bc, $0116                                  ; $60df: $01 $16 $01
    nop                                           ; $60e2: $00
    ld d, e                                       ; $60e3: $53
    ld b, [hl]                                    ; $60e4: $46
    ld c, e                                       ; $60e5: $4b
    add hl, de                                    ; $60e6: $19
    ld a, h                                       ; $60e7: $7c
    ld h, a                                       ; $60e8: $67
    ld c, d                                       ; $60e9: $4a
    dec e                                         ; $60ea: $1d
    ld a, c                                       ; $60eb: $79
    ld b, d                                       ; $60ec: $42
    xor $31                                       ; $60ed: $ee $31
    ld sp, $0019                                  ; $60ef: $31 $19 $00
    nop                                           ; $60f2: $00
    or d                                          ; $60f3: $b2
    add hl, de                                    ; $60f4: $19
    rst $10                                       ; $60f5: $d7
    ld b, [hl]                                    ; $60f6: $46
    db $fd                                        ; $60f7: $fd
    ld a, [de]                                    ; $60f8: $1a
    jr nz, jr_0b6_60fb                            ; $60f9: $20 $00

jr_0b6_60fb:
    jr c, jr_0b6_6160                             ; $60fb: $38 $63

    call nz, $be15                                ; $60fd: $c4 $15 $be
    ld h, a                                       ; $6100: $67
    nop                                           ; $6101: $00
    nop                                           ; $6102: $00
    rst $38                                       ; $6103: $ff
    ld a, a                                       ; $6104: $7f
    pop hl                                        ; $6105: $e1
    dec d                                         ; $6106: $15
    nop                                           ; $6107: $00
    jr nz, jr_0b6_610a                            ; $6108: $20 $00

jr_0b6_610a:
    nop                                           ; $610a: $00
    rst $38                                       ; $610b: $ff
    ld a, a                                       ; $610c: $7f
    pop hl                                        ; $610d: $e1
    dec d                                         ; $610e: $15
    ld h, b                                       ; $610f: $60
    inc b                                         ; $6110: $04
    nop                                           ; $6111: $00
    nop                                           ; $6112: $00
    ld sp, hl                                     ; $6113: $f9
    ld h, $91                                     ; $6114: $26 $91
    ld de, $73be                                  ; $6116: $11 $be $73
    ld b, h                                       ; $6119: $44

jr_0b6_611a:
    inc b                                         ; $611a: $04
    adc $39                                       ; $611b: $ce $39
    add hl, sp                                    ; $611d: $39
    ld e, e                                       ; $611e: $5b
    ld a, [hl-]                                   ; $611f: $3a

jr_0b6_6120:
    ld [de], a                                    ; $6120: $12
    ld a, [hl+]                                   ; $6121: $2a
    add hl, de                                    ; $6122: $19
    ld [hl], e                                    ; $6123: $73
    ld c, d                                       ; $6124: $4a
    jr c, jr_0b6_6182                             ; $6125: $38 $5b

    cp l                                          ; $6127: $bd
    ld h, a                                       ; $6128: $67
    ld [hl+], a                                   ; $6129: $22
    inc b                                         ; $612a: $04
    rst $10                                       ; $612b: $d7
    dec c                                         ; $612c: $0d
    db $10                                        ; $612d: $10
    ld [hl-], a                                   ; $612e: $32
    rst $30                                       ; $612f: $f7
    ld d, d                                       ; $6130: $52
    ld hl, $b400                                  ; $6131: $21 $00 $b4
    ld de, $6738                                  ; $6134: $11 $38 $67
    ld e, e                                       ; $6137: $5b
    ld [de], a                                    ; $6138: $12
    nop                                           ; $6139: $00
    nop                                           ; $613a: $00
    rst $38                                       ; $613b: $ff
    ld a, a                                       ; $613c: $7f
    pop hl                                        ; $613d: $e1
    dec d                                         ; $613e: $15
    nop                                           ; $613f: $00
    jr nz, @+$22                                  ; $6140: $20 $20

    nop                                           ; $6142: $00
    rst $38                                       ; $6143: $ff
    ld a, a                                       ; $6144: $7f
    pop bc                                        ; $6145: $c1
    dec d                                         ; $6146: $15
    nop                                           ; $6147: $00
    jr nz, jr_0b6_614b                            ; $6148: $20 $01

    nop                                           ; $614a: $00

jr_0b6_614b:
    ld d, l                                       ; $614b: $55
    add hl, bc                                    ; $614c: $09
    ld e, d                                       ; $614d: $5a
    ld e, e                                       ; $614e: $5b
    add hl, sp                                    ; $614f: $39
    ld [de], a                                    ; $6150: $12
    ld b, h                                       ; $6151: $44
    inc b                                         ; $6152: $04
    db $10                                        ; $6153: $10
    ld a, [hl-]                                   ; $6154: $3a
    add hl, sp                                    ; $6155: $39
    ld e, e                                       ; $6156: $5b
    reti                                          ; $6157: $d9


    dec c                                         ; $6158: $0d
    ld d, d                                       ; $6159: $52
    ld b, d                                       ; $615a: $42
    ld hl, sp+$5a                                 ; $615b: $f8 $5a
    or l                                          ; $615d: $b5
    ld c, [hl]                                    ; $615e: $4e
    ld a, e                                       ; $615f: $7b

jr_0b6_6160:
    ld h, a                                       ; $6160: $67
    ld bc, $b000                                  ; $6161: $01 $00 $b0
    dec e                                         ; $6164: $1d
    or l                                          ; $6165: $b5
    ld c, [hl]                                    ; $6166: $4e
    ld e, d                                       ; $6167: $5a
    ld [de], a                                    ; $6168: $12
    ld bc, $2f00                                  ; $6169: $01 $00 $2f
    ld [hl+], a                                   ; $616c: $22
    ld a, [$d92e]                                 ; $616d: $fa $2e $d9
    dec c                                         ; $6170: $0d
    jr nz, jr_0b6_6173                            ; $6171: $20 $00

jr_0b6_6173:
    rst $38                                       ; $6173: $ff
    ld a, a                                       ; $6174: $7f
    pop bc                                        ; $6175: $c1
    ld de, $2000                                  ; $6176: $11 $00 $20
    jr nz, jr_0b6_617b                            ; $6179: $20 $00

jr_0b6_617b:
    rst $38                                       ; $617b: $ff
    ld a, a                                       ; $617c: $7f
    pop bc                                        ; $617d: $c1
    ld de, $2000                                  ; $617e: $11 $00 $20
    ld b, e                                       ; $6181: $43

jr_0b6_6182:
    nop                                           ; $6182: $00
    sub a                                         ; $6183: $97
    dec c                                         ; $6184: $0d
    add hl, sp                                    ; $6185: $39
    ld b, e                                       ; $6186: $43
    dec de                                        ; $6187: $1b
    ld [de], a                                    ; $6188: $12

jr_0b6_6189:
    ld b, h                                       ; $6189: $44
    inc b                                         ; $618a: $04
    rst $08                                       ; $618b: $cf
    dec l                                         ; $618c: $2d
    or l                                          ; $618d: $b5
    ld d, d                                       ; $618e: $52
    cp h                                          ; $618f: $bc
    ld d, $ce                                     ; $6190: $16 $ce
    dec l                                         ; $6192: $2d
    or [hl]                                       ; $6193: $b6
    ld c, [hl]                                    ; $6194: $4e
    add hl, sp                                    ; $6195: $39
    ld e, a                                       ; $6196: $5f
    ld d, d                                       ; $6197: $52
    ld b, [hl]                                    ; $6198: $46
    ld [hl+], a                                   ; $6199: $22
    nop                                           ; $619a: $00
    sub b                                         ; $619b: $90
    ld hl, $52f7                                  ; $619c: $21 $f7 $52
    ld a, h                                       ; $619f: $7c
    ld d, $01                                     ; $61a0: $16 $01
    nop                                           ; $61a2: $00
    or l                                          ; $61a3: $b5
    ld [$151f], sp                                ; $61a4: $08 $1f $15
    ld a, [$0011]                                 ; $61a7: $fa $11 $00
    nop                                           ; $61aa: $00
    rst $38                                       ; $61ab: $ff
    ld a, a                                       ; $61ac: $7f
    pop bc                                        ; $61ad: $c1
    ld de, $2000                                  ; $61ae: $11 $00 $20
    jr nz, jr_0b6_61b3                            ; $61b1: $20 $00

jr_0b6_61b3:
    rst $38                                       ; $61b3: $ff
    ld a, a                                       ; $61b4: $7f
    pop bc                                        ; $61b5: $c1
    ld de, $2000                                  ; $61b6: $11 $00 $20
    nop                                           ; $61b9: $00
    nop                                           ; $61ba: $00
    ldh a, [$08]                                  ; $61bb: $f0 $08
    ld hl, sp+$11                                 ; $61bd: $f8 $11
    cp h                                          ; $61bf: $bc
    ld d, $01                                     ; $61c0: $16 $01
    nop                                           ; $61c2: $00
    reti                                          ; $61c3: $d9


    dec c                                         ; $61c4: $0d
    add hl, sp                                    ; $61c5: $39
    ld e, e                                       ; $61c6: $5b
    ld sp, $5232                                  ; $61c7: $31 $32 $52
    ld b, d                                       ; $61ca: $42
    rst $30                                       ; $61cb: $f7
    ld d, [hl]                                    ; $61cc: $56
    sub l                                         ; $61cd: $95
    ld c, [hl]                                    ; $61ce: $4e
    ld e, d                                       ; $61cf: $5a
    ld h, e                                       ; $61d0: $63
    nop                                           ; $61d1: $00
    inc b                                         ; $61d2: $04
    ld d, d                                       ; $61d3: $52
    ld a, [hl-]                                   ; $61d4: $3a
    ld e, e                                       ; $61d5: $5b
    ld [de], a                                    ; $61d6: $12
    call $0104                                    ; $61d7: $cd $04 $01
    nop                                           ; $61da: $00
    sub [hl]                                      ; $61db: $96

jr_0b6_61dc:
    dec c                                         ; $61dc: $0d
    ld sp, $de08                                  ; $61dd: $31 $08 $de
    dec d                                         ; $61e0: $15
    nop                                           ; $61e1: $00
    nop                                           ; $61e2: $00
    rst $38                                       ; $61e3: $ff
    ld a, a                                       ; $61e4: $7f
    nop                                           ; $61e5: $00
    jr nz, jr_0b6_6189                            ; $61e6: $20 $a1

jr_0b6_61e8:
    ld de, $0000                                  ; $61e8: $11 $00 $00
    rst $38                                       ; $61eb: $ff
    ld a, a                                       ; $61ec: $7f
    and c                                         ; $61ed: $a1
    ld de, $2000                                  ; $61ee: $11 $00 $20
    ld [bc], a                                    ; $61f1: $02
    nop                                           ; $61f2: $00
    db $10                                        ; $61f3: $10
    add hl, bc                                    ; $61f4: $09
    ld a, [hl-]                                   ; $61f5: $3a
    ld [de], a                                    ; $61f6: $12
    sub l                                         ; $61f7: $95
    dec c                                         ; $61f8: $0d
    ld b, h                                       ; $61f9: $44
    nop                                           ; $61fa: $00
    cp b                                          ; $61fb: $b8
    dec c                                         ; $61fc: $0d
    ld d, e                                       ; $61fd: $53
    ld b, d                                       ; $61fe: $42
    add hl, de                                    ; $61ff: $19
    ld d, a                                       ; $6200: $57
    adc h                                         ; $6201: $8c
    dec h                                         ; $6202: $25
    sub h                                         ; $6203: $94
    ld c, d                                       ; $6204: $4a
    add hl, sp                                    ; $6205: $39
    ld e, a                                       ; $6206: $5f
    db $10                                        ; $6207: $10
    ld a, [hl-]                                   ; $6208: $3a
    ld [hl+], a                                   ; $6209: $22
    inc b                                         ; $620a: $04
    xor $25                                       ; $620b: $ee $25
    or l                                          ; $620d: $b5
    ld c, [hl]                                    ; $620e: $4e
    dec sp                                        ; $620f: $3b
    ld [de], a                                    ; $6210: $12
    ld bc, $3600                                  ; $6211: $01 $00 $36
    db $10                                        ; $6214: $10
    sbc l                                         ; $6215: $9d
    ld [de], a                                    ; $6216: $12
    ld [hl], h                                    ; $6217: $74
    dec c                                         ; $6218: $0d
    nop                                           ; $6219: $00
    nop                                           ; $621a: $00
    rst $38                                       ; $621b: $ff
    ld a, a                                       ; $621c: $7f
    nop                                           ; $621d: $00
    jr nz, jr_0b6_6272                            ; $621e: $20 $52

    dec c                                         ; $6220: $0d
    nop                                           ; $6221: $00
    nop                                           ; $6222: $00
    rst $38                                       ; $6223: $ff
    ld a, a                                       ; $6224: $7f
    nop                                           ; $6225: $00
    jr nz, @-$5d                                  ; $6226: $20 $a1

    ld de, $0000                                  ; $6228: $11 $00 $00
    pop de                                        ; $622b: $d1
    inc b                                         ; $622c: $04
    add hl, de                                    ; $622d: $19
    ld c, $dd                                     ; $622e: $0e $dd
    ld d, $00                                     ; $6230: $16 $00
    nop                                           ; $6232: $00
    sub c                                         ; $6233: $91
    ld de, $3e52                                  ; $6234: $11 $52 $3e
    sbc h                                         ; $6237: $9c
    ld d, $ad                                     ; $6238: $16 $ad
    ld sp, $56d6                                  ; $623a: $31 $d6 $56
    sub h                                         ; $623d: $94
    ld c, d                                       ; $623e: $4a
    add hl, sp                                    ; $623f: $39
    ld e, a                                       ; $6240: $5f
    ld [hl+], a                                   ; $6241: $22
    nop                                           ; $6242: $00
    add hl, sp                                    ; $6243: $39
    ld [de], a                                    ; $6244: $12
    ld sp, $0a3e                                  ; $6245: $31 $3e $0a
    dec d                                         ; $6248: $15
    inc bc                                        ; $6249: $03
    nop                                           ; $624a: $00
    ld c, a                                       ; $624b: $4f
    inc b                                         ; $624c: $04
    ld a, l                                       ; $624d: $7d
    ld [de], a                                    ; $624e: $12
    ld e, b                                       ; $624f: $58
    inc d                                         ; $6250: $14
    nop                                           ; $6251: $00
    nop                                           ; $6252: $00
    rst $38                                       ; $6253: $ff
    ld a, a                                       ; $6254: $7f
    nop                                           ; $6255: $00
    jr nz, jr_0b6_61dc                            ; $6256: $20 $84

    inc b                                         ; $6258: $04
    nop                                           ; $6259: $00
    nop                                           ; $625a: $00
    rst $38                                       ; $625b: $ff
    ld a, a                                       ; $625c: $7f
    nop                                           ; $625d: $00
    jr nz, jr_0b6_61e8                            ; $625e: $20 $88

    inc b                                         ; $6260: $04
    nop                                           ; $6261: $00
    nop                                           ; $6262: $00
    inc d                                         ; $6263: $14
    add hl, bc                                    ; $6264: $09
    ld e, l                                       ; $6265: $5d
    ld d, $6d                                     ; $6266: $16 $6d
    inc b                                         ; $6268: $04
    ld bc, $cc00                                  ; $6269: $01 $00 $cc
    dec h                                         ; $626c: $25
    or l                                          ; $626d: $b5
    ld b, [hl]                                    ; $626e: $46
    ret c                                         ; $626f: $d8

jr_0b6_6270:
    dec c                                         ; $6270: $0d
    adc l                                         ; $6271: $8d

jr_0b6_6272:
    ld sp, $4e94                                  ; $6272: $31 $94 $4e
    ld hl, sp+$5a                                 ; $6275: $f8 $5a
    ld e, e                                       ; $6277: $5b
    ld h, a                                       ; $6278: $67
    ld hl, $5a00                                  ; $6279: $21 $00 $5a
    ld [de], a                                    ; $627c: $12
    ld [hl], e                                    ; $627d: $73
    ld a, $5b                                     ; $627e: $3e $5b
    ld c, a                                       ; $6280: $4f
    inc hl                                        ; $6281: $23
    nop                                           ; $6282: $00
    ld d, e                                       ; $6283: $53
    add hl, bc                                    ; $6284: $09
    sbc [hl]                                      ; $6285: $9e
    ld [de], a                                    ; $6286: $12
    sbc [hl]                                      ; $6287: $9e
    inc d                                         ; $6288: $14
    nop                                           ; $6289: $00
    nop                                           ; $628a: $00
    rst $38                                       ; $628b: $ff
    ld a, a                                       ; $628c: $7f
    nop                                           ; $628d: $00
    jr nz, @-$7c                                  ; $628e: $20 $82

    inc b                                         ; $6290: $04
    nop                                           ; $6291: $00
    nop                                           ; $6292: $00
    rst $38                                       ; $6293: $ff
    ld a, a                                       ; $6294: $7f
    nop                                           ; $6295: $00
    jr nz, jr_0b6_6270                            ; $6296: $20 $d8

    dec c                                         ; $6298: $0d
    ld [bc], a                                    ; $6299: $02
    nop                                           ; $629a: $00
    or d                                          ; $629b: $b2
    inc b                                         ; $629c: $04
    dec a                                         ; $629d: $3d
    ld [de], a                                    ; $629e: $12
    adc h                                         ; $629f: $8c
    inc b                                         ; $62a0: $04
    ld b, e                                       ; $62a1: $43
    inc b                                         ; $62a2: $04
    or [hl]                                       ; $62a3: $b6
    ld de, $46d6                                  ; $62a4: $11 $d6 $46
    ld e, e                                       ; $62a7: $5b
    ld [de], a                                    ; $62a8: $12
    ld l, e                                       ; $62a9: $6b
    dec l                                         ; $62aa: $2d
    or l                                          ; $62ab: $b5
    ld c, [hl]                                    ; $62ac: $4e
    ld a, e                                       ; $62ad: $7b
    ld h, a                                       ; $62ae: $67
    rst $28                                       ; $62af: $ef
    add hl, sp                                    ; $62b0: $39
    nop                                           ; $62b1: $00
    nop                                           ; $62b2: $00
    db $10                                        ; $62b3: $10
    dec b                                         ; $62b4: $05
    ld d, e                                       ; $62b5: $53
    ld [hl], $3b                                  ; $62b6: $36 $3b
    ld [de], a                                    ; $62b8: $12
    inc hl                                        ; $62b9: $23
    nop                                           ; $62ba: $00
    ld c, [hl]                                    ; $62bb: $4e
    ld [$0d97], sp                                ; $62bc: $08 $97 $0d
    ld d, [hl]                                    ; $62bf: $56
    inc d                                         ; $62c0: $14
    nop                                           ; $62c1: $00
    nop                                           ; $62c2: $00
    rst $38                                       ; $62c3: $ff
    ld a, a                                       ; $62c4: $7f
    nop                                           ; $62c5: $00
    jr nz, jr_0b6_631e                            ; $62c6: $20 $56

    inc d                                         ; $62c8: $14
    nop                                           ; $62c9: $00
    nop                                           ; $62ca: $00
    rst $38                                       ; $62cb: $ff
    ld a, a                                       ; $62cc: $7f
    nop                                           ; $62cd: $00
    jr nz, @+$5d                                  ; $62ce: $20 $5b

    ld [de], a                                    ; $62d0: $12
    ld bc, $4900                                  ; $62d1: $01 $00 $49
    inc b                                         ; $62d4: $04
    jp nc, Jump_000_0e08                          ; $62d5: $d2 $08 $0e

    inc b                                         ; $62d8: $04
    ld [hl+], a                                   ; $62d9: $22
    nop                                           ; $62da: $00
    ld d, b                                       ; $62db: $50
    dec c                                         ; $62dc: $0d
    jr @+$4d                                      ; $62dd: $18 $4b

    ld a, e                                       ; $62df: $7b
    ld [de], a                                    ; $62e0: $12
    adc $31                                       ; $62e1: $ce $31
    ld [hl], e                                    ; $62e3: $73
    ld b, [hl]                                    ; $62e4: $46
    jr jr_0b6_633e                                ; $62e5: $18 $57

    or l                                          ; $62e7: $b5
    ld b, [hl]                                    ; $62e8: $46
    nop                                           ; $62e9: $00
    nop                                           ; $62ea: $00
    or [hl]                                       ; $62eb: $b6
    dec c                                         ; $62ec: $0d
    cp e                                          ; $62ed: $bb
    ld e, $6b                                     ; $62ee: $1e $6b
    inc b                                         ; $62f0: $04
    ld [bc], a                                    ; $62f1: $02
    nop                                           ; $62f2: $00
    ld d, a                                       ; $62f3: $57
    inc c                                         ; $62f4: $0c
    ld a, [hl]                                    ; $62f5: $7e
    ld de, $040e                                  ; $62f6: $11 $0e $04
    nop                                           ; $62f9: $00
    nop                                           ; $62fa: $00
    rst $38                                       ; $62fb: $ff
    ld a, a                                       ; $62fc: $7f
    nop                                           ; $62fd: $00
    jr nz, jr_0b6_630e                            ; $62fe: $20 $0e

    inc b                                         ; $6300: $04
    nop                                           ; $6301: $00
    nop                                           ; $6302: $00
    rst $38                                       ; $6303: $ff
    ld a, a                                       ; $6304: $7f
    nop                                           ; $6305: $00
    jr nz, jr_0b6_6383                            ; $6306: $20 $7b

    ld [de], a                                    ; $6308: $12
    ld bc, $3400                                  ; $6309: $01 $00 $34
    add hl, bc                                    ; $630c: $09
    ld c, e                                       ; $630d: $4b

jr_0b6_630e:
    nop                                           ; $630e: $00
    ld a, a                                       ; $630f: $7f
    ld [de], a                                    ; $6310: $12
    ld [bc], a                                    ; $6311: $02
    nop                                           ; $6312: $00
    ld [hl-], a                                   ; $6313: $32
    add hl, bc                                    ; $6314: $09
    ld e, $1b                                     ; $6315: $1e $1b
    ld a, [$010d]                                 ; $6317: $fa $0d $01
    nop                                           ; $631a: $00
    adc $25                                       ; $631b: $ce $25
    ld d, e                                       ; $631d: $53

jr_0b6_631e:
    ld b, d                                       ; $631e: $42
    rst $30                                       ; $631f: $f7
    ld d, [hl]                                    ; $6320: $56
    ld bc, $7600                                  ; $6321: $01 $00 $76
    add hl, bc                                    ; $6324: $09
    ld l, [hl]                                    ; $6325: $6e
    inc b                                         ; $6326: $04
    dec a                                         ; $6327: $3d
    ld [de], a                                    ; $6328: $12
    ld bc, $bd00                                  ; $6329: $01 $00 $bd
    dec d                                         ; $632c: $15
    rst $38                                       ; $632d: $ff
    ld a, a                                       ; $632e: $7f
    dec b                                         ; $632f: $05
    nop                                           ; $6330: $00
    nop                                           ; $6331: $00
    nop                                           ; $6332: $00
    rst $38                                       ; $6333: $ff
    ld a, a                                       ; $6334: $7f
    nop                                           ; $6335: $00
    jr nz, jr_0b6_633d                            ; $6336: $20 $05

    nop                                           ; $6338: $00
    nop                                           ; $6339: $00

jr_0b6_633a:
    nop                                           ; $633a: $00
    rst $38                                       ; $633b: $ff
    ld a, a                                       ; $633c: $7f

jr_0b6_633d:
    nop                                           ; $633d: $00

jr_0b6_633e:
    jr nz, jr_0b6_633a                            ; $633e: $20 $fa

    dec c                                         ; $6340: $0d
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    dec a                                         ; $6343: $3d
    ld [de], a                                    ; $6344: $12
    rst $38                                       ; $6345: $ff
    ld a, a                                       ; $6346: $7f
    adc h                                         ; $6347: $8c
    inc b                                         ; $6348: $04
    nop                                           ; $6349: $00
    nop                                           ; $634a: $00
    ld [hl], d                                    ; $634b: $72
    add hl, bc                                    ; $634c: $09
    ld e, l                                       ; $634d: $5d
    dec c                                         ; $634e: $0d
    ld c, c                                       ; $634f: $49
    nop                                           ; $6350: $00
    ld [bc], a                                    ; $6351: $02
    nop                                           ; $6352: $00
    jr nc, jr_0b6_638f                            ; $6353: $30 $3a

    jr c, @+$18                                   ; $6355: $38 $16

    or $56                                        ; $6357: $f6 $56
    dec b                                         ; $6359: $05
    nop                                           ; $635a: $00
    scf                                           ; $635b: $37
    dec c                                         ; $635c: $0d
    ld l, [hl]                                    ; $635d: $6e
    ld [$0e1a], sp                                ; $635e: $08 $1a $0e
    ld [bc], a                                    ; $6361: $02
    nop                                           ; $6362: $00
    sbc l                                         ; $6363: $9d
    ld de, $7fff                                  ; $6364: $11 $ff $7f
    ld [hl], h                                    ; $6367: $74
    inc c                                         ; $6368: $0c
    nop                                           ; $6369: $00

jr_0b6_636a:
    nop                                           ; $636a: $00
    nop                                           ; $636b: $00
    jr nz, @+$01                                  ; $636c: $20 $ff

    ld a, a                                       ; $636e: $7f
    ld [hl], h                                    ; $636f: $74
    inc c                                         ; $6370: $0c
    nop                                           ; $6371: $00
    nop                                           ; $6372: $00
    nop                                           ; $6373: $00
    jr nz, @+$5f                                  ; $6374: $20 $5d

    dec c                                         ; $6376: $0d
    ld c, c                                       ; $6377: $49
    nop                                           ; $6378: $00
    ld bc, $9f00                                  ; $6379: $01 $00 $9f
    ld d, $0f                                     ; $637c: $16 $0f
    inc b                                         ; $637e: $04
    rst $38                                       ; $637f: $ff
    ld a, a                                       ; $6380: $7f
    nop                                           ; $6381: $00
    nop                                           ; $6382: $00

jr_0b6_6383:
    cpl                                           ; $6383: $2f
    inc b                                         ; $6384: $04
    cp h                                          ; $6385: $bc
    ld [$0006], sp                                ; $6386: $08 $06 $00
    ld bc, $5100                                  ; $6389: $01 $00 $51
    add hl, bc                                    ; $638c: $09
    sub $52                                       ; $638d: $d6 $52

jr_0b6_638f:
    xor [hl]                                      ; $638f: $ae
    add hl, hl                                    ; $6390: $29
    ld a, [bc]                                    ; $6391: $0a
    nop                                           ; $6392: $00
    ld d, l                                       ; $6393: $55
    inc c                                         ; $6394: $0c
    dec de                                        ; $6395: $1b
    ld [de], a                                    ; $6396: $12
    ld [hl], b                                    ; $6397: $70
    inc b                                         ; $6398: $04
    nop                                           ; $6399: $00
    nop                                           ; $639a: $00
    rst $38                                       ; $639b: $ff
    ld a, a                                       ; $639c: $7f
    db $10                                        ; $639d: $10
    ld [$0006], sp                                ; $639e: $08 $06 $00
    nop                                           ; $63a1: $00
    nop                                           ; $63a2: $00
    nop                                           ; $63a3: $00
    jr nz, jr_0b6_63b6                            ; $63a4: $20 $10

    ld [$0006], sp                                ; $63a6: $08 $06 $00
    nop                                           ; $63a9: $00
    nop                                           ; $63aa: $00
    nop                                           ; $63ab: $00
    jr nz, jr_0b6_636a                            ; $63ac: $20 $bc

    ld [$0006], sp                                ; $63ae: $08 $06 $00
    nop                                           ; $63b1: $00
    nop                                           ; $63b2: $00
    rst $38                                       ; $63b3: $ff
    ld a, a                                       ; $63b4: $7f
    ld a, c                                       ; $63b5: $79

jr_0b6_63b6:
    dec c                                         ; $63b6: $0d
    inc l                                         ; $63b7: $2c
    inc b                                         ; $63b8: $04
    ld [bc], a                                    ; $63b9: $02
    nop                                           ; $63ba: $00
    ld d, c                                       ; $63bb: $51
    ld [$040b], sp                                ; $63bc: $08 $0b $04
    add hl, sp                                    ; $63bf: $39
    add hl, bc                                    ; $63c0: $09
    ld bc, $b100                                  ; $63c1: $01 $00 $b1
    ld hl, $0c8a                                  ; $63c4: $21 $8a $0c
    sub $4e                                       ; $63c7: $d6 $4e
    ld [bc], a                                    ; $63c9: $02
    nop                                           ; $63ca: $00
    rst $30                                       ; $63cb: $f7
    inc c                                         ; $63cc: $0c
    dec a                                         ; $63cd: $3d
    ld [de], a                                    ; $63ce: $12
    ld c, e                                       ; $63cf: $4b
    inc b                                         ; $63d0: $04
    ld bc, $ff00                                  ; $63d1: $01 $00 $ff
    ld a, a                                       ; $63d4: $7f
    ld c, [hl]                                    ; $63d5: $4e
    ld [$0973], sp                                ; $63d6: $08 $73 $09
    nop                                           ; $63d9: $00
    jr nz, @+$01                                  ; $63da: $20 $ff

    ld a, a                                       ; $63dc: $7f
    ld c, [hl]                                    ; $63dd: $4e
    ld [$0973], sp                                ; $63de: $08 $73 $09
    nop                                           ; $63e1: $00
    jr nz, jr_0b6_6435                            ; $63e2: $20 $51

    ld [$040b], sp                                ; $63e4: $08 $0b $04
    add hl, sp                                    ; $63e7: $39
    add hl, bc                                    ; $63e8: $09
    nop                                           ; $63e9: $00
    nop                                           ; $63ea: $00
    rst $38                                       ; $63eb: $ff
    ld a, a                                       ; $63ec: $7f
    rst $30                                       ; $63ed: $f7
    ld [$0008], sp                                ; $63ee: $08 $08 $00
    nop                                           ; $63f1: $00
    nop                                           ; $63f2: $00
    ld d, d                                       ; $63f3: $52
    db $10                                        ; $63f4: $10
    dec bc                                        ; $63f5: $0b
    inc b                                         ; $63f6: $04
    cp l                                          ; $63f7: $bd
    ld [$0002], sp                                ; $63f8: $08 $02 $00
    ld [de], a                                    ; $63fb: $12
    ld h, $2e                                     ; $63fc: $26 $2e
    nop                                           ; $63fe: $00
    dec b                                         ; $63ff: $05
    dec h                                         ; $6400: $25
    ld b, $00                                     ; $6401: $06 $00
    ld a, e                                       ; $6403: $7b
    inc d                                         ; $6404: $14
    ld c, a                                       ; $6405: $4f
    inc b                                         ; $6406: $04
    cp h                                          ; $6407: $bc
    ld de, $0400                                  ; $6408: $11 $00 $04
    sbc e                                         ; $640b: $9b
    dec c                                         ; $640c: $0d
    rst $38                                       ; $640d: $ff
    ld a, a                                       ; $640e: $7f
    rrca                                          ; $640f: $0f
    inc b                                         ; $6410: $04
    nop                                           ; $6411: $00
    jr nz, @-$63                                  ; $6412: $20 $9b

    dec c                                         ; $6414: $0d
    rst $38                                       ; $6415: $ff
    ld a, a                                       ; $6416: $7f
    rrca                                          ; $6417: $0f
    inc b                                         ; $6418: $04
    nop                                           ; $6419: $00
    jr nz, @+$54                                  ; $641a: $20 $52

    db $10                                        ; $641c: $10
    dec bc                                        ; $641d: $0b
    inc b                                         ; $641e: $04
    cp l                                          ; $641f: $bd
    ld [$0400], sp                                ; $6420: $08 $00 $04
    rst $38                                       ; $6423: $ff
    ld a, a                                       ; $6424: $7f
    dec [hl]                                      ; $6425: $35
    inc b                                         ; $6426: $04
    ld d, $0e                                     ; $6427: $16 $0e
    inc h                                         ; $6429: $24
    nop                                           ; $642a: $00
    ld a, e                                       ; $642b: $7b
    ld [$165c], sp                                ; $642c: $08 $5c $16
    cpl                                           ; $642f: $2f
    inc c                                         ; $6430: $0c
    ld bc, $0f00                                  ; $6431: $01 $00 $0f
    ld [hl-], a                                   ; $6434: $32

jr_0b6_6435:
    adc d                                         ; $6435: $8a
    inc b                                         ; $6436: $04
    ld d, l                                       ; $6437: $55
    nop                                           ; $6438: $00
    ld h, $00                                     ; $6439: $26 $00
    ld a, c                                       ; $643b: $79
    ld de, $0830                                  ; $643c: $11 $30 $08
    ld e, [hl]                                    ; $643f: $5e
    ld d, $00                                     ; $6440: $16 $00
    ld [$7fff], sp                                ; $6442: $08 $ff $7f
    jr jr_0b6_6450                                ; $6445: $18 $09

    dec hl                                        ; $6447: $2b
    nop                                           ; $6448: $00
    nop                                           ; $6449: $00
    jr nz, @+$01                                  ; $644a: $20 $ff

    ld a, a                                       ; $644c: $7f
    jr jr_0b6_6458                                ; $644d: $18 $09

    dec hl                                        ; $644f: $2b

jr_0b6_6450:
    nop                                           ; $6450: $00
    nop                                           ; $6451: $00
    jr nz, @+$7d                                  ; $6452: $20 $7b

    ld [$165c], sp                                ; $6454: $08 $5c $16
    cpl                                           ; $6457: $2f

jr_0b6_6458:
    inc c                                         ; $6458: $0c
    nop                                           ; $6459: $00
    nop                                           ; $645a: $00
    rst $38                                       ; $645b: $ff
    ld a, a                                       ; $645c: $7f
    ld sp, hl                                     ; $645d: $f9
    inc c                                         ; $645e: $0c
    nop                                           ; $645f: $00
    jr nz, jr_0b6_6462                            ; $6460: $20 $00

jr_0b6_6462:
    nop                                           ; $6462: $00
    cpl                                           ; $6463: $2f
    ld [$0d53], sp                                ; $6464: $08 $53 $0d
    ei                                            ; $6467: $fb
    ld de, $0000                                  ; $6468: $11 $00 $00
    rst $38                                       ; $646b: $ff
    ld a, a                                       ; $646c: $7f
    jr jr_0b6_6478                                ; $646d: $18 $09

    dec hl                                        ; $646f: $2b
    nop                                           ; $6470: $00
    nop                                           ; $6471: $00
    nop                                           ; $6472: $00
    rst $38                                       ; $6473: $ff
    ld a, a                                       ; $6474: $7f
    jr jr_0b6_6480                                ; $6475: $18 $09

    dec hl                                        ; $6477: $2b

jr_0b6_6478:
    nop                                           ; $6478: $00
    nop                                           ; $6479: $00
    nop                                           ; $647a: $00
    rst $38                                       ; $647b: $ff
    ld a, a                                       ; $647c: $7f
    nop                                           ; $647d: $00
    jr nz, jr_0b6_64ab                            ; $647e: $20 $2b

jr_0b6_6480:
    nop                                           ; $6480: $00
    nop                                           ; $6481: $00
    jr nz, @+$01                                  ; $6482: $20 $ff

    ld a, a                                       ; $6484: $7f
    nop                                           ; $6485: $00
    jr nz, jr_0b6_64b3                            ; $6486: $20 $2b

    nop                                           ; $6488: $00
    nop                                           ; $6489: $00
    jr nz, @+$31                                  ; $648a: $20 $2f

    ld [$0d53], sp                                ; $648c: $08 $53 $0d
    ei                                            ; $648f: $fb
    ld de, $0000                                  ; $6490: $11 $00 $00

jr_0b6_6493:
    rst $38                                       ; $6493: $ff
    ld a, a                                       ; $6494: $7f
    nop                                           ; $6495: $00
    jr nz, jr_0b6_6493                            ; $6496: $20 $fb

    ld de, $0000                                  ; $6498: $11 $00 $00

jr_0b6_649b:
    rst $38                                       ; $649b: $ff
    ld a, a                                       ; $649c: $7f
    nop                                           ; $649d: $00
    jr nz, jr_0b6_649b                            ; $649e: $20 $fb

    ld de, $0000                                  ; $64a0: $11 $00 $00
    nop                                           ; $64a3: $00
    jr nz, jr_0b6_64a6                            ; $64a4: $20 $00

jr_0b6_64a6:
    jr nz, jr_0b6_64d3                            ; $64a6: $20 $2b

    nop                                           ; $64a8: $00
    nop                                           ; $64a9: $00
    nop                                           ; $64aa: $00

jr_0b6_64ab:
    nop                                           ; $64ab: $00
    jr nz, jr_0b6_64ae                            ; $64ac: $20 $00

jr_0b6_64ae:
    jr nz, jr_0b6_64db                            ; $64ae: $20 $2b

    nop                                           ; $64b0: $00
    nop                                           ; $64b1: $00
    nop                                           ; $64b2: $00

jr_0b6_64b3:
    nop                                           ; $64b3: $00
    jr nz, jr_0b6_64b6                            ; $64b4: $20 $00

jr_0b6_64b6:
    jr nz, jr_0b6_64e3                            ; $64b6: $20 $2b

    nop                                           ; $64b8: $00
    nop                                           ; $64b9: $00
    jr nz, jr_0b6_64bc                            ; $64ba: $20 $00

jr_0b6_64bc:
    jr nz, jr_0b6_64be                            ; $64bc: $20 $00

jr_0b6_64be:
    jr nz, @+$2d                                  ; $64be: $20 $2b

    nop                                           ; $64c0: $00
    nop                                           ; $64c1: $00
    jr nz, jr_0b6_64c4                            ; $64c2: $20 $00

jr_0b6_64c4:
    jr nz, jr_0b6_64c6                            ; $64c4: $20 $00

jr_0b6_64c6:
    jr nz, jr_0b6_651c                            ; $64c6: $20 $54

    ld [$2000], sp                                ; $64c8: $08 $00 $20
    nop                                           ; $64cb: $00
    jr nz, jr_0b6_64ce                            ; $64cc: $20 $00

jr_0b6_64ce:
    jr nz, jr_0b6_6524                            ; $64ce: $20 $54

    ld [$0400], sp                                ; $64d0: $08 $00 $04

jr_0b6_64d3:
    rst $18                                       ; $64d3: $df
    inc b                                         ; $64d4: $04
    nop                                           ; $64d5: $00
    inc d                                         ; $64d6: $14
    nop                                           ; $64d7: $00
    jr nz, jr_0b6_64db                            ; $64d8: $20 $01

jr_0b6_64da:
    inc b                                         ; $64da: $04

jr_0b6_64db:
    or e                                          ; $64db: $b3
    nop                                           ; $64dc: $00
    ld e, [hl]                                    ; $64dd: $5e
    ld bc, $006a                                  ; $64de: $01 $6a $00
    nop                                           ; $64e1: $00
    inc b                                         ; $64e2: $04

jr_0b6_64e3:
    ld c, d                                       ; $64e3: $4a
    nop                                           ; $64e4: $00
    nop                                           ; $64e5: $00
    inc e                                         ; $64e6: $1c
    nop                                           ; $64e7: $00
    jr nz, jr_0b6_64ea                            ; $64e8: $20 $00

jr_0b6_64ea:
    jr nz, @+$4c                                  ; $64ea: $20 $4a

    nop                                           ; $64ec: $00
    nop                                           ; $64ed: $00
    inc e                                         ; $64ee: $1c
    nop                                           ; $64ef: $00
    jr nz, jr_0b6_64f2                            ; $64f0: $20 $00

jr_0b6_64f2:
    jr nz, @+$4c                                  ; $64f2: $20 $4a

    nop                                           ; $64f4: $00
    nop                                           ; $64f5: $00
    inc e                                         ; $64f6: $1c

jr_0b6_64f7:
    nop                                           ; $64f7: $00
    jr nz, jr_0b6_64fa                            ; $64f8: $20 $00

jr_0b6_64fa:
    jr nz, jr_0b6_64db                            ; $64fa: $20 $df

    inc b                                         ; $64fc: $04
    nop                                           ; $64fd: $00
    inc d                                         ; $64fe: $14

jr_0b6_64ff:
    nop                                           ; $64ff: $00
    jr nz, jr_0b6_6502                            ; $6500: $20 $00

jr_0b6_6502:
    jr nz, jr_0b6_64e3                            ; $6502: $20 $df

    inc b                                         ; $6504: $04
    nop                                           ; $6505: $00
    inc d                                         ; $6506: $14

jr_0b6_6507:
    nop                                           ; $6507: $00
    jr nz, jr_0b6_650a                            ; $6508: $20 $00

jr_0b6_650a:
    nop                                           ; $650a: $00
    sbc [hl]                                      ; $650b: $9e
    ld bc, $008d                                  ; $650c: $01 $8d $00
    nop                                           ; $650f: $00
    inc e                                         ; $6510: $1c
    nop                                           ; $6511: $00
    inc b                                         ; $6512: $04

jr_0b6_6513:
    db $db                                        ; $6513: $db
    nop                                           ; $6514: $00
    adc [hl]                                      ; $6515: $8e
    inc b                                         ; $6516: $04
    sbc [hl]                                      ; $6517: $9e
    ld bc, $0400                                  ; $6518: $01 $00 $04

jr_0b6_651b:
    sub e                                         ; $651b: $93

jr_0b6_651c:
    nop                                           ; $651c: $00
    nop                                           ; $651d: $00

jr_0b6_651e:
    inc e                                         ; $651e: $1c
    nop                                           ; $651f: $00
    jr nz, jr_0b6_6522                            ; $6520: $20 $00

jr_0b6_6522:
    jr nz, @-$6b                                  ; $6522: $20 $93

jr_0b6_6524:
    nop                                           ; $6524: $00
    nop                                           ; $6525: $00
    inc e                                         ; $6526: $1c
    nop                                           ; $6527: $00
    jr nz, jr_0b6_652a                            ; $6528: $20 $00

jr_0b6_652a:
    jr nz, @-$6b                                  ; $652a: $20 $93

    nop                                           ; $652c: $00
    nop                                           ; $652d: $00
    inc e                                         ; $652e: $1c
    nop                                           ; $652f: $00
    jr nz, jr_0b6_6532                            ; $6530: $20 $00

jr_0b6_6532:
    jr nz, @-$60                                  ; $6532: $20 $9e

    ld bc, $008d                                  ; $6534: $01 $8d $00
    nop                                           ; $6537: $00
    inc e                                         ; $6538: $1c
    nop                                           ; $6539: $00
    jr nz, jr_0b6_64da                            ; $653a: $20 $9e

    ld bc, $008d                                  ; $653c: $01 $8d $00
    nop                                           ; $653f: $00
    inc e                                         ; $6540: $1c
    nop                                           ; $6541: $00
    ld [$00b2], sp                                ; $6542: $08 $b2 $00
    ld c, d                                       ; $6545: $4a
    nop                                           ; $6546: $00
    sbc [hl]                                      ; $6547: $9e
    ld bc, $0000                                  ; $6548: $01 $00 $00
    ld [hl], b                                    ; $654b: $70
    dec h                                         ; $654c: $25
    db $db                                        ; $654d: $db
    inc b                                         ; $654e: $04
    ld a, [bc]                                    ; $654f: $0a
    nop                                           ; $6550: $00
    nop                                           ; $6551: $00
    nop                                           ; $6552: $00
    or a                                          ; $6553: $b7
    nop                                           ; $6554: $00
    nop                                           ; $6555: $00
    jr nz, jr_0b6_64f7                            ; $6556: $20 $9f

    dec b                                         ; $6558: $05
    nop                                           ; $6559: $00
    jr nz, jr_0b6_6513                            ; $655a: $20 $b7

    nop                                           ; $655c: $00
    nop                                           ; $655d: $00
    jr nz, jr_0b6_64ff                            ; $655e: $20 $9f

    dec b                                         ; $6560: $05
    nop                                           ; $6561: $00
    jr nz, jr_0b6_651b                            ; $6562: $20 $b7

    nop                                           ; $6564: $00
    nop                                           ; $6565: $00
    jr nz, jr_0b6_6507                            ; $6566: $20 $9f

    dec b                                         ; $6568: $05
    nop                                           ; $6569: $00
    jr nz, jr_0b6_651e                            ; $656a: $20 $b2

    nop                                           ; $656c: $00
    ld c, d                                       ; $656d: $4a
    nop                                           ; $656e: $00
    sbc [hl]                                      ; $656f: $9e
    ld bc, $2000                                  ; $6570: $01 $00 $20
    or d                                          ; $6573: $b2
    nop                                           ; $6574: $00
    ld c, d                                       ; $6575: $4a
    nop                                           ; $6576: $00

jr_0b6_6577:
    sbc [hl]                                      ; $6577: $9e
    ld bc, $0c20                                  ; $6578: $01 $20 $0c
    db $d3                                        ; $657b: $d3
    nop                                           ; $657c: $00
    cp e                                          ; $657d: $bb
    ld c, d                                       ; $657e: $4a
    dec l                                         ; $657f: $2d
    ld hl, $0060                                  ; $6580: $21 $60 $00
    jr c, jr_0b6_65bf                             ; $6583: $38 $3a

    adc e                                         ; $6585: $8b
    dec h                                         ; $6586: $25
    ccf                                           ; $6587: $3f
    ld e, e                                       ; $6588: $5b
    nop                                           ; $6589: $00
    nop                                           ; $658a: $00
    rst $38                                       ; $658b: $ff
    ld a, a                                       ; $658c: $7f
    nop                                           ; $658d: $00
    jr nz, @+$41                                  ; $658e: $20 $3f

    ld e, e                                       ; $6590: $5b
    nop                                           ; $6591: $00
    jr nz, @+$01                                  ; $6592: $20 $ff

    ld a, a                                       ; $6594: $7f
    nop                                           ; $6595: $00
    jr nz, @+$41                                  ; $6596: $20 $3f

    ld e, e                                       ; $6598: $5b
    nop                                           ; $6599: $00
    jr nz, @+$01                                  ; $659a: $20 $ff

    ld a, a                                       ; $659c: $7f
    nop                                           ; $659d: $00
    jr nz, @+$41                                  ; $659e: $20 $3f

    ld e, e                                       ; $65a0: $5b
    nop                                           ; $65a1: $00
    jr nz, jr_0b6_6577                            ; $65a2: $20 $d3

    nop                                           ; $65a4: $00
    cp e                                          ; $65a5: $bb
    ld c, d                                       ; $65a6: $4a
    dec l                                         ; $65a7: $2d
    ld hl, $2000                                  ; $65a8: $21 $00 $20
    db $d3                                        ; $65ab: $d3
    nop                                           ; $65ac: $00
    cp e                                          ; $65ad: $bb
    ld c, d                                       ; $65ae: $4a
    dec l                                         ; $65af: $2d
    ld hl, $0840                                  ; $65b0: $21 $40 $08
    ldh a, [$3d]                                  ; $65b3: $f0 $3d
    nop                                           ; $65b5: $00
    ld b, $9f                                     ; $65b6: $06 $9f
    ld l, e                                       ; $65b8: $6b
    add c                                         ; $65b9: $81
    nop                                           ; $65ba: $00
    ld e, l                                       ; $65bb: $5d
    ld l, e                                       ; $65bc: $6b
    ld h, b                                       ; $65bd: $60
    ld a, [bc]                                    ; $65be: $0a

jr_0b6_65bf:
    ld [hl], b                                    ; $65bf: $70
    add hl, hl                                    ; $65c0: $29
    nop                                           ; $65c1: $00
    nop                                           ; $65c2: $00
    rst $38                                       ; $65c3: $ff
    ld a, a                                       ; $65c4: $7f
    nop                                           ; $65c5: $00
    jr nz, @+$66                                  ; $65c6: $20 $64

    stop                                          ; $65c8: $10 $00
    nop                                           ; $65ca: $00
    nop                                           ; $65cb: $00

jr_0b6_65cc:
    jr nz, jr_0b6_65ce                            ; $65cc: $20 $00

jr_0b6_65ce:
    jr nz, @+$66                                  ; $65ce: $20 $64

    stop                                          ; $65d0: $10 $00
    jr nz, jr_0b6_65d4                            ; $65d2: $20 $00

jr_0b6_65d4:
    jr nz, jr_0b6_65d6                            ; $65d4: $20 $00

jr_0b6_65d6:
    jr nz, jr_0b6_663c                            ; $65d6: $20 $64

    stop                                          ; $65d8: $10 $00
    jr nz, jr_0b6_65cc                            ; $65da: $20 $f0

    dec a                                         ; $65dc: $3d
    nop                                           ; $65dd: $00
    ld b, $9f                                     ; $65de: $06 $9f
    ld l, e                                       ; $65e0: $6b
    nop                                           ; $65e1: $00
    nop                                           ; $65e2: $00
    nop                                           ; $65e3: $00
    jr nz, jr_0b6_65e6                            ; $65e4: $20 $00

jr_0b6_65e6:
    ld b, $9f                                     ; $65e6: $06 $9f
    ld l, e                                       ; $65e8: $6b
    ld b, b                                       ; $65e9: $40
    nop                                           ; $65ea: $00
    rst $38                                       ; $65eb: $ff
    ld a, a                                       ; $65ec: $7f
    add b                                         ; $65ed: $80
    ld b, $ef                                     ; $65ee: $06 $ef
    dec a                                         ; $65f0: $3d
    ld b, b                                       ; $65f1: $40
    nop                                           ; $65f2: $00
    ld e, e                                       ; $65f3: $5b
    ld b, d                                       ; $65f4: $42
    ld [hl], b                                    ; $65f5: $70
    add hl, hl                                    ; $65f6: $29
    ld e, a                                       ; $65f7: $5f
    ld e, e                                       ; $65f8: $5b
    ld [bc], a                                    ; $65f9: $02
    nop                                           ; $65fa: $00
    ld e, a                                       ; $65fb: $5f
    dec h                                         ; $65fc: $25
    rst $38                                       ; $65fd: $ff
    ld a, a                                       ; $65fe: $7f
    ld h, h                                       ; $65ff: $64
    stop                                          ; $6600: $10 $00
    nop                                           ; $6602: $00
    rst $38                                       ; $6603: $ff
    ld a, a                                       ; $6604: $7f
    nop                                           ; $6605: $00
    jr nz, jr_0b6_666c                            ; $6606: $20 $64

    stop                                          ; $6608: $10 $00
    jr nz, @+$01                                  ; $660a: $20 $ff

    ld a, a                                       ; $660c: $7f
    nop                                           ; $660d: $00
    jr nz, jr_0b6_6674                            ; $660e: $20 $64

    stop                                          ; $6610: $10 $00
    jr nz, @+$01                                  ; $6612: $20 $ff

    ld a, a                                       ; $6614: $7f
    add b                                         ; $6615: $80

jr_0b6_6616:
    ld b, $ef                                     ; $6616: $06 $ef
    dec a                                         ; $6618: $3d
    nop                                           ; $6619: $00
    ld [$0c9c], sp                                ; $661a: $08 $9c $0c
    rst $38                                       ; $661d: $ff
    ld c, a                                       ; $661e: $4f
    rrc h                                         ; $661f: $cb $0c
    nop                                           ; $6621: $00
    nop                                           ; $6622: $00
    rst $18                                       ; $6623: $df
    dec [hl]                                      ; $6624: $35
    ret z                                         ; $6625: $c8

    inc d                                         ; $6626: $14
    cp l                                          ; $6627: $bd
    ld c, [hl]                                    ; $6628: $4e
    ld h, h                                       ; $6629: $64
    ld [$5b3e], sp                                ; $662a: $08 $3e $5b
    ld [hl], b                                    ; $662d: $70
    add hl, hl                                    ; $662e: $29
    rra                                           ; $662f: $1f
    inc b                                         ; $6630: $04
    inc h                                         ; $6631: $24
    ld [$2a98], sp                                ; $6632: $08 $98 $2a
    inc e                                         ; $6635: $1c
    nop                                           ; $6636: $00
    adc d                                         ; $6637: $8a
    nop                                           ; $6638: $00
    nop                                           ; $6639: $00
    nop                                           ; $663a: $00
    rst $38                                       ; $663b: $ff

jr_0b6_663c:
    ld a, a                                       ; $663c: $7f
    nop                                           ; $663d: $00
    jr nz, jr_0b6_66a4                            ; $663e: $20 $64

    stop                                          ; $6640: $10 $00
    jr nz, @+$01                                  ; $6642: $20 $ff

    ld a, a                                       ; $6644: $7f
    nop                                           ; $6645: $00
    jr nz, @+$66                                  ; $6646: $20 $64

    stop                                          ; $6648: $10 $00
    nop                                           ; $664a: $00
    nop                                           ; $664b: $00
    jr nz, jr_0b6_6616                            ; $664c: $20 $c8

    inc d                                         ; $664e: $14
    cp l                                          ; $664f: $bd
    ld c, [hl]                                    ; $6650: $4e
    inc bc                                        ; $6651: $03
    nop                                           ; $6652: $00
    cp $1b                                        ; $6653: $fe $1b
    ld a, [de]                                    ; $6655: $1a
    nop                                           ; $6656: $00
    xor l                                         ; $6657: $ad
    dec b                                         ; $6658: $05
    nop                                           ; $6659: $00
    nop                                           ; $665a: $00
    ld e, a                                       ; $665b: $5f
    ld [$4ebd], sp                                ; $665c: $08 $bd $4e
    ld e, c                                       ; $665f: $59
    add hl, hl                                    ; $6660: $29
    inc bc                                        ; $6661: $03
    nop                                           ; $6662: $00
    ld de, $ff16                                  ; $6663: $11 $16 $ff
    ld d, d                                       ; $6666: $52
    cp $13                                        ; $6667: $fe $13
    inc b                                         ; $6669: $04
    nop                                           ; $666a: $00
    or h                                          ; $666b: $b4

jr_0b6_666c:
    ld c, $fe                                     ; $666c: $0e $fe
    dec de                                        ; $666e: $1b
    and l                                         ; $666f: $a5
    inc d                                         ; $6670: $14
    nop                                           ; $6671: $00
    nop                                           ; $6672: $00
    rst $38                                       ; $6673: $ff

jr_0b6_6674:
    ld a, a                                       ; $6674: $7f
    and l                                         ; $6675: $a5
    inc d                                         ; $6676: $14
    add $18                                       ; $6677: $c6 $18
    nop                                           ; $6679: $00
    jr nz, jr_0b6_66dd                            ; $667a: $20 $61

    ld [$14a5], sp                                ; $667c: $08 $a5 $14
    add $18                                       ; $667f: $c6 $18
    nop                                           ; $6681: $00
    nop                                           ; $6682: $00
    nop                                           ; $6683: $00
    jr nz, @-$41                                  ; $6684: $20 $bd

    ld c, [hl]                                    ; $6686: $4e
    ld e, c                                       ; $6687: $59
    add hl, hl                                    ; $6688: $29
    ld b, c                                       ; $6689: $41
    nop                                           ; $668a: $00
    add hl, sp                                    ; $668b: $39
    inc de                                        ; $668c: $13
    xor h                                         ; $668d: $ac
    ld bc, $000b                                  ; $668e: $01 $0b $00
    ld h, h                                       ; $6691: $64
    inc b                                         ; $6692: $04
    rst $18                                       ; $6693: $df
    inc e                                         ; $6694: $1c
    dec d                                         ; $6695: $15
    nop                                           ; $6696: $00
    ld e, a                                       ; $6697: $5f
    ld c, a                                       ; $6698: $4f
    nop                                           ; $6699: $00
    nop                                           ; $669a: $00
    ld [hl], b                                    ; $669b: $70
    add hl, hl                                    ; $669c: $29
    rra                                           ; $669d: $1f
    ld d, e                                       ; $669e: $53
    db $d3                                        ; $669f: $d3
    ld c, $03                                     ; $66a0: $0e $03
    nop                                           ; $66a2: $00
    cp b                                          ; $66a3: $b8

jr_0b6_66a4:
    ld e, $49                                     ; $66a4: $1e $49
    dec e                                         ; $66a6: $1d
    rst $38                                       ; $66a7: $ff
    rra                                           ; $66a8: $1f
    nop                                           ; $66a9: $00
    nop                                           ; $66aa: $00
    ld [$4a21], sp                                ; $66ab: $08 $21 $4a
    add hl, hl                                    ; $66ae: $29
    ld h, c                                       ; $66af: $61
    ld [$2000], sp                                ; $66b0: $08 $00 $20
    dec de                                        ; $66b3: $1b
    ld e, a                                       ; $66b4: $5f
    ld c, e                                       ; $66b5: $4b
    dec h                                         ; $66b6: $25
    ld h, c                                       ; $66b7: $61
    ld [$0000], sp                                ; $66b8: $08 $00 $00
    rst $38                                       ; $66bb: $ff
    ld a, a                                       ; $66bc: $7f
    nop                                           ; $66bd: $00
    jr nz, jr_0b6_671f                            ; $66be: $20 $5f

    ld c, a                                       ; $66c0: $4f
    add h                                         ; $66c1: $84
    ld [$17bc], sp                                ; $66c2: $08 $bc $17
    pop af                                        ; $66c5: $f1
    ld de, $637f                                  ; $66c6: $11 $7f $63
    nop                                           ; $66c9: $00
    nop                                           ; $66ca: $00
    cp l                                          ; $66cb: $bd
    dec bc                                        ; $66cc: $0b
    rst $38                                       ; $66cd: $ff
    ld [hl], a                                    ; $66ce: $77
    ld l, a                                       ; $66cf: $6f
    dec b                                         ; $66d0: $05
    nop                                           ; $66d1: $00
    nop                                           ; $66d2: $00
    db $fd                                        ; $66d3: $fd
    ld d, d                                       ; $66d4: $52
    ld l, a                                       ; $66d5: $6f
    add hl, hl                                    ; $66d6: $29
    ld a, [bc]                                    ; $66d7: $0a
    nop                                           ; $66d8: $00
    dec b                                         ; $66d9: $05
    inc b                                         ; $66da: $04
    xor l                                         ; $66db: $ad
    dec [hl]                                      ; $66dc: $35

jr_0b6_66dd:
    ld e, h                                       ; $66dd: $5c
    ld b, [hl]                                    ; $66de: $46
    rst $38                                       ; $66df: $ff
    ld a, a                                       ; $66e0: $7f
    ld h, c                                       ; $66e1: $61
    ld [$4656], sp                                ; $66e2: $08 $56 $46
    adc h                                         ; $66e5: $8c
    ld sp, $7fff                                  ; $66e6: $31 $ff $7f
    nop                                           ; $66e9: $00
    inc e                                         ; $66ea: $1c
    ld a, $5f                                     ; $66eb: $3e $5f
    ld b, c                                       ; $66ed: $41
    inc b                                         ; $66ee: $04
    ld c, [hl]                                    ; $66ef: $4e
    ld hl, $0400                                  ; $66f0: $21 $00 $04
    rst $38                                       ; $66f3: $ff
    ld a, a                                       ; $66f4: $7f
    db $10                                        ; $66f5: $10
    ld b, d                                       ; $66f6: $42
    ld a, h                                       ; $66f7: $7c
    db $10                                        ; $66f8: $10
    ld h, [hl]                                    ; $66f9: $66
    inc c                                         ; $66fa: $0c
    sbc [hl]                                      ; $66fb: $9e
    ld b, [hl]                                    ; $66fc: $46
    ld a, e                                       ; $66fd: $7b
    dec h                                         ; $66fe: $25
    ld a, a                                       ; $66ff: $7f
    ld l, e                                       ; $6700: $6b
    ld h, e                                       ; $6701: $63
    inc b                                         ; $6702: $04
    ld a, e                                       ; $6703: $7b
    inc de                                        ; $6704: $13
    call nc, $df56                                ; $6705: $d4 $56 $df
    ld l, a                                       ; $6708: $6f
    inc b                                         ; $6709: $04
    nop                                           ; $670a: $00
    db $fd                                        ; $670b: $fd
    ld a, $6e                                     ; $670c: $3e $6e
    add hl, hl                                    ; $670e: $29
    sbc a                                         ; $670f: $9f
    ld l, e                                       ; $6710: $6b
    inc b                                         ; $6711: $04
    nop                                           ; $6712: $00
    ld a, [c]                                     ; $6713: $f2
    dec a                                         ; $6714: $3d
    ld e, a                                       ; $6715: $5f
    scf                                           ; $6716: $37
    cp a                                          ; $6717: $bf
    ld [hl], e                                    ; $6718: $73
    ld h, c                                       ; $6719: $61
    ld [$3df1], sp                                ; $671a: $08 $f1 $3d
    sbc l                                         ; $671d: $9d
    ld b, [hl]                                    ; $671e: $46

jr_0b6_671f:
    rst $38                                       ; $671f: $ff
    ld a, a                                       ; $6720: $7f
    nop                                           ; $6721: $00
    inc e                                         ; $6722: $1c
    ld a, e                                       ; $6723: $7b
    ld b, [hl]                                    ; $6724: $46
    ld c, h                                       ; $6725: $4c
    add hl, hl                                    ; $6726: $29
    rst $18                                       ; $6727: $df
    ld [hl], e                                    ; $6728: $73
    nop                                           ; $6729: $00
    nop                                           ; $672a: $00
    ld [hl], e                                    ; $672b: $73
    ld c, [hl]                                    ; $672c: $4e
    rst $38                                       ; $672d: $ff
    ld a, a                                       ; $672e: $7f
    rst $38                                       ; $672f: $ff
    inc e                                         ; $6730: $1c
    ld h, e                                       ; $6731: $63
    inc c                                         ; $6732: $0c
    ld sp, hl                                     ; $6733: $f9
    ld sp, $5f3e                                  ; $6734: $31 $3e $5f
    sbc l                                         ; $6737: $9d
    db $10                                        ; $6738: $10
    ld hl, $9b08                                  ; $6739: $21 $08 $9b
    rra                                           ; $673c: $1f
    sbc a                                         ; $673d: $9f
    ld l, a                                       ; $673e: $6f
    jr nc, jr_0b6_6743                            ; $673f: $30 $02

    nop                                           ; $6741: $00
    nop                                           ; $6742: $00

jr_0b6_6743:
    rst $38                                       ; $6743: $ff
    inc hl                                        ; $6744: $23
    adc [hl]                                      ; $6745: $8e
    dec l                                         ; $6746: $2d
    rst $18                                       ; $6747: $df
    ld [hl], e                                    ; $6748: $73
    inc bc                                        ; $6749: $03
    nop                                           ; $674a: $00
    call c, $ff56                                 ; $674b: $dc $56 $ff
    ld a, a                                       ; $674e: $7f
    rst $38                                       ; $674f: $ff
    inc hl                                        ; $6750: $23
    ld h, c                                       ; $6751: $61
    ld [$4e96], sp                                ; $6752: $08 $96 $4e
    sbc [hl]                                      ; $6755: $9e
    ld l, a                                       ; $6756: $6f
    ld c, [hl]                                    ; $6757: $4e
    ld hl, $0842                                  ; $6758: $21 $42 $08
    or d                                          ; $675b: $b2
    dec l                                         ; $675c: $2d
    ld e, a                                       ; $675d: $5f
    ld e, a                                       ; $675e: $5f
    nop                                           ; $675f: $00
    jr nz, jr_0b6_6762                            ; $6760: $20 $00

jr_0b6_6762:
    nop                                           ; $6762: $00
    sub $5a                                       ; $6763: $d6 $5a
    rst $38                                       ; $6765: $ff
    ld a, a                                       ; $6766: $7f
    nop                                           ; $6767: $00
    jr nz, jr_0b6_67d0                            ; $6768: $20 $66

    inc c                                         ; $676a: $0c
    ld a, [de]                                    ; $676b: $1a
    ld [hl], $fe                                  ; $676c: $36 $fe
    ld d, d                                       ; $676e: $52
    ld sp, $2319                                  ; $676f: $31 $19 $23
    inc b                                         ; $6772: $04
    cp e                                          ; $6773: $bb
    dec [hl]                                      ; $6774: $35
    ld [hl], c                                    ; $6775: $71
    dec h                                         ; $6776: $25
    ld a, $5f                                     ; $6777: $3e $5f
    ld bc, $7410                                  ; $6779: $01 $10 $74
    ld a, l                                       ; $677c: $7d
    rst $38                                       ; $677d: $ff
    inc hl                                        ; $677e: $23
    xor l                                         ; $677f: $ad
    add hl, bc                                    ; $6780: $09
    ld [hl+], a                                   ; $6781: $22
    inc b                                         ; $6782: $04
    cp l                                          ; $6783: $bd
    ld c, d                                       ; $6784: $4a
    rst $18                                       ; $6785: $df
    ld [hl], a                                    ; $6786: $77
    db $10                                        ; $6787: $10
    dec d                                         ; $6788: $15
    ld b, b                                       ; $6789: $40
    inc b                                         ; $678a: $04
    rst $30                                       ; $678b: $f7
    ld e, [hl]                                    ; $678c: $5e
    ld e, a                                       ; $678d: $5f
    ld h, e                                       ; $678e: $63

jr_0b6_678f:
    ld c, e                                       ; $678f: $4b
    dec h                                         ; $6790: $25
    nop                                           ; $6791: $00
    jr nz, @+$7c                                  ; $6792: $20 $7a

    ld b, [hl]                                    ; $6794: $46
    ld b, c                                       ; $6795: $41
    inc b                                         ; $6796: $04
    ld [$0018], a                                 ; $6797: $ea $18 $00
    inc c                                         ; $679a: $0c
    ld [hl], a                                    ; $679b: $77
    ld c, d                                       ; $679c: $4a
    rst $38                                       ; $679d: $ff
    ld a, a                                       ; $679e: $7f
    ld sp, $c91d                                  ; $679f: $31 $1d $c9
    inc d                                         ; $67a2: $14
    dec d                                         ; $67a3: $15
    ld a, [hl-]                                   ; $67a4: $3a
    sbc $4e                                       ; $67a5: $de $4e
    dec sp                                        ; $67a7: $3b
    ld a, [hl-]                                   ; $67a8: $3a
    ld b, d                                       ; $67a9: $42
    ld [$001b], sp                                ; $67aa: $08 $1b $00
    db $dd                                        ; $67ad: $dd
    ld sp, $52fe                                  ; $67ae: $31 $fe $52
    ld bc, $1610                                  ; $67b1: $01 $10 $16
    ld l, d                                       ; $67b4: $6a
    rst $38                                       ; $67b5: $ff
    inc hl                                        ; $67b6: $23
    xor l                                         ; $67b7: $ad
    add hl, bc                                    ; $67b8: $09
    ld [hl+], a                                   ; $67b9: $22
    nop                                           ; $67ba: $00
    rst $18                                       ; $67bb: $df
    ld c, [hl]                                    ; $67bc: $4e
    ld sp, $df1d                                  ; $67bd: $31 $1d $df
    ld [hl], a                                    ; $67c0: $77
    ld b, b                                       ; $67c1: $40
    inc b                                         ; $67c2: $04
    ld e, d                                       ; $67c3: $5a
    ld b, d                                       ; $67c4: $42
    dec d                                         ; $67c5: $15
    nop                                           ; $67c6: $00
    cp $52                                        ; $67c7: $fe $52
    ld b, d                                       ; $67c9: $42
    inc b                                         ; $67ca: $04
    ld a, b                                       ; $67cb: $78
    ld b, [hl]                                    ; $67cc: $46
    nop                                           ; $67cd: $00
    jr nz, jr_0b6_678f                            ; $67ce: $20 $bf

jr_0b6_67d0:
    ld l, a                                       ; $67d0: $6f
    nop                                           ; $67d1: $00
    db $10                                        ; $67d2: $10
    sbc l                                         ; $67d3: $9d
    ld b, [hl]                                    ; $67d4: $46
    ld d, c                                       ; $67d5: $51
    dec e                                         ; $67d6: $1d
    rst $38                                       ; $67d7: $ff
    ld a, a                                       ; $67d8: $7f
    xor b                                         ; $67d9: $a8
    db $10                                        ; $67da: $10
    ld e, d                                       ; $67db: $5a
    ld a, $94                                     ; $67dc: $3e $94
    add hl, hl                                    ; $67de: $29
    ld a, $5b                                     ; $67df: $3e $5b
    ld [hl+], a                                   ; $67e1: $22
    inc b                                         ; $67e2: $04
    ld e, l                                       ; $67e3: $5d
    inc b                                         ; $67e4: $04
    ld a, a                                       ; $67e5: $7f
    scf                                           ; $67e6: $37
    ld [de], a                                    ; $67e7: $12
    nop                                           ; $67e8: $00
    ld bc, $370c                                  ; $67e9: $01 $0c $37
    ld l, [hl]                                    ; $67ec: $6e
    rst $38                                       ; $67ed: $ff
    inc hl                                        ; $67ee: $23
    ld l, l                                       ; $67ef: $6d
    dec c                                         ; $67f0: $0d
    nop                                           ; $67f1: $00
    nop                                           ; $67f2: $00
    dec e                                         ; $67f3: $1d
    nop                                           ; $67f4: $00
    sbc h                                         ; $67f5: $9c
    ld [hl], $90                                  ; $67f6: $36 $90
    inc c                                         ; $67f8: $0c
    ld [hl+], a                                   ; $67f9: $22
    inc b                                         ; $67fa: $04
    rla                                           ; $67fb: $17
    ld [hl], $f1                                  ; $67fc: $36 $f1
    jr @+$01                                      ; $67fe: $18 $ff

    inc hl                                        ; $6800: $23
    ld bc, $3100                                  ; $6801: $01 $00 $31
    ld b, [hl]                                    ; $6804: $46
    rst $38                                       ; $6805: $ff
    ld a, a                                       ; $6806: $7f
    nop                                           ; $6807: $00
    jr nz, jr_0b6_680a                            ; $6808: $20 $00

jr_0b6_680a:
    inc d                                         ; $680a: $14
    ld e, l                                       ; $680b: $5d
    ld a, [hl-]                                   ; $680c: $3a
    ld l, $1d                                     ; $680d: $2e $1d
    rst $38                                       ; $680f: $ff
    ld a, a                                       ; $6810: $7f
    add [hl]                                      ; $6811: $86
    db $10                                        ; $6812: $10
    add hl, sp                                    ; $6813: $39
    ld a, [hl-]                                   ; $6814: $3a
    cp $52                                        ; $6815: $fe $52
    ld e, [hl]                                    ; $6817: $5e
    ld h, e                                       ; $6818: $63
    ld hl, $ff04                                  ; $6819: $21 $04 $ff
    inc hl                                        ; $681c: $23
    xor l                                         ; $681d: $ad
    add hl, bc                                    ; $681e: $09
    ld d, $00                                     ; $681f: $16 $00
    ld bc, $910c                                  ; $6821: $01 $0c $91
    dec d                                         ; $6824: $15
    rst $38                                       ; $6825: $ff
    inc hl                                        ; $6826: $23
    ld [hl], d                                    ; $6827: $72
    ld e, c                                       ; $6828: $59
    nop                                           ; $6829: $00
    nop                                           ; $682a: $00
    sbc a                                         ; $682b: $9f
    dec hl                                        ; $682c: $2b
    dec de                                        ; $682d: $1b
    nop                                           ; $682e: $00
    xor l                                         ; $682f: $ad
    add hl, bc                                    ; $6830: $09
    nop                                           ; $6831: $00
    nop                                           ; $6832: $00
    sbc $4a                                       ; $6833: $de $4a
    or b                                          ; $6835: $b0
    dec [hl]                                      ; $6836: $35
    add a                                         ; $6837: $87
    inc c                                         ; $6838: $0c
    nop                                           ; $6839: $00
    nop                                           ; $683a: $00
    adc $39                                       ; $683b: $ce $39
    rst $38                                       ; $683d: $ff
    ld a, a                                       ; $683e: $7f
    nop                                           ; $683f: $00
    jr nz, jr_0b6_6863                            ; $6840: $20 $21

    inc b                                         ; $6842: $04
    push de                                       ; $6843: $d5
    dec l                                         ; $6844: $2d
    cp l                                          ; $6845: $bd
    ld c, d                                       ; $6846: $4a
    nop                                           ; $6847: $00
    jr nz, jr_0b6_688c                            ; $6848: $20 $42

    ld [$02f6], sp                                ; $684a: $08 $f6 $02
    add hl, sp                                    ; $684d: $39
    ld a, $9d                                     ; $684e: $3e $9d
    ld b, [hl]                                    ; $6850: $46
    ld bc, $9c0c                                  ; $6851: $01 $0c $9c
    dec de                                        ; $6854: $1b
    adc e                                         ; $6855: $8b
    dec b                                         ; $6856: $05
    jr jr_0b6_6859                                ; $6857: $18 $00

jr_0b6_6859:
    nop                                           ; $6859: $00
    ld [$001d], sp                                ; $685a: $08 $1d $00
    rst $38                                       ; $685d: $ff
    inc hl                                        ; $685e: $23
    ld c, h                                       ; $685f: $4c
    inc l                                         ; $6860: $2c
    ld b, d                                       ; $6861: $42
    nop                                           ; $6862: $00

jr_0b6_6863:
    sbc $4a                                       ; $6863: $de $4a
    dec e                                         ; $6865: $1d
    nop                                           ; $6866: $00
    rst $38                                       ; $6867: $ff
    inc hl                                        ; $6868: $23
    and a                                         ; $6869: $a7
    db $10                                        ; $686a: $10
    sbc $52                                       ; $686b: $de $52
    ld c, d                                       ; $686d: $4a
    add hl, hl                                    ; $686e: $29
    ld a, a                                       ; $686f: $7f
    ld h, a                                       ; $6870: $67
    nop                                           ; $6871: $00
    nop                                           ; $6872: $00
    rst $38                                       ; $6873: $ff
    ld a, a                                       ; $6874: $7f
    ld l, e                                       ; $6875: $6b
    dec l                                         ; $6876: $2d
    nop                                           ; $6877: $00
    jr nz, jr_0b6_687a                            ; $6878: $20 $00

jr_0b6_687a:
    jr nz, jr_0b6_68b4                            ; $687a: $20 $38

    ld a, $1e                                     ; $687c: $3e $1e
    ld e, e                                       ; $687e: $5b
    ld h, e                                       ; $687f: $63
    inc c                                         ; $6880: $0c
    ld h, e                                       ; $6881: $63
    inc c                                         ; $6882: $0c
    ld e, $53                                     ; $6883: $1e $53
    sbc a                                         ; $6885: $9f
    ld l, a                                       ; $6886: $6f
    ld l, l                                       ; $6887: $6d
    dec [hl]                                      ; $6888: $35
    ld bc, $ff0c                                  ; $6889: $01 $0c $ff

jr_0b6_688c:
    inc hl                                        ; $688c: $23
    ld a, [hl+]                                   ; $688d: $2a
    dec e                                         ; $688e: $1d
    ld a, e                                       ; $688f: $7b
    ld l, e                                       ; $6890: $6b
    nop                                           ; $6891: $00
    nop                                           ; $6892: $00
    rst $38                                       ; $6893: $ff
    inc hl                                        ; $6894: $23
    add hl, de                                    ; $6895: $19
    nop                                           ; $6896: $00
    ld c, l                                       ; $6897: $4d
    ld hl, $0000                                  ; $6898: $21 $00 $00
    sbc $4e                                       ; $689b: $de $4e
    rla                                           ; $689d: $17
    nop                                           ; $689e: $00
    rst $38                                       ; $689f: $ff
    inc hl                                        ; $68a0: $23
    rst $00                                       ; $68a1: $c7
    jr @+$78                                      ; $68a2: $18 $76

    ld b, [hl]                                    ; $68a4: $46
    cp $56                                        ; $68a5: $fe $56
    sbc a                                         ; $68a7: $9f
    ld l, e                                       ; $68a8: $6b
    nop                                           ; $68a9: $00
    nop                                           ; $68aa: $00
    rst $38                                       ; $68ab: $ff
    ld a, a                                       ; $68ac: $7f
    nop                                           ; $68ad: $00
    jr nz, jr_0b6_68b8                            ; $68ae: $20 $08

    ld hl, $2000                                  ; $68b0: $21 $00 $20
    ld [hl], e                                    ; $68b3: $73

jr_0b6_68b4:
    ld hl, $469d                                  ; $68b4: $21 $9d $46
    ld h, h                                       ; $68b7: $64

jr_0b6_68b8:
    inc c                                         ; $68b8: $0c
    ret                                           ; $68b9: $c9


    inc d                                         ; $68ba: $14
    cp [hl]                                       ; $68bb: $be
    ld c, d                                       ; $68bc: $4a
    ld e, $5f                                     ; $68bd: $1e $5f
    rst $18                                       ; $68bf: $df
    ld c, [hl]                                    ; $68c0: $4e
    ld h, e                                       ; $68c1: $63
    inc c                                         ; $68c2: $0c
    sbc h                                         ; $68c3: $9c
    ld b, [hl]                                    ; $68c4: $46
    rra                                           ; $68c5: $1f
    ld e, a                                       ; $68c6: $5f

jr_0b6_68c7:
    sbc a                                         ; $68c7: $9f
    ld l, e                                       ; $68c8: $6b
    ld [hl+], a                                   ; $68c9: $22
    inc b                                         ; $68ca: $04
    rst $18                                       ; $68cb: $df
    cpl                                           ; $68cc: $2f
    dec de                                        ; $68cd: $1b
    nop                                           ; $68ce: $00
    xor l                                         ; $68cf: $ad
    add hl, bc                                    ; $68d0: $09
    ld hl, $5a04                                  ; $68d1: $21 $04 $5a
    ld a, $2d                                     ; $68d4: $3e $2d
    ld hl, $571e                                  ; $68d6: $21 $1e $57
    add h                                         ; $68d9: $84
    db $10                                        ; $68da: $10
    ld d, [hl]                                    ; $68db: $56
    ld b, [hl]                                    ; $68dc: $46
    ld e, [hl]                                    ; $68dd: $5e

jr_0b6_68de:
    ld h, e                                       ; $68de: $63
    rst $18                                       ; $68df: $df
    ld [hl], e                                    ; $68e0: $73
    nop                                           ; $68e1: $00
    nop                                           ; $68e2: $00
    rst $38                                       ; $68e3: $ff
    ld a, a                                       ; $68e4: $7f
    nop                                           ; $68e5: $00
    jr nz, jr_0b6_68c7                            ; $68e6: $20 $df

    ld [hl], e                                    ; $68e8: $73
    nop                                           ; $68e9: $00
    jr jr_0b6_691e                                ; $68ea: $18 $32

    dec e                                         ; $68ec: $1d
    ccf                                           ; $68ed: $3f
    ld e, e                                       ; $68ee: $5b
    ld sp, hl                                     ; $68ef: $f9
    dec l                                         ; $68f0: $2d
    db $10                                        ; $68f1: $10
    ld de, $363b                                  ; $68f2: $11 $3b $36
    cp [hl]                                       ; $68f5: $be
    ld c, [hl]                                    ; $68f6: $4e
    sub [hl]                                      ; $68f7: $96
    ld hl, $0c63                                  ; $68f8: $21 $63 $0c
    call nc, $be31                                ; $68fb: $d4 $31 $be
    ld c, d                                       ; $68fe: $4a
    rst $38                                       ; $68ff: $ff
    ld d, d                                       ; $6900: $52
    ld hl, $3604                                  ; $6901: $21 $04 $36
    ld a, $17                                     ; $6904: $3e $17
    nop                                           ; $6906: $00
    rst $38                                       ; $6907: $ff
    inc hl                                        ; $6908: $23
    nop                                           ; $6909: $00
    nop                                           ; $690a: $00
    jr jr_0b6_6947                                ; $690b: $18 $3a

    rra                                           ; $690d: $1f
    ld e, e                                       ; $690e: $5b
    add l                                         ; $690f: $85
    stop                                          ; $6910: $10 $00
    nop                                           ; $6912: $00
    db $dd                                        ; $6913: $dd
    ld c, [hl]                                    ; $6914: $4e
    add h                                         ; $6915: $84
    db $10                                        ; $6916: $10
    dec l                                         ; $6917: $2d
    ld hl, $0000                                  ; $6918: $21 $00 $00
    rst $38                                       ; $691b: $ff
    ld a, a                                       ; $691c: $7f
    nop                                           ; $691d: $00

jr_0b6_691e:
    jr nz, jr_0b6_694d                            ; $691e: $20 $2d

    ld hl, $0421                                  ; $6920: $21 $21 $04
    sbc a                                         ; $6923: $9f
    ld a, a                                       ; $6924: $7f
    rst $38                                       ; $6925: $ff
    inc hl                                        ; $6926: $23
    nop                                           ; $6927: $00
    inc e                                         ; $6928: $1c
    ld b, d                                       ; $6929: $42
    ld [$552f], sp                                ; $692a: $08 $2f $55
    jr c, jr_0b6_69a1                             ; $692d: $38 $72

    inc b                                         ; $692f: $04
    inc l                                         ; $6930: $2c
    ld b, e                                       ; $6931: $43
    ld [$31d2], sp                                ; $6932: $08 $d2 $31
    sbc l                                         ; $6935: $9d
    ld b, [hl]                                    ; $6936: $46
    rst $38                                       ; $6937: $ff
    ld d, d                                       ; $6938: $52
    ld [hl+], a                                   ; $6939: $22
    inc c                                         ; $693a: $0c
    sbc h                                         ; $693b: $9c
    ld d, [hl]                                    ; $693c: $56
    db $eb                                        ; $693d: $eb
    jr nz, @+$01                                  ; $693e: $20 $ff

    inc hl                                        ; $6940: $23
    ld h, h                                       ; $6941: $64
    ld [$467b], sp                                ; $6942: $08 $7b $46
    rst $38                                       ; $6945: $ff
    inc hl                                        ; $6946: $23

jr_0b6_6947:
    ld l, a                                       ; $6947: $6f
    dec d                                         ; $6948: $15
    nop                                           ; $6949: $00
    nop                                           ; $694a: $00
    rst $38                                       ; $694b: $ff
    ld a, a                                       ; $694c: $7f

jr_0b6_694d:
    ld [$8621], sp                                ; $694d: $08 $21 $86
    inc c                                         ; $6950: $0c
    nop                                           ; $6951: $00
    nop                                           ; $6952: $00
    rst $38                                       ; $6953: $ff
    ld a, a                                       ; $6954: $7f
    nop                                           ; $6955: $00
    jr nz, jr_0b6_68de                            ; $6956: $20 $86

    inc c                                         ; $6958: $0c
    nop                                           ; $6959: $00
    jr jr_0b6_6999                                ; $695a: $18 $3d

    ld a, a                                       ; $695c: $7f
    rst $38                                       ; $695d: $ff
    inc hl                                        ; $695e: $23
    xor l                                         ; $695f: $ad
    add hl, bc                                    ; $6960: $09
    nop                                           ; $6961: $00
    nop                                           ; $6962: $00
    xor l                                         ; $6963: $ad
    add hl, bc                                    ; $6964: $09
    xor h                                         ; $6965: $ac
    ld c, b                                       ; $6966: $48
    dec d                                         ; $6967: $15
    nop                                           ; $6968: $00
    ld b, d                                       ; $6969: $42
    ld [$31f6], sp                                ; $696a: $08 $f6 $31
    cp $42                                        ; $696d: $fe $42
    dec hl                                        ; $696f: $2b
    dec c                                         ; $6970: $0d
    inc h                                         ; $6971: $24
    inc d                                         ; $6972: $14
    sub $71                                       ; $6973: $d6 $71
    or e                                          ; $6975: $b3
    dec [hl]                                      ; $6976: $35
    ld a, $7f                                     ; $6977: $3e $7f
    ld b, e                                       ; $6979: $43
    inc b                                         ; $697a: $04
    rst $38                                       ; $697b: $ff
    inc hl                                        ; $697c: $23
    xor l                                         ; $697d: $ad
    add hl, bc                                    ; $697e: $09
    adc h                                         ; $697f: $8c
    ld sp, $0000                                  ; $6980: $31 $00 $00
    rst $38                                       ; $6983: $ff
    ld a, a                                       ; $6984: $7f
    ld l, e                                       ; $6985: $6b
    dec l                                         ; $6986: $2d
    xor l                                         ; $6987: $ad
    dec [hl]                                      ; $6988: $35
    nop                                           ; $6989: $00
    nop                                           ; $698a: $00
    nop                                           ; $698b: $00
    jr nz, jr_0b6_69f9                            ; $698c: $20 $6b

    dec l                                         ; $698e: $2d
    xor l                                         ; $698f: $ad
    dec [hl]                                      ; $6990: $35
    nop                                           ; $6991: $00
    nop                                           ; $6992: $00
    or h                                          ; $6993: $b4
    ld l, l                                       ; $6994: $6d
    rst $38                                       ; $6995: $ff
    inc hl                                        ; $6996: $23
    nop                                           ; $6997: $00
    inc e                                         ; $6998: $1c

jr_0b6_6999:
    nop                                           ; $6999: $00
    nop                                           ; $699a: $00
    rst $38                                       ; $699b: $ff
    inc hl                                        ; $699c: $23
    add hl, de                                    ; $699d: $19
    nop                                           ; $699e: $00
    xor l                                         ; $699f: $ad
    add hl, bc                                    ; $69a0: $09

jr_0b6_69a1:
    ld hl, $1904                                  ; $69a1: $21 $04 $19
    nop                                           ; $69a4: $00
    or h                                          ; $69a5: $b4
    ld sp, $23ff                                  ; $69a6: $31 $ff $23
    ld [bc], a                                    ; $69a9: $02
    inc d                                         ; $69aa: $14
    sbc e                                         ; $69ab: $9b
    ld a, [hl]                                    ; $69ac: $7e
    rst $38                                       ; $69ad: $ff
    inc hl                                        ; $69ae: $23
    ld c, h                                       ; $69af: $4c
    dec e                                         ; $69b0: $1d
    nop                                           ; $69b1: $00
    nop                                           ; $69b2: $00
    rst $28                                       ; $69b3: $ef
    dec a                                         ; $69b4: $3d

jr_0b6_69b5:
    rst $38                                       ; $69b5: $ff
    inc hl                                        ; $69b6: $23
    ld sp, $0046                                  ; $69b7: $31 $46 $00
    nop                                           ; $69ba: $00
    rst $38                                       ; $69bb: $ff
    ld a, a                                       ; $69bc: $7f
    rst $28                                       ; $69bd: $ef
    dec a                                         ; $69be: $3d
    ld sp, $0046                                  ; $69bf: $31 $46 $00
    nop                                           ; $69c2: $00
    nop                                           ; $69c3: $00
    jr nz, jr_0b6_69b5                            ; $69c4: $20 $ef

    dec a                                         ; $69c6: $3d
    ld sp, $0046                                  ; $69c7: $31 $46 $00
    nop                                           ; $69ca: $00
    sub d                                         ; $69cb: $92
    ld h, c                                       ; $69cc: $61
    rst $38                                       ; $69cd: $ff
    inc hl                                        ; $69ce: $23
    nop                                           ; $69cf: $00
    inc e                                         ; $69d0: $1c
    nop                                           ; $69d1: $00
    nop                                           ; $69d2: $00
    rst $38                                       ; $69d3: $ff
    inc hl                                        ; $69d4: $23
    dec de                                        ; $69d5: $1b
    nop                                           ; $69d6: $00
    xor l                                         ; $69d7: $ad
    add hl, bc                                    ; $69d8: $09
    ld bc, $5108                                  ; $69d9: $01 $08 $51
    ld e, l                                       ; $69dc: $5d
    inc d                                         ; $69dd: $14
    nop                                           ; $69de: $00
    rst $38                                       ; $69df: $ff
    ld a, a                                       ; $69e0: $7f
    nop                                           ; $69e1: $00
    nop                                           ; $69e2: $00
    rst $38                                       ; $69e3: $ff
    inc hl                                        ; $69e4: $23
    xor l                                         ; $69e5: $ad
    add hl, bc                                    ; $69e6: $09
    ld [bc], a                                    ; $69e7: $02
    jr jr_0b6_69ea                                ; $69e8: $18 $00

jr_0b6_69ea:
    nop                                           ; $69ea: $00
    ld [hl], e                                    ; $69eb: $73
    ld c, [hl]                                    ; $69ec: $4e
    rst $38                                       ; $69ed: $ff
    ld [hl], e                                    ; $69ee: $73
    add hl, sp                                    ; $69ef: $39
    ld e, e                                       ; $69f0: $5b
    nop                                           ; $69f1: $00
    nop                                           ; $69f2: $00
    ld [hl], e                                    ; $69f3: $73
    ld c, [hl]                                    ; $69f4: $4e
    rst $38                                       ; $69f5: $ff
    ld a, a                                       ; $69f6: $7f
    sub h                                         ; $69f7: $94
    ld d, d                                       ; $69f8: $52

jr_0b6_69f9:
    nop                                           ; $69f9: $00
    jr nz, jr_0b6_6a6f                            ; $69fa: $20 $73

    ld c, [hl]                                    ; $69fc: $4e
    rst $38                                       ; $69fd: $ff
    ld a, a                                       ; $69fe: $7f
    sub h                                         ; $69ff: $94
    ld d, d                                       ; $6a00: $52
    nop                                           ; $6a01: $00
    inc d                                         ; $6a02: $14
    ld a, b                                       ; $6a03: $78
    ld l, [hl]                                    ; $6a04: $6e
    ld c, l                                       ; $6a05: $4d
    dec l                                         ; $6a06: $2d
    rst $38                                       ; $6a07: $ff
    inc hl                                        ; $6a08: $23
    nop                                           ; $6a09: $00

jr_0b6_6a0a:
    inc b                                         ; $6a0a: $04
    rst $38                                       ; $6a0b: $ff
    inc hl                                        ; $6a0c: $23
    xor l                                         ; $6a0d: $ad
    add hl, bc                                    ; $6a0e: $09
    dec e                                         ; $6a0f: $1d
    nop                                           ; $6a10: $00
    nop                                           ; $6a11: $00
    nop                                           ; $6a12: $00
    rst $38                                       ; $6a13: $ff
    inc hl                                        ; $6a14: $23
    ld c, $05                                     ; $6a15: $0e $05
    rst $38                                       ; $6a17: $ff
    ld a, a                                       ; $6a18: $7f
    nop                                           ; $6a19: $00
    nop                                           ; $6a1a: $00
    rla                                           ; $6a1b: $17
    rrca                                          ; $6a1c: $0f
    xor l                                         ; $6a1d: $ad
    add hl, bc                                    ; $6a1e: $09
    sbc $17                                       ; $6a1f: $de $17
    ld bc, $d600                                  ; $6a21: $01 $00 $d6
    ld e, d                                       ; $6a24: $5a
    ccf                                           ; $6a25: $3f
    inc b                                         ; $6a26: $04
    jp c, Jump_000_003b                           ; $6a27: $da $3b $00

    nop                                           ; $6a2a: $00
    sub $5a                                       ; $6a2b: $d6 $5a
    rst $38                                       ; $6a2d: $ff
    ld a, a                                       ; $6a2e: $7f
    nop                                           ; $6a2f: $00
    jr nz, jr_0b6_6a32                            ; $6a30: $20 $00

jr_0b6_6a32:
    jr nz, jr_0b6_6a0a                            ; $6a32: $20 $d6

    ld e, d                                       ; $6a34: $5a
    rst $38                                       ; $6a35: $ff
    ld a, a                                       ; $6a36: $7f
    nop                                           ; $6a37: $00
    jr nz, jr_0b6_6a3a                            ; $6a38: $20 $00

jr_0b6_6a3a:
    jr jr_0b6_6a78                                ; $6a3a: $18 $3c

    ld a, a                                       ; $6a3c: $7f
    xor l                                         ; $6a3d: $ad
    add hl, bc                                    ; $6a3e: $09
    rst $38                                       ; $6a3f: $ff

jr_0b6_6a40:
    inc hl                                        ; $6a40: $23
    ld bc, $ec0c                                  ; $6a41: $01 $0c $ec
    jr z, jr_0b6_6a40                             ; $6a44: $28 $fa

    ld a, d                                       ; $6a46: $7a
    dec e                                         ; $6a47: $1d
    nop                                           ; $6a48: $00
    nop                                           ; $6a49: $00
    nop                                           ; $6a4a: $00
    inc e                                         ; $6a4b: $1c
    nop                                           ; $6a4c: $00
    rst $38                                       ; $6a4d: $ff
    inc hl                                        ; $6a4e: $23
    ld [de], a                                    ; $6a4f: $12
    nop                                           ; $6a50: $00
    ld [bc], a                                    ; $6a51: $02
    nop                                           ; $6a52: $00
    or $0e                                        ; $6a53: $f6 $0e
    rst $28                                       ; $6a55: $ef
    add hl, bc                                    ; $6a56: $09
    rst $38                                       ; $6a57: $ff
    dec de                                        ; $6a58: $1b

jr_0b6_6a59:
    nop                                           ; $6a59: $00
    nop                                           ; $6a5a: $00
    ld [hl], $04                                  ; $6a5b: $36 $04
    rst $30                                       ; $6a5d: $f7
    ld e, [hl]                                    ; $6a5e: $5e
    ld a, $04                                     ; $6a5f: $3e $04
    nop                                           ; $6a61: $00
    nop                                           ; $6a62: $00

jr_0b6_6a63:
    rst $30                                       ; $6a63: $f7
    ld e, [hl]                                    ; $6a64: $5e
    rst $38                                       ; $6a65: $ff
    ld a, a                                       ; $6a66: $7f
    nop                                           ; $6a67: $00
    jr nz, jr_0b6_6a6a                            ; $6a68: $20 $00

jr_0b6_6a6a:
    jr nz, jr_0b6_6a63                            ; $6a6a: $20 $f7

    ld e, [hl]                                    ; $6a6c: $5e
    rst $38                                       ; $6a6d: $ff
    ld a, a                                       ; $6a6e: $7f

jr_0b6_6a6f:
    nop                                           ; $6a6f: $00
    jr nz, jr_0b6_6a72                            ; $6a70: $20 $00

jr_0b6_6a72:
    nop                                           ; $6a72: $00
    rst $38                                       ; $6a73: $ff
    inc hl                                        ; $6a74: $23
    nop                                           ; $6a75: $00
    jr nz, @+$14                                  ; $6a76: $20 $12

jr_0b6_6a78:
    nop                                           ; $6a78: $00
    nop                                           ; $6a79: $00
    nop                                           ; $6a7a: $00
    sub e                                         ; $6a7b: $93
    ld h, l                                       ; $6a7c: $65
    ld [$5d1c], a                                 ; $6a7d: $ea $1c $5d
    ld a, a                                       ; $6a80: $7f
    nop                                           ; $6a81: $00
    nop                                           ; $6a82: $00
    xor l                                         ; $6a83: $ad
    add hl, bc                                    ; $6a84: $09
    rst $38                                       ; $6a85: $ff
    inc hl                                        ; $6a86: $23
    ld d, h                                       ; $6a87: $54
    ld [$0000], sp                                ; $6a88: $08 $00 $00
    rst $38                                       ; $6a8b: $ff
    ld a, a                                       ; $6a8c: $7f
    rst $38                                       ; $6a8d: $ff
    ld a, a                                       ; $6a8e: $7f
    nop                                           ; $6a8f: $00

jr_0b6_6a90:
    jr nz, jr_0b6_6a92                            ; $6a90: $20 $00

jr_0b6_6a92:
    nop                                           ; $6a92: $00
    rst $38                                       ; $6a93: $ff
    ld a, a                                       ; $6a94: $7f
    rst $38                                       ; $6a95: $ff
    ld a, a                                       ; $6a96: $7f
    nop                                           ; $6a97: $00

jr_0b6_6a98:
    jr nz, jr_0b6_6a9a                            ; $6a98: $20 $00

jr_0b6_6a9a:
    nop                                           ; $6a9a: $00
    rst $38                                       ; $6a9b: $ff
    ld a, a                                       ; $6a9c: $7f
    nop                                           ; $6a9d: $00
    jr nz, jr_0b6_6aa0                            ; $6a9e: $20 $00

jr_0b6_6aa0:
    jr nz, jr_0b6_6aa2                            ; $6aa0: $20 $00

jr_0b6_6aa2:
    jr nz, @+$01                                  ; $6aa2: $20 $ff

    ld a, a                                       ; $6aa4: $7f
    nop                                           ; $6aa5: $00
    jr nz, jr_0b6_6aa8                            ; $6aa6: $20 $00

jr_0b6_6aa8:
    jr nz, jr_0b6_6aaa                            ; $6aa8: $20 $00

jr_0b6_6aaa:
    jr nz, jr_0b6_6a59                            ; $6aaa: $20 $ad

    add hl, bc                                    ; $6aac: $09
    rst $38                                       ; $6aad: $ff
    inc hl                                        ; $6aae: $23
    ld d, h                                       ; $6aaf: $54
    ld [$0000], sp                                ; $6ab0: $08 $00 $00
    rst $38                                       ; $6ab3: $ff
    ld a, a                                       ; $6ab4: $7f
    nop                                           ; $6ab5: $00
    jr nz, jr_0b6_6b0c                            ; $6ab6: $20 $54

    ld [$0000], sp                                ; $6ab8: $08 $00 $00
    rst $38                                       ; $6abb: $ff
    ld a, a                                       ; $6abc: $7f
    nop                                           ; $6abd: $00
    jr nz, jr_0b6_6b14                            ; $6abe: $20 $54

    ld [$0000], sp                                ; $6ac0: $08 $00 $00
    nop                                           ; $6ac3: $00
    jr nz, jr_0b6_6ac6                            ; $6ac4: $20 $00

jr_0b6_6ac6:
    jr nz, jr_0b6_6ac8                            ; $6ac6: $20 $00

jr_0b6_6ac8:
    jr nz, jr_0b6_6aca                            ; $6ac8: $20 $00

jr_0b6_6aca:
    nop                                           ; $6aca: $00
    nop                                           ; $6acb: $00
    jr nz, jr_0b6_6ace                            ; $6acc: $20 $00

jr_0b6_6ace:
    jr nz, jr_0b6_6ad0                            ; $6ace: $20 $00

jr_0b6_6ad0:
    jr nz, jr_0b6_6ad2                            ; $6ad0: $20 $00

jr_0b6_6ad2:
    nop                                           ; $6ad2: $00
    nop                                           ; $6ad3: $00
    jr nz, jr_0b6_6ad6                            ; $6ad4: $20 $00

jr_0b6_6ad6:
    jr nz, jr_0b6_6ad8                            ; $6ad6: $20 $00

jr_0b6_6ad8:
    jr nz, jr_0b6_6ada                            ; $6ad8: $20 $00

jr_0b6_6ada:
    jr nz, jr_0b6_6adc                            ; $6ada: $20 $00

jr_0b6_6adc:
    jr nz, jr_0b6_6ade                            ; $6adc: $20 $00

jr_0b6_6ade:
    jr nz, jr_0b6_6ae0                            ; $6ade: $20 $00

jr_0b6_6ae0:
    jr nz, jr_0b6_6ae2                            ; $6ae0: $20 $00

jr_0b6_6ae2:
    jr nz, jr_0b6_6ae4                            ; $6ae2: $20 $00

jr_0b6_6ae4:
    jr nz, @+$01                                  ; $6ae4: $20 $ff

    ld l, a                                       ; $6ae6: $6f
    cp [hl]                                       ; $6ae7: $be
    dec hl                                        ; $6ae8: $2b
    nop                                           ; $6ae9: $00
    jr nz, jr_0b6_6aec                            ; $6aea: $20 $00

jr_0b6_6aec:
    jr nz, @+$01                                  ; $6aec: $20 $ff

    ld l, a                                       ; $6aee: $6f
    cp [hl]                                       ; $6aef: $be
    dec hl                                        ; $6af0: $2b
    nop                                           ; $6af1: $00
    jr nz, jr_0b6_6af4                            ; $6af2: $20 $00

jr_0b6_6af4:
    jr nz, @+$01                                  ; $6af4: $20 $ff

    ld l, a                                       ; $6af6: $6f
    cp [hl]                                       ; $6af7: $be
    dec hl                                        ; $6af8: $2b
    nop                                           ; $6af9: $00
    nop                                           ; $6afa: $00
    adc h                                         ; $6afb: $8c
    ld bc, $0779                                  ; $6afc: $01 $79 $07
    ld bc, $001c                                  ; $6aff: $01 $1c $00
    jr nz, jr_0b6_6a90                            ; $6b02: $20 $8c

    ld bc, $0779                                  ; $6b04: $01 $79 $07
    ld bc, $001c                                  ; $6b07: $01 $1c $00
    jr nz, jr_0b6_6a98                            ; $6b0a: $20 $8c

jr_0b6_6b0c:
    ld bc, $0779                                  ; $6b0c: $01 $79 $07
    ld bc, $001c                                  ; $6b0f: $01 $1c $00
    jr nz, jr_0b6_6aa0                            ; $6b12: $20 $8c

jr_0b6_6b14:
    ld bc, $0779                                  ; $6b14: $01 $79 $07
    ld bc, $001c                                  ; $6b17: $01 $1c $00
    jr nz, jr_0b6_6b1c                            ; $6b1a: $20 $00

jr_0b6_6b1c:
    jr nz, @+$01                                  ; $6b1c: $20 $ff

    ld l, a                                       ; $6b1e: $6f
    cp [hl]                                       ; $6b1f: $be
    dec hl                                        ; $6b20: $2b
    nop                                           ; $6b21: $00
    jr nz, jr_0b6_6b24                            ; $6b22: $20 $00

jr_0b6_6b24:
    jr nz, @+$01                                  ; $6b24: $20 $ff

    ld l, a                                       ; $6b26: $6f
    cp [hl]                                       ; $6b27: $be
    dec hl                                        ; $6b28: $2b
    nop                                           ; $6b29: $00
    nop                                           ; $6b2a: $00
    nop                                           ; $6b2b: $00
    jr nz, @+$01                                  ; $6b2c: $20 $ff

    ld l, a                                       ; $6b2e: $6f
    cp [hl]                                       ; $6b2f: $be
    dec hl                                        ; $6b30: $2b
    ld b, e                                       ; $6b31: $43
    ld [$5c33], sp                                ; $6b32: $08 $33 $5c

jr_0b6_6b35:
    or $0e                                        ; $6b35: $f6 $0e
    rlca                                          ; $6b37: $07
    ld bc, $0000                                  ; $6b38: $01 $00 $00
    nop                                           ; $6b3b: $00

jr_0b6_6b3c:
    jr nz, @-$08                                  ; $6b3c: $20 $f6

    ld c, $07                                     ; $6b3e: $0e $07
    ld bc, $2000                                  ; $6b40: $01 $00 $20
    nop                                           ; $6b43: $00

jr_0b6_6b44:
    jr nz, jr_0b6_6b3c                            ; $6b44: $20 $f6

    ld c, $07                                     ; $6b46: $0e $07
    ld bc, $2000                                  ; $6b48: $01 $00 $20
    nop                                           ; $6b4b: $00
    jr nz, jr_0b6_6b44                            ; $6b4c: $20 $f6

    ld c, $07                                     ; $6b4e: $0e $07
    ld bc, $2000                                  ; $6b50: $01 $00 $20
    nop                                           ; $6b53: $00
    jr nz, @+$01                                  ; $6b54: $20 $ff

    ld l, a                                       ; $6b56: $6f
    cp [hl]                                       ; $6b57: $be
    dec hl                                        ; $6b58: $2b
    nop                                           ; $6b59: $00
    jr nz, jr_0b6_6b5c                            ; $6b5a: $20 $00

jr_0b6_6b5c:
    jr nz, @+$01                                  ; $6b5c: $20 $ff

    ld l, a                                       ; $6b5e: $6f
    cp [hl]                                       ; $6b5f: $be
    dec hl                                        ; $6b60: $2b
    nop                                           ; $6b61: $00
    nop                                           ; $6b62: $00
    ld c, e                                       ; $6b63: $4b
    inc [hl]                                      ; $6b64: $34
    nop                                           ; $6b65: $00
    inc e                                         ; $6b66: $1c
    ld [hl], d                                    ; $6b67: $72
    ld d, b                                       ; $6b68: $50
    nop                                           ; $6b69: $00
    nop                                           ; $6b6a: $00
    sbc l                                         ; $6b6b: $9d
    halt                                          ; $6b6c: $76
    db $eb                                        ; $6b6d: $eb
    inc l                                         ; $6b6e: $2c
    xor $01                                       ; $6b6f: $ee $01
    nop                                           ; $6b71: $00
    nop                                           ; $6b72: $00
    sbc a                                         ; $6b73: $9f
    ld a, a                                       ; $6b74: $7f
    ld l, e                                       ; $6b75: $6b
    add hl, hl                                    ; $6b76: $29
    nop                                           ; $6b77: $00
    jr nz, jr_0b6_6b7a                            ; $6b78: $20 $00

jr_0b6_6b7a:
    jr nz, @-$5f                                  ; $6b7a: $20 $9f

    ld a, a                                       ; $6b7c: $7f
    ld l, e                                       ; $6b7d: $6b
    add hl, hl                                    ; $6b7e: $29
    nop                                           ; $6b7f: $00
    jr nz, jr_0b6_6b82                            ; $6b80: $20 $00

jr_0b6_6b82:
    jr nz, @-$5f                                  ; $6b82: $20 $9f

    ld a, a                                       ; $6b84: $7f
    ld l, e                                       ; $6b85: $6b
    add hl, hl                                    ; $6b86: $29
    nop                                           ; $6b87: $00
    jr nz, jr_0b6_6b8a                            ; $6b88: $20 $00

jr_0b6_6b8a:
    jr nz, jr_0b6_6bd7                            ; $6b8a: $20 $4b

    inc [hl]                                      ; $6b8c: $34
    nop                                           ; $6b8d: $00
    inc e                                         ; $6b8e: $1c
    ld [hl], d                                    ; $6b8f: $72
    ld d, b                                       ; $6b90: $50
    nop                                           ; $6b91: $00
    jr nz, jr_0b6_6bdf                            ; $6b92: $20 $4b

    inc [hl]                                      ; $6b94: $34
    nop                                           ; $6b95: $00
    inc e                                         ; $6b96: $1c
    ld [hl], d                                    ; $6b97: $72
    ld d, b                                       ; $6b98: $50

jr_0b6_6b99:
    nop                                           ; $6b99: $00
    nop                                           ; $6b9a: $00
    push de                                       ; $6b9b: $d5
    ld d, h                                       ; $6b9c: $54
    or h                                          ; $6b9d: $b4
    ld [bc], a                                    ; $6b9e: $02
    add hl, hl                                    ; $6b9f: $29
    jr z, jr_0b6_6bc2                             ; $6ba0: $28 $20

    nop                                           ; $6ba2: $00
    sbc e                                         ; $6ba3: $9b
    inc sp                                        ; $6ba4: $33
    db $fd                                        ; $6ba5: $fd
    ld a, c                                       ; $6ba6: $79
    dec hl                                        ; $6ba7: $2b
    ld hl, $0000                                  ; $6ba8: $21 $00 $00
    jr jr_0b6_6bc4                                ; $6bab: $18 $17

    nop                                           ; $6bad: $00
    jr nz, jr_0b6_6b35                            ; $6bae: $20 $85

    inc c                                         ; $6bb0: $0c
    nop                                           ; $6bb1: $00
    jr nz, jr_0b6_6bcc                            ; $6bb2: $20 $18

    rla                                           ; $6bb4: $17
    nop                                           ; $6bb5: $00
    jr nz, @-$79                                  ; $6bb6: $20 $85

    inc c                                         ; $6bb8: $0c
    nop                                           ; $6bb9: $00
    jr nz, jr_0b6_6bd4                            ; $6bba: $20 $18

    rla                                           ; $6bbc: $17
    nop                                           ; $6bbd: $00
    jr nz, @-$79                                  ; $6bbe: $20 $85

    inc c                                         ; $6bc0: $0c
    nop                                           ; $6bc1: $00

jr_0b6_6bc2:
    jr nz, jr_0b6_6b99                            ; $6bc2: $20 $d5

jr_0b6_6bc4:
    ld d, h                                       ; $6bc4: $54
    or h                                          ; $6bc5: $b4
    ld [bc], a                                    ; $6bc6: $02
    add hl, hl                                    ; $6bc7: $29
    jr z, jr_0b6_6bca                             ; $6bc8: $28 $00

jr_0b6_6bca:
    nop                                           ; $6bca: $00
    sbc d                                         ; $6bcb: $9a

jr_0b6_6bcc:
    ld h, b                                       ; $6bcc: $60
    nop                                           ; $6bcd: $00
    jr nz, jr_0b6_6c1b                            ; $6bce: $20 $4b

    inc l                                         ; $6bd0: $2c
    nop                                           ; $6bd1: $00
    nop                                           ; $6bd2: $00
    ld d, [hl]                                    ; $6bd3: $56

jr_0b6_6bd4:
    ld e, b                                       ; $6bd4: $58
    push af                                       ; $6bd5: $f5
    ld [bc], a                                    ; $6bd6: $02

jr_0b6_6bd7:
    ld b, d                                       ; $6bd7: $42
    inc a                                         ; $6bd8: $3c
    nop                                           ; $6bd9: $00
    nop                                           ; $6bda: $00
    jr nc, jr_0b6_6bdf                            ; $6bdb: $30 $02

    rst $38                                       ; $6bdd: $ff
    inc bc                                        ; $6bde: $03

jr_0b6_6bdf:
    adc d                                         ; $6bdf: $8a
    ld bc, $0000                                  ; $6be0: $01 $00 $00
    ld a, h                                       ; $6be3: $7c
    rlca                                          ; $6be4: $07
    sbc c                                         ; $6be5: $99
    ld h, [hl]                                    ; $6be6: $66
    rra                                           ; $6be7: $1f
    ld a, a                                       ; $6be8: $7f
    nop                                           ; $6be9: $00
    jr nz, jr_0b6_6c06                            ; $6bea: $20 $1a

    inc bc                                        ; $6bec: $03
    sbc c                                         ; $6bed: $99
    ld h, [hl]                                    ; $6bee: $66
    rra                                           ; $6bef: $1f
    ld a, a                                       ; $6bf0: $7f
    nop                                           ; $6bf1: $00
    jr nz, jr_0b6_6c0e                            ; $6bf2: $20 $1a

    inc bc                                        ; $6bf4: $03
    sbc c                                         ; $6bf5: $99
    ld h, [hl]                                    ; $6bf6: $66
    rra                                           ; $6bf7: $1f
    ld a, a                                       ; $6bf8: $7f
    nop                                           ; $6bf9: $00
    jr nz, jr_0b6_6c52                            ; $6bfa: $20 $56

    ld e, b                                       ; $6bfc: $58
    push af                                       ; $6bfd: $f5
    ld [bc], a                                    ; $6bfe: $02
    ld b, d                                       ; $6bff: $42
    inc a                                         ; $6c00: $3c
    nop                                           ; $6c01: $00
    inc b                                         ; $6c02: $04
    ld d, b                                       ; $6c03: $50
    ld c, b                                       ; $6c04: $48
    ei                                            ; $6c05: $fb

jr_0b6_6c06:
    ld l, h                                       ; $6c06: $6c
    cp a                                          ; $6c07: $bf
    ld a, l                                       ; $6c08: $7d
    nop                                           ; $6c09: $00
    nop                                           ; $6c0a: $00
    rla                                           ; $6c0b: $17
    inc bc                                        ; $6c0c: $03
    ld [hl+], a                                   ; $6c0d: $22

jr_0b6_6c0e:
    jr c, @+$01                                   ; $6c0e: $38 $ff

    inc bc                                        ; $6c10: $03
    ld [bc], a                                    ; $6c11: $02
    ld [$4851], sp                                ; $6c12: $08 $51 $48
    jr nc, jr_0b6_6c19                            ; $6c15: $30 $02

    ccf                                           ; $6c17: $3f
    ld a, l                                       ; $6c18: $7d

jr_0b6_6c19:
    nop                                           ; $6c19: $00
    nop                                           ; $6c1a: $00

jr_0b6_6c1b:
    dec e                                         ; $6c1b: $1d
    halt                                          ; $6c1c: $76
    cp a                                          ; $6c1d: $bf
    ld h, e                                       ; $6c1e: $63
    db $ec                                        ; $6c1f: $ec
    ld bc, $2000                                  ; $6c20: $01 $00 $20
    dec sp                                        ; $6c23: $3b
    inc bc                                        ; $6c24: $03
    rst $38                                       ; $6c25: $ff
    ld e, a                                       ; $6c26: $5f
    cp [hl]                                       ; $6c27: $be
    rra                                           ; $6c28: $1f
    nop                                           ; $6c29: $00
    jr nz, @+$3d                                  ; $6c2a: $20 $3b

    inc bc                                        ; $6c2c: $03
    rst $38                                       ; $6c2d: $ff
    ld e, a                                       ; $6c2e: $5f
    cp [hl]                                       ; $6c2f: $be
    rra                                           ; $6c30: $1f
    nop                                           ; $6c31: $00
    nop                                           ; $6c32: $00
    nop                                           ; $6c33: $00
    jr nz, jr_0b6_6c58                            ; $6c34: $20 $22

    jr c, @+$01                                   ; $6c36: $38 $ff

    inc bc                                        ; $6c38: $03
    nop                                           ; $6c39: $00
    nop                                           ; $6c3a: $00
    call $9f38                                    ; $6c3b: $cd $38 $9f
    ld a, l                                       ; $6c3e: $7d
    or d                                          ; $6c3f: $b2
    ld [hl-], a                                   ; $6c40: $32
    nop                                           ; $6c41: $00
    nop                                           ; $6c42: $00
    sbc h                                         ; $6c43: $9c
    inc bc                                        ; $6c44: $03
    ld h, e                                       ; $6c45: $63
    inc a                                         ; $6c46: $3c
    or d                                          ; $6c47: $b2
    ld [hl-], a                                   ; $6c48: $32
    nop                                           ; $6c49: $00
    nop                                           ; $6c4a: $00
    inc [hl]                                      ; $6c4b: $34
    ld a, $25                                     ; $6c4c: $3e $25
    jr nc, jr_0b6_6c6d                            ; $6c4e: $30 $1d

    ld d, a                                       ; $6c50: $57
    nop                                           ; $6c51: $00

jr_0b6_6c52:
    nop                                           ; $6c52: $00
    add hl, sp                                    ; $6c53: $39
    dec de                                        ; $6c54: $1b
    ld l, c                                       ; $6c55: $69
    inc [hl]                                      ; $6c56: $34
    rst $38                                       ; $6c57: $ff

jr_0b6_6c58:
    ld e, a                                       ; $6c58: $5f
    nop                                           ; $6c59: $00
    db $10                                        ; $6c5a: $10
    dec sp                                        ; $6c5b: $3b
    inc bc                                        ; $6c5c: $03
    dec d                                         ; $6c5d: $15
    ld a, $de                                     ; $6c5e: $3e $de
    ld c, a                                       ; $6c60: $4f
    nop                                           ; $6c61: $00
    jr nz, jr_0b6_6c9f                            ; $6c62: $20 $3b

    inc bc                                        ; $6c64: $03
    dec d                                         ; $6c65: $15
    ld a, $de                                     ; $6c66: $3e $de
    ld c, a                                       ; $6c68: $4f
    nop                                           ; $6c69: $00
    nop                                           ; $6c6a: $00
    add hl, sp                                    ; $6c6b: $39
    dec de                                        ; $6c6c: $1b

jr_0b6_6c6d:
    nop                                           ; $6c6d: $00
    jr nz, @+$01                                  ; $6c6e: $20 $ff

    inc bc                                        ; $6c70: $03
    nop                                           ; $6c71: $00
    nop                                           ; $6c72: $00
    sbc $0b                                       ; $6c73: $de $0b
    rst $38                                       ; $6c75: $ff
    ld l, a                                       ; $6c76: $6f
    ld l, h                                       ; $6c77: $6c
    dec a                                         ; $6c78: $3d
    nop                                           ; $6c79: $00
    nop                                           ; $6c7a: $00
    ld h, e                                       ; $6c7b: $63
    ld b, b                                       ; $6c7c: $40
    and a                                         ; $6c7d: $a7
    inc e                                         ; $6c7e: $1c
    add e                                         ; $6c7f: $83
    ld b, b                                       ; $6c80: $40
    nop                                           ; $6c81: $00
    nop                                           ; $6c82: $00
    db $db                                        ; $6c83: $db
    ld sp, $677f                                  ; $6c84: $31 $7f $67
    adc a                                         ; $6c87: $8f
    ld [$0421], sp                                ; $6c88: $08 $21 $04
    rst $38                                       ; $6c8b: $ff

jr_0b6_6c8c:
    ld a, b                                       ; $6c8c: $78
    inc a                                         ; $6c8d: $3c
    ld [hl-], a                                   ; $6c8e: $32
    dec bc                                        ; $6c8f: $0b
    inc [hl]                                      ; $6c90: $34
    nop                                           ; $6c91: $00
    inc c                                         ; $6c92: $0c
    ld sp, hl                                     ; $6c93: $f9
    ld b, $1d                                     ; $6c94: $06 $1d
    ld b, e                                       ; $6c96: $43
    cp a                                          ; $6c97: $bf
    ld [hl], e                                    ; $6c98: $73
    nop                                           ; $6c99: $00
    jr nz, jr_0b6_6c8c                            ; $6c9a: $20 $f0

    dec d                                         ; $6c9c: $15
    ld [hl-], a                                   ; $6c9d: $32
    ld [de], a                                    ; $6c9e: $12

jr_0b6_6c9f:
    cp a                                          ; $6c9f: $bf
    ld [hl], e                                    ; $6ca0: $73
    nop                                           ; $6ca1: $00
    nop                                           ; $6ca2: $00

jr_0b6_6ca3:
    add hl, sp                                    ; $6ca3: $39
    dec de                                        ; $6ca4: $1b
    rst $38                                       ; $6ca5: $ff
    ld e, a                                       ; $6ca6: $5f
    nop                                           ; $6ca7: $00
    jr nz, jr_0b6_6caa                            ; $6ca8: $20 $00

jr_0b6_6caa:
    nop                                           ; $6caa: $00
    or [hl]                                       ; $6cab: $b6
    ld h, $ff                                     ; $6cac: $26 $ff
    ld l, a                                       ; $6cae: $6f
    ld [$0021], sp                                ; $6caf: $08 $21 $00
    nop                                           ; $6cb2: $00
    db $d3                                        ; $6cb3: $d3
    ld c, l                                       ; $6cb4: $4d
    add h                                         ; $6cb5: $84
    ld b, b                                       ; $6cb6: $40
    rst $38                                       ; $6cb7: $ff
    ld a, a                                       ; $6cb8: $7f
    ld [bc], a                                    ; $6cb9: $02
    nop                                           ; $6cba: $00
    rst $38                                       ; $6cbb: $ff
    ld d, [hl]                                    ; $6cbc: $56
    ld a, [hl+]                                   ; $6cbd: $2a
    nop                                           ; $6cbe: $00
    sub b                                         ; $6cbf: $90
    ld [$0002], sp                                ; $6cc0: $08 $02 $00
    ldh a, [rNR14]                                ; $6cc3: $f0 $14
    rst $18                                       ; $6cc5: $df
    ld c, [hl]                                    ; $6cc6: $4e
    ld a, e                                       ; $6cc7: $7b
    dec h                                         ; $6cc8: $25
    nop                                           ; $6cc9: $00
    nop                                           ; $6cca: $00
    ld [hl], b                                    ; $6ccb: $70
    add hl, hl                                    ; $6ccc: $29
    add h                                         ; $6ccd: $84
    ld b, h                                       ; $6cce: $44
    ld e, h                                       ; $6ccf: $5c
    inc bc                                        ; $6cd0: $03
    nop                                           ; $6cd1: $00
    jr nz, jr_0b6_6ca3                            ; $6cd2: $20 $cf

    dec d                                         ; $6cd4: $15
    ld e, h                                       ; $6cd5: $5c
    inc bc                                        ; $6cd6: $03
    ld d, e                                       ; $6cd7: $53
    ld c, $00                                     ; $6cd8: $0e $00
    db $10                                        ; $6cda: $10
    rst $08                                       ; $6cdb: $cf
    dec d                                         ; $6cdc: $15
    rst $38                                       ; $6cdd: $ff
    ld a, a                                       ; $6cde: $7f
    ld e, e                                       ; $6cdf: $5b
    rla                                           ; $6ce0: $17
    nop                                           ; $6ce1: $00
    nop                                           ; $6ce2: $00
    add h                                         ; $6ce3: $84
    ld b, h                                       ; $6ce4: $44
    sub b                                         ; $6ce5: $90
    ld b, b                                       ; $6ce6: $40
    db $db                                        ; $6ce7: $db
    ld l, b                                       ; $6ce8: $68
    nop                                           ; $6ce9: $00
    nop                                           ; $6cea: $00
    dec d                                         ; $6ceb: $15
    ld b, [hl]                                    ; $6cec: $46
    cp a                                          ; $6ced: $bf
    ld a, a                                       ; $6cee: $7f
    add h                                         ; $6cef: $84
    ld b, h                                       ; $6cf0: $44
    nop                                           ; $6cf1: $00
    nop                                           ; $6cf2: $00
    sub a                                         ; $6cf3: $97
    ld hl, $002b                                  ; $6cf4: $21 $2b $00
    sbc a                                         ; $6cf7: $9f
    ld [hl], $01                                  ; $6cf8: $36 $01
    nop                                           ; $6cfa: $00
    call Call_0b6_5c0c                            ; $6cfb: $cd $0c $5c
    ld a, [hl-]                                   ; $6cfe: $3a
    inc sp                                        ; $6cff: $33
    dec e                                         ; $6d00: $1d
    nop                                           ; $6d01: $00
    nop                                           ; $6d02: $00
    ld de, $9f42                                  ; $6d03: $11 $42 $9f
    ld [hl], e                                    ; $6d06: $73
    rst $20                                       ; $6d07: $e7
    jr nc, jr_0b6_6d0a                            ; $6d08: $30 $00

jr_0b6_6d0a:
    nop                                           ; $6d0a: $00
    ld d, h                                       ; $6d0b: $54
    ld c, $be                                     ; $6d0c: $0e $be
    dec hl                                        ; $6d0e: $2b
    nop                                           ; $6d0f: $00
    jr nz, jr_0b6_6d12                            ; $6d10: $20 $00

jr_0b6_6d12:
    nop                                           ; $6d12: $00
    sbc l                                         ; $6d13: $9d
    inc de                                        ; $6d14: $13
    rst $18                                       ; $6d15: $df
    ld e, a                                       ; $6d16: $5f
    and l                                         ; $6d17: $a5
    ld b, h                                       ; $6d18: $44
    nop                                           ; $6d19: $00
    nop                                           ; $6d1a: $00
    ld [hl], d                                    ; $6d1b: $72
    ld c, b                                       ; $6d1c: $48
    and l                                         ; $6d1d: $a5
    ld b, h                                       ; $6d1e: $44
    sbc d                                         ; $6d1f: $9a
    ld h, h                                       ; $6d20: $64
    nop                                           ; $6d21: $00
    nop                                           ; $6d22: $00
    ld a, c                                       ; $6d23: $79
    ld c, d                                       ; $6d24: $4a
    ld e, $7b                                     ; $6d25: $1e $7b
    and l                                         ; $6d27: $a5
    ld b, h                                       ; $6d28: $44
    nop                                           ; $6d29: $00
    nop                                           ; $6d2a: $00
    sub h                                         ; $6d2b: $94
    dec h                                         ; $6d2c: $25
    rst $38                                       ; $6d2d: $ff
    ld b, [hl]                                    ; $6d2e: $46
    ld l, h                                       ; $6d2f: $6c
    inc b                                         ; $6d30: $04
    nop                                           ; $6d31: $00
    nop                                           ; $6d32: $00
    sub e                                         ; $6d33: $93
    ld hl, $4ade                                  ; $6d34: $21 $de $4a
    call z, RST_10                                ; $6d37: $cc $10 $00
    nop                                           ; $6d3a: $00
    sub [hl]                                      ; $6d3b: $96
    ld d, [hl]                                    ; $6d3c: $56
    rst $38                                       ; $6d3d: $ff
    ld h, e                                       ; $6d3e: $63
    add h                                         ; $6d3f: $84
    jr nc, jr_0b6_6d42                            ; $6d40: $30 $00

jr_0b6_6d42:
    inc e                                         ; $6d42: $1c
    sbc l                                         ; $6d43: $9d
    daa                                           ; $6d44: $27
    and l                                         ; $6d45: $a5
    ld c, b                                       ; $6d46: $48
    rst $38                                       ; $6d47: $ff
    ld a, e                                       ; $6d48: $7b
    nop                                           ; $6d49: $00
    nop                                           ; $6d4a: $00
    ld a, l                                       ; $6d4b: $7d
    inc bc                                        ; $6d4c: $03
    cp l                                          ; $6d4d: $bd
    ld d, e                                       ; $6d4e: $53
    rst $38                                       ; $6d4f: $ff
    ld a, e                                       ; $6d50: $7b
    nop                                           ; $6d51: $00
    nop                                           ; $6d52: $00
    rst $18                                       ; $6d53: $df
    ld a, h                                       ; $6d54: $7c
    ret z                                         ; $6d55: $c8

    ld b, b                                       ; $6d56: $40
    rst $38                                       ; $6d57: $ff
    ld a, a                                       ; $6d58: $7f
    nop                                           ; $6d59: $00
    nop                                           ; $6d5a: $00
    scf                                           ; $6d5b: $37
    ld a, $1e                                     ; $6d5c: $3e $1e
    ld a, d                                       ; $6d5e: $7a
    or c                                          ; $6d5f: $b1
    inc c                                         ; $6d60: $0c
    inc hl                                        ; $6d61: $23
    inc b                                         ; $6d62: $04
    ld d, [hl]                                    ; $6d63: $56
    dec e                                         ; $6d64: $1d
    ld hl, sp+$65                                 ; $6d65: $f8 $65
    rst $38                                       ; $6d67: $ff
    ld a, a                                       ; $6d68: $7f
    ld [bc], a                                    ; $6d69: $02
    nop                                           ; $6d6a: $00
    jp c, $ff45                                   ; $6d6b: $da $45 $ff

    ld a, a                                       ; $6d6e: $7f
    ccf                                           ; $6d6f: $3f
    ld c, a                                       ; $6d70: $4f
    nop                                           ; $6d71: $00
    nop                                           ; $6d72: $00
    ld e, e                                       ; $6d73: $5b
    ld [hl], d                                    ; $6d74: $72
    rst $38                                       ; $6d75: $ff
    ld d, a                                       ; $6d76: $57
    ld d, c                                       ; $6d77: $51
    ld [bc], a                                    ; $6d78: $02
    nop                                           ; $6d79: $00
    inc e                                         ; $6d7a: $1c
    ld a, l                                       ; $6d7b: $7d
    rrca                                          ; $6d7c: $0f
    add $48                                       ; $6d7d: $c6 $48
    rst $18                                       ; $6d7f: $df
    ld d, a                                       ; $6d80: $57
    nop                                           ; $6d81: $00
    inc b                                         ; $6d82: $04
    ld a, e                                       ; $6d83: $7b
    inc bc                                        ; $6d84: $03
    sbc $3f                                       ; $6d85: $de $3f
    db $dd                                        ; $6d87: $dd
    rla                                           ; $6d88: $17
    ld hl, $bf04                                  ; $6d89: $21 $04 $bf
    ld a, h                                       ; $6d8c: $7c
    sbc h                                         ; $6d8d: $9c
    ld d, e                                       ; $6d8e: $53
    rst $38                                       ; $6d8f: $ff
    ld a, a                                       ; $6d90: $7f
    nop                                           ; $6d91: $00
    nop                                           ; $6d92: $00
    ld a, [hl]                                    ; $6d93: $7e
    ld a, c                                       ; $6d94: $79
    rst $20                                       ; $6d95: $e7
    ld c, h                                       ; $6d96: $4c
    rst $00                                       ; $6d97: $c7
    ld [$0001], sp                                ; $6d98: $08 $01 $00
    ld e, a                                       ; $6d9b: $5f
    ld d, a                                       ; $6d9c: $57
    adc a                                         ; $6d9d: $8f
    inc c                                         ; $6d9e: $0c
    ld d, h                                       ; $6d9f: $54
    ld hl, $0000                                  ; $6da0: $21 $00 $00
    ld a, h                                       ; $6da3: $7c
    ld [hl], l                                    ; $6da4: $75
    ld c, $25                                     ; $6da5: $0e $25
    dec a                                         ; $6da7: $3d
    ld d, e                                       ; $6da8: $53
    jr nz, jr_0b6_6dab                            ; $6da9: $20 $00

jr_0b6_6dab:
    ld a, e                                       ; $6dab: $7b
    rla                                           ; $6dac: $17
    ld a, a                                       ; $6dad: $7f
    ld e, a                                       ; $6dae: $5f
    adc e                                         ; $6daf: $8b
    ld bc, $1c00                                  ; $6db0: $01 $00 $1c
    sub l                                         ; $6db3: $95
    ld a, [bc]                                    ; $6db4: $0a
    rst $20                                       ; $6db5: $e7
    ld c, h                                       ; $6db6: $4c
    cp [hl]                                       ; $6db7: $be
    daa                                           ; $6db8: $27
    nop                                           ; $6db9: $00
    nop                                           ; $6dba: $00
    ld e, d                                       ; $6dbb: $5a
    inc bc                                        ; $6dbc: $03
    rst $38                                       ; $6dbd: $ff
    rra                                           ; $6dbe: $1f
    nop                                           ; $6dbf: $00
    inc e                                         ; $6dc0: $1c
    nop                                           ; $6dc1: $00
    nop                                           ; $6dc2: $00
    ld e, d                                       ; $6dc3: $5a
    dec bc                                        ; $6dc4: $0b
    sbc $6f                                       ; $6dc5: $de $6f
    ld d, $54                                     ; $6dc7: $16 $54
    nop                                           ; $6dc9: $00
    nop                                           ; $6dca: $00
    ld a, a                                       ; $6dcb: $7f
    ld a, l                                       ; $6dcc: $7d
    xor b                                         ; $6dcd: $a8
    ld b, b                                       ; $6dce: $40
    cp a                                          ; $6dcf: $bf
    ld l, e                                       ; $6dd0: $6b
    ld hl, $f900                                  ; $6dd1: $21 $00 $f9
    ld sp, $575f                                  ; $6dd4: $31 $5f $57
    pop de                                        ; $6dd7: $d1
    db $10                                        ; $6dd8: $10
    ld hl, $d600                                  ; $6dd9: $21 $00 $d6
    add hl, sp                                    ; $6ddc: $39
    rst $18                                       ; $6ddd: $df
    ld e, a                                       ; $6dde: $5f
    ld c, l                                       ; $6ddf: $4d
    inc a                                         ; $6de0: $3c
    nop                                           ; $6de1: $00
    nop                                           ; $6de2: $00
    sub h                                         ; $6de3: $94
    ld [bc], a                                    ; $6de4: $02
    sbc $37                                       ; $6de5: $de $37
    xor l                                         ; $6de7: $ad
    ld bc, $0000                                  ; $6de8: $01 $00 $00
    sub l                                         ; $6deb: $95
    ld [de], a                                    ; $6dec: $12
    rst $20                                       ; $6ded: $e7
    ld c, h                                       ; $6dee: $4c
    nop                                           ; $6def: $00
    jr nz, jr_0b6_6df2                            ; $6df0: $20 $00

jr_0b6_6df2:
    db $10                                        ; $6df2: $10
    sub h                                         ; $6df3: $94
    ld [bc], a                                    ; $6df4: $02
    adc h                                         ; $6df5: $8c
    ld bc, $079c                                  ; $6df6: $01 $9c $07
    inc b                                         ; $6df9: $04
    inc d                                         ; $6dfa: $14
    ld [hl], e                                    ; $6dfb: $73
    ld [bc], a                                    ; $6dfc: $02
    ld a, d                                       ; $6dfd: $7a
    dec bc                                        ; $6dfe: $0b
    ld l, e                                       ; $6dff: $6b
    ld bc, $0000                                  ; $6e00: $01 $00 $00
    ld d, h                                       ; $6e03: $54
    dec l                                         ; $6e04: $2d
    cp a                                          ; $6e05: $bf
    ld l, a                                       ; $6e06: $6f
    adc c                                         ; $6e07: $89
    inc a                                         ; $6e08: $3c
    ld [bc], a                                    ; $6e09: $02
    nop                                           ; $6e0a: $00
    jp c, $ff29                                   ; $6e0b: $da $29 $ff

    ld b, [hl]                                    ; $6e0e: $46
    jr nc, @+$27                                  ; $6e0f: $30 $25

    ld bc, $b204                                  ; $6e11: $01 $04 $b2
    add hl, hl                                    ; $6e14: $29
    ld a, a                                       ; $6e15: $7f
    ld e, e                                       ; $6e16: $5b
    dec bc                                        ; $6e17: $0b
    inc a                                         ; $6e18: $3c
    add h                                         ; $6e19: $84
    nop                                           ; $6e1a: $00
    ld e, c                                       ; $6e1b: $59
    inc de                                        ; $6e1c: $13
    ld [$ff51], sp                                ; $6e1d: $08 $51 $ff
    ld l, e                                       ; $6e20: $6b
    nop                                           ; $6e21: $00
    inc e                                         ; $6e22: $1c
    ld d, d                                       ; $6e23: $52
    ld c, $08                                     ; $6e24: $0e $08
    ld d, c                                       ; $6e26: $51
    ld a, h                                       ; $6e27: $7c
    inc bc                                        ; $6e28: $03
    nop                                           ; $6e29: $00
    jr jr_0b6_6e97                                ; $6e2a: $18 $6b

    ld bc, $03ff                                  ; $6e2c: $01 $ff $03
    ld d, d                                       ; $6e2f: $52
    ld [bc], a                                    ; $6e30: $02
    ld bc, $6a04                                  ; $6e31: $01 $04 $6a
    ld bc, $0210                                  ; $6e34: $01 $10 $02
    rst $30                                       ; $6e37: $f7
    ld [bc], a                                    ; $6e38: $02
    ld [bc], a                                    ; $6e39: $02
    nop                                           ; $6e3a: $00
    cp b                                          ; $6e3b: $b8
    ld c, d                                       ; $6e3c: $4a
    ld [hl], b                                    ; $6e3d: $70
    inc h                                         ; $6e3e: $24
    rst $38                                       ; $6e3f: $ff
    ld [hl], a                                    ; $6e40: $77
    nop                                           ; $6e41: $00
    nop                                           ; $6e42: $00
    ld d, l                                       ; $6e43: $55
    ld hl, $3a7c                                  ; $6e44: $21 $7c $3a
    adc d                                         ; $6e47: $8a
    ld [$0000], sp                                ; $6e48: $08 $00 $00
    push af                                       ; $6e4b: $f5
    dec [hl]                                      ; $6e4c: $35
    rst $28                                       ; $6e4d: $ef
    inc d                                         ; $6e4e: $14
    ld e, a                                       ; $6e4f: $5f
    ld e, e                                       ; $6e50: $5b
    add h                                         ; $6e51: $84
    nop                                           ; $6e52: $00
    rst $30                                       ; $6e53: $f7
    ld [bc], a                                    ; $6e54: $02
    add hl, hl                                    ; $6e55: $29
    ld d, l                                       ; $6e56: $55
    rst $38                                       ; $6e57: $ff
    ld c, e                                       ; $6e58: $4b
    nop                                           ; $6e59: $00
    nop                                           ; $6e5a: $00
    rst $10                                       ; $6e5b: $d7
    ld b, $29                                     ; $6e5c: $06 $29
    ld d, l                                       ; $6e5e: $55
    nop                                           ; $6e5f: $00
    jr nz, jr_0b6_6ec5                            ; $6e60: $20 $63

    nop                                           ; $6e62: $00
    call Call_0b6_7a01                            ; $6e63: $cd $01 $7a
    inc bc                                        ; $6e66: $03
    nop                                           ; $6e67: $00
    inc e                                         ; $6e68: $1c
    nop                                           ; $6e69: $00
    nop                                           ; $6e6a: $00
    ld l, d                                       ; $6e6b: $6a
    ld bc, $0084                                  ; $6e6c: $01 $84 $00
    xor h                                         ; $6e6f: $ac
    ld bc, $0000                                  ; $6e70: $01 $00 $00
    sbc e                                         ; $6e73: $9b
    inc de                                        ; $6e74: $13
    sbc $6b                                       ; $6e75: $de $6b
    inc c                                         ; $6e77: $0c
    ld c, b                                       ; $6e78: $48
    ld bc, $5100                                  ; $6e79: $01 $00 $51
    ld hl, $4b5f                                  ; $6e7c: $21 $5f $4b
    adc b                                         ; $6e7f: $88
    ld [$0423], sp                                ; $6e80: $08 $23 $04
    inc l                                         ; $6e83: $2c
    ld b, c                                       ; $6e84: $41
    cp a                                          ; $6e85: $bf
    add hl, hl                                    ; $6e86: $29
    rst $38                                       ; $6e87: $ff
    ld l, e                                       ; $6e88: $6b
    nop                                           ; $6e89: $00
    nop                                           ; $6e8a: $00
    or l                                          ; $6e8b: $b5
    ld [bc], a                                    ; $6e8c: $02
    add hl, hl                                    ; $6e8d: $29
    ld d, l                                       ; $6e8e: $55
    rst $38                                       ; $6e8f: $ff
    ld [hl], e                                    ; $6e90: $73
    nop                                           ; $6e91: $00
    inc e                                         ; $6e92: $1c
    ld [hl-], a                                   ; $6e93: $32
    ld [de], a                                    ; $6e94: $12
    add hl, hl                                    ; $6e95: $29
    ld d, l                                       ; $6e96: $55

jr_0b6_6e97:
    ld e, h                                       ; $6e97: $5c
    inc de                                        ; $6e98: $13
    ld b, d                                       ; $6e99: $42
    nop                                           ; $6e9a: $00
    sub h                                         ; $6e9b: $94
    ld [bc], a                                    ; $6e9c: $02
    nop                                           ; $6e9d: $00
    inc e                                         ; $6e9e: $1c
    sbc $03                                       ; $6e9f: $de $03
    nop                                           ; $6ea1: $00
    nop                                           ; $6ea2: $00
    ld c, d                                       ; $6ea3: $4a
    ld d, l                                       ; $6ea4: $55
    and l                                         ; $6ea5: $a5
    nop                                           ; $6ea6: $00
    ld [$0401], sp                                ; $6ea7: $08 $01 $04
    db $10                                        ; $6eaa: $10
    sbc h                                         ; $6eab: $9c
    cpl                                           ; $6eac: $2f
    ld d, c                                       ; $6ead: $51
    ld [bc], a                                    ; $6eae: $02
    cp $77                                        ; $6eaf: $fe $77
    ld [bc], a                                    ; $6eb1: $02
    nop                                           ; $6eb2: $00
    or l                                          ; $6eb3: $b5
    dec h                                         ; $6eb4: $25
    sbc a                                         ; $6eb5: $9f
    ld h, e                                       ; $6eb6: $63
    halt                                          ; $6eb7: $76
    ld a, $02                                     ; $6eb8: $3e $02
    nop                                           ; $6eba: $00
    ld e, a                                       ; $6ebb: $5f
    ld e, e                                       ; $6ebc: $5b
    ld c, d                                       ; $6ebd: $4a
    ld e, c                                       ; $6ebe: $59
    ld [hl], c                                    ; $6ebf: $71
    ld hl, $0063                                  ; $6ec0: $21 $63 $00
    ld [hl], e                                    ; $6ec3: $73
    ld [bc], a                                    ; $6ec4: $02

jr_0b6_6ec5:
    add hl, hl                                    ; $6ec5: $29
    ld d, l                                       ; $6ec6: $55
    rst $38                                       ; $6ec7: $ff
    dec sp                                        ; $6ec8: $3b
    nop                                           ; $6ec9: $00
    inc e                                         ; $6eca: $1c
    ld a, [hl-]                                   ; $6ecb: $3a
    rlca                                          ; $6ecc: $07
    ld c, d                                       ; $6ecd: $4a
    ld e, c                                       ; $6ece: $59
    rst $18                                       ; $6ecf: $df
    ld c, e                                       ; $6ed0: $4b
    nop                                           ; $6ed1: $00
    nop                                           ; $6ed2: $00
    ld [hl], e                                    ; $6ed3: $73
    ld [bc], a                                    ; $6ed4: $02
    cp l                                          ; $6ed5: $bd
    inc bc                                        ; $6ed6: $03
    nop                                           ; $6ed7: $00
    jr nz, jr_0b6_6eda                            ; $6ed8: $20 $00

jr_0b6_6eda:
    nop                                           ; $6eda: $00
    ld c, d                                       ; $6edb: $4a
    ld e, c                                       ; $6edc: $59
    ld c, d                                       ; $6edd: $4a
    ld bc, $01ac                                  ; $6ede: $01 $ac $01
    nop                                           ; $6ee1: $00
    nop                                           ; $6ee2: $00
    ld d, c                                       ; $6ee3: $51
    ld [bc], a                                    ; $6ee4: $02
    sbc $3f                                       ; $6ee5: $de $3f
    xor b                                         ; $6ee7: $a8
    ld [$0864], sp                                ; $6ee8: $08 $64 $08
    ld [hl], a                                    ; $6eeb: $77
    ld h, $bf                                     ; $6eec: $26 $bf
    ld d, e                                       ; $6eee: $53
    rst $38                                       ; $6eef: $ff
    ld [hl], a                                    ; $6ef0: $77
    nop                                           ; $6ef1: $00

jr_0b6_6ef2:
    nop                                           ; $6ef2: $00
    inc d                                         ; $6ef3: $14
    ld [hl], $bf                                  ; $6ef4: $36 $bf
    ld l, e                                       ; $6ef6: $6b
    ld sp, hl                                     ; $6ef7: $f9
    add hl, hl                                    ; $6ef8: $29
    nop                                           ; $6ef9: $00
    nop                                           ; $6efa: $00
    ld l, e                                       ; $6efb: $6b
    ld e, c                                       ; $6efc: $59
    ld [hl], e                                    ; $6efd: $73
    ld [bc], a                                    ; $6efe: $02
    sbc h                                         ; $6eff: $9c
    ld c, a                                       ; $6f00: $4f
    nop                                           ; $6f01: $00
    nop                                           ; $6f02: $00
    ld hl, sp+$06                                 ; $6f03: $f8 $06
    cp [hl]                                       ; $6f05: $be
    inc hl                                        ; $6f06: $23
    nop                                           ; $6f07: $00
    jr nz, jr_0b6_6f0a                            ; $6f08: $20 $00

jr_0b6_6f0a:
    nop                                           ; $6f0a: $00
    xor $01                                       ; $6f0b: $ee $01
    rst $38                                       ; $6f0d: $ff
    inc bc                                        ; $6f0e: $03
    nop                                           ; $6f0f: $00
    jr nz, jr_0b6_6f54                            ; $6f10: $20 $42

    nop                                           ; $6f12: $00
    rst $28                                       ; $6f13: $ef
    ld bc, $5dce                                  ; $6f14: $01 $ce $5d
    rst $38                                       ; $6f17: $ff
    inc bc                                        ; $6f18: $03
    nop                                           ; $6f19: $00
    nop                                           ; $6f1a: $00
    inc sp                                        ; $6f1b: $33
    ld b, d                                       ; $6f1c: $42
    sbc [hl]                                      ; $6f1d: $9e
    ld l, e                                       ; $6f1e: $6b
    rrca                                          ; $6f1f: $0f
    ld [bc], a                                    ; $6f20: $02
    add h                                         ; $6f21: $84
    nop                                           ; $6f22: $00
    rst $30                                       ; $6f23: $f7
    ld a, [bc]                                    ; $6f24: $0a
    ld e, h                                       ; $6f25: $5c
    ld d, e                                       ; $6f26: $53
    rst $18                                       ; $6f27: $df
    ld l, e                                       ; $6f28: $6b
    nop                                           ; $6f29: $00
    nop                                           ; $6f2a: $00
    dec d                                         ; $6f2b: $15
    ld [hl], $5e                                  ; $6f2c: $36 $5e
    ld e, e                                       ; $6f2e: $5b
    ret z                                         ; $6f2f: $c8

    inc e                                         ; $6f30: $1c
    nop                                           ; $6f31: $00
    nop                                           ; $6f32: $00
    ld l, e                                       ; $6f33: $6b
    ld e, l                                       ; $6f34: $5d
    ld [hl], l                                    ; $6f35: $75
    ld a, [bc]                                    ; $6f36: $0a
    sbc h                                         ; $6f37: $9c
    ld c, e                                       ; $6f38: $4b
    nop                                           ; $6f39: $00
    jr nz, jr_0b6_6ef2                            ; $6f3a: $20 $b6

    ld a, [bc]                                    ; $6f3c: $0a
    cp [hl]                                       ; $6f3d: $be
    cpl                                           ; $6f3e: $2f
    ld e, e                                       ; $6f3f: $5b
    inc bc                                        ; $6f40: $03
    nop                                           ; $6f41: $00
    nop                                           ; $6f42: $00
    rst $08                                       ; $6f43: $cf
    dec d                                         ; $6f44: $15
    ld [hl], l                                    ; $6f45: $75
    ld c, $00                                     ; $6f46: $0e $00
    jr nz, jr_0b6_6f4a                            ; $6f48: $20 $00

jr_0b6_6f4a:
    nop                                           ; $6f4a: $00

jr_0b6_6f4b:
    sbc h                                         ; $6f4b: $9c
    inc bc                                        ; $6f4c: $03
    ld l, e                                       ; $6f4d: $6b
    ld de, $5f3e                                  ; $6f4e: $11 $3e $5f
    ld bc, $f400                                  ; $6f51: $01 $00 $f4

jr_0b6_6f54:
    ld b, l                                       ; $6f54: $45
    ld a, [hl]                                    ; $6f55: $7e
    ld e, a                                       ; $6f56: $5f
    sub c                                         ; $6f57: $91
    add hl, de                                    ; $6f58: $19
    ld bc, $5b04                                  ; $6f59: $01 $04 $5b
    inc hl                                        ; $6f5c: $23
    ld l, d                                       ; $6f5d: $6a
    dec d                                         ; $6f5e: $15
    sbc a                                         ; $6f5f: $9f
    ld [hl], a                                    ; $6f60: $77
    ld bc, $1104                                  ; $6f61: $01 $04 $11
    dec [hl]                                      ; $6f64: $35
    sbc h                                         ; $6f65: $9c
    ld a, [hl-]                                   ; $6f66: $3a
    ld e, $4f                                     ; $6f67: $1e $4f
    nop                                           ; $6f69: $00
    nop                                           ; $6f6a: $00
    adc h                                         ; $6f6b: $8c
    ld e, l                                       ; $6f6c: $5d
    rst $30                                       ; $6f6d: $f7
    ld b, $ff                                     ; $6f6e: $06 $ff
    ld e, a                                       ; $6f70: $5f
    nop                                           ; $6f71: $00
    jr nz, jr_0b6_6fa6                            ; $6f72: $20 $32

    ld [de], a                                    ; $6f74: $12
    ld e, e                                       ; $6f75: $5b
    inc bc                                        ; $6f76: $03
    or [hl]                                       ; $6f77: $b6
    ld a, [bc]                                    ; $6f78: $0a
    nop                                           ; $6f79: $00
    jr nz, jr_0b6_6f4b                            ; $6f7a: $20 $cf

    dec d                                         ; $6f7c: $15
    sub l                                         ; $6f7d: $95
    ld c, $32                                     ; $6f7e: $0e $32
    ld [de], a                                    ; $6f80: $12
    nop                                           ; $6f81: $00
    nop                                           ; $6f82: $00
    rst $28                                       ; $6f83: $ef
    ld bc, $0b5c                                  ; $6f84: $01 $5c $0b
    cp a                                          ; $6f87: $bf
    ld e, a                                       ; $6f88: $5f
    ld bc, $9e00                                  ; $6f89: $01 $00 $9e
    ld a, $ca                                     ; $6f8c: $3e $ca
    inc e                                         ; $6f8e: $1c
    ld a, a                                       ; $6f8f: $7f
    ld d, a                                       ; $6f90: $57
    inc bc                                        ; $6f91: $03
    db $10                                        ; $6f92: $10
    ld a, e                                       ; $6f93: $7b
    ld l, l                                       ; $6f94: $6d
    rst $38                                       ; $6f95: $ff
    ld d, e                                       ; $6f96: $53
    ld l, b                                       ; $6f97: $68
    dec b                                         ; $6f98: $05
    ld bc, $b304                                  ; $6f99: $01 $04 $b3
    ld d, h                                       ; $6f9c: $54
    rra                                           ; $6f9d: $1f
    ld a, [hl]                                    ; $6f9e: $7e
    dec l                                         ; $6f9f: $2d
    add hl, bc                                    ; $6fa0: $09
    ld bc, $8d00                                  ; $6fa1: $01 $00 $8d
    ld h, c                                       ; $6fa4: $61
    dec sp                                        ; $6fa5: $3b

jr_0b6_6fa6:
    rlca                                          ; $6fa6: $07
    sbc $47                                       ; $6fa7: $de $47
    nop                                           ; $6fa9: $00

jr_0b6_6faa:
    jr nz, jr_0b6_6fbc                            ; $6faa: $20 $10

    ld d, $96                                     ; $6fac: $16 $96
    ld c, $32                                     ; $6fae: $0e $32
    ld [de], a                                    ; $6fb0: $12
    nop                                           ; $6fb1: $00
    jr nz, @-$69                                  ; $6fb2: $20 $95

    ld c, $7c                                     ; $6fb4: $0e $7c
    inc bc                                        ; $6fb6: $03
    ld a, a                                       ; $6fb7: $7f
    ld d, a                                       ; $6fb8: $57
    nop                                           ; $6fb9: $00
    nop                                           ; $6fba: $00
    ld [hl], e                                    ; $6fbb: $73

jr_0b6_6fbc:
    ld c, $71                                     ; $6fbc: $0e $71
    ld e, l                                       ; $6fbe: $5d
    ld a, $7e                                     ; $6fbf: $3e $7e
    ld b, e                                       ; $6fc1: $43
    inc b                                         ; $6fc2: $04
    sub [hl]                                      ; $6fc3: $96
    dec d                                         ; $6fc4: $15
    sbc h                                         ; $6fc5: $9c
    ld [hl], c                                    ; $6fc6: $71
    ld a, l                                       ; $6fc7: $7d
    ld [hl-], a                                   ; $6fc8: $32
    ld h, d                                       ; $6fc9: $62
    ld [$655a], sp                                ; $6fca: $08 $5a $65
    dec [hl]                                      ; $6fcd: $35
    dec de                                        ; $6fce: $1b
    rst $38                                       ; $6fcf: $ff
    ld h, e                                       ; $6fd0: $63
    jr nz, jr_0b6_6fd3                            ; $6fd1: $20 $00

jr_0b6_6fd3:
    ld d, h                                       ; $6fd3: $54
    ld d, h                                       ; $6fd4: $54
    or d                                          ; $6fd5: $b2
    ld [bc], a                                    ; $6fd6: $02
    cp $43                                        ; $6fd7: $fe $43
    ld bc, $7700                                  ; $6fd9: $01 $00 $77
    ld h, h                                       ; $6fdc: $64
    ld de, $bf12                                  ; $6fdd: $11 $12 $bf
    ccf                                           ; $6fe0: $3f
    nop                                           ; $6fe1: $00
    jr nz, jr_0b6_6ff5                            ; $6fe2: $20 $11

    ld [de], a                                    ; $6fe4: $12
    ld a, [de]                                    ; $6fe5: $1a
    inc bc                                        ; $6fe6: $03
    cp a                                          ; $6fe7: $bf
    ccf                                           ; $6fe8: $3f
    nop                                           ; $6fe9: $00
    jr nz, jr_0b6_6faa                            ; $6fea: $20 $be

    dec hl                                        ; $6fec: $2b
    rst $38                                       ; $6fed: $ff
    ld e, a                                       ; $6fee: $5f
    ld a, l                                       ; $6fef: $7d
    ld [hl-], a                                   ; $6ff0: $32
    nop                                           ; $6ff1: $00
    inc b                                         ; $6ff2: $04
    rra                                           ; $6ff3: $1f
    ld a, e                                       ; $6ff4: $7b

jr_0b6_6ff5:
    inc de                                        ; $6ff5: $13
    ld [hl+], a                                   ; $6ff6: $22
    cp [hl]                                       ; $6ff7: $be
    dec de                                        ; $6ff8: $1b
    nop                                           ; $6ff9: $00
    nop                                           ; $6ffa: $00
    ld a, [hl-]                                   ; $6ffb: $3a
    ld l, c                                       ; $6ffc: $69
    sbc a                                         ; $6ffd: $9f
    ld h, a                                       ; $6ffe: $67
    add hl, bc                                    ; $6fff: $09
    add hl, de                                    ; $7000: $19
    nop                                           ; $7001: $00
    nop                                           ; $7002: $00
    ld sp, $d440                                  ; $7003: $31 $40 $d4
    ld c, h                                       ; $7006: $4c
    rst $30                                       ; $7007: $f7
    ld e, h                                       ; $7008: $5c
    nop                                           ; $7009: $00
    nop                                           ; $700a: $00
    ld d, b                                       ; $700b: $50
    ld a, [bc]                                    ; $700c: $0a
    db $dd                                        ; $700d: $dd
    cpl                                           ; $700e: $2f
    ld c, $40                                     ; $700f: $0e $40
    nop                                           ; $7011: $00
    nop                                           ; $7012: $00
    ld a, [de]                                    ; $7013: $1a
    dec bc                                        ; $7014: $0b
    ld c, a                                       ; $7015: $4f
    inc [hl]                                      ; $7016: $34
    ld a, h                                       ; $7017: $7c
    ld [hl], a                                    ; $7018: $77
    nop                                           ; $7019: $00
    jr nz, @+$1c                                  ; $701a: $20 $1a

    inc bc                                        ; $701c: $03
    ld c, a                                       ; $701d: $4f
    inc [hl]                                      ; $701e: $34
    ld a, h                                       ; $701f: $7c
    ld [hl], a                                    ; $7020: $77
    nop                                           ; $7021: $00
    jr nz, @+$3c                                  ; $7022: $20 $3a

    ld l, c                                       ; $7024: $69
    sbc a                                         ; $7025: $9f
    ld h, a                                       ; $7026: $67
    add hl, bc                                    ; $7027: $09
    add hl, de                                    ; $7028: $19
    ld [hl+], a                                   ; $7029: $22
    nop                                           ; $702a: $00
    cp [hl]                                       ; $702b: $be
    inc de                                        ; $702c: $13
    db $dd                                        ; $702d: $dd
    ld [hl], c                                    ; $702e: $71
    ld a, a                                       ; $702f: $7f
    ld [hl], e                                    ; $7030: $73
    ld bc, $d600                                  ; $7031: $01 $00 $d6
    add hl, hl                                    ; $7034: $29
    cp $4a                                        ; $7035: $fe $4a
    sbc a                                         ; $7037: $9f
    ld e, a                                       ; $7038: $5f
    nop                                           ; $7039: $00
    nop                                           ; $703a: $00
    add hl, bc                                    ; $703b: $09
    inc h                                         ; $703c: $24
    ld l, $34                                     ; $703d: $2e $34
    ld b, $14                                     ; $703f: $06 $14
    nop                                           ; $7041: $00
    nop                                           ; $7042: $00
    sub e                                         ; $7043: $93
    ld b, $07                                     ; $7044: $06 $07
    inc e                                         ; $7046: $1c
    rst $38                                       ; $7047: $ff
    inc bc                                        ; $7048: $03
    inc bc                                        ; $7049: $03

jr_0b6_704a:
    inc c                                         ; $704a: $0c
    ld a, h                                       ; $704b: $7c
    rrca                                          ; $704c: $0f
    push af                                       ; $704d: $f5
    ld d, l                                       ; $704e: $55
    cp a                                          ; $704f: $bf
    ld h, a                                       ; $7050: $67
    nop                                           ; $7051: $00
    jr nz, jr_0b6_70d0                            ; $7052: $20 $7c

    rrca                                          ; $7054: $0f
    push af                                       ; $7055: $f5
    ld d, l                                       ; $7056: $55
    cp a                                          ; $7057: $bf
    ld h, a                                       ; $7058: $67
    nop                                           ; $7059: $00
    jr nz, @-$28                                  ; $705a: $20 $d6

    add hl, hl                                    ; $705c: $29
    cp $4a                                        ; $705d: $fe $4a
    sbc a                                         ; $705f: $9f
    ld e, a                                       ; $7060: $5f
    nop                                           ; $7061: $00
    inc b                                         ; $7062: $04
    jr c, jr_0b6_70ca                             ; $7063: $38 $65

    sbc [hl]                                      ; $7065: $9e
    ld e, a                                       ; $7066: $5f
    or $1d                                        ; $7067: $f6 $1d
    ld [hl+], a                                   ; $7069: $22
    nop                                           ; $706a: $00
    ld hl, sp+$2d                                 ; $706b: $f8 $2d
    sbc $46                                       ; $706d: $de $46
    sbc a                                         ; $706f: $9f
    ld h, a                                       ; $7070: $67
    nop                                           ; $7071: $00
    nop                                           ; $7072: $00
    dec b                                         ; $7073: $05
    inc d                                         ; $7074: $14
    ld [$221c], sp                                ; $7075: $08 $1c $22
    inc c                                         ; $7078: $0c
    nop                                           ; $7079: $00
    inc b                                         ; $707a: $04
    ld [hl], $59                                  ; $707b: $36 $59
    ld h, $18                                     ; $707d: $26 $18
    xor e                                         ; $707f: $ab
    inc l                                         ; $7080: $2c
    nop                                           ; $7081: $00
    inc c                                         ; $7082: $0c
    cp [hl]                                       ; $7083: $be
    dec hl                                        ; $7084: $2b
    ld e, [hl]                                    ; $7085: $5e
    ld [hl], e                                    ; $7086: $73
    rrca                                          ; $7087: $0f
    dec a                                         ; $7088: $3d
    nop                                           ; $7089: $00
    jr nz, jr_0b6_704a                            ; $708a: $20 $be

jr_0b6_708c:
    dec hl                                        ; $708c: $2b
    ld e, [hl]                                    ; $708d: $5e
    ld [hl], e                                    ; $708e: $73
    rrca                                          ; $708f: $0f
    dec a                                         ; $7090: $3d
    nop                                           ; $7091: $00
    jr nz, jr_0b6_708c                            ; $7092: $20 $f8

    dec l                                         ; $7094: $2d
    sbc $46                                       ; $7095: $de $46
    sbc a                                         ; $7097: $9f
    ld h, a                                       ; $7098: $67
    nop                                           ; $7099: $00
    ld [$0f7d], sp                                ; $709a: $08 $7d $0f
    ld e, c                                       ; $709d: $59
    ld [hl], l                                    ; $709e: $75
    ld a, $4f                                     ; $709f: $3e $4f
    nop                                           ; $70a1: $00
    nop                                           ; $70a2: $00

jr_0b6_70a3:
    rst $10                                       ; $70a3: $d7
    add hl, hl                                    ; $70a4: $29
    jp z, $dd10                                   ; $70a5: $ca $10 $dd

    ld c, d                                       ; $70a8: $4a
    nop                                           ; $70a9: $00
    nop                                           ; $70aa: $00
    ld de, $5312                                  ; $70ab: $11 $12 $53
    ld c, $74                                     ; $70ae: $0e $74
    ld c, $00                                     ; $70b0: $0e $00
    nop                                           ; $70b2: $00
    ld de, $5c12                                  ; $70b3: $11 $12 $5c
    inc bc                                        ; $70b6: $03
    cp [hl]                                       ; $70b7: $be
    dec hl                                        ; $70b8: $2b
    nop                                           ; $70b9: $00
    ld [$0b3b], sp                                ; $70ba: $08 $3b $0b
    cp [hl]                                       ; $70bd: $be
    ld b, a                                       ; $70be: $47
    rst $38                                       ; $70bf: $ff
    ld [hl], e                                    ; $70c0: $73
    nop                                           ; $70c1: $00

jr_0b6_70c2:
    jr nz, jr_0b6_70ff                            ; $70c2: $20 $3b

    dec bc                                        ; $70c4: $0b
    cp [hl]                                       ; $70c5: $be
    ld b, a                                       ; $70c6: $47
    rst $38                                       ; $70c7: $ff
    ld [hl], e                                    ; $70c8: $73
    nop                                           ; $70c9: $00

jr_0b6_70ca:
    jr nz, jr_0b6_70a3                            ; $70ca: $20 $d7

    add hl, hl                                    ; $70cc: $29
    jp z, $dd10                                   ; $70cd: $ca $10 $dd

jr_0b6_70d0:
    ld c, d                                       ; $70d0: $4a
    nop                                           ; $70d1: $00

jr_0b6_70d2:
    jr nz, jr_0b6_7127                            ; $70d2: $20 $53

    ld [de], a                                    ; $70d4: $12
    sbc $57                                       ; $70d5: $de $57
    ld a, l                                       ; $70d7: $7d
    rlca                                          ; $70d8: $07
    ld de, $be12                                  ; $70d9: $11 $12 $be
    ld b, a                                       ; $70dc: $47
    ld a, h                                       ; $70dd: $7c
    dec bc                                        ; $70de: $0b
    rst $38                                       ; $70df: $ff
    ld l, a                                       ; $70e0: $6f
    ld de, $7412                                  ; $70e1: $11 $12 $74
    ld c, $b6                                     ; $70e4: $0e $b6
    ld a, [bc]                                    ; $70e6: $0a
    ld [hl-], a                                   ; $70e7: $32
    ld [de], a                                    ; $70e8: $12
    rst $10                                       ; $70e9: $d7
    ld b, $be                                     ; $70ea: $06 $be
    dec sp                                        ; $70ec: $3b
    rst $38                                       ; $70ed: $ff
    ld l, a                                       ; $70ee: $6f
    ld a, l                                       ; $70ef: $7d
    dec bc                                        ; $70f0: $0b
    nop                                           ; $70f1: $00
    jr nz, @+$55                                  ; $70f2: $20 $53

    ld a, [bc]                                    ; $70f4: $0a
    sbc $53                                       ; $70f5: $de $53
    ld a, l                                       ; $70f7: $7d
    dec bc                                        ; $70f8: $0b
    nop                                           ; $70f9: $00
    jr nz, jr_0b6_714f                            ; $70fa: $20 $53

    ld a, [bc]                                    ; $70fc: $0a
    sbc $53                                       ; $70fd: $de $53

jr_0b6_70ff:
    ld a, l                                       ; $70ff: $7d
    dec bc                                        ; $7100: $0b
    nop                                           ; $7101: $00
    jr nz, jr_0b6_7104                            ; $7102: $20 $00

jr_0b6_7104:
    jr nz, jr_0b6_711e                            ; $7104: $20 $18

    ld [hl], a                                    ; $7106: $77
    ld c, b                                       ; $7107: $48
    ld b, l                                       ; $7108: $45
    nop                                           ; $7109: $00
    nop                                           ; $710a: $00
    nop                                           ; $710b: $00
    jr nz, jr_0b6_7126                            ; $710c: $20 $18

    ld [hl], a                                    ; $710e: $77
    ld c, b                                       ; $710f: $48
    ld b, l                                       ; $7110: $45
    nop                                           ; $7111: $00
    nop                                           ; $7112: $00
    nop                                           ; $7113: $00
    jr nz, jr_0b6_712e                            ; $7114: $20 $18

    ld [hl], a                                    ; $7116: $77
    ld c, b                                       ; $7117: $48
    ld b, l                                       ; $7118: $45
    nop                                           ; $7119: $00
    nop                                           ; $711a: $00
    sub h                                         ; $711b: $94
    ld [hl], d                                    ; $711c: $72
    sbc h                                         ; $711d: $9c

jr_0b6_711e:
    ld a, e                                       ; $711e: $7b
    nop                                           ; $711f: $00
    jr nz, jr_0b6_7122                            ; $7120: $20 $00

jr_0b6_7122:
    nop                                           ; $7122: $00
    nop                                           ; $7123: $00
    jr nz, jr_0b6_70c2                            ; $7124: $20 $9c

jr_0b6_7126:
    ld a, e                                       ; $7126: $7b

jr_0b6_7127:
    nop                                           ; $7127: $00
    jr nz, jr_0b6_712a                            ; $7128: $20 $00

jr_0b6_712a:
    jr nz, jr_0b6_712c                            ; $712a: $20 $00

jr_0b6_712c:
    jr nz, jr_0b6_70ca                            ; $712c: $20 $9c

jr_0b6_712e:
    ld a, e                                       ; $712e: $7b
    nop                                           ; $712f: $00
    jr nz, jr_0b6_7132                            ; $7130: $20 $00

jr_0b6_7132:
    jr nz, jr_0b6_7134                            ; $7132: $20 $00

jr_0b6_7134:
    jr nz, jr_0b6_70d2                            ; $7134: $20 $9c

    ld a, e                                       ; $7136: $7b
    nop                                           ; $7137: $00
    jr nz, jr_0b6_713a                            ; $7138: $20 $00

jr_0b6_713a:
    jr nz, jr_0b6_713c                            ; $713a: $20 $00

jr_0b6_713c:
    jr nz, jr_0b6_7156                            ; $713c: $20 $18

    ld [hl], a                                    ; $713e: $77
    ld c, b                                       ; $713f: $48
    ld b, l                                       ; $7140: $45

jr_0b6_7141:
    nop                                           ; $7141: $00
    nop                                           ; $7142: $00
    ld e, $03                                     ; $7143: $1e $03
    ld [$0000], a                                 ; $7145: $ea $00 $00
    jr nz, jr_0b6_716a                            ; $7148: $20 $20

    inc d                                         ; $714a: $14
    rra                                           ; $714b: $1f
    inc bc                                        ; $714c: $03
    ld d, a                                       ; $714d: $57
    ld l, [hl]                                    ; $714e: $6e

jr_0b6_714f:
    sbc a                                         ; $714f: $9f
    ld a, a                                       ; $7150: $7f
    nop                                           ; $7151: $00
    nop                                           ; $7152: $00
    ld d, h                                       ; $7153: $54
    ld [de], a                                    ; $7154: $12
    sbc c                                         ; $7155: $99

jr_0b6_7156:
    ld a, d                                       ; $7156: $7a
    rst $38                                       ; $7157: $ff
    inc bc                                        ; $7158: $03
    nop                                           ; $7159: $00
    nop                                           ; $715a: $00
    db $dd                                        ; $715b: $dd
    inc hl                                        ; $715c: $23
    ld de, $0004                                  ; $715d: $11 $04 $00
    jr nz, jr_0b6_7162                            ; $7160: $20 $00

jr_0b6_7162:
    jr nz, jr_0b6_7141                            ; $7162: $20 $dd

    inc hl                                        ; $7164: $23
    ld de, $0004                                  ; $7165: $11 $04 $00
    jr nz, jr_0b6_716a                            ; $7168: $20 $00

jr_0b6_716a:
    jr nz, @-$21                                  ; $716a: $20 $dd

    inc hl                                        ; $716c: $23
    ld de, $0004                                  ; $716d: $11 $04 $00
    jr nz, jr_0b6_7172                            ; $7170: $20 $00

jr_0b6_7172:
    jr nz, jr_0b6_7193                            ; $7172: $20 $1f

    inc bc                                        ; $7174: $03
    ld d, a                                       ; $7175: $57
    ld l, [hl]                                    ; $7176: $6e
    sbc a                                         ; $7177: $9f
    ld a, a                                       ; $7178: $7f
    nop                                           ; $7179: $00
    inc b                                         ; $717a: $04
    sbc [hl]                                      ; $717b: $9e
    ld [bc], a                                    ; $717c: $02
    sbc h                                         ; $717d: $9c
    ld c, e                                       ; $717e: $4b
    rst $38                                       ; $717f: $ff
    inc bc                                        ; $7180: $03
    nop                                           ; $7181: $00
    nop                                           ; $7182: $00
    ld a, [hl]                                    ; $7183: $7e
    ld [bc], a                                    ; $7184: $02
    ld a, [c]                                     ; $7185: $f2
    ld l, c                                       ; $7186: $69
    rst $18                                       ; $7187: $df

jr_0b6_7188:
    ld a, [hl]                                    ; $7188: $7e
    inc b                                         ; $7189: $04
    nop                                           ; $718a: $00
    rrca                                          ; $718b: $0f
    ld [bc], a                                    ; $718c: $02
    sub $75                                       ; $718d: $d6 $75
    ld e, a                                       ; $718f: $5f

jr_0b6_7190:
    inc bc                                        ; $7190: $03
    nop                                           ; $7191: $00
    inc d                                         ; $7192: $14

jr_0b6_7193:
    jp nc, $bf18                                  ; $7193: $d2 $18 $bf

    ld d, [hl]                                    ; $7196: $56
    ccf                                           ; $7197: $3f
    ld [$2000], sp                                ; $7198: $08 $00 $20
    jp nc, $bf18                                  ; $719b: $d2 $18 $bf

    ld d, [hl]                                    ; $719e: $56
    ccf                                           ; $719f: $3f

jr_0b6_71a0:
    ld [$2000], sp                                ; $71a0: $08 $00 $20
    jp nc, $bf18                                  ; $71a3: $d2 $18 $bf

    ld d, [hl]                                    ; $71a6: $56
    ccf                                           ; $71a7: $3f
    ld [$0000], sp                                ; $71a8: $08 $00 $00
    nop                                           ; $71ab: $00
    jr nz, jr_0b6_71a0                            ; $71ac: $20 $f2

    ld l, c                                       ; $71ae: $69
    rst $18                                       ; $71af: $df
    ld a, [hl]                                    ; $71b0: $7e
    nop                                           ; $71b1: $00
    nop                                           ; $71b2: $00
    ld e, $02                                     ; $71b3: $1e $02
    sbc e                                         ; $71b5: $9b
    ld h, a                                       ; $71b6: $67
    rst $38                                       ; $71b7: $ff
    ld [bc], a                                    ; $71b8: $02
    nop                                           ; $71b9: $00
    nop                                           ; $71ba: $00
    rst $38                                       ; $71bb: $ff
    ld bc, $5ceb                                  ; $71bc: $01 $eb $5c
    rst $30                                       ; $71bf: $f7
    ld a, l                                       ; $71c0: $7d
    ld bc, $9400                                  ; $71c1: $01 $00 $94
    ld [hl], c                                    ; $71c4: $71
    cp a                                          ; $71c5: $bf
    ld [bc], a                                    ; $71c6: $02
    ld c, h                                       ; $71c7: $4c
    ld bc, $1000                                  ; $71c8: $01 $00 $10
    or h                                          ; $71cb: $b4
    ld h, d                                       ; $71cc: $62
    or e                                          ; $71cd: $b3
    inc d                                         ; $71ce: $14
    rra                                           ; $71cf: $1f
    ld b, d                                       ; $71d0: $42
    nop                                           ; $71d1: $00
    jr nz, jr_0b6_7188                            ; $71d2: $20 $b4

    ld h, d                                       ; $71d4: $62
    or e                                          ; $71d5: $b3
    inc d                                         ; $71d6: $14
    rra                                           ; $71d7: $1f
    ld b, d                                       ; $71d8: $42
    nop                                           ; $71d9: $00
    jr nz, jr_0b6_7190                            ; $71da: $20 $b4

    ld h, d                                       ; $71dc: $62
    or e                                          ; $71dd: $b3
    inc d                                         ; $71de: $14
    rra                                           ; $71df: $1f
    ld b, d                                       ; $71e0: $42
    nop                                           ; $71e1: $00
    nop                                           ; $71e2: $00
    ld a, e                                       ; $71e3: $7b
    ld h, e                                       ; $71e4: $63
    nop                                           ; $71e5: $00
    jr nz, @+$01                                  ; $71e6: $20 $ff

    ld a, e                                       ; $71e8: $7b
    nop                                           ; $71e9: $00
    nop                                           ; $71ea: $00
    rst $18                                       ; $71eb: $df
    ld bc, $56d5                                  ; $71ec: $01 $d5 $56
    rst $38                                       ; $71ef: $ff
    ld a, a                                       ; $71f0: $7f
    nop                                           ; $71f1: $00

jr_0b6_71f2:
    nop                                           ; $71f2: $00
    rla                                           ; $71f3: $17
    ld bc, $00d0                                  ; $71f4: $01 $d0 $00
    ld a, [hl]                                    ; $71f7: $7e
    ld bc, $0000                                  ; $71f8: $01 $00 $00
    ld a, $02                                     ; $71fb: $3e $02
    jr nc, jr_0b6_7258                            ; $71fd: $30 $59

    dec bc                                        ; $71ff: $0b
    ld bc, $0000                                  ; $7200: $01 $00 $00
    cp h                                          ; $7203: $bc
    ld [hl], a                                    ; $7204: $77
    ld l, [hl]                                    ; $7205: $6e
    ld bc, $025a                                  ; $7206: $01 $5a $02
    nop                                           ; $7209: $00
    nop                                           ; $720a: $00
    sbc $7f                                       ; $720b: $de $7f
    nop                                           ; $720d: $00
    jr nz, @+$5c                                  ; $720e: $20 $5a

    ld [bc], a                                    ; $7210: $02
    nop                                           ; $7211: $00
    jr nz, jr_0b6_71f2                            ; $7212: $20 $de

    ld a, a                                       ; $7214: $7f
    nop                                           ; $7215: $00
    jr nz, jr_0b6_7272                            ; $7216: $20 $5a

    ld [bc], a                                    ; $7218: $02
    nop                                           ; $7219: $00
    nop                                           ; $721a: $00
    rst $38                                       ; $721b: $ff
    ld [hl], e                                    ; $721c: $73
    nop                                           ; $721d: $00
    inc e                                         ; $721e: $1c
    adc b                                         ; $721f: $88
    nop                                           ; $7220: $00
    nop                                           ; $7221: $00
    nop                                           ; $7222: $00
    or d                                          ; $7223: $b2
    ld b, d                                       ; $7224: $42
    ld e, l                                       ; $7225: $5d
    ld bc, $01bf                                  ; $7226: $01 $bf $01
    nop                                           ; $7229: $00
    nop                                           ; $722a: $00
    push de                                       ; $722b: $d5
    nop                                           ; $722c: $00
    dec de                                        ; $722d: $1b
    ld bc, $015e                                  ; $722e: $01 $5e $01
    nop                                           ; $7231: $00
    nop                                           ; $7232: $00
    ld sp, $ab01                                  ; $7233: $31 $01 $ab
    inc a                                         ; $7236: $3c
    sbc $01                                       ; $7237: $de $01
    ld [hl+], a                                   ; $7239: $22
    nop                                           ; $723a: $00
    ld e, c                                       ; $723b: $59
    ld a, [bc]                                    ; $723c: $0a
    add hl, sp                                    ; $723d: $39
    ld h, a                                       ; $723e: $67
    rst $38                                       ; $723f: $ff
    dec de                                        ; $7240: $1b
    nop                                           ; $7241: $00
    nop                                           ; $7242: $00
    ld e, d                                       ; $7243: $5a
    dec hl                                        ; $7244: $2b
    ld a, e                                       ; $7245: $7b
    ld [hl], e                                    ; $7246: $73
    nop                                           ; $7247: $00
    jr nz, jr_0b6_724a                            ; $7248: $20 $00

jr_0b6_724a:
    jr nz, @+$5c                                  ; $724a: $20 $5a

    dec hl                                        ; $724c: $2b
    ld a, e                                       ; $724d: $7b
    ld [hl], e                                    ; $724e: $73
    nop                                           ; $724f: $00
    jr nz, jr_0b6_7252                            ; $7250: $20 $00

jr_0b6_7252:
    nop                                           ; $7252: $00
    ld d, [hl]                                    ; $7253: $56
    ld bc, $3379                                  ; $7254: $01 $79 $33
    nop                                           ; $7257: $00

jr_0b6_7258:
    jr nz, jr_0b6_725a                            ; $7258: $20 $00

jr_0b6_725a:
    nop                                           ; $725a: $00
    dec de                                        ; $725b: $1b
    ld bc, $33bc                                  ; $725c: $01 $bc $33
    ld a, [hl]                                    ; $725f: $7e
    ld bc, $0800                                  ; $7260: $01 $00 $08
    rst $10                                       ; $7263: $d7
    nop                                           ; $7264: $00
    ld l, h                                       ; $7265: $6c
    nop                                           ; $7266: $00
    dec de                                        ; $7267: $1b
    ld bc, $0001                                  ; $7268: $01 $01 $00
    ld e, h                                       ; $726b: $5c
    ld bc, $2847                                  ; $726c: $01 $47 $28
    dec hl                                        ; $726f: $2b
    nop                                           ; $7270: $00
    nop                                           ; $7271: $00

jr_0b6_7272:
    nop                                           ; $7272: $00
    sbc e                                         ; $7273: $9b
    dec [hl]                                      ; $7274: $35
    ld e, d                                       ; $7275: $5a
    ld l, e                                       ; $7276: $6b
    ld h, l                                       ; $7277: $65
    ld [$1000], sp                                ; $7278: $08 $00 $10
    push de                                       ; $727b: $d5
    ld [hl+], a                                   ; $727c: $22
    ld a, e                                       ; $727d: $7b
    ld [hl], e                                    ; $727e: $73
    rst $38                                       ; $727f: $ff
    cpl                                           ; $7280: $2f
    nop                                           ; $7281: $00
    jr nz, @-$29                                  ; $7282: $20 $d5

    ld [hl+], a                                   ; $7284: $22
    ld a, e                                       ; $7285: $7b
    ld [hl], e                                    ; $7286: $73
    rst $38                                       ; $7287: $ff
    cpl                                           ; $7288: $2f
    nop                                           ; $7289: $00
    nop                                           ; $728a: $00
    ld c, [hl]                                    ; $728b: $4e
    ld [de], a                                    ; $728c: $12
    sbc [hl]                                      ; $728d: $9e
    ld bc, $2000                                  ; $728e: $01 $00 $20
    nop                                           ; $7291: $00
    nop                                           ; $7292: $00
    ret c                                         ; $7293: $d8

    nop                                           ; $7294: $00
    sbc e                                         ; $7295: $9b
    dec de                                        ; $7296: $1b
    sbc a                                         ; $7297: $9f
    ld bc, $0000                                  ; $7298: $01 $00 $00
    sub c                                         ; $729b: $91
    nop                                           ; $729c: $00
    or l                                          ; $729d: $b5
    nop                                           ; $729e: $00
    inc bc                                        ; $729f: $03
    inc e                                         ; $72a0: $1c
    nop                                           ; $72a1: $00
    nop                                           ; $72a2: $00
    inc a                                         ; $72a3: $3c
    ld bc, $008f                                  ; $72a4: $01 $8f $00
    inc b                                         ; $72a7: $04
    inc e                                         ; $72a8: $1c

jr_0b6_72a9:
    ld bc, $3b00                                  ; $72a9: $01 $00 $3b
    ld h, a                                       ; $72ac: $67
    db $eb                                        ; $72ad: $eb
    inc e                                         ; $72ae: $1c
    sub d                                         ; $72af: $92
    dec h                                         ; $72b0: $25
    nop                                           ; $72b1: $00
    nop                                           ; $72b2: $00
    rla                                           ; $72b3: $17
    rra                                           ; $72b4: $1f
    ld [hl], e                                    ; $72b5: $73
    ld e, [hl]                                    ; $72b6: $5e
    cp l                                          ; $72b7: $bd
    ld a, e                                       ; $72b8: $7b
    nop                                           ; $72b9: $00
    jr nz, jr_0b6_72a9                            ; $72ba: $20 $ed

    ld d, c                                       ; $72bc: $51
    or h                                          ; $72bd: $b4
    ld h, d                                       ; $72be: $62
    rst $30                                       ; $72bf: $f7
    ld l, d                                       ; $72c0: $6a
    nop                                           ; $72c1: $00
    nop                                           ; $72c2: $00
    ld e, [hl]                                    ; $72c3: $5e
    ld bc, $2000                                  ; $72c4: $01 $00 $20
    rst $18                                       ; $72c7: $df
    ld bc, $0081                                  ; $72c8: $01 $81 $00
    or e                                          ; $72cb: $b3
    nop                                           ; $72cc: $00
    or $0e                                        ; $72cd: $f6 $0e
    inc e                                         ; $72cf: $1c
    ld bc, $0000                                  ; $72d0: $01 $00 $00
    ld c, e                                       ; $72d3: $4b
    nop                                           ; $72d4: $00
    inc bc                                        ; $72d5: $03
    inc d                                         ; $72d6: $14
    adc a                                         ; $72d7: $8f
    nop                                           ; $72d8: $00
    ld b, c                                       ; $72d9: $41
    inc b                                         ; $72da: $04
    sub d                                         ; $72db: $92
    nop                                           ; $72dc: $00
    ld e, [hl]                                    ; $72dd: $5e
    ld bc, $002a                                  ; $72de: $01 $2a $00
    nop                                           ; $72e1: $00
    nop                                           ; $72e2: $00
    sbc d                                         ; $72e3: $9a
    inc de                                        ; $72e4: $13
    ld a, [$8d5e]                                 ; $72e5: $fa $5e $8d
    ld [$0000], sp                                ; $72e8: $08 $00 $00
    add hl, sp                                    ; $72eb: $39
    ld h, a                                       ; $72ec: $67
    ld e, d                                       ; $72ed: $5a
    ld [hl], e                                    ; $72ee: $73
    adc l                                         ; $72ef: $8d
    ld [$2000], sp                                ; $72f0: $08 $00 $20
    ld c, c                                       ; $72f3: $49
    ld c, c                                       ; $72f4: $49
    ld [hl], d                                    ; $72f5: $72
    ld e, [hl]                                    ; $72f6: $5e
    dec b                                         ; $72f7: $05
    dec a                                         ; $72f8: $3d
    inc hl                                        ; $72f9: $23
    nop                                           ; $72fa: $00
    ld a, l                                       ; $72fb: $7d
    ld bc, $6eb5                                  ; $72fc: $01 $b5 $6e
    nop                                           ; $72ff: $00
    jr nz, jr_0b6_7302                            ; $7300: $20 $00

jr_0b6_7302:
    nop                                           ; $7302: $00
    ld l, l                                       ; $7303: $6d
    nop                                           ; $7304: $00
    ld hl, sp+$00                                 ; $7305: $f8 $00
    adc d                                         ; $7307: $8a
    ld bc, $0000                                  ; $7308: $01 $00 $00
    add a                                         ; $730b: $87
    ld [$1d2c], sp                                ; $730c: $08 $2c $1d
    jr z, jr_0b6_7311                             ; $730f: $28 $00

jr_0b6_7311:
    ld bc, $8f00                                  ; $7311: $01 $00 $8f
    nop                                           ; $7314: $00
    ccf                                           ; $7315: $3f
    ld bc, $0444                                  ; $7316: $01 $44 $04
    nop                                           ; $7319: $00
    nop                                           ; $731a: $00
    jr @+$65                                      ; $731b: $18 $63

    rra                                           ; $731d: $1f
    ld [bc], a                                    ; $731e: $02
    xor l                                         ; $731f: $ad
    inc b                                         ; $7320: $04
    nop                                           ; $7321: $00
    nop                                           ; $7322: $00
    jr @+$65                                      ; $7323: $18 $63

    add hl, sp                                    ; $7325: $39
    ld h, a                                       ; $7326: $67
    xor l                                         ; $7327: $ad
    inc b                                         ; $7328: $04
    nop                                           ; $7329: $00
    nop                                           ; $732a: $00
    ld c, c                                       ; $732b: $49
    ld b, l                                       ; $732c: $45
    ld d, d                                       ; $732d: $52
    ld h, d                                       ; $732e: $62
    nop                                           ; $732f: $00
    jr nz, jr_0b6_7332                            ; $7330: $20 $00

jr_0b6_7332:
    inc b                                         ; $7332: $04
    cp a                                          ; $7333: $bf
    ld bc, $6a31                                  ; $7334: $01 $31 $6a
    ld e, e                                       ; $7337: $5b
    ld [hl], a                                    ; $7338: $77
    nop                                           ; $7339: $00
    nop                                           ; $733a: $00
    inc a                                         ; $733b: $3c
    ld bc, $08cb                                  ; $733c: $01 $cb $08

jr_0b6_733f:
    ld h, e                                       ; $733f: $63
    ld [$0000], sp                                ; $7340: $08 $00 $00
    and a                                         ; $7343: $a7
    db $10                                        ; $7344: $10
    dec bc                                        ; $7345: $0b
    add hl, de                                    ; $7346: $19
    ld b, e                                       ; $7347: $43
    ld [$0000], sp                                ; $7348: $08 $00 $00
    dec de                                        ; $734b: $1b
    inc b                                         ; $734c: $04
    rlca                                          ; $734d: $07
    nop                                           ; $734e: $00
    add c                                         ; $734f: $81
    db $10                                        ; $7350: $10
    ld bc, $1800                                  ; $7351: $01 $00 $18
    ld h, e                                       ; $7354: $63
    sbc [hl]                                      ; $7355: $9e
    ld bc, $1106                                  ; $7356: $01 $06 $11
    nop                                           ; $7359: $00
    nop                                           ; $735a: $00
    scf                                           ; $735b: $37
    ld e, a                                       ; $735c: $5f
    ld d, l                                       ; $735d: $55
    ld [$1947], sp                                ; $735e: $08 $47 $19
    nop                                           ; $7361: $00
    inc e                                         ; $7362: $1c
    adc $5d                                       ; $7363: $ce $5d
    rst $30                                       ; $7365: $f7
    ld h, [hl]                                    ; $7366: $66
    sbc $7f                                       ; $7367: $de $7f
    nop                                           ; $7369: $00
    nop                                           ; $736a: $00
    sub $66                                       ; $736b: $d6 $66

jr_0b6_736d:
    cp l                                          ; $736d: $bd
    ld a, e                                       ; $736e: $7b
    xor a                                         ; $736f: $af
    nop                                           ; $7370: $00
    ld [hl+], a                                   ; $7371: $22
    ld [$2192], sp                                ; $7372: $08 $92 $21
    dec sp                                        ; $7375: $3b
    ld bc, $0049                                  ; $7376: $01 $49 $00
    jr nz, jr_0b6_737b                            ; $7379: $20 $00

jr_0b6_737b:
    rst $38                                       ; $737b: $ff
    ld a, a                                       ; $737c: $7f
    ld l, $19                                     ; $737d: $2e $19
    jr nz, jr_0b6_7384                            ; $737f: $20 $03

    ld b, d                                       ; $7381: $42
    inc b                                         ; $7382: $04
    rst $38                                       ; $7383: $ff

jr_0b6_7384:
    ld a, a                                       ; $7384: $7f
    ld [hl-], a                                   ; $7385: $32
    dec c                                         ; $7386: $0d
    jr nz, jr_0b6_738c                            ; $7387: $20 $03

    nop                                           ; $7389: $00
    nop                                           ; $738a: $00
    rst $30                                       ; $738b: $f7

jr_0b6_738c:
    ld e, [hl]                                    ; $738c: $5e
    add $08                                       ; $738d: $c6 $08
    inc c                                         ; $738f: $0c
    dec c                                         ; $7390: $0d
    ld bc, $bf00                                  ; $7391: $01 $00 $bf
    jr jr_0b6_736d                                ; $7394: $18 $d7

    ld d, [hl]                                    ; $7396: $56
    ld [$020d], a                                 ; $7397: $ea $0d $02
    nop                                           ; $739a: $00
    sub $66                                       ; $739b: $d6 $66
    nop                                           ; $739d: $00
    jr nz, jr_0b6_733f                            ; $739e: $20 $9f

    dec [hl]                                      ; $73a0: $35
    nop                                           ; $73a1: $00
    ld [$6610], sp                                ; $73a2: $08 $10 $66
    sub $5a                                       ; $73a5: $d6 $5a
    jr jr_0b6_7420                                ; $73a7: $18 $77

    ld hl, $4b04                                  ; $73a9: $21 $04 $4b
    nop                                           ; $73ac: $00
    ld a, [$2b00]                                 ; $73ad: $fa $00 $2b
    add hl, de                                    ; $73b0: $19
    jr nz, jr_0b6_73b3                            ; $73b1: $20 $00

jr_0b6_73b3:
    or d                                          ; $73b3: $b2
    dec h                                         ; $73b4: $25
    ld a, h                                       ; $73b5: $7c
    ld l, e                                       ; $73b6: $6b
    xor b                                         ; $73b7: $a8
    inc c                                         ; $73b8: $0c
    dec h                                         ; $73b9: $25
    inc b                                         ; $73ba: $04
    ld d, d                                       ; $73bb: $52
    nop                                           ; $73bc: $00
    inc d                                         ; $73bd: $14
    ld [hl], $da                                  ; $73be: $36 $da
    nop                                           ; $73c0: $00
    nop                                           ; $73c1: $00
    nop                                           ; $73c2: $00
    or l                                          ; $73c3: $b5
    ld d, [hl]                                    ; $73c4: $56
    ccf                                           ; $73c5: $3f
    ld c, d                                       ; $73c6: $4a
    adc c                                         ; $73c7: $89
    stop                                          ; $73c8: $10 $00
    nop                                           ; $73ca: $00
    or a                                          ; $73cb: $b7
    ld d, [hl]                                    ; $73cc: $56
    ld c, $00                                     ; $73cd: $0e $00
    cp e                                          ; $73cf: $bb
    inc d                                         ; $73d0: $14
    nop                                           ; $73d1: $00
    inc e                                         ; $73d2: $1c
    jr jr_0b6_73dd                                ; $73d3: $18 $08

    or b                                          ; $73d5: $b0
    ld b, $d6                                     ; $73d6: $06 $d6
    ld e, d                                       ; $73d8: $5a
    nop                                           ; $73d9: $00
    db $10                                        ; $73da: $10
    xor h                                         ; $73db: $ac
    ld d, l                                       ; $73dc: $55

jr_0b6_73dd:
    ld b, $3d                                     ; $73dd: $06 $3d
    sub $5e                                       ; $73df: $d6 $5e
    nop                                           ; $73e1: $00
    nop                                           ; $73e2: $00
    or l                                          ; $73e3: $b5
    ld d, [hl]                                    ; $73e4: $56
    rst $00                                       ; $73e5: $c7
    db $10                                        ; $73e6: $10
    ld hl, $a700                                  ; $73e7: $21 $00 $a7
    db $10                                        ; $73ea: $10
    or d                                          ; $73eb: $b2
    add hl, hl                                    ; $73ec: $29
    ld d, [hl]                                    ; $73ed: $56
    ld a, $4e                                     ; $73ee: $3e $4e
    dec e                                         ; $73f0: $1d
    ld [bc], a                                    ; $73f1: $02
    nop                                           ; $73f2: $00
    or d                                          ; $73f3: $b2
    add hl, hl                                    ; $73f4: $29
    ld [hl], e                                    ; $73f5: $73
    ld c, [hl]                                    ; $73f6: $4e
    xor c                                         ; $73f7: $a9
    ld [$0000], sp                                ; $73f8: $08 $00 $00
    db $10                                        ; $73fb: $10
    ld b, d                                       ; $73fc: $42
    jp z, $b50c                                   ; $73fd: $ca $0c $b5

    ld d, [hl]                                    ; $7400: $56
    nop                                           ; $7401: $00
    nop                                           ; $7402: $00
    or l                                          ; $7403: $b5
    ld d, [hl]                                    ; $7404: $56
    add $08                                       ; $7405: $c6 $08
    dec b                                         ; $7407: $05
    nop                                           ; $7408: $00
    nop                                           ; $7409: $00
    inc e                                         ; $740a: $1c
    ld e, a                                       ; $740b: $5f
    add hl, hl                                    ; $740c: $29
    ld a, [bc]                                    ; $740d: $0a
    add hl, bc                                    ; $740e: $09
    ld a, [hl-]                                   ; $740f: $3a
    ld h, a                                       ; $7410: $67
    nop                                           ; $7411: $00
    nop                                           ; $7412: $00
    ld c, b                                       ; $7413: $48
    ld b, l                                       ; $7414: $45
    sub h                                         ; $7415: $94
    ld d, d                                       ; $7416: $52
    nop                                           ; $7417: $00
    jr nz, jr_0b6_741a                            ; $7418: $20 $00

jr_0b6_741a:
    nop                                           ; $741a: $00
    sub h                                         ; $741b: $94
    ld d, d                                       ; $741c: $52
    add $00                                       ; $741d: $c6 $00
    or l                                          ; $741f: $b5

jr_0b6_7420:
    ld d, [hl]                                    ; $7420: $56
    nop                                           ; $7421: $00
    nop                                           ; $7422: $00
    inc l                                         ; $7423: $2c
    dec e                                         ; $7424: $1d
    rla                                           ; $7425: $17
    inc de                                        ; $7426: $13
    sub d                                         ; $7427: $92
    dec e                                         ; $7428: $1d
    ld b, d                                       ; $7429: $42
    ld [$2558], sp                                ; $742a: $08 $58 $25
    cp h                                          ; $742d: $bc
    ld d, [hl]                                    ; $742e: $56
    jp hl                                         ; $742f: $e9


    stop                                          ; $7430: $10 $00
    nop                                           ; $7432: $00
    jr nc, @+$0c                                  ; $7433: $30 $0a

    sub e                                         ; $7435: $93
    ld d, d                                       ; $7436: $52
    jp z, RST_08                                  ; $7437: $ca $08 $00

    nop                                           ; $743a: $00
    ld l, e                                       ; $743b: $6b
    dec l                                         ; $743c: $2d
    add hl, bc                                    ; $743d: $09
    ld de, $4a52                                  ; $743e: $11 $52 $4a
    nop                                           ; $7441: $00
    inc e                                         ; $7442: $1c
    stop                                          ; $7443: $10 $00
    call z, $bd51                                 ; $7445: $cc $51 $bd
    inc d                                         ; $7448: $14
    nop                                           ; $7449: $00
    nop                                           ; $744a: $00
    ld c, b                                       ; $744b: $48
    ld b, l                                       ; $744c: $45
    ld d, d                                       ; $744d: $52
    ld d, d                                       ; $744e: $52
    nop                                           ; $744f: $00
    jr nz, jr_0b6_7452                            ; $7450: $20 $00

jr_0b6_7452:
    nop                                           ; $7452: $00
    halt                                          ; $7453: $76
    ld c, [hl]                                    ; $7454: $4e
    ld a, b                                       ; $7455: $78
    inc de                                        ; $7456: $13
    ld [de], a                                    ; $7457: $12
    inc d                                         ; $7458: $14
    ld b, d                                       ; $7459: $42
    inc b                                         ; $745a: $04
    jr @+$30                                      ; $745b: $18 $2e

    add sp, $10                                   ; $745d: $e8 $10
    ld e, c                                       ; $745f: $59
    inc de                                        ; $7460: $13
    ld bc, $bf00                                  ; $7461: $01 $00 $bf
    inc d                                         ; $7464: $14
    rst $38                                       ; $7465: $ff
    ld a, e                                       ; $7466: $7b
    dec bc                                        ; $7467: $0b
    dec c                                         ; $7468: $0d
    nop                                           ; $7469: $00

jr_0b6_746a:
    nop                                           ; $746a: $00
    ld d, d                                       ; $746b: $52
    ld c, d                                       ; $746c: $4a
    add hl, bc                                    ; $746d: $09
    dec b                                         ; $746e: $05
    dec e                                         ; $746f: $1d
    ld d, d                                       ; $7470: $52
    nop                                           ; $7471: $00
    nop                                           ; $7472: $00
    ld d, b                                       ; $7473: $50
    ld b, $52                                     ; $7474: $06 $52
    ld c, d                                       ; $7476: $4a
    ld [hl], d                                    ; $7477: $72
    inc e                                         ; $7478: $1c
    jr nz, jr_0b6_747b                            ; $7479: $20 $00

jr_0b6_747b:
    sub e                                         ; $747b: $93
    ld e, [hl]                                    ; $747c: $5e
    nop                                           ; $747d: $00

jr_0b6_747e:
    jr nz, jr_0b6_746a                            ; $747e: $20 $ea

    ld [$1800], sp                                ; $7480: $08 $00 $18
    daa                                           ; $7483: $27
    ld b, c                                       ; $7484: $41
    ld sp, $384e                                  ; $7485: $31 $4e $38
    ld l, a                                       ; $7488: $6f
    ld bc, $ff00                                  ; $7489: $01 $00 $ff
    inc e                                         ; $748c: $1c
    db $dd                                        ; $748d: $dd
    ld e, d                                       ; $748e: $5a
    ld d, d                                       ; $748f: $52
    ld [$0001], sp                                ; $7490: $08 $01 $00
    jp hl                                         ; $7493: $e9


    jr jr_0b6_7506                                ; $7494: $18 $70

    ld hl, $10a5                                  ; $7496: $21 $a5 $10
    ld bc, $7200                                  ; $7499: $01 $00 $72
    ld e, $bc                                     ; $749c: $1e $bc
    ld c, e                                       ; $749e: $4b
    ld c, c                                       ; $749f: $49
    ld bc, $0000                                  ; $74a0: $01 $00 $00
    ld sp, $5a46                                  ; $74a3: $31 $46 $5a
    ld h, $6b                                     ; $74a6: $26 $6b
    ld de, $0000                                  ; $74a8: $11 $00 $00
    rrca                                          ; $74ab: $0f
    ld a, [bc]                                    ; $74ac: $0a
    ld sp, $b246                                  ; $74ad: $31 $46 $b2
    ld b, $00                                     ; $74b0: $06 $00
    inc e                                         ; $74b2: $1c
    ld d, $0f                                     ; $74b3: $16 $0f
    ld d, c                                       ; $74b5: $51
    ld e, d                                       ; $74b6: $5a
    ld e, d                                       ; $74b7: $5a
    ld [hl], e                                    ; $74b8: $73
    nop                                           ; $74b9: $00
    nop                                           ; $74ba: $00
    call $d649                                    ; $74bb: $cd $49 $d6
    ld h, [hl]                                    ; $74be: $66
    nop                                           ; $74bf: $00
    jr nz, jr_0b6_74c2                            ; $74c0: $20 $00

jr_0b6_74c2:
    nop                                           ; $74c2: $00
    ld e, [hl]                                    ; $74c3: $5e
    add hl, hl                                    ; $74c4: $29
    ld [de], a                                    ; $74c5: $12
    nop                                           ; $74c6: $00
    rst $18                                       ; $74c7: $df
    ld e, [hl]                                    ; $74c8: $5e
    nop                                           ; $74c9: $00
    inc b                                         ; $74ca: $04
    ld [$7114], a                                 ; $74cb: $ea $14 $71
    ld hl, $0485                                  ; $74ce: $21 $85 $04
    ld b, e                                       ; $74d1: $43
    inc c                                         ; $74d2: $0c
    ld d, c                                       ; $74d3: $51
    ld h, $ff                                     ; $74d4: $26 $ff
    ld e, e                                       ; $74d6: $5b
    jp hl                                         ; $74d7: $e9


    jr jr_0b6_74da                                ; $74d8: $18 $00

jr_0b6_74da:
    nop                                           ; $74da: $00
    db $10                                        ; $74db: $10
    ld b, d                                       ; $74dc: $42
    add [hl]                                      ; $74dd: $86
    inc c                                         ; $74de: $0c
    jp hl                                         ; $74df: $e9


    inc c                                         ; $74e0: $0c
    nop                                           ; $74e1: $00
    nop                                           ; $74e2: $00
    db $10                                        ; $74e3: $10
    ld b, d                                       ; $74e4: $42
    ld e, $46                                     ; $74e5: $1e $46
    rst $00                                       ; $74e7: $c7
    jr jr_0b6_74ea                                ; $74e8: $18 $00

jr_0b6_74ea:
    nop                                           ; $74ea: $00
    rst $38                                       ; $74eb: $ff
    ld a, a                                       ; $74ec: $7f
    nop                                           ; $74ed: $00
    jr nz, jr_0b6_74f2                            ; $74ee: $20 $02

    nop                                           ; $74f0: $00
    nop                                           ; $74f1: $00

jr_0b6_74f2:
    jr jr_0b6_747e                                ; $74f2: $18 $8a

    ld c, c                                       ; $74f4: $49
    ld a, d                                       ; $74f5: $7a
    ld [hl], e                                    ; $74f6: $73
    ld [hl], d                                    ; $74f7: $72
    ld e, d                                       ; $74f8: $5a
    ld hl, $7100                                  ; $74f9: $21 $00 $71
    ld h, $ce                                     ; $74fc: $26 $ce
    ld [$2fdc], sp                                ; $74fe: $08 $dc $2f
    nop                                           ; $7501: $00
    inc b                                         ; $7502: $04
    adc d                                         ; $7503: $8a

Call_0b6_7504:
    inc a                                         ; $7504: $3c
    ld c, [hl]                                    ; $7505: $4e

jr_0b6_7506:
    ld hl, $0886                                  ; $7506: $21 $86 $08
    add [hl]                                      ; $7509: $86
    inc c                                         ; $750a: $0c
    ld a, [c]                                     ; $750b: $f2
    dec l                                         ; $750c: $2d
    rst $38                                       ; $750d: $ff
    ld b, a                                       ; $750e: $47
    call Call_0b6_424c                            ; $750f: $cd $4c $42
    nop                                           ; $7512: $00
    call nc, $c94a                                ; $7513: $d4 $4a $c9
    jr nz, jr_0b6_7577                            ; $7516: $20 $5f

    ld a, a                                       ; $7518: $7f
    nop                                           ; $7519: $00
    nop                                           ; $751a: $00
    db $10                                        ; $751b: $10
    ld b, d                                       ; $751c: $42
    ld c, d                                       ; $751d: $4a
    ld [$0ceb], sp                                ; $751e: $08 $eb $0c
    nop                                           ; $7521: $00
    nop                                           ; $7522: $00
    rst $38                                       ; $7523: $ff
    daa                                           ; $7524: $27
    sbc $7f                                       ; $7525: $de $7f
    nop                                           ; $7527: $00
    jr nz, jr_0b6_752a                            ; $7528: $20 $00

jr_0b6_752a:
    inc e                                         ; $752a: $1c
    xor h                                         ; $752b: $ac
    ld c, l                                       ; $752c: $4d
    or h                                          ; $752d: $b4
    ld h, d                                       ; $752e: $62
    sbc e                                         ; $752f: $9b
    ld [hl], a                                    ; $7530: $77
    ld b, c                                       ; $7531: $41
    nop                                           ; $7532: $00
    sub $16                                       ; $7533: $d6 $16
    xor h                                         ; $7535: $ac
    dec c                                         ; $7536: $0d
    sbc e                                         ; $7537: $9b
    dec sp                                        ; $7538: $3b
    nop                                           ; $7539: $00
    nop                                           ; $753a: $00
    jr nc, jr_0b6_7592                            ; $753b: $30 $55

    ld b, l                                       ; $753d: $45
    jr nz, @-$69                                  ; $753e: $20 $95

    ld [hl], c                                    ; $7540: $71
    add l                                         ; $7541: $85
    inc b                                         ; $7542: $04
    pop de                                        ; $7543: $d1
    dec d                                         ; $7544: $15
    cp l                                          ; $7545: $bd
    cpl                                           ; $7546: $2f
    or h                                          ; $7547: $b4
    ld [hl], l                                    ; $7548: $75
    ld b, e                                       ; $7549: $43
    nop                                           ; $754a: $00
    adc [hl]                                      ; $754b: $8e
    dec a                                         ; $754c: $3d
    jr jr_0b6_75c9                                ; $754d: $18 $7a

    ld c, d                                       ; $754f: $4a
    ld de, $0000                                  ; $7550: $11 $00 $00
    db $10                                        ; $7553: $10
    ld b, d                                       ; $7554: $42
    and [hl]                                      ; $7555: $a6
    inc b                                         ; $7556: $04
    inc c                                         ; $7557: $0c
    dec c                                         ; $7558: $0d
    nop                                           ; $7559: $00
    inc e                                         ; $755a: $1c
    add hl, sp                                    ; $755b: $39
    dec hl                                        ; $755c: $2b
    or h                                          ; $755d: $b4
    ld h, d                                       ; $755e: $62
    db $dd                                        ; $755f: $dd
    ld a, e                                       ; $7560: $7b
    nop                                           ; $7561: $00
    jr nz, @-$73                                  ; $7562: $20 $8b

    ld c, c                                       ; $7564: $49
    push de                                       ; $7565: $d5
    ld h, [hl]                                    ; $7566: $66
    cpl                                           ; $7567: $2f
    ld d, [hl]                                    ; $7568: $56
    nop                                           ; $7569: $00
    nop                                           ; $756a: $00
    sbc $3f                                       ; $756b: $de $3f
    ld [hl], c                                    ; $756d: $71
    ld d, $28                                     ; $756e: $16 $28
    ld bc, $0c23                                  ; $7570: $01 $23 $0c
    rst $10                                       ; $7573: $d7
    ld [hl], l                                    ; $7574: $75
    rst $38                                       ; $7575: $ff
    dec bc                                        ; $7576: $0b

jr_0b6_7577:
    adc a                                         ; $7577: $8f
    ld [bc], a                                    ; $7578: $02
    ld b, l                                       ; $7579: $45
    ld [$0ef3], sp                                ; $757a: $08 $f3 $0e
    or h                                          ; $757d: $b4
    inc c                                         ; $757e: $0c
    sbc a                                         ; $757f: $9f
    ld d, [hl]                                    ; $7580: $56
    ld hl, $7200                                  ; $7581: $21 $00 $72
    ld e, l                                       ; $7584: $5d
    ld a, [bc]                                    ; $7585: $0a
    ld hl, $7df9                                  ; $7586: $21 $f9 $7d
    nop                                           ; $7589: $00
    nop                                           ; $758a: $00
    db $10                                        ; $758b: $10
    ld b, d                                       ; $758c: $42
    sbc $7f                                       ; $758d: $de $7f
    ret z                                         ; $758f: $c8

    inc c                                         ; $7590: $0c
    nop                                           ; $7591: $00

jr_0b6_7592:
    nop                                           ; $7592: $00
    ld a, e                                       ; $7593: $7b
    inc hl                                        ; $7594: $23
    push de                                       ; $7595: $d5
    ld h, [hl]                                    ; $7596: $66
    nop                                           ; $7597: $00
    jr nz, jr_0b6_759a                            ; $7598: $20 $00

jr_0b6_759a:
    jr nz, jr_0b6_75e4                            ; $759a: $20 $48

    ld b, c                                       ; $759c: $41
    cpl                                           ; $759d: $2f
    ld d, [hl]                                    ; $759e: $56
    adc e                                         ; $759f: $8b
    ld c, c                                       ; $75a0: $49
    add h                                         ; $75a1: $84
    nop                                           ; $75a2: $00
    rla                                           ; $75a3: $17
    ld hl, $5e78                                  ; $75a4: $21 $78 $5e
    ld [hl], c                                    ; $75a7: $71
    ld a, [bc]                                    ; $75a8: $0a
    inc b                                         ; $75a9: $04
    nop                                           ; $75aa: $00
    ld a, [c]                                     ; $75ab: $f2
    ld h, c                                       ; $75ac: $61
    ld [$bd31], sp                                ; $75ad: $08 $31 $bd
    ld a, [hl]                                    ; $75b0: $7e
    ld b, [hl]                                    ; $75b1: $46
    ld [$20fc], sp                                ; $75b2: $08 $fc $20
    ld a, a                                       ; $75b5: $7f
    ld c, [hl]                                    ; $75b6: $4e
    ld d, a                                       ; $75b7: $57
    rrca                                          ; $75b8: $0f
    ld b, c                                       ; $75b9: $41
    nop                                           ; $75ba: $00
    xor $50                                       ; $75bb: $ee $50
    xor c                                         ; $75bd: $a9
    ld bc, $7d95                                  ; $75be: $01 $95 $7d
    nop                                           ; $75c1: $00
    nop                                           ; $75c2: $00
    db $10                                        ; $75c3: $10
    ld b, d                                       ; $75c4: $42
    inc l                                         ; $75c5: $2c
    dec c                                         ; $75c6: $0d
    rst $30                                       ; $75c7: $f7
    ld l, d                                       ; $75c8: $6a

jr_0b6_75c9:
    nop                                           ; $75c9: $00
    nop                                           ; $75ca: $00
    cpl                                           ; $75cb: $2f
    ld d, [hl]                                    ; $75cc: $56
    nop                                           ; $75cd: $00
    jr nz, @-$29                                  ; $75ce: $20 $d5

    ld [hl+], a                                   ; $75d0: $22
    nop                                           ; $75d1: $00
    jr nz, jr_0b6_75da                            ; $75d2: $20 $06

    ld b, c                                       ; $75d4: $41
    ld h, $41                                     ; $75d5: $26 $41
    cp l                                          ; $75d7: $bd
    ld a, [hl]                                    ; $75d8: $7e
    inc bc                                        ; $75d9: $03

jr_0b6_75da:
    nop                                           ; $75da: $00
    cp $3d                                        ; $75db: $fe $3d
    ld d, b                                       ; $75dd: $50
    dec [hl]                                      ; $75de: $35
    ccf                                           ; $75df: $3f
    ld h, a                                       ; $75e0: $67
    ld b, e                                       ; $75e1: $43
    inc d                                         ; $75e2: $14
    ld a, b                                       ; $75e3: $78

jr_0b6_75e4:
    ld a, d                                       ; $75e4: $7a
    ld sp, $2e04                                  ; $75e5: $31 $04 $2e
    ld b, l                                       ; $75e8: $45

jr_0b6_75e9:
    ld bc, $5b00                                  ; $75e9: $01 $00 $5b
    inc b                                         ; $75ec: $04
    ld a, [hl]                                    ; $75ed: $7e
    dec l                                         ; $75ee: $2d
    call RST_20                                   ; $75ef: $cd $20 $00
    nop                                           ; $75f2: $00
    cpl                                           ; $75f3: $2f
    ld b, l                                       ; $75f4: $45

jr_0b6_75f5:
    sbc a                                         ; $75f5: $9f
    ld [$2467], sp                                ; $75f6: $08 $67 $24
    nop                                           ; $75f9: $00

jr_0b6_75fa:
    nop                                           ; $75fa: $00
    di                                            ; $75fb: $f3
    ld c, $ee                                     ; $75fc: $0e $ee
    ld b, l                                       ; $75fe: $45
    add sp, $04                                   ; $75ff: $e8 $04
    nop                                           ; $7601: $00
    jr nz, jr_0b6_75e9                            ; $7602: $20 $e5

    inc a                                         ; $7604: $3c
    ld c, b                                       ; $7605: $48
    ld b, l                                       ; $7606: $45
    add sp, $04                                   ; $7607: $e8 $04
    nop                                           ; $7609: $00
    jr nz, jr_0b6_75fa                            ; $760a: $20 $ee

    ld e, l                                       ; $760c: $5d
    ld sp, $2e04                                  ; $760d: $31 $04 $2e
    ld b, l                                       ; $7610: $45
    nop                                           ; $7611: $00
    nop                                           ; $7612: $00
    rst $18                                       ; $7613: $df
    jr jr_0b6_75f5                                ; $7614: $18 $df

    ld e, d                                       ; $7616: $5a
    daa                                           ; $7617: $27
    ld b, l                                       ; $7618: $45
    ld [bc], a                                    ; $7619: $02
    inc b                                         ; $761a: $04
    halt                                          ; $761b: $76
    db $10                                        ; $761c: $10
    cp a                                          ; $761d: $bf
    dec [hl]                                      ; $761e: $35
    ld l, b                                       ; $761f: $68
    jr nc, jr_0b6_7645                            ; $7620: $30 $23

    nop                                           ; $7622: $00
    ld e, d                                       ; $7623: $5a
    inc b                                         ; $7624: $04
    ld l, l                                       ; $7625: $6d
    dec c                                         ; $7626: $0d
    dec d                                         ; $7627: $15
    rra                                           ; $7628: $1f
    ld bc, $8908                                  ; $7629: $01 $08 $89
    jr c, @+$17                                   ; $762c: $38 $15

    nop                                           ; $762e: $00
    dec h                                         ; $762f: $25
    jr nz, jr_0b6_7633                            ; $7630: $20 $01

    nop                                           ; $7632: $00

jr_0b6_7633:
    daa                                           ; $7633: $27
    ld b, c                                       ; $7634: $41
    inc e                                         ; $7635: $1c
    inc b                                         ; $7636: $04
    rst $28                                       ; $7637: $ef
    ld b, c                                       ; $7638: $41
    nop                                           ; $7639: $00
    jr nz, @-$19                                  ; $763a: $20 $e5

    inc a                                         ; $763c: $3c
    inc e                                         ; $763d: $1c
    inc b                                         ; $763e: $04
    rst $28                                       ; $763f: $ef
    ld b, c                                       ; $7640: $41
    nop                                           ; $7641: $00
    jr nz, jr_0b6_76ba                            ; $7642: $20 $76

    db $10                                        ; $7644: $10

jr_0b6_7645:
    cp a                                          ; $7645: $bf
    dec [hl]                                      ; $7646: $35

jr_0b6_7647:
    ld l, b                                       ; $7647: $68
    jr nc, jr_0b6_76af                            ; $7648: $30 $65

    inc c                                         ; $764a: $0c
    cp a                                          ; $764b: $bf
    dec [hl]                                      ; $764c: $35
    ld a, [hl-]                                   ; $764d: $3a
    ld [$6673], sp                                ; $764e: $08 $73 $66
    ld bc, $de00                                  ; $7651: $01 $00 $de
    ld b, e                                       ; $7654: $43
    dec bc                                        ; $7655: $0b
    ld b, $10                                     ; $7656: $06 $10
    nop                                           ; $7658: $00

Call_0b6_7659:
jr_0b6_7659:
    ld [bc], a                                    ; $7659: $02

jr_0b6_765a:
    nop                                           ; $765a: $00
    ld [hl], c                                    ; $765b: $71
    ld [$1cbf], sp                                ; $765c: $08 $bf $1c
    ret nz                                        ; $765f: $c0

    ld bc, $0000                                  ; $7660: $01 $00 $00
    dec h                                         ; $7663: $25
    inc h                                         ; $7664: $24
    rst $00                                       ; $7665: $c7
    nop                                           ; $7666: $00
    ldh [rP1], a                                  ; $7667: $e0 $00
    nop                                           ; $7669: $00
    nop                                           ; $766a: $00
    push hl                                       ; $766b: $e5
    inc a                                         ; $766c: $3c
    ld [hl], e                                    ; $766d: $73
    ld l, [hl]                                    ; $766e: $6e
    rst $28                                       ; $766f: $ef
    ld b, l                                       ; $7670: $45
    nop                                           ; $7671: $00
    jr nz, jr_0b6_7659                            ; $7672: $20 $e5

    inc a                                         ; $7674: $3c
    ld [hl], e                                    ; $7675: $73
    ld l, [hl]                                    ; $7676: $6e
    rst $28                                       ; $7677: $ef
    ld b, l                                       ; $7678: $45
    nop                                           ; $7679: $00
    jr nz, jr_0b6_765a                            ; $767a: $20 $de

    ld b, e                                       ; $767c: $43
    dec bc                                        ; $767d: $0b
    ld b, $10                                     ; $767e: $06 $10
    nop                                           ; $7680: $00
    nop                                           ; $7681: $00
    inc b                                         ; $7682: $04
    jr @+$79                                      ; $7683: $18 $77

    ld sp, $090a                                  ; $7685: $31 $0a $09
    nop                                           ; $7688: $00
    nop                                           ; $7689: $00
    nop                                           ; $768a: $00
    sub e                                         ; $768b: $93
    ld d, $dd                                     ; $768c: $16 $dd
    cpl                                           ; $768e: $2f
    jr nc, jr_0b6_7691                            ; $768f: $30 $00

jr_0b6_7691:
    jr nz, jr_0b6_7693                            ; $7691: $20 $00

jr_0b6_7693:
    and c                                         ; $7693: $a1
    rlca                                          ; $7694: $07
    ld b, b                                       ; $7695: $40
    ld bc, $0408                                  ; $7696: $01 $08 $04
    nop                                           ; $7699: $00
    nop                                           ; $769a: $00
    ld h, c                                       ; $769b: $61
    rlca                                          ; $769c: $07
    add b                                         ; $769d: $80
    ld bc, $0468                                  ; $769e: $01 $68 $04
    nop                                           ; $76a1: $00
    db $10                                        ; $76a2: $10
    db $10                                        ; $76a3: $10
    ld b, d                                       ; $76a4: $42
    sub h                                         ; $76a5: $94
    ld [hl], d                                    ; $76a6: $72
    ld a, e                                       ; $76a7: $7b
    ld [hl], a                                    ; $76a8: $77
    nop                                           ; $76a9: $00
    jr nz, jr_0b6_76bc                            ; $76aa: $20 $10

    ld b, d                                       ; $76ac: $42
    sub h                                         ; $76ad: $94
    ld [hl], d                                    ; $76ae: $72

jr_0b6_76af:
    ld a, e                                       ; $76af: $7b
    ld [hl], a                                    ; $76b0: $77
    nop                                           ; $76b1: $00
    jr nz, jr_0b6_7647                            ; $76b2: $20 $93

    ld d, $dd                                     ; $76b4: $16 $dd
    cpl                                           ; $76b6: $2f
    jr nc, jr_0b6_76b9                            ; $76b7: $30 $00

jr_0b6_76b9:
    nop                                           ; $76b9: $00

jr_0b6_76ba:
    nop                                           ; $76ba: $00
    sbc h                                         ; $76bb: $9c

jr_0b6_76bc:
    ld [hl], a                                    ; $76bc: $77
    ld c, d                                       ; $76bd: $4a
    dec b                                         ; $76be: $05
    nop                                           ; $76bf: $00
    jr nz, jr_0b6_76c2                            ; $76c0: $20 $00

jr_0b6_76c2:
    nop                                           ; $76c2: $00
    ld sp, $9c12                                  ; $76c3: $31 $12 $9c
    inc hl                                        ; $76c6: $23
    sub $16                                       ; $76c7: $d6 $16
    nop                                           ; $76c9: $00
    nop                                           ; $76ca: $00
    rrca                                          ; $76cb: $0f
    ld h, d                                       ; $76cc: $62
    sbc h                                         ; $76cd: $9c
    ld a, e                                       ; $76ce: $7b
    or l                                          ; $76cf: $b5
    ld l, [hl]                                    ; $76d0: $6e
    nop                                           ; $76d1: $00
    nop                                           ; $76d2: $00
    push hl                                       ; $76d3: $e5
    inc a                                         ; $76d4: $3c
    rrca                                          ; $76d5: $0f
    ld e, d                                       ; $76d6: $5a
    ld c, c                                       ; $76d7: $49

jr_0b6_76d8:
    ld c, c                                       ; $76d8: $49
    nop                                           ; $76d9: $00
    nop                                           ; $76da: $00

jr_0b6_76db:
    rst $30                                       ; $76db: $f7
    ld [hl], d                                    ; $76dc: $72
    sbc $7b                                       ; $76dd: $de $7b
    nop                                           ; $76df: $00
    jr nz, jr_0b6_76e2                            ; $76e0: $20 $00

jr_0b6_76e2:
    jr nz, jr_0b6_76db                            ; $76e2: $20 $f7

    ld [hl], d                                    ; $76e4: $72
    sbc $7b                                       ; $76e5: $de $7b
    nop                                           ; $76e7: $00
    jr nz, jr_0b6_76ea                            ; $76e8: $20 $00

jr_0b6_76ea:
    jr nz, jr_0b6_771d                            ; $76ea: $20 $31

    ld [de], a                                    ; $76ec: $12
    sbc h                                         ; $76ed: $9c
    inc hl                                        ; $76ee: $23
    sub $16                                       ; $76ef: $d6 $16
    nop                                           ; $76f1: $00
    jr nz, @-$6b                                  ; $76f2: $20 $93

    ld h, d                                       ; $76f4: $62
    sbc h                                         ; $76f5: $9c
    ld [hl], a                                    ; $76f6: $77
    ld l, c                                       ; $76f7: $69
    ld b, l                                       ; $76f8: $45
    push hl                                       ; $76f9: $e5
    inc a                                         ; $76fa: $3c
    ld sp, $f766                                  ; $76fb: $31 $66 $f7
    ld [hl], d                                    ; $76fe: $72
    ld c, c                                       ; $76ff: $49
    ld c, l                                       ; $7700: $4d
    daa                                           ; $7701: $27
    ld b, l                                       ; $7702: $45
    sub l                                         ; $7703: $95

Call_0b6_7704:
    ld [hl], d                                    ; $7704: $72
    sbc h                                         ; $7705: $9c
    ld a, e                                       ; $7706: $7b
    adc $5d                                       ; $7707: $ce $5d
    ld l, d                                       ; $7709: $6a
    ld c, l                                       ; $770a: $4d
    sub h                                         ; $770b: $94
    ld l, [hl]                                    ; $770c: $6e
    jr nc, jr_0b6_776d                            ; $770d: $30 $5e

    ld e, d                                       ; $770f: $5a
    ld [hl], e                                    ; $7710: $73
    nop                                           ; $7711: $00
    jr nz, jr_0b6_7787                            ; $7712: $20 $73

    ld e, [hl]                                    ; $7714: $5e
    cp h                                          ; $7715: $bc
    ld a, e                                       ; $7716: $7b
    push hl                                       ; $7717: $e5
    inc a                                         ; $7718: $3c
    nop                                           ; $7719: $00
    jr nz, jr_0b6_778f                            ; $771a: $20 $73

    ld e, [hl]                                    ; $771c: $5e

jr_0b6_771d:
    cp h                                          ; $771d: $bc
    ld a, e                                       ; $771e: $7b
    push hl                                       ; $771f: $e5
    inc a                                         ; $7720: $3c
    nop                                           ; $7721: $00
    jr nz, jr_0b6_7724                            ; $7722: $20 $00

jr_0b6_7724:
    jr nz, jr_0b6_773e                            ; $7724: $20 $18

    ld [hl], a                                    ; $7726: $77
    ld c, b                                       ; $7727: $48
    ld b, l                                       ; $7728: $45
    nop                                           ; $7729: $00
    inc c                                         ; $772a: $0c
    nop                                           ; $772b: $00
    jr nz, jr_0b6_7746                            ; $772c: $20 $18

    ld [hl], a                                    ; $772e: $77
    ld c, b                                       ; $772f: $48
    ld b, l                                       ; $7730: $45
    nop                                           ; $7731: $00
    inc c                                         ; $7732: $0c
    nop                                           ; $7733: $00
    jr nz, jr_0b6_774e                            ; $7734: $20 $18

    ld [hl], a                                    ; $7736: $77
    ld c, b                                       ; $7737: $48
    ld b, l                                       ; $7738: $45
    nop                                           ; $7739: $00
    ld [$7294], sp                                ; $773a: $08 $94 $72
    sbc h                                         ; $773d: $9c

jr_0b6_773e:
    ld a, e                                       ; $773e: $7b
    nop                                           ; $773f: $00
    jr nz, jr_0b6_7742                            ; $7740: $20 $00

jr_0b6_7742:
    jr nz, jr_0b6_76d8                            ; $7742: $20 $94

    ld [hl], d                                    ; $7744: $72
    sbc h                                         ; $7745: $9c

jr_0b6_7746:
    ld a, e                                       ; $7746: $7b
    nop                                           ; $7747: $00
    jr nz, jr_0b6_774a                            ; $7748: $20 $00

jr_0b6_774a:
    nop                                           ; $774a: $00
    rst $38                                       ; $774b: $ff
    ld e, a                                       ; $774c: $5f
    nop                                           ; $774d: $00

jr_0b6_774e:
    inc e                                         ; $774e: $1c
    nop                                           ; $774f: $00
    stop                                          ; $7750: $10 $00
    jr nz, @+$01                                  ; $7752: $20 $ff

    ld e, a                                       ; $7754: $5f
    nop                                           ; $7755: $00
    inc e                                         ; $7756: $1c

jr_0b6_7757:
    nop                                           ; $7757: $00
    stop                                          ; $7758: $10 $00
    jr nz, jr_0b6_775c                            ; $775a: $20 $00

jr_0b6_775c:
    jr nz, jr_0b6_7776                            ; $775c: $20 $18

    ld [hl], a                                    ; $775e: $77

jr_0b6_775f:
    ld c, b                                       ; $775f: $48
    ld b, l                                       ; $7760: $45
    nop                                           ; $7761: $00
    inc c                                         ; $7762: $0c
    adc c                                         ; $7763: $89
    nop                                           ; $7764: $00
    nop                                           ; $7765: $00
    jr nz, jr_0b6_7768                            ; $7766: $20 $00

jr_0b6_7768:
    inc d                                         ; $7768: $14

jr_0b6_7769:
    ld [bc], a                                    ; $7769: $02
    inc b                                         ; $776a: $04
    push de                                       ; $776b: $d5
    inc b                                         ; $776c: $04

jr_0b6_776d:
    ld e, a                                       ; $776d: $5f
    ld e, e                                       ; $776e: $5b
    cp $00                                        ; $776f: $fe $00
    ld bc, $3d00                                  ; $7771: $01 $00 $3d
    dec d                                         ; $7774: $15
    ld l, c                                       ; $7775: $69

jr_0b6_7776:
    ld c, l                                       ; $7776: $4d
    rst $10                                       ; $7777: $d7
    ld [hl], d                                    ; $7778: $72

jr_0b6_7779:
    nop                                           ; $7779: $00
    nop                                           ; $777a: $00
    ld b, $3d                                     ; $777b: $06 $3d
    nop                                           ; $777d: $00
    jr nz, jr_0b6_7757                            ; $777e: $20 $d7

    ld [hl], d                                    ; $7780: $72
    nop                                           ; $7781: $00
    db $10                                        ; $7782: $10
    rrca                                          ; $7783: $0f
    ld l, $ff                                     ; $7784: $2e $ff
    ld c, a                                       ; $7786: $4f

jr_0b6_7787:
    ld a, e                                       ; $7787: $7b
    rrca                                          ; $7788: $0f
    nop                                           ; $7789: $00
    jr nz, jr_0b6_779b                            ; $778a: $20 $0f

    ld l, $ff                                     ; $778c: $2e $ff
    ld c, a                                       ; $778e: $4f

jr_0b6_778f:
    ld a, e                                       ; $778f: $7b
    rrca                                          ; $7790: $0f
    nop                                           ; $7791: $00
    jr nz, jr_0b6_7769                            ; $7792: $20 $d5

    inc b                                         ; $7794: $04
    ld e, a                                       ; $7795: $5f
    ld e, e                                       ; $7796: $5b
    cp $00                                        ; $7797: $fe $00
    nop                                           ; $7799: $00
    inc c                                         ; $779a: $0c

jr_0b6_779b:
    ld d, l                                       ; $779b: $55
    inc b                                         ; $779c: $04
    nop                                           ; $779d: $00
    jr nz, jr_0b6_77a3                            ; $779e: $20 $03

    nop                                           ; $77a0: $00
    inc bc                                        ; $77a1: $03
    inc b                                         ; $77a2: $04

jr_0b6_77a3:
    ccf                                           ; $77a3: $3f
    dec b                                         ; $77a4: $05
    sbc a                                         ; $77a5: $9f
    ld a, [hl-]                                   ; $77a6: $3a
    inc e                                         ; $77a7: $1c
    ld d, a                                       ; $77a8: $57
    ld bc, $fc00                                  ; $77a9: $01 $00 $fc
    dec de                                        ; $77ac: $1b
    ld l, l                                       ; $77ad: $6d
    nop                                           ; $77ae: $00
    ld e, $01                                     ; $77af: $1e $01
    nop                                           ; $77b1: $00
    jr jr_0b6_775f                                ; $77b2: $18 $ab

    ld c, c                                       ; $77b4: $49
    ld [hl-], a                                   ; $77b5: $32
    inc b                                         ; $77b6: $04
    rla                                           ; $77b7: $17
    ld e, a                                       ; $77b8: $5f
    ld hl, $b500                                  ; $77b9: $21 $00 $b5
    ld c, d                                       ; $77bc: $4a
    rlca                                          ; $77bd: $07
    ld bc, $1c00                                  ; $77be: $01 $00 $1c
    nop                                           ; $77c1: $00
    jr nz, jr_0b6_7779                            ; $77c2: $20 $b5

    ld c, d                                       ; $77c4: $4a
    rlca                                          ; $77c5: $07
    ld bc, $1c00                                  ; $77c6: $01 $00 $1c
    nop                                           ; $77c9: $00
    inc c                                         ; $77ca: $0c
    nop                                           ; $77cb: $00
    jr nz, jr_0b6_776d                            ; $77cc: $20 $9f

    ld a, [hl-]                                   ; $77ce: $3a
    inc e                                         ; $77cf: $1c
    ld d, a                                       ; $77d0: $57
    nop                                           ; $77d1: $00
    inc c                                         ; $77d2: $0c
    ld [hl], b                                    ; $77d3: $70
    nop                                           ; $77d4: $00
    ld e, a                                       ; $77d5: $5f
    ld bc, $00f6                                  ; $77d6: $01 $f6 $00
    ld [bc], a                                    ; $77d9: $02
    nop                                           ; $77da: $00
    sbc d                                         ; $77db: $9a
    ld [$09ff], sp                                ; $77dc: $08 $ff $09
    xor a                                         ; $77df: $af
    ld [$0441], sp                                ; $77e0: $08 $41 $04
    jr nc, jr_0b6_77fe                            ; $77e3: $30 $19

    ld a, h                                       ; $77e5: $7c
    dec d                                         ; $77e6: $15
    ld a, e                                       ; $77e7: $7b
    ld [hl-], a                                   ; $77e8: $32
    nop                                           ; $77e9: $00
    inc b                                         ; $77ea: $04
    cp h                                          ; $77eb: $bc
    ld d, e                                       ; $77ec: $53
    inc c                                         ; $77ed: $0c
    nop                                           ; $77ee: $00
    ld a, [hl-]                                   ; $77ef: $3a
    inc b                                         ; $77f0: $04
    ld hl, $9c00                                  ; $77f1: $21 $00 $9c
    inc sp                                        ; $77f4: $33
    nop                                           ; $77f5: $00
    jr nz, jr_0b6_7863                            ; $77f6: $20 $6b

    ld bc, $2000                                  ; $77f8: $01 $00 $20
    sbc h                                         ; $77fb: $9c
    inc sp                                        ; $77fc: $33
    nop                                           ; $77fd: $00

jr_0b6_77fe:
    jr nz, @+$6d                                  ; $77fe: $20 $6b

    ld bc, $0c00                                  ; $7800: $01 $00 $0c
    nop                                           ; $7803: $00
    jr nz, @+$01                                  ; $7804: $20 $ff

    add hl, bc                                    ; $7806: $09
    xor a                                         ; $7807: $af
    ld [$0401], sp                                ; $7808: $08 $01 $04
    cp [hl]                                       ; $780b: $be
    ld c, [hl]                                    ; $780c: $4e
    rst $08                                       ; $780d: $cf
    db $10                                        ; $780e: $10
    sbc [hl]                                      ; $780f: $9e
    ld l, e                                       ; $7810: $6b
    ld b, b                                       ; $7811: $40
    nop                                           ; $7812: $00
    ld a, l                                       ; $7813: $7d
    ld bc, $3b3d                                  ; $7814: $01 $3d $3b
    rrca                                          ; $7817: $0f
    inc b                                         ; $7818: $04
    nop                                           ; $7819: $00
    ld [$4abd], sp                                ; $781a: $08 $bd $4a
    reti                                          ; $781d: $d9


    add hl, bc                                    ; $781e: $09
    dec c                                         ; $781f: $0d
    dec e                                         ; $7820: $1d
    jr nz, jr_0b6_7823                            ; $7821: $20 $00

jr_0b6_7823:
    rst $38                                       ; $7823: $ff
    rra                                           ; $7824: $1f
    cp a                                          ; $7825: $bf
    ld d, [hl]                                    ; $7826: $56
    dec hl                                        ; $7827: $2b
    add hl, de                                    ; $7828: $19
    nop                                           ; $7829: $00
    ld [$1fff], sp                                ; $782a: $08 $ff $1f
    adc h                                         ; $782d: $8c
    add hl, bc                                    ; $782e: $09
    nop                                           ; $782f: $00
    jr nz, jr_0b6_7832                            ; $7830: $20 $00

jr_0b6_7832:
    jr nz, @+$01                                  ; $7832: $20 $ff

    rra                                           ; $7834: $1f
    adc h                                         ; $7835: $8c
    add hl, bc                                    ; $7836: $09
    nop                                           ; $7837: $00
    jr nz, jr_0b6_783a                            ; $7838: $20 $00

jr_0b6_783a:
    inc e                                         ; $783a: $1c
    nop                                           ; $783b: $00
    jr nz, jr_0b6_787b                            ; $783c: $20 $3d

    dec sp                                        ; $783e: $3b
    rrca                                          ; $783f: $0f
    inc b                                         ; $7840: $04
    nop                                           ; $7841: $00
    inc c                                         ; $7842: $0c
    rra                                           ; $7843: $1f
    add hl, bc                                    ; $7844: $09
    ld e, a                                       ; $7845: $5f
    ld [hl], $3f                                  ; $7846: $36 $3f
    ld e, e                                       ; $7848: $5b
    ld bc, $de00                                  ; $7849: $01 $00 $de
    inc hl                                        ; $784c: $23
    ld d, c                                       ; $784d: $51
    dec b                                         ; $784e: $05
    rst $38                                       ; $784f: $ff
    ld l, e                                       ; $7850: $6b
    nop                                           ; $7851: $00
    inc c                                         ; $7852: $0c
    rst $30                                       ; $7853: $f7
    dec [hl]                                      ; $7854: $35
    dec e                                         ; $7855: $1d
    ld d, a                                       ; $7856: $57
    ld [de], a                                    ; $7857: $12
    ld bc, $0425                                  ; $7858: $01 $25 $04
    ld a, [hl-]                                   ; $785b: $3a
    inc b                                         ; $785c: $04
    call c, $0d29                                 ; $785d: $dc $29 $0d
    ld b, $00                                     ; $7860: $06 $00
    inc d                                         ; $7862: $14

jr_0b6_7863:
    ld [hl], e                                    ; $7863: $73
    ld a, [bc]                                    ; $7864: $0a
    ld h, $05                                     ; $7865: $26 $05
    cp h                                          ; $7867: $bc
    rla                                           ; $7868: $17
    nop                                           ; $7869: $00
    jr nz, @+$75                                  ; $786a: $20 $73

    ld a, [bc]                                    ; $786c: $0a
    ld h, $05                                     ; $786d: $26 $05
    cp h                                          ; $786f: $bc
    rla                                           ; $7870: $17
    nop                                           ; $7871: $00
    inc c                                         ; $7872: $0c
    ccf                                           ; $7873: $3f
    ld c, e                                       ; $7874: $4b
    nop                                           ; $7875: $00
    jr nz, @+$01                                  ; $7876: $20 $ff

    ld l, e                                       ; $7878: $6b
    inc b                                         ; $7879: $04
    nop                                           ; $787a: $00

jr_0b6_787b:
    rst $18                                       ; $787b: $df
    ld l, a                                       ; $787c: $6f
    db $fd                                        ; $787d: $fd
    nop                                           ; $787e: $00
    ld e, $2a                                     ; $787f: $1e $2a
    ld b, e                                       ; $7881: $43
    nop                                           ; $7882: $00
    sbc h                                         ; $7883: $9c
    nop                                           ; $7884: $00
    call $bf08                                    ; $7885: $cd $08 $bf
    ld b, d                                       ; $7888: $42
    jr nz, jr_0b6_788e                            ; $7889: $20 $03

    ld e, [hl]                                    ; $788b: $5e
    ld h, e                                       ; $788c: $63
    ld [hl+], a                                   ; $788d: $22

jr_0b6_788e:
    db $10                                        ; $788e: $10
    ld [hl], h                                    ; $788f: $74
    dec h                                         ; $7890: $25
    ld [hl+], a                                   ; $7891: $22
    nop                                           ; $7892: $00
    inc de                                        ; $7893: $13
    nop                                           ; $7894: $00
    jp z, $4f1c                                   ; $7895: $ca $1c $4f

    ld [hl+], a                                   ; $7898: $22
    nop                                           ; $7899: $00
    ld [$1673], sp                                ; $789a: $08 $73 $16
    cp l                                          ; $789d: $bd
    ld a, e                                       ; $789e: $7b
    xor h                                         ; $789f: $ac
    nop                                           ; $78a0: $00
    nop                                           ; $78a1: $00
    nop                                           ; $78a2: $00
    nop                                           ; $78a3: $00
    inc e                                         ; $78a4: $1c
    nop                                           ; $78a5: $00
    inc c                                         ; $78a6: $0c
    nop                                           ; $78a7: $00
    jr nz, jr_0b6_78aa                            ; $78a8: $20 $00

jr_0b6_78aa:
    inc e                                         ; $78aa: $1c
    rst $10                                       ; $78ab: $d7
    nop                                           ; $78ac: $00
    ld c, b                                       ; $78ad: $48
    ld b, l                                       ; $78ae: $45
    ld c, d                                       ; $78af: $4a
    nop                                           ; $78b0: $00
    nop                                           ; $78b1: $00
    nop                                           ; $78b2: $00
    rst $30                                       ; $78b3: $f7
    nop                                           ; $78b4: $00
    rra                                           ; $78b5: $1f
    dec b                                         ; $78b6: $05
    sbc a                                         ; $78b7: $9f
    ld bc, $0400                                  ; $78b8: $01 $00 $04
    cp l                                          ; $78bb: $bd
    add hl, bc                                    ; $78bc: $09
    rst $38                                       ; $78bd: $ff
    ld a, [hl-]                                   ; $78be: $3a
    ld l, d                                       ; $78bf: $6a
    inc b                                         ; $78c0: $04
    ret nz                                        ; $78c1: $c0

    ld bc, $571e                                  ; $78c2: $01 $1e $57
    rrca                                          ; $78c5: $0f
    dec h                                         ; $78c6: $25
    ld bc, $a310                                  ; $78c7: $01 $10 $a3
    nop                                           ; $78ca: $00
    reti                                          ; $78cb: $d9


    ld c, [hl]                                    ; $78cc: $4e
    add hl, de                                    ; $78cd: $19
    inc b                                         ; $78ce: $04
    xor h                                         ; $78cf: $ac
    dec d                                         ; $78d0: $15
    jr nz, jr_0b6_78d3                            ; $78d1: $20 $00

jr_0b6_78d3:
    db $10                                        ; $78d3: $10
    ld a, $5d                                     ; $78d4: $3e $5d
    ld h, a                                       ; $78d6: $67
    ld l, h                                       ; $78d7: $6c
    jr jr_0b6_78da                                ; $78d8: $18 $00

jr_0b6_78da:
    nop                                           ; $78da: $00
    rst $38                                       ; $78db: $ff
    ld e, a                                       ; $78dc: $5f
    nop                                           ; $78dd: $00
    jr nz, jr_0b6_7909                            ; $78de: $20 $29

    ld bc, $0400                                  ; $78e0: $01 $00 $04
    rst $30                                       ; $78e3: $f7
    ld e, [hl]                                    ; $78e4: $5e
    push hl                                       ; $78e5: $e5
    inc a                                         ; $78e6: $3c
    nop                                           ; $78e7: $00

jr_0b6_78e8:
    jr nz, @+$2a                                  ; $78e8: $20 $28

    nop                                           ; $78ea: $00
    ld e, [hl]                                    ; $78eb: $5e
    dec b                                         ; $78ec: $05
    ld a, a                                       ; $78ed: $7f
    ld [hl], $ee                                  ; $78ee: $36 $ee
    inc d                                         ; $78f0: $14
    inc hl                                        ; $78f1: $23
    inc b                                         ; $78f2: $04
    rst $18                                       ; $78f3: $df
    ld bc, $0260                                  ; $78f4: $01 $60 $02
    cp a                                          ; $78f7: $bf
    ld [hl], e                                    ; $78f8: $73
    push bc                                       ; $78f9: $c5
    jr jr_0b6_78da                                ; $78fa: $18 $de

    ld d, d                                       ; $78fc: $52
    jp nc, $df39                                  ; $78fd: $d2 $39 $df

    ld [hl], e                                    ; $7900: $73
    ld hl, $3d04                                  ; $7901: $21 $04 $3d
    ld d, e                                       ; $7904: $53
    ld c, [hl]                                    ; $7905: $4e
    dec h                                         ; $7906: $25
    rst $38                                       ; $7907: $ff
    ld [hl], e                                    ; $7908: $73

jr_0b6_7909:
    inc bc                                        ; $7909: $03
    nop                                           ; $790a: $00
    cp a                                          ; $790b: $bf
    inc d                                         ; $790c: $14
    cp l                                          ; $790d: $bd
    inc hl                                        ; $790e: $23
    rst $38                                       ; $790f: $ff
    ld c, a                                       ; $7910: $4f
    ld hl, $ff00                                  ; $7911: $21 $00 $ff
    rra                                           ; $7914: $1f
    add hl, hl                                    ; $7915: $29
    ld bc, $1c00                                  ; $7916: $01 $00 $1c

jr_0b6_7919:
    nop                                           ; $7919: $00
    jr jr_0b6_78e8                                ; $791a: $18 $cc

    ld d, l                                       ; $791c: $55
    ld c, b                                       ; $791d: $48
    dec a                                         ; $791e: $3d
    sub h                                         ; $791f: $94
    ld l, [hl]                                    ; $7920: $6e
    nop                                           ; $7921: $00
    nop                                           ; $7922: $00
    ei                                            ; $7923: $fb
    dec e                                         ; $7924: $1d
    ld a, a                                       ; $7925: $7f
    ld e, a                                       ; $7926: $5f
    ld c, $21                                     ; $7927: $0e $21
    jr nz, jr_0b6_7937                            ; $7929: $20 $0c

    cp e                                          ; $792b: $bb
    add hl, hl                                    ; $792c: $29
    rst $38                                       ; $792d: $ff
    ld a, a                                       ; $792e: $7f
    cp $42                                        ; $792f: $fe $42
    ld b, c                                       ; $7931: $41
    ld [$2db5], sp                                ; $7932: $08 $b5 $2d
    cp a                                          ; $7935: $bf
    ld b, [hl]                                    ; $7936: $46

jr_0b6_7937:
    db $fd                                        ; $7937: $fd
    ld a, a                                       ; $7938: $7f
    ld bc, $1100                                  ; $7939: $01 $00 $11
    ld l, $bc                                     ; $793c: $2e $bc
    ld c, d                                       ; $793e: $4a
    ld a, [bc]                                    ; $793f: $0a
    dec e                                         ; $7940: $1d
    ld bc, $b100                                  ; $7941: $01 $00 $b1
    ld c, $11                                     ; $7944: $0e $11
    add hl, bc                                    ; $7946: $09
    cp $23                                        ; $7947: $fe $23
    nop                                           ; $7949: $00
    inc e                                         ; $794a: $1c
    ld sp, $496a                                  ; $794b: $31 $6a $49
    ld c, c                                       ; $794e: $49
    rst $38                                       ; $794f: $ff
    rra                                           ; $7950: $1f
    inc bc                                        ; $7951: $03
    inc b                                         ; $7952: $04
    ld sp, $496a                                  ; $7953: $31 $6a $49
    ld c, l                                       ; $7956: $4d
    ld e, e                                       ; $7957: $5b
    ld [hl], a                                    ; $7958: $77
    nop                                           ; $7959: $00
    nop                                           ; $795a: $00
    sbc a                                         ; $795b: $9f
    add hl, bc                                    ; $795c: $09
    adc [hl]                                      ; $795d: $8e
    inc b                                         ; $795e: $04

jr_0b6_795f:
    adc c                                         ; $795f: $89
    add hl, de                                    ; $7960: $19
    ld hl, $7e08                                  ; $7961: $21 $08 $7e
    nop                                           ; $7964: $00
    db $fc                                        ; $7965: $fc
    dec d                                         ; $7966: $15
    ld h, a                                       ; $7967: $67
    inc d                                         ; $7968: $14
    ld bc, $dc08                                  ; $7969: $01 $08 $dc
    ld a, a                                       ; $796c: $7f
    ld d, e                                       ; $796d: $53
    inc d                                         ; $796e: $14
    ld sp, $0011                                  ; $796f: $31 $11 $00
    nop                                           ; $7972: $00
    ld e, h                                       ; $7973: $5c
    ld b, d                                       ; $7974: $42
    adc a                                         ; $7975: $8f
    dec l                                         ; $7976: $2d
    rst $38                                       ; $7977: $ff
    ld [hl], e                                    ; $7978: $73
    ld hl, $fd00                                  ; $7979: $21 $00 $fd
    jr nz, jr_0b6_7919                            ; $797c: $20 $9b

    dec de                                        ; $797e: $1b
    dec hl                                        ; $797f: $2b
    ld b, $00                                     ; $7980: $06 $00
    inc e                                         ; $7982: $1c
    add hl, sp                                    ; $7983: $39
    rla                                           ; $7984: $17
    db $10                                        ; $7985: $10
    ld h, d                                       ; $7986: $62
    sbc h                                         ; $7987: $9c

jr_0b6_7988:
    ld a, e                                       ; $7988: $7b
    inc b                                         ; $7989: $04
    inc b                                         ; $798a: $04
    inc [hl]                                      ; $798b: $34
    ld l, d                                       ; $798c: $6a
    ld a, l                                       ; $798d: $7d
    ld a, e                                       ; $798e: $7b
    add hl, hl                                    ; $798f: $29
    ld b, c                                       ; $7990: $41
    add a                                         ; $7991: $87
    jr jr_0b6_7988                                ; $7992: $18 $f4

    ld [hl], l                                    ; $7994: $75
    sbc d                                         ; $7995: $9a
    nop                                           ; $7996: $00
    sbc d                                         ; $7997: $9a
    dec de                                        ; $7998: $1b
    ld [hl+], a                                   ; $7999: $22
    inc b                                         ; $799a: $04
    rst $38                                       ; $799b: $ff
    ld d, a                                       ; $799c: $57
    xor d                                         ; $799d: $aa
    jr nc, jr_0b6_795f                            ; $799e: $30 $bf

    nop                                           ; $79a0: $00
    nop                                           ; $79a1: $00
    inc b                                         ; $79a2: $04
    db $fd                                        ; $79a3: $fd
    ld c, [hl]                                    ; $79a4: $4e
    daa                                           ; $79a5: $27
    inc [hl]                                      ; $79a6: $34
    xor a                                         ; $79a7: $af
    inc c                                         ; $79a8: $0c
    ld h, e                                       ; $79a9: $63
    inc c                                         ; $79aa: $0c
    db $fc                                        ; $79ab: $fc
    add hl, sp                                    ; $79ac: $39
    ld a, $5f                                     ; $79ad: $3e $5f
    ld c, a                                       ; $79af: $4f
    dec e                                         ; $79b0: $1d
    ld bc, $5800                                  ; $79b1: $01 $00 $58
    ld [$295d], sp                                ; $79b4: $08 $5d $29
    ld h, l                                       ; $79b7: $65
    inc l                                         ; $79b8: $2c
    nop                                           ; $79b9: $00
    nop                                           ; $79ba: $00
    sub h                                         ; $79bb: $94
    ld a, [bc]                                    ; $79bc: $0a
    ld d, d                                       ; $79bd: $52
    ld h, [hl]                                    ; $79be: $66
    nop                                           ; $79bf: $00
    jr nz, jr_0b6_79e4                            ; $79c0: $20 $22

    inc d                                         ; $79c2: $14
    ld l, a                                       ; $79c3: $6f
    ld d, l                                       ; $79c4: $55
    ret c                                         ; $79c5: $d8

    ld [hl], l                                    ; $79c6: $75
    ld sp, hl                                     ; $79c7: $f9
    halt                                          ; $79c8: $76
    ld b, l                                       ; $79c9: $45
    inc c                                         ; $79ca: $0c
    call nc, $8a0e                                ; $79cb: $d4 $0e $8a
    ld b, b                                       ; $79ce: $40
    cp h                                          ; $79cf: $bc
    rla                                           ; $79d0: $17
    ld [hl+], a                                   ; $79d1: $22
    ld [$1fde], sp                                ; $79d2: $08 $de $1f
    rst $38                                       ; $79d5: $ff
    ld l, a                                       ; $79d6: $6f
    inc c                                         ; $79d7: $0c
    dec [hl]                                      ; $79d8: $35
    ld b, l                                       ; $79d9: $45
    inc c                                         ; $79da: $0c
    rra                                           ; $79db: $1f
    inc b                                         ; $79dc: $04

jr_0b6_79dd:
    adc l                                         ; $79dd: $8d
    add hl, bc                                    ; $79de: $09
    ld a, h                                       ; $79df: $7c
    ld a, $62                                     ; $79e0: $3e $62
    inc b                                         ; $79e2: $04
    scf                                           ; $79e3: $37

jr_0b6_79e4:
    ld a, $de                                     ; $79e4: $3e $de
    inc hl                                        ; $79e6: $23
    dec l                                         ; $79e7: $2d
    dec d                                         ; $79e8: $15
    ld bc, $ae00                                  ; $79e9: $01 $00 $ae
    dec a                                         ; $79ec: $3d
    rrca                                          ; $79ed: $0f
    nop                                           ; $79ee: $00
    cp c                                          ; $79ef: $b9
    inc d                                         ; $79f0: $14
    ld hl, $ae00                                  ; $79f1: $21 $00 $ae
    ld d, l                                       ; $79f4: $55
    nop                                           ; $79f5: $00
    jr nz, @+$01                                  ; $79f6: $20 $ff

    ld a, [hl]                                    ; $79f8: $7e
    ld [hl+], a                                   ; $79f9: $22
    jr @+$56                                      ; $79fa: $18 $54

    ld l, l                                       ; $79fc: $6d
    adc d                                         ; $79fd: $8a
    jr c, @-$07                                   ; $79fe: $38 $f7

    ld [hl], d                                    ; $7a00: $72

Call_0b6_7a01:
    jr nz, jr_0b6_7a03                            ; $7a01: $20 $00

jr_0b6_7a03:
    ld l, e                                       ; $7a03: $6b
    dec b                                         ; $7a04: $05
    inc h                                         ; $7a05: $24
    jr jr_0b6_79dd                                ; $7a06: $18 $d5

    ld [de], a                                    ; $7a08: $12
    inc bc                                        ; $7a09: $03
    nop                                           ; $7a0a: $00
    ld e, c                                       ; $7a0b: $59
    rla                                           ; $7a0c: $17
    ld e, $4b                                     ; $7a0d: $1e $4b
    rst $28                                       ; $7a0f: $ef
    dec c                                         ; $7a10: $0d
    inc hl                                        ; $7a11: $23
    inc b                                         ; $7a12: $04
    ld e, [hl]                                    ; $7a13: $5e
    ld a, $29                                     ; $7a14: $3e $29
    ld de, $17bd                                  ; $7a16: $11 $bd $17
    jr nz, jr_0b6_7a1f                            ; $7a19: $20 $04

    or l                                          ; $7a1b: $b5
    ld b, [hl]                                    ; $7a1c: $46
    db $eb                                        ; $7a1d: $eb
    inc d                                         ; $7a1e: $14

jr_0b6_7a1f:
    rst $38                                       ; $7a1f: $ff
    inc sp                                        ; $7a20: $33
    ld bc, $3100                                  ; $7a21: $01 $00 $31
    ld e, l                                       ; $7a24: $5d
    sbc h                                         ; $7a25: $9c
    ld c, a                                       ; $7a26: $4f
    dec c                                         ; $7a27: $0d
    nop                                           ; $7a28: $00
    nop                                           ; $7a29: $00
    inc e                                         ; $7a2a: $1c
    rst $28                                       ; $7a2b: $ef
    ld d, c                                       ; $7a2c: $51
    ld h, $3d                                     ; $7a2d: $26 $3d
    cp e                                          ; $7a2f: $bb
    ld a, d                                       ; $7a30: $7a
    ld bc, $cd14                                  ; $7a31: $01 $14 $cd
    ld c, h                                       ; $7a34: $4c
    ld l, b                                       ; $7a35: $68
    jr nc, jr_0b6_7a6b                            ; $7a36: $30 $33

    ld l, c                                       ; $7a38: $69
    nop                                           ; $7a39: $00
    nop                                           ; $7a3a: $00
    cp $52                                        ; $7a3b: $fe $52
    dec l                                         ; $7a3d: $2d
    dec e                                         ; $7a3e: $1d
    rst $18                                       ; $7a3f: $df
    ld l, a                                       ; $7a40: $6f
    nop                                           ; $7a41: $00
    nop                                           ; $7a42: $00
    sbc l                                         ; $7a43: $9d
    db $10                                        ; $7a44: $10
    sub e                                         ; $7a45: $93
    ld c, $9f                                     ; $7a46: $0e $9f
    ld d, d                                       ; $7a48: $52
    nop                                           ; $7a49: $00
    nop                                           ; $7a4a: $00
    call nc, $1d25                                ; $7a4b: $d4 $25 $1d
    ld e, a                                       ; $7a4e: $5f
    jp z, $0114                                   ; $7a4f: $ca $14 $01

    inc b                                         ; $7a52: $04
    sub l                                         ; $7a53: $95
    ld l, $bc                                     ; $7a54: $2e $bc
    ld [hl], e                                    ; $7a56: $73
    add hl, hl                                    ; $7a57: $29
    add hl, hl                                    ; $7a58: $29
    inc hl                                        ; $7a59: $23
    nop                                           ; $7a5a: $00
    sub c                                         ; $7a5b: $91
    ld c, l                                       ; $7a5c: $4d
    cp l                                          ; $7a5d: $bd
    dec de                                        ; $7a5e: $1b
    ld a, e                                       ; $7a5f: $7b
    ld c, e                                       ; $7a60: $4b
    nop                                           ; $7a61: $00
    inc e                                         ; $7a62: $1c
    ld a, [c]                                     ; $7a63: $f2
    ld h, c                                       ; $7a64: $61
    add hl, de                                    ; $7a65: $19
    ld [hl], e                                    ; $7a66: $73
    ld c, b                                       ; $7a67: $48
    ld b, c                                       ; $7a68: $41
    nop                                           ; $7a69: $00
    inc c                                         ; $7a6a: $0c

jr_0b6_7a6b:
    inc a                                         ; $7a6b: $3c
    ld a, $46                                     ; $7a6c: $3e $46
    inc [hl]                                      ; $7a6e: $34
    ld h, a                                       ; $7a6f: $67
    inc c                                         ; $7a70: $0c
    nop                                           ; $7a71: $00
    nop                                           ; $7a72: $00
    db $dd                                        ; $7a73: $dd
    ld d, d                                       ; $7a74: $52
    ld a, a                                       ; $7a75: $7f
    ld h, a                                       ; $7a76: $67
    ld l, $1d                                     ; $7a77: $2e $1d
    nop                                           ; $7a79: $00
    nop                                           ; $7a7a: $00
    ld a, [hl]                                    ; $7a7b: $7e
    ld h, a                                       ; $7a7c: $67
    ld e, b                                       ; $7a7d: $58
    ld [$1d09], sp                                ; $7a7e: $08 $09 $1d
    nop                                           ; $7a81: $00
    nop                                           ; $7a82: $00
    db $fd                                        ; $7a83: $fd
    ld c, [hl]                                    ; $7a84: $4e
    jp z, $910c                                   ; $7a85: $ca $0c $91

    dec h                                         ; $7a88: $25
    add [hl]                                      ; $7a89: $86
    ld [$437f], sp                                ; $7a8a: $08 $7f $43
    pop de                                        ; $7a8d: $d1
    add hl, hl                                    ; $7a8e: $29
    cp [hl]                                       ; $7a8f: $be
    ld [hl], a                                    ; $7a90: $77
    nop                                           ; $7a91: $00
    ld [$5d31], sp                                ; $7a92: $08 $31 $5d
    adc $09                                       ; $7a95: $ce $09
    jr jr_0b6_7ab0                                ; $7a97: $18 $17

    nop                                           ; $7a99: $00
    nop                                           ; $7a9a: $00
    sub c                                         ; $7a9b: $91
    ld e, l                                       ; $7a9c: $5d
    ld e, c                                       ; $7a9d: $59
    ld l, a                                       ; $7a9e: $6f
    nop                                           ; $7a9f: $00
    jr nz, jr_0b6_7aa2                            ; $7aa0: $20 $00

jr_0b6_7aa2:
    nop                                           ; $7aa2: $00
    ld e, $21                                     ; $7aa3: $1e $21
    ld e, [hl]                                    ; $7aa5: $5e
    ld c, d                                       ; $7aa6: $4a
    dec [hl]                                      ; $7aa7: $35
    inc b                                         ; $7aa8: $04
    ld [hl+], a                                   ; $7aa9: $22
    inc b                                         ; $7aaa: $04
    ld a, e                                       ; $7aab: $7b
    ld b, d                                       ; $7aac: $42
    sbc $52                                       ; $7aad: $de $52
    ld e, a                                       ; $7aaf: $5f

jr_0b6_7ab0:
    ld e, a                                       ; $7ab0: $5f
    ld hl, $d100                                  ; $7ab1: $21 $00 $d1
    ld hl, $4efa                                  ; $7ab4: $21 $fa $4e
    rr b                                          ; $7ab7: $cb $18
    ld h, l                                       ; $7ab9: $65
    inc b                                         ; $7aba: $04
    ld e, d                                       ; $7abb: $5a
    ld a, $b0                                     ; $7abc: $3e $b0
    add hl, de                                    ; $7abe: $19
    sbc a                                         ; $7abf: $9f
    ld l, e                                       ; $7ac0: $6b
    ld bc, $7000                                  ; $7ac1: $01 $00 $70
    dec c                                         ; $7ac4: $0d
    ld d, a                                       ; $7ac5: $57
    ld a, [hl+]                                   ; $7ac6: $2a
    xor b                                         ; $7ac7: $a8
    inc b                                         ; $7ac8: $04
    jr nz, jr_0b6_7acb                            ; $7ac9: $20 $00

jr_0b6_7acb:
    pop af                                        ; $7acb: $f1
    ld sp, $5b7e                                  ; $7acc: $31 $7e $5b
    add sp, $24                                   ; $7acf: $e8 $24
    nop                                           ; $7ad1: $00
    nop                                           ; $7ad2: $00
    pop af                                        ; $7ad3: $f1
    ld e, c                                       ; $7ad4: $59
    ld a, e                                       ; $7ad5: $7b
    ld [hl], a                                    ; $7ad6: $77
    nop                                           ; $7ad7: $00
    jr nz, jr_0b6_7ada                            ; $7ad8: $20 $00

jr_0b6_7ada:
    nop                                           ; $7ada: $00
    ld e, h                                       ; $7adb: $5c
    ld [$421f], sp                                ; $7adc: $08 $1f $42
    ld de, $0000                                  ; $7adf: $11 $00 $00
    nop                                           ; $7ae2: $00
    ld d, $3e                                     ; $7ae3: $16 $3e
    sbc h                                         ; $7ae5: $9c
    ld c, d                                       ; $7ae6: $4a
    ld e, d                                       ; $7ae7: $5a
    ld e, $41                                     ; $7ae8: $1e $41
    ld [$2d92], sp                                ; $7aea: $08 $92 $2d
    sbc d                                         ; $7aed: $9a
    ld l, $98                                     ; $7aee: $2e $98
    ld b, [hl]                                    ; $7af0: $46
    ld bc, $5f00                                  ; $7af1: $01 $00 $5f
    ld h, e                                       ; $7af4: $63
    inc l                                         ; $7af5: $2c
    dec e                                         ; $7af6: $1d
    or e                                          ; $7af7: $b3
    dec l                                         ; $7af8: $2d
    ld bc, $0c00                                  ; $7af9: $01 $00 $0c
    add hl, bc                                    ; $7afc: $09
    add a                                         ; $7afd: $87
    nop                                           ; $7afe: $00
    sub e                                         ; $7aff: $93
    add hl, bc                                    ; $7b00: $09
    nop                                           ; $7b01: $00
    nop                                           ; $7b02: $00
    sub c                                         ; $7b03: $91
    add hl, de                                    ; $7b04: $19
    rst $38                                       ; $7b05: $ff
    ld e, e                                       ; $7b06: $5b
    ret                                           ; $7b07: $c9


    inc b                                         ; $7b08: $04
    nop                                           ; $7b09: $00
    nop                                           ; $7b0a: $00
    or h                                          ; $7b0b: $b4
    ld h, d                                       ; $7b0c: $62
    cp l                                          ; $7b0d: $bd
    ld [hl], a                                    ; $7b0e: $77

jr_0b6_7b0f:
    nop                                           ; $7b0f: $00
    jr nz, jr_0b6_7b12                            ; $7b10: $20 $00

jr_0b6_7b12:
    nop                                           ; $7b12: $00
    ld e, h                                       ; $7b13: $5c
    ld [$3e1d], sp                                ; $7b14: $08 $1d $3e
    ld l, [hl]                                    ; $7b17: $6e
    inc c                                         ; $7b18: $0c
    ld bc, $d400                                  ; $7b19: $01 $00 $d4
    ld sp, $5b3e                                  ; $7b1c: $31 $3e $5b
    dec l                                         ; $7b1f: $2d
    dec e                                         ; $7b20: $1d
    nop                                           ; $7b21: $00
    nop                                           ; $7b22: $00
    sub c                                         ; $7b23: $91
    dec l                                         ; $7b24: $2d
    ld e, b                                       ; $7b25: $58

jr_0b6_7b26:
    ld b, [hl]                                    ; $7b26: $46
    ld a, $47                                     ; $7b27: $3e $47
    nop                                           ; $7b29: $00
    nop                                           ; $7b2a: $00
    cp [hl]                                       ; $7b2b: $be
    ld c, d                                       ; $7b2c: $4a
    jp nc, Jump_000_3f25                          ; $7b2d: $d2 $25 $3f

    ld e, a                                       ; $7b30: $5f
    ld b, e                                       ; $7b31: $43
    nop                                           ; $7b32: $00
    xor h                                         ; $7b33: $ac
    add hl, sp                                    ; $7b34: $39
    push af                                       ; $7b35: $f5
    ld l, d                                       ; $7b36: $6a
    sbc e                                         ; $7b37: $9b
    rra                                           ; $7b38: $1f
    ld h, l                                       ; $7b39: $65
    nop                                           ; $7b3a: $00
    dec l                                         ; $7b3b: $2d
    add hl, bc                                    ; $7b3c: $09
    jp z, $d108                                   ; $7b3d: $ca $08 $d1

    dec d                                         ; $7b40: $15
    nop                                           ; $7b41: $00
    nop                                           ; $7b42: $00
    rla                                           ; $7b43: $17
    ld l, e                                       ; $7b44: $6b
    nop                                           ; $7b45: $00
    jr nz, jr_0b6_7b26                            ; $7b46: $20 $de

    ld a, a                                       ; $7b48: $7f
    ld hl, $7d08                                  ; $7b49: $21 $08 $7d
    inc c                                         ; $7b4c: $0c
    ld a, [$103d]                                 ; $7b4d: $fa $3d $10
    nop                                           ; $7b50: $00
    ld bc, $7b00                                  ; $7b51: $01 $00 $7b
    ld b, [hl]                                    ; $7b54: $46
    ld a, a                                       ; $7b55: $7f
    ld h, e                                       ; $7b56: $63
    xor b                                         ; $7b57: $a8
    inc d                                         ; $7b58: $14
    ld [hl+], a                                   ; $7b59: $22
    nop                                           ; $7b5a: $00
    ld d, c                                       ; $7b5b: $51
    dec h                                         ; $7b5c: $25
    ld a, h                                       ; $7b5d: $7c
    ld a, [hl+]                                   ; $7b5e: $2a
    db $fd                                        ; $7b5f: $fd
    ld d, d                                       ; $7b60: $52
    nop                                           ; $7b61: $00
    nop                                           ; $7b62: $00
    ld a, $5f                                     ; $7b63: $3e $5f
    ld [$6f38], a                                 ; $7b65: $ea $38 $6f
    ld hl, $14ea                                  ; $7b68: $21 $ea $14
    sub c                                         ; $7b6b: $91
    ld [hl], e                                    ; $7b6c: $73
    ld [hl], $04                                  ; $7b6d: $36 $04
    ld a, e                                       ; $7b6f: $7b
    rla                                           ; $7b70: $17
    ld hl, $a700                                  ; $7b71: $21 $00 $a7
    inc b                                         ; $7b74: $04
    dec b                                         ; $7b75: $05
    dec h                                         ; $7b76: $25
    ld de, $0000                                  ; $7b77: $11 $00 $00
    jr nz, jr_0b6_7b0f                            ; $7b7a: $20 $93

    ld e, [hl]                                    ; $7b7c: $5e
    db $dd                                        ; $7b7d: $dd
    ld a, e                                       ; $7b7e: $7b
    jr jr_0b6_7bec                                ; $7b7f: $18 $6b

    ld bc, $be0c                                  ; $7b81: $01 $0c $be
    inc d                                         ; $7b84: $14
    rst $18                                       ; $7b85: $df
    ld d, d                                       ; $7b86: $52
    ld d, b                                       ; $7b87: $50
    ld [$0021], sp                                ; $7b88: $08 $21 $00
    or e                                          ; $7b8b: $b3
    ld sp, $4abf                                  ; $7b8c: $31 $bf $4a
    add hl, sp                                    ; $7b8f: $39
    ld a, $01                                     ; $7b90: $3e $01
    nop                                           ; $7b92: $00
    scf                                           ; $7b93: $37
    ld h, $ec                                     ; $7b94: $26 $ec
    jr jr_0b6_7bd3                                ; $7b96: $18 $3b

    ld a, [hl-]                                   ; $7b98: $3a
    nop                                           ; $7b99: $00
    inc b                                         ; $7b9a: $04
    push de                                       ; $7b9b: $d5
    dec a                                         ; $7b9c: $3d
    cp l                                          ; $7b9d: $bd
    ld d, d                                       ; $7b9e: $52
    db $ed                                        ; $7b9f: $ed
    jr z, jr_0b6_7bc2                             ; $7ba0: $28 $20

    inc b                                         ; $7ba2: $04
    xor [hl]                                      ; $7ba3: $ae
    ld e, l                                       ; $7ba4: $5d
    cpl                                           ; $7ba5: $2f
    inc b                                         ; $7ba6: $04
    db $ed                                        ; $7ba7: $ed
    dec b                                         ; $7ba8: $05
    nop                                           ; $7ba9: $00
    nop                                           ; $7baa: $00
    db $10                                        ; $7bab: $10
    ld e, c                                       ; $7bac: $59
    sbc $7f                                       ; $7bad: $de $7f
    dec hl                                        ; $7baf: $2b
    ld [$2000], sp                                ; $7bb0: $08 $00 $20
    ld d, c                                       ; $7bb3: $51
    ld e, d                                       ; $7bb4: $5a
    rst $30                                       ; $7bb5: $f7
    ld l, d                                       ; $7bb6: $6a
    sbc h                                         ; $7bb7: $9c
    ld [hl], a                                    ; $7bb8: $77
    nop                                           ; $7bb9: $00
    inc c                                         ; $7bba: $0c
    sbc a                                         ; $7bbb: $9f
    inc d                                         ; $7bbc: $14
    ld sp, hl                                     ; $7bbd: $f9
    dec a                                         ; $7bbe: $3d
    ld c, $00                                     ; $7bbf: $0e $00
    nop                                           ; $7bc1: $00

jr_0b6_7bc2:
    nop                                           ; $7bc2: $00
    ld [hl-], a                                   ; $7bc3: $32
    ld a, [hl-]                                   ; $7bc4: $3a
    ld a, [hl]                                    ; $7bc5: $7e
    ld d, e                                       ; $7bc6: $53
    add a                                         ; $7bc7: $87
    ld [$0021], sp                                ; $7bc8: $08 $21 $00
    ld c, a                                       ; $7bcb: $4f
    ld de, $369b                                  ; $7bcc: $11 $9b $36
    or d                                          ; $7bcf: $b2
    ld hl, $0001                                  ; $7bd0: $21 $01 $00

jr_0b6_7bd3:
    ld [hl], e                                    ; $7bd3: $73
    ld hl, $0892                                  ; $7bd4: $21 $92 $08
    ld a, l                                       ; $7bd7: $7d
    ld b, d                                       ; $7bd8: $42

jr_0b6_7bd9:
    inc bc                                        ; $7bd9: $03
    nop                                           ; $7bda: $00
    ld [hl], e                                    ; $7bdb: $73
    inc c                                         ; $7bdc: $0c
    cp a                                          ; $7bdd: $bf
    dec [hl]                                      ; $7bde: $35
    ld a, [hl]                                    ; $7bdf: $7e
    inc c                                         ; $7be0: $0c
    nop                                           ; $7be1: $00
    nop                                           ; $7be2: $00
    call $f748                                    ; $7be3: $cd $48 $f7
    ld l, d                                       ; $7be6: $6a
    ld h, a                                       ; $7be7: $67
    inc l                                         ; $7be8: $2c
    nop                                           ; $7be9: $00
    jr nz, jr_0b6_7bd9                            ; $7bea: $20 $ed

jr_0b6_7bec:
    ld d, c                                       ; $7bec: $51
    ld [hl], d                                    ; $7bed: $72
    ld e, [hl]                                    ; $7bee: $5e
    cpl                                           ; $7bef: $2f
    ld d, [hl]                                    ; $7bf0: $56
    jr nz, jr_0b6_7bf3                            ; $7bf1: $20 $00

jr_0b6_7bf3:
    push de                                       ; $7bf3: $d5
    ld l, $00                                     ; $7bf4: $2e $00

jr_0b6_7bf6:
    jr nz, jr_0b6_7bf6                            ; $7bf6: $20 $fe

    ld b, a                                       ; $7bf8: $47
    ret                                           ; $7bf9: $c9


    inc b                                         ; $7bfa: $04
    ld a, [$d04a]                                 ; $7bfb: $fa $4a $d0
    add hl, hl                                    ; $7bfe: $29
    rst $18                                       ; $7bff: $df
    ld [hl], e                                    ; $7c00: $73
    inc hl                                        ; $7c01: $23
    inc b                                         ; $7c02: $04
    ld l, a                                       ; $7c03: $6f
    ld de, $475f                                  ; $7c04: $11 $5f $47
    call nc, $001d                                ; $7c07: $d4 $1d $00
    nop                                           ; $7c0a: $00
    ld [hl], e                                    ; $7c0b: $73
    add hl, hl                                    ; $7c0c: $29
    ld d, c                                       ; $7c0d: $51
    ld [$429d], sp                                ; $7c0e: $08 $9d $42
    ld [hl-], a                                   ; $7c11: $32
    inc b                                         ; $7c12: $04
    cp a                                          ; $7c13: $bf
    dec [hl]                                      ; $7c14: $35
    ld a, [hl]                                    ; $7c15: $7e
    inc c                                         ; $7c16: $0c
    rst $38                                       ; $7c17: $ff
    ld e, [hl]                                    ; $7c18: $5e
    nop                                           ; $7c19: $00
    nop                                           ; $7c1a: $00
    db $eb                                        ; $7c1b: $eb
    ld b, b                                       ; $7c1c: $40
    ld c, b                                       ; $7c1d: $48
    inc h                                         ; $7c1e: $24
    cpl                                           ; $7c1f: $2f
    ld d, [hl]                                    ; $7c20: $56
    nop                                           ; $7c21: $00
    jr nz, @-$19                                  ; $7c22: $20 $e5

    inc a                                         ; $7c24: $3c
    ld c, b                                       ; $7c25: $48
    ld b, l                                       ; $7c26: $45
    cpl                                           ; $7c27: $2f
    ld d, [hl]                                    ; $7c28: $56
    ld hl, $ff00                                  ; $7c29: $21 $00 $ff
    ccf                                           ; $7c2c: $3f
    nop                                           ; $7c2d: $00
    inc e                                         ; $7c2e: $1c
    and $04                                       ; $7c2f: $e6 $04
    ld h, [hl]                                    ; $7c31: $66
    inc b                                         ; $7c32: $04
    cp d                                          ; $7c33: $ba
    ld a, $ff                                     ; $7c34: $3e $ff
    ld a, e                                       ; $7c36: $7b
    pop de                                        ; $7c37: $d1
    dec h                                         ; $7c38: $25
    nop                                           ; $7c39: $00
    inc c                                         ; $7c3a: $0c
    or e                                          ; $7c3b: $b3
    add hl, de                                    ; $7c3c: $19
    cp l                                          ; $7c3d: $bd
    daa                                           ; $7c3e: $27
    ret z                                         ; $7c3f: $c8

    inc b                                         ; $7c40: $04

jr_0b6_7c41:
    nop                                           ; $7c41: $00
    nop                                           ; $7c42: $00
    push af                                       ; $7c43: $f5
    ld c, $7d                                     ; $7c44: $0e $7d
    ld b, d                                       ; $7c46: $42
    ld h, a                                       ; $7c47: $67
    inc d                                         ; $7c48: $14
    ld [de], a                                    ; $7c49: $12
    nop                                           ; $7c4a: $00
    rst $18                                       ; $7c4b: $df
    add hl, sp                                    ; $7c4c: $39
    ld a, [hl]                                    ; $7c4d: $7e
    inc c                                         ; $7c4e: $0c
    sbc a                                         ; $7c4f: $9f
    ld d, d                                       ; $7c50: $52
    nop                                           ; $7c51: $00
    inc b                                         ; $7c52: $04
    adc e                                         ; $7c53: $8b
    ld c, l                                       ; $7c54: $4d
    ld h, a                                       ; $7c55: $67
    inc h                                         ; $7c56: $24
    sbc a                                         ; $7c57: $9f
    ld d, d                                       ; $7c58: $52
    nop                                           ; $7c59: $00
    jr nz, jr_0b6_7c41                            ; $7c5a: $20 $e5

    inc a                                         ; $7c5c: $3c
    ld h, a                                       ; $7c5d: $67
    inc h                                         ; $7c5e: $24
    sbc a                                         ; $7c5f: $9f
    ld d, d                                       ; $7c60: $52
    nop                                           ; $7c61: $00
    inc b                                         ; $7c62: $04
    rst $38                                       ; $7c63: $ff
    ld c, a                                       ; $7c64: $4f
    adc h                                         ; $7c65: $8c
    dec e                                         ; $7c66: $1d
    nop                                           ; $7c67: $00
    jr nz, jr_0b6_7c6a                            ; $7c68: $20 $00

jr_0b6_7c6a:
    db $10                                        ; $7c6a: $10
    sbc $47                                       ; $7c6b: $de $47
    adc c                                         ; $7c6d: $89
    nop                                           ; $7c6e: $00
    jr nc, @+$10                                  ; $7c6f: $30 $0e

    nop                                           ; $7c71: $00
    inc c                                         ; $7c72: $0c
    ld a, e                                       ; $7c73: $7b
    rla                                           ; $7c74: $17
    rst $38                                       ; $7c75: $ff
    ld b, a                                       ; $7c76: $47
    call Call_000_0005                            ; $7c77: $cd $05 $00
    nop                                           ; $7c7a: $00
    ld sp, $f80a                                  ; $7c7b: $31 $0a $f8
    ld sp, $3e5c                                  ; $7c7e: $31 $5c $3e
    ld bc, $1d00                                  ; $7c81: $01 $00 $1d
    ld [$463f], sp                                ; $7c84: $08 $3f $46
    ld c, $00                                     ; $7c87: $0e $00
    nop                                           ; $7c89: $00
    inc b                                         ; $7c8a: $04
    db $10                                        ; $7c8b: $10
    ld h, d                                       ; $7c8c: $62
    ccf                                           ; $7c8d: $3f
    ld b, [hl]                                    ; $7c8e: $46
    adc c                                         ; $7c8f: $89
    jr nz, jr_0b6_7c92                            ; $7c90: $20 $00

jr_0b6_7c92:
    jr nz, jr_0b6_7ca4                            ; $7c92: $20 $10

    ld h, d                                       ; $7c94: $62
    ccf                                           ; $7c95: $3f
    ld b, [hl]                                    ; $7c96: $46
    adc c                                         ; $7c97: $89
    jr nz, jr_0b6_7c9a                            ; $7c98: $20 $00

jr_0b6_7c9a:
    inc e                                         ; $7c9a: $1c
    nop                                           ; $7c9b: $00
    jr nz, @+$01                                  ; $7c9c: $20 $ff

    ld b, a                                       ; $7c9e: $47
    call Call_000_0005                            ; $7c9f: $cd $05 $00
    inc b                                         ; $7ca2: $04
    sbc h                                         ; $7ca3: $9c

jr_0b6_7ca4:
    ld a, e                                       ; $7ca4: $7b
    ld c, b                                       ; $7ca5: $48
    inc l                                         ; $7ca6: $2c

jr_0b6_7ca7:
    nop                                           ; $7ca7: $00
    jr nz, @+$23                                  ; $7ca8: $20 $21

    nop                                           ; $7caa: $00
    ld [hl], d                                    ; $7cab: $72
    ld a, [bc]                                    ; $7cac: $0a
    rst $38                                       ; $7cad: $ff
    ld b, e                                       ; $7cae: $43
    jr c, jr_0b6_7cd0                             ; $7caf: $38 $1f

    nop                                           ; $7cb1: $00
    nop                                           ; $7cb2: $00
    inc de                                        ; $7cb3: $13
    ld a, [de]                                    ; $7cb4: $1a
    ld e, l                                       ; $7cb5: $5d
    ld a, $ca                                     ; $7cb6: $3e $ca
    stop                                          ; $7cb8: $10 $00
    nop                                           ; $7cba: $00
    sbc $1f                                       ; $7cbb: $de $1f
    rst $38                                       ; $7cbd: $ff
    ld d, a                                       ; $7cbe: $57
    ld l, c                                       ; $7cbf: $69
    add hl, bc                                    ; $7cc0: $09
    nop                                           ; $7cc1: $00
    inc c                                         ; $7cc2: $0c
    db $fd                                        ; $7cc3: $fd
    inc e                                         ; $7cc4: $1c
    jr jr_0b6_7d3e                                ; $7cc5: $18 $77

    db $fd                                        ; $7cc7: $fd
    ld b, c                                       ; $7cc8: $41

jr_0b6_7cc9:
    nop                                           ; $7cc9: $00
    jr nz, jr_0b6_7cc9                            ; $7cca: $20 $fd

    inc e                                         ; $7ccc: $1c
    jr @+$79                                      ; $7ccd: $18 $77

    db $fd                                        ; $7ccf: $fd

jr_0b6_7cd0:
    ld b, c                                       ; $7cd0: $41
    nop                                           ; $7cd1: $00
    jr nz, @+$74                                  ; $7cd2: $20 $72

    ld a, [bc]                                    ; $7cd4: $0a
    rst $38                                       ; $7cd5: $ff
    ld b, e                                       ; $7cd6: $43
    jr c, jr_0b6_7cf8                             ; $7cd7: $38 $1f

    nop                                           ; $7cd9: $00
    nop                                           ; $7cda: $00
    sbc h                                         ; $7cdb: $9c
    ld [hl], a                                    ; $7cdc: $77
    ld l, c                                       ; $7cdd: $69
    jr nc, jr_0b6_7ce0                            ; $7cde: $30 $00

jr_0b6_7ce0:
    jr nz, jr_0b6_7ce2                            ; $7ce0: $20 $00

jr_0b6_7ce2:
    nop                                           ; $7ce2: $00
    ld d, e                                       ; $7ce3: $53
    ld h, l                                       ; $7ce4: $65
    ld c, $02                                     ; $7ce5: $0e $02
    inc h                                         ; $7ce7: $24
    inc l                                         ; $7ce8: $2c
    nop                                           ; $7ce9: $00
    nop                                           ; $7cea: $00
    rrca                                          ; $7ceb: $0f
    ld h, d                                       ; $7cec: $62
    sbc h                                         ; $7ced: $9c
    ld a, e                                       ; $7cee: $7b
    or l                                          ; $7cef: $b5
    ld l, [hl]                                    ; $7cf0: $6e
    nop                                           ; $7cf1: $00
    nop                                           ; $7cf2: $00
    push hl                                       ; $7cf3: $e5
    inc a                                         ; $7cf4: $3c
    rrca                                          ; $7cf5: $0f
    ld e, d                                       ; $7cf6: $5a
    ld c, c                                       ; $7cf7: $49

jr_0b6_7cf8:
    ld c, c                                       ; $7cf8: $49
    nop                                           ; $7cf9: $00
    nop                                           ; $7cfa: $00

jr_0b6_7cfb:
    rst $30                                       ; $7cfb: $f7
    ld [hl], d                                    ; $7cfc: $72
    sbc $7b                                       ; $7cfd: $de $7b
    nop                                           ; $7cff: $00
    jr nz, jr_0b6_7d02                            ; $7d00: $20 $00

jr_0b6_7d02:
    jr nz, jr_0b6_7cfb                            ; $7d02: $20 $f7

    ld [hl], d                                    ; $7d04: $72
    sbc $7b                                       ; $7d05: $de $7b
    nop                                           ; $7d07: $00

Call_0b6_7d08:
    jr nz, jr_0b6_7d0a                            ; $7d08: $20 $00

jr_0b6_7d0a:
    jr nz, jr_0b6_7d5f                            ; $7d0a: $20 $53

    ld h, l                                       ; $7d0c: $65
    ld c, $02                                     ; $7d0d: $0e $02
    inc h                                         ; $7d0f: $24
    inc l                                         ; $7d10: $2c
    nop                                           ; $7d11: $00
    jr nz, jr_0b6_7ca7                            ; $7d12: $20 $93

    ld h, d                                       ; $7d14: $62
    sbc h                                         ; $7d15: $9c
    ld [hl], a                                    ; $7d16: $77
    ld l, c                                       ; $7d17: $69
    ld b, l                                       ; $7d18: $45
    push hl                                       ; $7d19: $e5
    inc a                                         ; $7d1a: $3c
    ld sp, $f766                                  ; $7d1b: $31 $66 $f7

jr_0b6_7d1e:
    ld [hl], d                                    ; $7d1e: $72
    ld c, c                                       ; $7d1f: $49
    ld c, l                                       ; $7d20: $4d
    daa                                           ; $7d21: $27
    ld b, l                                       ; $7d22: $45
    sub l                                         ; $7d23: $95
    ld [hl], d                                    ; $7d24: $72
    sbc h                                         ; $7d25: $9c
    ld a, e                                       ; $7d26: $7b
    adc $5d                                       ; $7d27: $ce $5d
    ld l, d                                       ; $7d29: $6a
    ld c, l                                       ; $7d2a: $4d
    sub h                                         ; $7d2b: $94
    ld l, [hl]                                    ; $7d2c: $6e
    jr nc, jr_0b6_7d8d                            ; $7d2d: $30 $5e

    ld e, d                                       ; $7d2f: $5a
    ld [hl], e                                    ; $7d30: $73
    nop                                           ; $7d31: $00
    jr nz, jr_0b6_7da7                            ; $7d32: $20 $73

    ld e, [hl]                                    ; $7d34: $5e
    cp h                                          ; $7d35: $bc
    ld a, e                                       ; $7d36: $7b

jr_0b6_7d37:
    push hl                                       ; $7d37: $e5
    inc a                                         ; $7d38: $3c
    nop                                           ; $7d39: $00
    jr nz, jr_0b6_7daf                            ; $7d3a: $20 $73

    ld e, [hl]                                    ; $7d3c: $5e
    cp h                                          ; $7d3d: $bc

jr_0b6_7d3e:
    ld a, e                                       ; $7d3e: $7b
    push hl                                       ; $7d3f: $e5
    inc a                                         ; $7d40: $3c
    ldh [rDIV], a                                 ; $7d41: $e0 $04
    ld [c], a                                     ; $7d43: $e2
    ld bc, $0048                                  ; $7d44: $01 $48 $00
    ld bc, $08a0                                  ; $7d47: $01 $a0 $08
    ld [$081a], sp                                ; $7d4a: $08 $1a $08
    ld [hl+], a                                   ; $7d4d: $22
    ld [hl+], a                                   ; $7d4e: $22
    ld [bc], a                                    ; $7d4f: $02
    nop                                           ; $7d50: $00
    ld [bc], a                                    ; $7d51: $02
    inc d                                         ; $7d52: $14
    inc d                                         ; $7d53: $14
    jr z, @+$2a                                   ; $7d54: $28 $28

    ld d, b                                       ; $7d56: $50
    ld d, b                                       ; $7d57: $50
    add b                                         ; $7d58: $80
    ld b, b                                       ; $7d59: $40
    add b                                         ; $7d5a: $80
    inc d                                         ; $7d5b: $14
    ld [$1010], sp                                ; $7d5c: $08 $10 $10

jr_0b6_7d5f:
    ld b, b                                       ; $7d5f: $40
    ld b, b                                       ; $7d60: $40
    inc b                                         ; $7d61: $04
    inc b                                         ; $7d62: $04
    nop                                           ; $7d63: $00
    ld [de], a                                    ; $7d64: $12
    ld [de], a                                    ; $7d65: $12
    inc h                                         ; $7d66: $24
    inc h                                         ; $7d67: $24
    ld [$8108], sp                                ; $7d68: $08 $08 $81
    add c                                         ; $7d6b: $81
    add h                                         ; $7d6c: $84
    inc a                                         ; $7d6d: $3c
    ld [$4040], sp                                ; $7d6e: $08 $40 $40
    add b                                         ; $7d71: $80
    add b                                         ; $7d72: $80
    inc b                                         ; $7d73: $04
    ld [$0000], sp                                ; $7d74: $08 $00 $00
    inc h                                         ; $7d77: $24
    jr nz, jr_0b6_7d9a                            ; $7d78: $20 $20

    ld c, h                                       ; $7d7a: $4c
    ld c, b                                       ; $7d7b: $48
    ld bc, $5a01                                  ; $7d7c: $01 $01 $5a
    jr z, @+$12                                   ; $7d7f: $28 $10

    db $10                                        ; $7d81: $10
    ld [$2020], sp                                ; $7d82: $08 $20 $20
    ld b, b                                       ; $7d85: $40
    ld b, b                                       ; $7d86: $40
    inc b                                         ; $7d87: $04
    ld [$8080], sp                                ; $7d88: $08 $80 $80
    jr nz, jr_0b6_7dcd                            ; $7d8b: $20 $40

jr_0b6_7d8d:
    jr nz, jr_0b6_7da7                            ; $7d8d: $20 $18

    ld [$0101], sp                                ; $7d8f: $08 $01 $01
    ld [bc], a                                    ; $7d92: $02
    ld [bc], a                                    ; $7d93: $02
    nop                                           ; $7d94: $00
    nop                                           ; $7d95: $00
    inc sp                                        ; $7d96: $33
    add hl, bc                                    ; $7d97: $09
    add hl, bc                                    ; $7d98: $09
    ld b, b                                       ; $7d99: $40

jr_0b6_7d9a:
    jr jr_0b6_7d1e                                ; $7d9a: $18 $82

    xor b                                         ; $7d9c: $a8
    nop                                           ; $7d9d: $00
    nop                                           ; $7d9e: $00
    ld [hl], h                                    ; $7d9f: $74
    ld [$3830], sp                                ; $7da0: $08 $30 $38
    ldh a, [$36]                                  ; $7da3: $f0 $36
    jr jr_0b6_7dbd                                ; $7da5: $18 $16

jr_0b6_7da7:
    jr jr_0b6_7d37                                ; $7da7: $18 $8e

    ld [$18ba], sp                                ; $7da9: $08 $ba $18
    add hl, bc                                    ; $7dac: $09
    add hl, bc                                    ; $7dad: $09
    db $10                                        ; $7dae: $10

jr_0b6_7daf:
    db $10                                        ; $7daf: $10
    daa                                           ; $7db0: $27
    inc b                                         ; $7db1: $04
    inc b                                         ; $7db2: $04
    sbc d                                         ; $7db3: $9a
    ld [$0404], sp                                ; $7db4: $08 $04 $04
    ld l, h                                       ; $7db7: $6c
    ld [$1892], sp                                ; $7db8: $08 $92 $18
    sub $38                                       ; $7dbb: $d6 $38

jr_0b6_7dbd:
    ret nz                                        ; $7dbd: $c0

    ld d, $08                                     ; $7dbe: $16 $08
    db $e4                                        ; $7dc0: $e4
    ld c, b                                       ; $7dc1: $48
    ld a, h                                       ; $7dc2: $7c
    ld [bc], a                                    ; $7dc3: $02
    jp hl                                         ; $7dc4: $e9


    rlca                                          ; $7dc5: $07
    jp nc, Jump_000_001c                          ; $7dc6: $d2 $1c $00

    ld b, [hl]                                    ; $7dc9: $46
    call c, $f826                                 ; $7dca: $dc $26 $f8

jr_0b6_7dcd:
    adc [hl]                                      ; $7dcd: $8e
    ld a, b                                       ; $7dce: $78
    ld c, h                                       ; $7dcf: $4c
    jr nc, jr_0b6_7df6                            ; $7dd0: $30 $24

    jr z, jr_0b6_7e0c                             ; $7dd2: $28 $38

    ld l, [hl]                                    ; $7dd4: $6e
    ld b, b                                       ; $7dd5: $40
    nop                                           ; $7dd6: $00
    ld d, l                                       ; $7dd7: $55
    dec c                                         ; $7dd8: $0d
    ld bc, $ffff                                  ; $7dd9: $01 $ff $ff
    nop                                           ; $7ddc: $00
    ld d, l                                       ; $7ddd: $55
    rst $38                                       ; $7dde: $ff
    ld d, b                                       ; $7ddf: $50
    xor a                                         ; $7de0: $af
    xor d                                         ; $7de1: $aa
    ld d, l                                       ; $7de2: $55
    rst $38                                       ; $7de3: $ff
    nop                                           ; $7de4: $00
    ld d, b                                       ; $7de5: $50
    xor a                                         ; $7de6: $af
    stop                                          ; $7de7: $10 $00

jr_0b6_7de9:
    ld a, [bc]                                    ; $7de9: $0a
    stop                                          ; $7dea: $10 $00
    ld d, a                                       ; $7dec: $57
    rst $38                                       ; $7ded: $ff
    inc bc                                        ; $7dee: $03
    rst $38                                       ; $7def: $ff
    nop                                           ; $7df0: $00
    xor e                                         ; $7df1: $ab
    ld d, a                                       ; $7df2: $57
    push af                                       ; $7df3: $f5
    dec bc                                        ; $7df4: $0b
    db $fd                                        ; $7df5: $fd

jr_0b6_7df6:
    inc bc                                        ; $7df6: $03
    ld d, a                                       ; $7df7: $57
    ld bc, $a900                                  ; $7df8: $01 $00 $a9
    inc bc                                        ; $7dfb: $03

jr_0b6_7dfc:
    push af                                       ; $7dfc: $f5
    adc [hl]                                      ; $7dfd: $8e
    and $9c                                       ; $7dfe: $e6 $9c
    rst $10                                       ; $7e00: $d7
    xor h                                         ; $7e01: $ac
    inc b                                         ; $7e02: $04
    add [hl]                                      ; $7e03: $86
    db $fc                                        ; $7e04: $fc
    rst $00                                       ; $7e05: $c7
    db $fc                                        ; $7e06: $fc
    cp $02                                        ; $7e07: $fe $02
    db $10                                        ; $7e09: $10
    dec b                                         ; $7e0a: $05
    nop                                           ; $7e0b: $00

jr_0b6_7e0c:
    add hl, de                                    ; $7e0c: $19
    and b                                         ; $7e0d: $a0
    nop                                           ; $7e0e: $00
    ld d, b                                       ; $7e0f: $50
    inc a                                         ; $7e10: $3c
    nop                                           ; $7e11: $00
    ld c, b                                       ; $7e12: $48
    add hl, hl                                    ; $7e13: $29
    ld d, b                                       ; $7e14: $50
    nop                                           ; $7e15: $00
    and l                                         ; $7e16: $a5
    db $10                                        ; $7e17: $10
    and h                                         ; $7e18: $a4
    ld d, a                                       ; $7e19: $57
    ld b, c                                       ; $7e1a: $41
    xor d                                         ; $7e1b: $aa
    ld h, e                                       ; $7e1c: $63
    ld de, $0020                                  ; $7e1d: $11 $20 $00
    jp hl                                         ; $7e20: $e9


    jr jr_0b6_7e28                                ; $7e21: $18 $05

    nop                                           ; $7e23: $00
    ld [hl], b                                    ; $7e24: $70
    xor b                                         ; $7e25: $a8
    ld [hl], e                                    ; $7e26: $73
    ld d, c                                       ; $7e27: $51

jr_0b6_7e28:
    ld [hl], h                                    ; $7e28: $74
    ld [$4984], sp                                ; $7e29: $08 $84 $49
    ld b, b                                       ; $7e2c: $40
    nop                                           ; $7e2d: $00
    ld a, [hl+]                                   ; $7e2e: $2a
    nop                                           ; $7e2f: $00
    ld bc, $0014                                  ; $7e30: $01 $14 $00
    jr z, jr_0b6_7e35                             ; $7e33: $28 $00

jr_0b6_7e35:
    ld b, c                                       ; $7e35: $41
    nop                                           ; $7e36: $00
    add h                                         ; $7e37: $84
    ld d, b                                       ; $7e38: $50
    jr nz, jr_0b6_7ea8                            ; $7e39: $20 $6d

    xor d                                         ; $7e3b: $aa
    ld a, [hl-]                                   ; $7e3c: $3a
    jr nz, jr_0b6_7de9                            ; $7e3d: $20 $aa

    add hl, de                                    ; $7e3f: $19

jr_0b6_7e40:
    dec d                                         ; $7e40: $15
    ld [hl], b                                    ; $7e41: $70
    nop                                           ; $7e42: $00
    or h                                          ; $7e43: $b4
    ld c, c                                       ; $7e44: $49
    ld d, h                                       ; $7e45: $54
    ld [hl], b                                    ; $7e46: $70
    ld d, b                                       ; $7e47: $50
    cp b                                          ; $7e48: $b8
    ld [hl], l                                    ; $7e49: $75
    add hl, bc                                    ; $7e4a: $09
    xor d                                         ; $7e4b: $aa
    ld b, $10                                     ; $7e4c: $06 $10
    ld c, d                                       ; $7e4e: $4a
    ld [$3840], sp                                ; $7e4f: $08 $40 $38
    jr nz, jr_0b6_7e54                            ; $7e52: $20 $00

jr_0b6_7e54:
    ld [$007e], sp                                ; $7e54: $08 $7e $00
    add hl, bc                                    ; $7e57: $09
    add hl, hl                                    ; $7e58: $29
    sub b                                         ; $7e59: $90
    jr jr_0b6_7dfc                                ; $7e5a: $18 $a0

    ld l, b                                       ; $7e5c: $68
    ld [$5f0a], sp                                ; $7e5d: $08 $0a $5f
    add hl, bc                                    ; $7e60: $09
    ld h, b                                       ; $7e61: $60
    jr @+$12                                      ; $7e62: $18 $10

    cp b                                          ; $7e64: $b8
    ld l, $30                                     ; $7e65: $2e $30
    ld d, b                                       ; $7e67: $50
    inc b                                         ; $7e68: $04
    ld bc, $31cb                                  ; $7e69: $01 $cb $31
    dec l                                         ; $7e6c: $2d
    ld [bc], a                                    ; $7e6d: $02
    ld d, e                                       ; $7e6e: $53
    ld bc, $08ab                                  ; $7e6f: $01 $ab $08
    ld bc, $0341                                  ; $7e72: $01 $41 $03
    add e                                         ; $7e75: $83
    inc b                                         ; $7e76: $04
    nop                                           ; $7e77: $00
    add l                                         ; $7e78: $85
    inc bc                                        ; $7e79: $03
    ld de, $0302                                  ; $7e7a: $11 $02 $03
    dec b                                         ; $7e7d: $05
    inc bc                                        ; $7e7e: $03
    cp $fc                                        ; $7e7f: $fe $fc
    db $fc                                        ; $7e81: $fc
    ld a, [bc]                                    ; $7e82: $0a
    ld bc, $2bfc                                  ; $7e83: $01 $fc $2b
    db $fc                                        ; $7e86: $fc

jr_0b6_7e87:
    ld a, [$0008]                                 ; $7e87: $fa $08 $00
    ld hl, sp+$0c                                 ; $7e8a: $f8 $0c
    nop                                           ; $7e8c: $00
    rst $38                                       ; $7e8d: $ff
    ld bc, $9a60                                  ; $7e8e: $01 $60 $9a
    jr c, jr_0b6_7ed3                             ; $7e91: $38 $40

    ld a, [bc]                                    ; $7e93: $0a
    ld h, b                                       ; $7e94: $60
    ld hl, $ffd5                                  ; $7e95: $21 $d5 $ff
    adc b                                         ; $7e98: $88
    rst $38                                       ; $7e99: $ff
    adc d                                         ; $7e9a: $8a
    db $fd                                        ; $7e9b: $fd
    nop                                           ; $7e9c: $00
    push bc                                       ; $7e9d: $c5
    cp [hl]                                       ; $7e9e: $be
    and a                                         ; $7e9f: $a7
    call c, $bec5                                 ; $7ea0: $dc $c5 $be
    and $9c                                       ; $7ea3: $e6 $9c
    sbc d                                         ; $7ea5: $9a
    ld [hl], b                                    ; $7ea6: $70
    add hl, bc                                    ; $7ea7: $09

jr_0b6_7ea8:
    nop                                           ; $7ea8: $00
    rst $38                                       ; $7ea9: $ff
    ld [hl], b                                    ; $7eaa: $70
    add hl, hl                                    ; $7eab: $29
    jr c, jr_0b6_7eb0                             ; $7eac: $38 $02

    inc bc                                        ; $7eae: $03
    ld [bc], a                                    ; $7eaf: $02

jr_0b6_7eb0:
    jr jr_0b6_7ebb                                ; $7eb0: $18 $09

    add a                                         ; $7eb2: $87
    ld [$0510], sp                                ; $7eb3: $08 $10 $05
    inc bc                                        ; $7eb6: $03
    db $fc                                        ; $7eb7: $fc
    ld hl, sp+$56                                 ; $7eb8: $f8 $56
    nop                                           ; $7eba: $00

jr_0b6_7ebb:
    inc b                                         ; $7ebb: $04
    db $10                                        ; $7ebc: $10
    ld [bc], a                                    ; $7ebd: $02
    jr jr_0b6_7e40                                ; $7ebe: $18 $80

    and b                                         ; $7ec0: $a0
    add hl, bc                                    ; $7ec1: $09
    dec d                                         ; $7ec2: $15
    ld [$55aa], a                                 ; $7ec3: $ea $aa $55
    ld a, a                                       ; $7ec6: $7f
    add b                                         ; $7ec7: $80
    ld a, [$b0a0]                                 ; $7ec8: $fa $a0 $b0
    ld bc, $b0a0                                  ; $7ecb: $01 $a0 $b0
    ld de, $bf40                                  ; $7ece: $11 $40 $bf
    xor d                                         ; $7ed1: $aa
    ld d, l                                       ; $7ed2: $55

jr_0b6_7ed3:
    rst $18                                       ; $7ed3: $df
    ld e, d                                       ; $7ed4: $5a
    jr nz, jr_0b6_7e87                            ; $7ed5: $20 $b0

    add hl, bc                                    ; $7ed7: $09
    ld [bc], a                                    ; $7ed8: $02
    ret nz                                        ; $7ed9: $c0

    ld de, $1850                                  ; $7eda: $11 $50 $18
    rst $38                                       ; $7edd: $ff
    ret nc                                        ; $7ede: $d0

    ld bc, $c5aa                                  ; $7edf: $01 $aa $c5
    ret nc                                        ; $7ee2: $d0

    ld de, $0830                                  ; $7ee3: $11 $30 $08
    rst $38                                       ; $7ee6: $ff
    nop                                           ; $7ee7: $00
    ld [$1030], a                                 ; $7ee8: $ea $30 $10

jr_0b6_7eeb:
    inc bc                                        ; $7eeb: $03
    or h                                          ; $7eec: $b4
    nop                                           ; $7eed: $00
    or h                                          ; $7eee: $b4
    inc b                                         ; $7eef: $04
    jr @+$09                                      ; $7ef0: $18 $07

    ld [bc], a                                    ; $7ef2: $02
    db $10                                        ; $7ef3: $10
    ld e, b                                       ; $7ef4: $58
    jr jr_0b6_7eeb                                ; $7ef5: $18 $f4

    inc b                                         ; $7ef7: $04
    jr nc, jr_0b6_7f76                            ; $7ef8: $30 $7c

    nop                                           ; $7efa: $00
    nop                                           ; $7efb: $00
    sub $00                                       ; $7efc: $d6 $00
    call nz, $8200                                ; $7efe: $c4 $00 $82
    nop                                           ; $7f01: $00
    add $00                                       ; $7f02: $c6 $00

Call_0b6_7f04:
    jr @-$50                                      ; $7f04: $18 $ae

    nop                                           ; $7f06: $00
    ld a, h                                       ; $7f07: $7c
    db $10                                        ; $7f08: $10
    ld [hl+], a                                   ; $7f09: $22
    and b                                         ; $7f0a: $a0
    ld [$aa55], sp                                ; $7f0b: $08 $55 $aa
    rst $28                                       ; $7f0e: $ef
    ld [hl], l                                    ; $7f0f: $75
    db $10                                        ; $7f10: $10
    ld d, b                                       ; $7f11: $50
    jr z, @-$4e                                   ; $7f12: $28 $b0

    jr @-$7e                                      ; $7f14: $18 $80

    ld [$3080], sp                                ; $7f16: $08 $80 $30
    ld b, d                                       ; $7f19: $42
    xor e                                         ; $7f1a: $ab
    add b                                         ; $7f1b: $80
    db $10                                        ; $7f1c: $10
    ret nz                                        ; $7f1d: $c0

    ld d, [hl]                                    ; $7f1e: $56
    jr @+$5e                                      ; $7f1f: $18 $5c

    ld [$030f], sp                                ; $7f21: $08 $0f $03
    rla                                           ; $7f24: $17
    inc bc                                        ; $7f25: $03
    cpl                                           ; $7f26: $2f
    inc bc                                        ; $7f27: $03
    sbc d                                         ; $7f28: $9a

jr_0b6_7f29:
    ld d, b                                       ; $7f29: $50
    ld a, [bc]                                    ; $7f2a: $0a
    ld bc, $a0fe                                  ; $7f2b: $01 $fe $a0
    ld [$1880], sp                                ; $7f2e: $08 $80 $18
    ld hl, sp+$6c                                 ; $7f31: $f8 $6c
    nop                                           ; $7f33: $00
    ldh a, [$b1]                                  ; $7f34: $f0 $b1
    inc b                                         ; $7f36: $04
    jr nc, jr_0b6_7f29                            ; $7f37: $30 $f0

    ret nc                                        ; $7f39: $d0

    stop                                          ; $7f3a: $10 $00
    add hl, bc                                    ; $7f3c: $09
    db $fd                                        ; $7f3d: $fd
    ld [bc], a                                    ; $7f3e: $02
    xor d                                         ; $7f3f: $aa
    add b                                         ; $7f40: $80
    ld [hl-], a                                   ; $7f41: $32
    sbc b                                         ; $7f42: $98
    db $10                                        ; $7f43: $10
    add hl, bc                                    ; $7f44: $09
    push af                                       ; $7f45: $f5
    ld a, [bc]                                    ; $7f46: $0a
    db $10                                        ; $7f47: $10
    ld l, b                                       ; $7f48: $68
    add b                                         ; $7f49: $80
    jr jr_0b6_7f63                                ; $7f4a: $18 $17

    inc bc                                        ; $7f4c: $03
    inc hl                                        ; $7f4d: $23

jr_0b6_7f4e:
    ld l, $07                                     ; $7f4e: $2e $07
    ld b, a                                       ; $7f50: $47
    cp l                                          ; $7f51: $bd
    nop                                           ; $7f52: $00
    rlca                                          ; $7f53: $07
    inc b                                         ; $7f54: $04
    jr nz, jr_0b6_7f9b                            ; $7f55: $20 $44

    ld [$0848], sp                                ; $7f57: $08 $48 $08
    ld hl, sp+$42                                 ; $7f5a: $f8 $42
    ldh a, [rDIV]                                 ; $7f5c: $f0 $04
    ld [$f8f2], sp                                ; $7f5e: $08 $f2 $f8
    rra                                           ; $7f61: $1f
    ccf                                           ; $7f62: $3f

jr_0b6_7f63:
    ld [bc], a                                    ; $7f63: $02
    jr z, jr_0b6_7fa5                             ; $7f64: $28 $3f

    di                                            ; $7f66: $f3
    inc b                                         ; $7f67: $04
    db $10                                        ; $7f68: $10
    adc a                                         ; $7f69: $8f
    jr nc, @-$65                                  ; $7f6a: $30 $99

    jr nz, jr_0b6_7f4e                            ; $7f6c: $20 $e0

    ld a, [bc]                                    ; $7f6e: $0a
    ld d, l                                       ; $7f6f: $55
    xor d                                         ; $7f70: $aa
    ldh [$0a], a                                  ; $7f71: $e0 $0a
    ld [hl], b                                    ; $7f73: $70
    jr @+$80                                      ; $7f74: $18 $7e

jr_0b6_7f76:
    db $fc                                        ; $7f76: $fc
    add l                                         ; $7f77: $85
    nop                                           ; $7f78: $00
    inc b                                         ; $7f79: $04

jr_0b6_7f7a:
    jr z, @-$6d                                   ; $7f7a: $28 $91

    ld [$0917], sp                                ; $7f7c: $08 $17 $09
    ld e, l                                       ; $7f7f: $5d
    nop                                           ; $7f80: $00
    inc b                                         ; $7f81: $04
    nop                                           ; $7f82: $00
    dec bc                                        ; $7f83: $0b
    ret c                                         ; $7f84: $d8

    inc b                                         ; $7f85: $04
    db $10                                        ; $7f86: $10
    ld e, a                                       ; $7f87: $5f
    jr nz, jr_0b6_7f7a                            ; $7f88: $20 $f0

    ld e, a                                       ; $7f8a: $5f
    nop                                           ; $7f8b: $00
    inc b                                         ; $7f8c: $04
    db $10                                        ; $7f8d: $10
    rlca                                          ; $7f8e: $07
    rlca                                          ; $7f8f: $07
    rrca                                          ; $7f90: $0f
    sbc h                                         ; $7f91: $9c
    ld [bc], a                                    ; $7f92: $02
    db $10                                        ; $7f93: $10
    rlca                                          ; $7f94: $07
    rrca                                          ; $7f95: $0f
    inc b                                         ; $7f96: $04
    jr jr_0b6_7fb2                                ; $7f97: $18 $19

    nop                                           ; $7f99: $00
    inc bc                                        ; $7f9a: $03

jr_0b6_7f9b:
    ld d, b                                       ; $7f9b: $50

jr_0b6_7f9c:
    rlca                                          ; $7f9c: $07
    rrca                                          ; $7f9d: $0f
    ld d, $17                                     ; $7f9e: $16 $17
    rrca                                          ; $7fa0: $0f
    rrca                                          ; $7fa1: $0f
    inc b                                         ; $7fa2: $04
    jr nz, @+$21                                  ; $7fa3: $20 $1f

jr_0b6_7fa5:
    ld [bc], a                                    ; $7fa5: $02
    nop                                           ; $7fa6: $00
    jr nz, jr_0b6_7fb1                            ; $7fa7: $20 $08

    db $f4                                        ; $7fa9: $f4
    jr z, jr_0b6_7f9c                             ; $7faa: $28 $f0

    ld a, [c]                                     ; $7fac: $f2
    ld b, b                                       ; $7fad: $40
    nop                                           ; $7fae: $00
    add sp, $44                                   ; $7faf: $e8 $44

jr_0b6_7fb1:
    nop                                           ; $7fb1: $00

jr_0b6_7fb2:
    db $e4                                        ; $7fb2: $e4
    ldh a, [$1f]                                  ; $7fb3: $f0 $1f
    jr jr_0b6_7fc6                                ; $7fb5: $18 $0f

    rrca                                          ; $7fb7: $0f
    rra                                           ; $7fb8: $1f
    inc b                                         ; $7fb9: $04
    jr z, @+$23                                   ; $7fba: $28 $21

    ld [$f0f8], sp                                ; $7fbc: $08 $f8 $f0
    ldh [$b2], a                                  ; $7fbf: $e0 $b2
    ld a, [de]                                    ; $7fc1: $1a
    nop                                           ; $7fc2: $00
    ldh [rNR30], a                                ; $7fc3: $e0 $1a
    nop                                           ; $7fc5: $00

jr_0b6_7fc6:
    ld b, $08                                     ; $7fc6: $06 $08
    ldh [$f0], a                                  ; $7fc8: $e0 $f0
    db $10                                        ; $7fca: $10
    ld a, [hl+]                                   ; $7fcb: $2a
    push de                                       ; $7fcc: $d5
    rla                                           ; $7fcd: $17
    ld a, [hl+]                                   ; $7fce: $2a
    ei                                            ; $7fcf: $fb
    inc b                                         ; $7fd0: $04
    ret nz                                        ; $7fd1: $c0

    add hl, bc                                    ; $7fd2: $09
    rrca                                          ; $7fd3: $0f
    pop de                                        ; $7fd4: $d1
    nop                                           ; $7fd5: $00
    inc b                                         ; $7fd6: $04
    jr z, @-$23                                   ; $7fd7: $28 $db

    ld [$2480], sp                                ; $7fd9: $08 $80 $24
    ld [$f0e0], sp                                ; $7fdc: $08 $e0 $f0
    ldh a, [$e0]                                  ; $7fdf: $f0 $e0
    ldh [$f0], a                                  ; $7fe1: $e0 $f0
    ret nc                                        ; $7fe3: $d0

    ldh a, [rDIV]                                 ; $7fe4: $f0 $04
    db $10                                        ; $7fe6: $10
    rst $28                                       ; $7fe7: $ef
    ld [$00ec], sp                                ; $7fe8: $08 $ec $00
    inc b                                         ; $7feb: $04
    jr nc, @-$2e                                  ; $7fec: $30 $d0

    ldh [$d0], a                                  ; $7fee: $e0 $d0
    ldh [rDIV], a                                 ; $7ff0: $e0 $04
    ret nz                                        ; $7ff2: $c0

    ldh [$e0], a                                  ; $7ff3: $e0 $e0
    ret nz                                        ; $7ff5: $c0

    add b                                         ; $7ff6: $80
    inc b                                         ; $7ff7: $04
    nop                                           ; $7ff8: $00
    and b                                         ; $7ff9: $a0
    ret nz                                        ; $7ffa: $c0

    nop                                           ; $7ffb: $00
    ret nz                                        ; $7ffc: $c0

    ret nz                                        ; $7ffd: $c0

    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
