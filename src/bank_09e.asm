; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $09e", ROMX[$4000], BANK[$9e]

    sbc [hl]                                      ; $4000: $9e
    jr nc, jr_09e_4018                            ; $4001: $30 $15

    sbc e                                         ; $4003: $9b
    db $10                                        ; $4004: $10
    ld b, d                                       ; $4005: $42
    rst $38                                       ; $4006: $ff
    ld bc, $8360                                  ; $4007: $01 $60 $83
    rst $38                                       ; $400a: $ff
    pop bc                                        ; $400b: $c1
    cp a                                          ; $400c: $bf
    inc b                                         ; $400d: $04
    ld c, b                                       ; $400e: $48
    rst $18                                       ; $400f: $df
    nop                                           ; $4010: $00
    nop                                           ; $4011: $00
    ld a, l                                       ; $4012: $7d
    nop                                           ; $4013: $00
    rst $10                                       ; $4014: $d7
    nop                                           ; $4015: $00
    cp l                                          ; $4016: $bd
    nop                                           ; $4017: $00

jr_09e_4018:
    ld e, d                                       ; $4018: $5a
    nop                                           ; $4019: $00
    nop                                           ; $401a: $00
    or h                                          ; $401b: $b4
    nop                                           ; $401c: $00
    ld c, b                                       ; $401d: $48
    nop                                           ; $401e: $00
    sub d                                         ; $401f: $92
    nop                                           ; $4020: $00
    cp $00                                        ; $4021: $fe $00
    nop                                           ; $4023: $00
    or a                                          ; $4024: $b7
    nop                                           ; $4025: $00
    db $eb                                        ; $4026: $eb
    nop                                           ; $4027: $00
    pop de                                        ; $4028: $d1
    nop                                           ; $4029: $00
    add d                                         ; $402a: $82
    add b                                         ; $402b: $80
    ld c, $00                                     ; $402c: $0e $00
    ld bc, $0800                                  ; $402e: $01 $00 $08
    nop                                           ; $4031: $00
    nop                                           ; $4032: $00

Call_09e_4033:
    ld hl, sp+$08                                 ; $4033: $f8 $08
    nop                                           ; $4035: $00
    ld b, $02                                     ; $4036: $06 $02
    ld bc, $0181                                  ; $4038: $01 $81 $01
    db $d3                                        ; $403b: $d3
    ld bc, $006f                                  ; $403c: $01 $6f $00
    add c                                         ; $403f: $81
    sbc [hl]                                      ; $4040: $9e
    db $e3                                        ; $4041: $e3
    call nz, $0efc                                ; $4042: $c4 $fc $0e
    nop                                           ; $4045: $00
    ld b, b                                       ; $4046: $40
    nop                                           ; $4047: $00
    ccf                                           ; $4048: $3f
    and b                                         ; $4049: $a0
    ld b, b                                       ; $404a: $40
    ld b, b                                       ; $404b: $40
    add b                                         ; $404c: $80
    push de                                       ; $404d: $d5
    nop                                           ; $404e: $00
    ld l, e                                       ; $404f: $6b
    nop                                           ; $4050: $00
    add c                                         ; $4051: $81
    cp [hl]                                       ; $4052: $be
    jp nz, Jump_09e_7ca4                          ; $4053: $c2 $a4 $7c

    ld hl, sp+$78                                 ; $4056: $f8 $78
    ld [hl], h                                    ; $4058: $74
    nop                                           ; $4059: $00
    ld [$0802], sp                                ; $405a: $08 $02 $08
    dec c                                         ; $405d: $0d
    ld [$0c0b], sp                                ; $405e: $08 $0b $0c
    ld c, $00                                     ; $4061: $0e $00
    rlca                                          ; $4063: $07
    rlca                                          ; $4064: $07
    inc bc                                        ; $4065: $03
    ld d, d                                       ; $4066: $52
    nop                                           ; $4067: $00
    dec l                                         ; $4068: $2d
    jr jr_09e_4085                                ; $4069: $18 $1a

    nop                                           ; $406b: $00
    inc c                                         ; $406c: $0c
    sbc [hl]                                      ; $406d: $9e
    rrca                                          ; $406e: $0f
    ld a, a                                       ; $406f: $7f
    inc de                                        ; $4070: $13
    or h                                          ; $4071: $b4
    ld h, b                                       ; $4072: $60
    ld h, c                                       ; $4073: $61
    nop                                           ; $4074: $00
    ret nz                                        ; $4075: $c0

    ret z                                         ; $4076: $c8

    add b                                         ; $4077: $80
    sub d                                         ; $4078: $92
    nop                                           ; $4079: $00
    nop                                           ; $407a: $00
    nop                                           ; $407b: $00
    adc d                                         ; $407c: $8a
    nop                                           ; $407d: $00
    nop                                           ; $407e: $00
    ld d, l                                       ; $407f: $55
    nop                                           ; $4080: $00
    ei                                            ; $4081: $fb
    nop                                           ; $4082: $00
    rla                                           ; $4083: $17
    and b                                         ; $4084: $a0

jr_09e_4085:
    rst $38                                       ; $4085: $ff
    nop                                           ; $4086: $00
    nop                                           ; $4087: $00
    ld d, [hl]                                    ; $4088: $56
    xor c                                         ; $4089: $a9
    sbc l                                         ; $408a: $9d
    ld h, d                                       ; $408b: $62
    dec l                                         ; $408c: $2d
    nop                                           ; $408d: $00
    ld e, [hl]                                    ; $408e: $5e
    nop                                           ; $408f: $00
    nop                                           ; $4090: $00
    dec l                                         ; $4091: $2d
    nop                                           ; $4092: $00
    rst $18                                       ; $4093: $df
    nop                                           ; $4094: $00
    cp [hl]                                       ; $4095: $be
    ld bc, $00f7                                  ; $4096: $01 $f7 $00
    nop                                           ; $4099: $00
    push de                                       ; $409a: $d5
    ld a, [hl+]                                   ; $409b: $2a
    ld a, d                                       ; $409c: $7a
    add l                                         ; $409d: $85
    ei                                            ; $409e: $fb
    nop                                           ; $409f: $00
    push de                                       ; $40a0: $d5
    nop                                           ; $40a1: $00
    nop                                           ; $40a2: $00
    cp a                                          ; $40a3: $bf
    nop                                           ; $40a4: $00
    ld l, e                                       ; $40a5: $6b
    nop                                           ; $40a6: $00
    sub [hl]                                      ; $40a7: $96
    nop                                           ; $40a8: $00
    add hl, hl                                    ; $40a9: $29
    jr nc, jr_09e_40ac                            ; $40aa: $30 $00

jr_09e_40ac:
    db $10                                        ; $40ac: $10
    add d                                         ; $40ad: $82
    nop                                           ; $40ae: $00
    sub b                                         ; $40af: $90
    jr z, @+$5d                                   ; $40b0: $28 $5b

    nop                                           ; $40b2: $00
    or [hl]                                       ; $40b3: $b6
    ld bc, $4b00                                  ; $40b4: $01 $00 $4b
    nop                                           ; $40b7: $00
    sub d                                         ; $40b8: $92
    ld bc, $ff8a                                  ; $40b9: $01 $8a $ff
    cp a                                          ; $40bc: $bf
    ret nz                                        ; $40bd: $c0

    inc b                                         ; $40be: $04
    and d                                         ; $40bf: $a2
    ret nz                                        ; $40c0: $c0

    cp a                                          ; $40c1: $bf
    ret nz                                        ; $40c2: $c0

    db $ec                                        ; $40c3: $ec
    ld [$ba00], sp                                ; $40c4: $08 $00 $ba
    call nz, $bd00                                ; $40c7: $c4 $00 $bd
    jp nz, Jump_000_14eb                          ; $40ca: $c2 $eb $14

    or a                                          ; $40cd: $b7
    ld c, b                                       ; $40ce: $48
    ld a, [$0000]                                 ; $40cf: $fa $00 $00
    db $fd                                        ; $40d2: $fd
    ld [bc], a                                    ; $40d3: $02
    xor d                                         ; $40d4: $aa
    rst $38                                       ; $40d5: $ff
    rst $38                                       ; $40d6: $ff
    nop                                           ; $40d7: $00
    sbc l                                         ; $40d8: $9d
    nop                                           ; $40d9: $00
    nop                                           ; $40da: $00
    xor a                                         ; $40db: $af
    ld d, b                                       ; $40dc: $50
    ld [bc], a                                    ; $40dd: $02
    nop                                           ; $40de: $00
    add b                                         ; $40df: $80
    nop                                           ; $40e0: $00
    ld b, h                                       ; $40e1: $44
    add b                                         ; $40e2: $80
    nop                                           ; $40e3: $00
    dec hl                                        ; $40e4: $2b
    ld b, h                                       ; $40e5: $44
    ld [hl], h                                    ; $40e6: $74
    ld c, b                                       ; $40e7: $48
    sbc b                                         ; $40e8: $98
    ldh [$08], a                                  ; $40e9: $e0 $08
    db $10                                        ; $40eb: $10
    ld bc, $0808                                  ; $40ec: $01 $08 $08
    daa                                           ; $40ef: $27
    nop                                           ; $40f0: $00
    ld [bc], a                                    ; $40f1: $02
    ld bc, $0407                                  ; $40f2: $01 $07 $04
    jr nz, jr_09e_40fc                            ; $40f5: $20 $05

    ld b, $01                                     ; $40f7: $06 $01
    nop                                           ; $40f9: $00
    inc bc                                        ; $40fa: $03
    sub a                                         ; $40fb: $97

jr_09e_40fc:
    ld b, b                                       ; $40fc: $40
    nop                                           ; $40fd: $00
    xor d                                         ; $40fe: $aa
    ld b, b                                       ; $40ff: $40
    nop                                           ; $4100: $00
    nop                                           ; $4101: $00
    sub l                                         ; $4102: $95
    rst $38                                       ; $4103: $ff
    cp [hl]                                       ; $4104: $be
    pop bc                                        ; $4105: $c1
    cp a                                          ; $4106: $bf
    ret nz                                        ; $4107: $c0

    ret nz                                        ; $4108: $c0

    add b                                         ; $4109: $80
    ld b, b                                       ; $410a: $40
    ld d, l                                       ; $410b: $55
    jr c, jr_09e_410e                             ; $410c: $38 $00

jr_09e_410e:
    jp c, $f500                                   ; $410e: $da $00 $f5

    nop                                           ; $4111: $00
    ld d, d                                       ; $4112: $52
    db $fd                                        ; $4113: $fd
    db $10                                        ; $4114: $10
    cp a                                          ; $4115: $bf
    ld b, b                                       ; $4116: $40
    rst $38                                       ; $4117: $ff
    sbc [hl]                                      ; $4118: $9e
    nop                                           ; $4119: $00
    ld d, b                                       ; $411a: $50
    ld [$18ac], sp                                ; $411b: $08 $ac $18
    nop                                           ; $411e: $00
    jp c, $f434                                   ; $411f: $da $34 $f4

    db $e3                                        ; $4122: $e3
    ld d, $00                                     ; $4123: $16 $00
    nop                                           ; $4125: $00
    ld [bc], a                                    ; $4126: $02
    nop                                           ; $4127: $00
    ld c, d                                       ; $4128: $4a
    ld bc, $00a3                                  ; $4129: $01 $a3 $00
    ld b, $01                                     ; $412c: $06 $01
    ld [$0103], sp                                ; $412e: $08 $03 $01
    ld b, $01                                     ; $4131: $06 $01
    ld c, b                                       ; $4133: $48
    add e                                         ; $4134: $83
    and [hl]                                      ; $4135: $a6
    ld b, c                                       ; $4136: $41
    ld c, b                                       ; $4137: $48
    ld [$4008], sp                                ; $4138: $08 $08 $40
    inc bc                                        ; $413b: $03
    ld b, b                                       ; $413c: $40
    add hl, de                                    ; $413d: $19
    db $eb                                        ; $413e: $eb
    cp $fe                                        ; $413f: $fe $fe
    db $fc                                        ; $4141: $fc
    db $ec                                        ; $4142: $ec
    ld hl, sp+$08                                 ; $4143: $f8 $08
    ret nc                                        ; $4145: $d0

    ld hl, sp-$1d                                 ; $4146: $f8 $e3
    ei                                            ; $4148: $fb
    ld d, b                                       ; $4149: $50
    add hl, de                                    ; $414a: $19
    ld [$3f3f], a                                 ; $414b: $ea $3f $3f
    nop                                           ; $414e: $00
    rra                                           ; $414f: $1f
    dec de                                        ; $4150: $1b
    ld c, $04                                     ; $4151: $0e $04
    ld c, $60                                     ; $4153: $0e $60
    ld l, [hl]                                    ; $4155: $6e
    ld l, h                                       ; $4156: $6c
    nop                                           ; $4157: $00
    nop                                           ; $4158: $00
    reti                                          ; $4159: $d9


    nop                                           ; $415a: $00
    rst $38                                       ; $415b: $ff
    nop                                           ; $415c: $00
    ld d, a                                       ; $415d: $57
    jr nz, @-$41                                  ; $415e: $20 $bd

    nop                                           ; $4160: $00
    ld [bc], a                                    ; $4161: $02
    rst $28                                       ; $4162: $ef
    db $10                                        ; $4163: $10
    ld a, d                                       ; $4164: $7a
    add l                                         ; $4165: $85
    db $ed                                        ; $4166: $ed
    ld [de], a                                    ; $4167: $12
    dec b                                         ; $4168: $05
    nop                                           ; $4169: $00
    inc bc                                        ; $416a: $03
    adc h                                         ; $416b: $8c
    inc bc                                        ; $416c: $03
    ld d, c                                       ; $416d: $51
    rlca                                          ; $416e: $07
    ld hl, sp+$07                                 ; $416f: $f8 $07
    dec d                                         ; $4171: $15
    nop                                           ; $4172: $00
    and e                                         ; $4173: $a3
    ld hl, sp+$07                                 ; $4174: $f8 $07
    ld d, l                                       ; $4176: $55
    xor e                                         ; $4177: $ab
    sbc b                                         ; $4178: $98
    ld h, a                                       ; $4179: $67
    call c, $fb00                                 ; $417a: $dc $00 $fb
    call z, $d6f8                                 ; $417d: $cc $f8 $d6
    db $fc                                        ; $4180: $fc
    jp nz, $c2fe                                  ; $4181: $c2 $fe $c2

    ld b, b                                       ; $4184: $40
    cp $8a                                        ; $4185: $fe $8a
    add hl, de                                    ; $4187: $19
    rra                                           ; $4188: $1f
    ld l, [hl]                                    ; $4189: $6e
    sbc e                                         ; $418a: $9b
    ld c, $35                                     ; $418b: $0e $35
    rra                                           ; $418d: $1f
    ld [$3f20], sp                                ; $418e: $08 $20 $3f
    jr nz, @-$3f                                  ; $4191: $20 $bf

    sbc d                                         ; $4193: $9a
    add hl, de                                    ; $4194: $19
    ld d, e                                       ; $4195: $53
    xor h                                         ; $4196: $ac
    rst $38                                       ; $4197: $ff
    nop                                           ; $4198: $00
    nop                                           ; $4199: $00
    db $dd                                        ; $419a: $dd
    nop                                           ; $419b: $00
    ld a, e                                       ; $419c: $7b
    add h                                         ; $419d: $84
    sub $29                                       ; $419e: $d6 $29
    db $fd                                        ; $41a0: $fd
    ld [hl+], a                                   ; $41a1: $22
    ld [bc], a                                    ; $41a2: $02
    ld e, d                                       ; $41a3: $5a
    ld c, d                                       ; $41a4: $4a
    nop                                           ; $41a5: $00
    ld b, [hl]                                    ; $41a6: $46
    cp c                                          ; $41a7: $b9
    rst $38                                       ; $41a8: $ff
    sub b                                         ; $41a9: $90
    ld bc, $02ef                                  ; $41aa: $01 $ef $02
    nop                                           ; $41ad: $00
    adc d                                         ; $41ae: $8a
    ld a, a                                       ; $41af: $7f
    rst $30                                       ; $41b0: $f7
    ld [$5ae6], sp                                ; $41b1: $08 $e6 $5a
    nop                                           ; $41b4: $00
    call nz, Call_000_3b20                        ; $41b5: $c4 $20 $3b
    rst $38                                       ; $41b8: $ff
    inc c                                         ; $41b9: $0c
    ld bc, $00ff                                  ; $41ba: $01 $ff $00
    or b                                          ; $41bd: $b0
    rst $08                                       ; $41be: $cf
    rst $38                                       ; $41bf: $ff
    nop                                           ; $41c0: $00
    nop                                           ; $41c1: $00
    xor e                                         ; $41c2: $ab
    nop                                           ; $41c3: $00
    db $eb                                        ; $41c4: $eb
    inc d                                         ; $41c5: $14
    ldh a, [rIF]                                  ; $41c6: $f0 $0f
    ei                                            ; $41c8: $fb
    inc h                                         ; $41c9: $24
    inc b                                         ; $41ca: $04
    ld d, a                                       ; $41cb: $57
    ld [hl], d                                    ; $41cc: $72
    nop                                           ; $41cd: $00
    sub l                                         ; $41ce: $95
    ld l, d                                       ; $41cf: $6a
    ld d, b                                       ; $41d0: $50
    ld bc, $fd00                                  ; $41d1: $01 $00 $fd
    ld d, b                                       ; $41d4: $50
    nop                                           ; $41d5: $00
    ld b, d                                       ; $41d6: $42
    add hl, bc                                    ; $41d7: $09
    sub $82                                       ; $41d8: $d6 $82
    nop                                           ; $41da: $00
    or l                                          ; $41db: $b5
    ld c, d                                       ; $41dc: $4a
    sbc $21                                       ; $41dd: $de $21
    add d                                         ; $41df: $82
    ret nc                                        ; $41e0: $d0

    ld [$f3ac], sp                                ; $41e1: $08 $ac $f3
    ld a, a                                       ; $41e4: $7f
    nop                                           ; $41e5: $00
    xor l                                         ; $41e6: $ad
    sub d                                         ; $41e7: $92
    nop                                           ; $41e8: $00
    and d                                         ; $41e9: $a2
    ld hl, $ff5f                                  ; $41ea: $21 $5f $ff
    sbc b                                         ; $41ed: $98
    nop                                           ; $41ee: $00
    nop                                           ; $41ef: $00
    nop                                           ; $41f0: $00
    ld d, l                                       ; $41f1: $55
    cp $60                                        ; $41f2: $fe $60
    ld [$ff04], sp                                ; $41f4: $08 $04 $ff
    nop                                           ; $41f7: $00
    xor d                                         ; $41f8: $aa
    db $fd                                        ; $41f9: $fd
    ld e, a                                       ; $41fa: $5f
    add d                                         ; $41fb: $82
    ld bc, $0000                                  ; $41fc: $01 $00 $00
    inc b                                         ; $41ff: $04
    ld h, d                                       ; $4200: $62
    sbc l                                         ; $4201: $9d
    rst $38                                       ; $4202: $ff
    nop                                           ; $4203: $00
    halt                                          ; $4204: $76
    or d                                          ; $4205: $b2
    nop                                           ; $4206: $00
    adc h                                         ; $4207: $8c
    ld [hl], e                                    ; $4208: $73
    ret nz                                        ; $4209: $c0

    jr nz, @+$1a                                  ; $420a: $20 $18

    jr nz, jr_09e_4228                            ; $420c: $20 $1a

    ld a, [$8f8f]                                 ; $420e: $fa $8f $8f
    rlca                                          ; $4211: $07
    ld b, $03                                     ; $4212: $06 $03
    ld [$0301], sp                                ; $4214: $08 $01 $03
    ret c                                         ; $4217: $d8

    db $db                                        ; $4218: $db
    jr nc, jr_09e_4235                            ; $4219: $30 $1a

    xor a                                         ; $421b: $af
    ld hl, sp-$08                                 ; $421c: $f8 $f8
    ld bc, $b0f0                                  ; $421e: $01 $f0 $b0
    ldh [rLCDC], a                                ; $4221: $e0 $40
    ldh [$8d], a                                  ; $4223: $e0 $8d

jr_09e_4225:
    db $ed                                        ; $4225: $ed
    ld b, b                                       ; $4226: $40
    ld a, [de]                                    ; $4227: $1a

jr_09e_4228:
    add c                                         ; $4228: $81
    ld l, [hl]                                    ; $4229: $6e
    ld bc, $6a7f                                  ; $422a: $01 $7f $6a
    ccf                                           ; $422d: $3f
    dec d                                         ; $422e: $15
    ccf                                           ; $422f: $3f
    adc d                                         ; $4230: $8a
    or [hl]                                       ; $4231: $b6
    jr nz, jr_09e_4234                            ; $4232: $20 $00

jr_09e_4234:
    xor b                                         ; $4234: $a8

jr_09e_4235:
    ld sp, hl                                     ; $4235: $f9
    ld sp, hl                                     ; $4236: $f9
    ld sp, hl                                     ; $4237: $f9
    ld hl, sp-$71                                 ; $4238: $f8 $8f
    ld [hl], c                                    ; $423a: $71
    adc a                                         ; $423b: $8f
    nop                                           ; $423c: $00
    adc b                                         ; $423d: $88
    ld sp, hl                                     ; $423e: $f9
    rlca                                          ; $423f: $07
    db $db                                        ; $4240: $db
    ld h, $03                                     ; $4241: $26 $03
    adc l                                         ; $4243: $8d
    rlca                                          ; $4244: $07
    ld [$8f88], sp                                ; $4245: $08 $88 $8f
    adc b                                         ; $4248: $88
    xor a                                         ; $4249: $af
    ld l, d                                       ; $424a: $6a
    ld a, [de]                                    ; $424b: $1a
    ld l, l                                       ; $424c: $6d
    db $ed                                        ; $424d: $ed
    ld [hl+], a                                   ; $424e: $22
    ld bc, $77ed                                  ; $424f: $01 $ed $77
    ldh [rNR23], a                                ; $4252: $e0 $18
    ldh a, [$08]                                  ; $4254: $f0 $08
    ld a, [$1a7a]                                 ; $4256: $fa $7a $1a
    nop                                           ; $4259: $00
    or l                                          ; $425a: $b5
    cp a                                          ; $425b: $bf
    jr nz, @-$3f                                  ; $425c: $20 $bf

    ld [hl], l                                    ; $425e: $75
    ccf                                           ; $425f: $3f
    ret nz                                        ; $4260: $c0

    ld a, a                                       ; $4261: $7f
    ld b, b                                       ; $4262: $40
    add b                                         ; $4263: $80
    adc c                                         ; $4264: $89
    ld [hl+], a                                   ; $4265: $22
    ld bc, $70f9                                  ; $4266: $01 $f9 $70
    adc c                                         ; $4269: $89
    ld [hl], c                                    ; $426a: $71
    adc c                                         ; $426b: $89
    ld h, b                                       ; $426c: $60
    ld [hl], b                                    ; $426d: $70
    ld [bc], a                                    ; $426e: $02
    nop                                           ; $426f: $00
    jr nc, jr_09e_4292                            ; $4270: $30 $20

    sbc a                                         ; $4272: $9f
    ld a, [$3d05]                                 ; $4273: $fa $05 $3d
    nop                                           ; $4276: $00
    inc d                                         ; $4277: $14
    rst $10                                       ; $4278: $d7
    jr z, jr_09e_4225                             ; $4279: $28 $aa

    or b                                          ; $427b: $b0
    nop                                           ; $427c: $00
    xor e                                         ; $427d: $ab
    jr jr_09e_4282                                ; $427e: $18 $02

    add hl, hl                                    ; $4280: $29
    rst $38                                       ; $4281: $ff

jr_09e_4282:
    nop                                           ; $4282: $00
    db $fd                                        ; $4283: $fd
    inc bc                                        ; $4284: $03

jr_09e_4285:
    ld h, l                                       ; $4285: $65

jr_09e_4286:
    inc bc                                        ; $4286: $03
    db $fd                                        ; $4287: $fd
    inc bc                                        ; $4288: $03
    and c                                         ; $4289: $a1
    rst $38                                       ; $428a: $ff
    ld d, $ed                                     ; $428b: $16 $ed
    inc bc                                        ; $428d: $03
    ld d, l                                       ; $428e: $55
    ld [$df00], sp                                ; $428f: $08 $00 $df

jr_09e_4292:
    db $e4                                        ; $4292: $e4
    nop                                           ; $4293: $00
    and b                                         ; $4294: $a0
    ld a, [bc]                                    ; $4295: $0a
    jp c, $a0a0                                   ; $4296: $da $a0 $a0

    ld [bc], a                                    ; $4299: $02
    ret z                                         ; $429a: $c8

    and b                                         ; $429b: $a0
    ld [hl-], a                                   ; $429c: $32
    db $d3                                        ; $429d: $d3
    ld bc, $0382                                  ; $429e: $01 $82 $03
    ld c, d                                       ; $42a1: $4a
    nop                                           ; $42a2: $00
    rlca                                          ; $42a3: $07
    inc b                                         ; $42a4: $04

Call_09e_42a5:
    rlca                                          ; $42a5: $07
    dec c                                         ; $42a6: $0d
    ld b, $d2                                     ; $42a7: $06 $d2
    dec l                                         ; $42a9: $2d
    rst $30                                       ; $42aa: $f7
    ld hl, $aa00                                  ; $42ab: $21 $00 $aa
    add d                                         ; $42ae: $82
    ld bc, $73ad                                  ; $42af: $01 $ad $73
    rst $10                                       ; $42b2: $d7
    jr z, jr_09e_4285                             ; $42b3: $28 $d0

    add hl, bc                                    ; $42b5: $09
    dec b                                         ; $42b6: $05
    pop de                                        ; $42b7: $d1
    ccf                                           ; $42b8: $3f
    ld a, l                                       ; $42b9: $7d
    inc bc                                        ; $42ba: $03
    and c                                         ; $42bb: $a1
    ld b, b                                       ; $42bc: $40
    nop                                           ; $42bd: $00
    ld d, l                                       ; $42be: $55
    ld c, b                                       ; $42bf: $48
    nop                                           ; $42c0: $00
    nop                                           ; $42c1: $00
    db $fd                                        ; $42c2: $fd
    inc bc                                        ; $42c3: $03
    inc bc                                        ; $42c4: $03
    ld bc, $8020                                  ; $42c5: $01 $20 $80
    add h                                         ; $42c8: $84
    nop                                           ; $42c9: $00
    stop                                          ; $42ca: $10 $00
    add b                                         ; $42cc: $80
    add b                                         ; $42cd: $80
    inc b                                         ; $42ce: $04
    jr nz, @-$3e                                  ; $42cf: $20 $c0

    nop                                           ; $42d1: $00
    inc b                                         ; $42d2: $04
    rrca                                          ; $42d3: $0f
    nop                                           ; $42d4: $00
    add hl, de                                    ; $42d5: $19
    rra                                           ; $42d6: $1f
    jr nz, @+$29                                  ; $42d7: $20 $27

    ld sp, $202e                                  ; $42d9: $31 $2e $20
    ld l, $02                                     ; $42dc: $2e $02
    jr nc, jr_09e_430e                            ; $42de: $30 $2e

    jr nz, jr_09e_4321                            ; $42e0: $20 $3f

    jr c, jr_09e_4303                             ; $42e2: $38 $1f

    ldh [$28], a                                  ; $42e4: $e0 $28
    pop af                                        ; $42e6: $f1
    ld bc, $a0f1                                  ; $42e7: $01 $f1 $a0
    pop af                                        ; $42ea: $f1
    rst $38                                       ; $42eb: $ff
    ld de, $f10e                                  ; $42ec: $11 $0e $f1
    jr nc, @+$1d                                  ; $42ef: $30 $1b

    nop                                           ; $42f1: $00
    dec bc                                        ; $42f2: $0b
    rrca                                          ; $42f3: $0f
    rrca                                          ; $42f4: $0f
    rrca                                          ; $42f5: $0f
    ei                                            ; $42f6: $fb
    rrca                                          ; $42f7: $0f
    rst $30                                       ; $42f8: $f7
    rrca                                          ; $42f9: $0f
    jr nz, jr_09e_4307                            ; $42fa: $20 $0b

    rrca                                          ; $42fc: $0f
    inc [hl]                                      ; $42fd: $34
    ld [$8000], sp                                ; $42fe: $08 $00 $80
    ld b, b                                       ; $4301: $40
    add b                                         ; $4302: $80

jr_09e_4303:
    nop                                           ; $4303: $00
    jr nz, jr_09e_4286                            ; $4304: $20 $80

    ld c, b                                       ; $4306: $48

jr_09e_4307:
    inc b                                         ; $4307: $04
    nop                                           ; $4308: $00
    ld d, d                                       ; $4309: $52
    add b                                         ; $430a: $80
    ld [$1c1f], sp                                ; $430b: $08 $1f $1c

jr_09e_430e:
    nop                                           ; $430e: $00
    rrca                                          ; $430f: $0f
    ld a, [bc]                                    ; $4310: $0a
    rrca                                          ; $4311: $0f
    dec b                                         ; $4312: $05
    rrca                                          ; $4313: $0f
    ld c, [hl]                                    ; $4314: $4e
    rlca                                          ; $4315: $07
    dec h                                         ; $4316: $25
    nop                                           ; $4317: $00
    rlca                                          ; $4318: $07
    ld c, e                                       ; $4319: $4b
    rlca                                          ; $431a: $07
    sub e                                         ; $431b: $93
    inc bc                                        ; $431c: $03
    ld de, $e0f1                                  ; $431d: $11 $f1 $e0
    inc c                                         ; $4320: $0c

jr_09e_4321:
    ld de, $11f1                                  ; $4321: $11 $f1 $11
    ldh [rSC], a                                  ; $4324: $e0 $02
    nop                                           ; $4326: $00
    ld l, d                                       ; $4327: $6a
    dec bc                                        ; $4328: $0b
    rst $08                                       ; $4329: $cf
    rst $08                                       ; $432a: $cf
    add hl, bc                                    ; $432b: $09
    rlca                                          ; $432c: $07
    rrca                                          ; $432d: $0f
    inc bc                                        ; $432e: $03
    rrca                                          ; $432f: $0f
    inc b                                         ; $4330: $04
    ld [$0f03], sp                                ; $4331: $08 $03 $0f
    ld a, d                                       ; $4334: $7a
    dec bc                                        ; $4335: $0b
    nop                                           ; $4336: $00
    add a                                         ; $4337: $87
    add a                                         ; $4338: $87
    ld b, b                                       ; $4339: $40
    add b                                         ; $433a: $80
    ld c, d                                       ; $433b: $4a
    add b                                         ; $433c: $80
    ld d, l                                       ; $433d: $55
    add b                                         ; $433e: $80
    nop                                           ; $433f: $00
    dec sp                                        ; $4340: $3b
    ret nz                                        ; $4341: $c0

    ld d, a                                       ; $4342: $57
    and b                                         ; $4343: $a0
    ccf                                           ; $4344: $3f
    ret nz                                        ; $4345: $c0

    sub $a9                                       ; $4346: $d6 $a9
    ld [bc], a                                    ; $4348: $02
    dec e                                         ; $4349: $1d
    ld [c], a                                     ; $434a: $e2
    dec l                                         ; $434b: $2d
    inc bc                                        ; $434c: $03
    ld e, [hl]                                    ; $434d: $5e
    ld bc, $4b00                                  ; $434e: $01 $00 $4b
    ld a, [hl+]                                   ; $4351: $2a
    nop                                           ; $4352: $00
    push de                                       ; $4353: $d5
    db $10                                        ; $4354: $10
    rst $28                                       ; $4355: $ef
    or b                                          ; $4356: $b0
    ld c, a                                       ; $4357: $4f
    inc b                                         ; $4358: $04
    rst $38                                       ; $4359: $ff
    xor b                                         ; $435a: $a8
    db $10                                        ; $435b: $10
    rst $38                                       ; $435c: $ff
    ld d, l                                       ; $435d: $55
    rst $38                                       ; $435e: $ff
    inc de                                        ; $435f: $13
    ld a, [bc]                                    ; $4360: $0a
    push de                                       ; $4361: $d5
    ld a, [hl+]                                   ; $4362: $2a
    and d                                         ; $4363: $a2
    ld e, l                                       ; $4364: $5d
    nop                                           ; $4365: $00
    ld d, h                                       ; $4366: $54
    xor e                                         ; $4367: $ab
    ld [$02ff], sp                                ; $4368: $08 $ff $02
    rst $38                                       ; $436b: $ff
    xor e                                         ; $436c: $ab
    rst $38                                       ; $436d: $ff
    ld b, b                                       ; $436e: $40
    ld e, a                                       ; $436f: $5f
    cp l                                          ; $4370: $bd
    inc bc                                        ; $4371: $03
    adc [hl]                                      ; $4372: $8e
    pop af                                        ; $4373: $f1
    ld sp, hl                                     ; $4374: $f9
    ld l, [hl]                                    ; $4375: $6e
    cp b                                          ; $4376: $b8
    sbc a                                         ; $4377: $9f
    nop                                           ; $4378: $00
    ld a, [$ff07]                                 ; $4379: $fa $07 $ff
    ld bc, $803d                                  ; $437c: $01 $3d $80
    ld e, l                                       ; $437f: $5d
    ld [bc], a                                    ; $4380: $02
    nop                                           ; $4381: $00
    ld a, c                                       ; $4382: $79
    ld b, $bf                                     ; $4383: $06 $bf
    ld h, l                                       ; $4385: $65
    bit 7, h                                      ; $4386: $cb $7c
    ld d, d                                       ; $4388: $52
    xor l                                         ; $4389: $ad
    nop                                           ; $438a: $00
    or a                                          ; $438b: $b7
    ld a, a                                       ; $438c: $7f
    add sp, -$09                                  ; $438d: $e8 $f7
    push af                                       ; $438f: $f5
    ld l, [hl]                                    ; $4390: $6e
    pop af                                        ; $4391: $f1
    rra                                           ; $4392: $1f
    nop                                           ; $4393: $00
    rst $28                                       ; $4394: $ef
    ld b, $9d                                     ; $4395: $06 $9d
    ld [c], a                                     ; $4397: $e2
    ld l, c                                       ; $4398: $69
    halt                                          ; $4399: $76
    dec de                                        ; $439a: $1b
    inc a                                         ; $439b: $3c
    nop                                           ; $439c: $00
    xor [hl]                                      ; $439d: $ae
    ld b, a                                       ; $439e: $47
    ld e, c                                       ; $439f: $59
    rlca                                          ; $43a0: $07
    or [hl]                                       ; $43a1: $b6
    nop                                           ; $43a2: $00
    ld l, c                                       ; $43a3: $69
    add h                                         ; $43a4: $84
    nop                                           ; $43a5: $00
    reti                                          ; $43a6: $d9


    inc bc                                        ; $43a7: $03
    sub h                                         ; $43a8: $94
    ld h, e                                       ; $43a9: $63
    xor $01                                       ; $43aa: $ee $01
    di                                            ; $43ac: $f3
    inc c                                         ; $43ad: $0c
    nop                                           ; $43ae: $00
    db $fd                                        ; $43af: $fd
    ld [bc], a                                    ; $43b0: $02
    or d                                          ; $43b1: $b2
    pop bc                                        ; $43b2: $c1
    push hl                                       ; $43b3: $e5
    ld [hl], d                                    ; $43b4: $72
    jp c, $00bc                                   ; $43b5: $da $bc $00

    ld b, $ff                                     ; $43b8: $06 $ff
    dec d                                         ; $43ba: $15
    db $eb                                        ; $43bb: $eb
    ld a, [hl+]                                   ; $43bc: $2a
    push af                                       ; $43bd: $f5
    ld d, b                                       ; $43be: $50
    cp a                                          ; $43bf: $bf
    nop                                           ; $43c0: $00
    xor d                                         ; $43c1: $aa
    ld d, a                                       ; $43c2: $57
    ld de, $a8eb                                  ; $43c3: $11 $eb $a8
    ld d, a                                       ; $43c6: $57
    inc d                                         ; $43c7: $14
    db $eb                                        ; $43c8: $eb
    nop                                           ; $43c9: $00
    adc d                                         ; $43ca: $8a
    ld d, l                                       ; $43cb: $55
    call c, Call_000_15ff                         ; $43cc: $dc $ff $15
    rst $28                                       ; $43cf: $ef
    nop                                           ; $43d0: $00
    rst $38                                       ; $43d1: $ff
    nop                                           ; $43d2: $00
    adc e                                         ; $43d3: $8b
    ld a, [hl]                                    ; $43d4: $7e
    call z, $76f3                                 ; $43d5: $cc $f3 $76
    rst $28                                       ; $43d8: $ef
    xor d                                         ; $43d9: $aa
    ld e, a                                       ; $43da: $5f
    nop                                           ; $43db: $00
    xor $17                                       ; $43dc: $ee $17
    jp nc, $a42d                                  ; $43de: $d2 $2d $a4

    ld e, e                                       ; $43e1: $5b
    add hl, bc                                    ; $43e2: $09
    cp $10                                        ; $43e3: $fe $10
    ld h, b                                       ; $43e5: $60
    cp a                                          ; $43e6: $bf
    ld a, [bc]                                    ; $43e7: $0a
    add b                                         ; $43e8: $80
    jr nz, jr_09e_4414                            ; $43e9: $20 $29

    rst $10                                       ; $43eb: $d7
    ld de, $16ef                                  ; $43ec: $11 $ef $16
    or e                                          ; $43ef: $b3
    ld c, a                                       ; $43f0: $4f
    dec b                                         ; $43f1: $05
    ld a, [hl]                                    ; $43f2: $7e
    nop                                           ; $43f3: $00
    ld d, a                                       ; $43f4: $57
    sub b                                         ; $43f5: $90
    db $10                                        ; $43f6: $10
    ld a, [$d83a]                                 ; $43f7: $fa $3a $d8
    add b                                         ; $43fa: $80
    jp z, $fa12                                   ; $43fb: $ca $12 $fa

    rra                                           ; $43fe: $1f
    rra                                           ; $43ff: $1f
    rrca                                          ; $4400: $0f
    ld c, $07                                     ; $4401: $0e $07
    ld bc, $0700                                  ; $4403: $01 $00 $07
    ld [hl-], a                                   ; $4406: $32
    ld [hl], a                                    ; $4407: $77
    ld b, l                                       ; $4408: $45
    or a                                          ; $4409: $b7
    call z, Call_000_1d07                         ; $440a: $cc $07 $1d
    nop                                           ; $440d: $00
    rrca                                          ; $440e: $0f
    sbc a                                         ; $440f: $9f
    ret nz                                        ; $4410: $c0

    db $ec                                        ; $4411: $ec
    ldh a, [$a9]                                  ; $4412: $f0 $a9

jr_09e_4414:
    sbc $7e                                       ; $4414: $de $7e
    nop                                           ; $4416: $00
    and a                                         ; $4417: $a7
    ld a, [hl]                                    ; $4418: $7e
    pop bc                                        ; $4419: $c1
    xor b                                         ; $441a: $a8
    sub a                                         ; $441b: $97
    rst $10                                       ; $441c: $d7
    ld [$005a], sp                                ; $441d: $08 $5a $00
    and c                                         ; $4420: $a1
    di                                            ; $4421: $f3
    add hl, bc                                    ; $4422: $09
    sbc a                                         ; $4423: $9f
    nop                                           ; $4424: $00
    ld d, a                                       ; $4425: $57
    nop                                           ; $4426: $00
    ld [hl], l                                    ; $4427: $75
    nop                                           ; $4428: $00
    adc e                                         ; $4429: $8b
    sbc d                                         ; $442a: $9a
    db $e3                                        ; $442b: $e3
    xor $74                                       ; $442c: $ee $74
    cp c                                          ; $442e: $b9
    inc e                                         ; $442f: $1c
    ld e, h                                       ; $4430: $5c
    ld d, b                                       ; $4431: $50
    and a                                         ; $4432: $a7
    ld a, [$ea2a]                                 ; $4433: $fa $2a $ea
    inc b                                         ; $4436: $04
    db $10                                        ; $4437: $10
    pop bc                                        ; $4438: $c1
    pop hl                                        ; $4439: $e1
    ret nc                                        ; $443a: $d0

    rra                                           ; $443b: $1f
    jr nz, jr_09e_444e                            ; $443c: $20 $10

    rst $18                                       ; $443e: $df
    ld b, d                                       ; $443f: $42
    inc de                                        ; $4440: $13
    rra                                           ; $4441: $1f
    rst $38                                       ; $4442: $ff
    ld de, $f1ee                                  ; $4443: $11 $ee $f1
    nop                                           ; $4446: $00
    pop af                                        ; $4447: $f1
    rst $38                                       ; $4448: $ff
    xor e                                         ; $4449: $ab
    ret nc                                        ; $444a: $d0

    ld c, l                                       ; $444b: $4d
    ld [hl], d                                    ; $444c: $72
    ld d, b                                       ; $444d: $50

jr_09e_444e:
    sbc [hl]                                      ; $444e: $9e
    nop                                           ; $444f: $00
    ld a, [hl]                                    ; $4450: $7e
    add a                                         ; $4451: $87
    db $db                                        ; $4452: $db
    dec h                                         ; $4453: $25
    rst $28                                       ; $4454: $ef
    db $10                                        ; $4455: $10
    sub a                                         ; $4456: $97
    ld h, b                                       ; $4457: $60
    nop                                           ; $4458: $00
    rst $10                                       ; $4459: $d7
    add hl, bc                                    ; $445a: $09
    ld sp, hl                                     ; $445b: $f9
    dec b                                         ; $445c: $05
    xor $10                                       ; $445d: $ee $10
    db $fd                                        ; $445f: $fd
    ld [bc], a                                    ; $4460: $02
    nop                                           ; $4461: $00
    or a                                          ; $4462: $b7
    ld b, b                                       ; $4463: $40
    sbc e                                         ; $4464: $9b
    db $e4                                        ; $4465: $e4
    ld l, a                                       ; $4466: $6f
    ldh a, [$fb]                                  ; $4467: $f0 $fb
    sbc l                                         ; $4469: $9d
    nop                                           ; $446a: $00
    sbc $07                                       ; $446b: $de $07
    cp $e1                                        ; $446d: $fe $e1
    rst $18                                       ; $446f: $df
    pop hl                                        ; $4470: $e1
    ret nz                                        ; $4471: $c0

    pop hl                                        ; $4472: $e1
    ld c, d                                       ; $4473: $4a
    pop bc                                        ; $4474: $c1
    inc b                                         ; $4475: $04
    nop                                           ; $4476: $00
    ret nz                                        ; $4477: $c0

    pop hl                                        ; $4478: $e1
    call z, $e00c                                 ; $4479: $cc $0c $e0
    jr c, jr_09e_4486                             ; $447c: $38 $08

    ld de, $04e0                                  ; $447e: $11 $e0 $04
    ld [$0006], sp                                ; $4481: $08 $06 $00
    xor d                                         ; $4484: $aa
    ld a, [bc]                                    ; $4485: $0a

jr_09e_4486:
    jp nz, $fd66                                  ; $4486: $c2 $66 $fd

    ld e, l                                       ; $4489: $5d
    ld a, [$1500]                                 ; $448a: $fa $00 $15
    cp $79                                        ; $448d: $fe $79
    rst $38                                       ; $448f: $ff
    ld a, c                                       ; $4490: $79
    rst $00                                       ; $4491: $c7
    ld [hl], h                                    ; $4492: $74
    db $db                                        ; $4493: $db
    nop                                           ; $4494: $00
    and d                                         ; $4495: $a2
    ld e, a                                       ; $4496: $5f
    ld e, e                                       ; $4497: $5b

jr_09e_4498:
    dec h                                         ; $4498: $25
    or a                                          ; $4499: $b7
    ld c, b                                       ; $449a: $48
    rst $38                                       ; $449b: $ff
    nop                                           ; $449c: $00
    nop                                           ; $449d: $00
    db $ec                                        ; $449e: $ec
    inc de                                        ; $449f: $13
    cp l                                          ; $44a0: $bd
    ret nz                                        ; $44a1: $c0

    ld c, a                                       ; $44a2: $4f
    ldh a, [$9b]                                  ; $44a3: $f0 $9b
    ld a, l                                       ; $44a5: $7d
    nop                                           ; $44a6: $00
    ld a, [hl]                                    ; $44a7: $7e
    rst $20                                       ; $44a8: $e7
    call nz, Call_000_28bf                        ; $44a9: $c4 $bf $28
    ld [hl], a                                    ; $44ac: $77
    ld a, h                                       ; $44ad: $7c
    dec de                                        ; $44ae: $1b
    nop                                           ; $44af: $00
    xor $3f                                       ; $44b0: $ee $3f
    pop hl                                        ; $44b2: $e1
    ld a, a                                       ; $44b3: $7f
    di                                            ; $44b4: $f3
    rst $38                                       ; $44b5: $ff
    ld a, [de]                                    ; $44b6: $1a
    push hl                                       ; $44b7: $e5
    nop                                           ; $44b8: $00
    ld b, h                                       ; $44b9: $44
    ei                                            ; $44ba: $fb
    dec sp                                        ; $44bb: $3b
    db $ed                                        ; $44bc: $ed
    ld d, c                                       ; $44bd: $51
    cp $f3                                        ; $44be: $fe $f3
    ld l, [hl]                                    ; $44c0: $6e
    nop                                           ; $44c1: $00
    ld c, e                                       ; $44c2: $4b
    or a                                          ; $44c3: $b7
    cp a                                          ; $44c4: $bf
    sub $bf                                       ; $44c5: $d6 $bf
    db $e4                                        ; $44c7: $e4
    rra                                           ; $44c8: $1f
    ld hl, sp+$00                                 ; $44c9: $f8 $00
    ld l, a                                       ; $44cb: $6f
    sbc $af                                       ; $44cc: $de $af
    ld hl, sp-$10                                 ; $44ce: $f8 $f0
    ld hl, sp-$50                                 ; $44d0: $f8 $b0
    db $e4                                        ; $44d2: $e4
    nop                                           ; $44d3: $00
    ld b, d                                       ; $44d4: $42
    ldh [$8d], a                                  ; $44d5: $e0 $8d
    rst $28                                       ; $44d7: $ef
    ld [hl], d                                    ; $44d8: $72
    db $ed                                        ; $44d9: $ed
    ld [hl-], a                                   ; $44da: $32
    ldh [rNR41], a                                ; $44db: $e0 $20
    ld e, b                                       ; $44dd: $58
    ldh a, [$ea]                                  ; $44de: $f0 $ea
    ld a, [hl-]                                   ; $44e0: $3a
    ld [hl], l                                    ; $44e1: $75
    cp a                                          ; $44e2: $bf
    ld h, b                                       ; $44e3: $60
    ccf                                           ; $44e4: $3f
    push de                                       ; $44e5: $d5
    ld h, b                                       ; $44e6: $60
    ld a, a                                       ; $44e7: $7f
    ld l, b                                       ; $44e8: $68
    inc b                                         ; $44e9: $04
    cp $02                                        ; $44ea: $fe $02
    ld d, b                                       ; $44ec: $50
    ld hl, sp-$51                                 ; $44ed: $f8 $af
    ld hl, sp+$57                                 ; $44ef: $f8 $57
    nop                                           ; $44f1: $00
    ld hl, sp+$00                                 ; $44f2: $f8 $00
    ld hl, sp+$50                                 ; $44f4: $f8 $50
    ld hl, sp-$46                                 ; $44f6: $f8 $ba
    rst $00                                       ; $44f8: $c7
    rst $38                                       ; $44f9: $ff
    nop                                           ; $44fa: $00
    call nz, $fcbb                                ; $44fb: $c4 $bb $fc
    ld a, h                                       ; $44fe: $7c
    ld a, a                                       ; $44ff: $7f
    cp b                                          ; $4500: $b8
    ld b, a                                       ; $4501: $47
    rst $38                                       ; $4502: $ff

Call_09e_4503:
    ld bc, $3b44                                  ; $4503: $01 $44 $3b
    ld b, h                                       ; $4506: $44
    ld a, a                                       ; $4507: $7f
    ld b, h                                       ; $4508: $44
    ld a, [bc]                                    ; $4509: $0a
    ld hl, sp-$16                                 ; $450a: $f8 $ea
    ld a, [de]                                    ; $450c: $1a
    nop                                           ; $450d: $00
    ld a, [hl+]                                   ; $450e: $2a
    ld a, $ff                                     ; $450f: $3e $ff
    ccf                                           ; $4511: $3f
    rst $38                                       ; $4512: $ff
    inc hl                                        ; $4513: $23
    inc e                                         ; $4514: $1c
    ld [hl+], a                                   ; $4515: $22
    jr z, jr_09e_4498                             ; $4516: $28 $80

    rst $38                                       ; $4518: $ff
    ld [$0a1a], a                                 ; $4519: $ea $1a $0a
    ld e, d                                       ; $451c: $5a
    ld [bc], a                                    ; $451d: $02
    rst $28                                       ; $451e: $ef
    ldh a, [$1f]                                  ; $451f: $f0 $1f
    jr nc, @+$12                                  ; $4521: $30 $10

    nop                                           ; $4523: $00
    ld [hl], $00                                  ; $4524: $36 $00
    add h                                         ; $4526: $84
    dec c                                         ; $4527: $0d
    adc d                                         ; $4528: $8a
    sbc a                                         ; $4529: $9f
    sbc a                                         ; $452a: $9f
    sbc a                                         ; $452b: $9f
    ld b, $8a                                     ; $452c: $06 $8a
    rst $38                                       ; $452e: $ff
    rra                                           ; $452f: $1f
    pop af                                        ; $4530: $f1
    dec sp                                        ; $4531: $3b
    ld [hl], $00                                  ; $4532: $36 $00
    sub h                                         ; $4534: $94
    dec c                                         ; $4535: $0d
    and b                                         ; $4536: $a0
    nop                                           ; $4537: $00
    ldh a, [rNR10]                                ; $4538: $f0 $10
    db $10                                        ; $453a: $10
    rrca                                          ; $453b: $0f
    db $10                                        ; $453c: $10
    rst $38                                       ; $453d: $ff
    db $10                                        ; $453e: $10
    ld a, $06                                     ; $453f: $3e $06
    ld a, $1c                                     ; $4541: $3e $1c
    ld a, $1c                                     ; $4543: $3e $1c
    ld [hl+], a                                   ; $4545: $22
    ld [bc], a                                    ; $4546: $02
    jr @-$52                                      ; $4547: $18 $ac

    dec c                                         ; $4549: $0d
    nop                                           ; $454a: $00
    inc bc                                        ; $454b: $03
    rra                                           ; $454c: $1f
    db $10                                        ; $454d: $10
    rra                                           ; $454e: $1f
    rrca                                          ; $454f: $0f
    db $10                                        ; $4550: $10
    rra                                           ; $4551: $1f
    inc e                                         ; $4552: $1c
    nop                                           ; $4553: $00
    ld e, $00                                     ; $4554: $1e $00
    add b                                         ; $4556: $80
    cp l                                          ; $4557: $bd
    dec b                                         ; $4558: $05
    add b                                         ; $4559: $80
    sbc a                                         ; $455a: $9f
    ld de, $0e9f                                  ; $455b: $11 $9f $0e
    sub c                                         ; $455e: $91
    rra                                           ; $455f: $1f
    jr nc, @-$6d                                  ; $4560: $30 $91

    ld c, $02                                     ; $4562: $0e $02
    nop                                           ; $4564: $00
    nop                                           ; $4565: $00
    ld de, $1010                                  ; $4566: $11 $10 $10
    stop                                          ; $4569: $10 $00
    and b                                         ; $456b: $a0
    inc b                                         ; $456c: $04
    stop                                          ; $456d: $10 $00
    jr nz, jr_09e_4581                            ; $456f: $20 $10

    or a                                          ; $4571: $b7
    jp $f56e                                      ; $4572: $c3 $6e $f5


    ld hl, sp+$00                                 ; $4575: $f8 $00
    sbc a                                         ; $4577: $9f
    cp $07                                        ; $4578: $fe $07
    cp e                                          ; $457a: $bb
    ld b, c                                       ; $457b: $41
    db $fc                                        ; $457c: $fc
    ld [bc], a                                    ; $457d: $02
    or [hl]                                       ; $457e: $b6
    nop                                           ; $457f: $00
    ld c, c                                       ; $4580: $49

jr_09e_4581:
    rst $18                                       ; $4581: $df
    nop                                           ; $4582: $00
    adc d                                         ; $4583: $8a
    rst $08                                       ; $4584: $cf
    rst $38                                       ; $4585: $ff
    ld c, a                                       ; $4586: $4f
    cp a                                          ; $4587: $bf
    nop                                           ; $4588: $00
    ld c, b                                       ; $4589: $48
    ld b, a                                       ; $458a: $47
    ret z                                         ; $458b: $c8

    rrca                                          ; $458c: $0f
    rst $08                                       ; $458d: $cf
    rst $00                                       ; $458e: $c7
    ld c, a                                       ; $458f: $4f
    add a                                         ; $4590: $87
    nop                                           ; $4591: $00
    ld c, b                                       ; $4592: $48
    rst $00                                       ; $4593: $c7
    ld c, b                                       ; $4594: $48
    add e                                         ; $4595: $83
    add a                                         ; $4596: $87
    rst $38                                       ; $4597: $ff
    rst $38                                       ; $4598: $ff
    ei                                            ; $4599: $fb
    nop                                           ; $459a: $00
    rst $38                                       ; $459b: $ff
    rlca                                          ; $459c: $07
    add a                                         ; $459d: $87
    add e                                         ; $459e: $83
    add a                                         ; $459f: $87
    rlca                                          ; $45a0: $07
    add a                                         ; $45a1: $87
    inc bc                                        ; $45a2: $03
    xor b                                         ; $45a3: $a8
    inc b                                         ; $45a4: $04
    nop                                           ; $45a5: $00
    xor d                                         ; $45a6: $aa
    ld [hl], b                                    ; $45a7: $70
    ld a, [bc]                                    ; $45a8: $0a
    rst $08                                       ; $45a9: $cf
    ld [hl], b                                    ; $45aa: $70

jr_09e_45ab:
    ld a, [hl-]                                   ; $45ab: $3a
    add a                                         ; $45ac: $87
    ld c, b                                       ; $45ad: $48
    add a                                         ; $45ae: $87
    ld b, b                                       ; $45af: $40
    ld c, b                                       ; $45b0: $48
    ld a, [c]                                     ; $45b1: $f2
    inc de                                        ; $45b2: $13
    db $fc                                        ; $45b3: $fc
    db $fc                                        ; $45b4: $fc
    ld hl, sp-$48                                 ; $45b5: $f8 $b8
    ldh a, [$4e]                                  ; $45b7: $f0 $4e
    jr c, jr_09e_45ab                             ; $45b9: $38 $f0

    inc bc                                        ; $45bb: $03
    ld h, $00                                     ; $45bc: $26 $00
    ld a, [c]                                     ; $45be: $f2
    inc d                                         ; $45bf: $14
    ld [c], a                                     ; $45c0: $e2
    inc c                                         ; $45c1: $0c
    rrca                                          ; $45c2: $0f
    ld [hl], a                                    ; $45c3: $77
    rrca                                          ; $45c4: $0f
    nop                                           ; $45c5: $00
    xor [hl]                                      ; $45c6: $ae
    or $58                                        ; $45c7: $f6 $58
    rst $30                                       ; $45c9: $f7
    dec e                                         ; $45ca: $1d
    ldh a, [$5c]                                  ; $45cb: $f0 $5c
    ld hl, sp+$08                                 ; $45cd: $f8 $08
    dec b                                         ; $45cf: $05
    db $fc                                        ; $45d0: $fc
    inc b                                         ; $45d1: $04
    db $fd                                        ; $45d2: $fd
    ld c, h                                       ; $45d3: $4c
    ld c, $73                                     ; $45d4: $0e $73
    rst $28                                       ; $45d6: $ef
    sbc a                                         ; $45d7: $9f
    nop                                           ; $45d8: $00
    ld l, a                                       ; $45d9: $6f
    cp e                                          ; $45da: $bb
    rrca                                          ; $45db: $0f
    scf                                           ; $45dc: $37
    rra                                           ; $45dd: $1f
    and e                                         ; $45de: $a3
    ccf                                           ; $45df: $3f
    inc hl                                        ; $45e0: $23
    add b                                         ; $45e1: $80
    jp nz, $5514                                  ; $45e2: $c2 $14 $55

    xor d                                         ; $45e5: $aa
    and d                                         ; $45e6: $a2
    db $fd                                        ; $45e7: $fd
    dec d                                         ; $45e8: $15
    ld a, [$88a2]                                 ; $45e9: $fa $a2 $88
    ld l, b                                       ; $45ec: $68
    ld [bc], a                                    ; $45ed: $02
    add b                                         ; $45ee: $80
    rst $38                                       ; $45ef: $ff
    ld b, b                                       ; $45f0: $40
    or [hl]                                       ; $45f1: $b6
    ld [bc], a                                    ; $45f2: $02
    dec d                                         ; $45f3: $15
    db $eb                                        ; $45f4: $eb
    ld [hl+], a                                   ; $45f5: $22
    nop                                           ; $45f6: $00
    ld d, l                                       ; $45f7: $55
    ld b, c                                       ; $45f8: $41
    xor d                                         ; $45f9: $aa
    add b                                         ; $45fa: $80
    ld d, l                                       ; $45fb: $55
    ld de, $22ea                                  ; $45fc: $11 $ea $22
    nop                                           ; $45ff: $00

Call_09e_4600:
    push af                                       ; $4600: $f5
    ld de, $02fe                                  ; $4601: $11 $fe $02
    rst $38                                       ; $4604: $ff
    inc e                                         ; $4605: $1c
    inc e                                         ; $4606: $1c
    inc de                                        ; $4607: $13
    nop                                           ; $4608: $00
    rra                                           ; $4609: $1f
    cpl                                           ; $460a: $2f
    jr nc, @+$27                                  ; $460b: $30 $25

    ld a, [hl-]                                   ; $460d: $3a
    jr nz, @+$41                                  ; $460e: $20 $3f

    ld d, b                                       ; $4610: $50
    nop                                           ; $4611: $00
    ld a, a                                       ; $4612: $7f
    ld l, d                                       ; $4613: $6a
    ld a, a                                       ; $4614: $7f
    ccf                                           ; $4615: $3f
    ccf                                           ; $4616: $3f
    nop                                           ; $4617: $00
    nop                                           ; $4618: $00
    ret nz                                        ; $4619: $c0

    nop                                           ; $461a: $00
    ret nz                                        ; $461b: $c0

    inc a                                         ; $461c: $3c
    db $fc                                        ; $461d: $fc
    ld [c], a                                     ; $461e: $e2
    ld e, $bf                                     ; $461f: $1e $bf
    ld b, e                                       ; $4621: $43
    ld [de], a                                    ; $4622: $12
    ld a, $ef                                     ; $4623: $3e $ef
    inc b                                         ; $4625: $04
    db $f4                                        ; $4626: $f4
    ld [bc], a                                    ; $4627: $02
    ld hl, $0306                                  ; $4628: $21 $06 $03
    ld d, b                                       ; $462b: $50
    ld [hl+], a                                   ; $462c: $22
    inc b                                         ; $462d: $04
    ld bc, $0300                                  ; $462e: $01 $00 $03
    jr nz, jr_09e_4636                            ; $4631: $20 $03

    dec b                                         ; $4633: $05
    sbc $03                                       ; $4634: $de $03

jr_09e_4636:
    inc bc                                        ; $4636: $03
    ld [bc], a                                    ; $4637: $02
    dec b                                         ; $4638: $05
    rlca                                          ; $4639: $07
    dec bc                                        ; $463a: $0b
    nop                                           ; $463b: $00
    rrca                                          ; $463c: $0f
    dec c                                         ; $463d: $0d
    dec c                                         ; $463e: $0d
    dec d                                         ; $463f: $15
    dec e                                         ; $4640: $1d
    add hl, de                                    ; $4641: $19
    add hl, de                                    ; $4642: $19
    jr z, jr_09e_4645                             ; $4643: $28 $00

jr_09e_4645:
    jr c, @+$72                                   ; $4645: $38 $70

    ld [hl], b                                    ; $4647: $70
    ld h, b                                       ; $4648: $60
    ld h, b                                       ; $4649: $60
    ldh [$e0], a                                  ; $464a: $e0 $e0
    inc b                                         ; $464c: $04
    ld [$28ff], sp                                ; $464d: $08 $ff $28
    ld a, a                                       ; $4650: $7f
    ld d, c                                       ; $4651: $51
    ret nc                                        ; $4652: $d0

    ld [bc], a                                    ; $4653: $02
    ld d, c                                       ; $4654: $51
    xor a                                         ; $4655: $af
    ld [$f700], sp                                ; $4656: $08 $00 $f7
    ld b, c                                       ; $4659: $41
    cp [hl]                                       ; $465a: $be
    nop                                           ; $465b: $00
    rst $30                                       ; $465c: $f7
    ld d, l                                       ; $465d: $55
    db $eb                                        ; $465e: $eb
    xor d                                         ; $465f: $aa
    nop                                           ; $4660: $00
    push de                                       ; $4661: $d5
    ld d, l                                       ; $4662: $55
    xor d                                         ; $4663: $aa
    xor d                                         ; $4664: $aa
    ld d, l                                       ; $4665: $55
    dec d                                         ; $4666: $15
    ld [$0002], a                                 ; $4667: $ea $02 $00
    db $fd                                        ; $466a: $fd
    nop                                           ; $466b: $00
    cp [hl]                                       ; $466c: $be
    ld [bc], a                                    ; $466d: $02
    rst $30                                       ; $466e: $f7
    ld [c], a                                     ; $466f: $e2
    rst $38                                       ; $4670: $ff
    ld a, l                                       ; $4671: $7d
    nop                                           ; $4672: $00
    ld a, [hl]                                    ; $4673: $7e
    db $fd                                        ; $4674: $fd
    ld e, $b6                                     ; $4675: $1e $b6
    rlca                                          ; $4677: $07
    ld c, [hl]                                    ; $4678: $4e
    add c                                         ; $4679: $81
    ld a, a                                       ; $467a: $7f
    nop                                           ; $467b: $00
    add b                                         ; $467c: $80
    push de                                       ; $467d: $d5
    jr nz, @+$01                                  ; $467e: $20 $ff

    nop                                           ; $4680: $00
    call $39f7                                    ; $4681: $cd $f7 $39
    nop                                           ; $4684: $00
    sbc $c1                                       ; $4685: $de $c1
    ccf                                           ; $4687: $3f
    ld de, $58ff                                  ; $4688: $11 $ff $58
    rst $28                                       ; $468b: $ef
    ld e, [hl]                                    ; $468c: $5e
    inc b                                         ; $468d: $04
    ld sp, hl                                     ; $468e: $f9
    jr c, jr_09e_46f0                             ; $468f: $38 $5f

    cp a                                          ; $4691: $bf
    ld b, a                                       ; $4692: $47
    ld [hl], b                                    ; $4693: $70
    jr z, @-$1e                                   ; $4694: $28 $e0

    ldh [rTMA], a                                 ; $4696: $e0 $06
    rst $38                                       ; $4698: $ff
    rra                                           ; $4699: $1f
    dec a                                         ; $469a: $3d
    jp $8041                                      ; $469b: $c3 $41 $80


    ld d, b                                       ; $469e: $50
    sbc d                                         ; $469f: $9a
    ld [$0010], sp                                ; $46a0: $08 $10 $00
    xor $82                                       ; $46a3: $ee $82
    ld [hl], l                                    ; $46a5: $75
    nop                                           ; $46a6: $00
    rst $38                                       ; $46a7: $ff
    ld a, [hl+]                                   ; $46a8: $2a
    rst $10                                       ; $46a9: $d7
    ld d, c                                       ; $46aa: $51
    nop                                           ; $46ab: $00
    xor a                                         ; $46ac: $af
    ld a, [bc]                                    ; $46ad: $0a
    rst $30                                       ; $46ae: $f7
    inc d                                         ; $46af: $14
    xor $2a                                       ; $46b0: $ee $2a
    db $dd                                        ; $46b2: $dd
    ld a, a                                       ; $46b3: $7f
    nop                                           ; $46b4: $00
    ld bc, $801f                                  ; $46b5: $01 $1f $80
    push af                                       ; $46b8: $f5
    ld [bc], a                                    ; $46b9: $02
    ld a, a                                       ; $46ba: $7f
    add b                                         ; $46bb: $80
    or l                                          ; $46bc: $b5
    nop                                           ; $46bd: $00
    ret nz                                        ; $46be: $c0

    xor $71                                       ; $46bf: $ee $71
    ld a, [$fc1c]                                 ; $46c1: $fa $1c $fc
    rlca                                          ; $46c4: $07
    db $eb                                        ; $46c5: $eb
    nop                                           ; $46c6: $00
    rst $38                                       ; $46c7: $ff
    ld e, [hl]                                    ; $46c8: $5e
    sbc $40                                       ; $46c9: $de $40
    ret nz                                        ; $46cb: $c0

    ld h, b                                       ; $46cc: $60
    ldh [$50], a                                  ; $46cd: $e0 $50
    nop                                           ; $46cf: $00
    ldh a, [$b0]                                  ; $46d0: $f0 $b0
    ret nc                                        ; $46d2: $d0

    ldh [rNR41], a                                ; $46d3: $e0 $20
    ret nc                                        ; $46d5: $d0

    ldh a, [$fc]                                  ; $46d6: $f0 $fc
    ld de, $3ce4                                  ; $46d8: $11 $e4 $3c
    inc a                                         ; $46db: $3c
    call nz, Call_000_1448                        ; $46dc: $c4 $48 $14
    ld a, [$f80a]                                 ; $46df: $fa $0a $f8
    ld [$f700], sp                                ; $46e2: $08 $00 $f7
    ld de, $08eb                                  ; $46e5: $11 $eb $08
    push af                                       ; $46e8: $f5
    ld b, l                                       ; $46e9: $45
    cp d                                          ; $46ea: $ba
    ld a, [hl+]                                   ; $46eb: $2a
    db $10                                        ; $46ec: $10
    push de                                       ; $46ed: $d5
    ld d, l                                       ; $46ee: $55
    xor e                                         ; $46ef: $ab

jr_09e_46f0:
    inc b                                         ; $46f0: $04
    nop                                           ; $46f1: $00
    xor d                                         ; $46f2: $aa
    adc d                                         ; $46f3: $8a
    ld [hl], l                                    ; $46f4: $75
    stop                                          ; $46f5: $10 $00
    xor $20                                       ; $46f7: $ee $20
    ld a, l                                       ; $46f9: $7d
    ld de, $0abe                                  ; $46fa: $11 $be $0a
    ld d, a                                       ; $46fd: $57
    ld l, b                                       ; $46fe: $68
    nop                                           ; $46ff: $00
    ld hl, sp+$58                                 ; $4700: $f8 $58
    ret c                                         ; $4702: $d8

    ld d, h                                       ; $4703: $54
    call c, $cccc                                 ; $4704: $dc $cc $cc
    ld [$ee01], a                                 ; $4707: $ea $01 $ee
    and a                                         ; $470a: $a7
    rst $20                                       ; $470b: $e7
    and e                                         ; $470c: $a3
    db $e3                                        ; $470d: $e3
    and e                                         ; $470e: $a3
    db $e3                                        ; $470f: $e3
    nop                                           ; $4710: $00
    ld e, c                                       ; $4711: $59
    nop                                           ; $4712: $00
    add b                                         ; $4713: $80
    add b                                         ; $4714: $80
    inc d                                         ; $4715: $14
    ld [$75aa], a                                 ; $4716: $ea $aa $75
    ld b, b                                       ; $4719: $40
    cp [hl]                                       ; $471a: $be
    nop                                           ; $471b: $00
    add d                                         ; $471c: $82
    ld [hl], a                                    ; $471d: $77
    dec b                                         ; $471e: $05
    ei                                            ; $471f: $fb
    ld [bc], a                                    ; $4720: $02
    push af                                       ; $4721: $f5
    ld d, c                                       ; $4722: $51
    xor [hl]                                      ; $4723: $ae
    nop                                           ; $4724: $00
    ld a, [hl+]                                   ; $4725: $2a
    push de                                       ; $4726: $d5
    db $fd                                        ; $4727: $fd
    ld bc, $0863                                  ; $4728: $01 $63 $08
    rst $30                                       ; $472b: $f7
    nop                                           ; $472c: $00
    nop                                           ; $472d: $00
    call c, $a900                                 ; $472e: $dc $00 $a9
    ret nz                                        ; $4731: $c0

    push hl                                       ; $4732: $e5
    ld [hl], b                                    ; $4733: $70
    or d                                          ; $4734: $b2
    ld e, h                                       ; $4735: $5c
    nop                                           ; $4736: $00
    ld h, [hl]                                    ; $4737: $66
    sbc a                                         ; $4738: $9f
    rst $30                                       ; $4739: $f7
    add b                                         ; $473a: $80
    rst $30                                       ; $473b: $f7
    add sp, $3f                                   ; $473c: $e8 $3f
    ret c                                         ; $473e: $d8

    nop                                           ; $473f: $00
    and a                                         ; $4740: $a7
    cp $9d                                        ; $4741: $fe $9d
    ld l, e                                       ; $4743: $6b
    pop bc                                        ; $4744: $c1
    rst $38                                       ; $4745: $ff
    ld [hl], b                                    ; $4746: $70
    rst $18                                       ; $4747: $df
    nop                                           ; $4748: $00
    di                                            ; $4749: $f3
    xor a                                         ; $474a: $af
    cp l                                          ; $474b: $bd
    ld c, c                                       ; $474c: $49
    halt                                          ; $474d: $76
    db $10                                        ; $474e: $10
    db $eb                                        ; $474f: $eb
    jr nz, jr_09e_4752                            ; $4750: $20 $00

jr_09e_4752:
    push de                                       ; $4752: $d5
    ld b, b                                       ; $4753: $40
    cp e                                          ; $4754: $bb
    ret nz                                        ; $4755: $c0

    ld h, [hl]                                    ; $4756: $66
    ldh a, [$3b]                                  ; $4757: $f0 $3b
    call c, Call_09e_4600                         ; $4759: $dc $00 $46
    cp a                                          ; $475c: $bf
    add h                                         ; $475d: $84
    rst $38                                       ; $475e: $ff
    ld l, b                                       ; $475f: $68
    ld a, a                                       ; $4760: $7f
    db $d3                                        ; $4761: $d3
    rra                                           ; $4762: $1f
    nop                                           ; $4763: $00
    xor d                                         ; $4764: $aa
    rlca                                          ; $4765: $07
    db $db                                        ; $4766: $db
    ld bc, $00ad                                  ; $4767: $01 $ad $00
    ld h, c                                       ; $476a: $61
    inc e                                         ; $476b: $1c
    nop                                           ; $476c: $00
    or e                                          ; $476d: $b3
    inc b                                         ; $476e: $04
    rst $10                                       ; $476f: $d7
    pop bc                                        ; $4770: $c1
    cp $81                                        ; $4771: $fe $81
    rst $10                                       ; $4773: $d7
    jr nz, jr_09e_4776                            ; $4774: $20 $00

jr_09e_4776:
    cp a                                          ; $4776: $bf
    ld b, b                                       ; $4777: $40
    or l                                          ; $4778: $b5
    ret z                                         ; $4779: $c8

    xor $71                                       ; $477a: $ee $71
    and b                                         ; $477c: $a0
    inc e                                         ; $477d: $1c
    nop                                           ; $477e: $00
    halt                                          ; $477f: $76
    rlca                                          ; $4780: $07
    ret nz                                        ; $4781: $c0

    rst $38                                       ; $4782: $ff
    ld h, e                                       ; $4783: $63
    db $fd                                        ; $4784: $fd
    ld [hl], l                                    ; $4785: $75
    rra                                           ; $4786: $1f
    nop                                           ; $4787: $00
    ld a, a                                       ; $4788: $7f
    add [hl]                                      ; $4789: $86
    ld a, l                                       ; $478a: $7d
    add c                                         ; $478b: $81
    or [hl]                                       ; $478c: $b6
    ld c, c                                       ; $478d: $49
    ld e, $81                                     ; $478e: $1e $81
    nop                                           ; $4790: $00
    xor [hl]                                      ; $4791: $ae
    ld d, c                                       ; $4792: $51
    ld c, a                                       ; $4793: $4f
    or l                                          ; $4794: $b5
    jp z, $f73f                                   ; $4795: $ca $3f $f7

    sbc h                                         ; $4798: $9c
    nop                                           ; $4799: $00
    sbc [hl]                                      ; $479a: $9e
    ld a, b                                       ; $479b: $78
    push de                                       ; $479c: $d5
    ldh a, [rBCPS]                                ; $479d: $f0 $68
    ld [hl], d                                    ; $479f: $72
    cp c                                          ; $47a0: $b9
    ld e, h                                       ; $47a1: $5c
    nop                                           ; $47a2: $00
    halt                                          ; $47a3: $76
    adc a                                         ; $47a4: $8f
    add c                                         ; $47a5: $81
    rst $38                                       ; $47a6: $ff
    inc a                                         ; $47a7: $3c
    jp $81e3                                      ; $47a8: $c3 $e3 $81


    ld bc, $8172                                  ; $47ab: $01 $72 $81
    di                                            ; $47ae: $f3
    add c                                         ; $47af: $81
    ld a, d                                       ; $47b0: $7a
    add c                                         ; $47b1: $81
    rst $30                                       ; $47b2: $f7
    inc b                                         ; $47b3: $04
    nop                                           ; $47b4: $00
    nop                                           ; $47b5: $00
    sbc e                                         ; $47b6: $9b
    ld hl, $d026                                  ; $47b7: $21 $26 $d0
    rra                                           ; $47ba: $1f
    ld b, b                                       ; $47bb: $40
    ld [$0000], a                                 ; $47bc: $ea $00 $00
    sub l                                         ; $47bf: $95
    ret nz                                        ; $47c0: $c0

    ld l, d                                       ; $47c1: $6a

jr_09e_47c2:
    ld [hl], b                                    ; $47c2: $70
    cp e                                          ; $47c3: $bb
    inc e                                         ; $47c4: $1c
    or $0f                                        ; $47c5: $f6 $0f
    nop                                           ; $47c7: $00
    ldh [$1f], a                                  ; $47c8: $e0 $1f

jr_09e_47ca:
    ld a, [c]                                     ; $47ca: $f2
    jr nz, jr_09e_47c2                            ; $47cb: $20 $f5

    jr nz, jr_09e_47ca                            ; $47cd: $20 $fb

    jr nz, jr_09e_47d1                            ; $47cf: $20 $00

jr_09e_47d1:
    ld a, [hl+]                                   ; $47d1: $2a
    push af                                       ; $47d2: $f5
    ldh [$bf], a                                  ; $47d3: $e0 $bf
    ld h, b                                       ; $47d5: $60
    cp a                                          ; $47d6: $bf
    push de                                       ; $47d7: $d5
    cp a                                          ; $47d8: $bf
    dec b                                         ; $47d9: $05
    nop                                           ; $47da: $00
    rst $38                                       ; $47db: $ff
    xor e                                         ; $47dc: $ab
    nop                                           ; $47dd: $00
    ld a, a                                       ; $47de: $7f
    ld h, b                                       ; $47df: $60
    ld c, $55                                     ; $47e0: $0e $55
    rlca                                          ; $47e2: $07
    rlca                                          ; $47e3: $07
    add sp, -$3c                                  ; $47e4: $e8 $c4
    inc b                                         ; $47e6: $04
    inc [hl]                                      ; $47e7: $34
    ld [$0838], sp                                ; $47e8: $08 $38 $08
    rst $38                                       ; $47eb: $ff
    inc b                                         ; $47ec: $04
    jr nz, jr_09e_485b                            ; $47ed: $20 $6c

    add c                                         ; $47ef: $81
    or [hl]                                       ; $47f0: $b6
    nop                                           ; $47f1: $00
    ld [$204d], sp                                ; $47f2: $08 $4d $20
    sub l                                         ; $47f5: $95
    nop                                           ; $47f6: $00
    cp l                                          ; $47f7: $bd
    jp nz, $00e9                                  ; $47f8: $c2 $e9 $00

    ld [hl], b                                    ; $47fb: $70
    sbc d                                         ; $47fc: $9a
    inc e                                         ; $47fd: $1c
    cp h                                          ; $47fe: $bc
    ld b, a                                       ; $47ff: $47
    ld b, b                                       ; $4800: $40
    cp a                                          ; $4801: $bf
    rst $18                                       ; $4802: $df
    ld [bc], a                                    ; $4803: $02
    add b                                         ; $4804: $80
    ld a, a                                       ; $4805: $7f
    add b                                         ; $4806: $80
    rst $18                                       ; $4807: $df
    add b                                         ; $4808: $80
    ld l, a                                       ; $4809: $6f
    inc b                                         ; $480a: $04
    db $10                                        ; $480b: $10
    rst $10                                       ; $480c: $d7
    ld b, $80                                     ; $480d: $06 $80
    nop                                           ; $480f: $00
    rst $38                                       ; $4810: $ff
    cp $01                                        ; $4811: $fe $01
    ld [bc], a                                    ; $4813: $02
    ld c, b                                       ; $4814: $48
    jr c, jr_09e_483f                             ; $4815: $38 $28

    rst $38                                       ; $4817: $ff
    nop                                           ; $4818: $00
    add c                                         ; $4819: $81
    ld a, [hl]                                    ; $481a: $7e
    add c                                         ; $481b: $81
    xor e                                         ; $481c: $ab
    push de                                       ; $481d: $d5
    sub l                                         ; $481e: $95
    db $eb                                        ; $481f: $eb
    cp l                                          ; $4820: $bd
    nop                                           ; $4821: $00
    ld b, e                                       ; $4822: $43
    cp $01                                        ; $4823: $fe $01
    ld a, [c]                                     ; $4825: $f2
    inc c                                         ; $4826: $0c
    cp l                                          ; $4827: $bd
    ld b, d                                       ; $4828: $42
    xor a                                         ; $4829: $af
    nop                                           ; $482a: $00
    ret nc                                        ; $482b: $d0

    and a                                         ; $482c: $a7
    ld a, b                                       ; $482d: $78
    ei                                            ; $482e: $fb
    inc e                                         ; $482f: $1c
    sbc $27                                       ; $4830: $de $27
    cp d                                          ; $4832: $ba
    nop                                           ; $4833: $00
    call nz, Call_09e_70c6                        ; $4834: $c4 $c6 $70
    ret z                                         ; $4837: $c8

    rra                                           ; $4838: $1f
    xor [hl]                                      ; $4839: $ae
    rlca                                          ; $483a: $07
    ld d, c                                       ; $483b: $51
    nop                                           ; $483c: $00
    dec h                                         ; $483d: $25
    xor a                                         ; $483e: $af

jr_09e_483f:
    ld [bc], a                                    ; $483f: $02
    or $04                                        ; $4840: $f6 $04
    xor a                                         ; $4842: $af
    ld [$20de], sp                                ; $4843: $08 $de $20
    sub b                                         ; $4846: $90
    rst $28                                       ; $4847: $ef
    sbc b                                         ; $4848: $98
    nop                                           ; $4849: $00
    ld [hl], $87                                  ; $484a: $36 $87
    ld sp, hl                                     ; $484c: $f9
    ld bc, $00e9                                  ; $484d: $01 $e9 $00
    inc d                                         ; $4850: $14
    rst $20                                       ; $4851: $e7
    jr jr_09e_48cf                                ; $4852: $18 $7b

    nop                                           ; $4854: $00
    ld e, a                                       ; $4855: $5f
    ld hl, $003b                                  ; $4856: $21 $3b $00
    add h                                         ; $4859: $84
    rst $30                                       ; $485a: $f7

jr_09e_485b:
    nop                                           ; $485b: $00
    sbc e                                         ; $485c: $9b
    jr nz, jr_09e_4899                            ; $485d: $20 $3a

    call nz, Call_000_0061                        ; $485f: $c4 $61 $00
    ld a, b                                       ; $4862: $78

jr_09e_4863:
    cp e                                          ; $4863: $bb
    inc e                                         ; $4864: $1c
    ld e, [hl]                                    ; $4865: $5e
    rlca                                          ; $4866: $07
    xor d                                         ; $4867: $aa
    call nz, $00ee                                ; $4868: $c4 $ee $00
    ld [hl], b                                    ; $486b: $70
    db $db                                        ; $486c: $db
    inc a                                         ; $486d: $3c
    xor $17                                       ; $486e: $ee $17
    ld [hl], a                                    ; $4870: $77
    adc c                                         ; $4871: $89
    ld l, b                                       ; $4872: $68
    nop                                           ; $4873: $00
    inc de                                        ; $4874: $13
    cp $05                                        ; $4875: $fe $05
    ld [$7b0f], a                                 ; $4877: $ea $0f $7b

jr_09e_487a:
    add l                                         ; $487a: $85
    ld a, [hl]                                    ; $487b: $7e
    nop                                           ; $487c: $00

jr_09e_487d:
    ld bc, $926d                                  ; $487d: $01 $6d $92
    cp d                                          ; $4880: $ba
    ld b, l                                       ; $4881: $45
    ld e, $e1                                     ; $4882: $1e $e1
    ld l, a                                       ; $4884: $6f
    nop                                           ; $4885: $00
    ldh a, [rNR30]                                ; $4886: $f0 $1a
    db $fc                                        ; $4888: $fc
    ld [hl], $ff                                  ; $4889: $36 $ff
    sub [hl]                                      ; $488b: $96
    ret nz                                        ; $488c: $c0

    rst $28                                       ; $488d: $ef
    nop                                           ; $488e: $00
    ld [hl], b                                    ; $488f: $70
    ld [$d61c], a                                 ; $4890: $ea $1c $d6

jr_09e_4893:
    daa                                           ; $4893: $27
    xor l                                         ; $4894: $ad
    ld b, c                                       ; $4895: $41
    rst $30                                       ; $4896: $f7
    ld [bc], a                                    ; $4897: $02
    nop                                           ; $4898: $00

jr_09e_4899:
    ld a, e                                       ; $4899: $7b
    inc b                                         ; $489a: $04
    cp e                                          ; $489b: $bb
    nop                                           ; $489c: $00
    add b                                         ; $489d: $80
    jp nc, $ea02                                  ; $489e: $d2 $02 $ea

    ld a, b                                       ; $48a1: $78
    sub l                                         ; $48a2: $95
    inc b                                         ; $48a3: $04
    jr c, jr_09e_487a                             ; $48a4: $38 $d4

    nop                                           ; $48a6: $00
    ld e, [hl]                                    ; $48a7: $5e
    ld [bc], a                                    ; $48a8: $02
    inc b                                         ; $48a9: $04
    jr c, jr_09e_48ac                             ; $48aa: $38 $00

jr_09e_48ac:
    rst $38                                       ; $48ac: $ff
    ld d, a                                       ; $48ad: $57
    add hl, de                                    ; $48ae: $19
    xor c                                         ; $48af: $a9
    xor d                                         ; $48b0: $aa
    ld d, l                                       ; $48b1: $55
    inc b                                         ; $48b2: $04
    jr c, jr_09e_4863                             ; $48b3: $38 $ae

    ld a, [bc]                                    ; $48b5: $0a
    ld [bc], a                                    ; $48b6: $02
    inc bc                                        ; $48b7: $03
    or b                                          ; $48b8: $b0
    ld a, [bc]                                    ; $48b9: $0a
    nop                                           ; $48ba: $00
    ld a, [bc]                                    ; $48bb: $0a
    ld c, $0c                                     ; $48bc: $0e $0c
    inc c                                         ; $48be: $0c
    nop                                           ; $48bf: $00
    nop                                           ; $48c0: $00
    ld b, b                                       ; $48c1: $40
    ret nz                                        ; $48c2: $c0

    ld h, b                                       ; $48c3: $60
    add b                                         ; $48c4: $80
    ld bc, $d600                                  ; $48c5: $01 $00 $d6
    ld a, [hl-]                                   ; $48c8: $3a
    inc b                                         ; $48c9: $04
    ei                                            ; $48ca: $fb
    xor b                                         ; $48cb: $a8
    ld a, a                                       ; $48cc: $7f
    db $10                                        ; $48cd: $10
    adc d                                         ; $48ce: $8a

jr_09e_48cf:
    add b                                         ; $48cf: $80
    dec b                                         ; $48d0: $05
    ld d, l                                       ; $48d1: $55
    xor e                                         ; $48d2: $ab
    jr z, jr_09e_487d                             ; $48d3: $28 $a8

    ld [bc], a                                    ; $48d5: $02
    jr z, jr_09e_4893                             ; $48d6: $28 $bb

    rlca                                          ; $48d8: $07
    adc d                                         ; $48d9: $8a
    nop                                           ; $48da: $00
    ld a, l                                       ; $48db: $7d
    ld d, b                                       ; $48dc: $50
    xor a                                         ; $48dd: $af
    and d                                         ; $48de: $a2
    ld a, a                                       ; $48df: $7f
    ld b, b                                       ; $48e0: $40
    rst $38                                       ; $48e1: $ff
    and b                                         ; $48e2: $a0
    add c                                         ; $48e3: $81
    ret z                                         ; $48e4: $c8

    ld [de], a                                    ; $48e5: $12
    dec d                                         ; $48e6: $15
    ld [$7728], a                                 ; $48e7: $ea $28 $77
    ld de, $d0be                                  ; $48ea: $11 $be $d0
    ld a, [bc]                                    ; $48ed: $0a
    nop                                           ; $48ee: $00
    and d                                         ; $48ef: $a2
    ld d, l                                       ; $48f0: $55
    ld b, c                                       ; $48f1: $41
    xor [hl]                                      ; $48f2: $ae
    adc b                                         ; $48f3: $88
    ld d, a                                       ; $48f4: $57
    ld a, b                                       ; $48f5: $78
    ld a, b                                       ; $48f6: $78
    nop                                           ; $48f7: $00
    add h                                         ; $48f8: $84
    db $fc                                        ; $48f9: $fc
    ld [hl], e                                    ; $48fa: $73
    adc a                                         ; $48fb: $8f
    push bc                                       ; $48fc: $c5
    ld a, $e7                                     ; $48fd: $3e $e7
    inc e                                         ; $48ff: $1c

Jump_09e_4900:
    nop                                           ; $4900: $00
    ld e, [hl]                                    ; $4901: $5e
    xor l                                         ; $4902: $ad
    and l                                         ; $4903: $a5
    ld e, [hl]                                    ; $4904: $5e
    ld c, l                                       ; $4905: $4d
    cp [hl]                                       ; $4906: $be
    nop                                           ; $4907: $00
    nop                                           ; $4908: $00
    nop                                           ; $4909: $00
    ld hl, sp-$08                                 ; $490a: $f8 $f8
    ld [hl], h                                    ; $490c: $74
    adc h                                         ; $490d: $8c

jr_09e_490e:
    cp $02                                        ; $490e: $fe $02
    rst $28                                       ; $4910: $ef
    ld de, $dd00                                  ; $4911: $11 $00 $dd
    inc hl                                        ; $4914: $23
    cp c                                          ; $4915: $b9

jr_09e_4916:
    ld h, a                                       ; $4916: $67
    ld [hl], l                                    ; $4917: $75
    rst $08                                       ; $4918: $cf
    pop hl                                        ; $4919: $e1
    pop hl                                        ; $491a: $e1
    add b                                         ; $491b: $80
    ld [hl-], a                                   ; $491c: $32
    ld e, e                                       ; $491d: $5b
    ld b, b                                       ; $491e: $40
    ret nz                                        ; $491f: $c0

    ret nz                                        ; $4920: $c0

    ret nz                                        ; $4921: $c0

    and b                                         ; $4922: $a0
    ldh [$60], a                                  ; $4923: $e0 $60
    nop                                           ; $4925: $00
    ld h, b                                       ; $4926: $60
    ld d, b                                       ; $4927: $50
    ld [hl], b                                    ; $4928: $70
    jr z, jr_09e_4963                             ; $4929: $28 $38

    jr jr_09e_4945                                ; $492b: $18 $18

    nop                                           ; $492d: $00
    ld b, h                                       ; $492e: $44
    nop                                           ; $492f: $00
    ld d, b                                       ; $4930: $50
    nop                                           ; $4931: $00
    rst $30                                       ; $4932: $f7
    ld de, $f0fe                                  ; $4933: $11 $fe $f0
    dec c                                         ; $4936: $0d
    jr z, jr_09e_490e                             ; $4937: $28 $d5

    nop                                           ; $4939: $00
    inc d                                         ; $493a: $14
    xor d                                         ; $493b: $aa
    ld [bc], a                                    ; $493c: $02
    db $dd                                        ; $493d: $dd
    ld b, a                                       ; $493e: $47
    cp c                                          ; $493f: $b9
    rst $38                                       ; $4940: $ff
    inc bc                                        ; $4941: $03
    nop                                           ; $4942: $00
    sbc h                                         ; $4943: $9c
    ld h, a                                       ; $4944: $67

jr_09e_4945:
    xor $1b                                       ; $4945: $ee $1b
    sbc d                                         ; $4947: $9a
    rst $18                                       ; $4948: $df

jr_09e_4949:
    ldh [$7f], a                                  ; $4949: $e0 $7f
    nop                                           ; $494b: $00
    cp b                                          ; $494c: $b8
    ld e, a                                       ; $494d: $5f
    cp [hl]                                       ; $494e: $be
    ld b, a                                       ; $494f: $47
    db $10                                        ; $4950: $10
    rst $28                                       ; $4951: $ef
    xor b                                         ; $4952: $a8
    rst $30                                       ; $4953: $f7
    nop                                           ; $4954: $00
    ld bc, $2afe                                  ; $4955: $01 $fe $2a
    rst $30                                       ; $4958: $f7
    ld d, h                                       ; $4959: $54
    db $eb                                        ; $495a: $eb
    xor b                                         ; $495b: $a8
    rst $10                                       ; $495c: $d7
    jr nz, jr_09e_49b4                            ; $495d: $20 $55

    xor d                                         ; $495f: $aa
    xor h                                         ; $4960: $ac
    ld [bc], a                                    ; $4961: $02
    rst $28                                       ; $4962: $ef

jr_09e_4963:
    ld [bc], a                                    ; $4963: $02
    db $fd                                        ; $4964: $fd
    ld d, l                                       ; $4965: $55
    xor d                                         ; $4966: $aa
    nop                                           ; $4967: $00
    jr nz, jr_09e_4949                            ; $4968: $20 $df

    db $10                                        ; $496a: $10
    db $eb                                        ; $496b: $eb
    xor d                                         ; $496c: $aa
    ld [hl], l                                    ; $496d: $75
    ld de, $00be                                  ; $496e: $11 $be $00
    ld [$bff7], sp                                ; $4971: $08 $f7 $bf
    ret nz                                        ; $4974: $c0

    ld h, c                                       ; $4975: $61
    ld [hl], d                                    ; $4976: $72
    jr jr_09e_4916                                ; $4977: $18 $9d

    nop                                           ; $4979: $00
    ld d, [hl]                                    ; $497a: $56
    cpl                                           ; $497b: $2f
    cp e                                          ; $497c: $bb
    dec b                                         ; $497d: $05
    rst $28                                       ; $497e: $ef
    db $10                                        ; $497f: $10
    dec e                                         ; $4980: $1d
    jr nz, jr_09e_4983                            ; $4981: $20 $00

jr_09e_4983:
    db $eb                                        ; $4983: $eb
    inc b                                         ; $4984: $04
    db $ed                                        ; $4985: $ed
    inc de                                        ; $4986: $13
    or l                                          ; $4987: $b5
    ld [$06d1], sp                                ; $4988: $08 $d1 $06
    nop                                           ; $498b: $00
    ld h, [hl]                                    ; $498c: $66
    add hl, de                                    ; $498d: $19
    cp a                                          ; $498e: $bf
    jp nz, Jump_09e_746f                          ; $498f: $c2 $6f $74

    cp e                                          ; $4992: $bb
    inc e                                         ; $4993: $1c
    nop                                           ; $4994: $00
    ld d, [hl]                                    ; $4995: $56
    daa                                           ; $4996: $27
    sub l                                         ; $4997: $95
    ldh [$eb], a                                  ; $4998: $e0 $eb
    ld [hl], b                                    ; $499a: $70
    ld a, [$001c]                                 ; $499b: $fa $1c $00
    push hl                                       ; $499e: $e5
    ld a, $55                                     ; $499f: $3e $55
    ld l, e                                       ; $49a1: $6b
    db $ec                                        ; $49a2: $ec
    di                                            ; $49a3: $f3
    db $eb                                        ; $49a4: $eb
    ld [hl], $00                                  ; $49a5: $36 $00
    ld h, $f9                                     ; $49a7: $26 $f9
    adc c                                         ; $49a9: $89
    ld h, l                                       ; $49aa: $65
    rra                                           ; $49ab: $1f
    ld b, b                                       ; $49ac: $40
    or d                                          ; $49ad: $b2
    ld [$0c00], sp                                ; $49ae: $08 $00 $0c
    ld b, d                                       ; $49b1: $42
    or a                                          ; $49b2: $b7
    ret nz                                        ; $49b3: $c0

jr_09e_49b4:
    ld l, c                                       ; $49b4: $69
    ld a, [c]                                     ; $49b5: $f2
    ld d, b                                       ; $49b6: $50
    db $fd                                        ; $49b7: $fd
    nop                                           ; $49b8: $00
    sub d                                         ; $49b9: $92
    rst $28                                       ; $49ba: $ef
    dec b                                         ; $49bb: $05
    ld [$fd22], a                                 ; $49bc: $ea $22 $fd
    ld d, l                                       ; $49bf: $55
    ld a, [$0003]                                 ; $49c0: $fa $03 $00
    rst $38                                       ; $49c3: $ff
    ld de, $08ff                                  ; $49c4: $11 $ff $08
    rst $30                                       ; $49c7: $f7
    db $10                                        ; $49c8: $10
    inc c                                         ; $49c9: $0c
    ret c                                         ; $49ca: $d8

    nop                                           ; $49cb: $00
    inc c                                         ; $49cc: $0c
    ld e, l                                       ; $49cd: $5d
    ld d, l                                       ; $49ce: $55
    xor d                                         ; $49cf: $aa

jr_09e_49d0:
    xor b                                         ; $49d0: $a8
    add sp, $00                                   ; $49d1: $e8 $00
    jr jr_09e_49d8                                ; $49d3: $18 $03

    rst $38                                       ; $49d5: $ff
    ld a, [hl+]                                   ; $49d6: $2a
    nop                                           ; $49d7: $00

jr_09e_49d8:
    rst $30                                       ; $49d8: $f7
    ld l, d                                       ; $49d9: $6a
    add b                                         ; $49da: $80
    ret nz                                        ; $49db: $c0

    sbc a                                         ; $49dc: $9f
    ld [hl], d                                    ; $49dd: $72
    and b                                         ; $49de: $a0
    push af                                       ; $49df: $f5
    nop                                           ; $49e0: $00
    and b                                         ; $49e1: $a0
    ld a, e                                       ; $49e2: $7b
    and b                                         ; $49e3: $a0
    xor d                                         ; $49e4: $aa
    push af                                       ; $49e5: $f5
    jr nz, @+$01                                  ; $49e6: $20 $ff

    and b                                         ; $49e8: $a0
    set 7, [hl]                                   ; $49e9: $cb $fe
    ld bc, $5a42                                  ; $49eb: $01 $42 $5a
    jp $3bff                                      ; $49ee: $c3 $ff $3b


    ld [bc], a                                    ; $49f1: $02
    rst $38                                       ; $49f2: $ff
    rlca                                          ; $49f3: $07
    ld [bc], a                                    ; $49f4: $02
    inc b                                         ; $49f5: $04
    jr nz, jr_09e_49f8                            ; $49f6: $20 $00

jr_09e_49f8:
    rst $18                                       ; $49f8: $df
    ld hl, $209f                                  ; $49f9: $21 $9f $20
    ld a, a                                       ; $49fc: $7f
    add b                                         ; $49fd: $80
    cp l                                          ; $49fe: $bd
    ld b, d                                       ; $49ff: $42
    nop                                           ; $4a00: $00
    and d                                         ; $4a01: $a2
    reti                                          ; $4a02: $d9


Jump_09e_4a03:
    ld l, e                                       ; $4a03: $6b
    ldh a, [$3d]                                  ; $4a04: $f0 $3d
    ld e, d                                       ; $4a06: $5a
    halt                                          ; $4a07: $76
    adc [hl]                                      ; $4a08: $8e
    ld l, e                                       ; $4a09: $6b
    ld d, l                                       ; $4a0a: $55
    ld h, b                                       ; $4a0b: $60
    dec b                                         ; $4a0c: $05
    ld [bc], a                                    ; $4a0d: $02
    jr jr_09e_49d0                                ; $4a0e: $18 $c0

    inc [hl]                                      ; $4a10: $34
    rlca                                          ; $4a11: $07
    push af                                       ; $4a12: $f5
    ld b, d                                       ; $4a13: $42
    inc c                                         ; $4a14: $0c
    ld [bc], a                                    ; $4a15: $02
    ld b, b                                       ; $4a16: $40
    ld b, h                                       ; $4a17: $44
    ld d, l                                       ; $4a18: $55
    ld a, [hl-]                                   ; $4a19: $3a
    nop                                           ; $4a1a: $00
    ld bc, $03ff                                  ; $4a1b: $01 $ff $03
    inc b                                         ; $4a1e: $04
    db $10                                        ; $4a1f: $10
    dec b                                         ; $4a20: $05
    rst $38                                       ; $4a21: $ff
    ld h, b                                       ; $4a22: $60
    dec bc                                        ; $4a23: $0b
    call nz, $9806                                ; $4a24: $c4 $06 $98
    nop                                           ; $4a27: $00
    or $5b                                        ; $4a28: $f6 $5b
    sbc h                                         ; $4a2a: $9c
    xor $17                                       ; $4a2b: $ee $17
    nop                                           ; $4a2d: $00
    di                                            ; $4a2e: $f3
    add hl, bc                                    ; $4a2f: $09
    ld l, l                                       ; $4a30: $6d
    db $10                                        ; $4a31: $10
    inc d                                         ; $4a32: $14
    xor d                                         ; $4a33: $aa
    ld d, e                                       ; $4a34: $53
    adc h                                         ; $4a35: $8c
    nop                                           ; $4a36: $00
    ld [$4095], a                                 ; $4a37: $ea $95 $40
    cp a                                          ; $4a3a: $bf
    ld a, [$5090]                                 ; $4a3b: $fa $90 $50
    or b                                          ; $4a3e: $b0
    nop                                           ; $4a3f: $00
    rst $38                                       ; $4a40: $ff
    sub b                                         ; $4a41: $90
    ld e, a                                       ; $4a42: $5f
    cp a                                          ; $4a43: $bf
    ldh a, [$9f]                                  ; $4a44: $f0 $9f
    ld d, b                                       ; $4a46: $50
    cp a                                          ; $4a47: $bf
    nop                                           ; $4a48: $00
    xor e                                         ; $4a49: $ab
    ld d, a                                       ; $4a4a: $57
    inc bc                                        ; $4a4b: $03
    cp $ab                                        ; $4a4c: $fe $ab
    ld [bc], a                                    ; $4a4e: $02
    inc bc                                        ; $4a4f: $03
    ld [bc], a                                    ; $4a50: $02
    db $10                                        ; $4a51: $10
    rst $38                                       ; $4a52: $ff
    ld [bc], a                                    ; $4a53: $02
    cp $38                                        ; $4a54: $fe $38
    nop                                           ; $4a56: $00
    inc bc                                        ; $4a57: $03
    rst $38                                       ; $4a58: $ff
    xor d                                         ; $4a59: $aa
    ld d, l                                       ; $4a5a: $55
    nop                                           ; $4a5b: $00
    rst $10                                       ; $4a5c: $d7
    xor c                                         ; $4a5d: $a9
    ld [$5755], a                                 ; $4a5e: $ea $55 $57
    add hl, hl                                    ; $4a61: $29
    ld a, [hl+]                                   ; $4a62: $2a
    dec d                                         ; $4a63: $15
    ld [bc], a                                    ; $4a64: $02
    ld b, a                                       ; $4a65: $47
    add hl, de                                    ; $4a66: $19
    adc d                                         ; $4a67: $8a
    dec d                                         ; $4a68: $15
    scf                                           ; $4a69: $37
    adc c                                         ; $4a6a: $89
    inc h                                         ; $4a6b: $24
    ld [$c1ff], sp                                ; $4a6c: $08 $ff $c1
    jr nc, jr_09e_4a71                            ; $4a6f: $30 $00

jr_09e_4a71:
    inc [hl]                                      ; $4a71: $34
    nop                                           ; $4a72: $00
    cp a                                          ; $4a73: $bf
    rst $28                                       ; $4a74: $ef
    sbc a                                         ; $4a75: $9f

jr_09e_4a76:
    ld d, b                                       ; $4a76: $50
    xor a                                         ; $4a77: $af
    add hl, hl                                    ; $4a78: $29
    nop                                           ; $4a79: $00
    ld [bc], a                                    ; $4a7a: $02
    rst $38                                       ; $4a7b: $ff
    cp $03                                        ; $4a7c: $fe $03
    ld [bc], a                                    ; $4a7e: $02
    inc bc                                        ; $4a7f: $03
    xor d                                         ; $4a80: $aa
    inc sp                                        ; $4a81: $33
    nop                                           ; $4a82: $00
    db $fc                                        ; $4a83: $fc
    nop                                           ; $4a84: $00
    rst $38                                       ; $4a85: $ff
    ld bc, $d2fe                                  ; $4a86: $01 $fe $d2
    adc l                                         ; $4a89: $8d
    and a                                         ; $4a8a: $a7
    ret                                           ; $4a8b: $c9


    jp nz, Jump_09e_6d00                          ; $4a8c: $c2 $00 $6d

    ld h, a                                       ; $4a8f: $67
    xor c                                         ; $4a90: $a9
    and d                                         ; $4a91: $a2
    ld l, l                                       ; $4a92: $6d
    ld [hl], a                                    ; $4a93: $77
    xor c                                         ; $4a94: $a9
    cp d                                          ; $4a95: $ba
    db $10                                        ; $4a96: $10
    ld l, l                                       ; $4a97: $6d
    ld a, a                                       ; $4a98: $7f
    push de                                       ; $4a99: $d5
    inc a                                         ; $4a9a: $3c
    ld c, d                                       ; $4a9b: $4a
    ld [$7f95], a                                 ; $4a9c: $ea $95 $7f
    add b                                         ; $4a9f: $80
    and b                                         ; $4aa0: $a0
    inc a                                         ; $4aa1: $3c
    ld c, d                                       ; $4aa2: $4a
    xor d                                         ; $4aa3: $aa
    rst $28                                       ; $4aa4: $ef
    inc b                                         ; $4aa5: $04
    add $45                                       ; $4aa6: $c6 $45
    ld l, a                                       ; $4aa8: $6f
    push bc                                       ; $4aa9: $c5
    cp d                                          ; $4aaa: $ba
    ld c, h                                       ; $4aab: $4c
    ld a, l                                       ; $4aac: $7d
    ld b, h                                       ; $4aad: $44
    ld a, [hl+]                                   ; $4aae: $2a
    db $fd                                        ; $4aaf: $fd
    inc bc                                        ; $4ab0: $03
    dec l                                         ; $4ab1: $2d
    ld d, $f8                                     ; $4ab2: $16 $f8
    rlca                                          ; $4ab4: $07
    rst $18                                       ; $4ab5: $df
    rst $38                                       ; $4ab6: $ff
    ld b, $ef                                     ; $4ab7: $06 $ef
    rst $38                                       ; $4ab9: $ff
    rst $30                                       ; $4aba: $f7
    rst $38                                       ; $4abb: $ff
    cp d                                          ; $4abc: $ba
    rrca                                          ; $4abd: $0f
    jr z, jr_09e_4acc                             ; $4abe: $28 $0c

    nop                                           ; $4ac0: $00
    xor d                                         ; $4ac1: $aa
    rrca                                          ; $4ac2: $0f
    rst $38                                       ; $4ac3: $ff
    ld [hl], a                                    ; $4ac4: $77
    rst $38                                       ; $4ac5: $ff
    db $eb                                        ; $4ac6: $eb
    db $10                                        ; $4ac7: $10
    jr nc, jr_09e_4b18                            ; $4ac8: $30 $4e

    ld b, $a2                                     ; $4aca: $06 $a2

jr_09e_4acc:
    rlca                                          ; $4acc: $07
    inc h                                         ; $4acd: $24
    nop                                           ; $4ace: $00
    nop                                           ; $4acf: $00
    ld a, [de]                                    ; $4ad0: $1a
    db $ed                                        ; $4ad1: $ed
    ld a, e                                       ; $4ad2: $7b
    adc h                                         ; $4ad3: $8c
    ei                                            ; $4ad4: $fb
    ld [$0cfb], sp                                ; $4ad5: $08 $fb $0c
    nop                                           ; $4ad8: $00
    ei                                            ; $4ad9: $fb
    jr z, jr_09e_4a76                             ; $4ada: $28 $9a

    ld a, [de]                                    ; $4adc: $1a
    ld l, c                                       ; $4add: $69
    ld l, c                                       ; $4ade: $69
    ei                                            ; $4adf: $fb
    ei                                            ; $4ae0: $fb
    nop                                           ; $4ae1: $00
    nop                                           ; $4ae2: $00
    push de                                       ; $4ae3: $d5
    add b                                         ; $4ae4: $80
    ld a, a                                       ; $4ae5: $7f
    ret nz                                        ; $4ae6: $c0

    dec sp                                        ; $4ae7: $3b
    ldh [rNR34], a                                ; $4ae8: $e0 $1e
    ld bc, $11f0                                  ; $4aea: $01 $f0 $11
    ld a, b                                       ; $4aed: $78
    ld c, b                                       ; $4aee: $48
    cp b                                          ; $4aef: $b8
    xor h                                         ; $4af0: $ac
    ret c                                         ; $4af1: $d8

    stop                                          ; $4af2: $10 $00
    nop                                           ; $4af4: $00
    nop                                           ; $4af5: $00
    cp a                                          ; $4af6: $bf
    nop                                           ; $4af7: $00
    ld l, e                                       ; $4af8: $6b
    nop                                           ; $4af9: $00
    sub a                                         ; $4afa: $97
    nop                                           ; $4afb: $00
    dec hl                                        ; $4afc: $2b
    nop                                           ; $4afd: $00
    ld bc, $0217                                  ; $4afe: $01 $17 $02
    ld c, [hl]                                    ; $4b01: $4e
    dec b                                         ; $4b02: $05
    ret z                                         ; $4b03: $c8

    ei                                            ; $4b04: $fb
    add hl, hl                                    ; $4b05: $29
    nop                                           ; $4b06: $00
    sbc d                                         ; $4b07: $9a
    ld a, e                                       ; $4b08: $7b
    ld l, c                                       ; $4b09: $69
    ei                                            ; $4b0a: $fb
    jp hl                                         ; $4b0b: $e9


    ei                                            ; $4b0c: $fb
    jp hl                                         ; $4b0d: $e9


    db $ed                                        ; $4b0e: $ed
    nop                                           ; $4b0f: $00
    jp c, $3b48                                   ; $4b10: $da $48 $3b

    inc c                                         ; $4b13: $0c
    ei                                            ; $4b14: $fb
    jp z, $26fc                                   ; $4b15: $ca $fc $26

jr_09e_4b18:
    nop                                           ; $4b18: $00
    ld a, [hl]                                    ; $4b19: $7e
    add c                                         ; $4b1a: $81
    cp c                                          ; $4b1b: $b9
    jp $c1dd                                      ; $4b1c: $c3 $dd $c1


    db $dd                                        ; $4b1f: $dd
    db $e3                                        ; $4b20: $e3
    dec c                                         ; $4b21: $0d
    db $dd                                        ; $4b22: $dd
    push bc                                       ; $4b23: $c5
    ccf                                           ; $4b24: $3f
    xor [hl]                                      ; $4b25: $ae
    add b                                         ; $4b26: $80
    dec d                                         ; $4b27: $15
    xor a                                         ; $4b28: $af
    ld [bc], a                                    ; $4b29: $02
    add b                                         ; $4b2a: $80
    ld [bc], a                                    ; $4b2b: $02
    jr z, jr_09e_4b2e                             ; $4b2c: $28 $00

jr_09e_4b2e:
    inc c                                         ; $4b2e: $0c
    rlca                                          ; $4b2f: $07
    ld [$0c0f], sp                                ; $4b30: $08 $0f $0c
    rrca                                          ; $4b33: $0f
    ld [bc], a                                    ; $4b34: $02
    rlca                                          ; $4b35: $07
    nop                                           ; $4b36: $00
    inc bc                                        ; $4b37: $03
    ld bc, $0207                                  ; $4b38: $01 $07 $02
    ld c, $05                                     ; $4b3b: $0e $05
    inc e                                         ; $4b3d: $1c
    dec bc                                        ; $4b3e: $0b
    nop                                           ; $4b3f: $00
    inc d                                         ; $4b40: $14
    ld sp, hl                                     ; $4b41: $f9
    ld [de], a                                    ; $4b42: $12
    db $fd                                        ; $4b43: $fd
    sbc h                                         ; $4b44: $9c
    rst $38                                       ; $4b45: $ff
    inc c                                         ; $4b46: $0c
    di                                            ; $4b47: $f3
    nop                                           ; $4b48: $00
    ld [de], a                                    ; $4b49: $12
    db $ed                                        ; $4b4a: $ed
    dec l                                         ; $4b4b: $2d
    sbc $40                                       ; $4b4c: $de $40
    and c                                         ; $4b4e: $a1
    ld hl, $00d2                                  ; $4b4f: $21 $d2 $00
    ld d, h                                       ; $4b52: $54
    rst $38                                       ; $4b53: $ff
    dec l                                         ; $4b54: $2d
    cp $14                                        ; $4b55: $fe $14
    cp $28                                        ; $4b57: $fe $28
    cp $00                                        ; $4b59: $fe $00

jr_09e_4b5b:
    ld a, [de]                                    ; $4b5b: $1a
    db $fc                                        ; $4b5c: $fc
    jr jr_09e_4b5b                                ; $4b5d: $18 $fc

    sub b                                         ; $4b5f: $90
    ld a, h                                       ; $4b60: $7c
    ld [hl], $f8                                  ; $4b61: $36 $f8
    add b                                         ; $4b63: $80
    db $eb                                        ; $4b64: $eb
    ld a, [hl+]                                   ; $4b65: $2a
    ld b, h                                       ; $4b66: $44
    nop                                           ; $4b67: $00
    ld hl, $4800                                  ; $4b68: $21 $00 $48
    nop                                           ; $4b6b: $00
    sub d                                         ; $4b6c: $92
    nop                                           ; $4b6d: $00
    nop                                           ; $4b6e: $00
    inc c                                         ; $4b6f: $0c
    rlca                                          ; $4b70: $07
    ld b, $03                                     ; $4b71: $06 $03
    ld c, $05                                     ; $4b73: $0e $05
    inc c                                         ; $4b75: $0c
    nop                                           ; $4b76: $00
    dec bc                                        ; $4b77: $0b
    jr jr_09e_4b89                                ; $4b78: $18 $0f

    dec c                                         ; $4b7a: $0d
    ld b, $4e                                     ; $4b7b: $06 $4e
    dec b                                         ; $4b7d: $05
    and a                                         ; $4b7e: $a7
    nop                                           ; $4b7f: $00
    ld [bc], a                                    ; $4b80: $02
    add b                                         ; $4b81: $80
    rst $38                                       ; $4b82: $ff
    sbc $ff                                       ; $4b83: $de $ff
    ld h, c                                       ; $4b85: $61
    rst $38                                       ; $4b86: $ff
    rst $38                                       ; $4b87: $ff
    nop                                           ; $4b88: $00

jr_09e_4b89:
    ccf                                           ; $4b89: $3f
    xor h                                         ; $4b8a: $ac
    rra                                           ; $4b8b: $1f
    ld sp, hl                                     ; $4b8c: $f9
    ld b, $d5                                     ; $4b8d: $06 $d5
    ld a, [hl+]                                   ; $4b8f: $2a
    ld a, d                                       ; $4b90: $7a
    nop                                           ; $4b91: $00
    add l                                         ; $4b92: $85
    ld h, h                                       ; $4b93: $64
    ld hl, sp-$37                                 ; $4b94: $f8 $c9
    ldh a, [$9f]                                  ; $4b96: $f0 $9f
    ldh [$37], a                                  ; $4b98: $e0 $37
    nop                                           ; $4b9a: $00
    ret nz                                        ; $4b9b: $c0

    ld a, l                                       ; $4b9c: $7d
    add d                                         ; $4b9d: $82
    rst $28                                       ; $4b9e: $ef
    db $10                                        ; $4b9f: $10
    ld a, d                                       ; $4ba0: $7a
    add l                                         ; $4ba1: $85
    db $ed                                        ; $4ba2: $ed
    ld [$6d12], sp                                ; $4ba3: $08 $12 $6d
    inc bc                                        ; $4ba6: $03
    db $db                                        ; $4ba7: $db
    nop                                           ; $4ba8: $00
    inc b                                         ; $4ba9: $04
    ld d, a                                       ; $4baa: $57
    jr nz, @-$41                                  ; $4bab: $20 $bd

    ld b, b                                       ; $4bad: $40
    ld [bc], a                                    ; $4bae: $02
    db $10                                        ; $4baf: $10
    jr @+$01                                      ; $4bb0: $18 $ff

    nop                                           ; $4bb2: $00
    rst $30                                       ; $4bb3: $f7
    rrca                                          ; $4bb4: $0f
    ld e, b                                       ; $4bb5: $58
    jr c, jr_09e_4bb8                             ; $4bb6: $38 $00

jr_09e_4bb8:
    rst $28                                       ; $4bb8: $ef
    ld h, b                                       ; $4bb9: $60
    or b                                          ; $4bba: $b0
    adc a                                         ; $4bbb: $8f
    call z, Call_000_123e                         ; $4bbc: $cc $3e $12
    db $fc                                        ; $4bbf: $fc
    nop                                           ; $4bc0: $00
    ld a, [hl+]                                   ; $4bc1: $2a
    db $f4                                        ; $4bc2: $f4
    ld a, [$b500]                                 ; $4bc3: $fa $00 $b5
    ret nz                                        ; $4bc6: $c0

    ld l, b                                       ; $4bc7: $68
    ld [hl], b                                    ; $4bc8: $70
    nop                                           ; $4bc9: $00
    db $dd                                        ; $4bca: $dd
    jr @+$38                                      ; $4bcb: $18 $36

    call nz, $f2cf                                ; $4bcd: $c4 $cf $f2
    inc hl                                        ; $4bd0: $23
    db $fd                                        ; $4bd1: $fd
    nop                                           ; $4bd2: $00
    ld d, c                                       ; $4bd3: $51
    cp [hl]                                       ; $4bd4: $be
    rst $38                                       ; $4bd5: $ff
    nop                                           ; $4bd6: $00
    ld e, e                                       ; $4bd7: $5b
    nop                                           ; $4bd8: $00
    or $00                                        ; $4bd9: $f6 $00
    nop                                           ; $4bdb: $00
    and a                                         ; $4bdc: $a7
    nop                                           ; $4bdd: $00
    ld c, e                                       ; $4bde: $4b
    nop                                           ; $4bdf: $00
    ld d, $00                                     ; $4be0: $16 $00
    adc c                                         ; $4be2: $89
    nop                                           ; $4be3: $00
    nop                                           ; $4be4: $00
    call nz, $df80                                ; $4be5: $c4 $80 $df
    nop                                           ; $4be8: $00
    ld a, l                                       ; $4be9: $7d
    nop                                           ; $4bea: $00
    rst $10                                       ; $4beb: $d7
    nop                                           ; $4bec: $00
    nop                                           ; $4bed: $00
    cp l                                          ; $4bee: $bd
    nop                                           ; $4bef: $00
    ld e, d                                       ; $4bf0: $5a
    nop                                           ; $4bf1: $00
    or l                                          ; $4bf2: $b5
    ld bc, HeaderRAMSize                          ; $4bf3: $01 $49 $01
    nop                                           ; $4bf6: $00
    sub e                                         ; $4bf7: $93
    ld bc, $e856                                  ; $4bf8: $01 $56 $e8
    ld b, d                                       ; $4bfb: $42
    db $fc                                        ; $4bfc: $fc
    ld [de], a                                    ; $4bfd: $12
    ldh [rP1], a                                  ; $4bfe: $e0 $00
    and b                                         ; $4c00: $a0
    call c, $fe80                                 ; $4c01: $dc $80 $fe
    cp h                                          ; $4c04: $bc
    cp $f8                                        ; $4c05: $fe $f8
    cp $00                                        ; $4c07: $fe $00
    add b                                         ; $4c09: $80
    cp $a8                                        ; $4c0a: $fe $a8
    ld e, a                                       ; $4c0c: $5f
    ld [$10ff], sp                                ; $4c0d: $08 $ff $10
    adc a                                         ; $4c10: $8f
    nop                                           ; $4c11: $00
    dec c                                         ; $4c12: $0d
    ld [hl], a                                    ; $4c13: $77
    ld b, $ff                                     ; $4c14: $06 $ff
    rst $30                                       ; $4c16: $f7
    db $fd                                        ; $4c17: $fd
    ld a, l                                       ; $4c18: $7d
    cp $00                                        ; $4c19: $fe $00
    inc b                                         ; $4c1b: $04
    rst $38                                       ; $4c1c: $ff
    sub b                                         ; $4c1d: $90
    ret nz                                        ; $4c1e: $c0

    ld h, b                                       ; $4c1f: $60
    ret nz                                        ; $4c20: $c0

    ret nz                                        ; $4c21: $c0

    ldh [rNR10], a                                ; $4c22: $e0 $10
    nop                                           ; $4c24: $00
    ldh [rLCDC], a                                ; $4c25: $e0 $40
    and l                                         ; $4c27: $a5

jr_09e_4c28:
    inc bc                                        ; $4c28: $03
    ret nz                                        ; $4c29: $c0

    add b                                         ; $4c2a: $80
    ldh [rLCDC], a                                ; $4c2b: $e0 $40
    nop                                           ; $4c2d: $00
    ld hl, $0400                                  ; $4c2e: $21 $00 $04
    nop                                           ; $4c31: $00
    inc bc                                        ; $4c32: $03
    ld bc, $070e                                  ; $4c33: $01 $0e $07
    nop                                           ; $4c36: $00
    add hl, bc                                    ; $4c37: $09
    inc c                                         ; $4c38: $0c
    ld c, $08                                     ; $4c39: $0e $08
    ld a, [bc]                                    ; $4c3b: $0a
    inc c                                         ; $4c3c: $0c
    add hl, bc                                    ; $4c3d: $09
    ld c, $00                                     ; $4c3e: $0e $00
    sbc d                                         ; $4c40: $9a
    db $e4                                        ; $4c41: $e4
    cp d                                          ; $4c42: $ba
    call nz, $c4ba                                ; $4c43: $c4 $ba $c4
    cp e                                          ; $4c46: $bb
    rst $00                                       ; $4c47: $c7
    nop                                           ; $4c48: $00
    db $d3                                        ; $4c49: $d3
    rst $28                                       ; $4c4a: $ef
    ld e, b                                       ; $4c4b: $58
    rst $20                                       ; $4c4c: $e7
    ret nc                                        ; $4c4d: $d0

    ld l, a                                       ; $4c4e: $6f
    db $eb                                        ; $4c4f: $eb
    ld [hl], a                                    ; $4c50: $77
    nop                                           ; $4c51: $00
    ld h, h                                       ; $4c52: $64
    sbc a                                         ; $4c53: $9f
    ld [hl], l                                    ; $4c54: $75
    adc a                                         ; $4c55: $8f
    ld [hl], l                                    ; $4c56: $75
    adc [hl]                                      ; $4c57: $8e
    ld [hl], h                                    ; $4c58: $74
    adc a                                         ; $4c59: $8f
    nop                                           ; $4c5a: $00
    dec l                                         ; $4c5b: $2d
    sbc $6a                                       ; $4c5c: $de $6a
    sbc l                                         ; $4c5e: $9d
    cpl                                           ; $4c5f: $2f
    ret c                                         ; $4c60: $d8

    ld e, a                                       ; $4c61: $5f
    cp c                                          ; $4c62: $b9
    ld [$e090], sp                                ; $4c63: $08 $90 $e0

jr_09e_4c66:
    jr nz, jr_09e_4c28                            ; $4c66: $20 $c0

    jr c, jr_09e_4c72                             ; $4c68: $38 $08

    ret nc                                        ; $4c6a: $d0

    ld h, b                                       ; $4c6b: $60
    add b                                         ; $4c6c: $80
    nop                                           ; $4c6d: $00
    ldh [$b1], a                                  ; $4c6e: $e0 $b1
    ret nz                                        ; $4c70: $c0

    ld [hl+], a                                   ; $4c71: $22

jr_09e_4c72:
    ret nz                                        ; $4c72: $c0

    add hl, bc                                    ; $4c73: $09
    ld c, $0c                                     ; $4c74: $0e $0c
    ld [de], a                                    ; $4c76: $12
    rrca                                          ; $4c77: $0f
    ld c, $07                                     ; $4c78: $0e $07
    xor e                                         ; $4c7a: $ab
    ld b, $01                                     ; $4c7b: $06 $01
    ld [$06cb], sp                                ; $4c7d: $08 $cb $06
    ld d, d                                       ; $4c80: $52
    nop                                           ; $4c81: $00
    nop                                           ; $4c82: $00
    ld h, e                                       ; $4c83: $63
    ccf                                           ; $4c84: $3f
    xor a                                         ; $4c85: $af
    scf                                           ; $4c86: $37
    or a                                          ; $4c87: $b7
    cp a                                          ; $4c88: $bf
    di                                            ; $4c89: $f3
    nop                                           ; $4c8a: $00
    sbc a                                         ; $4c8b: $9f
    ld e, b                                       ; $4c8c: $58
    rst $18                                       ; $4c8d: $df
    db $fc                                        ; $4c8e: $fc
    ld c, a                                       ; $4c8f: $4f
    xor a                                         ; $4c90: $af
    ld h, a                                       ; $4c91: $67
    ld d, h                                       ; $4c92: $54
    nop                                           ; $4c93: $00
    or e                                          ; $4c94: $b3
    ld d, $fb                                     ; $4c95: $16 $fb
    sub $b3                                       ; $4c97: $d6 $b3
    or h                                          ; $4c99: $b4
    rst $30                                       ; $4c9a: $f7
    dec a                                         ; $4c9b: $3d
    nop                                           ; $4c9c: $00
    and $69                                       ; $4c9d: $e6 $69
    xor $fb                                       ; $4c9f: $ee $fb
    call z, $9dd2                                 ; $4ca1: $cc $d2 $9d
    and a                                         ; $4ca4: $a7
    nop                                           ; $4ca5: $00
    jr c, @+$52                                   ; $4ca6: $38 $50

    add b                                         ; $4ca8: $80
    xor d                                         ; $4ca9: $aa
    nop                                           ; $4caa: $00
    rst $30                                       ; $4cab: $f7
    nop                                           ; $4cac: $00
    cp [hl]                                       ; $4cad: $be
    nop                                           ; $4cae: $00
    nop                                           ; $4caf: $00
    cp e                                          ; $4cb0: $bb
    ld b, h                                       ; $4cb1: $44
    rst $30                                       ; $4cb2: $f7
    ld [$54ab], sp                                ; $4cb3: $08 $ab $54
    ld d, d                                       ; $4cb6: $52
    nop                                           ; $4cb7: $00
    xor l                                         ; $4cb8: $ad
    cp $00                                        ; $4cb9: $fe $00
    or a                                          ; $4cbb: $b7
    ld bc, $01eb                                  ; $4cbc: $01 $eb $01
    jp nc, $0300                                  ; $4cbf: $d2 $00 $03

    add [hl]                                      ; $4cc2: $86
    inc bc                                        ; $4cc3: $03
    db $fc                                        ; $4cc4: $fc
    rst $38                                       ; $4cc5: $ff
    ld h, h                                       ; $4cc6: $64
    sbc a                                         ; $4cc7: $9f
    or c                                          ; $4cc8: $b1
    nop                                           ; $4cc9: $00
    adc $fb                                       ; $4cca: $ce $fb
    ret nz                                        ; $4ccc: $c0

    dec [hl]                                      ; $4ccd: $35
    ldh [$6f], a                                  ; $4cce: $e0 $6f
    or b                                          ; $4cd0: $b0
    dec de                                        ; $4cd1: $1b
    nop                                           ; $4cd2: $00
    or b                                          ; $4cd3: $b0
    sub [hl]                                      ; $4cd4: $96
    jr c, jr_09e_4c66                             ; $4cd5: $38 $8f

    ccf                                           ; $4cd7: $3f
    xor c                                         ; $4cd8: $a9
    ld e, $83                                     ; $4cd9: $1e $83
    jr nz, jr_09e_4cf9                            ; $4cdb: $20 $1c

    rst $38                                       ; $4cdd: $ff
    xor $00                                       ; $4cde: $ee $00
    ld l, l                                       ; $4ce0: $6d
    nop                                           ; $4ce1: $00
    ret nc                                        ; $4ce2: $d0

    nop                                           ; $4ce3: $00
    and h                                         ; $4ce4: $a4
    nop                                           ; $4ce5: $00
    nop                                           ; $4ce6: $00
    add sp, -$20                                  ; $4ce7: $e8 $e0
    and d                                         ; $4ce9: $a2
    ld [hl], b                                    ; $4cea: $70
    ld h, b                                       ; $4ceb: $60
    ldh a, [$7a]                                  ; $4cec: $f0 $7a
    ld [bc], a                                    ; $4cee: $02
    nop                                           ; $4cef: $00
    or l                                          ; $4cf0: $b5
    nop                                           ; $4cf1: $00
    ld [$1100], sp                                ; $4cf2: $08 $00 $11
    or h                                          ; $4cf5: $b4
    ld bc, $8029                                  ; $4cf6: $01 $29 $80

jr_09e_4cf9:
    dec sp                                        ; $4cf9: $3b
    rla                                           ; $4cfa: $17
    add $ef                                       ; $4cfb: $c6 $ef
    pop hl                                        ; $4cfd: $e1
    ld [hl], a                                    ; $4cfe: $77
    rst $20                                       ; $4cff: $e7
    ld hl, sp+$4c                                 ; $4d00: $f8 $4c
    nop                                           ; $4d02: $00
    ldh a, [$5e]                                  ; $4d03: $f0 $5e
    rst $38                                       ; $4d05: $ff
    rst $30                                       ; $4d06: $f7
    ld a, a                                       ; $4d07: $7f
    cpl                                           ; $4d08: $2f
    rst $38                                       ; $4d09: $ff
    sbc a                                         ; $4d0a: $9f
    nop                                           ; $4d0b: $00
    rst $38                                       ; $4d0c: $ff
    ret c                                         ; $4d0d: $d8

    dec a                                         ; $4d0e: $3d
    pop hl                                        ; $4d0f: $e1
    ei                                            ; $4d10: $fb
    ld sp, hl                                     ; $4d11: $f9
    rlca                                          ; $4d12: $07
    dec c                                         ; $4d13: $0d
    nop                                           ; $4d14: $00
    inc bc                                        ; $4d15: $03
    ld e, [hl]                                    ; $4d16: $5e
    cp a                                          ; $4d17: $bf
    ld a, e                                       ; $4d18: $7b
    cp a                                          ; $4d19: $bf
    ld e, l                                       ; $4d1a: $5d
    cp a                                          ; $4d1b: $bf
    ld a, [hl]                                    ; $4d1c: $7e
    nop                                           ; $4d1d: $00
    cp a                                          ; $4d1e: $bf
    ret nz                                        ; $4d1f: $c0

    ldh a, [$80]                                  ; $4d20: $f0 $80
    ldh [$f0], a                                  ; $4d22: $e0 $f0
    ldh [$9c], a                                  ; $4d24: $e0 $9c
    nop                                           ; $4d26: $00
    ld hl, sp-$5a                                 ; $4d27: $f8 $a6
    call z, $86dc                                 ; $4d29: $cc $dc $86
    inc d                                         ; $4d2c: $14
    adc $64                                       ; $4d2d: $ce $64
    nop                                           ; $4d2f: $00
    sbc $01                                       ; $4d30: $de $01
    rst $38                                       ; $4d32: $ff
    add e                                         ; $4d33: $83
    rst $38                                       ; $4d34: $ff
    ret                                           ; $4d35: $c9


    rst $30                                       ; $4d36: $f7
    and d                                         ; $4d37: $a2
    nop                                           ; $4d38: $00
    rst $30                                       ; $4d39: $f7
    pop bc                                        ; $4d3a: $c1
    rst $30                                       ; $4d3b: $f7
    or b                                          ; $4d3c: $b0
    rst $20                                       ; $4d3d: $e7
    jp nc, $a8ec                                  ; $4d3e: $d2 $ec $a8

    nop                                           ; $4d41: $00
    db $dd                                        ; $4d42: $dd
    ld b, b                                       ; $4d43: $40
    cp a                                          ; $4d44: $bf
    nop                                           ; $4d45: $00
    cp a                                          ; $4d46: $bf
    inc h                                         ; $4d47: $24
    sbc e                                         ; $4d48: $9b
    ld d, b                                       ; $4d49: $50
    nop                                           ; $4d4a: $00
    sbc e                                         ; $4d4b: $9b
    ldh [$fb], a                                  ; $4d4c: $e0 $fb
    ld [bc], a                                    ; $4d4e: $02
    ld sp, hl                                     ; $4d4f: $f9
    ld [de], a                                    ; $4d50: $12
    dec c                                         ; $4d51: $0d
    dec b                                         ; $4d52: $05
    nop                                           ; $4d53: $00
    xor $24                                       ; $4d54: $ee $24
    sbc $4c                                       ; $4d56: $de $4c
    cp $d8                                        ; $4d58: $fe $d8
    cp $72                                        ; $4d5a: $fe $72
    nop                                           ; $4d5c: $00
    db $fc                                        ; $4d5d: $fc
    call nz, $51f8                                ; $4d5e: $c4 $f8 $51
    ldh [$d0], a                                  ; $4d61: $e0 $d0
    ldh [$5a], a                                  ; $4d63: $e0 $5a
    ld [hl], b                                    ; $4d65: $70
    ldh [$66], a                                  ; $4d66: $e0 $66
    inc h                                         ; $4d68: $24
    ld [hl], h                                    ; $4d69: $74
    nop                                           ; $4d6a: $00
    call c, Call_000_0006                         ; $4d6b: $dc $06 $00
    ld l, d                                       ; $4d6e: $6a
    nop                                           ; $4d6f: $00
    db $dd                                        ; $4d70: $dd
    nop                                           ; $4d71: $00
    ei                                            ; $4d72: $fb
    ld a, [c]                                     ; $4d73: $f2
    ld a, a                                       ; $4d74: $7f
    ld d, e                                       ; $4d75: $53
    dec a                                         ; $4d76: $3d
    reti                                          ; $4d77: $d9


    ld e, $bc                                     ; $4d78: $1e $bc
    nop                                           ; $4d7a: $00
    rrca                                          ; $4d7b: $0f
    rst $38                                       ; $4d7c: $ff
    rlca                                          ; $4d7d: $07
    rst $10                                       ; $4d7e: $d7
    dec hl                                        ; $4d7f: $2b

jr_09e_4d80:
    ld a, d                                       ; $4d80: $7a
    add l                                         ; $4d81: $85
    xor $00                                       ; $4d82: $ee $00
    rst $30                                       ; $4d84: $f7
    db $d3                                        ; $4d85: $d3
    ccf                                           ; $4d86: $3f
    ld [c], a                                     ; $4d87: $e2

jr_09e_4d88:
    rst $28                                       ; $4d88: $ef
    ld b, $1f                                     ; $4d89: $06 $1f
    inc c                                         ; $4d8b: $0c
    nop                                           ; $4d8c: $00
    rst $38                                       ; $4d8d: $ff
    ld sp, hl                                     ; $4d8e: $f9
    cp $f2                                        ; $4d8f: $fe $f2
    db $fd                                        ; $4d91: $fd
    dec b                                         ; $4d92: $05
    ld a, [$00d5]                                 ; $4d93: $fa $d5 $00
    ldh [$9f], a                                  ; $4d96: $e0 $9f
    ldh [$3e], a                                  ; $4d98: $e0 $3e
    ret nz                                        ; $4d9a: $c0

    rst $28                                       ; $4d9b: $ef
    nop                                           ; $4d9c: $00
    rst $30                                       ; $4d9d: $f7
    ld [hl+], a                                   ; $4d9e: $22
    ld [$76dd], sp                                ; $4d9f: $08 $dd $76
    ld b, $52                                     ; $4da2: $06 $52
    xor l                                         ; $4da4: $ad
    or l                                          ; $4da5: $b5
    ld e, $06                                     ; $4da6: $1e $06
    sbc $00                                       ; $4da8: $de $00
    nop                                           ; $4daa: $00
    or a                                          ; $4dab: $b7
    nop                                           ; $4dac: $00
    ld a, a                                       ; $4dad: $7f
    add b                                         ; $4dae: $80
    ei                                            ; $4daf: $fb
    inc b                                         ; $4db0: $04
    cp d                                          ; $4db1: $ba
    nop                                           ; $4db2: $00
    ld b, l                                       ; $4db3: $45
    rst $28                                       ; $4db4: $ef
    db $10                                        ; $4db5: $10
    jr c, jr_09e_4d88                             ; $4db6: $38 $d0

    ld c, b                                       ; $4db8: $48
    cp b                                          ; $4db9: $b8
    ld c, h                                       ; $4dba: $4c
    ld a, [bc]                                    ; $4dbb: $0a
    cp b                                          ; $4dbc: $b8
    rrca                                          ; $4dbd: $0f
    rst $38                                       ; $4dbe: $ff
    ld d, b                                       ; $4dbf: $50
    cp [hl]                                       ; $4dc0: $be
    inc bc                                        ; $4dc1: $03
    ld [hl], l                                    ; $4dc2: $75
    db $fd                                        ; $4dc3: $fd
    ld [bc], a                                    ; $4dc4: $02
    ld l, h                                       ; $4dc5: $6c
    nop                                           ; $4dc6: $00
    inc sp                                        ; $4dc7: $33
    ld c, c                                       ; $4dc8: $49
    halt                                          ; $4dc9: $76
    sub $69                                       ; $4dca: $d6 $69
    add c                                         ; $4dcc: $81
    rst $38                                       ; $4dcd: $ff
    ld [de], a                                    ; $4dce: $12
    ld [$adff], sp                                ; $4dcf: $08 $ff $ad
    rst $38                                       ; $4dd2: $ff
    ld a, d                                       ; $4dd3: $7a
    dec c                                         ; $4dd4: $0d
    inc bc                                        ; $4dd5: $03
    and c                                         ; $4dd6: $a1
    ld e, [hl]                                    ; $4dd7: $5e
    ld a, [bc]                                    ; $4dd8: $0a
    nop                                           ; $4dd9: $00
    push af                                       ; $4dda: $f5
    add b                                         ; $4ddb: $80
    ld a, a                                       ; $4ddc: $7f
    ld h, $db                                     ; $4ddd: $26 $db
    ld b, h                                       ; $4ddf: $44
    rst $38                                       ; $4de0: $ff

jr_09e_4de1:
    xor a                                         ; $4de1: $af
    add b                                         ; $4de2: $80
    ld a, [hl-]                                   ; $4de3: $3a
    ld [bc], a                                    ; $4de4: $02
    rst $38                                       ; $4de5: $ff
    rst $38                                       ; $4de6: $ff
    inc h                                         ; $4de7: $24
    db $db                                        ; $4de8: $db
    ld b, b                                       ; $4de9: $40
    cp a                                          ; $4dea: $bf
    ld c, d                                       ; $4deb: $4a
    ld [$0cb5], sp                                ; $4dec: $08 $b5 $0c
    ei                                            ; $4def: $fb
    ld d, d                                       ; $4df0: $52
    jr nc, jr_09e_4e13                            ; $4df1: $30 $20

    ld a, h                                       ; $4df3: $7c
    add e                                         ; $4df4: $83
    xor c                                         ; $4df5: $a9
    inc b                                         ; $4df6: $04
    ld d, [hl]                                    ; $4df7: $56
    ld d, [hl]                                    ; $4df8: $56
    xor c                                         ; $4df9: $a9
    ld hl, $30df                                  ; $4dfa: $21 $df $30
    jr z, jr_09e_4d80                             ; $4dfd: $28 $81

    rst $38                                       ; $4dff: $ff
    dec [hl]                                      ; $4e00: $35
    ret nz                                        ; $4e01: $c0

    cp a                                          ; $4e02: $bf
    inc c                                         ; $4e03: $0c
    inc b                                         ; $4e04: $04

jr_09e_4e05:
    inc b                                         ; $4e05: $04
    db $10                                        ; $4e06: $10
    xor d                                         ; $4e07: $aa
    ld c, l                                       ; $4e08: $4d
    inc de                                        ; $4e09: $13
    nop                                           ; $4e0a: $00
    call nz, $e803                                ; $4e0b: $c4 $03 $e8

jr_09e_4e0e:
    inc d                                         ; $4e0e: $14

jr_09e_4e0f:
    inc e                                         ; $4e0f: $1c
    db $10                                        ; $4e10: $10
    jr jr_09e_4e05                                ; $4e11: $18 $f2

jr_09e_4e13:
    nop                                           ; $4e13: $00
    ld a, a                                       ; $4e14: $7f
    inc d                                         ; $4e15: $14
    inc l                                         ; $4e16: $2c
    pop bc                                        ; $4e17: $c1
    cp a                                          ; $4e18: $bf
    xor l                                         ; $4e19: $ad
    nop                                           ; $4e1a: $00
    ret nz                                        ; $4e1b: $c0

    ld c, b                                       ; $4e1c: $48
    halt                                          ; $4e1d: $76
    add hl, sp                                    ; $4e1e: $39
    ld e, h                                       ; $4e1f: $5c
    xor [hl]                                      ; $4e20: $ae
    rlca                                          ; $4e21: $07
    ld a, a                                       ; $4e22: $7f
    nop                                           ; $4e23: $00
    add c                                         ; $4e24: $81
    rst $08                                       ; $4e25: $cf
    db $10                                        ; $4e26: $10
    and l                                         ; $4e27: $a5
    db $10                                        ; $4e28: $10
    ld e, d                                       ; $4e29: $5a
    jr nz, jr_09e_4de1                            ; $4e2a: $20 $b5

    nop                                           ; $4e2c: $00
    ret nz                                        ; $4e2d: $c0

    ld c, e                                       ; $4e2e: $4b
    ld [hl], b                                    ; $4e2f: $70
    jr c, jr_09e_4e0f                             ; $4e30: $38 $dd

    cp $07                                        ; $4e32: $fe $07
    db $dd                                        ; $4e34: $dd
    nop                                           ; $4e35: $00
    add hl, hl                                    ; $4e36: $29
    rst $10                                       ; $4e37: $d7
    jr jr_09e_4e0e                                ; $4e38: $18 $d4

    add hl, hl                                    ; $4e3a: $29
    cp $40                                        ; $4e3b: $fe $40
    sbc e                                         ; $4e3d: $9b
    nop                                           ; $4e3e: $00
    db $e4                                        ; $4e3f: $e4
    ld h, d                                       ; $4e40: $62
    db $fc                                        ; $4e41: $fc
    dec sp                                        ; $4e42: $3b
    db $fc                                        ; $4e43: $fc
    sub $af                                       ; $4e44: $d6 $af
    ld a, [hl]                                    ; $4e46: $7e
    nop                                           ; $4e47: $00
    push bc                                       ; $4e48: $c5
    rra                                           ; $4e49: $1f
    or $8b                                        ; $4e4a: $f6 $8b
    db $fc                                        ; $4e4c: $fc
    rrca                                          ; $4e4d: $0f
    ld hl, sp-$46                                 ; $4e4e: $f8 $ba
    nop                                           ; $4e50: $00
    db $dd                                        ; $4e51: $dd
    ldh [$7f], a                                  ; $4e52: $e0 $7f
    jr jr_09e_4eb5                                ; $4e54: $18 $5f

    adc a                                         ; $4e56: $8f
    ld h, a                                       ; $4e57: $67
    ld a, a                                       ; $4e58: $7f
    add b                                         ; $4e59: $80
    ld d, b                                       ; $4e5a: $50
    rlca                                          ; $4e5b: $07
    sbc $00                                       ; $4e5c: $de $00
    and a                                         ; $4e5e: $a7
    db $10                                        ; $4e5f: $10
    add hl, sp                                    ; $4e60: $39
    rst $00                                       ; $4e61: $c7
    inc h                                         ; $4e62: $24
    nop                                           ; $4e63: $00
    rst $38                                       ; $4e64: $ff
    sub b                                         ; $4e65: $90
    ld a, a                                       ; $4e66: $7f
    inc de                                        ; $4e67: $13
    db $fc                                        ; $4e68: $fc
    ret nz                                        ; $4e69: $c0

    cp a                                          ; $4e6a: $bf
    ld sp, hl                                     ; $4e6b: $f9
    nop                                           ; $4e6c: $00
    ld l, a                                       ; $4e6d: $6f
    ld a, b                                       ; $4e6e: $78
    rra                                           ; $4e6f: $1f
    ld d, [hl]                                    ; $4e70: $56
    rlca                                          ; $4e71: $07
    ld a, [hl]                                    ; $4e72: $7e
    add b                                         ; $4e73: $80
    scf                                           ; $4e74: $37
    nop                                           ; $4e75: $00
    add b                                         ; $4e76: $80
    ld l, e                                       ; $4e77: $6b
    add b                                         ; $4e78: $80
    ld d, c                                       ; $4e79: $51
    add b                                         ; $4e7a: $80
    ld [bc], a                                    ; $4e7b: $02
    add b                                         ; $4e7c: $80
    ret z                                         ; $4e7d: $c8

    ld c, $00                                     ; $4e7e: $0e $00
    ld bc, $8880                                  ; $4e80: $01 $80 $88
    jp Jump_000_040f                              ; $4e83: $c3 $0f $04


    db $10                                        ; $4e86: $10
    ld d, c                                       ; $4e87: $51
    dec hl                                        ; $4e88: $2b
    ld [bc], a                                    ; $4e89: $02
    add e                                         ; $4e8a: $83
    pop hl                                        ; $4e8b: $e1
    ld e, a                                       ; $4e8c: $5f
    nop                                           ; $4e8d: $00
    rst $00                                       ; $4e8e: $c7
    rst $38                                       ; $4e8f: $ff
    db $e3                                        ; $4e90: $e3
    rst $18                                       ; $4e91: $df
    inc b                                         ; $4e92: $04
    ld c, b                                       ; $4e93: $48
    ld a, c                                       ; $4e94: $79
    dec hl                                        ; $4e95: $2b
    ld bc, $00c4                                  ; $4e96: $01 $c4 $00
    and c                                         ; $4e99: $a1
    nop                                           ; $4e9a: $00
    ret z                                         ; $4e9b: $c8

    nop                                           ; $4e9c: $00
    ld [de], a                                    ; $4e9d: $12
    ld a, [hl-]                                   ; $4e9e: $3a
    ld [hl], $40                                  ; $4e9f: $36 $40
    ld [de], a                                    ; $4ea1: $12
    ld b, e                                       ; $4ea2: $43
    ld b, $48                                     ; $4ea3: $06 $48
    nop                                           ; $4ea5: $00
    and d                                         ; $4ea6: $a2
    nop                                           ; $4ea7: $00
    xor l                                         ; $4ea8: $ad
    nop                                           ; $4ea9: $00
    nop                                           ; $4eaa: $00
    ld e, [hl]                                    ; $4eab: $5e
    add b                                         ; $4eac: $80
    xor l                                         ; $4ead: $ad
    nop                                           ; $4eae: $00
    ld e, a                                       ; $4eaf: $5f
    add b                                         ; $4eb0: $80
    ld a, $81                                     ; $4eb1: $3e $81
    nop                                           ; $4eb3: $00
    rst $30                                       ; $4eb4: $f7

jr_09e_4eb5:
    add b                                         ; $4eb5: $80
    ld d, l                                       ; $4eb6: $55
    xor d                                         ; $4eb7: $aa
    ld a, [$9285]                                 ; $4eb8: $fa $85 $92
    db $fc                                        ; $4ebb: $fc
    nop                                           ; $4ebc: $00
    ld [$b871], a                                 ; $4ebd: $ea $71 $b8
    ld e, $f6                                     ; $4ec0: $1e $f6
    rlca                                          ; $4ec2: $07
    ld a, c                                       ; $4ec3: $79
    rlca                                          ; $4ec4: $07
    ld [bc], a                                    ; $4ec5: $02
    sub [hl]                                      ; $4ec6: $96
    ld l, b                                       ; $4ec7: $68
    daa                                           ; $4ec8: $27
    ret z                                         ; $4ec9: $c8

    ld l, c                                       ; $4eca: $69
    sub [hl]                                      ; $4ecb: $96
    or b                                          ; $4ecc: $b0
    ld e, l                                       ; $4ecd: $5d
    ld [$0540], a                                 ; $4ece: $ea $40 $05
    or b                                          ; $4ed1: $b0
    ld e, l                                       ; $4ed2: $5d
    xor [hl]                                      ; $4ed3: $ae
    rst $38                                       ; $4ed4: $ff
    xor b                                         ; $4ed5: $a8
    ld d, a                                       ; $4ed6: $57
    inc hl                                        ; $4ed7: $23
    db $fc                                        ; $4ed8: $fc
    ld bc, $e05a                                  ; $4ed9: $01 $5a $e0
    or h                                          ; $4edc: $b4
    ret nz                                        ; $4edd: $c0

    xor b                                         ; $4ede: $a8
    ret nz                                        ; $4edf: $c0

    or b                                          ; $4ee0: $b0
    inc b                                         ; $4ee1: $04
    db $10                                        ; $4ee2: $10
    ld d, b                                       ; $4ee3: $50
    nop                                           ; $4ee4: $00
    ld hl, $a001                                  ; $4ee5: $21 $01 $a0
    sbc a                                         ; $4ee8: $9f
    ld b, $60                                     ; $4ee9: $06 $60
    nop                                           ; $4eeb: $00
    and b                                         ; $4eec: $a0
    ld b, b                                       ; $4eed: $40
    or b                                          ; $4eee: $b0
    and [hl]                                      ; $4eef: $a6
    ld c, $a0                                     ; $4ef0: $0e $a0
    jr jr_09e_4ef4                                ; $4ef2: $18 $00

jr_09e_4ef4:
    inc b                                         ; $4ef4: $04
    ld [$c0aa], sp                                ; $4ef5: $08 $aa $c0
    sub l                                         ; $4ef8: $95
    ldh [rP1], a                                  ; $4ef9: $e0 $00
    xor e                                         ; $4efb: $ab
    ret nz                                        ; $4efc: $c0

    sub a                                         ; $4efd: $97
    pop hl                                        ; $4efe: $e1
    ld [bc], a                                    ; $4eff: $02
    nop                                           ; $4f00: $00
    dec d                                         ; $4f01: $15
    nop                                           ; $4f02: $00
    nop                                           ; $4f03: $00
    db $eb                                        ; $4f04: $eb
    nop                                           ; $4f05: $00
    cp h                                          ; $4f06: $bc
    ld b, a                                       ; $4f07: $47
    and $18                                       ; $4f08: $e6 $18
    ret nc                                        ; $4f0a: $d0

    ld h, b                                       ; $4f0b: $60
    nop                                           ; $4f0c: $00
    and b                                         ; $4f0d: $a0
    ret nz                                        ; $4f0e: $c0

    ret nz                                        ; $4f0f: $c0

    nop                                           ; $4f10: $00
    xor e                                         ; $4f11: $ab
    ret nc                                        ; $4f12: $d0

    ld h, h                                       ; $4f13: $64
    ldh a, [rP1]                                  ; $4f14: $f0 $00
    add hl, de                                    ; $4f16: $19
    cp $35                                        ; $4f17: $fe $35
    sbc $d9                                       ; $4f19: $de $d9
    rst $30                                       ; $4f1b: $f7
    sub a                                         ; $4f1c: $97
    ld l, a                                       ; $4f1d: $6f
    nop                                           ; $4f1e: $00
    add e                                         ; $4f1f: $83
    ld a, a                                       ; $4f20: $7f
    adc b                                         ; $4f21: $88
    rst $30                                       ; $4f22: $f7
    ld e, a                                       ; $4f23: $5f
    add hl, bc                                    ; $4f24: $09
    sbc d                                         ; $4f25: $9a
    jr nc, jr_09e_4f28                            ; $4f26: $30 $00

jr_09e_4f28:
    pop hl                                        ; $4f28: $e1
    ld h, $6a                                     ; $4f29: $26 $6a
    ld d, h                                       ; $4f2b: $54
    sub d                                         ; $4f2c: $92
    push bc                                       ; $4f2d: $c5
    ld h, e                                       ; $4f2e: $63

Call_09e_4f2f:
    db $f4                                        ; $4f2f: $f4
    add hl, bc                                    ; $4f30: $09
    add hl, sp                                    ; $4f31: $39
    sbc $97                                       ; $4f32: $de $97
    cp $90                                        ; $4f34: $fe $90
    ld e, b                                       ; $4f36: $58
    ld c, d                                       ; $4f37: $4a
    cp a                                          ; $4f38: $bf
    or b                                          ; $4f39: $b0
    ld e, l                                       ; $4f3a: $5d
    nop                                           ; $4f3b: $00
    cp $ff                                        ; $4f3c: $fe $ff
    adc [hl]                                      ; $4f3e: $8e
    pop af                                        ; $4f3f: $f1
    ld sp, hl                                     ; $4f40: $f9
    ld l, [hl]                                    ; $4f41: $6e
    cp b                                          ; $4f42: $b8
    sbc a                                         ; $4f43: $9f
    nop                                           ; $4f44: $00
    ld a, [$ff07]                                 ; $4f45: $fa $07 $ff
    ld bc, $803d                                  ; $4f48: $01 $3d $80
    ld e, l                                       ; $4f4b: $5d
    ld [bc], a                                    ; $4f4c: $02
    nop                                           ; $4f4d: $00
    cp c                                          ; $4f4e: $b9
    rst $00                                       ; $4f4f: $c7
    and c                                         ; $4f50: $a1
    ld e, [hl]                                    ; $4f51: $5e
    ld d, [hl]                                    ; $4f52: $56
    and c                                         ; $4f53: $a1
    db $eb                                        ; $4f54: $eb
    ld b, c                                       ; $4f55: $41
    nop                                           ; $4f56: $00
    halt                                          ; $4f57: $76
    jp $c32a                                      ; $4f58: $c3 $2a $c3


    add $83                                       ; $4f5b: $c6 $83

jr_09e_4f5d:
    jp nz, Jump_000_0083                          ; $4f5d: $c2 $83 $00

    ld b, $83                                     ; $4f60: $06 $83
    cp a                                          ; $4f62: $bf
    ld a, a                                       ; $4f63: $7f
    rst $00                                       ; $4f64: $c7
    ld hl, sp+$7a                                 ; $4f65: $f8 $7a
    add b                                         ; $4f67: $80
    nop                                           ; $4f68: $00
    rst $38                                       ; $4f69: $ff
    nop                                           ; $4f6a: $00
    db $fd                                        ; $4f6b: $fd
    ld [bc], a                                    ; $4f6c: $02
    ld a, [$7d07]                                 ; $4f6d: $fa $07 $7d
    add d                                         ; $4f70: $82
    ld b, b                                       ; $4f71: $40
    rst $38                                       ; $4f72: $ff
    add b                                         ; $4f73: $80
    rlca                                          ; $4f74: $07
    rst $38                                       ; $4f75: $ff
    nop                                           ; $4f76: $00
    ld bc, $5400                                  ; $4f77: $01 $00 $54
    nop                                           ; $4f7a: $00
    add b                                         ; $4f7b: $80
    ld b, e                                       ; $4f7c: $43
    ld b, $00                                     ; $4f7d: $06 $00
    ld sp, hl                                     ; $4f7f: $f9
    rlca                                          ; $4f80: $07
    db $fc                                        ; $4f81: $fc
    inc bc                                        ; $4f82: $03
    rlca                                          ; $4f83: $07
    ld sp, hl                                     ; $4f84: $f9
    nop                                           ; $4f85: $00
    xor c                                         ; $4f86: $a9
    ld d, a                                       ; $4f87: $57
    or h                                          ; $4f88: $b4
    dec bc                                        ; $4f89: $0b
    ld e, d                                       ; $4f8a: $5a
    rlca                                          ; $4f8b: $07
    xor a                                         ; $4f8c: $af
    ld [bc], a                                    ; $4f8d: $02
    ld bc, $0257                                  ; $4f8e: $01 $57 $02
    cpl                                           ; $4f91: $2f
    ld [bc], a                                    ; $4f92: $02
    ld d, [hl]                                    ; $4f93: $56
    inc bc                                        ; $4f94: $03
    adc [hl]                                      ; $4f95: $8e
    ld a, [hl+]                                   ; $4f96: $2a
    inc bc                                        ; $4f97: $03
    db $10                                        ; $4f98: $10
    rrca                                          ; $4f99: $0f
    inc bc                                        ; $4f9a: $03
    ld b, $04                                     ; $4f9b: $06 $04
    nop                                           ; $4f9d: $00
    add [hl]                                      ; $4f9e: $86
    inc bc                                        ; $4f9f: $03
    adc a                                         ; $4fa0: $8f
    inc bc                                        ; $4fa1: $03
    nop                                           ; $4fa2: $00
    sub $03                                       ; $4fa3: $d6 $03
    ld a, a                                       ; $4fa5: $7f
    add b                                         ; $4fa6: $80
    cp a                                          ; $4fa7: $bf
    ld b, b                                       ; $4fa8: $40
    ld a, [hl]                                    ; $4fa9: $7e
    add e                                         ; $4faa: $83
    nop                                           ; $4fab: $00
    cp h                                          ; $4fac: $bc
    ld b, e                                       ; $4fad: $43
    ld l, e                                       ; $4fae: $6b
    add b                                         ; $4faf: $80
    or [hl]                                       ; $4fb0: $b6
    ld b, b                                       ; $4fb1: $40
    ld e, d                                       ; $4fb2: $5a
    and l                                         ; $4fb3: $a5
    jr nz, jr_09e_4f5d                            ; $4fb4: $20 $a7

    ld e, a                                       ; $4fb6: $5f
    rrca                                          ; $4fb7: $0f
    ld e, $fe                                     ; $4fb8: $1e $fe
    ld bc, $03fd                                  ; $4fba: $01 $fd $03
    xor a                                         ; $4fbd: $af
    nop                                           ; $4fbe: $00
    nop                                           ; $4fbf: $00
    xor a                                         ; $4fc0: $af
    ld d, b                                       ; $4fc1: $50
    push hl                                       ; $4fc2: $e5
    ld a, [$03ad]                                 ; $4fc3: $fa $ad $03
    ld a, b                                       ; $4fc6: $78
    inc c                                         ; $4fc7: $0c
    rra                                           ; $4fc8: $1f
    sbc l                                         ; $4fc9: $9d
    ldh [$ea], a                                  ; $4fca: $e0 $ea
    sub $00                                       ; $4fcc: $d6 $00
    ret nz                                        ; $4fce: $c0

    ld [bc], a                                    ; $4fcf: $02
    ld [$000c], sp                                ; $4fd0: $08 $0c $00
    nop                                           ; $4fd3: $00
    xor $83                                       ; $4fd4: $ee $83
    ld [hl], l                                    ; $4fd6: $75
    jp Jump_000_31ea                              ; $4fd7: $c3 $ea $31


    or l                                          ; $4fda: $b5
    nop                                           ; $4fdb: $00
    ld a, [de]                                    ; $4fdc: $1a
    ld e, d                                       ; $4fdd: $5a
    dec c                                         ; $4fde: $0d
    xor c                                         ; $4fdf: $a9
    ld b, $14                                     ; $4fe0: $06 $14
    inc bc                                        ; $4fe2: $03
    ld c, $00                                     ; $4fe3: $0e $00
    ld bc, $fff8                                  ; $4fe5: $01 $f8 $ff
    ld d, h                                       ; $4fe8: $54
    rst $38                                       ; $4fe9: $ff
    ld [$3dff], a                                 ; $4fea: $ea $ff $3d
    ld h, d                                       ; $4fed: $62
    rst $38                                       ; $4fee: $ff
    and c                                         ; $4fef: $a1
    nop                                           ; $4ff0: $00
    ld a, [bc]                                    ; $4ff1: $0a
    nop                                           ; $4ff2: $00
    adc d                                         ; $4ff3: $8a
    rst $38                                       ; $4ff4: $ff
    ld b, $50                                     ; $4ff5: $06 $50
    ld d, $40                                     ; $4ff7: $16 $40
    xor b                                         ; $4ff9: $a8
    ld a, [hl]                                    ; $4ffa: $7e
    dec b                                         ; $4ffb: $05
    push af                                       ; $4ffc: $f5
    add d                                         ; $4ffd: $82
    ld [bc], a                                    ; $4ffe: $02
    ret c                                         ; $4fff: $d8

    ld b, b                                       ; $5000: $40
    ld h, [hl]                                    ; $5001: $66
    inc de                                        ; $5002: $13
    call z, $0055                                 ; $5003: $cc $55 $00
    xor d                                         ; $5006: $aa
    adc d                                         ; $5007: $8a
    ld [hl], l                                    ; $5008: $75
    ld h, c                                       ; $5009: $61
    ld e, $30                                     ; $500a: $1e $30
    rrca                                          ; $500c: $0f
    sbc c                                         ; $500d: $99
    nop                                           ; $500e: $00
    rlca                                          ; $500f: $07
    ld d, l                                       ; $5010: $55
    dec bc                                        ; $5011: $0b
    cp c                                          ; $5012: $b9
    rlca                                          ; $5013: $07
    push de                                       ; $5014: $d5
    dec bc                                        ; $5015: $0b
    ld sp, hl                                     ; $5016: $f9
    and b                                         ; $5017: $a0
    inc b                                         ; $5018: $04
    db $10                                        ; $5019: $10
    push af                                       ; $501a: $f5
    inc b                                         ; $501b: $04
    jr nz, jr_09e_5073                            ; $501c: $20 $55

    xor e                                         ; $501e: $ab

jr_09e_501f:
    add hl, hl                                    ; $501f: $29
    rst $10                                       ; $5020: $d7
    push bc                                       ; $5021: $c5
    jr nz, jr_09e_501f                            ; $5022: $20 $fb

    add hl, de                                    ; $5024: $19
    ld a, h                                       ; $5025: $7c
    ld b, $ab                                     ; $5026: $06 $ab
    rst $38                                       ; $5028: $ff
    ld a, [hl]                                    ; $5029: $7e
    rst $38                                       ; $502a: $ff
    push bc                                       ; $502b: $c5
    add b                                         ; $502c: $80
    ld [hl], b                                    ; $502d: $70
    inc b                                         ; $502e: $04
    push de                                       ; $502f: $d5
    xor d                                         ; $5030: $aa
    ld [hl+], a                                   ; $5031: $22
    db $dd                                        ; $5032: $dd
    call nc, $88ab                                ; $5033: $d4 $ab $88
    dec hl                                        ; $5036: $2b
    rst $38                                       ; $5037: $ff
    add d                                         ; $5038: $82
    ld [de], a                                    ; $5039: $12
    nop                                           ; $503a: $00
    rst $18                                       ; $503b: $df
    db $ed                                        ; $503c: $ed
    dec c                                         ; $503d: $0d
    rla                                           ; $503e: $17
    reti                                          ; $503f: $d9


    dec b                                         ; $5040: $05
    inc b                                         ; $5041: $04
    ld c, b                                       ; $5042: $48
    ret nz                                        ; $5043: $c0

    call z, $c41e                                 ; $5044: $cc $1e $c4
    ld [hl+], a                                   ; $5047: $22
    pop bc                                        ; $5048: $c1
    cp a                                          ; $5049: $bf
    add e                                         ; $504a: $83
    rst $38                                       ; $504b: $ff
    ld b, c                                       ; $504c: $41
    cp a                                          ; $504d: $bf
    and b                                         ; $504e: $a0
    or b                                          ; $504f: $b0
    ld a, [hl+]                                   ; $5050: $2a
    xor e                                         ; $5051: $ab
    dec e                                         ; $5052: $1d
    ld b, $9e                                     ; $5053: $06 $9e
    rst $38                                       ; $5055: $ff
    ld l, l                                       ; $5056: $6d
    di                                            ; $5057: $f3
    cp a                                          ; $5058: $bf
    nop                                           ; $5059: $00
    ret nz                                        ; $505a: $c0

    ei                                            ; $505b: $fb
    add h                                         ; $505c: $84
    or [hl]                                       ; $505d: $b6
    ret                                           ; $505e: $c9


    adc h                                         ; $505f: $8c
    di                                            ; $5060: $f3
    pop bc                                        ; $5061: $c1
    nop                                           ; $5062: $00
    rst $38                                       ; $5063: $ff
    cp $ff                                        ; $5064: $fe $ff
    db $ed                                        ; $5066: $ed
    sbc e                                         ; $5067: $9b
    sbc e                                         ; $5068: $9b
    rst $30                                       ; $5069: $f7
    push af                                       ; $506a: $f5
    add b                                         ; $506b: $80
    jr z, @+$08                                   ; $506c: $28 $06

    pop bc                                        ; $506e: $c1
    rst $38                                       ; $506f: $ff
    xor e                                         ; $5070: $ab
    rst $30                                       ; $5071: $f7
    ld d, l                                       ; $5072: $55

jr_09e_5073:
    xor $ab                                       ; $5073: $ee $ab
    jr nz, @-$21                                  ; $5075: $20 $dd

    rst $38                                       ; $5077: $ff
    add [hl]                                      ; $5078: $86
    ld b, $fb                                     ; $5079: $06 $fb
    db $fc                                        ; $507b: $fc
    rst $30                                       ; $507c: $f7
    ei                                            ; $507d: $fb
    ld a, a                                       ; $507e: $7f
    nop                                           ; $507f: $00
    push af                                       ; $5080: $f5
    xor a                                         ; $5081: $af
    ld a, [c]                                     ; $5082: $f2
    ld a, a                                       ; $5083: $7f
    db $e4                                        ; $5084: $e4
    xor a                                         ; $5085: $af
    ldh a, [$df]                                  ; $5086: $f0 $df
    nop                                           ; $5088: $00
    jp hl                                         ; $5089: $e9


    ld l, d                                       ; $508a: $6a
    db $fd                                        ; $508b: $fd
    cp c                                          ; $508c: $b9
    ld a, [hl]                                    ; $508d: $7e
    call c, $cf3f                                 ; $508e: $dc $3f $cf
    nop                                           ; $5091: $00
    ccf                                           ; $5092: $3f
    adc a                                         ; $5093: $8f
    ld a, a                                       ; $5094: $7f
    xor l                                         ; $5095: $ad
    ld e, [hl]                                    ; $5096: $5e
    ld e, e                                       ; $5097: $5b
    cp h                                          ; $5098: $bc
    and $08                                       ; $5099: $e6 $08
    ld sp, hl                                     ; $509b: $f9
    or c                                          ; $509c: $b1
    cp $5f                                        ; $509d: $fe $5f
    ld [c], a                                     ; $509f: $e2
    nop                                           ; $50a0: $00
    ld d, l                                       ; $50a1: $55
    rst $38                                       ; $50a2: $ff
    xor $00                                       ; $50a3: $ee $00
    rst $38                                       ; $50a5: $ff
    ret c                                         ; $50a6: $d8

    db $fc                                        ; $50a7: $fc
    cp $ff                                        ; $50a8: $fe $ff
    xor e                                         ; $50aa: $ab
    ld a, h                                       ; $50ab: $7c
    jp c, $fd08                                   ; $50ac: $da $08 $fd

    xor c                                         ; $50af: $a9
    cp $d4                                        ; $50b0: $fe $d4
    ld c, d                                       ; $50b2: $4a
    nop                                           ; $50b3: $00
    rrca                                          ; $50b4: $0f
    ccf                                           ; $50b5: $3f
    ld b, [hl]                                    ; $50b6: $46
    nop                                           ; $50b7: $00
    rst $28                                       ; $50b8: $ef
    add l                                         ; $50b9: $85
    adc a                                         ; $50ba: $8f
    ld [hl], b                                    ; $50bb: $70
    db $fc                                        ; $50bc: $fc
    rst $38                                       ; $50bd: $ff
    rst $38                                       ; $50be: $ff
    ld hl, sp+$00                                 ; $50bf: $f8 $00
    rst $38                                       ; $50c1: $ff
    rst $08                                       ; $50c2: $cf
    rst $38                                       ; $50c3: $ff
    sbc e                                         ; $50c4: $9b
    rst $38                                       ; $50c5: $ff
    or a                                          ; $50c6: $b7
    rst $38                                       ; $50c7: $ff
    ld l, e                                       ; $50c8: $6b
    nop                                           ; $50c9: $00
    rst $38                                       ; $50ca: $ff
    add $ff                                       ; $50cb: $c6 $ff
    ld b, $9f                                     ; $50cd: $06 $9f
    ld b, l                                       ; $50cf: $45
    rst $30                                       ; $50d0: $f7
    rrca                                          ; $50d1: $0f
    nop                                           ; $50d2: $00
    adc a                                         ; $50d3: $8f
    ld hl, sp-$03                                 ; $50d4: $f8 $fd
    or b                                          ; $50d6: $b0
    ld hl, sp+$60                                 ; $50d7: $f8 $60
    or $e0                                        ; $50d9: $f6 $e0
    nop                                           ; $50db: $00
    ei                                            ; $50dc: $fb
    and c                                         ; $50dd: $a1
    rst $38                                       ; $50de: $ff
    inc e                                         ; $50df: $1c
    inc e                                         ; $50e0: $1c
    and e                                         ; $50e1: $a3
    cp a                                          ; $50e2: $bf
    db $ec                                        ; $50e3: $ec
    nop                                           ; $50e4: $00
    di                                            ; $50e5: $f3
    sub [hl]                                      ; $50e6: $96
    ld sp, hl                                     ; $50e7: $f9
    and e                                         ; $50e8: $a3
    call c, $f7fa                                 ; $50e9: $dc $fa $f7
    db $ed                                        ; $50ec: $ed
    db $10                                        ; $50ed: $10
    dec de                                        ; $50ee: $1b
    push af                                       ; $50ef: $f5
    ld c, a                                       ; $50f0: $4f
    jr nc, jr_09e_5109                            ; $50f1: $30 $16

    add b                                         ; $50f3: $80
    ld b, b                                       ; $50f4: $40
    ret nz                                        ; $50f5: $c0

    ld a, b                                       ; $50f6: $78
    nop                                           ; $50f7: $00
    ld hl, sp-$4c                                 ; $50f8: $f8 $b4
    call z, $867a                                 ; $50fa: $cc $7a $86
    call Call_09e_4033                            ; $50fd: $cd $33 $40

Call_09e_5100:
    nop                                           ; $5100: $00
    rst $38                                       ; $5101: $ff
    jr z, jr_09e_5183                             ; $5102: $28 $7f

    ld d, l                                       ; $5104: $55
    cp [hl]                                       ; $5105: $be
    and d                                         ; $5106: $a2
    ld d, a                                       ; $5107: $57
    ld b, h                                       ; $5108: $44

jr_09e_5109:
    nop                                           ; $5109: $00
    xor e                                         ; $510a: $ab
    ld a, [bc]                                    ; $510b: $0a
    push af                                       ; $510c: $f5
    ld b, c                                       ; $510d: $41
    cp [hl]                                       ; $510e: $be
    ld [bc], a                                    ; $510f: $02
    db $fd                                        ; $5110: $fd
    rst $38                                       ; $5111: $ff
    nop                                           ; $5112: $00
    add a                                         ; $5113: $87
    sbc $27                                       ; $5114: $de $27
    or a                                          ; $5116: $b7
    ld c, a                                       ; $5117: $4f
    ld l, e                                       ; $5118: $6b
    sbc a                                         ; $5119: $9f
    dec e                                         ; $511a: $1d
    nop                                           ; $511b: $00
    rst $38                                       ; $511c: $ff
    ld a, [$ddff]                                 ; $511d: $fa $ff $dd
    ccf                                           ; $5120: $3f
    or $0f                                        ; $5121: $f6 $0f
    sbc a                                         ; $5123: $9f
    nop                                           ; $5124: $00
    pop hl                                        ; $5125: $e1
    di                                            ; $5126: $f3
    dec c                                         ; $5127: $0d
    ld d, l                                       ; $5128: $55
    ei                                            ; $5129: $fb
    cp d                                          ; $512a: $ba
    rst $20                                       ; $512b: $e7
    push de                                       ; $512c: $d5
    ld bc, $bcfe                                  ; $512d: $01 $fe $bc
    rst $38                                       ; $5130: $ff
    ld e, e                                       ; $5131: $5b
    rst $20                                       ; $5132: $e7
    cp $b9                                        ; $5133: $fe $b9
    ld [hl], b                                    ; $5135: $70
    ld c, $00                                     ; $5136: $0e $00
    ld hl, sp-$08                                 ; $5138: $f8 $f8
    and h                                         ; $513a: $a4
    ld e, h                                       ; $513b: $5c
    halt                                          ; $513c: $76
    adc [hl]                                      ; $513d: $8e
    cp d                                          ; $513e: $ba
    ld b, [hl]                                    ; $513f: $46
    nop                                           ; $5140: $00
    ld d, $ea                                     ; $5141: $16 $ea
    adc d                                         ; $5143: $8a
    or $55                                        ; $5144: $f6 $55
    xor e                                         ; $5146: $ab
    ld a, [bc]                                    ; $5147: $0a
    push de                                       ; $5148: $d5
    nop                                           ; $5149: $00
    ld d, l                                       ; $514a: $55
    xor d                                         ; $514b: $aa
    ld a, [hl+]                                   ; $514c: $2a
    push de                                       ; $514d: $d5
    ld bc, $aafe                                  ; $514e: $01 $fe $aa
    ld [hl], l                                    ; $5151: $75
    nop                                           ; $5152: $00
    nop                                           ; $5153: $00
    cp $08                                        ; $5154: $fe $08
    rst $30                                       ; $5156: $f7
    db $dd                                        ; $5157: $dd
    daa                                           ; $5158: $27
    and a                                         ; $5159: $a7
    ld e, a                                       ; $515a: $5f
    inc b                                         ; $515b: $04
    ld c, l                                       ; $515c: $4d
    cp a                                          ; $515d: $bf
    sbc [hl]                                      ; $515e: $9e
    ld a, a                                       ; $515f: $7f
    ld a, e                                       ; $5160: $7b
    ld c, $07                                     ; $5161: $0e $07
    xor [hl]                                      ; $5163: $ae
    rst $38                                       ; $5164: $ff
    nop                                           ; $5165: $00
    ld e, l                                       ; $5166: $5d
    cp $7b                                        ; $5167: $fe $7b
    and h                                         ; $5169: $a4
    ld h, l                                       ; $516a: $65
    cp [hl]                                       ; $516b: $be
    dec a                                         ; $516c: $3d
    jp c, $9f00                                   ; $516d: $da $00 $9f

    ldh [rKEY1], a                                ; $5170: $e0 $4d
    di                                            ; $5172: $f3
    ld [c], a                                     ; $5173: $e2
    rst $38                                       ; $5174: $ff
    sbc h                                         ; $5175: $9c
    ld a, a                                       ; $5176: $7f
    nop                                           ; $5177: $00
    db $f4                                        ; $5178: $f4
    rrca                                          ; $5179: $0f
    ld e, a                                       ; $517a: $5f
    rst $38                                       ; $517b: $ff
    and $79                                       ; $517c: $e6 $79
    ld e, e                                       ; $517e: $5b
    rst $28                                       ; $517f: $ef
    nop                                           ; $5180: $00
    sbc $eb                                       ; $5181: $de $eb

jr_09e_5183:
    ld l, [hl]                                    ; $5183: $6e
    push af                                       ; $5184: $f5
    cpl                                           ; $5185: $2f
    di                                            ; $5186: $f3
    ld a, d                                       ; $5187: $7a
    db $fd                                        ; $5188: $fd
    ld b, b                                       ; $5189: $40
    add [hl]                                      ; $518a: $86
    ret nz                                        ; $518b: $c0

    ld b, $80                                     ; $518c: $06 $80
    add b                                         ; $518e: $80
    ret nz                                        ; $518f: $c0

    ld b, b                                       ; $5190: $40
    ldh [$a0], a                                  ; $5191: $e0 $a0
    nop                                           ; $5193: $00
    ldh [$a0], a                                  ; $5194: $e0 $a0
    and b                                         ; $5196: $a0
    ldh [$d8], a                                  ; $5197: $e0 $d8
    ld hl, sp-$5c                                 ; $5199: $f8 $a4
    call c, $bb00                                 ; $519b: $dc $00 $bb
    db $fc                                        ; $519e: $fc
    db $f4                                        ; $519f: $f4
    ei                                            ; $51a0: $fb
    db $fd                                        ; $51a1: $fd
    cp $f9                                        ; $51a2: $fe $f9
    cp $00                                        ; $51a4: $fe $00
    dec l                                         ; $51a6: $2d
    ld a, a                                       ; $51a7: $7f
    ld d, $3f                                     ; $51a8: $16 $3f
    dec bc                                        ; $51aa: $0b
    ld e, a                                       ; $51ab: $5f
    dec c                                         ; $51ac: $0d
    ld e, a                                       ; $51ad: $5f
    nop                                           ; $51ae: $00
    ld a, e                                       ; $51af: $7b
    add a                                         ; $51b0: $87
    or $0b                                        ; $51b1: $f6 $0b
    ld [$5217], a                                 ; $51b3: $ea $17 $52
    rst $28                                       ; $51b6: $ef
    nop                                           ; $51b7: $00
    daa                                           ; $51b8: $27
    rst $18                                       ; $51b9: $df
    ld c, a                                       ; $51ba: $4f
    cp a                                          ; $51bb: $bf
    ld a, [hl-]                                   ; $51bc: $3a
    rst $38                                       ; $51bd: $ff
    rst $10                                       ; $51be: $d7
    rst $38                                       ; $51bf: $ff
    nop                                           ; $51c0: $00
    ld a, l                                       ; $51c1: $7d
    add e                                         ; $51c2: $83
    cp [hl]                                       ; $51c3: $be
    ld b, c                                       ; $51c4: $41

jr_09e_51c5:
    ld d, a                                       ; $51c5: $57
    xor b                                         ; $51c6: $a8
    or d                                          ; $51c7: $b2
    ld e, l                                       ; $51c8: $5d
    db $10                                        ; $51c9: $10
    ld c, h                                       ; $51ca: $4c
    rst $38                                       ; $51cb: $ff
    and e                                         ; $51cc: $a3
    ld h, b                                       ; $51cd: $60
    inc d                                         ; $51ce: $14
    ld d, d                                       ; $51cf: $52
    xor [hl]                                      ; $51d0: $ae
    xor d                                         ; $51d1: $aa
    sub $00                                       ; $51d2: $d6 $00
    and d                                         ; $51d4: $a2
    cp $a4                                        ; $51d5: $fe $a4
    db $fc                                        ; $51d7: $fc
    sbc h                                         ; $51d8: $9c
    db $fc                                        ; $51d9: $fc
    ld a, [hl+]                                   ; $51da: $2a
    sbc $00                                       ; $51db: $de $00
    ld c, l                                       ; $51dd: $4d
    cp a                                          ; $51de: $bf
    dec de                                        ; $51df: $1b
    rst $38                                       ; $51e0: $ff
    nop                                           ; $51e1: $00
    xor $aa                                       ; $51e2: $ee $aa
    ld [hl], l                                    ; $51e4: $75
    nop                                           ; $51e5: $00
    ld d, c                                       ; $51e6: $51
    cp [hl]                                       ; $51e7: $be
    ld a, [hl+]                                   ; $51e8: $2a
    rst $10                                       ; $51e9: $d7
    ld d, l                                       ; $51ea: $55
    xor e                                         ; $51eb: $ab
    jr z, jr_09e_51c5                             ; $51ec: $28 $d7

    nop                                           ; $51ee: $00
    inc d                                         ; $51ef: $14
    rst $28                                       ; $51f0: $ef
    xor d                                         ; $51f1: $aa
    ld e, a                                       ; $51f2: $5f
    db $10                                        ; $51f3: $10
    rst $38                                       ; $51f4: $ff
    and b                                         ; $51f5: $a0
    ld a, a                                       ; $51f6: $7f
    ld [$ff10], sp                                ; $51f7: $08 $10 $ff
    adc d                                         ; $51fa: $8a
    ld [hl], a                                    ; $51fb: $77
    stop                                          ; $51fc: $10 $00
    push de                                       ; $51fe: $d5
    inc d                                         ; $51ff: $14
    ld [$2214], a                                 ; $5200: $ea $14 $22
    push de                                       ; $5203: $d5
    push de                                       ; $5204: $d5
    sbc b                                         ; $5205: $98
    rlca                                          ; $5206: $07
    push de                                       ; $5207: $d5
    jr z, jr_09e_520c                             ; $5208: $28 $02

    sub l                                         ; $520a: $95
    rst $38                                       ; $520b: $ff

jr_09e_520c:
    inc d                                         ; $520c: $14
    and b                                         ; $520d: $a0
    rst $38                                       ; $520e: $ff
    ret nz                                        ; $520f: $c0

    cp h                                          ; $5210: $bc
    ld bc, $a855                                  ; $5211: $01 $55 $a8
    rlca                                          ; $5214: $07
    ld b, h                                       ; $5215: $44
    rst $38                                       ; $5216: $ff
    dec [hl]                                      ; $5217: $35
    ld a, [hl+]                                   ; $5218: $2a
    rst $38                                       ; $5219: $ff
    jr z, jr_09e_521c                             ; $521a: $28 $00

jr_09e_521c:
    ld [hl], h                                    ; $521c: $74
    inc d                                         ; $521d: $14
    ld d, l                                       ; $521e: $55
    ld a, [$1501]                                 ; $521f: $fa $01 $15
    ld e, h                                       ; $5222: $5c
    nop                                           ; $5223: $00
    ld h, b                                       ; $5224: $60
    dec d                                         ; $5225: $15
    ld [bc], a                                    ; $5226: $02
    ld [bc], a                                    ; $5227: $02
    halt                                          ; $5228: $76
    inc c                                         ; $5229: $0c
    db $ed                                        ; $522a: $ed
    rst $38                                       ; $522b: $ff
    ld a, e                                       ; $522c: $7b
    rst $38                                       ; $522d: $ff
    xor h                                         ; $522e: $ac
    ld [bc], a                                    ; $522f: $02
    rst $38                                       ; $5230: $ff
    ld d, b                                       ; $5231: $50
    db $fd                                        ; $5232: $fd
    or b                                          ; $5233: $b0
    ld a, [$54d0]                                 ; $5234: $fa $d0 $54
    ld bc, $00d0                                  ; $5237: $01 $d0 $00
    db $fd                                        ; $523a: $fd
    ld [hl], b                                    ; $523b: $70
    db $fd                                        ; $523c: $fd
    reti                                          ; $523d: $d9


    rst $38                                       ; $523e: $ff
    ccf                                           ; $523f: $3f
    rst $38                                       ; $5240: $ff
    dec de                                        ; $5241: $1b
    nop                                           ; $5242: $00
    ld a, a                                       ; $5243: $7f
    dec c                                         ; $5244: $0d
    cp a                                          ; $5245: $bf
    ld a, [de]                                    ; $5246: $1a
    ld a, a                                       ; $5247: $7f
    dec l                                         ; $5248: $2d
    rst $38                                       ; $5249: $ff
    ld e, d                                       ; $524a: $5a
    ld [$5aff], sp                                ; $524b: $08 $ff $5a
    ld a, a                                       ; $524e: $7f
    ld l, a                                       ; $524f: $6f
    jp nz, $b801                                  ; $5250: $c2 $01 $b8

jr_09e_5253:
    cp $50                                        ; $5253: $fe $50
    nop                                           ; $5255: $00
    db $fd                                        ; $5256: $fd
    xor b                                         ; $5257: $a8
    ld a, [$fc70]                                 ; $5258: $fa $70 $fc
    jr nz, jr_09e_5253                            ; $525b: $20 $f6

    cp b                                          ; $525d: $b8
    nop                                           ; $525e: $00
    ld sp, hl                                     ; $525f: $f9
    ld [hl], b                                    ; $5260: $70
    ldh a, [$f0]                                  ; $5261: $f0 $f0
    db $f4                                        ; $5263: $f4
    ld [hl], b                                    ; $5264: $70
    db $f4                                        ; $5265: $f4
    jr nc, jr_09e_5268                            ; $5266: $30 $00

jr_09e_5268:
    ld a, l                                       ; $5268: $7d
    add hl, hl                                    ; $5269: $29
    rst $38                                       ; $526a: $ff
    scf                                           ; $526b: $37
    ld a, a                                       ; $526c: $7f
    ld a, [hl+]                                   ; $526d: $2a
    rst $38                                       ; $526e: $ff
    db $f4                                        ; $526f: $f4
    nop                                           ; $5270: $00
    rst $38                                       ; $5271: $ff
    ld a, [hl+]                                   ; $5272: $2a
    ld a, l                                       ; $5273: $7d
    rla                                           ; $5274: $17
    cp h                                          ; $5275: $bc
    sbc d                                         ; $5276: $9a
    cp l                                          ; $5277: $bd
    sub l                                         ; $5278: $95
    ld [bc], a                                    ; $5279: $02
    rst $38                                       ; $527a: $ff
    db $eb                                        ; $527b: $eb
    rst $38                                       ; $527c: $ff
    ld [hl], a                                    ; $527d: $77
    rst $38                                       ; $527e: $ff
    cp [hl]                                       ; $527f: $be
    ld h, $05                                     ; $5280: $26 $05
    ld e, d                                       ; $5282: $5a
    nop                                           ; $5283: $00
    cp $7c                                        ; $5284: $fe $7c
    db $fc                                        ; $5286: $fc
    add sp, -$08                                  ; $5287: $e8 $f8
    call nc, $eafc                                ; $5289: $d4 $fc $ea
    nop                                           ; $528c: $00
    cp $76                                        ; $528d: $fe $76
    cp $9a                                        ; $528f: $fe $9a
    cp $01                                        ; $5291: $fe $01
    ld a, [$0020]                                 ; $5293: $fa $20 $00
    push af                                       ; $5296: $f5
    ld de, $20fe                                  ; $5297: $11 $fe $20
    rst $18                                       ; $529a: $df
    ld d, c                                       ; $529b: $51
    rst $38                                       ; $529c: $ff
    add d                                         ; $529d: $82
    add b                                         ; $529e: $80
    and $04                                       ; $529f: $e6 $04
    adc b                                         ; $52a1: $88
    rst $30                                       ; $52a2: $f7
    xor a                                         ; $52a3: $af
    jp nz, $e79c                                  ; $52a4: $c2 $9c $e7

    and l                                         ; $52a7: $a5
    nop                                           ; $52a8: $00
    sbc $b5                                       ; $52a9: $de $b5
    cp $c3                                        ; $52ab: $fe $c3
    ld a, [hl]                                    ; $52ad: $7e
    ld a, [hl-]                                   ; $52ae: $3a
    rst $38                                       ; $52af: $ff
    add [hl]                                      ; $52b0: $86
    nop                                           ; $52b1: $00
    ld a, a                                       ; $52b2: $7f
    ld b, c                                       ; $52b3: $41
    cp a                                          ; $52b4: $bf
    ret nz                                        ; $52b5: $c0

    nop                                           ; $52b6: $00
    adc [hl]                                      ; $52b7: $8e
    nop                                           ; $52b8: $00
    ld b, d                                       ; $52b9: $42
    jr nz, jr_09e_52c0                            ; $52ba: $20 $04

    and b                                         ; $52bc: $a0
    ld b, d                                       ; $52bd: $42
    ld b, $a8                                     ; $52be: $06 $a8

jr_09e_52c0:
    nop                                           ; $52c0: $00
    push de                                       ; $52c1: $d5
    nop                                           ; $52c2: $00
    ld l, d                                       ; $52c3: $6a
    nop                                           ; $52c4: $00
    add b                                         ; $52c5: $80
    add b                                         ; $52c6: $80
    rst $38                                       ; $52c7: $ff
    call nz, $c873                                ; $52c8: $c4 $73 $c8
    rra                                           ; $52cb: $1f
    xor [hl]                                      ; $52cc: $ae
    nop                                           ; $52cd: $00
    rlca                                          ; $52ce: $07
    ld d, c                                       ; $52cf: $51
    dec h                                         ; $52d0: $25
    xor a                                         ; $52d1: $af
    ld [bc], a                                    ; $52d2: $02
    or $04                                        ; $52d3: $f6 $04
    xor a                                         ; $52d5: $af
    nop                                           ; $52d6: $00
    ld [$c0b5], sp                                ; $52d7: $08 $b5 $c0
    sbc [hl]                                      ; $52da: $9e
    ldh [rOCPD], a                                ; $52db: $e0 $6b
    call nc, $0054                                ; $52dd: $d4 $54 $00
    db $eb                                        ; $52e0: $eb
    xor c                                         ; $52e1: $a9
    ld [hl], a                                    ; $52e2: $77
    ld [de], a                                    ; $52e3: $12
    rst $38                                       ; $52e4: $ff
    adc h                                         ; $52e5: $8c
    ld a, a                                       ; $52e6: $7f
    ld b, a                                       ; $52e7: $47
    nop                                           ; $52e8: $00
    cp a                                          ; $52e9: $bf
    ld e, c                                       ; $52ea: $59
    daa                                           ; $52eb: $27
    dec sp                                        ; $52ec: $3b
    add h                                         ; $52ed: $84
    rst $30                                       ; $52ee: $f7
    nop                                           ; $52ef: $00
    sbc e                                         ; $52f0: $9b
    nop                                           ; $52f1: $00
    jr nz, @+$3c                                  ; $52f2: $20 $3a

    call nz, Call_09e_7861                        ; $52f4: $c4 $61 $78
    cp e                                          ; $52f7: $bb
    inc e                                         ; $52f8: $1c
    ld e, [hl]                                    ; $52f9: $5e
    ld d, b                                       ; $52fa: $50
    rlca                                          ; $52fb: $07
    rst $18                                       ; $52fc: $df
    rrca                                          ; $52fd: $0f
    ld bc, $17e4                                  ; $52fe: $01 $e4 $17
    pop bc                                        ; $5301: $c1
    nop                                           ; $5302: $00
    ld b, d                                       ; $5303: $42
    add c                                         ; $5304: $81
    nop                                           ; $5305: $00
    xor c                                         ; $5306: $a9
    ld b, $05                                     ; $5307: $06 $05
    ld [bc], a                                    ; $5309: $02
    add d                                         ; $530a: $82
    ld bc, $8041                                  ; $530b: $01 $41 $80
    ld [bc], a                                    ; $530e: $02
    rlca                                          ; $530f: $07
    nop                                           ; $5310: $00
    dec [hl]                                      ; $5311: $35
    ld a, [bc]                                    ; $5312: $0a
    xor a                                         ; $5313: $af
    ld d, b                                       ; $5314: $50
    ld l, b                                       ; $5315: $68
    dec bc                                        ; $5316: $0b
    ld bc, $2c80                                  ; $5317: $01 $80 $2c
    inc bc                                        ; $531a: $03
    ld a, [hl]                                    ; $531b: $7e

jr_09e_531c:
    rst $38                                       ; $531c: $ff
    xor e                                         ; $531d: $ab
    ld a, a                                       ; $531e: $7f
    dec [hl]                                      ; $531f: $35
    rst $38                                       ; $5320: $ff
    xor d                                         ; $5321: $aa
    nop                                           ; $5322: $00
    ld a, a                                       ; $5323: $7f
    ld d, h                                       ; $5324: $54
    rst $38                                       ; $5325: $ff
    pop hl                                        ; $5326: $e1
    cp $68                                        ; $5327: $fe $68
    rst $38                                       ; $5329: $ff
    ld sp, $fe00                                  ; $532a: $31 $00 $fe
    ld de, $e1fe                                  ; $532d: $11 $fe $e1
    cp $42                                        ; $5330: $fe $42
    db $fc                                        ; $5332: $fc
    add [hl]                                      ; $5333: $86
    nop                                           ; $5334: $00
    ld hl, sp+$08                                 ; $5335: $f8 $08
    db $f4                                        ; $5337: $f4
    ld d, h                                       ; $5338: $54
    xor b                                         ; $5339: $a8
    ld l, e                                       ; $533a: $6b
    inc e                                         ; $533b: $1c
    and a                                         ; $533c: $a7
    nop                                           ; $533d: $00
    ld a, b                                       ; $533e: $78
    ld c, a                                       ; $533f: $4f
    ldh a, [$96]                                  ; $5340: $f0 $96
    jp hl                                         ; $5342: $e9


    jr z, jr_09e_531c                             ; $5343: $28 $d7

    rla                                           ; $5345: $17
    add b                                         ; $5346: $80
    ld [de], a                                    ; $5347: $12
    ld [bc], a                                    ; $5348: $02
    ld bc, $fdff                                  ; $5349: $01 $ff $fd
    inc bc                                        ; $534c: $03
    db $eb                                        ; $534d: $eb
    rla                                           ; $534e: $17
    ld d, a                                       ; $534f: $57
    inc c                                         ; $5350: $0c
    xor a                                         ; $5351: $af
    sbc a                                         ; $5352: $9f
    ld a, a                                       ; $5353: $7f
    cp $60                                        ; $5354: $fe $60
    inc bc                                        ; $5356: $03
    or b                                          ; $5357: $b0
    dec c                                         ; $5358: $0d
    add $f8                                       ; $5359: $c6 $f8
    nop                                           ; $535b: $00
    ret z                                         ; $535c: $c8

    ldh a, [$ac]                                  ; $535d: $f0 $ac
    ldh a, [rOCPS]                                ; $535f: $f0 $6a
    ldh a, [$bf]                                  ; $5361: $f0 $bf
    ldh a, [rSC]                                  ; $5363: $f0 $02
    ld d, c                                       ; $5365: $51
    cp $fa                                        ; $5366: $fe $fa
    db $fd                                        ; $5368: $fd
    rlca                                          ; $5369: $07
    rst $38                                       ; $536a: $ff
    ld bc, $951d                                  ; $536b: $01 $1d $95
    nop                                           ; $536e: $00
    nop                                           ; $536f: $00
    add sp, $17                                   ; $5370: $e8 $17
    ld a, a                                       ; $5372: $7f
    add b                                         ; $5373: $80
    xor b                                         ; $5374: $a8
    ld d, a                                       ; $5375: $57
    rst $38                                       ; $5376: $ff
    add b                                         ; $5377: $80
    cp b                                          ; $5378: $b8
    ld [bc], a                                    ; $5379: $02
    ldh [$7f], a                                  ; $537a: $e0 $7f
    db $db                                        ; $537c: $db
    inc a                                         ; $537d: $3c
    xor $17                                       ; $537e: $ee $17
    ld [hl], a                                    ; $5380: $77
    nop                                           ; $5381: $00
    adc c                                         ; $5382: $89
    ld l, b                                       ; $5383: $68
    inc de                                        ; $5384: $13
    cp $05                                        ; $5385: $fe $05
    ld [$530f], a                                 ; $5387: $ea $0f $53
    nop                                           ; $538a: $00
    db $fd                                        ; $538b: $fd
    ld e, $e1                                     ; $538c: $1e $e1
    ld l, l                                       ; $538e: $6d
    sub d                                         ; $538f: $92
    cp d                                          ; $5390: $ba
    ld b, l                                       ; $5391: $45
    ld e, $00                                     ; $5392: $1e $00
    pop hl                                        ; $5394: $e1
    ld l, a                                       ; $5395: $6f
    ldh a, [rNR30]                                ; $5396: $f0 $1a
    db $fc                                        ; $5398: $fc

jr_09e_5399:
    ld [hl], $ff                                  ; $5399: $36 $ff
    or l                                          ; $539b: $b5
    ld b, b                                       ; $539c: $40
    rst $08                                       ; $539d: $cf
    ret nz                                        ; $539e: $c0

    ld e, l                                       ; $539f: $5d
    ld d, l                                       ; $53a0: $55
    rst $38                                       ; $53a1: $ff
    or [hl]                                       ; $53a2: $b6
    ld [$204d], sp                                ; $53a3: $08 $4d $20
    nop                                           ; $53a6: $00
    sub l                                         ; $53a7: $95
    nop                                           ; $53a8: $00
    cp l                                          ; $53a9: $bd
    jp nz, Jump_09e_70e9                          ; $53aa: $c2 $e9 $70

    sbc d                                         ; $53ad: $9a
    inc e                                         ; $53ae: $1c
    nop                                           ; $53af: $00
    cp h                                          ; $53b0: $bc
    ld b, a                                       ; $53b1: $47
    inc bc                                        ; $53b2: $03
    cp $52                                        ; $53b3: $fe $52
    rrca                                          ; $53b5: $0f
    and [hl]                                      ; $53b6: $a6
    inc bc                                        ; $53b7: $03
    ld [$0103], sp                                ; $53b8: $08 $03 $01
    ld bc, $0401                                  ; $53bb: $01 $01 $04
    jr @+$07                                      ; $53be: $18 $05

    ld bc, $100b                                  ; $53c0: $01 $0b $10
    ld bc, $0355                                  ; $53c3: $01 $55 $03
    ret nc                                        ; $53c6: $d0

    ld bc, $98ae                                  ; $53c7: $01 $ae $98
    ld a, a                                       ; $53ca: $7f
    ld h, c                                       ; $53cb: $61
    nop                                           ; $53cc: $00
    cp $8a                                        ; $53cd: $fe $8a
    push af                                       ; $53cf: $f5
    adc [hl]                                      ; $53d0: $8e
    ldh a, [$ef]                                  ; $53d1: $f0 $ef
    ld [hl], b                                    ; $53d3: $70
    cp e                                          ; $53d4: $bb
    nop                                           ; $53d5: $00
    inc e                                         ; $53d6: $1c
    ld [hl], $87                                  ; $53d7: $36 $87
    ld sp, hl                                     ; $53d9: $f9
    ld bc, $14e9                                  ; $53da: $01 $e9 $14
    rst $20                                       ; $53dd: $e7
    nop                                           ; $53de: $00
    jr jr_09e_545c                                ; $53df: $18 $7b

    nop                                           ; $53e1: $00
    ret nz                                        ; $53e2: $c0

    db $10                                        ; $53e3: $10
    and c                                         ; $53e4: $a1
    dec bc                                        ; $53e5: $0b
    ld b, d                                       ; $53e6: $42
    rst $38                                       ; $53e7: $ff
    ld bc, $8360                                  ; $53e8: $01 $60 $83
    rst $38                                       ; $53eb: $ff
    pop bc                                        ; $53ec: $c1
    cp a                                          ; $53ed: $bf
    inc b                                         ; $53ee: $04
    ld c, b                                       ; $53ef: $48
    rst $18                                       ; $53f0: $df
    nop                                           ; $53f1: $00
    jr nz, jr_09e_5399                            ; $53f2: $20 $a5

    nop                                           ; $53f4: $00
    ld d, d                                       ; $53f5: $52
    nop                                           ; $53f6: $00
    and l                                         ; $53f7: $a5
    nop                                           ; $53f8: $00
    ld c, d                                       ; $53f9: $4a
    nop                                           ; $53fa: $00
    nop                                           ; $53fb: $00
    stop                                          ; $53fc: $10 $00
    ld b, d                                       ; $53fe: $42
    ld bc, $0181                                  ; $53ff: $01 $81 $01
    cp e                                          ; $5402: $bb
    nop                                           ; $5403: $00
    ld b, h                                       ; $5404: $44
    ld l, l                                       ; $5405: $6d
    add b                                         ; $5406: $80
    ld a, [$d500]                                 ; $5407: $fa $00 $d5
    nop                                           ; $540a: $00
    and d                                         ; $540b: $a2
    nop                                           ; $540c: $00
    nop                                           ; $540d: $00
    rst $38                                       ; $540e: $ff
    nop                                           ; $540f: $00
    jr c, jr_09e_544a                             ; $5410: $38 $38

    rst $28                                       ; $5412: $ef
    ld a, $35                                     ; $5413: $3e $35
    nop                                           ; $5415: $00
    adc d                                         ; $5416: $8a
    ld a, e                                       ; $5417: $7b
    inc b                                         ; $5418: $04
    db $dd                                        ; $5419: $dd
    nop                                           ; $541a: $00
    ld a, [hl-]                                   ; $541b: $3a
    nop                                           ; $541c: $00
    ld d, h                                       ; $541d: $54
    and c                                         ; $541e: $a1
    stop                                          ; $541f: $10 $00
    nop                                           ; $5421: $00
    inc d                                         ; $5422: $14
    nop                                           ; $5423: $00
    add hl, bc                                    ; $5424: $09
    ld bc, $0111                                  ; $5425: $01 $11 $01
    add hl, bc                                    ; $5428: $09
    nop                                           ; $5429: $00
    jr nz, jr_09e_542c                            ; $542a: $20 $00

jr_09e_542c:
    add b                                         ; $542c: $80
    dec b                                         ; $542d: $05
    ld [$9000], sp                                ; $542e: $08 $00 $90
    nop                                           ; $5431: $00
    rst $38                                       ; $5432: $ff
    ld a, $00                                     ; $5433: $3e $00
    ld l, a                                       ; $5435: $6f
    cp a                                          ; $5436: $bf
    rst $28                                       ; $5437: $ef
    rst $38                                       ; $5438: $ff
    daa                                           ; $5439: $27
    ld a, a                                       ; $543a: $7f
    ld l, a                                       ; $543b: $6f
    ld a, a                                       ; $543c: $7f
    nop                                           ; $543d: $00
    push af                                       ; $543e: $f5
    ld l, a                                       ; $543f: $6f
    ld l, a                                       ; $5440: $6f
    ld a, a                                       ; $5441: $7f
    ld d, l                                       ; $5442: $55
    ld l, a                                       ; $5443: $6f
    rst $38                                       ; $5444: $ff
    ld [bc], a                                    ; $5445: $02
    nop                                           ; $5446: $00
    ld d, a                                       ; $5447: $57
    xor e                                         ; $5448: $ab
    rst $38                                       ; $5449: $ff

jr_09e_544a:
    rst $38                                       ; $544a: $ff
    inc bc                                        ; $544b: $03
    rst $38                                       ; $544c: $ff
    inc bc                                        ; $544d: $03
    jp $2006                                      ; $544e: $c3 $06 $20


    add b                                         ; $5451: $80
    ld b, b                                       ; $5452: $40
    add b                                         ; $5453: $80
    ld [hl+], a                                   ; $5454: $22
    daa                                           ; $5455: $27
    nop                                           ; $5456: $00
    ld e, h                                       ; $5457: $5c
    ld [$00f5], sp                                ; $5458: $08 $f5 $00
    nop                                           ; $545b: $00

jr_09e_545c:
    rst $28                                       ; $545c: $ef
    nop                                           ; $545d: $00
    cp e                                          ; $545e: $bb
    ld b, b                                       ; $545f: $40
    ld a, a                                       ; $5460: $7f
    add b                                         ; $5461: $80
    db $eb                                        ; $5462: $eb
    nop                                           ; $5463: $00
    inc b                                         ; $5464: $04
    ld l, a                                       ; $5465: $6f
    ld e, a                                       ; $5466: $5f
    ld d, l                                       ; $5467: $55
    ld l, a                                       ; $5468: $6f
    db $ed                                        ; $5469: $ed
    ld e, a                                       ; $546a: $5f
    ld b, a                                       ; $546b: $47
    nop                                           ; $546c: $00
    ld a, l                                       ; $546d: $7d
    db $ec                                        ; $546e: $ec
    ld e, a                                       ; $546f: $5f
    sub $7d                                       ; $5470: $d6 $7d
    db $ed                                        ; $5472: $ed
    ld e, [hl]                                    ; $5473: $5e
    sub $00                                       ; $5474: $d6 $00
    ld a, l                                       ; $5476: $7d
    inc d                                         ; $5477: $14
    ret nz                                        ; $5478: $c0

jr_09e_5479:
    xor c                                         ; $5479: $a9
    ret nz                                        ; $547a: $c0

    cp $c0                                        ; $547b: $fe $c0
    rst $10                                       ; $547d: $d7
    nop                                           ; $547e: $00
    ldh [$cd], a                                  ; $547f: $e0 $cd
    ld [c], a                                     ; $5481: $e2
    rst $18                                       ; $5482: $df
    ldh [$cb], a                                  ; $5483: $e0 $cb
    db $f4                                        ; $5485: $f4
    rst $08                                       ; $5486: $cf
    jr nz, jr_09e_5479                            ; $5487: $20 $f0

    db $dd                                        ; $5489: $dd
    ld a, b                                       ; $548a: $78
    nop                                           ; $548b: $00
    ld [hl], a                                    ; $548c: $77
    ld [$12ed], sp                                ; $548d: $08 $ed $12
    db $eb                                        ; $5490: $eb
    nop                                           ; $5491: $00
    inc d                                         ; $5492: $14
    ld b, a                                       ; $5493: $47
    cp b                                          ; $5494: $b8
    adc l                                         ; $5495: $8d
    ld [hl], b                                    ; $5496: $70
    rla                                           ; $5497: $17
    add sp, -$13                                  ; $5498: $e8 $ed
    nop                                           ; $549a: $00
    sbc $d4                                       ; $549b: $de $d4
    rst $38                                       ; $549d: $ff

jr_09e_549e:
    rst $08                                       ; $549e: $cf
    cp $dc                                        ; $549f: $fe $dc
    rst $38                                       ; $54a1: $ff
    sbc $20                                       ; $54a2: $de $20
    rst $38                                       ; $54a4: $ff
    db $fc                                        ; $54a5: $fc
    inc b                                         ; $54a6: $04
    nop                                           ; $54a7: $00
    cp $ff                                        ; $54a8: $fe $ff
    ld c, a                                       ; $54aa: $4f
    ldh a, [$ce]                                  ; $54ab: $f0 $ce
    nop                                           ; $54ad: $00
    pop af                                        ; $54ae: $f1
    ld c, l                                       ; $54af: $4d
    ld a, [c]                                     ; $54b0: $f2
    add $f9                                       ; $54b1: $c6 $f9
    ld c, c                                       ; $54b3: $49
    or $c2                                        ; $54b4: $f6 $c2
    nop                                           ; $54b6: $00
    db $fd                                        ; $54b7: $fd
    ld b, l                                       ; $54b8: $45
    ld a, [$fdc2]                                 ; $54b9: $fa $c2 $fd
    or l                                          ; $54bc: $b5
    ld a, [bc]                                    ; $54bd: $0a
    rst $28                                       ; $54be: $ef
    inc bc                                        ; $54bf: $03
    db $10                                        ; $54c0: $10
    ld a, e                                       ; $54c1: $7b
    inc b                                         ; $54c2: $04
    ld l, $00                                     ; $54c3: $2e $00
    or l                                          ; $54c5: $b5
    and b                                         ; $54c6: $a0
    jr nz, @-$2e                                  ; $54c7: $20 $d0

    jr c, @-$0e                                   ; $54c9: $38 $f0

    or b                                          ; $54cb: $b0
    jr jr_09e_549e                                ; $54cc: $18 $d0

    ld c, b                                       ; $54ce: $48
    ret nz                                        ; $54cf: $c0

    ld [$38d0], sp                                ; $54d0: $08 $d0 $38
    xor c                                         ; $54d3: $a9
    nop                                           ; $54d4: $00
    ld b, b                                       ; $54d5: $40
    add b                                         ; $54d6: $80
    nop                                           ; $54d7: $00
    add h                                         ; $54d8: $84

jr_09e_54d9:
    add b                                         ; $54d9: $80
    rst $38                                       ; $54da: $ff
    nop                                           ; $54db: $00
    ld d, l                                       ; $54dc: $55
    xor d                                         ; $54dd: $aa
    rst $38                                       ; $54de: $ff
    rst $38                                       ; $54df: $ff
    add b                                         ; $54e0: $80
    db $ed                                        ; $54e1: $ed
    nop                                           ; $54e2: $00
    ret nz                                        ; $54e3: $c0

    add hl, hl                                    ; $54e4: $29
    ret nz                                        ; $54e5: $c0

    ld e, h                                       ; $54e6: $5c
    nop                                           ; $54e7: $00
    or [hl]                                       ; $54e8: $b6
    nop                                           ; $54e9: $00
    nop                                           ; $54ea: $00
    rst $38                                       ; $54eb: $ff
    add b                                         ; $54ec: $80
    push de                                       ; $54ed: $d5
    ld [$ffff], a                                 ; $54ee: $ea $ff $ff
    ret nz                                        ; $54f1: $c0

    rst $38                                       ; $54f2: $ff
    ld [$f0c0], sp                                ; $54f3: $08 $c0 $f0
    nop                                           ; $54f6: $00
    jr nc, jr_09e_54d9                            ; $54f7: $30 $e0

    db $10                                        ; $54f9: $10
    jr nz, jr_09e_5571                            ; $54fa: $20 $75

    cp d                                          ; $54fc: $ba
    nop                                           ; $54fd: $00
    rst $38                                       ; $54fe: $ff
    rst $38                                       ; $54ff: $ff
    jr nc, @+$01                                  ; $5500: $30 $ff

    ld [hl], d                                    ; $5502: $72
    inc a                                         ; $5503: $3c
    add c                                         ; $5504: $81
    inc c                                         ; $5505: $0c
    nop                                           ; $5506: $00
    ld a, [bc]                                    ; $5507: $0a
    nop                                           ; $5508: $00
    rla                                           ; $5509: $17
    nop                                           ; $550a: $00
    adc b                                         ; $550b: $88
    ret nz                                        ; $550c: $c0

    add b                                         ; $550d: $80
    ret nz                                        ; $550e: $c0

    nop                                           ; $550f: $00
    nop                                           ; $5510: $00
    ret nz                                        ; $5511: $c0

    ld bc, $0280                                  ; $5512: $01 $80 $02
    nop                                           ; $5515: $00
    jr nz, jr_09e_5518                            ; $5516: $20 $00

jr_09e_5518:
    ld bc, $0040                                  ; $5518: $01 $40 $00
    ld [hl+], a                                   ; $551b: $22
    nop                                           ; $551c: $00
    dec l                                         ; $551d: $2d
    nop                                           ; $551e: $00
    ld d, [hl]                                    ; $551f: $56
    call c, RST_00                                ; $5520: $dc $00 $00
    jp c, $bf04                                   ; $5523: $da $04 $bf

    nop                                           ; $5526: $00
    cp $00                                        ; $5527: $fe $00
    rst $30                                       ; $5529: $f7
    ld [$bb10], sp                                ; $552a: $08 $10 $bb
    ld b, b                                       ; $552d: $40
    ld l, $24                                     ; $552e: $2e $24
    nop                                           ; $5530: $00
    xor a                                         ; $5531: $af
    nop                                           ; $5532: $00
    ld [hl], a                                    ; $5533: $77
    nop                                           ; $5534: $00
    nop                                           ; $5535: $00
    xor $00                                       ; $5536: $ee $00
    db $fd                                        ; $5538: $fd
    nop                                           ; $5539: $00
    cp [hl]                                       ; $553a: $be
    ld b, c                                       ; $553b: $41
    rst $38                                       ; $553c: $ff
    nop                                           ; $553d: $00
    ld b, b                                       ; $553e: $40
    call nc, Call_000_0068                        ; $553f: $d4 $68 $00
    ld a, [hl]                                    ; $5542: $7e
    nop                                           ; $5543: $00
    rst $30                                       ; $5544: $f7
    nop                                           ; $5545: $00
    db $ed                                        ; $5546: $ed
    ld [bc], a                                    ; $5547: $02
    ld h, b                                       ; $5548: $60
    ld e, a                                       ; $5549: $5f
    cp $00                                        ; $554a: $fe $00
    call c, $8000                                 ; $554c: $dc $00 $80
    db $fd                                        ; $554f: $fd
    ld [bc], a                                    ; $5550: $02
    ld e, e                                       ; $5551: $5b
    and h                                         ; $5552: $a4
    nop                                           ; $5553: $00
    rst $30                                       ; $5554: $f7
    ld [$847b], sp                                ; $5555: $08 $7b $84
    rst $30                                       ; $5558: $f7
    ld [$a15e], sp                                ; $5559: $08 $5e $a1
    nop                                           ; $555c: $00
    cp l                                          ; $555d: $bd
    ld b, d                                       ; $555e: $42
    xor a                                         ; $555f: $af
    db $10                                        ; $5560: $10
    ld a, a                                       ; $5561: $7f
    nop                                           ; $5562: $00
    ei                                            ; $5563: $fb
    inc b                                         ; $5564: $04
    nop                                           ; $5565: $00
    rst $30                                       ; $5566: $f7
    ld [$146b], sp                                ; $5567: $08 $6b $14
    rst $30                                       ; $556a: $f7
    ld [$10ef], sp                                ; $556b: $08 $ef $10
    nop                                           ; $556e: $00
    sub $29                                       ; $556f: $d6 $29

jr_09e_5571:
    ld a, a                                       ; $5571: $7f
    nop                                           ; $5572: $00
    xor $11                                       ; $5573: $ee $11
    db $fd                                        ; $5575: $fd
    ld [bc], a                                    ; $5576: $02
    nop                                           ; $5577: $00
    or $09                                        ; $5578: $f6 $09
    jp hl                                         ; $557a: $e9


    ld d, $52                                     ; $557b: $16 $52
    xor l                                         ; $557d: $ad
    push hl                                       ; $557e: $e5
    ld a, [de]                                    ; $557f: $1a
    nop                                           ; $5580: $00
    and d                                         ; $5581: $a2
    ld e, l                                       ; $5582: $5d
    or h                                          ; $5583: $b4
    dec bc                                        ; $5584: $0b
    xor $11                                       ; $5585: $ee $11
    ld a, d                                       ; $5587: $7a
    dec b                                         ; $5588: $05
    nop                                           ; $5589: $00
    ld l, $01                                     ; $558a: $2e $01
    or h                                          ; $558c: $b4
    ld bc, HeaderDestinationCode                  ; $558d: $01 $4a $01
    ld de, $4000                                  ; $5590: $11 $00 $40
    ld [hl+], a                                   ; $5593: $22
    ld a, h                                       ; $5594: $7c
    ld bc, $2a2a                                  ; $5595: $01 $2a $2a
    dec b                                         ; $5598: $05
    dec b                                         ; $5599: $05
    xor d                                         ; $559a: $aa
    xor d                                         ; $559b: $aa
    nop                                           ; $559c: $00
    dec d                                         ; $559d: $15
    dec d                                         ; $559e: $15
    xor e                                         ; $559f: $ab
    xor e                                         ; $55a0: $ab
    ld d, l                                       ; $55a1: $55
    ld d, l                                       ; $55a2: $55
    rst $38                                       ; $55a3: $ff
    rst $38                                       ; $55a4: $ff
    inc h                                         ; $55a5: $24
    ld de, $0811                                  ; $55a6: $11 $11 $08
    ld [$afaf], sp                                ; $55a9: $08 $af $af
    inc c                                         ; $55ac: $0c
    ld [$dfdf], sp                                ; $55ad: $08 $df $df
    nop                                           ; $55b0: $00
    rst $38                                       ; $55b1: $ff
    rst $38                                       ; $55b2: $ff
    ld d, l                                       ; $55b3: $55
    ld d, l                                       ; $55b4: $55
    cp a                                          ; $55b5: $bf
    cp a                                          ; $55b6: $bf
    ld e, a                                       ; $55b7: $5f
    ld e, a                                       ; $55b8: $5f
    nop                                           ; $55b9: $00
    cp $ff                                        ; $55ba: $fe $ff
    ld a, l                                       ; $55bc: $7d
    ld a, [hl]                                    ; $55bd: $7e
    ei                                            ; $55be: $fb
    db $fc                                        ; $55bf: $fc
    rst $30                                       ; $55c0: $f7
    ld hl, sp+$02                                 ; $55c1: $f8 $02
    rst $30                                       ; $55c3: $f7
    ld hl, sp+$01                                 ; $55c4: $f8 $01
    nop                                           ; $55c6: $00
    ld [bc], a                                    ; $55c7: $02
    ld bc, $1804                                  ; $55c8: $01 $04 $18
    ld a, [hl+]                                   ; $55cb: $2a
    ld b, $01                                     ; $55cc: $06 $01
    ld e, l                                       ; $55ce: $5d
    nop                                           ; $55cf: $00
    or [hl]                                       ; $55d0: $b6
    ld bc, $0820                                  ; $55d1: $01 $20 $08
    jr z, jr_09e_55de                             ; $55d4: $28 $08

    ld a, a                                       ; $55d6: $7f
    ld [hl], b                                    ; $55d7: $70
    ld a, a                                       ; $55d8: $7f
    ld a, [de]                                    ; $55d9: $1a
    ld a, [de]                                    ; $55da: $1a
    ld [$2828], sp                                ; $55db: $08 $28 $28

jr_09e_55de:
    ld a, [bc]                                    ; $55de: $0a
    cp $ff                                        ; $55df: $fe $ff
    db $fd                                        ; $55e1: $fd
    cp $00                                        ; $55e2: $fe $00
    rst $28                                       ; $55e4: $ef
    ldh a, [$e7]                                  ; $55e5: $f0 $e7
    ld hl, sp-$11                                 ; $55e7: $f8 $ef
    ldh a, [$c7]                                  ; $55e9: $f0 $c7
    ld hl, sp+$00                                 ; $55eb: $f8 $00
    rst $08                                       ; $55ed: $cf
    ldh a, [$a7]                                  ; $55ee: $f0 $a7
    ld hl, sp+$5f                                 ; $55f0: $f8 $5f
    sub b                                         ; $55f2: $90
    rst $00                                       ; $55f3: $c7
    jr jr_09e_55f6                                ; $55f4: $18 $00

jr_09e_55f6:
    inc l                                         ; $55f6: $2c
    ld bc, $0156                                  ; $55f7: $01 $56 $01
    xor $01                                       ; $55fa: $ee $01
    jp c, Jump_000_0005                           ; $55fc: $da $05 $00

    cp [hl]                                       ; $55ff: $be
    ld bc, $01ff                                  ; $5600: $01 $ff $01
    or $09                                        ; $5603: $f6 $09
    cp e                                          ; $5605: $bb
    ld b, c                                       ; $5606: $41
    add b                                         ; $5607: $80
    ld [hl], $38                                  ; $5608: $36 $38
    rst $18                                       ; $560a: $df
    rst $18                                       ; $560b: $df
    cp a                                          ; $560c: $bf
    cp a                                          ; $560d: $bf
    ld d, h                                       ; $560e: $54
    ld d, h                                       ; $560f: $54
    ei                                            ; $5610: $fb
    nop                                           ; $5611: $00
    db $fc                                        ; $5612: $fc
    or $f9                                        ; $5613: $f6 $f9
    db $ec                                        ; $5615: $ec
    di                                            ; $5616: $f3
    jp c, $b6e7                                   ; $5617: $da $e7 $b6

    nop                                           ; $561a: $00
    adc $69                                       ; $561b: $ce $69
    sbc c                                         ; $561d: $99
    ld b, a                                       ; $561e: $47
    and a                                         ; $561f: $a7
    sbc a                                         ; $5620: $9f
    ld e, a                                       ; $5621: $5f
    ld d, e                                       ; $5622: $53
    nop                                           ; $5623: $00
    sbc h                                         ; $5624: $9c
    adc a                                         ; $5625: $8f
    ld l, b                                       ; $5626: $68
    inc hl                                        ; $5627: $23
    db $ec                                        ; $5628: $ec
    adc c                                         ; $5629: $89
    adc [hl]                                      ; $562a: $8e
    ld l, d                                       ; $562b: $6a
    nop                                           ; $562c: $00
    ld l, l                                       ; $562d: $6d
    pop af                                        ; $562e: $f1
    or $f4                                        ; $562f: $f6 $f4
    rst $30                                       ; $5631: $f7
    ld a, [$76fb]                                 ; $5632: $fa $fb $76
    nop                                           ; $5635: $00
    add c                                         ; $5636: $81
    db $fd                                        ; $5637: $fd
    inc bc                                        ; $5638: $03
    ld e, d                                       ; $5639: $5a
    and l                                         ; $563a: $a5
    rst $30                                       ; $563b: $f7
    add hl, bc                                    ; $563c: $09
    ld a, e                                       ; $563d: $7b
    nop                                           ; $563e: $00
    add l                                         ; $563f: $85
    rst $30                                       ; $5640: $f7
    add hl, bc                                    ; $5641: $09
    ld e, a                                       ; $5642: $5f
    and c                                         ; $5643: $a1
    cp l                                          ; $5644: $bd
    ld b, e                                       ; $5645: $43
    cp $08                                        ; $5646: $fe $08
    rst $38                                       ; $5648: $ff
    ld d, h                                       ; $5649: $54
    ld d, l                                       ; $564a: $55
    xor b                                         ; $564b: $a8
    cp [hl]                                       ; $564c: $be
    nop                                           ; $564d: $00
    xor d                                         ; $564e: $aa
    xor d                                         ; $564f: $aa
    ld bc, $0103                                  ; $5650: $01 $03 $01
    ld a, [hl+]                                   ; $5653: $2a
    ld a, [hl+]                                   ; $5654: $2a
    nop                                           ; $5655: $00
    nop                                           ; $5656: $00
    ccf                                           ; $5657: $3f
    xor [hl]                                      ; $5658: $ae
    nop                                           ; $5659: $00
    or [hl]                                       ; $565a: $b6
    ld [$c280], sp                                ; $565b: $08 $80 $c2
    ld [$abab], sp                                ; $565e: $08 $ab $ab
    ld de, $fd11                                  ; $5661: $11 $11 $fd
    db $fd                                        ; $5664: $fd
    cp $40                                        ; $5665: $fe $40
    cp $9e                                        ; $5667: $fe $9e
    jr jr_09e_56ca                                ; $5669: $18 $5f

    ld e, a                                       ; $566b: $5f
    cp a                                          ; $566c: $bf
    cp a                                          ; $566d: $bf
    ld d, l                                       ; $566e: $55
    ld d, l                                       ; $566f: $55
    nop                                           ; $5670: $00
    rrca                                          ; $5671: $0f
    ldh a, [rNR33]                                ; $5672: $f0 $1d
    ld [c], a                                     ; $5674: $e2
    ld a, [hl+]                                   ; $5675: $2a
    push de                                       ; $5676: $d5
    sub l                                         ; $5677: $95
    ld l, d                                       ; $5678: $6a
    nop                                           ; $5679: $00
    nop                                           ; $567a: $00
    rst $38                                       ; $567b: $ff
    inc h                                         ; $567c: $24
    rst $38                                       ; $567d: $ff

jr_09e_567e:
    ld d, b                                       ; $567e: $50
    rst $38                                       ; $567f: $ff
    xor d                                         ; $5680: $aa
    rst $38                                       ; $5681: $ff
    ld h, d                                       ; $5682: $62
    rst $18                                       ; $5683: $df
    inc b                                         ; $5684: $04
    ld [bc], a                                    ; $5685: $02
    cp c                                          ; $5686: $b9
    jr @+$3b                                      ; $5687: $18 $39

    rst $38                                       ; $5689: $ff
    ld b, b                                       ; $568a: $40
    stop                                          ; $568b: $10 $00
    ret z                                         ; $568d: $c8

    nop                                           ; $568e: $00
    rst $38                                       ; $568f: $ff
    call nz, $c8fb                                ; $5690: $c4 $fb $c8
    rst $30                                       ; $5693: $f7
    ret nc                                        ; $5694: $d0

    rst $38                                       ; $5695: $ff
    pop hl                                        ; $5696: $e1
    ld a, [bc]                                    ; $5697: $0a
    rst $38                                       ; $5698: $ff
    ld [bc], a                                    ; $5699: $02
    rst $38                                       ; $569a: $ff
    dec d                                         ; $569b: $15
    jr nz, jr_09e_569e                            ; $569c: $20 $00

jr_09e_569e:
    rst $30                                       ; $569e: $f7
    ld b, b                                       ; $569f: $40
    ld bc, $20dd                                  ; $56a0: $01 $dd $20
    ld [hl+], a                                   ; $56a3: $22
    rst $38                                       ; $56a4: $ff
    ld d, h                                       ; $56a5: $54
    ld bc, $00ef                                  ; $56a6: $01 $ef $00
    ld d, a                                       ; $56a9: $57
    jr z, @-$44                                   ; $56aa: $28 $ba

    jr nz, jr_09e_56ee                            ; $56ac: $20 $40

    rst $38                                       ; $56ae: $ff
    sub [hl]                                      ; $56af: $96
    ld bc, $10e7                                  ; $56b0: $01 $e7 $10
    rst $18                                       ; $56b3: $df
    jr nz, @+$70                                  ; $56b4: $20 $6e

    db $10                                        ; $56b6: $10
    ld bc, $20d7                                  ; $56b7: $01 $d7 $20
    ld d, $08                                     ; $56ba: $16 $08
    cp l                                          ; $56bc: $bd
    ld b, d                                       ; $56bd: $42
    db $eb                                        ; $56be: $eb
    inc d                                         ; $56bf: $14
    nop                                           ; $56c0: $00
    sbc $21                                       ; $56c1: $de $21
    ld [hl], a                                    ; $56c3: $77
    adc b                                         ; $56c4: $88
    rst $18                                       ; $56c5: $df
    jr nz, jr_09e_567e                            ; $56c6: $20 $b6

    ld c, b                                       ; $56c8: $48
    add b                                         ; $56c9: $80

jr_09e_56ca:
    rst $30                                       ; $56ca: $f7
    add hl, bc                                    ; $56cb: $09
    ld a, [hl]                                    ; $56cc: $7e
    add c                                         ; $56cd: $81
    cp b                                          ; $56ce: $b8
    rlca                                          ; $56cf: $07
    call nc, Call_09e_6608                        ; $56d0: $d4 $08 $66
    nop                                           ; $56d3: $00
    sbc b                                         ; $56d4: $98
    or l                                          ; $56d5: $b5
    ld c, b                                       ; $56d6: $48
    ld c, d                                       ; $56d7: $4a
    inc a                                         ; $56d8: $3c
    db $db                                        ; $56d9: $db
    inc l                                         ; $56da: $2c
    xor l                                         ; $56db: $ad
    nop                                           ; $56dc: $00
    ld h, [hl]                                    ; $56dd: $66
    xor a                                         ; $56de: $af
    ld d, b                                       ; $56df: $50
    ld [hl], a                                    ; $56e0: $77
    adc b                                         ; $56e1: $88
    adc c                                         ; $56e2: $89
    ld [hl], h                                    ; $56e3: $74
    scf                                           ; $56e4: $37
    nop                                           ; $56e5: $00
    ld [$040b], sp                                ; $56e6: $08 $0b $04
    and l                                         ; $56e9: $a5
    ld [bc], a                                    ; $56ea: $02
    db $fc                                        ; $56eb: $fc
    ld [bc], a                                    ; $56ec: $02
    rst $38                                       ; $56ed: $ff

jr_09e_56ee:
    ld [$6f02], sp                                ; $56ee: $08 $02 $6f
    sub b                                         ; $56f1: $90
    rst $30                                       ; $56f2: $f7
    cp h                                          ; $56f3: $bc
    ld [bc], a                                    ; $56f4: $02
    cp l                                          ; $56f5: $bd

jr_09e_56f6:
    ld b, d                                       ; $56f6: $42
    rst $38                                       ; $56f7: $ff
    nop                                           ; $56f8: $00
    nop                                           ; $56f9: $00
    ld a, l                                       ; $56fa: $7d
    add d                                         ; $56fb: $82
    rst $18                                       ; $56fc: $df
    jr nz, jr_09e_56f6                            ; $56fd: $20 $f7

    nop                                           ; $56ff: $00
    ld d, d                                       ; $5700: $52
    nop                                           ; $5701: $00
    rst $20                                       ; $5702: $e7
    cp l                                          ; $5703: $bd
    jp $bd42                                      ; $5704: $c3 $42 $bd


    and l                                         ; $5707: $a5
    ld b, d                                       ; $5708: $42
    or d                                          ; $5709: $b2
    nop                                           ; $570a: $00
    pop bc                                        ; $570b: $c1
    ret                                           ; $570c: $c9


    rst $30                                       ; $570d: $f7
    ld a, a                                       ; $570e: $7f
    cp $aa                                        ; $570f: $fe $aa
    ld d, l                                       ; $5711: $55
    ld l, e                                       ; $5712: $6b
    nop                                           ; $5713: $00
    sub [hl]                                      ; $5714: $96
    sub l                                         ; $5715: $95
    xor $cb                                       ; $5716: $ee $cb
    db $fc                                        ; $5718: $fc
    ld [hl], l                                    ; $5719: $75
    ld a, [$05db]                                 ; $571a: $fa $db $05
    inc h                                         ; $571d: $24
    or a                                          ; $571e: $b7
    ld [$9469], sp                                ; $571f: $08 $69 $94
    ret z                                         ; $5722: $c8

    ld bc, $7484                                  ; $5723: $01 $84 $74
    ld a, [bc]                                    ; $5726: $0a
    jr nz, @-$07                                  ; $5727: $20 $f7

    ld [$0878], sp                                ; $5729: $08 $78 $08
    xor a                                         ; $572c: $af
    db $10                                        ; $572d: $10
    sbc $01                                       ; $572e: $de $01
    ld e, b                                       ; $5730: $58
    nop                                           ; $5731: $00
    and a                                         ; $5732: $a7
    xor c                                         ; $5733: $a9
    ld d, [hl]                                    ; $5734: $56
    ld [de], a                                    ; $5735: $12
    db $ed                                        ; $5736: $ed
    nop                                           ; $5737: $00
    rst $38                                       ; $5738: $ff
    add hl, bc                                    ; $5739: $09
    ld [$20fe], sp                                ; $573a: $08 $fe $20
    rst $38                                       ; $573d: $ff
    ld bc, $00c0                                  ; $573e: $01 $c0 $00
    xor c                                         ; $5741: $a9
    ld d, [hl]                                    ; $5742: $56
    jp nz, $3d00                                  ; $5743: $c2 $00 $3d

    adc c                                         ; $5746: $89
    halt                                          ; $5747: $76
    ld b, b                                       ; $5748: $40
    cp a                                          ; $5749: $bf
    adc d                                         ; $574a: $8a
    ld a, l                                       ; $574b: $7d
    ld hl, $c080                                  ; $574c: $21 $80 $c0
    db $10                                        ; $574f: $10
    ld c, b                                       ; $5750: $48
    cp a                                          ; $5751: $bf
    add h                                         ; $5752: $84
    ld a, e                                       ; $5753: $7b
    ld c, b                                       ; $5754: $48
    or a                                          ; $5755: $b7
    sub b                                         ; $5756: $90
    jr nc, jr_09e_57d8                            ; $5757: $30 $7f

    ld hl, $20c0                                  ; $5759: $21 $c0 $20
    or b                                          ; $575c: $b0
    ld [$04db], sp                                ; $575d: $08 $db $04
    ld l, [hl]                                    ; $5760: $6e
    add c                                         ; $5761: $81
    ld b, b                                       ; $5762: $40
    ld a, e                                       ; $5763: $7b
    inc l                                         ; $5764: $2c
    ld [bc], a                                    ; $5765: $02
    scf                                           ; $5766: $37
    ld c, b                                       ; $5767: $48
    ei                                            ; $5768: $fb
    inc b                                         ; $5769: $04
    rst $20                                       ; $576a: $e7
    cp $00                                        ; $576b: $fe $00
    cp $7d                                        ; $576d: $fe $7d
    db $dd                                        ; $576f: $dd
    ld [hl+], a                                   ; $5770: $22
    ld h, l                                       ; $5771: $65
    sbc b                                         ; $5772: $98
    db $d3                                        ; $5773: $d3
    inc h                                         ; $5774: $24
    nop                                           ; $5775: $00
    ld l, c                                       ; $5776: $69
    or d                                          ; $5777: $b2
    or e                                          ; $5778: $b3
    ld a, $df                                     ; $5779: $3e $df
    inc a                                         ; $577b: $3c
    ld l, [hl]                                    ; $577c: $6e
    sub b                                         ; $577d: $90
    nop                                           ; $577e: $00
    ret                                           ; $577f: $c9


    ld [hl-], a                                   ; $5780: $32
    and [hl]                                      ; $5781: $a6
    ld c, c                                       ; $5782: $49
    inc hl                                        ; $5783: $23
    call nz, $ea95                                ; $5784: $c4 $95 $ea
    nop                                           ; $5787: $00
    db $e3                                        ; $5788: $e3
    ld a, [hl]                                    ; $5789: $7e
    ld a, [hl]                                    ; $578a: $7e
    cp l                                          ; $578b: $bd
    cp e                                          ; $578c: $bb
    ld b, h                                       ; $578d: $44
    rst $38                                       ; $578e: $ff
    nop                                           ; $578f: $00
    ld [de], a                                    ; $5790: $12
    ld d, [hl]                                    ; $5791: $56
    add c                                         ; $5792: $81
    cp a                                          ; $5793: $bf
    xor h                                         ; $5794: $ac
    inc bc                                        ; $5795: $03
    rst $28                                       ; $5796: $ef
    db $10                                        ; $5797: $10
    ret nc                                        ; $5798: $d0

    ld [$20bf], sp                                ; $5799: $08 $bf $20
    ld b, b                                       ; $579c: $40
    rst $30                                       ; $579d: $f7
    ld [bc], a                                    ; $579e: $02
    inc bc                                        ; $579f: $03
    rst $38                                       ; $57a0: $ff
    nop                                           ; $57a1: $00
    ld e, e                                       ; $57a2: $5b
    and h                                         ; $57a3: $a4
    ccf                                           ; $57a4: $3f
    nop                                           ; $57a5: $00
    ld b, b                                       ; $57a6: $40
    db $fc                                        ; $57a7: $fc
    inc bc                                        ; $57a8: $03
    rst $28                                       ; $57a9: $ef
    db $10                                        ; $57aa: $10
    cp a                                          ; $57ab: $bf
    nop                                           ; $57ac: $00
    cp a                                          ; $57ad: $bf
    jr nz, jr_09e_57b0                            ; $57ae: $20 $00

jr_09e_57b0:
    ld a, a                                       ; $57b0: $7f
    db $e4                                        ; $57b1: $e4
    ld [bc], a                                    ; $57b2: $02
    ld e, e                                       ; $57b3: $5b
    add h                                         ; $57b4: $84
    xor $01                                       ; $57b5: $ee $01
    cp l                                          ; $57b7: $bd
    jr nz, jr_09e_57ba                            ; $57b8: $20 $00

jr_09e_57ba:
    ld a, [$0280]                                 ; $57ba: $fa $80 $02
    rst $18                                       ; $57bd: $df
    jr nz, @-$03                                  ; $57be: $20 $fb

    inc b                                         ; $57c0: $04
    or a                                          ; $57c1: $b7
    inc b                                         ; $57c2: $04
    ld b, b                                       ; $57c3: $40
    ld e, l                                       ; $57c4: $5d
    add d                                         ; $57c5: $82
    sbc $21                                       ; $57c6: $de $21
    ld [hl], b                                    ; $57c8: $70
    ld a, [bc]                                    ; $57c9: $0a
    db $db                                        ; $57ca: $db
    jr nz, @+$12                                  ; $57cb: $20 $10

    ld [hl], a                                    ; $57cd: $77
    add b                                         ; $57ce: $80
    rst $28                                       ; $57cf: $ef
    ld [$6b03], a                                 ; $57d0: $ea $03 $6b
    sub h                                         ; $57d3: $94
    xor $01                                       ; $57d4: $ee $01
    nop                                           ; $57d6: $00
    rst $30                                       ; $57d7: $f7

jr_09e_57d8:
    nop                                           ; $57d8: $00
    xor h                                         ; $57d9: $ac
    ld d, d                                       ; $57da: $52
    rst $10                                       ; $57db: $d7
    jr z, jr_09e_585b                             ; $57dc: $28 $7d

    ld [bc], a                                    ; $57de: $02
    nop                                           ; $57df: $00
    rst $28                                       ; $57e0: $ef
    db $10                                        ; $57e1: $10
    rst $10                                       ; $57e2: $d7
    jr z, @+$80                                   ; $57e3: $28 $7e

    add b                                         ; $57e5: $80
    ei                                            ; $57e6: $fb
    inc b                                         ; $57e7: $04
    add b                                         ; $57e8: $80
    sbc b                                         ; $57e9: $98
    ld [bc], a                                    ; $57ea: $02
    nop                                           ; $57eb: $00
    ld e, l                                       ; $57ec: $5d
    and b                                         ; $57ed: $a0
    ld [hl], a                                    ; $57ee: $77
    adc b                                         ; $57ef: $88

jr_09e_57f0:
    ld a, [hl]                                    ; $57f0: $7e
    ld bc, $fd20                                  ; $57f1: $01 $20 $fd
    ld [bc], a                                    ; $57f4: $02
    inc h                                         ; $57f5: $24
    ld [$08f6], sp                                ; $57f6: $08 $f6 $08
    ei                                            ; $57f9: $fb
    inc b                                         ; $57fa: $04
    ld e, a                                       ; $57fb: $5f
    inc h                                         ; $57fc: $24
    and b                                         ; $57fd: $a0
    ld e, c                                       ; $57fe: $59
    ret nc                                        ; $57ff: $d0

    ld h, b                                       ; $5800: $60
    ld [$a0ff], a                                 ; $5801: $ea $ff $a0
    ld e, c                                       ; $5804: $59
    xor b                                         ; $5805: $a8
    rst $38                                       ; $5806: $ff
    sub b                                         ; $5807: $90
    ldh [$58], a                                  ; $5808: $e0 $58
    ld [$e0ff], sp                                ; $580a: $08 $ff $e0
    ld e, b                                       ; $580d: $58
    ld c, b                                       ; $580e: $48
    rst $30                                       ; $580f: $f7
    and a                                         ; $5810: $a7
    ld a, a                                       ; $5811: $7f
    nop                                           ; $5812: $00
    call c, $a53f                                 ; $5813: $dc $3f $a5
    ld e, d                                       ; $5816: $5a
    ld e, d                                       ; $5817: $5a
    dec h                                         ; $5818: $25
    rst $00                                       ; $5819: $c7
    add hl, sp                                    ; $581a: $39
    nop                                           ; $581b: $00
    xor e                                         ; $581c: $ab
    ld b, l                                       ; $581d: $45
    or l                                          ; $581e: $b5
    ld b, d                                       ; $581f: $42
    or e                                          ; $5820: $b3
    call z, $b24d                                 ; $5821: $cc $4d $b2
    nop                                           ; $5824: $00
    and [hl]                                      ; $5825: $a6
    ld b, c                                       ; $5826: $41
    ld c, l                                       ; $5827: $4d
    add e                                         ; $5828: $83
    ld a, [$6707]                                 ; $5829: $fa $07 $67
    sbc [hl]                                      ; $582c: $9e
    nop                                           ; $582d: $00

jr_09e_582e:
    dec c                                         ; $582e: $0d
    cp $fb                                        ; $582f: $fe $fb
    db $fc                                        ; $5831: $fc
    db $dd                                        ; $5832: $dd
    jr nz, jr_09e_58a0                            ; $5833: $20 $6b

    sub h                                         ; $5835: $94
    nop                                           ; $5836: $00

jr_09e_5837:
    push bc                                       ; $5837: $c5

Jump_09e_5838:
    ld a, [hl-]                                   ; $5838: $3a
    sub e                                         ; $5839: $93
    ld c, h                                       ; $583a: $4c
    jp hl                                         ; $583b: $e9


    ld b, [hl]                                    ; $583c: $46
    sub $6d                                       ; $583d: $d6 $6d
    nop                                           ; $583f: $00
    rst $38                                       ; $5840: $ff
    jr c, jr_09e_57f0                             ; $5841: $38 $ad

    ld d, d                                       ; $5843: $52
    rst $30                                       ; $5844: $f7
    ld [$649b], sp                                ; $5845: $08 $9b $64
    nop                                           ; $5848: $00
    ld h, $99                                     ; $5849: $26 $99
    ld c, e                                       ; $584b: $4b
    add h                                         ; $584c: $84
    cp l                                          ; $584d: $bd
    add $97                                       ; $584e: $c6 $97
    db $ec                                        ; $5850: $ec
    nop                                           ; $5851: $00
    ld h, l                                       ; $5852: $65
    cp $ba                                        ; $5853: $fe $ba
    ld e, h                                       ; $5855: $5c
    db $dd                                        ; $5856: $dd
    ld h, d                                       ; $5857: $62
    and d                                         ; $5858: $a2
    ld a, a                                       ; $5859: $7f
    nop                                           ; $585a: $00

jr_09e_585b:
    db $dd                                        ; $585b: $dd
    ld a, $aa                                     ; $585c: $3e $aa
    ld d, c                                       ; $585e: $51
    rst $10                                       ; $585f: $d7
    add hl, hl                                    ; $5860: $29
    xor [hl]                                      ; $5861: $ae
    ld de, $f500                                  ; $5862: $11 $00 $f5
    ld a, [bc]                                    ; $5865: $0a
    xor $01                                       ; $5866: $ee $01
    ld d, [hl]                                    ; $5868: $56
    jr z, jr_09e_582e                             ; $5869: $28 $c3

    inc a                                         ; $586b: $3c
    nop                                           ; $586c: $00
    dec h                                         ; $586d: $25
    jp nz, $029d                                  ; $586e: $c2 $9d $02

    ld l, b                                       ; $5871: $68
    sub a                                         ; $5872: $97
    jp Jump_000_00fe                              ; $5873: $c3 $fe $00


    ld a, $fd                                     ; $5876: $3e $fd
    xor a                                         ; $5878: $af
    ld d, b                                       ; $5879: $50
    ld e, b                                       ; $587a: $58
    daa                                           ; $587b: $27
    db $f4                                        ; $587c: $f4
    ld [$a900], sp                                ; $587d: $08 $00 $a9
    db $10                                        ; $5880: $10
    ld d, d                                       ; $5881: $52
    and b                                         ; $5882: $a0
    rst $28                                       ; $5883: $ef
    jr nc, jr_09e_5837                            ; $5884: $30 $b1

    ld e, a                                       ; $5886: $5f
    nop                                           ; $5887: $00
    rst $18                                       ; $5888: $df

jr_09e_5889:
    cpl                                           ; $5889: $2f
    ld l, e                                       ; $588a: $6b
    inc d                                         ; $588b: $14
    ld d, a                                       ; $588c: $57
    xor b                                         ; $588d: $a8
    cp c                                          ; $588e: $b9
    ld b, [hl]                                    ; $588f: $46
    nop                                           ; $5890: $00
    ld d, h                                       ; $5891: $54
    add hl, hl                                    ; $5892: $29
    sbc e                                         ; $5893: $9b
    ld l, l                                       ; $5894: $6d
    cpl                                           ; $5895: $2f
    or $dd                                        ; $5896: $f6 $dd
    ld [c], a                                     ; $5898: $e2
    ld bc, $d1aa                                  ; $5899: $01 $aa $d1
    ld e, a                                       ; $589c: $5f
    and b                                         ; $589d: $a0
    rst $38                                       ; $589e: $ff
    rst $38                                       ; $589f: $ff

jr_09e_58a0:
    add b                                         ; $58a0: $80
    ld [bc], a                                    ; $58a1: $02
    nop                                           ; $58a2: $00
    inc h                                         ; $58a3: $24
    ret nz                                        ; $58a4: $c0

    cp a                                          ; $58a5: $bf

jr_09e_58a6:
    inc b                                         ; $58a6: $04
    jr @-$3d                                      ; $58a7: $18 $c1

    cp a                                          ; $58a9: $bf
    db $fc                                        ; $58aa: $fc
    dec bc                                        ; $58ab: $0b
    xor d                                         ; $58ac: $aa
    ld d, l                                       ; $58ad: $55
    ldh a, [$ed]                                  ; $58ae: $f0 $ed
    inc b                                         ; $58b0: $04
    ld [$2d08], sp                                ; $58b1: $08 $08 $2d
    dec b                                         ; $58b4: $05
    jr nz, jr_09e_590b                            ; $58b5: $20 $54

    nop                                           ; $58b7: $00
    inc b                                         ; $58b8: $04
    nop                                           ; $58b9: $00
    rst $00                                       ; $58ba: $c7
    rla                                           ; $58bb: $17
    rst $38                                       ; $58bc: $ff
    db $e3                                        ; $58bd: $e3
    rst $18                                       ; $58be: $df
    inc b                                         ; $58bf: $04
    ld c, b                                       ; $58c0: $48
    ld [$14f8], sp                                ; $58c1: $08 $f8 $14
    ld d, [hl]                                    ; $58c4: $56
    inc bc                                        ; $58c5: $03
    nop                                           ; $58c6: $00
    inc h                                         ; $58c7: $24
    ld bc, $ff83                                  ; $58c8: $01 $83 $ff
    ld b, c                                       ; $58cb: $41
    cp a                                          ; $58cc: $bf
    add e                                         ; $58cd: $83
    ld a, a                                       ; $58ce: $7f
    ld bc, $04f2                                  ; $58cf: $01 $f2 $04
    jr nc, jr_09e_58d5                            ; $58d2: $30 $01

    rst $38                                       ; $58d4: $ff

jr_09e_58d5:
    ld sp, hl                                     ; $58d5: $f9
    inc b                                         ; $58d6: $04
    ld c, e                                       ; $58d7: $4b
    inc b                                         ; $58d8: $04
    ld a, a                                       ; $58d9: $7f
    add b                                         ; $58da: $80
    cp [hl]                                       ; $58db: $be
    ld b, b                                       ; $58dc: $40
    ld [bc], a                                    ; $58dd: $02
    push de                                       ; $58de: $d5
    ld [$906f], sp                                ; $58df: $08 $6f $90
    rst $38                                       ; $58e2: $ff
    nop                                           ; $58e3: $00
    call nz, $fb09                                ; $58e4: $c4 $09 $fb
    add h                                         ; $58e7: $84
    db $f4                                        ; $58e8: $f4
    inc bc                                        ; $58e9: $03
    ld a, a                                       ; $58ea: $7f
    add b                                         ; $58eb: $80
    rst $18                                       ; $58ec: $df
    jr nz, jr_09e_5889                            ; $58ed: $20 $9a

    ld bc, $b608                                  ; $58ef: $01 $08 $b6
    ld b, b                                       ; $58f2: $40
    ld b, c                                       ; $58f3: $41
    ld a, [hl+]                                   ; $58f4: $2a
    inc b                                         ; $58f5: $04
    ld hl, $0ef1                                  ; $58f6: $21 $f1 $0e
    xor d                                         ; $58f9: $aa
    ld d, c                                       ; $58fa: $51
    ld d, c                                       ; $58fb: $51
    nop                                           ; $58fc: $00
    jr nz, jr_09e_58a6                            ; $58fd: $20 $a7

    ld b, b                                       ; $58ff: $40
    xor d                                         ; $5900: $aa
    ld b, c                                       ; $5901: $41
    ld a, h                                       ; $5902: $7c
    add e                                         ; $5903: $83
    xor e                                         ; $5904: $ab
    nop                                           ; $5905: $00
    rst $10                                       ; $5906: $d7
    or a                                          ; $5907: $b7
    ld [$827d], sp                                ; $5908: $08 $7d $82

jr_09e_590b:
    rst $20                                       ; $590b: $e7
    jr jr_09e_5958                                ; $590c: $18 $4a

    nop                                           ; $590e: $00
    and h                                         ; $590f: $a4
    ld d, l                                       ; $5910: $55
    and d                                         ; $5911: $a2
    ld l, l                                       ; $5912: $6d
    or d                                          ; $5913: $b2
    di                                            ; $5914: $f3
    sbc [hl]                                      ; $5915: $9e
    cp a                                          ; $5916: $bf
    jr nz, @+$50                                  ; $5917: $20 $4e

    db $fd                                        ; $5919: $fd
    ld a, [hl-]                                   ; $591a: $3a
    inc b                                         ; $591b: $04
    rst $18                                       ; $591c: $df
    nop                                           ; $591d: $00
    xor a                                         ; $591e: $af
    ld d, b                                       ; $591f: $50
    db $fd                                        ; $5920: $fd
    nop                                           ; $5921: $00
    ld [bc], a                                    ; $5922: $02
    cp [hl]                                       ; $5923: $be
    nop                                           ; $5924: $00
    cp d                                          ; $5925: $ba
    ld b, l                                       ; $5926: $45
    ld a, l                                       ; $5927: $7d
    add d                                         ; $5928: $82
    nop                                           ; $5929: $00
    db $10                                        ; $592a: $10
    jr nz, jr_09e_599d                            ; $592b: $20 $70

    ld d, b                                       ; $592d: $50
    ld [bc], a                                    ; $592e: $02
    ld c, b                                       ; $592f: $48
    rst $38                                       ; $5930: $ff
    add sp, -$01                                  ; $5931: $e8 $ff
    ld d, l                                       ; $5933: $55
    add b                                         ; $5934: $80
    inc b                                         ; $5935: $04
    ld c, b                                       ; $5936: $48
    push af                                       ; $5937: $f5
    ld a, [bc]                                    ; $5938: $0a
    ret c                                         ; $5939: $d8

    rlca                                          ; $593a: $07
    and h                                         ; $593b: $a4
    ld e, b                                       ; $593c: $58
    ld d, c                                       ; $593d: $51
    nop                                           ; $593e: $00
    and b                                         ; $593f: $a0
    and [hl]                                      ; $5940: $a6
    ld b, b                                       ; $5941: $40
    xor a                                         ; $5942: $af
    ld b, b                                       ; $5943: $40
    cp a                                          ; $5944: $bf
    ld b, b                                       ; $5945: $40
    sub $40                                       ; $5946: $d6 $40
    ld l, c                                       ; $5948: $69
    and b                                         ; $5949: $a0
    ld bc, $1357                                  ; $594a: $01 $57 $13
    db $ed                                        ; $594d: $ed
    ld bc, $09ff                                  ; $594e: $01 $ff $09
    jr nz, @+$01                                  ; $5951: $20 $ff

    ld hl, $1270                                  ; $5953: $21 $70 $12
    ld a, e                                       ; $5956: $7b
    add h                                         ; $5957: $84

jr_09e_5958:
    dec b                                         ; $5958: $05
    ld a, [$00ab]                                 ; $5959: $fa $ab $00
    inc b                                         ; $595c: $04
    ld e, c                                       ; $595d: $59
    ld b, $f7                                     ; $595e: $06 $f7
    inc c                                         ; $5960: $0c
    jp z, Jump_000_353d                           ; $5961: $ca $3d $35

    nop                                           ; $5964: $00
    ld a, [$e05e]                                 ; $5965: $fa $5e $e0
    xor $11                                       ; $5968: $ee $11
    ld b, c                                       ; $596a: $41
    cp [hl]                                       ; $596b: $be
    sub d                                         ; $596c: $92
    nop                                           ; $596d: $00
    ld h, c                                       ; $596e: $61
    and e                                         ; $596f: $a3
    ld b, b                                       ; $5970: $40
    ld a, [hl]                                    ; $5971: $7e
    add c                                         ; $5972: $81
    add hl, hl                                    ; $5973: $29
    rst $10                                       ; $5974: $d7
    add $10                                       ; $5975: $c6 $10
    ld a, a                                       ; $5977: $7f
    cp e                                          ; $5978: $bb
    ld a, h                                       ; $5979: $7c
    ld e, [hl]                                    ; $597a: $5e
    ld [$7050], sp                                ; $597b: $08 $50 $70
    ld [hl], b                                    ; $597e: $70
    ld a, a                                       ; $597f: $7f
    nop                                           ; $5980: $00
    ld e, [hl]                                    ; $5981: $5e
    ld [hl], c                                    ; $5982: $71
    ld a, d                                       ; $5983: $7a
    ld [hl], l                                    ; $5984: $75
    ld d, l                                       ; $5985: $55
    ld a, e                                       ; $5986: $7b
    ld [hl], c                                    ; $5987: $71
    ld a, a                                       ; $5988: $7f
    add d                                         ; $5989: $82
    rst $10                                       ; $598a: $d7
    dec d                                         ; $598b: $15
    nop                                           ; $598c: $00
    nop                                           ; $598d: $00
    cp $ef                                        ; $598e: $fe $ef
    ld de, $045f                                  ; $5990: $11 $5f $04
    cp e                                          ; $5993: $bb
    inc sp                                        ; $5994: $33
    ld de, $18ff                                  ; $5995: $11 $ff $18
    jr z, jr_09e_59ba                             ; $5998: $28 $20

    jr jr_09e_5a1b                                ; $599a: $18 $7f

    ld a, a                                       ; $599c: $7f

jr_09e_599d:
    jr @+$2a                                      ; $599d: $18 $28

    jr nz, jr_09e_59b9                            ; $599f: $20 $18

    nop                                           ; $59a1: $00
    rst $38                                       ; $59a2: $ff
    rst $38                                       ; $59a3: $ff
    call Call_000_1332                            ; $59a4: $cd $32 $13
    call z, Call_09e_42a5                         ; $59a7: $cc $a5 $42
    nop                                           ; $59aa: $00
    ld d, [hl]                                    ; $59ab: $56
    jp hl                                         ; $59ac: $e9


    and c                                         ; $59ad: $a1
    rst $38                                       ; $59ae: $ff
    ld e, [hl]                                    ; $59af: $5e
    cp a                                          ; $59b0: $bf
    db $eb                                        ; $59b1: $eb
    inc d                                         ; $59b2: $14
    nop                                           ; $59b3: $00
    ld [hl], a                                    ; $59b4: $77
    adc b                                         ; $59b5: $88
    ld e, a                                       ; $59b6: $5f
    ld a, a                                       ; $59b7: $7f
    ld [hl], l                                    ; $59b8: $75

jr_09e_59b9:
    ld [hl], l                                    ; $59b9: $75

jr_09e_59ba:
    ld a, d                                       ; $59ba: $7a
    ld a, d                                       ; $59bb: $7a
    add c                                         ; $59bc: $81
    inc b                                         ; $59bd: $04
    jr c, @+$01                                   ; $59be: $38 $ff

    rst $38                                       ; $59c0: $ff
    ld d, a                                       ; $59c1: $57
    ld d, a                                       ; $59c2: $57
    xor a                                         ; $59c3: $af
    xor a                                         ; $59c4: $af
    inc b                                         ; $59c5: $04
    jr c, jr_09e_5958                             ; $59c6: $38 $90

    sub b                                         ; $59c8: $90
    ld c, $80                                     ; $59c9: $0e $80
    rst $38                                       ; $59cb: $ff
    sub h                                         ; $59cc: $94
    ld a, [bc]                                    ; $59cd: $0a
    push af                                       ; $59ce: $f5
    ld a, [bc]                                    ; $59cf: $0a
    add sp, $17                                   ; $59d0: $e8 $17
    jr nz, @-$39                                  ; $59d2: $20 $c5

    ccf                                           ; $59d4: $3f
    and b                                         ; $59d5: $a0
    ld c, $3f                                     ; $59d6: $0e $3f
    rst $38                                       ; $59d8: $ff
    rst $00                                       ; $59d9: $c7
    ccf                                           ; $59da: $3f
    ld sp, hl                                     ; $59db: $f9
    ld bc, $fe07                                  ; $59dc: $01 $07 $fe
    ld bc, $40bf                                  ; $59df: $01 $bf $40
    rla                                           ; $59e2: $17
    add sp, -$50                                  ; $59e3: $e8 $b0
    ld c, [hl]                                    ; $59e5: $4e
    nop                                           ; $59e6: $00
    ld a, a                                       ; $59e7: $7f
    rst $38                                       ; $59e8: $ff
    cp a                                          ; $59e9: $bf
    ld a, a                                       ; $59ea: $7f

jr_09e_59eb:
    xor d                                         ; $59eb: $aa
    xor d                                         ; $59ec: $aa
    db $fd                                        ; $59ed: $fd
    db $fd                                        ; $59ee: $fd
    jr nc, jr_09e_59eb                            ; $59ef: $30 $fa

    ld a, [$049c]                                 ; $59f1: $fa $9c $04
    rst $30                                       ; $59f4: $f7
    inc hl                                        ; $59f5: $23
    sub c                                         ; $59f6: $91
    ld [hl], c                                    ; $59f7: $71
    ld l, [hl]                                    ; $59f8: $6e
    xor [hl]                                      ; $59f9: $ae
    inc b                                         ; $59fa: $04
    sbc a                                         ; $59fb: $9f
    ld e, a                                       ; $59fc: $5f
    nop                                           ; $59fd: $00
    rst $38                                       ; $59fe: $ff

Call_09e_59ff:
    cp a                                          ; $59ff: $bf
    xor $00                                       ; $5a00: $ee $00
    sub l                                         ; $5a02: $95
    ld l, d                                       ; $5a03: $6a
    nop                                           ; $5a04: $00
    xor d                                         ; $5a05: $aa
    ld a, a                                       ; $5a06: $7f
    xor e                                         ; $5a07: $ab
    db $f4                                        ; $5a08: $f4
    ld sp, $cc3e                                  ; $5a09: $31 $3e $cc
    rst $08                                       ; $5a0c: $cf
    nop                                           ; $5a0d: $00
    ld [bc], a                                    ; $5a0e: $02
    di                                            ; $5a0f: $f3
    pop af                                        ; $5a10: $f1
    dec c                                         ; $5a11: $0d
    db $fc                                        ; $5a12: $fc
    ld [bc], a                                    ; $5a13: $02
    ld e, [hl]                                    ; $5a14: $5e
    and c                                         ; $5a15: $a1
    nop                                           ; $5a16: $00
    cpl                                           ; $5a17: $2f
    ret nc                                        ; $5a18: $d0

    rst $08                                       ; $5a19: $cf
    ccf                                           ; $5a1a: $3f

jr_09e_5a1b:
    ld [hl], e                                    ; $5a1b: $73
    adc a                                         ; $5a1c: $8f
    cp h                                          ; $5a1d: $bc
    ld b, e                                       ; $5a1e: $43
    nop                                           ; $5a1f: $00
    sub a                                         ; $5a20: $97

jr_09e_5a21:
    add sp, -$36                                  ; $5a21: $e8 $ca
    push af                                       ; $5a23: $f5
    ld l, c                                       ; $5a24: $69
    ld a, [hl]                                    ; $5a25: $7e
    or h                                          ; $5a26: $b4
    cp a                                          ; $5a27: $bf
    nop                                           ; $5a28: $00
    ld c, a                                       ; $5a29: $4f
    rst $08                                       ; $5a2a: $cf
    rst $38                                       ; $5a2b: $ff
    rst $38                                       ; $5a2c: $ff
    ldh a, [rIE]                                  ; $5a2d: $f0 $ff
    dec c                                         ; $5a2f: $0d
    ld a, [c]                                     ; $5a30: $f2
    nop                                           ; $5a31: $00
    and e                                         ; $5a32: $a3
    ld d, h                                       ; $5a33: $54
    pop bc                                        ; $5a34: $c1
    ld [hl+], a                                   ; $5a35: $22
    ld b, d                                       ; $5a36: $42
    sub a                                         ; $5a37: $97
    or $8f                                        ; $5a38: $f6 $8f
    nop                                           ; $5a3a: $00

jr_09e_5a3b:
    ld a, a                                       ; $5a3b: $7f
    nop                                           ; $5a3c: $00
    cp l                                          ; $5a3d: $bd
    ld a, a                                       ; $5a3e: $7f
    ret nz                                        ; $5a3f: $c0

    jr nz, jr_09e_5a21                            ; $5a40: $20 $df

    ccf                                           ; $5a42: $3f
    nop                                           ; $5a43: $00
    rst $28                                       ; $5a44: $ef
    rra                                           ; $5a45: $1f
    rst $30                                       ; $5a46: $f7
    rrca                                          ; $5a47: $0f
    ld a, e                                       ; $5a48: $7b
    add a                                         ; $5a49: $87
    cp l                                          ; $5a4a: $bd
    ld b, e                                       ; $5a4b: $43
    nop                                           ; $5a4c: $00
    ld e, [hl]                                    ; $5a4d: $5e
    and c                                         ; $5a4e: $a1
    ld d, a                                       ; $5a4f: $57
    add sp, $6f                                   ; $5a50: $e8 $6f
    ld [hl], b                                    ; $5a52: $70
    sub a                                         ; $5a53: $97
    sbc b                                         ; $5a54: $98
    nop                                           ; $5a55: $00
    rst $30                                       ; $5a56: $f7
    ld hl, sp-$01                                 ; $5a57: $f8 $ff
    ldh a, [$ef]                                  ; $5a59: $f0 $ef
    ldh a, [$9f]                                  ; $5a5b: $f0 $9f
    ldh [rP1], a                                  ; $5a5d: $e0 $00
    ld a, l                                       ; $5a5f: $7d
    add d                                         ; $5a60: $82
    or b                                          ; $5a61: $b0
    ld [hl], b                                    ; $5a62: $70
    cp a                                          ; $5a63: $bf
    ld a, a                                       ; $5a64: $7f
    sbc a                                         ; $5a65: $9f
    ld a, a                                       ; $5a66: $7f
    add b                                         ; $5a67: $80
    inc b                                         ; $5a68: $04
    jr jr_09e_5aca                                ; $5a69: $18 $5f

    rst $18                                       ; $5a6b: $df
    rra                                           ; $5a6c: $1f
    rst $18                                       ; $5a6d: $df
    dec a                                         ; $5a6e: $3d
    ld b, d                                       ; $5a6f: $42
    inc l                                         ; $5a70: $2c
    nop                                           ; $5a71: $00
    ld e, h                                       ; $5a72: $5c
    sub b                                         ; $5a73: $90
    xor b                                         ; $5a74: $a8
    xor d                                         ; $5a75: $aa
    or [hl]                                       ; $5a76: $b6
    sub $d9                                       ; $5a77: $d6 $d9
    db $eb                                        ; $5a79: $eb
    nop                                           ; $5a7a: $00
    db $ec                                        ; $5a7b: $ec
    ldh a, [$f1]                                  ; $5a7c: $f0 $f1
    cp $fe                                        ; $5a7e: $fe $fe
    dec hl                                        ; $5a80: $2b
    call nc, Call_000_0095                        ; $5a81: $d4 $95 $00
    ld [$7d42], a                                 ; $5a84: $ea $42 $7d
    xor b                                         ; $5a87: $a8
    cp a                                          ; $5a88: $bf
    call $f3cf                                    ; $5a89: $cd $cf $f3
    nop                                           ; $5a8c: $00
    di                                            ; $5a8d: $f3
    db $fc                                        ; $5a8e: $fc
    db $fc                                        ; $5a8f: $fc
    rst $38                                       ; $5a90: $ff
    rst $38                                       ; $5a91: $ff
    ld a, [$5005]                                 ; $5a92: $fa $05 $50
    nop                                           ; $5a95: $00
    xor a                                         ; $5a96: $af
    and c                                         ; $5a97: $a1
    ld e, a                                       ; $5a98: $5f
    dec bc                                        ; $5a99: $0b
    rst $38                                       ; $5a9a: $ff
    ld d, [hl]                                    ; $5a9b: $56
    cp $f1                                        ; $5a9c: $fe $f1
    add hl, de                                    ; $5a9e: $19
    pop af                                        ; $5a9f: $f1
    rrca                                          ; $5aa0: $0f
    rrca                                          ; $5aa1: $0f
    or [hl]                                       ; $5aa2: $b6
    inc b                                         ; $5aa3: $04
    ld d, $05                                     ; $5aa4: $16 $05
    cp a                                          ; $5aa6: $bf
    cp a                                          ; $5aa7: $bf
    ld d, [hl]                                    ; $5aa8: $56
    dec a                                         ; $5aa9: $3d
    ld bc, $c43b                                  ; $5aaa: $01 $3b $c4
    ld l, l                                       ; $5aad: $6d
    add b                                         ; $5aae: $80
    ld a, d                                       ; $5aaf: $7a
    add b                                         ; $5ab0: $80
    ld d, l                                       ; $5ab1: $55
    ld a, [bc]                                    ; $5ab2: $0a
    rlca                                          ; $5ab3: $07
    nop                                           ; $5ab4: $00
    ld b, h                                       ; $5ab5: $44
    add b                                         ; $5ab6: $80
    add c                                         ; $5ab7: $81
    nop                                           ; $5ab8: $00
    jr nz, jr_09e_5a3b                            ; $5ab9: $20 $80

    cp $fe                                        ; $5abb: $fe $fe
    nop                                           ; $5abd: $00
    rra                                           ; $5abe: $1f
    rst $38                                       ; $5abf: $ff
    ld b, a                                       ; $5ac0: $47
    cp a                                          ; $5ac1: $bf
    xor b                                         ; $5ac2: $a8
    ld d, a                                       ; $5ac3: $57
    rst $38                                       ; $5ac4: $ff
    nop                                           ; $5ac5: $00
    ld [bc], a                                    ; $5ac6: $02
    cp $01                                        ; $5ac7: $fe $01
    ld sp, hl                                     ; $5ac9: $f9

jr_09e_5aca:
    rlca                                          ; $5aca: $07
    xor b                                         ; $5acb: $a8
    ld e, c                                       ; $5acc: $59
    ldh [$08], a                                  ; $5acd: $e0 $08
    ei                                            ; $5acf: $fb
    nop                                           ; $5ad0: $00
    ei                                            ; $5ad1: $fb
    rrca                                          ; $5ad2: $0f
    rst $38                                       ; $5ad3: $ff
    sub $2e                                       ; $5ad4: $d6 $2e
    add a                                         ; $5ad6: $87
    ld a, a                                       ; $5ad7: $7f
    rlca                                          ; $5ad8: $07
    ld [de], a                                    ; $5ad9: $12
    adc a                                         ; $5ada: $8f
    adc a                                         ; $5adb: $8f
    rla                                           ; $5adc: $17
    ld e, b                                       ; $5add: $58
    rlca                                          ; $5ade: $07
    add b                                         ; $5adf: $80
    add b                                         ; $5ae0: $80
    ld e, [hl]                                    ; $5ae1: $5e
    rlca                                          ; $5ae2: $07
    jp nz, RST_00                                 ; $5ae3: $c2 $00 $00

    add l                                         ; $5ae6: $85
    nop                                           ; $5ae7: $00
    adc d                                         ; $5ae8: $8a
    nop                                           ; $5ae9: $00
    rla                                           ; $5aea: $17
    add b                                         ; $5aeb: $80
    ld hl, $e000                                  ; $5aec: $21 $00 $e0
    ld bc, $0e00                                  ; $5aef: $01 $00 $0e
    rrca                                          ; $5af2: $0f
    rlca                                          ; $5af3: $07
    rlca                                          ; $5af4: $07
    ld bc, $0100                                  ; $5af5: $01 $00 $01
    ld b, b                                       ; $5af8: $40
    ret nz                                        ; $5af9: $c0

    ret nc                                        ; $5afa: $d0

    jr nc, jr_09e_5b0c                            ; $5afb: $30 $0f

    jr nc, jr_09e_5b76                            ; $5afd: $30 $77

    ld [$ffef], sp                                ; $5aff: $08 $ef $ff
    rst $28                                       ; $5b02: $ef
    rst $28                                       ; $5b03: $ef
    ld c, $11                                     ; $5b04: $0e $11
    ei                                            ; $5b06: $fb
    ei                                            ; $5b07: $fb
    ld a, l                                       ; $5b08: $7d
    inc c                                         ; $5b09: $0c
    ld a, l                                       ; $5b0a: $7d
    ld a, [hl+]                                   ; $5b0b: $2a

jr_09e_5b0c:
    ld a, [hl+]                                   ; $5b0c: $2a
    xor [hl]                                      ; $5b0d: $ae
    inc h                                         ; $5b0e: $24
    nop                                           ; $5b0f: $00
    ld [hl], b                                    ; $5b10: $70
    ld b, $80                                     ; $5b11: $06 $80
    ld l, [hl]                                    ; $5b13: $6e
    nop                                           ; $5b14: $00
    add b                                         ; $5b15: $80
    ld a, l                                       ; $5b16: $7d
    add b                                         ; $5b17: $80
    ld a, $c1                                     ; $5b18: $3e $c1
    ld a, a                                       ; $5b1a: $7f
    add b                                         ; $5b1b: $80
    ret nz                                        ; $5b1c: $c0

    nop                                           ; $5b1d: $00
    ret nz                                        ; $5b1e: $c0

    ei                                            ; $5b1f: $fb
    ei                                            ; $5b20: $fb
    rst $38                                       ; $5b21: $ff
    rst $38                                       ; $5b22: $ff
    xor d                                         ; $5b23: $aa
    xor d                                         ; $5b24: $aa
    push af                                       ; $5b25: $f5
    nop                                           ; $5b26: $00
    push af                                       ; $5b27: $f5
    xor d                                         ; $5b28: $aa
    xor d                                         ; $5b29: $aa
    push de                                       ; $5b2a: $d5
    push de                                       ; $5b2b: $d5
    adc b                                         ; $5b2c: $88
    adc b                                         ; $5b2d: $88
    cpl                                           ; $5b2e: $2f
    nop                                           ; $5b2f: $00
    sub b                                         ; $5b30: $90
    ld a, a                                       ; $5b31: $7f
    add b                                         ; $5b32: $80
    ei                                            ; $5b33: $fb
    add h                                         ; $5b34: $84
    ld [hl], a                                    ; $5b35: $77
    adc b                                         ; $5b36: $88
    db $eb                                        ; $5b37: $eb
    nop                                           ; $5b38: $00
    sub h                                         ; $5b39: $94
    ld [hl], a                                    ; $5b3a: $77
    adc b                                         ; $5b3b: $88
    rst $28                                       ; $5b3c: $ef
    sub b                                         ; $5b3d: $90
    ld d, [hl]                                    ; $5b3e: $56
    xor c                                         ; $5b3f: $a9
    dec c                                         ; $5b40: $0d
    nop                                           ; $5b41: $00
    ld a, [c]                                     ; $5b42: $f2
    add b                                         ; $5b43: $80
    rst $38                                       ; $5b44: $ff
    inc de                                        ; $5b45: $13
    db $ec                                        ; $5b46: $ec
    add b                                         ; $5b47: $80
    rst $38                                       ; $5b48: $ff
    ld b, d                                       ; $5b49: $42
    ld [$a0fd], sp                                ; $5b4a: $08 $fd $a0
    rst $38                                       ; $5b4d: $ff
    ld [hl], l                                    ; $5b4e: $75
    ld d, b                                       ; $5b4f: $50
    dec b                                         ; $5b50: $05
    inc l                                         ; $5b51: $2c
    db $d3                                        ; $5b52: $d3
    nop                                           ; $5b53: $00
    inc d                                         ; $5b54: $14
    rst $38                                       ; $5b55: $ff
    sub h                                         ; $5b56: $94
    ld l, e                                       ; $5b57: $6b
    ld d, b                                       ; $5b58: $50
    add hl, bc                                    ; $5b59: $09
    nop                                           ; $5b5a: $00
    ld d, b                                       ; $5b5b: $50
    dec d                                         ; $5b5c: $15
    call nc, $002b                                ; $5b5d: $d4 $2b $00
    nop                                           ; $5b60: $00
    rst $38                                       ; $5b61: $ff
    and e                                         ; $5b62: $a3
    ld e, h                                       ; $5b63: $5c
    inc c                                         ; $5b64: $0c
    di                                            ; $5b65: $f3
    and c                                         ; $5b66: $a1
    ld e, [hl]                                    ; $5b67: $5e
    ld [hl], b                                    ; $5b68: $70
    nop                                           ; $5b69: $00
    or b                                          ; $5b6a: $b0
    inc d                                         ; $5b6b: $14
    db $ec                                        ; $5b6c: $ec
    rrca                                          ; $5b6d: $0f
    xor b                                         ; $5b6e: $a8
    dec c                                         ; $5b6f: $0d
    ld a, [hl+]                                   ; $5b70: $2a
    ld a, [hl+]                                   ; $5b71: $2a
    ld d, l                                       ; $5b72: $55
    ld d, l                                       ; $5b73: $55
    ld c, e                                       ; $5b74: $4b
    ld a, [hl+]                                   ; $5b75: $2a

jr_09e_5b76:
    ld e, $22                                     ; $5b76: $1e $22
    xor d                                         ; $5b78: $aa
    xor d                                         ; $5b79: $aa
    inc b                                         ; $5b7a: $04
    ld [$3955], sp                                ; $5b7b: $08 $55 $39
    rlca                                          ; $5b7e: $07
    dec c                                         ; $5b7f: $0d
    inc de                                        ; $5b80: $13
    nop                                           ; $5b81: $00
    ld [bc], a                                    ; $5b82: $02
    xor c                                         ; $5b83: $a9
    xor d                                         ; $5b84: $aa
    nop                                           ; $5b85: $00
    ld [bc], a                                    ; $5b86: $02
    xor b                                         ; $5b87: $a8
    xor e                                         ; $5b88: $ab
    ld d, l                                       ; $5b89: $55
    ld h, b                                       ; $5b8a: $60
    ld d, h                                       ; $5b8b: $54
    ld l, $10                                     ; $5b8c: $2e $10
    ld [hl], c                                    ; $5b8e: $71
    ld b, $29                                     ; $5b8f: $06 $29
    ld a, [hl+]                                   ; $5b91: $2a
    nop                                           ; $5b92: $00
    ld [bc], a                                    ; $5b93: $02
    jr z, @+$12                                   ; $5b94: $28 $10

    dec hl                                        ; $5b96: $2b
    ld d, l                                       ; $5b97: $55
    ld d, h                                       ; $5b98: $54
    jr nc, jr_09e_5bab                            ; $5b99: $30 $10

    ldh [rP1], a                                  ; $5b9b: $e0 $00
    db $10                                        ; $5b9d: $10
    ld a, [$0a01]                                 ; $5b9e: $fa $01 $0a
    stop                                          ; $5ba1: $10 $00
    ld a, [de]                                    ; $5ba3: $1a
    ld [$15f5], a                                 ; $5ba4: $ea $f5 $15
    jr nc, jr_09e_5bc9                            ; $5ba7: $30 $20

    add b                                         ; $5ba9: $80
    ld b, b                                       ; $5baa: $40

jr_09e_5bab:
    ld c, b                                       ; $5bab: $48
    jr nc, jr_09e_5bae                            ; $5bac: $30 $00

jr_09e_5bae:
    ld c, b                                       ; $5bae: $48
    inc [hl]                                      ; $5baf: $34
    add b                                         ; $5bb0: $80
    ld b, $fa                                     ; $5bb1: $06 $fa
    ld [bc], a                                    ; $5bb3: $02
    inc b                                         ; $5bb4: $04
    ld hl, sp-$36                                 ; $5bb5: $f8 $ca
    or d                                          ; $5bb7: $b2
    ld [hl], l                                    ; $5bb8: $75
    ld b, l                                       ; $5bb9: $45
    ld l, [hl]                                    ; $5bba: $6e
    ld [$024c], sp                                ; $5bbb: $08 $4c $02
    or e                                          ; $5bbe: $b3
    nop                                           ; $5bbf: $00
    rst $38                                       ; $5bc0: $ff
    xor b                                         ; $5bc1: $a8
    ld d, a                                       ; $5bc2: $57
    nop                                           ; $5bc3: $00
    ld d, [hl]                                    ; $5bc4: $56

jr_09e_5bc5:
    inc bc                                        ; $5bc5: $03
    ld [bc], a                                    ; $5bc6: $02
    jr c, @+$01                                   ; $5bc7: $38 $ff

jr_09e_5bc9:
    ld d, a                                       ; $5bc9: $57
    add b                                         ; $5bca: $80
    jr jr_09e_5c0d                                ; $5bcb: $18 $40

    ld e, b                                       ; $5bcd: $58
    jr nc, jr_09e_5bd0                            ; $5bce: $30 $00

jr_09e_5bd0:
    ld l, $aa                                     ; $5bd0: $2e $aa
    inc b                                         ; $5bd2: $04
    ld d, $80                                     ; $5bd3: $16 $80
    ld [$30a2], a                                 ; $5bd5: $ea $a2 $30
    jr jr_09e_5bda                                ; $5bd8: $18 $00

jr_09e_5bda:
    ld d, d                                       ; $5bda: $52
    dec b                                         ; $5bdb: $05
    ld h, b                                       ; $5bdc: $60
    ld c, l                                       ; $5bdd: $4d
    ld a, [bc]                                    ; $5bde: $0a
    ld d, h                                       ; $5bdf: $54
    push af                                       ; $5be0: $f5
    jr nc, jr_09e_5c41                            ; $5be1: $30 $5e

    ld a, [bc]                                    ; $5be3: $0a
    jr nz, jr_09e_5c46                            ; $5be4: $20 $60

    xor e                                         ; $5be6: $ab
    or b                                          ; $5be7: $b0
    ld h, h                                       ; $5be8: $64
    xor c                                         ; $5be9: $a9
    sub $d2                                       ; $5bea: $d6 $d2
    sub b                                         ; $5bec: $90
    ld e, l                                       ; $5bed: $5d
    ret nz                                        ; $5bee: $c0

    jr nc, jr_09e_5c1b                            ; $5bef: $30 $2a

    ret nz                                        ; $5bf1: $c0

    ld [$0303], sp                                ; $5bf2: $08 $03 $03
    ret nz                                        ; $5bf5: $c0

    jr z, @-$44                                   ; $5bf6: $28 $ba

    ld b, d                                       ; $5bf8: $42
    xor d                                         ; $5bf9: $aa
    ret nz                                        ; $5bfa: $c0

    jr nz, @+$03                                  ; $5bfb: $20 $01

    ld bc, $a802                                  ; $5bfd: $01 $02 $a8
    ldh a, [$08]                                  ; $5c00: $f0 $08
    xor d                                         ; $5c02: $aa
    add b                                         ; $5c03: $80
    ldh a, [rNR41]                                ; $5c04: $f0 $20
    inc b                                         ; $5c06: $04
    inc bc                                        ; $5c07: $03
    ld [$2f20], sp                                ; $5c08: $08 $20 $2f
    nop                                           ; $5c0b: $00
    rrca                                          ; $5c0c: $0f

jr_09e_5c0d:
    ld [$2f20], sp                                ; $5c0d: $08 $20 $2f
    ld d, a                                       ; $5c10: $57
    ld d, b                                       ; $5c11: $50
    jr nz, @+$13                                  ; $5c12: $20 $11

    add b                                         ; $5c14: $80
    nop                                           ; $5c15: $00
    ld b, b                                       ; $5c16: $40
    ld bc, $aa6a                                  ; $5c17: $01 $6a $aa
    ld b, b                                       ; $5c1a: $40

jr_09e_5c1b:
    add b                                         ; $5c1b: $80
    ld l, d                                       ; $5c1c: $6a
    xor d                                         ; $5c1d: $aa
    push de                                       ; $5c1e: $d5
    jr nz, @+$1b                                  ; $5c1f: $20 $19

    nop                                           ; $5c21: $00
    ld e, $01                                     ; $5c22: $1e $01
    jr nz, jr_09e_5bc5                            ; $5c24: $20 $9f

    and b                                         ; $5c26: $a0
    ld bc, $813e                                  ; $5c27: $01 $3e $81
    db $10                                        ; $5c2a: $10
    cp [hl]                                       ; $5c2b: $be
    ld e, a                                       ; $5c2c: $5f
    ld b, c                                       ; $5c2d: $41
    ld c, [hl]                                    ; $5c2e: $4e
    ld de, $f0f0                                  ; $5c2f: $11 $f0 $f0
    ld [$01ea], sp                                ; $5c32: $08 $ea $01
    ld [c], a                                     ; $5c35: $e2
    ld c, b                                       ; $5c36: $48
    ld b, b                                       ; $5c37: $40
    ld [$f5e2], a                                 ; $5c38: $ea $e2 $f5
    dec b                                         ; $5c3b: $05
    ld e, [hl]                                    ; $5c3c: $5e
    add hl, bc                                    ; $5c3d: $09
    add b                                         ; $5c3e: $80
    ld [de], a                                    ; $5c3f: $12
    inc b                                         ; $5c40: $04

jr_09e_5c41:
    dec h                                         ; $5c41: $25
    or a                                          ; $5c42: $b7
    ld c, b                                       ; $5c43: $48
    ret c                                         ; $5c44: $d8

    rlca                                          ; $5c45: $07

jr_09e_5c46:
    db $f4                                        ; $5c46: $f4
    ld [$a400], sp                                ; $5c47: $08 $00 $a4
    ld e, b                                       ; $5c4a: $58
    ld e, [hl]                                    ; $5c4b: $5e
    xor b                                         ; $5c4c: $a8
    db $eb                                        ; $5c4d: $eb
    inc e                                         ; $5c4e: $1c

jr_09e_5c4f:
    or [hl]                                       ; $5c4f: $b6
    rrca                                          ; $5c50: $0f
    nop                                           ; $5c51: $00
    db $eb                                        ; $5c52: $eb
    rla                                           ; $5c53: $17
    jp $953c                                      ; $5c54: $c3 $3c $95


    ld h, d                                       ; $5c57: $62
    ld h, [hl]                                    ; $5c58: $66
    jp nz, $c501                                  ; $5c59: $c2 $01 $c5

    ld a, [hl]                                    ; $5c5c: $7e
    cp e                                          ; $5c5d: $bb
    ld a, h                                       ; $5c5e: $7c
    db $ed                                        ; $5c5f: $ed
    ld [de], a                                    ; $5c60: $12
    nop                                           ; $5c61: $00
    inc l                                         ; $5c62: $2c
    inc bc                                        ; $5c63: $03
    nop                                           ; $5c64: $00
    ld a, d                                       ; $5c65: $7a
    add l                                         ; $5c66: $85
    ld h, h                                       ; $5c67: $64
    sbc e                                         ; $5c68: $9b
    ld h, b                                       ; $5c69: $60
    sbc a                                         ; $5c6a: $9f
    ld d, c                                       ; $5c6b: $51
    xor a                                         ; $5c6c: $af
    db $10                                        ; $5c6d: $10
    ld h, d                                       ; $5c6e: $62
    sbc a                                         ; $5c6f: $9f
    ld b, b                                       ; $5c70: $40
    db $eb                                        ; $5c71: $eb
    dec b                                         ; $5c72: $05
    rst $38                                       ; $5c73: $ff
    nop                                           ; $5c74: $00
    add b                                         ; $5c75: $80
    ld a, a                                       ; $5c76: $7f
    or a                                          ; $5c77: $b7
    or b                                          ; $5c78: $b0
    inc c                                         ; $5c79: $0c
    ld d, l                                       ; $5c7a: $55
    or h                                          ; $5c7b: $b4
    inc d                                         ; $5c7c: $14
    inc d                                         ; $5c7d: $14
    ld [$0d42], sp                                ; $5c7e: $08 $42 $0d
    inc bc                                        ; $5c81: $03
    inc b                                         ; $5c82: $04
    jr z, jr_09e_5c4f                             ; $5c83: $28 $ca

    inc e                                         ; $5c85: $1c
    ldh [rTMA], a                                 ; $5c86: $e0 $06
    jr c, jr_09e_5ca6                             ; $5c88: $38 $1c

    ld c, b                                       ; $5c8a: $48
    jr nz, jr_09e_5ce5                            ; $5c8b: $20 $58

    jr nc, @+$01                                  ; $5c8d: $30 $ff

    ld h, b                                       ; $5c8f: $60
    rst $38                                       ; $5c90: $ff
    ret nz                                        ; $5c91: $c0

    ld b, b                                       ; $5c92: $40
    db $fc                                        ; $5c93: $fc
    jr nc, jr_09e_5cde                            ; $5c94: $30 $48

    ld d, $e8                                     ; $5c96: $16 $e8
    nop                                           ; $5c98: $00
    nop                                           ; $5c99: $00
    ld b, d                                       ; $5c9a: $42
    db $fd                                        ; $5c9b: $fd
    jr nz, jr_09e_5ca0                            ; $5c9c: $20 $02

    db $fd                                        ; $5c9e: $fd
    inc b                                         ; $5c9f: $04

jr_09e_5ca0:
    jr z, jr_09e_5ca4                             ; $5ca0: $28 $02

    dec a                                         ; $5ca2: $3d
    ld [bc], a                                    ; $5ca3: $02

jr_09e_5ca4:
    dec a                                         ; $5ca4: $3d
    ld e, a                                       ; $5ca5: $5f

jr_09e_5ca6:
    nop                                           ; $5ca6: $00
    or c                                          ; $5ca7: $b1
    ld e, e                                       ; $5ca8: $5b
    or a                                          ; $5ca9: $b7
    ld e, h                                       ; $5caa: $5c
    or e                                          ; $5cab: $b3
    ld e, a                                       ; $5cac: $5f
    or b                                          ; $5cad: $b0
    ld e, a                                       ; $5cae: $5f
    add b                                         ; $5caf: $80
    ld h, h                                       ; $5cb0: $64
    db $10                                        ; $5cb1: $10
    ld h, b                                       ; $5cb2: $60
    sbc a                                         ; $5cb3: $9f
    add b                                         ; $5cb4: $80
    db $fc                                        ; $5cb5: $fc
    add d                                         ; $5cb6: $82
    ld a, h                                       ; $5cb7: $7c
    add d                                         ; $5cb8: $82
    ld bc, $807c                                  ; $5cb9: $01 $7c $80
    ld a, [hl]                                    ; $5cbc: $7e
    add d                                         ; $5cbd: $82
    db $fc                                        ; $5cbe: $fc
    nop                                           ; $5cbf: $00
    cp $02                                        ; $5cc0: $fe $02
    db $10                                        ; $5cc2: $10
    add b                                         ; $5cc3: $80
    ld bc, $0d50                                  ; $5cc4: $01 $50 $0d
    ld [bc], a                                    ; $5cc7: $02
    ld [hl+], a                                   ; $5cc8: $22
    dec e                                         ; $5cc9: $1d
    ld [bc], a                                    ; $5cca: $02
    dec a                                         ; $5ccb: $3d
    ld [hl+], a                                   ; $5ccc: $22
    ld h, c                                       ; $5ccd: $61
    dec e                                         ; $5cce: $1d
    ld b, $00                                     ; $5ccf: $06 $00
    ld [bc], a                                    ; $5cd1: $02
    db $10                                        ; $5cd2: $10
    ld b, $f9                                     ; $5cd3: $06 $f9
    db $fd                                        ; $5cd5: $fd
    ld [bc], a                                    ; $5cd6: $02
    ld h, [hl]                                    ; $5cd7: $66
    rla                                           ; $5cd8: $17
    pop hl                                        ; $5cd9: $e1
    ld d, b                                       ; $5cda: $50
    ld b, $94                                     ; $5cdb: $06 $94
    rlca                                          ; $5cdd: $07

jr_09e_5cde:
    sbc h                                         ; $5cde: $9c
    ld b, $00                                     ; $5cdf: $06 $00
    inc c                                         ; $5ce1: $0c
    ld e, $12                                     ; $5ce2: $1e $12
    ld [bc], a                                    ; $5ce4: $02

jr_09e_5ce5:
    ld c, b                                       ; $5ce5: $48
    add e                                         ; $5ce6: $83
    ld c, a                                       ; $5ce7: $4f
    dec d                                         ; $5ce8: $15
    rra                                           ; $5ce9: $1f
    ld a, [hl+]                                   ; $5cea: $2a
    dec [hl]                                      ; $5ceb: $35
    ld e, a                                       ; $5cec: $5f
    ld a, a                                       ; $5ced: $7f
    rst $20                                       ; $5cee: $e7
    inc e                                         ; $5cef: $1c
    ld e, $10                                     ; $5cf0: $1e $10
    inc b                                         ; $5cf2: $04
    ld a, [c]                                     ; $5cf3: $f2
    sbc [hl]                                      ; $5cf4: $9e
    ld [hl], d                                    ; $5cf5: $72
    cp $f2                                        ; $5cf6: $fe $f2
    daa                                           ; $5cf8: $27
    ld [$1e16], sp                                ; $5cf9: $08 $16 $1e
    nop                                           ; $5cfc: $00
    ldh a, [rIE]                                  ; $5cfd: $f0 $ff
    rra                                           ; $5cff: $1f
    ldh [rNR33], a                                ; $5d00: $e0 $1d
    ld [c], a                                     ; $5d02: $e2
    jp nc, $20ef                                  ; $5d03: $d2 $ef $20

    dec e                                         ; $5d06: $1d
    ld [c], a                                     ; $5d07: $e2
    ld [$d008], sp                                ; $5d08: $08 $08 $d0
    rst $38                                       ; $5d0b: $ff
    ld a, [de]                                    ; $5d0c: $1a
    cp $f6                                        ; $5d0d: $fe $f6
    ld bc, $fa1e                                  ; $5d0f: $01 $1e $fa
    ld e, $56                                     ; $5d12: $1e $56
    cp [hl]                                       ; $5d14: $be
    ld a, [$081e]                                 ; $5d15: $fa $1e $08
    ld [$1600], sp                                ; $5d18: $08 $00 $16
    cp $2a                                        ; $5d1b: $fe $2a
    push af                                       ; $5d1d: $f5
    ld e, a                                       ; $5d1e: $5f
    rst $38                                       ; $5d1f: $ff
    ld e, l                                       ; $5d20: $5d
    ld a, [c]                                     ; $5d21: $f2
    ld d, b                                       ; $5d22: $50
    jp nc, Jump_000_0004                          ; $5d23: $d2 $04 $00

    ld d, b                                       ; $5d26: $50
    dec sp                                        ; $5d27: $3b
    inc d                                         ; $5d28: $14
    sbc d                                         ; $5d29: $9a
    ld a, [hl]                                    ; $5d2a: $7e
    cp $fe                                        ; $5d2b: $fe $fe
    nop                                           ; $5d2d: $00
    ld a, [$5e1e]                                 ; $5d2e: $fa $1e $5e
    cp [hl]                                       ; $5d31: $be
    cp $1e                                        ; $5d32: $fe $1e
    ld e, d                                       ; $5d34: $5a
    cp $a5                                        ; $5d35: $fe $a5
    ld bc, $8108                                  ; $5d37: $01 $08 $81
    db $ec                                        ; $5d3a: $ec
    dec [hl]                                      ; $5d3b: $35
    ret nz                                        ; $5d3c: $c0

    cp a                                          ; $5d3d: $bf
    ldh [$0d], a                                  ; $5d3e: $e0 $0d
    rst $38                                       ; $5d40: $ff
    add [hl]                                      ; $5d41: $86
    rlca                                          ; $5d42: $07
    and b                                         ; $5d43: $a0
    or b                                          ; $5d44: $b0
    dec l                                         ; $5d45: $2d
    add e                                         ; $5d46: $83
    nop                                           ; $5d47: $00
    ld b, $d7                                     ; $5d48: $06 $d7
    rst $38                                       ; $5d4a: $ff
    sub c                                         ; $5d4b: $91
    rst $28                                       ; $5d4c: $ef
    cp l                                          ; $5d4d: $bd
    nop                                           ; $5d4e: $00
    jp $81fe                                      ; $5d4f: $c3 $fe $81


    db $db                                        ; $5d52: $db
    and h                                         ; $5d53: $a4
    xor h                                         ; $5d54: $ac
    db $d3                                        ; $5d55: $d3
    pop hl                                        ; $5d56: $e1
    db $10                                        ; $5d57: $10
    rst $38                                       ; $5d58: $ff
    ei                                            ; $5d59: $fb
    rst $38                                       ; $5d5a: $ff
    db $10                                        ; $5d5b: $10
    db $10                                        ; $5d5c: $10
    ld b, e                                       ; $5d5d: $43
    cp $01                                        ; $5d5e: $fe $01
    ld e, e                                       ; $5d60: $5b
    and b                                         ; $5d61: $a0
    stop                                          ; $5d62: $10 $00
    ld h, c                                       ; $5d64: $61
    stop                                          ; $5d65: $10 $00
    push af                                       ; $5d67: $f5
    rst $38                                       ; $5d68: $ff
    ld c, d                                       ; $5d69: $4a
    push af                                       ; $5d6a: $f5
    sbc a                                         ; $5d6b: $9f
    nop                                           ; $5d6c: $00
    ldh [$af], a                                  ; $5d6d: $e0 $af
    ld d, b                                       ; $5d6f: $50
    ld b, l                                       ; $5d70: $45
    ld a, [$fda2]                                 ; $5d71: $fa $a2 $fd
    db $dd                                        ; $5d74: $dd
    ld b, b                                       ; $5d75: $40
    rst $38                                       ; $5d76: $ff
    cpl                                           ; $5d77: $2f
    ld b, $ff                                     ; $5d78: $06 $ff
    cp $ff                                        ; $5d7a: $fe $ff
    call nc, $bdf7                                ; $5d7c: $d4 $f7 $bd
    nop                                           ; $5d7f: $00
    cp $89                                        ; $5d80: $fe $89
    xor $d5                                       ; $5d82: $ee $d5
    or [hl]                                       ; $5d84: $b6
    adc e                                         ; $5d85: $8b
    db $ec                                        ; $5d86: $ec
    pop de                                        ; $5d87: $d1
    nop                                           ; $5d88: $00
    or [hl]                                       ; $5d89: $b6
    rst $38                                       ; $5d8a: $ff
    rst $38                                       ; $5d8b: $ff
    cp [hl]                                       ; $5d8c: $be
    rst $38                                       ; $5d8d: $ff
    inc d                                         ; $5d8e: $14
    rst $30                                       ; $5d8f: $f7
    dec a                                         ; $5d90: $3d
    nop                                           ; $5d91: $00
    cp $09                                        ; $5d92: $fe $09
    xor $55                                       ; $5d94: $ee $55
    or [hl]                                       ; $5d96: $b6
    dec bc                                        ; $5d97: $0b
    db $ec                                        ; $5d98: $ec
    ld d, c                                       ; $5d99: $51
    nop                                           ; $5d9a: $00
    or [hl]                                       ; $5d9b: $b6
    rst $28                                       ; $5d9c: $ef
    rst $38                                       ; $5d9d: $ff
    ld a, [hl]                                    ; $5d9e: $7e
    rst $38                                       ; $5d9f: $ff
    ld l, d                                       ; $5da0: $6a
    ei                                            ; $5da1: $fb
    inc b                                         ; $5da2: $04
    nop                                           ; $5da3: $00
    db $dd                                        ; $5da4: $dd
    ld c, [hl]                                    ; $5da5: $4e
    rst $18                                       ; $5da6: $df
    inc b                                         ; $5da7: $04
    db $dd                                        ; $5da8: $dd
    xor [hl]                                      ; $5da9: $ae
    ld [hl], a                                    ; $5daa: $77
    ld h, h                                       ; $5dab: $64
    nop                                           ; $5dac: $00
    db $fd                                        ; $5dad: $fd
    adc e                                         ; $5dae: $8b
    db $ec                                        ; $5daf: $ec
    jp $cba4                                      ; $5db0: $c3 $a4 $cb


    xor h                                         ; $5db3: $ac
    ld b, e                                       ; $5db4: $43
    inc b                                         ; $5db5: $04
    inc h                                         ; $5db6: $24
    res 5, h                                      ; $5db7: $cb $ac
    ld b, a                                       ; $5db9: $47
    jr z, @+$06                                   ; $5dba: $28 $04

    ld [$ec0b], sp                                ; $5dbc: $08 $0b $ec
    ld [$a443], sp                                ; $5dbf: $08 $43 $a4
    ld c, e                                       ; $5dc2: $4b
    xor h                                         ; $5dc3: $ac
    inc b                                         ; $5dc4: $04
    ld [$a847], sp                                ; $5dc5: $08 $47 $a8
    rlc b                                         ; $5dc8: $cb $00
    inc l                                         ; $5dca: $2c
    ld b, a                                       ; $5dcb: $47
    xor b                                         ; $5dcc: $a8
    adc h                                         ; $5dcd: $8c
    ld d, l                                       ; $5dce: $55

jr_09e_5dcf:
    inc l                                         ; $5dcf: $2c
    push af                                       ; $5dd0: $f5
    adc h                                         ; $5dd1: $8c
    nop                                           ; $5dd2: $00
    ld d, l                                       ; $5dd3: $55
    ld [$0ed5], sp                                ; $5dd4: $08 $d5 $0e
    rst $10                                       ; $5dd7: $d7
    jr z, jr_09e_5dcf                             ; $5dd8: $28 $f5

    ld l, $00                                     ; $5dda: $2e $00
    di                                            ; $5ddc: $f3
    ld a, [bc]                                    ; $5ddd: $0a
    rst $10                                       ; $5dde: $d7
    adc e                                         ; $5ddf: $8b
    db $ec                                        ; $5de0: $ec
    ld d, e                                       ; $5de1: $53
    inc a                                         ; $5de2: $3c
    rrca                                          ; $5de3: $0f
    nop                                           ; $5de4: $00
    ld l, b                                       ; $5de5: $68
    ld d, d                                       ; $5de6: $52
    dec a                                         ; $5de7: $3d
    dec bc                                        ; $5de8: $0b
    ld l, h                                       ; $5de9: $6c
    ld d, d                                       ; $5dea: $52
    dec a                                         ; $5deb: $3d
    dec de                                        ; $5dec: $1b
    nop                                           ; $5ded: $00
    ld a, h                                       ; $5dee: $7c
    cp d                                          ; $5def: $ba
    db $fd                                        ; $5df0: $fd
    sra h                                         ; $5df1: $cb $2c
    ld d, e                                       ; $5df3: $53
    cp h                                          ; $5df4: $bc
    rst $08                                       ; $5df5: $cf
    nop                                           ; $5df6: $00
    jr z, jr_09e_5e4b                             ; $5df7: $28 $52

    cp l                                          ; $5df9: $bd
    sra h                                         ; $5dfa: $cb $2c
    jp nc, $db3d                                  ; $5dfc: $d2 $3d $db

    nop                                           ; $5dff: $00
    inc a                                         ; $5e00: $3c
    ld a, [$263d]                                 ; $5e01: $fa $3d $26
    ei                                            ; $5e04: $fb
    ld l, h                                       ; $5e05: $6c
    pop af                                        ; $5e06: $f1
    ld [hl], $00                                  ; $5e07: $36 $00
    ei                                            ; $5e09: $fb
    ld e, h                                       ; $5e0a: $5c
    pop de                                        ; $5e0b: $d1
    ld [hl], $fb                                  ; $5e0c: $36 $fb
    ld d, h                                       ; $5e0e: $54
    reti                                          ; $5e0f: $d9


    scf                                           ; $5e10: $37
    nop                                           ; $5e11: $00
    ei                                            ; $5e12: $fb
    ld [hl], l                                    ; $5e13: $75
    ld sp, hl                                     ; $5e14: $f9
    rst $10                                       ; $5e15: $d7
    rst $38                                       ; $5e16: $ff
    xor c                                         ; $5e17: $a9
    rst $10                                       ; $5e18: $d7
    ld e, h                                       ; $5e19: $5c
    nop                                           ; $5e1a: $00
    and e                                         ; $5e1b: $a3
    cp d                                          ; $5e1c: $ba
    ld b, l                                       ; $5e1d: $45
    dec l                                         ; $5e1e: $2d
    db $d3                                        ; $5e1f: $d3
    sub [hl]                                      ; $5e20: $96
    db $eb                                        ; $5e21: $eb
    ld h, c                                       ; $5e22: $61
    add b                                         ; $5e23: $80
    cp [hl]                                       ; $5e24: $be
    nop                                           ; $5e25: $00
    cp a                                          ; $5e26: $bf
    rst $38                                       ; $5e27: $ff
    ld e, d                                       ; $5e28: $5a
    cp a                                          ; $5e29: $bf
    db $e4                                        ; $5e2a: $e4
    rra                                           ; $5e2b: $1f
    ld [hl], c                                    ; $5e2c: $71
    nop                                           ; $5e2d: $00
    adc [hl]                                      ; $5e2e: $8e
    xor [hl]                                      ; $5e2f: $ae
    ld d, c                                       ; $5e30: $51
    adc h                                         ; $5e31: $8c
    di                                            ; $5e32: $f3
    ld hl, $d6ff                                  ; $5e33: $21 $ff $d6
    add b                                         ; $5e36: $80
    ld b, h                                       ; $5e37: $44
    dec b                                         ; $5e38: $05
    ld a, a                                       ; $5e39: $7f
    rst $38                                       ; $5e3a: $ff
    dec l                                         ; $5e3b: $2d
    rst $28                                       ; $5e3c: $ef
    or l                                          ; $5e3d: $b5
    ld [hl], a                                    ; $5e3e: $77
    and h                                         ; $5e3f: $a4
    ld bc, $b467                                  ; $5e40: $01 $67 $b4
    ld [hl], a                                    ; $5e43: $77
    ret z                                         ; $5e44: $c8

    cpl                                           ; $5e45: $2f
    cp [hl]                                       ; $5e46: $be
    ld a, l                                       ; $5e47: $7d
    and e                                         ; $5e48: $a3
    ld c, $40                                     ; $5e49: $0e $40

jr_09e_5e4b:
    db $eb                                        ; $5e4b: $eb
    ld a, [hl-]                                   ; $5e4c: $3a
    inc b                                         ; $5e4d: $04
    xor d                                         ; $5e4e: $aa
    cp e                                          ; $5e4f: $bb
    db $ed                                        ; $5e50: $ed
    db $fd                                        ; $5e51: $fd
    and $ff                                       ; $5e52: $e6 $ff
    nop                                           ; $5e54: $00
    ld [hl], l                                    ; $5e55: $75
    db $ed                                        ; $5e56: $ed
    jp nc, $9235                                  ; $5e57: $d2 $35 $92

    ld [hl], l                                    ; $5e5a: $75
    db $d3                                        ; $5e5b: $d3
    inc [hl]                                      ; $5e5c: $34
    nop                                           ; $5e5d: $00
    jp nc, $cb35                                  ; $5e5e: $d2 $35 $cb

    inc a                                         ; $5e61: $3c
    db $d3                                        ; $5e62: $d3
    inc [hl]                                      ; $5e63: $34
    srl h                                         ; $5e64: $cb $3c
    nop                                           ; $5e66: $00

jr_09e_5e67:
    rst $10                                       ; $5e67: $d7
    inc [hl]                                      ; $5e68: $34
    or [hl]                                       ; $5e69: $b6
    xor a                                         ; $5e6a: $af
    ld [hl], l                                    ; $5e6b: $75
    db $ed                                        ; $5e6c: $ed
    and [hl]                                      ; $5e6d: $a6
    cp a                                          ; $5e6e: $bf
    nop                                           ; $5e6f: $00
    ld [hl], $af                                  ; $5e70: $36 $af
    ld l, [hl]                                    ; $5e72: $6e
    rst $38                                       ; $5e73: $ff
    inc l                                         ; $5e74: $2c
    cp a                                          ; $5e75: $bf
    ld a, d                                       ; $5e76: $7a
    db $eb                                        ; $5e77: $eb
    nop                                           ; $5e78: $00
    ld l, h                                       ; $5e79: $6c
    rst $38                                       ; $5e7a: $ff
    ret                                           ; $5e7b: $c9


    ld a, $4d                                     ; $5e7c: $3e $4d
    cp [hl]                                       ; $5e7e: $be
    ret                                           ; $5e7f: $c9


    ld a, [hl-]                                   ; $5e80: $3a
    jr nz, jr_09e_5edc                            ; $5e81: $20 $59

    cp d                                          ; $5e83: $ba
    inc b                                         ; $5e84: $04
    ld [$3bd8], sp                                ; $5e85: $08 $d8 $3b
    ld d, e                                       ; $5e88: $53
    or d                                          ; $5e89: $b2
    ld a, [de]                                    ; $5e8a: $1a
    ld [$28ab], sp                                ; $5e8b: $08 $ab $28
    sbc e                                         ; $5e8e: $9b
    jr @+$06                                      ; $5e8f: $18 $04

    db $10                                        ; $5e91: $10
    ld a, [bc]                                    ; $5e92: $0a
    cp e                                          ; $5e93: $bb
    jr c, jr_09e_5ea7                             ; $5e94: $38 $11

    xor e                                         ; $5e96: $ab
    ld c, $bf                                     ; $5e97: $0e $bf
    jp z, $bf05                                   ; $5e99: $ca $05 $bf

    ld a, a                                       ; $5e9c: $7f
    cp a                                          ; $5e9d: $bf
    inc b                                         ; $5e9e: $04
    ld [$e002], sp                                ; $5e9f: $08 $02 $e0
    cp a                                          ; $5ea2: $bf
    ld h, b                                       ; $5ea3: $60
    cp a                                          ; $5ea4: $bf
    rst $20                                       ; $5ea5: $e7
    cp b                                          ; $5ea6: $b8

jr_09e_5ea7:
    db $10                                        ; $5ea7: $10
    ld a, [hl+]                                   ; $5ea8: $2a
    jr c, jr_09e_5eab                             ; $5ea9: $38 $00

jr_09e_5eab:
    jr c, jr_09e_5e67                             ; $5eab: $38 $ba

    add $79                                       ; $5ead: $c6 $79
    add a                                         ; $5eaf: $87
    db $fd                                        ; $5eb0: $fd
    inc bc                                        ; $5eb1: $03
    ld h, a                                       ; $5eb2: $67
    nop                                           ; $5eb3: $00
    cp b                                          ; $5eb4: $b8
    and a                                         ; $5eb5: $a7
    ld hl, sp+$67                                 ; $5eb6: $f8 $67
    cp b                                          ; $5eb8: $b8
    push hl                                       ; $5eb9: $e5
    cp d                                          ; $5eba: $ba
    daa                                           ; $5ebb: $27
    inc e                                         ; $5ebc: $1c
    ld hl, sp-$19                                 ; $5ebd: $f8 $e7
    cp b                                          ; $5ebf: $b8
    inc b                                         ; $5ec0: $04
    ld [$0814], sp                                ; $5ec1: $08 $14 $08
    inc b                                         ; $5ec4: $04
    ld c, b                                       ; $5ec5: $48
    dec d                                         ; $5ec6: $15
    rst $38                                       ; $5ec7: $ff
    nop                                           ; $5ec8: $00
    ld a, b                                       ; $5ec9: $78
    sbc a                                         ; $5eca: $9f
    ld [hl-], a                                   ; $5ecb: $32
    db $dd                                        ; $5ecc: $dd
    ld [hl], l                                    ; $5ecd: $75
    sbc d                                         ; $5ece: $9a
    inc sp                                        ; $5ecf: $33
    call c, Call_09e_7500                         ; $5ed0: $dc $00 $75
    sbc d                                         ; $5ed3: $9a
    ccf                                           ; $5ed4: $3f
    ret c                                         ; $5ed5: $d8

    ld [hl], d                                    ; $5ed6: $72
    sbc l                                         ; $5ed7: $9d
    ld [$106f], sp                                ; $5ed8: $08 $6f $10
    xor d                                         ; $5edb: $aa

jr_09e_5edc:
    db $ed                                        ; $5edc: $ed
    inc c                                         ; $5edd: $0c
    inc b                                         ; $5ede: $04
    nop                                           ; $5edf: $00
    inc l                                         ; $5ee0: $2c
    ld l, a                                       ; $5ee1: $6f
    xor b                                         ; $5ee2: $a8
    rst $28                                       ; $5ee3: $ef
    nop                                           ; $5ee4: $00
    ld h, l                                       ; $5ee5: $65
    ld h, a                                       ; $5ee6: $67
    ld b, e                                       ; $5ee7: $43
    ld b, e                                       ; $5ee8: $43
    ret z                                         ; $5ee9: $c8

    cpl                                           ; $5eea: $2f
    ld l, d                                       ; $5eeb: $6a
    xor l                                         ; $5eec: $ad
    ld c, b                                       ; $5eed: $48
    call z, Call_000_0004                         ; $5eee: $cc $04 $00
    inc l                                         ; $5ef1: $2c
    rst $28                                       ; $5ef2: $ef
    stop                                          ; $5ef3: $10 $00
    rst $20                                       ; $5ef5: $e7
    jp $00c3                                      ; $5ef6: $c3 $c3 $00


    rla                                           ; $5ef9: $17
    db $db                                        ; $5efa: $db
    ld d, d                                       ; $5efb: $52
    sbc $57                                       ; $5efc: $de $57
    db $db                                        ; $5efe: $db

jr_09e_5eff:
    ld b, d                                       ; $5eff: $42
    adc $00                                       ; $5f00: $ce $00
    db $d3                                        ; $5f02: $d3
    rst $18                                       ; $5f03: $df
    adc d                                         ; $5f04: $8a
    adc [hl]                                      ; $5f05: $8e
    ld d, a                                       ; $5f06: $57
    ld e, a                                       ; $5f07: $5f
    dec c                                         ; $5f08: $0d
    dec c                                         ; $5f09: $0d
    nop                                           ; $5f0a: $00
    ld d, l                                       ; $5f0b: $55
    rst $38                                       ; $5f0c: $ff
    ld e, a                                       ; $5f0d: $5f
    and b                                         ; $5f0e: $a0
    cp a                                          ; $5f0f: $bf
    ld b, b                                       ; $5f10: $40
    ld [hl], a                                    ; $5f11: $77
    adc b                                         ; $5f12: $88
    jr nz, jr_09e_5eff                            ; $5f13: $20 $ea

    dec d                                         ; $5f15: $15
    jp $ba0f                                      ; $5f16: $c3 $0f $ba


    ld b, l                                       ; $5f19: $45
    ld d, l                                       ; $5f1a: $55
    rst $38                                       ; $5f1b: $ff
    ld d, b                                       ; $5f1c: $50
    ld c, b                                       ; $5f1d: $48
    xor a                                         ; $5f1e: $af
    call $ab0f                                    ; $5f1f: $cd $0f $ab
    ld d, h                                       ; $5f22: $54
    sbc a                                         ; $5f23: $9f
    inc c                                         ; $5f24: $0c
    add c                                         ; $5f25: $81
    ld a, [hl]                                    ; $5f26: $7e
    ld d, l                                       ; $5f27: $55
    inc [hl]                                      ; $5f28: $34
    rst $38                                       ; $5f29: $ff
    ld [bc], a                                    ; $5f2a: $02
    db $e3                                        ; $5f2b: $e3
    rrca                                          ; $5f2c: $0f
    pop hl                                        ; $5f2d: $e1
    rlca                                          ; $5f2e: $07
    ld d, l                                       ; $5f2f: $55
    or e                                          ; $5f30: $b3
    inc b                                         ; $5f31: $04
    ld d, h                                       ; $5f32: $54
    xor e                                         ; $5f33: $ab
    nop                                           ; $5f34: $00
    ld d, h                                       ; $5f35: $54
    rst $38                                       ; $5f36: $ff
    xor [hl]                                      ; $5f37: $ae
    rst $38                                       ; $5f38: $ff
    ld b, e                                       ; $5f39: $43
    cp a                                          ; $5f3a: $bf
    jp hl                                         ; $5f3b: $e9


    rla                                           ; $5f3c: $17
    nop                                           ; $5f3d: $00
    db $fd                                        ; $5f3e: $fd
    inc bc                                        ; $5f3f: $03
    ld d, c                                       ; $5f40: $51
    xor a                                         ; $5f41: $af
    xor c                                         ; $5f42: $a9
    ld d, a                                       ; $5f43: $57
    rla                                           ; $5f44: $17
    rst $38                                       ; $5f45: $ff
    nop                                           ; $5f46: $00
    ld e, b                                       ; $5f47: $58
    cp e                                          ; $5f48: $bb
    ld [de], a                                    ; $5f49: $12
    di                                            ; $5f4a: $f3
    ld l, d                                       ; $5f4b: $6a
    xor e                                         ; $5f4c: $ab
    ld [hl-], a                                   ; $5f4d: $32
    di                                            ; $5f4e: $f3
    nop                                           ; $5f4f: $00
    ld hl, $22e1                                  ; $5f50: $21 $e1 $22
    db $e3                                        ; $5f53: $e3
    ld h, c                                       ; $5f54: $61
    pop hl                                        ; $5f55: $e1
    pop bc                                        ; $5f56: $c1
    pop bc                                        ; $5f57: $c1
    inc b                                         ; $5f58: $04
    ld [$6ebb], sp                                ; $5f59: $08 $bb $6e
    rst $38                                       ; $5f5c: $ff
    ld c, [hl]                                    ; $5f5d: $4e
    jp nz, Jump_09e_6901                          ; $5f5e: $c2 $01 $69

    ld sp, hl                                     ; $5f61: $f9
    nop                                           ; $5f62: $00
    ld a, [hl+]                                   ; $5f63: $2a
    cp e                                          ; $5f64: $bb
    ld [hl], c                                    ; $5f65: $71
    pop af                                        ; $5f66: $f1
    xor b                                         ; $5f67: $a8
    xor b                                         ; $5f68: $a8
    ld b, d                                       ; $5f69: $42
    cp a                                          ; $5f6a: $bf
    nop                                           ; $5f6b: $00
    ld h, c                                       ; $5f6c: $61
    sbc a                                         ; $5f6d: $9f
    ld d, b                                       ; $5f6e: $50
    xor a                                         ; $5f6f: $af
    ld h, b                                       ; $5f70: $60
    sbc a                                         ; $5f71: $9f
    ld h, h                                       ; $5f72: $64
    sbc e                                         ; $5f73: $9b
    ld [$857a], sp                                ; $5f74: $08 $7a $85
    ld a, a                                       ; $5f77: $7f
    add b                                         ; $5f78: $80
    ld a, b                                       ; $5f79: $78
    dec sp                                        ; $5f7a: $3b
    nop                                           ; $5f7b: $00
    rst $38                                       ; $5f7c: $ff
    add b                                         ; $5f7d: $80
    ld h, b                                       ; $5f7e: $60

jr_09e_5f7f:
    ld a, a                                       ; $5f7f: $7f
    dec e                                         ; $5f80: $1d
    dec b                                         ; $5f81: $05
    ld h, d                                       ; $5f82: $62
    rlca                                          ; $5f83: $07
    ld d, l                                       ; $5f84: $55
    rst $38                                       ; $5f85: $ff
    rst $28                                       ; $5f86: $ef
    rst $38                                       ; $5f87: $ff
    ld e, a                                       ; $5f88: $5f
    dec hl                                        ; $5f89: $2b
    rst $38                                       ; $5f8a: $ff
    db $ed                                        ; $5f8b: $ed
    inc b                                         ; $5f8c: $04
    nop                                           ; $5f8d: $00
    rst $30                                       ; $5f8e: $f7
    or d                                          ; $5f8f: $b2
    ld b, $aa                                     ; $5f90: $06 $aa
    or [hl]                                       ; $5f92: $b6
    ld b, $e4                                     ; $5f93: $06 $e4
    ld c, $44                                     ; $5f95: $0e $44
    ld d, l                                       ; $5f97: $55
    ret                                           ; $5f98: $c9


    ld h, $aa                                     ; $5f99: $26 $aa
    rst $38                                       ; $5f9b: $ff
    db $fd                                        ; $5f9c: $fd
    db $10                                        ; $5f9d: $10
    ld d, b                                       ; $5f9e: $50
    xor e                                         ; $5f9f: $ab
    rst $38                                       ; $5fa0: $ff
    nop                                           ; $5fa1: $00
    ld d, [hl]                                    ; $5fa2: $56
    rst $38                                       ; $5fa3: $ff
    db $eb                                        ; $5fa4: $eb
    rst $38                                       ; $5fa5: $ff
    or $ff                                        ; $5fa6: $f6 $ff
    ld e, e                                       ; $5fa8: $5b
    rst $38                                       ; $5fa9: $ff
    ld e, e                                       ; $5faa: $5b
    xor $6e                                       ; $5fab: $ee $6e
    ld [bc], a                                    ; $5fad: $02
    xor $34                                       ; $5fae: $ee $34
    db $10                                        ; $5fb0: $10
    inc b                                         ; $5fb1: $04
    jr jr_09e_602e                                ; $5fb2: $18 $7a

    ld a, [c]                                     ; $5fb4: $f2
    ld d, $00                                     ; $5fb5: $16 $00
    ccf                                           ; $5fb7: $3f
    or h                                          ; $5fb8: $b4
    xor [hl]                                      ; $5fb9: $ae
    ld a, [de]                                    ; $5fba: $1a
    rst $38                                       ; $5fbb: $ff
    jr z, jr_09e_5fbe                             ; $5fbc: $28 $00

jr_09e_5fbe:
    inc b                                         ; $5fbe: $04
    jr jr_09e_5f7f                                ; $5fbf: $18 $be

    ld a, h                                       ; $5fc1: $7c
    ld [de], a                                    ; $5fc2: $12
    ld [$21ea], a                                 ; $5fc3: $ea $ea $21
    push de                                       ; $5fc6: $d5
    push de                                       ; $5fc7: $d5
    inc b                                         ; $5fc8: $04
    ld c, b                                       ; $5fc9: $48
    cp [hl]                                       ; $5fca: $be
    cp [hl]                                       ; $5fcb: $be
    ld e, [hl]                                    ; $5fcc: $5e
    ld e, [hl]                                    ; $5fcd: $5e
    inc b                                         ; $5fce: $04
    ld c, b                                       ; $5fcf: $48
    add b                                         ; $5fd0: $80
    ret nz                                        ; $5fd1: $c0

    rra                                           ; $5fd2: $1f
    ld bc, $0301                                  ; $5fd3: $01 $01 $03
    inc bc                                        ; $5fd6: $03
    ld b, $07                                     ; $5fd7: $06 $07
    ld b, $28                                     ; $5fd9: $06 $28
    rlca                                          ; $5fdb: $07
    rrca                                          ; $5fdc: $0f
    ld bc, $0710                                  ; $5fdd: $01 $10 $07
    ld [$1f00], sp                                ; $5fe0: $08 $00 $1f
    rra                                           ; $5fe3: $1f
    inc sp                                        ; $5fe4: $33
    inc b                                         ; $5fe5: $04
    ccf                                           ; $5fe6: $3f
    inc hl                                        ; $5fe7: $23
    ccf                                           ; $5fe8: $3f
    ld h, a                                       ; $5fe9: $67
    ld a, a                                       ; $5fea: $7f
    ld bc, $6f08                                  ; $5feb: $01 $08 $6f
    ld a, a                                       ; $5fee: $7f
    db $10                                        ; $5fef: $10
    ld h, [hl]                                    ; $5ff0: $66
    ld a, a                                       ; $5ff1: $7f
    ld h, a                                       ; $5ff2: $67
    ld [bc], a                                    ; $5ff3: $02
    db $10                                        ; $5ff4: $10
    scf                                           ; $5ff5: $37
    ccf                                           ; $5ff6: $3f
    rlca                                          ; $5ff7: $07
    rlca                                          ; $5ff8: $07
    inc c                                         ; $5ff9: $0c
    inc a                                         ; $5ffa: $3c
    ccf                                           ; $5ffb: $3f
    rst $30                                       ; $5ffc: $f7
    rst $28                                       ; $5ffd: $ef
    or l                                          ; $5ffe: $b5
    ld b, $b3                                     ; $5fff: $06 $b3
    ld h, $e0                                     ; $6001: $26 $e0
    ldh [rNR33], a                                ; $6003: $e0 $1d
    ld a, h                                       ; $6005: $7c
    db $fc                                        ; $6006: $fc
    rst $30                                       ; $6007: $f7
    or h                                          ; $6008: $b4
    nop                                           ; $6009: $00
    ld l, a                                       ; $600a: $6f
    daa                                           ; $600b: $27
    or d                                          ; $600c: $b2
    dec h                                         ; $600d: $25
    add b                                         ; $600e: $80
    ld e, b                                       ; $600f: $58
    ld b, $02                                     ; $6010: $06 $02
    ld h, b                                       ; $6012: $60
    ldh [$a0], a                                  ; $6013: $e0 $a0
    ldh [$d0], a                                  ; $6015: $e0 $d0
    or b                                          ; $6017: $b0
    sbc b                                         ; $6018: $98
    daa                                           ; $6019: $27
    rst $38                                       ; $601a: $ff
    ld h, b                                       ; $601b: $60
    rst $00                                       ; $601c: $c7
    ld e, b                                       ; $601d: $58
    rlca                                          ; $601e: $07
    inc h                                         ; $601f: $24

jr_09e_6020:
    jr z, jr_09e_6020                             ; $6020: $28 $fe

    rst $38                                       ; $6022: $ff
    db $fd                                        ; $6023: $fd
    cp $e2                                        ; $6024: $fe $e2
    ld [$adfd], sp                                ; $6026: $08 $fd $ad
    ld d, e                                       ; $6029: $53
    adc d                                         ; $602a: $8a
    db $dd                                        ; $602b: $dd
    rlca                                          ; $602c: $07
    sub b                                         ; $602d: $90

jr_09e_602e:
    ldh a, [$50]                                  ; $602e: $f0 $50
    nop                                           ; $6030: $00
    or b                                          ; $6031: $b0
    and b                                         ; $6032: $a0
    ld h, b                                       ; $6033: $60
    ld d, b                                       ; $6034: $50
    ldh a, [$b8]                                  ; $6035: $f0 $b8
    ld hl, sp+$7c                                 ; $6037: $f8 $7c
    inc b                                         ; $6039: $04
    db $fc                                        ; $603a: $fc
    call c, $aefc                                 ; $603b: $dc $fc $ae
    sbc $d0                                       ; $603e: $de $d0
    cpl                                           ; $6040: $2f
    cp a                                          ; $6041: $bf
    rst $38                                       ; $6042: $ff
    ld b, b                                       ; $6043: $40

jr_09e_6044:
    di                                            ; $6044: $f3
    db $db                                        ; $6045: $db
    rla                                           ; $6046: $17
    db $fc                                        ; $6047: $fc
    rst $38                                       ; $6048: $ff
    push af                                       ; $6049: $f5
    ld a, [$fdaa]                                 ; $604a: $fa $aa $fd
    jr jr_09e_6044                                ; $604d: $18 $f5

    cp $fa                                        ; $604f: $fe $fa
    or $07                                        ; $6051: $f6 $07
    ld c, h                                       ; $6053: $4c
    dec bc                                        ; $6054: $0b
    or $0e                                        ; $6055: $f6 $0e
    ld l, [hl]                                    ; $6057: $6e
    nop                                           ; $6058: $00
    sbc [hl]                                      ; $6059: $9e
    or $1e                                        ; $605a: $f6 $1e
    ld c, [hl]                                    ; $605c: $4e
    cp [hl]                                       ; $605d: $be
    ld b, [hl]                                    ; $605e: $46
    cp $92                                        ; $605f: $fe $92
    ld b, $ee                                     ; $6061: $06 $ee
    ld l, [hl]                                    ; $6063: $6e
    sub $94                                       ; $6064: $d6 $94
    db $ec                                        ; $6066: $ec
    reti                                          ; $6067: $d9


    inc b                                         ; $6068: $04
    ld a, d                                       ; $6069: $7a
    jr z, @+$01                                   ; $606a: $28 $ff

    inc bc                                        ; $606c: $03
    ld [de], a                                    ; $606d: $12
    rst $38                                       ; $606e: $ff
    db $d3                                        ; $606f: $d3
    ld hl, $12ed                                  ; $6070: $21 $ed $12
    db $10                                        ; $6073: $10
    jr c, @-$02                                   ; $6074: $38 $fc

    inc c                                         ; $6076: $0c
    nop                                           ; $6077: $00
    pop bc                                        ; $6078: $c1
    dec l                                         ; $6079: $2d
    ld [hl], d                                    ; $607a: $72
    and c                                         ; $607b: $a1
    push af                                       ; $607c: $f5
    ld [de], a                                    ; $607d: $12
    rst $30                                       ; $607e: $f7
    ld [de], a                                    ; $607f: $12
    nop                                           ; $6080: $00
    rst $20                                       ; $6081: $e7
    ld [de], a                                    ; $6082: $12
    and $13                                       ; $6083: $e6 $13
    push de                                       ; $6085: $d5
    inc hl                                        ; $6086: $23
    rst $00                                       ; $6087: $c7
    ld hl, $fe20                                  ; $6088: $21 $20 $fe
    ld bc, $3cf1                                  ; $608b: $01 $f1 $3c
    rst $28                                       ; $608e: $ef
    db $10                                        ; $608f: $10
    ld a, a                                       ; $6090: $7f
    add b                                         ; $6091: $80
    ld h, $48                                     ; $6092: $26 $48
    ld sp, hl                                     ; $6094: $f9
    ld l, b                                       ; $6095: $68
    ld a, [bc]                                    ; $6096: $0a
    db $e3                                        ; $6097: $e3
    cp h                                          ; $6098: $bc
    ld [hl], b                                    ; $6099: $70
    ld a, [hl+]                                   ; $609a: $2a
    and d                                         ; $609b: $a2
    ld b, c                                       ; $609c: $41
    add [hl]                                      ; $609d: $86
    nop                                           ; $609e: $00
    ld b, c                                       ; $609f: $41
    add e                                         ; $60a0: $83
    ld b, b                                       ; $60a1: $40
    ld b, a                                       ; $60a2: $47
    add b                                         ; $60a3: $80
    inc bc                                        ; $60a4: $03
    add b                                         ; $60a5: $80
    push de                                       ; $60a6: $d5

jr_09e_60a7:
    nop                                           ; $60a7: $00
    add b                                         ; $60a8: $80
    ld l, d                                       ; $60a9: $6a
    pop bc                                        ; $60aa: $c1
    cp l                                          ; $60ab: $bd
    ld h, e                                       ; $60ac: $63
    rst $38                                       ; $60ad: $ff
    add b                                         ; $60ae: $80
    rst $38                                       ; $60af: $ff
    nop                                           ; $60b0: $00
    add b                                         ; $60b1: $80
    cp [hl]                                       ; $60b2: $be
    pop bc                                        ; $60b3: $c1
    ld a, a                                       ; $60b4: $7f
    ret nz                                        ; $60b5: $c0

    ld e, h                                       ; $60b6: $5c
    db $e3                                        ; $60b7: $e3
    ld e, e                                       ; $60b8: $5b
    ld bc, $97e4                                  ; $60b9: $01 $e4 $97
    add sp, $11                                   ; $60bc: $e8 $11
    db $eb                                        ; $60be: $eb
    daa                                           ; $60bf: $27
    ld hl, sp-$60                                 ; $60c0: $f8 $a0
    ld a, [bc]                                    ; $60c2: $0a
    nop                                           ; $60c3: $00
    and a                                         ; $60c4: $a7
    ld hl, sp+$27                                 ; $60c5: $f8 $27
    ld hl, sp-$5a                                 ; $60c7: $f8 $a6
    ld sp, hl                                     ; $60c9: $f9
    daa                                           ; $60ca: $27
    ld hl, sp+$00                                 ; $60cb: $f8 $00

jr_09e_60cd:
    cp a                                          ; $60cd: $bf
    rst $38                                       ; $60ce: $ff
    ld e, [hl]                                    ; $60cf: $5e
    cp a                                          ; $60d0: $bf
    ldh a, [rIF]                                  ; $60d1: $f0 $0f
    db $fd                                        ; $60d3: $fd
    ld [bc], a                                    ; $60d4: $02

jr_09e_60d5:
    ldh [$d6], a                                  ; $60d5: $e0 $d6
    ld [bc], a                                    ; $60d7: $02
    ld h, e                                       ; $60d8: $63
    dec b                                         ; $60d9: $05
    ld e, h                                       ; $60da: $5c
    nop                                           ; $60db: $00
    rst $38                                       ; $60dc: $ff
    jr nc, jr_09e_60a7                            ; $60dd: $30 $c8

    ld [hl], b                                    ; $60df: $70
    adc b                                         ; $60e0: $88
    ld [bc], a                                    ; $60e1: $02
    db $f4                                        ; $60e2: $f4
    ld [$04ff], sp                                ; $60e3: $08 $ff $04
    rst $28                                       ; $60e6: $ef
    inc de                                        ; $60e7: $13
    add c                                         ; $60e8: $81
    jr jr_09e_613f                                ; $60e9: $18 $54

    ld a, c                                       ; $60eb: $79
    xor e                                         ; $60ec: $ab
    jp c, Jump_09e_792f                           ; $60ed: $da $2f $79

    ld [$1005], sp                                ; $60f0: $08 $05 $10
    inc b                                         ; $60f3: $04
    jr nz, jr_09e_60d5                            ; $60f4: $20 $df

    ld hl, $380c                                  ; $60f6: $21 $0c $38
    nop                                           ; $60f9: $00
    rst $38                                       ; $60fa: $ff
    ld bc, $807f                                  ; $60fb: $01 $7f $80
    ld a, a                                       ; $60fe: $7f
    pop bc                                        ; $60ff: $c1
    cp a                                          ; $6100: $bf
    ld h, b                                       ; $6101: $60
    ld [bc], a                                    ; $6102: $02
    rst $28                                       ; $6103: $ef
    or c                                          ; $6104: $b1
    cp a                                          ; $6105: $bf
    ld h, b                                       ; $6106: $60
    ld a, a                                       ; $6107: $7f
    ld hl, $0004                                  ; $6108: $21 $04 $00
    pop bc                                        ; $610b: $c1
    jr nc, jr_09e_60cd                            ; $610c: $30 $bf

    ret nz                                        ; $610e: $c0

    ld sp, $1418                                  ; $610f: $31 $18 $14
    dec bc                                        ; $6112: $0b
    ld b, l                                       ; $6113: $45
    rst $38                                       ; $6114: $ff
    cp e                                          ; $6115: $bb

jr_09e_6116:
    rst $00                                       ; $6116: $c7
    adc b                                         ; $6117: $88
    ld [$3d2b], sp                                ; $6118: $08 $2b $3d
    sbc $7f                                       ; $611b: $de $7f
    nop                                           ; $611d: $00
    inc hl                                        ; $611e: $23
    ld [hl], a                                    ; $611f: $77
    sbc b                                         ; $6120: $98
    scf                                           ; $6121: $37
    nop                                           ; $6122: $00
    ret c                                         ; $6123: $d8

    ld [hl], a                                    ; $6124: $77
    sbc b                                         ; $6125: $98
    dec a                                         ; $6126: $3d
    jp c, $9d72                                   ; $6127: $da $72 $9d

    inc a                                         ; $612a: $3c
    nop                                           ; $612b: $00
    rst $18                                       ; $612c: $df
    ld [hl], d                                    ; $612d: $72
    sbc l                                         ; $612e: $9d
    scf                                           ; $612f: $37
    ret c                                         ; $6130: $d8

    ld [hl], e                                    ; $6131: $73
    sbc h                                         ; $6132: $9c
    ld sp, $de00                                  ; $6133: $31 $00 $de
    ld d, b                                       ; $6136: $50
    cp a                                          ; $6137: $bf
    ld a, [hl+]                                   ; $6138: $2a
    rst $38                                       ; $6139: $ff
    set 6, h                                      ; $613a: $cb $f4
    cp a                                          ; $613c: $bf
    nop                                           ; $613d: $00
    ld b, b                                       ; $613e: $40

jr_09e_613f:
    ld a, a                                       ; $613f: $7f
    add b                                         ; $6140: $80
    ld [$d515], a                                 ; $6141: $ea $15 $d5
    ld a, [hl+]                                   ; $6144: $2a
    cp a                                          ; $6145: $bf
    inc b                                         ; $6146: $04
    ld b, b                                       ; $6147: $40
    rst $38                                       ; $6148: $ff
    nop                                           ; $6149: $00
    rla                                           ; $614a: $17
    add sp, -$68                                  ; $614b: $e8 $98
    ld [$aa55], sp                                ; $614d: $08 $55 $aa
    add b                                         ; $6150: $80

jr_09e_6151:
    ret                                           ; $6151: $c9


    ld [bc], a                                    ; $6152: $02
    nop                                           ; $6153: $00
    db $f4                                        ; $6154: $f4
    dec bc                                        ; $6155: $0b
    ld b, l                                       ; $6156: $45
    cp a                                          ; $6157: $bf
    cp $01                                        ; $6158: $fe $01
    jr nz, jr_09e_6151                            ; $615a: $20 $f5

    ld a, [bc]                                    ; $615c: $0a
    adc e                                         ; $615d: $8b
    rrca                                          ; $615e: $0f
    ld [$a215], a                                 ; $615f: $ea $15 $a2
    ld e, a                                       ; $6162: $5f
    ld e, a                                       ; $6163: $5f
    inc b                                         ; $6164: $04
    rst $38                                       ; $6165: $ff
    ld a, [$abff]                                 ; $6166: $fa $ff $ab
    ld d, a                                       ; $6169: $57
    ret c                                         ; $616a: $d8

    ld a, [bc]                                    ; $616b: $0a
    ld b, c                                       ; $616c: $41
    cp a                                          ; $616d: $bf
    ld b, b                                       ; $616e: $40
    adc a                                         ; $616f: $8f
    add a                                         ; $6170: $87
    ld [bc], a                                    ; $6171: $02
    pop de                                        ; $6172: $d1
    rst $38                                       ; $6173: $ff
    add hl, bc                                    ; $6174: $09
    rst $30                                       ; $6175: $f7
    db $f4                                        ; $6176: $f4
    dec bc                                        ; $6177: $0b
    nop                                           ; $6178: $00
    sbc $3f                                       ; $6179: $de $3f
    rla                                           ; $617b: $17
    add sp, -$41                                  ; $617c: $e8 $bf
    ld b, b                                       ; $617e: $40
    ld a, [$0005]                                 ; $617f: $fa $05 $00
    push af                                       ; $6182: $f5
    ld a, [bc]                                    ; $6183: $0a
    ld e, a                                       ; $6184: $5f
    and b                                         ; $6185: $a0
    ld a, [bc]                                    ; $6186: $0a
    push af                                       ; $6187: $f5
    ld a, d                                       ; $6188: $7a
    rst $38                                       ; $6189: $ff
    jr nz, jr_09e_6116                            ; $618a: $20 $8a

    push af                                       ; $618c: $f5
    add hl, sp                                    ; $618d: $39
    ld c, $aa                                     ; $618e: $0e $aa
    ld d, l                                       ; $6190: $55
    ld e, a                                       ; $6191: $5f
    and b                                         ; $6192: $a0
    rst $38                                       ; $6193: $ff
    inc b                                         ; $6194: $04
    nop                                           ; $6195: $00
    and b                                         ; $6196: $a0
    ld e, a                                       ; $6197: $5f
    add c                                         ; $6198: $81
    cp $47                                        ; $6199: $fe $47
    ld c, $d5                                     ; $619b: $0e $d5
    ld a, [hl+]                                   ; $619d: $2a
    add b                                         ; $619e: $80
    ld d, b                                       ; $619f: $50
    ld [$af50], sp                                ; $61a0: $08 $50 $af
    nop                                           ; $61a3: $00
    rst $38                                       ; $61a4: $ff
    ld e, l                                       ; $61a5: $5d
    and e                                         ; $61a6: $a3
    ld sp, hl                                     ; $61a7: $f9
    ld b, c                                       ; $61a8: $41
    rlca                                          ; $61a9: $07
    and d                                         ; $61aa: $a2
    dec bc                                        ; $61ab: $0b
    push af                                       ; $61ac: $f5
    dec bc                                        ; $61ad: $0b
    and c                                         ; $61ae: $a1
    ld e, a                                       ; $61af: $5f
    ld bc, $18e4                                  ; $61b0: $01 $e4 $18
    and e                                         ; $61b3: $a3
    ld c, b                                       ; $61b4: $48
    rlca                                          ; $61b5: $07
    and d                                         ; $61b6: $a2
    inc e                                         ; $61b7: $1c
    rlca                                          ; $61b8: $07
    sub h                                         ; $61b9: $94
    rst $28                                       ; $61ba: $ef
    ld b, c                                       ; $61bb: $41
    inc b                                         ; $61bc: $04
    nop                                           ; $61bd: $00

jr_09e_61be:
    sbc a                                         ; $61be: $9f
    add hl, bc                                    ; $61bf: $09
    inc b                                         ; $61c0: $04
    ld a, [hl+]                                   ; $61c1: $2a
    rst $18                                       ; $61c2: $df
    ld b, h                                       ; $61c3: $44
    cp a                                          ; $61c4: $bf
    ld [hl+], a                                   ; $61c5: $22
    inc b                                         ; $61c6: $04
    nop                                           ; $61c7: $00
    nop                                           ; $61c8: $00
    rst $38                                       ; $61c9: $ff
    jr nz, @+$07                                  ; $61ca: $20 $05

    cp $af                                        ; $61cc: $fe $af
    add hl, bc                                    ; $61ce: $09
    ld hl, $10ff                                  ; $61cf: $21 $ff $10
    rst $28                                       ; $61d2: $ef
    and c                                         ; $61d3: $a1
    nop                                           ; $61d4: $00
    ld a, [hl]                                    ; $61d5: $7e
    db $10                                        ; $61d6: $10
    rst $28                                       ; $61d7: $ef
    and l                                         ; $61d8: $a5
    ld a, [hl]                                    ; $61d9: $7e
    ld [de], a                                    ; $61da: $12
    db $ed                                        ; $61db: $ed
    ld b, c                                       ; $61dc: $41
    nop                                           ; $61dd: $00
    rst $38                                       ; $61de: $ff
    add h                                         ; $61df: $84
    rst $38                                       ; $61e0: $ff
    ld [de], a                                    ; $61e1: $12
    rst $28                                       ; $61e2: $ef
    add b                                         ; $61e3: $80
    rst $38                                       ; $61e4: $ff
    ld b, d                                       ; $61e5: $42
    nop                                           ; $61e6: $00
    rst $38                                       ; $61e7: $ff
    sub b                                         ; $61e8: $90
    rst $28                                       ; $61e9: $ef
    ld c, d                                       ; $61ea: $4a
    rst $30                                       ; $61eb: $f7
    sub b                                         ; $61ec: $90
    rst $28                                       ; $61ed: $ef
    ld b, b                                       ; $61ee: $40
    ld [hl+], a                                   ; $61ef: $22
    cp a                                          ; $61f0: $bf
    inc b                                         ; $61f1: $04
    sbc h                                         ; $61f2: $9c
    rlca                                          ; $61f3: $07
    call nz, Call_000_0b7f                        ; $61f4: $c4 $7f $0b
    inc b                                         ; $61f7: $04
    nop                                           ; $61f8: $00
    ld a, [bc]                                    ; $61f9: $0a
    nop                                           ; $61fa: $00
    rst $38                                       ; $61fb: $ff
    sub l                                         ; $61fc: $95
    ld a, a                                       ; $61fd: $7f
    ld c, l                                       ; $61fe: $4d
    or $92                                        ; $61ff: $f6 $92
    ld l, l                                       ; $6201: $6d
    ld c, h                                       ; $6202: $4c
    inc bc                                        ; $6203: $03
    rst $30                                       ; $6204: $f7
    nop                                           ; $6205: $00
    rst $38                                       ; $6206: $ff
    ld de, $44ef                                  ; $6207: $11 $ef $44
    inc b                                         ; $620a: $04
    nop                                           ; $620b: $00
    pop de                                        ; $620c: $d1
    nop                                           ; $620d: $00
    add b                                         ; $620e: $80
    or [hl]                                       ; $620f: $b6
    dec b                                         ; $6210: $05
    ld a, [bc]                                    ; $6211: $0a
    rst $30                                       ; $6212: $f7
    ld de, $88ef                                  ; $6213: $11 $ef $88
    rst $30                                       ; $6216: $f7
    ld bc, $3288                                  ; $6217: $01 $88 $32
    nop                                           ; $621a: $00
    ld bc, $92ff                                  ; $621b: $01 $ff $92
    inc b                                         ; $621e: $04
    nop                                           ; $621f: $00
    and d                                         ; $6220: $a2
    rst $18                                       ; $6221: $df
    ld de, $ef00                                  ; $6222: $11 $00 $ef
    ld [hl+], a                                   ; $6225: $22
    rst $18                                       ; $6226: $df
    dec b                                         ; $6227: $05
    rst $38                                       ; $6228: $ff
    ld [hl+], a                                   ; $6229: $22
    rst $18                                       ; $622a: $df
    dec h                                         ; $622b: $25
    nop                                           ; $622c: $00
    rst $18                                       ; $622d: $df
    ld [hl], b                                    ; $622e: $70
    dec c                                         ; $622f: $0d
    ld l, d                                       ; $6230: $6a
    ld [$ff42], sp                                ; $6231: $08 $42 $ff
    ld bc, $7c60                                  ; $6234: $01 $60 $7c
    add e                                         ; $6237: $83
    ld a, [hl]                                    ; $6238: $7e
    add c                                         ; $6239: $81
    inc b                                         ; $623a: $04
    ld c, b                                       ; $623b: $48
    jr jr_09e_61be                                ; $623c: $18 $80

    ld bc, $9918                                  ; $623e: $01 $18 $99
    sbc l                                         ; $6241: $9d
    db $db                                        ; $6242: $db
    db $db                                        ; $6243: $db
    rst $38                                       ; $6244: $ff
    ld a, a                                       ; $6245: $7f
    ld a, [hl]                                    ; $6246: $7e
    nop                                           ; $6247: $00
    db $db                                        ; $6248: $db
    rst $20                                       ; $6249: $e7
    add hl, de                                    ; $624a: $19
    add hl, sp                                    ; $624b: $39
    ld sp, $6171                                  ; $624c: $31 $71 $61
    pop hl                                        ; $624f: $e1
    nop                                           ; $6250: $00
    pop bc                                        ; $6251: $c1
    jp $8fd7                                      ; $6252: $c3 $d7 $8f


    rra                                           ; $6255: $1f
    dec a                                         ; $6256: $3d
    ld a, l                                       ; $6257: $7d
    pop af                                        ; $6258: $f1
    nop                                           ; $6259: $00
    db $eb                                        ; $625a: $eb
    pop bc                                        ; $625b: $c1
    sbc b                                         ; $625c: $98
    sbc h                                         ; $625d: $9c
    adc h                                         ; $625e: $8c
    adc [hl]                                      ; $625f: $8e
    add [hl]                                      ; $6260: $86
    add a                                         ; $6261: $87
    nop                                           ; $6262: $00
    add e                                         ; $6263: $83
    jp $f1e5                                      ; $6264: $c3 $e5 $f1


    ld hl, sp-$44                                 ; $6267: $f8 $bc
    sbc $8f                                       ; $6269: $de $8f
    nop                                           ; $626b: $00
    xor a                                         ; $626c: $af
    add e                                         ; $626d: $83
    rst $38                                       ; $626e: $ff
    rst $38                                       ; $626f: $ff
    xor d                                         ; $6270: $aa
    nop                                           ; $6271: $00
    rst $38                                       ; $6272: $ff
    nop                                           ; $6273: $00
    ret nc                                        ; $6274: $d0

    inc b                                         ; $6275: $04
    ld [$0006], sp                                ; $6276: $08 $06 $00
    ld d, l                                       ; $6279: $55
    ld b, $00                                     ; $627a: $06 $00
    rst $38                                       ; $627c: $ff
    db $eb                                        ; $627d: $eb
    pop bc                                        ; $627e: $c1
    rst $38                                       ; $627f: $ff
    ld l, b                                       ; $6280: $68
    pop bc                                        ; $6281: $c1
    inc b                                         ; $6282: $04
    ld [$0006], sp                                ; $6283: $08 $06 $00
    push de                                       ; $6286: $d5
    ld b, $00                                     ; $6287: $06 $00
    rst $38                                       ; $6289: $ff
    xor e                                         ; $628a: $ab
    add e                                         ; $628b: $83
    inc [hl]                                      ; $628c: $34
    rst $38                                       ; $628d: $ff
    add e                                         ; $628e: $83
    inc b                                         ; $628f: $04
    ld [$0006], sp                                ; $6290: $08 $06 $00
    rst $10                                       ; $6293: $d7
    ld b, $00                                     ; $6294: $06 $00
    rst $38                                       ; $6296: $ff
    ld d, l                                       ; $6297: $55
    ld c, $aa                                     ; $6298: $0e $aa
    xor d                                         ; $629a: $aa
    ld d, l                                       ; $629b: $55
    ld d, l                                       ; $629c: $55
    dec [hl]                                      ; $629d: $35
    nop                                           ; $629e: $00
    inc b                                         ; $629f: $04
    ld [$002f], sp                                ; $62a0: $08 $2f $00
    rst $38                                       ; $62a3: $ff
    ld bc, $ab55                                  ; $62a4: $01 $55 $ab
    xor e                                         ; $62a7: $ab
    ld d, l                                       ; $62a8: $55
    ld d, l                                       ; $62a9: $55
    xor e                                         ; $62aa: $ab
    ld bc, $0008                                  ; $62ab: $01 $08 $00
    db $10                                        ; $62ae: $10
    ld bc, $01ff                                  ; $62af: $01 $ff $01
    sbc a                                         ; $62b2: $9f
    nop                                           ; $62b3: $00
    push de                                       ; $62b4: $d5
    xor d                                         ; $62b5: $aa
    xor d                                         ; $62b6: $aa
    push de                                       ; $62b7: $d5
    db $10                                        ; $62b8: $10
    push de                                       ; $62b9: $d5
    xor d                                         ; $62ba: $aa
    add b                                         ; $62bb: $80
    ld [$8000], sp                                ; $62bc: $08 $00 $80
    rst $38                                       ; $62bf: $ff
    add b                                         ; $62c0: $80
    rst $38                                       ; $62c1: $ff
    ld b, c                                       ; $62c2: $41
    nop                                           ; $62c3: $00
    ld bc, $0140                                  ; $62c4: $01 $40 $01
    inc bc                                        ; $62c7: $03
    ld bc, $0107                                  ; $62c8: $01 $07 $01
    ld bc, $0160                                  ; $62cb: $01 $60 $01

jr_09e_62ce:
    adc h                                         ; $62ce: $8c
    adc a                                         ; $62cf: $8f
    add d                                         ; $62d0: $82
    add e                                         ; $62d1: $83
    add c                                         ; $62d2: $81
    add c                                         ; $62d3: $81
    add b                                         ; $62d4: $80
    ld bc, $0008                                  ; $62d5: $01 $08 $00
    add a                                         ; $62d8: $87
    add a                                         ; $62d9: $87
    sbc b                                         ; $62da: $98
    sbc h                                         ; $62db: $9c
    and e                                         ; $62dc: $a3
    nop                                           ; $62dd: $00
    nop                                           ; $62de: $00
    add h                                         ; $62df: $84
    nop                                           ; $62e0: $00
    ld b, [hl]                                    ; $62e1: $46
    ld h, h                                       ; $62e2: $64
    sub a                                         ; $62e3: $97
    or d                                          ; $62e4: $b2
    res 3, d                                      ; $62e5: $cb $9a
    rst $20                                       ; $62e7: $e7
    ld c, l                                       ; $62e8: $4d
    nop                                           ; $62e9: $00
    di                                            ; $62ea: $f3
    ld d, h                                       ; $62eb: $54
    xor e                                         ; $62ec: $ab
    ld c, $f1                                     ; $62ed: $0e $f1
    ld bc, $0001                                  ; $62ef: $01 $01 $00
    nop                                           ; $62f2: $00
    inc bc                                        ; $62f3: $03
    ld [bc], a                                    ; $62f4: $02
    dec b                                         ; $62f5: $05
    dec b                                         ; $62f6: $05
    adc e                                         ; $62f7: $8b
    adc e                                         ; $62f8: $8b
    ld d, a                                       ; $62f9: $57
    ld d, a                                       ; $62fa: $57
    nop                                           ; $62fb: $00
    xor a                                         ; $62fc: $af
    call z, $d337                                 ; $62fd: $cc $37 $d3
    inc l                                         ; $6300: $2c
    nop                                           ; $6301: $00
    ret nz                                        ; $6302: $c0

    ld b, b                                       ; $6303: $40
    ld b, b                                       ; $6304: $40
    ret nz                                        ; $6305: $c0

    ld l, $10                                     ; $6306: $2e $10
    add b                                         ; $6308: $80
    ld b, $fe                                     ; $6309: $06 $fe
    ret c                                         ; $630b: $d8

    jr c, @+$62                                   ; $630c: $38 $60

    ld b, b                                       ; $630e: $40
    ldh [$59], a                                  ; $630f: $e0 $59
    jr jr_09e_6315                                ; $6311: $18 $02

    ld b, e                                       ; $6313: $43
    ld [de], a                                    ; $6314: $12

jr_09e_6315:
    inc hl                                        ; $6315: $23
    dec bc                                        ; $6316: $0b
    inc de                                        ; $6317: $13
    nop                                           ; $6318: $00
    dec b                                         ; $6319: $05
    add hl, bc                                    ; $631a: $09
    ld [bc], a                                    ; $631b: $02
    rrca                                          ; $631c: $0f
    ld bc, $547d                                  ; $631d: $01 $7d $54
    xor e                                         ; $6320: $ab
    nop                                           ; $6321: $00
    xor [hl]                                      ; $6322: $ae
    ld d, c                                       ; $6323: $51
    dec d                                         ; $6324: $15
    ld [$bfc0], a                                 ; $6325: $ea $c0 $bf
    ld b, l                                       ; $6328: $45
    ei                                            ; $6329: $fb
    nop                                           ; $632a: $00
    sub e                                         ; $632b: $93
    rst $28                                       ; $632c: $ef
    and l                                         ; $632d: $a5
    ld e, e                                       ; $632e: $5b
    add d                                         ; $632f: $82
    add b                                         ; $6330: $80
    adc b                                         ; $6331: $88
    add [hl]                                      ; $6332: $86
    nop                                           ; $6333: $00
    jr nz, jr_09e_62ce                            ; $6334: $20 $98

    ld b, b                                       ; $6336: $40
    and b                                         ; $6337: $a0
    add b                                         ; $6338: $80
    ld hl, sp-$58                                 ; $6339: $f8 $a8
    sub $09                                       ; $633b: $d6 $09
    call c, $2aa3                                 ; $633d: $dc $a3 $2a
    push de                                       ; $6340: $d5
    sub b                                         ; $6341: $90
    ld c, b                                       ; $6342: $48
    ld [bc], a                                    ; $6343: $02
    inc bc                                        ; $6344: $03
    ld e, [hl]                                    ; $6345: $5e
    nop                                           ; $6346: $00
    nop                                           ; $6347: $00
    ld bc, $0201                                  ; $6348: $01 $01 $02
    inc bc                                        ; $634b: $03
    dec b                                         ; $634c: $05
    dec b                                         ; $634d: $05
    dec bc                                        ; $634e: $0b
    dec b                                         ; $634f: $05
    nop                                           ; $6350: $00

jr_09e_6351:
    dec bc                                        ; $6351: $0b
    rrca                                          ; $6352: $0f
    inc de                                        ; $6353: $13
    dec bc                                        ; $6354: $0b
    rla                                           ; $6355: $17
    rrca                                          ; $6356: $0f
    sub e                                         ; $6357: $93
    nop                                           ; $6358: $00
    ret nz                                        ; $6359: $c0

    ld e, l                                       ; $635a: $5d
    jr jr_09e_6363                                ; $635b: $18 $06

    jr nc, jr_09e_6365                            ; $635d: $30 $06

    ld a, [bc]                                    ; $635f: $0a
    ld c, $12                                     ; $6360: $0e $12
    inc e                                         ; $6362: $1c

jr_09e_6363:
    inc h                                         ; $6363: $24
    nop                                           ; $6364: $00

jr_09e_6365:
    inc [hl]                                      ; $6365: $34
    ld c, l                                       ; $6366: $4d
    db $ed                                        ; $6367: $ed
    sub [hl]                                      ; $6368: $96
    ret nc                                        ; $6369: $d0

    xor a                                         ; $636a: $af
    push bc                                       ; $636b: $c5
    cp [hl]                                       ; $636c: $be
    jr nz, jr_09e_6383                            ; $636d: $20 $14

    db $eb                                        ; $636f: $eb
    ret nz                                        ; $6370: $c0

    nop                                           ; $6371: $00
    ld b, c                                       ; $6372: $41
    ld d, c                                       ; $6373: $51
    reti                                          ; $6374: $d9


    ret                                           ; $6375: $c9


    ld c, l                                       ; $6376: $4d

jr_09e_6377:
    nop                                           ; $6377: $00
    dec l                                         ; $6378: $2d
    db $eb                                        ; $6379: $eb
    or l                                          ; $637a: $b5
    ld a, e                                       ; $637b: $7b
    ld d, $f9                                     ; $637c: $16 $f9
    inc h                                         ; $637e: $24

jr_09e_637f:
    ei                                            ; $637f: $fb
    nop                                           ; $6380: $00
    and d                                         ; $6381: $a2
    rst $18                                       ; $6382: $df

jr_09e_6383:
    ld c, a                                       ; $6383: $4f
    cp a                                          ; $6384: $bf
    jr nc, jr_09e_6377                            ; $6385: $30 $f0

    ld b, c                                       ; $6387: $41
    pop bc                                        ; $6388: $c1
    nop                                           ; $6389: $00
    add d                                         ; $638a: $82
    add e                                         ; $638b: $83
    add l                                         ; $638c: $85
    or $b2                                        ; $638d: $f6 $b2
    rst $08                                       ; $638f: $cf
    ld e, l                                       ; $6390: $5d
    db $e3                                        ; $6391: $e3
    nop                                           ; $6392: $00
    and a                                         ; $6393: $a7
    ld hl, sp-$2e                                 ; $6394: $f8 $d2
    db $fd                                        ; $6396: $fd
    ld l, b                                       ; $6397: $68
    ld a, a                                       ; $6398: $7f
    push de                                       ; $6399: $d5
    rst $38                                       ; $639a: $ff
    nop                                           ; $639b: $00
    xor b                                         ; $639c: $a8
    rst $38                                       ; $639d: $ff
    ld b, c                                       ; $639e: $41
    rst $38                                       ; $639f: $ff

jr_09e_63a0:
    db $10                                        ; $63a0: $10
    rst $28                                       ; $63a1: $ef
    ld b, h                                       ; $63a2: $44
    cp e                                          ; $63a3: $bb
    inc b                                         ; $63a4: $04
    dec h                                         ; $63a5: $25
    rst $38                                       ; $63a6: $ff
    ld b, b                                       ; $63a7: $40
    rst $38                                       ; $63a8: $ff
    db $10                                        ; $63a9: $10
    ld e, l                                       ; $63aa: $5d
    ld bc, $77c8                                  ; $63ab: $01 $c8 $77
    nop                                           ; $63ae: $00
    nop                                           ; $63af: $00
    rst $38                                       ; $63b0: $ff
    inc b                                         ; $63b1: $04
    rst $38                                       ; $63b2: $ff
    ld [$18ff], sp                                ; $63b3: $08 $ff $18
    ld bc, $1800                                  ; $63b6: $01 $00 $18
    ld bc, $00c0                                  ; $63b9: $01 $c0 $00
    ret nz                                        ; $63bc: $c0

    jr @+$33                                      ; $63bd: $18 $31

    jr c, jr_09e_63e1                             ; $63bf: $38 $20

    ld sp, $1c30                                  ; $63c1: $31 $30 $1c
    add hl, bc                                    ; $63c4: $09
    jr nc, jr_09e_6377                            ; $63c5: $30 $b0

    jr nc, jr_09e_637f                            ; $63c7: $30 $b6

    jr jr_09e_63cb                                ; $63c9: $18 $00

jr_09e_63cb:
    ld h, [hl]                                    ; $63cb: $66
    jr jr_09e_642e                                ; $63cc: $18 $60

    add b                                         ; $63ce: $80
    jr nc, jr_09e_6351                            ; $63cf: $30 $80

    jr nc, jr_09e_63d9                            ; $63d1: $30 $06

    and d                                         ; $63d3: $a2
    ld bc, $8100                                  ; $63d4: $01 $00 $81
    ld [hl], $00                                  ; $63d7: $36 $00

jr_09e_63d9:
    ld [$01f7], sp                                ; $63d9: $08 $f7 $01
    inc [hl]                                      ; $63dc: $34
    nop                                           ; $63dd: $00
    ld b, b                                       ; $63de: $40
    jr nc, jr_09e_63a0                            ; $63df: $30 $bf

jr_09e_63e1:
    ld hl, $003c                                  ; $63e1: $21 $3c $00
    ldh a, [$09]                                  ; $63e4: $f0 $09
    nop                                           ; $63e6: $00
    rst $38                                       ; $63e7: $ff
    cp $01                                        ; $63e8: $fe $01
    inc bc                                        ; $63ea: $03
    xor d                                         ; $63eb: $aa
    ld bc, $0156                                  ; $63ec: $01 $56 $01
    cp $01                                        ; $63ef: $fe $01
    ld [hl], b                                    ; $63f1: $70
    add hl, bc                                    ; $63f2: $09
    db $10                                        ; $63f3: $10
    ld [$b2a0], sp                                ; $63f4: $08 $a0 $b2
    add hl, bc                                    ; $63f7: $09
    push de                                       ; $63f8: $d5
    cp b                                          ; $63f9: $b8
    ld bc, $ff00                                  ; $63fa: $01 $00 $ff
    ld [$f5bf], a                                 ; $63fd: $ea $bf $f5
    nop                                           ; $6400: $00
    rst $18                                       ; $6401: $df
    ld a, e                                       ; $6402: $7b
    xor $bf                                       ; $6403: $ee $bf
    ld [hl], l                                    ; $6405: $75
    rra                                           ; $6406: $1f
    ei                                            ; $6407: $fb
    ld l, [hl]                                    ; $6408: $6e
    nop                                           ; $6409: $00
    rst $38                                       ; $640a: $ff
    sbc a                                         ; $640b: $9f
    ld l, [hl]                                    ; $640c: $6e
    dec sp                                        ; $640d: $3b
    rst $18                                       ; $640e: $df
    ei                                            ; $640f: $fb
    or a                                          ; $6410: $b7
    pop hl                                        ; $6411: $e1
    nop                                           ; $6412: $00
    ld a, a                                       ; $6413: $7f
    push de                                       ; $6414: $d5
    cp $92                                        ; $6415: $fe $92
    rst $38                                       ; $6417: $ff
    ld l, c                                       ; $6418: $69
    cp [hl]                                       ; $6419: $be
    ld de, $ef00                                  ; $641a: $11 $00 $ef
    jr nc, @+$01                                  ; $641d: $30 $ff

    sub d                                         ; $641f: $92
    ld l, a                                       ; $6420: $6f
    xor $91                                       ; $6421: $ee $91
    rst $30                                       ; $6423: $f7
    ld [$7dca], sp                                ; $6424: $08 $ca $7d
    and $bb                                       ; $6427: $e6 $bb
    jr nz, jr_09e_642b                            ; $6429: $20 $00

jr_09e_642b:
    xor $5f                                       ; $642b: $ee $5f
    rra                                           ; $642d: $1f

jr_09e_642e:
    nop                                           ; $642e: $00
    xor $bf                                       ; $642f: $ee $bf
    rst $18                                       ; $6431: $df
    push af                                       ; $6432: $f5
    ccf                                           ; $6433: $3f
    push af                                       ; $6434: $f5
    ld l, e                                       ; $6435: $6b
    ret nz                                        ; $6436: $c0

    nop                                           ; $6437: $00
    rst $38                                       ; $6438: $ff
    ret                                           ; $6439: $c9


    rst $38                                       ; $643a: $ff
    sub d                                         ; $643b: $92
    rst $38                                       ; $643c: $ff
    inc bc                                        ; $643d: $03
    rst $38                                       ; $643e: $ff
    ld c, h                                       ; $643f: $4c
    nop                                           ; $6440: $00
    rst $38                                       ; $6441: $ff
    add d                                         ; $6442: $82
    ld a, a                                       ; $6443: $7f
    ld h, [hl]                                    ; $6444: $66
    sbc c                                         ; $6445: $99
    xor c                                         ; $6446: $a9
    ld d, a                                       ; $6447: $57
    ld b, e                                       ; $6448: $43
    nop                                           ; $6449: $00
    cp a                                          ; $644a: $bf
    ld bc, $2aff                                  ; $644b: $01 $ff $2a
    rst $30                                       ; $644e: $f7
    ld d, c                                       ; $644f: $51
    rst $28                                       ; $6450: $ef
    inc b                                         ; $6451: $04
    db $10                                        ; $6452: $10
    ei                                            ; $6453: $fb
    xor c                                         ; $6454: $a9
    rst $10                                       ; $6455: $d7
    ld e, h                                       ; $6456: $5c
    add hl, de                                    ; $6457: $19
    call nz, $aac7                                ; $6458: $c4 $c7 $aa
    rst $30                                       ; $645b: $f7
    nop                                           ; $645c: $00
    ld d, h                                       ; $645d: $54
    ei                                            ; $645e: $fb
    ld c, a                                       ; $645f: $4f
    or b                                          ; $6460: $b0
    db $10                                        ; $6461: $10
    rst $28                                       ; $6462: $ef
    dec b                                         ; $6463: $05
    ld b, $00                                     ; $6464: $06 $00
    ld [bc], a                                    ; $6466: $02
    rlca                                          ; $6467: $07
    dec b                                         ; $6468: $05
    rlca                                          ; $6469: $07
    ld c, $8f                                     ; $646a: $0e $8f
    adc e                                         ; $646c: $8b
    ld a, a                                       ; $646d: $7f
    nop                                           ; $646e: $00
    ld d, l                                       ; $646f: $55
    cp a                                          ; $6470: $bf
    ld a, [bc]                                    ; $6471: $0a
    rst $30                                       ; $6472: $f7
    inc h                                         ; $6473: $24
    ei                                            ; $6474: $fb
    ld [hl], b                                    ; $6475: $70
    adc a                                         ; $6476: $8f
    nop                                           ; $6477: $00
    adc b                                         ; $6478: $88
    ld [hl], a                                    ; $6479: $77
    ld hl, $8bdf                                  ; $647a: $21 $df $8b
    rst $38                                       ; $647d: $ff
    sub $ff                                       ; $647e: $d6 $ff
    jr @-$01                                      ; $6480: $18 $fd

    rst $38                                       ; $6482: $ff
    xor d                                         ; $6483: $aa
    db $e4                                        ; $6484: $e4
    nop                                           ; $6485: $00
    ldh [rSB], a                                  ; $6486: $e0 $01
    inc c                                         ; $6488: $0c
    nop                                           ; $6489: $00
    ld a, $00                                     ; $648a: $3e $00
    inc c                                         ; $648c: $0c
    inc sp                                        ; $648d: $33
    inc c                                         ; $648e: $0c
    scf                                           ; $648f: $37
    ld hl, $033f                                  ; $6490: $21 $3f $03
    rra                                           ; $6493: $1f
    ld bc, $1c1c                                  ; $6494: $01 $1c $1c
    ld d, b                                       ; $6497: $50
    cp a                                          ; $6498: $bf
    inc h                                         ; $6499: $24
    ei                                            ; $649a: $fb
    nop                                           ; $649b: $00
    ld a, [$4000]                                 ; $649c: $fa $00 $40
    inc b                                         ; $649f: $04
    ld d, c                                       ; $64a0: $51
    ld [bc], a                                    ; $64a1: $02

Jump_09e_64a2:
    add hl, bc                                    ; $64a2: $09
    rst $30                                       ; $64a3: $f7
    jr nz, @+$01                                  ; $64a4: $20 $ff

    jr jr_09e_64c0                                ; $64a6: $18 $18

    nop                                           ; $64a8: $00
    inc a                                         ; $64a9: $3c
    inc a                                         ; $64aa: $3c
    ld a, h                                       ; $64ab: $7c
    ld a, h                                       ; $64ac: $7c
    rst $38                                       ; $64ad: $ff
    rst $20                                       ; $64ae: $e7
    rst $18                                       ; $64af: $df
    rst $20                                       ; $64b0: $e7
    ld bc, $ffe7                                  ; $64b1: $01 $e7 $ff
    ld a, h                                       ; $64b4: $7c
    ld a, h                                       ; $64b5: $7c
    inc e                                         ; $64b6: $1c
    inc e                                         ; $64b7: $1c
    ld [de], a                                    ; $64b8: $12
    ld l, c                                       ; $64b9: $69
    ld [bc], a                                    ; $64ba: $02
    inc c                                         ; $64bb: $0c
    ld bc, $12fe                                  ; $64bc: $01 $fe $12
    db $fd                                        ; $64bf: $fd

jr_09e_64c0:
    ld c, $09                                     ; $64c0: $0e $09
    ld [hl], l                                    ; $64c2: $75
    ld a, [bc]                                    ; $64c3: $0a
    ld [$00bf], a                                 ; $64c4: $ea $bf $00
    db $fd                                        ; $64c7: $fd
    db $db                                        ; $64c8: $db
    ei                                            ; $64c9: $fb
    xor $ff                                       ; $64ca: $ee $ff
    or l                                          ; $64cc: $b5
    rra                                           ; $64cd: $1f
    ei                                            ; $64ce: $fb

jr_09e_64cf:
    nop                                           ; $64cf: $00
    ld c, $ff                                     ; $64d0: $0e $ff
    rra                                           ; $64d2: $1f
    xor $3f                                       ; $64d3: $ee $3f
    rst $18                                       ; $64d5: $df
    pop af                                        ; $64d6: $f1
    cp a                                          ; $64d7: $bf
    nop                                           ; $64d8: $00
    ld [$f97f], a                                 ; $64d9: $ea $7f $f9
    xor $dc                                       ; $64dc: $ee $dc
    rst $30                                       ; $64de: $f7
    db $10                                        ; $64df: $10
    rst $28                                       ; $64e0: $ef
    add b                                         ; $64e1: $80
    and b                                         ; $64e2: $a0
    jr jr_09e_64cf                                ; $64e3: $18 $ea

    sub l                                         ; $64e5: $95
    push af                                       ; $64e6: $f5
    jp z, $e47b                                   ; $64e7: $ca $7b $e4

    cp a                                          ; $64ea: $bf
    ld c, b                                       ; $64eb: $48
    pop af                                        ; $64ec: $f1
    jr nz, @+$2a                                  ; $64ed: $20 $28

    ei                                            ; $64ef: $fb
    scf                                           ; $64f0: $37
    ldh [$28], a                                  ; $64f1: $e0 $28
    ld [$26f7], sp                                ; $64f3: $08 $f7 $26
    nop                                           ; $64f6: $00
    ei                                            ; $64f7: $fb
    add c                                         ; $64f8: $81
    ld a, a                                       ; $64f9: $7f
    sub c                                         ; $64fa: $91
    ld l, a                                       ; $64fb: $6f
    ld c, c                                       ; $64fc: $49
    or a                                          ; $64fd: $b7
    inc bc                                        ; $64fe: $03
    nop                                           ; $64ff: $00
    rst $38                                       ; $6500: $ff

jr_09e_6501:
    ld b, a                                       ; $6501: $47
    rst $38                                       ; $6502: $ff
    and d                                         ; $6503: $a2
    rst $38                                       ; $6504: $ff
    ld d, l                                       ; $6505: $55
    rst $38                                       ; $6506: $ff
    ld a, [hl+]                                   ; $6507: $2a

jr_09e_6508:
    ret nz                                        ; $6508: $c0

    ld h, d                                       ; $6509: $62
    ld bc, $0230                                  ; $650a: $01 $30 $02
    nop                                           ; $650d: $00
    jr jr_09e_6508                                ; $650e: $18 $f8

    ld [hl], d                                    ; $6510: $72
    adc [hl]                                      ; $6511: $8e
    dec h                                         ; $6512: $25
    nop                                           ; $6513: $00
    db $db                                        ; $6514: $db
    ld [$44f7], sp                                ; $6515: $08 $f7 $44
    cp a                                          ; $6518: $bf
    ld d, d                                       ; $6519: $52
    rst $38                                       ; $651a: $ff
    sbc e                                         ; $651b: $9b
    nop                                           ; $651c: $00
    ld d, a                                       ; $651d: $57
    rrca                                          ; $651e: $0f
    di                                            ; $651f: $f3
    db $db                                        ; $6520: $db
    or a                                          ; $6521: $b7
    and e                                         ; $6522: $a3
    rst $18                                       ; $6523: $df
    jp nc, $bf00                                  ; $6524: $d2 $00 $bf

    xor b                                         ; $6527: $a8
    rst $18                                       ; $6528: $df
    db $10                                        ; $6529: $10
    rst $38                                       ; $652a: $ff
    cp b                                          ; $652b: $b8
    rst $38                                       ; $652c: $ff
    adc b                                         ; $652d: $88
    nop                                           ; $652e: $00
    sbc c                                         ; $652f: $99
    sub b                                         ; $6530: $90
    or c                                          ; $6531: $b1
    add c                                         ; $6532: $81
    pop hl                                        ; $6533: $e1
    ld h, c                                       ; $6534: $61
    cp c                                          ; $6535: $b9
    cp c                                          ; $6536: $b9
    nop                                           ; $6537: $00
    ld [hl], l                                    ; $6538: $75
    dec d                                         ; $6539: $15
    db $db                                        ; $653a: $db
    ldh a, [$7f]                                  ; $653b: $f0 $7f
    ld c, c                                       ; $653d: $49
    rst $38                                       ; $653e: $ff
    ld d, h                                       ; $653f: $54
    nop                                           ; $6540: $00
    rst $38                                       ; $6541: $ff
    ld a, [bc]                                    ; $6542: $0a
    rst $38                                       ; $6543: $ff
    jr nz, @-$1f                                  ; $6544: $20 $df

    ld [$02ff], sp                                ; $6546: $08 $ff $02
    ld [$24fd], sp                                ; $6549: $08 $fd $24
    ei                                            ; $654c: $fb
    ld [$09aa], sp                                ; $654d: $08 $aa $09
    nop                                           ; $6550: $00
    ld [hl], b                                    ; $6551: $70
    ld [hl], b                                    ; $6552: $70
    nop                                           ; $6553: $00
    ld a, h                                       ; $6554: $7c
    ld a, h                                       ; $6555: $7c
    db $fc                                        ; $6556: $fc
    call z, $ecfc                                 ; $6557: $cc $fc $ec
    inc a                                         ; $655a: $3c
    inc a                                         ; $655b: $3c
    ld b, b                                       ; $655c: $40
    jr nc, jr_09e_6501                            ; $655d: $30 $a2

    ld bc, $b57b                                  ; $655f: $01 $7b $b5
    rst $30                                       ; $6562: $f7
    ld l, d                                       ; $6563: $6a
    ld [$08d5], a                                 ; $6564: $ea $d5 $08
    push de                                       ; $6567: $d5
    ld a, [$ddab]                                 ; $6568: $fa $ab $dd
    ret c                                         ; $656b: $d8

    ld [bc], a                                    ; $656c: $02
    ld d, a                                       ; $656d: $57
    rst $10                                       ; $656e: $d7
    ld a, [hl+]                                   ; $656f: $2a
    nop                                           ; $6570: $00
    cp l                                          ; $6571: $bd
    add d                                         ; $6572: $82
    ld d, e                                       ; $6573: $53
    ret z                                         ; $6574: $c8

    ld l, $60                                     ; $6575: $2e $60
    sub l                                         ; $6577: $95
    ld sp, $4a00                                  ; $6578: $31 $00 $4a
    dec de                                        ; $657b: $1b
    sub l                                         ; $657c: $95
    ld l, $2a                                     ; $657d: $2e $2a
    adc $91                                       ; $657f: $ce $91
    dec de                                        ; $6581: $1b
    nop                                           ; $6582: $00
    and h                                         ; $6583: $a4
    dec sp                                        ; $6584: $3b
    ld d, d                                       ; $6585: $52
    ld h, l                                       ; $6586: $65
    add b                                         ; $6587: $80
    ei                                            ; $6588: $fb
    ld a, [hl+]                                   ; $6589: $2a
    call nc, Call_09e_5100                        ; $658a: $d4 $00 $51
    adc d                                         ; $658d: $8a
    jr nz, @-$29                                  ; $658e: $20 $d5

    ld d, h                                       ; $6590: $54
    xor e                                         ; $6591: $ab
    add hl, bc                                    ; $6592: $09
    ld h, [hl]                                    ; $6593: $66
    nop                                           ; $6594: $00
    or e                                          ; $6595: $b3
    adc b                                         ; $6596: $88
    ld d, a                                       ; $6597: $57
    ret nz                                        ; $6598: $c0

    ld a, [hl+]                                   ; $6599: $2a
    db $e4                                        ; $659a: $e4
    sub l                                         ; $659b: $95
    ld [hl], c                                    ; $659c: $71
    nop                                           ; $659d: $00
    ld c, d                                       ; $659e: $4a
    cp e                                          ; $659f: $bb
    dec d                                         ; $65a0: $15
    xor $aa                                       ; $65a1: $ee $aa
    ld c, [hl]                                    ; $65a3: $4e
    pop de                                        ; $65a4: $d1
    rra                                           ; $65a5: $1f
    ld a, [bc]                                    ; $65a6: $0a
    xor $91                                       ; $65a7: $ee $91
    di                                            ; $65a9: $f3
    adc $80                                       ; $65aa: $ce $80
    ld bc, $80f5                                  ; $65ac: $01 $f5 $80
    add hl, hl                                    ; $65af: $29
    ld a, [hl+]                                   ; $65b0: $2a
    nop                                           ; $65b1: $00
    dec [hl]                                      ; $65b2: $35
    ld c, d                                       ; $65b3: $4a
    ld h, c                                       ; $65b4: $61
    cp a                                          ; $65b5: $bf
    ret nz                                        ; $65b6: $c0

    ld [hl], $c9                                  ; $65b7: $36 $c9
    ld l, l                                       ; $65b9: $6d
    nop                                           ; $65ba: $00
    sub d                                         ; $65bb: $92
    rst $30                                       ; $65bc: $f7
    nop                                           ; $65bd: $00
    reti                                          ; $65be: $d9


    ld [hl+], a                                   ; $65bf: $22
    ld a, [hl]                                    ; $65c0: $7e

jr_09e_65c1:
    ld bc, $0094                                  ; $65c1: $01 $94 $00
    xor d                                         ; $65c4: $aa
    ld b, d                                       ; $65c5: $42
    db $dd                                        ; $65c6: $dd
    inc h                                         ; $65c7: $24
    ld [$b511], a                                 ; $65c8: $ea $11 $b5
    ld [$1b00], a                                 ; $65cb: $ea $00 $1b
    sub l                                         ; $65ce: $95
    ld l, d                                       ; $65cf: $6a
    ld l, d                                       ; $65d0: $6a
    inc b                                         ; $65d1: $04
    db $dd                                        ; $65d2: $dd
    ld [bc], a                                    ; $65d3: $02
    and h                                         ; $65d4: $a4
    nop                                           ; $65d5: $00
    inc sp                                        ; $65d6: $33
    ld e, e                                       ; $65d7: $5b
    ld h, b                                       ; $65d8: $60
    adc a                                         ; $65d9: $8f
    ret nc                                        ; $65da: $d0

    ld e, l                                       ; $65db: $5d
    and d                                         ; $65dc: $a2
    ld a, [$0000]                                 ; $65dd: $fa $00 $00
    xor a                                         ; $65e0: $af
    ld d, b                                       ; $65e1: $50
    push af                                       ; $65e2: $f5
    ld [$255a], sp                                ; $65e3: $08 $5a $25
    ld [hl], e                                    ; $65e6: $73
    nop                                           ; $65e7: $00
    cp a                                          ; $65e8: $bf
    rst $28                                       ; $65e9: $ef
    ld [hl], a                                    ; $65ea: $77
    ld a, [$d5ff]                                 ; $65eb: $fa $ff $d5
    ei                                            ; $65ee: $fb
    xor d                                         ; $65ef: $aa
    nop                                           ; $65f0: $00
    rst $18                                       ; $65f1: $df
    db $dd                                        ; $65f2: $dd
    rst $30                                       ; $65f3: $f7
    xor [hl]                                      ; $65f4: $ae
    ei                                            ; $65f5: $fb
    push af                                       ; $65f6: $f5
    ld l, a                                       ; $65f7: $6f
    cp e                                          ; $65f8: $bb
    ld [bc], a                                    ; $65f9: $02
    add b                                         ; $65fa: $80
    ld e, l                                       ; $65fb: $5d
    ret nz                                        ; $65fc: $c0

    ld l, $e0                                     ; $65fd: $2e $e0
    dec d                                         ; $65ff: $15
    ld h, b                                       ; $6600: $60
    nop                                           ; $6601: $00
    and l                                         ; $6602: $a5
    nop                                           ; $6603: $00

jr_09e_6604:
    ld e, [hl]                                    ; $6604: $5e
    ld c, d                                       ; $6605: $4a
    xor [hl]                                      ; $6606: $ae
    dec d                                         ; $6607: $15

Call_09e_6608:
    db $db                                        ; $6608: $db
    add hl, bc                                    ; $6609: $09
    rrca                                          ; $660a: $0f
    ld b, $10                                     ; $660b: $06 $10
    add hl, bc                                    ; $660d: $09
    rrca                                          ; $660e: $0f
    add hl, bc                                    ; $660f: $09
    inc b                                         ; $6610: $04
    jr c, jr_09e_65c1                             ; $6611: $38 $ae

    ld de, $825d                                  ; $6613: $11 $5d $82
    nop                                           ; $6616: $00
    xor [hl]                                      ; $6617: $ae
    ld h, b                                       ; $6618: $60
    ld d, l                                       ; $6619: $55
    ld sp, $13ea                                  ; $661a: $31 $ea $13
    call nc, Call_000_0a0f                        ; $661d: $d4 $0f $0a
    ld l, d                                       ; $6620: $6a
    ld b, $d5                                     ; $6621: $06 $d5
    dec bc                                        ; $6623: $0b
    ld h, b                                       ; $6624: $60
    add hl, bc                                    ; $6625: $09
    di                                            ; $6626: $f3
    ld h, b                                       ; $6627: $60
    ld b, c                                       ; $6628: $41
    ld l, $00                                     ; $6629: $2e $00
    or c                                          ; $662b: $b1
    ld d, l                                       ; $662c: $55
    ld l, d                                       ; $662d: $6a
    add [hl]                                      ; $662e: $86
    add sp, $23                                   ; $662f: $e8 $23
    call nc, Call_000_00ef                        ; $6631: $d4 $ef $00
    nop                                           ; $6634: $00
    db $fc                                        ; $6635: $fc
    inc bc                                        ; $6636: $03
    or e                                          ; $6637: $b3
    ld c, h                                       ; $6638: $4c
    ld a, l                                       ; $6639: $7d
    ld [bc], a                                    ; $663a: $02
    rst $38                                       ; $663b: $ff
    nop                                           ; $663c: $00
    sbc a                                         ; $663d: $9f
    ld h, a                                       ; $663e: $67
    sbc b                                         ; $663f: $98
    rst $38                                       ; $6640: $ff
    sbc a                                         ; $6641: $9f
    ld h, b                                       ; $6642: $60
    sub b                                         ; $6643: $90
    ld a, [$ff00]                                 ; $6644: $fa $00 $ff
    sub e                                         ; $6647: $93
    db $fc                                        ; $6648: $fc
    sub a                                         ; $6649: $97
    ld hl, sp-$65                                 ; $664a: $f8 $9b
    db $f4                                        ; $664c: $f4
    ld hl, sp+$00                                 ; $664d: $f8 $00
    ld hl, sp-$04                                 ; $664f: $f8 $fc
    inc b                                         ; $6651: $04
    or $fa                                        ; $6652: $f6 $fa
    ld c, $0a                                     ; $6654: $0e $0a
    xor e                                         ; $6656: $ab
    nop                                           ; $6657: $00
    rst $38                                       ; $6658: $ff
    cp c                                          ; $6659: $b9
    ld b, a                                       ; $665a: $47
    db $fc                                        ; $665b: $fc
    inc bc                                        ; $665c: $03
    ei                                            ; $665d: $fb
    dec b                                         ; $665e: $05
    and h                                         ; $665f: $a4
    nop                                           ; $6660: $00
    add hl, sp                                    ; $6661: $39

jr_09e_6662:
    ld c, d                                       ; $6662: $4a
    ld h, b                                       ; $6663: $60
    sub b                                         ; $6664: $90
    pop bc                                        ; $6665: $c1
    ld a, [bc]                                    ; $6666: $0a
    and b                                         ; $6667: $a0
    ld d, c                                       ; $6668: $51
    ld bc, $2088                                  ; $6669: $01 $88 $20
    nop                                           ; $666c: $00
    add h                                         ; $666d: $84
    ld d, c                                       ; $666e: $51
    ld hl, $e01a                                  ; $666f: $21 $1a $e0
    jr nz, jr_09e_6604                            ; $6672: $20 $90

    nop                                           ; $6674: $00
    ld bc, $ae15                                  ; $6675: $01 $15 $ae
    ldh [$08], a                                  ; $6678: $e0 $08
    and h                                         ; $667a: $a4
    dec sp                                        ; $667b: $3b
    ld c, b                                       ; $667c: $48
    ld [hl], a                                    ; $667d: $77
    nop                                           ; $667e: $00
    sub l                                         ; $667f: $95
    ld [$f10a], a                                 ; $6680: $ea $0a $f1
    ld d, l                                       ; $6683: $55
    xor d                                         ; $6684: $aa
    ld [hl+], a                                   ; $6685: $22
    ld d, l                                       ; $6686: $55
    nop                                           ; $6687: $00
    adc c                                         ; $6688: $89
    ld [hl], d                                    ; $6689: $72
    ld [hl+], a                                   ; $668a: $22
    ld e, l                                       ; $668b: $5d
    sub h                                         ; $668c: $94
    add b                                         ; $668d: $80
    ld b, d                                       ; $668e: $42
    ret z                                         ; $668f: $c8

    ld [$60a4], sp                                ; $6690: $08 $a4 $60
    pop de                                        ; $6693: $d1
    ld sp, $00d0                                  ; $6694: $31 $d0 $00
    ld c, [hl]                                    ; $6697: $4e
    ld [$270e], a                                 ; $6698: $ea $0e $27
    ld d, c                                       ; $669b: $51
    rra                                           ; $669c: $1f
    ld d, c                                       ; $669d: $51
    inc b                                         ; $669e: $04
    add b                                         ; $669f: $80
    ld a, a                                       ; $66a0: $7f
    add hl, bc                                    ; $66a1: $09
    inc b                                         ; $66a2: $04
    inc b                                         ; $66a3: $04
    jr z, jr_09e_6662                             ; $66a4: $28 $bc

    ld a, [bc]                                    ; $66a6: $0a
    nop                                           ; $66a7: $00
    ldh a, [rIF]                                  ; $66a8: $f0 $0f
    xor $11                                       ; $66aa: $ee $11
    call c, $b723                                 ; $66ac: $dc $23 $b7
    ld c, a                                       ; $66af: $4f
    ld [$5ead], sp                                ; $66b0: $08 $ad $5e
    rst $10                                       ; $66b3: $d7
    cp b                                          ; $66b4: $b8
    ld [hl], c                                    ; $66b5: $71
    inc b                                         ; $66b6: $04
    ld bc, $e13e                                  ; $66b7: $01 $3e $e1
    ld bc, $719f                                  ; $66ba: $01 $9f $71
    cp $e1                                        ; $66bd: $fe $e1
    cp a                                          ; $66bf: $bf
    pop bc                                        ; $66c0: $c1
    cp $41                                        ; $66c1: $fe $41
    inc b                                         ; $66c3: $04
    nop                                           ; $66c4: $00
    and h                                         ; $66c5: $a4
    inc sp                                        ; $66c6: $33
    ld c, d                                       ; $66c7: $4a
    ld [hl], h                                    ; $66c8: $74
    and l                                         ; $66c9: $a5
    ret z                                         ; $66ca: $c8

    ld bc, $00f2                                  ; $66cb: $01 $f2 $00
    ld d, h                                       ; $66ce: $54
    xor e                                         ; $66cf: $ab
    add d                                         ; $66d0: $82
    ld [hl], c                                    ; $66d1: $71
    dec d                                         ; $66d2: $15
    ld [$3148], a                                 ; $66d3: $ea $48 $31
    add [hl]                                      ; $66d6: $86
    inc a                                         ; $66d7: $3c

jr_09e_66d8:
    jr jr_09e_66d8                                ; $66d8: $18 $fe

    add c                                         ; $66da: $81
    ld a, a                                       ; $66db: $7f
    add c                                         ; $66dc: $81
    inc b                                         ; $66dd: $04
    nop                                           ; $66de: $00
    ld d, c                                       ; $66df: $51
    inc b                                         ; $66e0: $04
    cp a                                          ; $66e1: $bf
    nop                                           ; $66e2: $00
    ldh [rIE], a                                  ; $66e3: $e0 $ff
    ret nz                                        ; $66e5: $c0

    cp a                                          ; $66e6: $bf
    ret nz                                        ; $66e7: $c0

    rst $18                                       ; $66e8: $df
    ldh [rIE], a                                  ; $66e9: $e0 $ff
    ld a, b                                       ; $66eb: $78
    ldh [rDIV], a                                 ; $66ec: $e0 $04
    nop                                           ; $66ee: $00
    ld [hl], c                                    ; $66ef: $71
    inc b                                         ; $66f0: $04
    inc [hl]                                      ; $66f1: $34
    ld [$1804], sp                                ; $66f2: $08 $04 $18
    rst $28                                       ; $66f5: $ef
    ld bc, $008e                                  ; $66f6: $01 $8e $00
    adc l                                         ; $66f9: $8d
    ld b, a                                       ; $66fa: $47
    adc l                                         ; $66fb: $8d
    sub l                                         ; $66fc: $95
    xor d                                         ; $66fd: $aa
    ld c, d                                       ; $66fe: $4a
    push de                                       ; $66ff: $d5
    and h                                         ; $6700: $a4
    db $10                                        ; $6701: $10
    ld l, d                                       ; $6702: $6a
    ld d, c                                       ; $6703: $51
    dec [hl]                                      ; $6704: $35
    ld d, b                                       ; $6705: $50
    ld bc, $6a6e                                  ; $6706: $01 $6e $6a
    ld c, $d5                                     ; $6709: $0e $d5
    nop                                           ; $670b: $00
    dec de                                        ; $670c: $1b
    ld h, b                                       ; $670d: $60
    sbc a                                         ; $670e: $9f
    ldh a, [$90]                                  ; $670f: $f0 $90
    ld [hl], l                                    ; $6711: $75
    sub b                                         ; $6712: $90
    push af                                       ; $6713: $f5
    nop                                           ; $6714: $00
    sub b                                         ; $6715: $90
    ld a, a                                       ; $6716: $7f
    sub b                                         ; $6717: $90
    ldh a, [$9f]                                  ; $6718: $f0 $9f
    ld [hl], b                                    ; $671a: $70
    sub b                                         ; $671b: $90
    db $f4                                        ; $671c: $f4
    nop                                           ; $671d: $00
    sub c                                         ; $671e: $91
    inc c                                         ; $671f: $0c
    ldh a, [rNR32]                                ; $6720: $f0 $1c
    ld [de], a                                    ; $6722: $12
    ld e, a                                       ; $6723: $5f
    ld de, $025f                                  ; $6724: $11 $5f $02
    ld de, $10fe                                  ; $6727: $11 $fe $10
    rra                                           ; $672a: $1f
    ldh a, [$1f]                                  ; $672b: $f0 $1f
    ld [$a000], sp                                ; $672d: $08 $00 $a0
    nop                                           ; $6730: $00
    ld c, e                                       ; $6731: $4b
    ld b, e                                       ; $6732: $43
    dec b                                         ; $6733: $05
    xor [hl]                                      ; $6734: $ae
    dec b                                         ; $6735: $05
    ld d, a                                       ; $6736: $57
    adc l                                         ; $6737: $8d
    ld h, [hl]                                    ; $6738: $66
    nop                                           ; $6739: $00
    adc l                                         ; $673a: $8d
    ld d, a                                       ; $673b: $57
    dec b                                         ; $673c: $05
    ld [bc], a                                    ; $673d: $02
    ld bc, $852f                                  ; $673e: $01 $2f $85
    and h                                         ; $6741: $a4
    nop                                           ; $6742: $00
    ld sp, $6248                                  ; $6743: $31 $48 $62
    sub l                                         ; $6746: $95
    ret nz                                        ; $6747: $c0

    ld a, [hl+]                                   ; $6748: $2a
    ret nc                                        ; $6749: $d0

    ld d, h                                       ; $674a: $54
    nop                                           ; $674b: $00
    adc c                                         ; $674c: $89
    ld a, [hl+]                                   ; $674d: $2a
    add b                                         ; $674e: $80
    ld d, l                                       ; $674f: $55
    ld [bc], a                                    ; $6750: $02
    jr z, jr_09e_6755                             ; $6751: $28 $02

    sub c                                         ; $6753: $91
    nop                                           ; $6754: $00

jr_09e_6755:
    add b                                         ; $6755: $80
    ld c, h                                       ; $6756: $4c
    jp nz, Jump_09e_64a2                          ; $6757: $c2 $a2 $64

    ld d, l                                       ; $675a: $55
    or c                                          ; $675b: $b1
    ld [$1b2c], a                                 ; $675c: $ea $2c $1b
    dec d                                         ; $675f: $15
    ret nc                                        ; $6760: $d0

    ld [$b09f], sp                                ; $6761: $08 $9f $b0
    ld b, c                                       ; $6764: $41
    ld h, b                                       ; $6765: $60
    nop                                           ; $6766: $00
    pop de                                        ; $6767: $d1
    dec de                                        ; $6768: $1b
    add d                                         ; $6769: $82
    or b                                          ; $676a: $b0
    nop                                           ; $676b: $00
    ld h, b                                       ; $676c: $60
    sub l                                         ; $676d: $95
    ret nz                                        ; $676e: $c0

    add hl, hl                                    ; $676f: $29
    jp nc, Jump_000_1030                          ; $6770: $d2 $30 $10

    nop                                           ; $6773: $00
    ld [bc], a                                    ; $6774: $02
    jr z, jr_09e_6777                             ; $6775: $28 $00

jr_09e_6777:
    xor [hl]                                      ; $6777: $ae
    sub c                                         ; $6778: $91
    ld e, l                                       ; $6779: $5d
    jp nz, Jump_000_0980                          ; $677a: $c2 $80 $09

    xor d                                         ; $677d: $aa
    nop                                           ; $677e: $00
    dec de                                        ; $677f: $1b
    ld d, h                                       ; $6780: $54
    adc a                                         ; $6781: $8f
    ld a, [hl+]                                   ; $6782: $2a
    ld c, [hl]                                    ; $6783: $4e
    ld d, l                                       ; $6784: $55
    sbc e                                         ; $6785: $9b
    sub l                                         ; $6786: $95
    ld [bc], a                                    ; $6787: $02
    add b                                         ; $6788: $80
    ld c, d                                       ; $6789: $4a
    ret nz                                        ; $678a: $c0

    and h                                         ; $678b: $a4
    ld h, b                                       ; $678c: $60
    ld d, c                                       ; $678d: $51
    ld b, b                                       ; $678e: $40
    nop                                           ; $678f: $00
    push af                                       ; $6790: $f5
    nop                                           ; $6791: $00
    ld c, $ea                                     ; $6792: $0e $ea
    ld c, $d1                                     ; $6794: $0e $d1
    rra                                           ; $6796: $1f
    inc h                                         ; $6797: $24
    inc sp                                        ; $6798: $33
    ld e, [hl]                                    ; $6799: $5e
    ld bc, $aa61                                  ; $679a: $01 $61 $aa
    call nc, $926d                                ; $679d: $d4 $6d $92
    sub [hl]                                      ; $67a0: $96
    jr z, jr_09e_67a3                             ; $67a1: $28 $00

jr_09e_67a3:
    ld a, [de]                                    ; $67a3: $1a
    nop                                           ; $67a4: $00
    ld a, e                                       ; $67a5: $7b
    cp l                                          ; $67a6: $bd
    push af                                       ; $67a7: $f5
    ld l, d                                       ; $67a8: $6a
    rst $28                                       ; $67a9: $ef
    pop de                                        ; $67aa: $d1
    push af                                       ; $67ab: $f5
    xor d                                         ; $67ac: $aa
    nop                                           ; $67ad: $00
    xor [hl]                                      ; $67ae: $ae
    reti                                          ; $67af: $d9


    rst $18                                       ; $67b0: $df
    jr nz, jr_09e_6826                            ; $67b1: $20 $73

    db $dd                                        ; $67b3: $dd
    sbc $3b                                       ; $67b4: $de $3b
    nop                                           ; $67b6: $00
    sub l                                         ; $67b7: $95
    ld a, [$ff9f]                                 ; $67b8: $fa $9f $ff
    sub a                                         ; $67bb: $97
    ld hl, sp-$61                                 ; $67bc: $f8 $9f
    rst $38                                       ; $67be: $ff
    nop                                           ; $67bf: $00
    sub b                                         ; $67c0: $90
    rst $38                                       ; $67c1: $ff
    sub l                                         ; $67c2: $95
    ld a, [$fd9a]                                 ; $67c3: $fa $9a $fd
    sbc a                                         ; $67c6: $9f
    rst $38                                       ; $67c7: $ff
    nop                                           ; $67c8: $00
    ld d, h                                       ; $67c9: $54
    xor e                                         ; $67ca: $ab
    ld sp, hl                                     ; $67cb: $f9
    rst $30                                       ; $67cc: $f7
    db $fc                                        ; $67cd: $fc

jr_09e_67ce:
    dec bc                                        ; $67ce: $0b
    rst $28                                       ; $67cf: $ef
    push af                                       ; $67d0: $f5
    nop                                           ; $67d1: $00
    ld d, $fb                                     ; $67d2: $16 $fb
    ld c, a                                       ; $67d4: $4f
    cp e                                          ; $67d5: $bb
    ld c, e                                       ; $67d6: $4b
    rst $38                                       ; $67d7: $ff
    ei                                            ; $67d8: $fb
    rst $38                                       ; $67d9: $ff
    ld bc, $94eb                                  ; $67da: $01 $eb $94
    db $fd                                        ; $67dd: $fd
    jp z, $ec73                                   ; $67de: $ca $73 $ec

    ccf                                           ; $67e1: $3f
    db $10                                        ; $67e2: $10
    inc bc                                        ; $67e3: $03
    ld bc, $df6e                                  ; $67e4: $01 $6e $df
    rra                                           ; $67e7: $1f
    xor $bb                                       ; $67e8: $ee $bb
    ld e, a                                       ; $67ea: $5f
    sub l                                         ; $67eb: $95
    ld h, h                                       ; $67ec: $64
    dec b                                         ; $67ed: $05
    inc b                                         ; $67ee: $04
    sbc a                                         ; $67ef: $9f
    rst $38                                       ; $67f0: $ff
    sub l                                         ; $67f1: $95
    rst $38                                       ; $67f2: $ff
    sbc d                                         ; $67f3: $9a
    inc b                                         ; $67f4: $04
    db $10                                        ; $67f5: $10
    push af                                       ; $67f6: $f5
    rst $38                                       ; $67f7: $ff
    ld b, c                                       ; $67f8: $41
    ld d, c                                       ; $67f9: $51
    add h                                         ; $67fa: $84
    dec b                                         ; $67fb: $05
    ld sp, hl                                     ; $67fc: $f9
    rst $38                                       ; $67fd: $ff
    ld e, c                                       ; $67fe: $59
    rst $38                                       ; $67ff: $ff
    xor c                                         ; $6800: $a9
    inc b                                         ; $6801: $04
    stop                                          ; $6802: $10 $00
    ld e, a                                       ; $6804: $5f
    rst $38                                       ; $6805: $ff
    ld a, e                                       ; $6806: $7b
    or a                                          ; $6807: $b7
    pop hl                                        ; $6808: $e1
    ld a, [hl]                                    ; $6809: $7e
    jp nc, Jump_000_00ed                          ; $680a: $d2 $ed $00

    xor [hl]                                      ; $680d: $ae
    di                                            ; $680e: $f3
    inc bc                                        ; $680f: $03
    rst $38                                       ; $6810: $ff
    ld a, l                                       ; $6811: $7d
    di                                            ; $6812: $f3
    ld l, d                                       ; $6813: $6a
    rst $38                                       ; $6814: $ff
    jr nz, jr_09e_67ce                            ; $6815: $20 $b7

    ld a, c                                       ; $6817: $79
    and b                                         ; $6818: $a0
    ld b, b                                       ; $6819: $40
    adc [hl]                                      ; $681a: $8e
    ld a, [hl+]                                   ; $681b: $2a
    adc $55                                       ; $681c: $ce $55
    sbc e                                         ; $681e: $9b
    nop                                           ; $681f: $00
    ld c, e                                       ; $6820: $4b
    or l                                          ; $6821: $b5
    and e                                         ; $6822: $a3
    ld a, [hl]                                    ; $6823: $7e
    ld c, d                                       ; $6824: $4a
    push af                                       ; $6825: $f5

jr_09e_6826:
    db $fd                                        ; $6826: $fd
    and d                                         ; $6827: $a2
    nop                                           ; $6828: $00
    xor e                                         ; $6829: $ab
    ld d, l                                       ; $682a: $55
    ld a, l                                       ; $682b: $7d
    ld a, [c]                                     ; $682c: $f2
    ld [$b757], a                                 ; $682d: $ea $57 $b7
    ld l, d                                       ; $6830: $6a
    nop                                           ; $6831: $00
    ld [bc], a                                    ; $6832: $02
    rst $38                                       ; $6833: $ff
    xor h                                         ; $6834: $ac
    db $db                                        ; $6835: $db
    pop af                                        ; $6836: $f1

jr_09e_6837:
    ld l, [hl]                                    ; $6837: $6e
    ld a, e                                       ; $6838: $7b
    or l                                          ; $6839: $b5
    nop                                           ; $683a: $00
    cp a                                          ; $683b: $bf
    ld e, e                                       ; $683c: $5b
    ld l, [hl]                                    ; $683d: $6e
    cp a                                          ; $683e: $bf
    rst $18                                       ; $683f: $df
    xor $7f                                       ; $6840: $ee $7f
    sbc e                                         ; $6842: $9b
    jr nz, jr_09e_6869                            ; $6843: $20 $24

    or e                                          ; $6845: $b3
    or b                                          ; $6846: $b0
    jr z, jr_09e_6837                             ; $6847: $28 $ee

    ld bc, $30cf                                  ; $6849: $01 $cf $30
    ld l, l                                       ; $684c: $6d
    cp [hl]                                       ; $684d: $be
    db $10                                        ; $684e: $10
    ld bc, $1048                                  ; $684f: $01 $48 $10
    add hl, bc                                    ; $6852: $09
    ldh [rSB], a                                  ; $6853: $e0 $01
    db $10                                        ; $6855: $10
    add hl, de                                    ; $6856: $19
    ret nc                                        ; $6857: $d0

    ld a, [hl-]                                   ; $6858: $3a
    ld d, b                                       ; $6859: $50
    ld a, [de]                                    ; $685a: $1a
    ld [hl], c                                    ; $685b: $71
    nop                                           ; $685c: $00
    sub h                                         ; $685d: $94
    pop af                                        ; $685e: $f1
    sub h                                         ; $685f: $94
    ld [hl], b                                    ; $6860: $70
    sub b                                         ; $6861: $90
    rst $38                                       ; $6862: $ff
    sub b                                         ; $6863: $90
    ld a, a                                       ; $6864: $7f
    nop                                           ; $6865: $00
    sbc a                                         ; $6866: $9f
    ldh a, [$8f]                                  ; $6867: $f0 $8f

jr_09e_6869:
    ld a, a                                       ; $6869: $7f
    add b                                         ; $686a: $80
    ret nz                                        ; $686b: $c0

    add b                                         ; $686c: $80
    rra                                           ; $686d: $1f
    nop                                           ; $686e: $00
    ld d, c                                       ; $686f: $51
    ld e, a                                       ; $6870: $5f
    ld de, $111f                                  ; $6871: $11 $1f $11
    rst $38                                       ; $6874: $ff
    ld de, $10ff                                  ; $6875: $11 $ff $10
    pop af                                        ; $6878: $f1
    rra                                           ; $6879: $1f
    pop hl                                        ; $687a: $e1
    dec c                                         ; $687b: $0d
    ld c, $56                                     ; $687c: $0e $56
    adc l                                         ; $687e: $8d
    daa                                           ; $687f: $27
    db $dd                                        ; $6880: $dd
    nop                                           ; $6881: $00
    adc [hl]                                      ; $6882: $8e
    dec b                                         ; $6883: $05
    rlca                                          ; $6884: $07
    db $fd                                        ; $6885: $fd
    ld b, $fd                                     ; $6886: $06 $fd
    rst $38                                       ; $6888: $ff
    db $fd                                        ; $6889: $fd
    inc c                                         ; $688a: $0c
    ld b, $f9                                     ; $688b: $06 $f9
    inc bc                                        ; $688d: $03
    ld bc, $24a0                                  ; $688e: $01 $a0 $24
    jr nz, jr_09e_68c6                            ; $6891: $20 $33

    ccf                                           ; $6893: $3f
    ret nz                                        ; $6894: $c0

    add b                                         ; $6895: $80
    ld [hl], $0e                                  ; $6896: $36 $0e
    jp nc, $84fd                                  ; $6898: $d2 $fd $84

    ei                                            ; $689b: $fb
    xor [hl]                                      ; $689c: $ae
    ei                                            ; $689d: $fb
    push de                                       ; $689e: $d5
    jp Jump_000_0004                              ; $689f: $c3 $04 $00


    db $e4                                        ; $68a2: $e4
    inc c                                         ; $68a3: $0c
    nop                                           ; $68a4: $00
    rst $38                                       ; $68a5: $ff
    xor d                                         ; $68a6: $aa
    ld d, l                                       ; $68a7: $55
    inc b                                         ; $68a8: $04
    nop                                           ; $68a9: $00
    ld [c], a                                     ; $68aa: $e2
    inc bc                                        ; $68ab: $03
    ld [$ffaa], sp                                ; $68ac: $08 $aa $ff
    db $fc                                        ; $68af: $fc
    inc bc                                        ; $68b0: $03
    ld h, [hl]                                    ; $68b1: $66
    ld c, $b5                                     ; $68b2: $0e $b5
    ld e, a                                       ; $68b4: $5f
    ld hl, $df0a                                  ; $68b5: $21 $0a $df
    xor e                                         ; $68b8: $ab
    rst $18                                       ; $68b9: $df
    ld [hl], l                                    ; $68ba: $75
    inc b                                         ; $68bb: $04
    nop                                           ; $68bc: $00
    ld a, e                                       ; $68bd: $7b
    jr nz, jr_09e_6923                            ; $68be: $20 $63

    push de                                       ; $68c0: $d5
    ld sp, $fffb                                  ; $68c1: $31 $fb $ff
    jr c, jr_09e_68c6                             ; $68c4: $38 $00

jr_09e_68c6:
    add hl, hl                                    ; $68c6: $29
    ld bc, $fcfb                                  ; $68c7: $01 $fb $fc
    ld hl, sp+$2c                                 ; $68ca: $f8 $2c
    rrca                                          ; $68cc: $0f
    ld [hl], c                                    ; $68cd: $71
    xor d                                         ; $68ce: $aa
    inc b                                         ; $68cf: $04
    jr nz, jr_09e_6918                            ; $68d0: $20 $46

    dec b                                         ; $68d2: $05
    dec a                                         ; $68d3: $3d
    dec d                                         ; $68d4: $15
    ld [hl], l                                    ; $68d5: $75
    rst $18                                       ; $68d6: $df
    rst $38                                       ; $68d7: $ff
    jr c, jr_09e_68da                             ; $68d8: $38 $00

jr_09e_68da:
    ld c, b                                       ; $68da: $48
    rst $38                                       ; $68db: $ff
    ld b, $00                                     ; $68dc: $06 $00
    ld a, a                                       ; $68de: $7f
    rra                                           ; $68df: $1f
    ld c, h                                       ; $68e0: $4c
    rrca                                          ; $68e1: $0f
    sub l                                         ; $68e2: $95
    xor d                                         ; $68e3: $aa
    ld b, d                                       ; $68e4: $42
    ld [hl], b                                    ; $68e5: $70
    reti                                          ; $68e6: $d9


    add b                                         ; $68e7: $80
    dec de                                        ; $68e8: $1b
    and b                                         ; $68e9: $a0
    add hl, de                                    ; $68ea: $19
    ld h, b                                       ; $68eb: $60
    dec de                                        ; $68ec: $1b
    ld d, l                                       ; $68ed: $55
    jr nc, jr_09e_695a                            ; $68ee: $30 $6a

    sbc c                                         ; $68f0: $99
    nop                                           ; $68f1: $00
    rst $30                                       ; $68f2: $f7
    ld [$846b], sp                                ; $68f3: $08 $6b $84
    ld d, a                                       ; $68f6: $57
    adc b                                         ; $68f7: $88
    sub l                                         ; $68f8: $95
    and d                                         ; $68f9: $a2
    ld [bc], a                                    ; $68fa: $02
    ld b, d                                       ; $68fb: $42
    reti                                          ; $68fc: $d9


    and h                                         ; $68fd: $a4
    ld l, d                                       ; $68fe: $6a

jr_09e_68ff:
    pop de                                        ; $68ff: $d1
    inc [hl]                                      ; $6900: $34

Jump_09e_6901:
    ret nc                                        ; $6901: $d0

    ld a, [de]                                    ; $6902: $1a
    ld d, l                                       ; $6903: $55
    ld b, b                                       ; $6904: $40
    dec de                                        ; $6905: $1b
    ret nc                                        ; $6906: $d0

    ld l, $c0                                     ; $6907: $2e $c0
    rst $38                                       ; $6909: $ff
    sbc l                                         ; $690a: $9d
    ld [c], a                                     ; $690b: $e2
    ccf                                           ; $690c: $3f
    ret nz                                        ; $690d: $c0

    jr nz, @-$1f                                  ; $690e: $20 $df

    and b                                         ; $6910: $a0
    jr nc, jr_09e_691d                            ; $6911: $30 $0a

    and l                                         ; $6913: $a5
    ret nz                                        ; $6914: $c0

    ld [bc], a                                    ; $6915: $02
    and b                                         ; $6916: $a0
    ld d, h                                       ; $6917: $54

jr_09e_6918:
    nop                                           ; $6918: $00
    ld bc, $7082                                  ; $6919: $01 $82 $70
    dec d                                         ; $691c: $15

jr_09e_691d:
    ld b, d                                       ; $691d: $42
    ld c, b                                       ; $691e: $48
    ld [hl+], a                                   ; $691f: $22
    ld a, [hl+]                                   ; $6920: $2a
    inc b                                         ; $6921: $04
    push de                                       ; $6922: $d5

jr_09e_6923:
    sub d                                         ; $6923: $92
    rst $28                                       ; $6924: $ef
    dec a                                         ; $6925: $3d
    jp nz, $0af4                                  ; $6926: $c2 $f4 $0a

    xor d                                         ; $6929: $aa
    push de                                       ; $692a: $d5
    jr c, jr_09e_68ff                             ; $692b: $38 $d2

    rst $28                                       ; $692d: $ef
    add b                                         ; $692e: $80
    ld [$59a0], sp                                ; $692f: $08 $a0 $59
    db $10                                        ; $6932: $10
    ld c, a                                       ; $6933: $4f
    db $10                                        ; $6934: $10
    ld e, b                                       ; $6935: $58
    ld [$cc66], sp                                ; $6936: $08 $66 $cc
    db $10                                        ; $6939: $10
    ld d, a                                       ; $693a: $57
    jr nz, jr_09e_6944                            ; $693b: $20 $07

    inc c                                         ; $693d: $0c
    rrca                                          ; $693e: $0f
    sub [hl]                                      ; $693f: $96
    ld d, $37                                     ; $6940: $16 $37
    rrca                                          ; $6942: $0f
    rlca                                          ; $6943: $07

jr_09e_6944:
    nop                                           ; $6944: $00
    rlca                                          ; $6945: $07
    jr jr_09e_6964                                ; $6946: $18 $1c

    inc hl                                        ; $6948: $23
    ld bc, $8501                                  ; $6949: $01 $01 $85
    ld b, a                                       ; $694c: $47
    ret nz                                        ; $694d: $c0

    db $10                                        ; $694e: $10
    ld c, a                                       ; $694f: $4f
    ld a, [hl+]                                   ; $6950: $2a
    rlca                                          ; $6951: $07
    add e                                         ; $6952: $83
    add d                                         ; $6953: $82
    add l                                         ; $6954: $85
    dec b                                         ; $6955: $05
    adc e                                         ; $6956: $8b
    adc d                                         ; $6957: $8a
    rra                                           ; $6958: $1f
    ld d, [hl]                                    ; $6959: $56

jr_09e_695a:
    ld d, [hl]                                    ; $695a: $56
    xor [hl]                                      ; $695b: $ae
    db $10                                        ; $695c: $10
    ccf                                           ; $695d: $3f
    ld h, [hl]                                    ; $695e: $66
    rrca                                          ; $695f: $0f
    db $10                                        ; $6960: $10
    rra                                           ; $6961: $1f
    ld h, b                                       ; $6962: $60
    rrca                                          ; $6963: $0f

jr_09e_6964:
    db $10                                        ; $6964: $10
    ld c, a                                       ; $6965: $4f
    ld hl, $fc80                                  ; $6966: $21 $80 $fc
    db $10                                        ; $6969: $10
    ld e, a                                       ; $696a: $5f
    ld [bc], a                                    ; $696b: $02
    nop                                           ; $696c: $00
    ld [$1006], sp                                ; $696d: $08 $06 $10
    ld c, a                                       ; $6970: $4f
    call nz, $4f90                                ; $6971: $c4 $90 $4f
    db $10                                        ; $6974: $10
    rrca                                          ; $6975: $0f
    add b                                         ; $6976: $80
    add c                                         ; $6977: $81
    add c                                         ; $6978: $81
    rlc [hl]                                      ; $6979: $cb $06
    add l                                         ; $697b: $85
    adc e                                         ; $697c: $8b
    nop                                           ; $697d: $00
    add h                                         ; $697e: $84
    adc d                                         ; $697f: $8a
    adc [hl]                                      ; $6980: $8e
    sub d                                         ; $6981: $92
    adc d                                         ; $6982: $8a
    sub [hl]                                      ; $6983: $96
    ld c, $92                                     ; $6984: $0e $92
    pop hl                                        ; $6986: $e1
    db $10                                        ; $6987: $10
    rrca                                          ; $6988: $0f
    call nz, $c157                                ; $6989: $c4 $57 $c1
    ld b, a                                       ; $698c: $47
    ld de, $0959                                  ; $698d: $11 $59 $09
    call Call_09e_4f2f                            ; $6990: $cd $2f $4f
    nop                                           ; $6993: $00
    add c                                         ; $6994: $81
    add e                                         ; $6995: $83
    add c                                         ; $6996: $81
    add a                                         ; $6997: $87
    adc h                                         ; $6998: $8c
    ld c, d                                       ; $6999: $4a
    jp z, $002d                                   ; $699a: $ca $2d $00

    ld c, [hl]                                    ; $699d: $4e
    xor c                                         ; $699e: $a9
    dec hl                                        ; $699f: $2b
    db $dd                                        ; $69a0: $dd
    ld b, [hl]                                    ; $69a1: $46
    cp c                                          ; $69a2: $b9
    dec bc                                        ; $69a3: $0b
    db $fd                                        ; $69a4: $fd
    inc b                                         ; $69a5: $04
    or b                                          ; $69a6: $b0
    rst $18                                       ; $69a7: $df
    dec c                                         ; $69a8: $0d
    ei                                            ; $69a9: $fb
    rlca                                          ; $69aa: $07
    ld e, b                                       ; $69ab: $58
    rlca                                          ; $69ac: $07
    dec e                                         ; $69ad: $1d
    dec h                                         ; $69ae: $25
    ret nz                                        ; $69af: $c0

    ld b, b                                       ; $69b0: $40
    ccf                                           ; $69b1: $3f
    ld [$c007], a                                 ; $69b2: $ea $07 $c0
    ld d, b                                       ; $69b5: $50
    ret c                                         ; $69b6: $d8

    ret z                                         ; $69b7: $c8

    ld c, h                                       ; $69b8: $4c
    inc l                                         ; $69b9: $2c
    ld [de], a                                    ; $69ba: $12
    ld [$7ab4], a                                 ; $69bb: $ea $b4 $7a
    ld b, b                                       ; $69be: $40
    rrca                                          ; $69bf: $0f
    ld [hl+], a                                   ; $69c0: $22
    ld e, a                                       ; $69c1: $5f
    ld b, b                                       ; $69c2: $40
    cpl                                           ; $69c3: $2f
    dec b                                         ; $69c4: $05
    ld d, [hl]                                    ; $69c5: $56
    halt                                          ; $69c6: $76
    ld b, b                                       ; $69c7: $40
    rrca                                          ; $69c8: $0f
    ld [$023b], sp                                ; $69c9: $08 $3b $02
    nop                                           ; $69cc: $00
    sub d                                         ; $69cd: $92
    dec b                                         ; $69ce: $05
    inc b                                         ; $69cf: $04
    nop                                           ; $69d0: $00
    rst $38                                       ; $69d1: $ff
    ld [hl+], a                                   ; $69d2: $22
    sub b                                         ; $69d3: $90
    rst $28                                       ; $69d4: $ef
    ld b, $08                                     ; $69d5: $06 $08
    add d                                         ; $69d7: $82
    db $fd                                        ; $69d8: $fd
    jr nz, @+$42                                  ; $69d9: $20 $40

    rlca                                          ; $69db: $07
    ld [$f720], sp                                ; $69dc: $08 $20 $f7
    ld [bc], a                                    ; $69df: $02
    ld d, $10                                     ; $69e0: $16 $10
    nop                                           ; $69e2: $00
    nop                                           ; $69e3: $00
    inc e                                         ; $69e4: $1c
    nop                                           ; $69e5: $00
    ld e, $00                                     ; $69e6: $1e $00
    nop                                           ; $69e8: $00
    or $88                                        ; $69e9: $f6 $88
    di                                            ; $69eb: $f3
    adc h                                         ; $69ec: $8c
    ld a, a                                       ; $69ed: $7f
    ld h, b                                       ; $69ee: $60
    ccf                                           ; $69ef: $3f
    inc e                                         ; $69f0: $1c
    inc hl                                        ; $69f1: $23
    inc e                                         ; $69f2: $1c
    inc e                                         ; $69f3: $1c
    db $fc                                        ; $69f4: $fc
    ld [$4eb0], sp                                ; $69f5: $08 $b0 $4e
    ld d, b                                       ; $69f8: $50
    add hl, bc                                    ; $69f9: $09
    add hl, de                                    ; $69fa: $19
    ld sp, hl                                     ; $69fb: $f9
    jr nz, jr_09e_6a71                            ; $69fc: $20 $73

    adc a                                         ; $69fe: $8f
    nop                                           ; $69ff: $00
    ld l, $9a                                     ; $6a00: $2e $9a
    ld d, [hl]                                    ; $6a02: $56
    ld c, $f2                                     ; $6a03: $0e $f2
    jp c, $b610                                   ; $6a05: $da $10 $b6

    and d                                         ; $6a08: $a2
    sbc $00                                       ; $6a09: $de $00
    ld l, $08                                     ; $6a0b: $2e $08
    add hl, de                                    ; $6a0d: $19
    db $10                                        ; $6a0e: $10
    ld sp, $0125                                  ; $6a0f: $31 $25 $01
    ld h, c                                       ; $6a12: $61
    nop                                           ; $6a13: $00
    ld a, $8d                                     ; $6a14: $3e $8d
    ld c, e                                       ; $6a16: $4b
    or b                                          ; $6a17: $b0
    ld e, b                                       ; $6a18: $58
    add [hl]                                      ; $6a19: $86
    ld hl, sp+$00                                 ; $6a1a: $f8 $00
    inc c                                         ; $6a1c: $0c
    sbc h                                         ; $6a1d: $9c
    and h                                         ; $6a1e: $a4
    or h                                          ; $6a1f: $b4
    call Call_000_2ff0                            ; $6a20: $cd $f0 $2f
    ret nc                                        ; $6a23: $d0

    dec c                                         ; $6a24: $0d
    dec hl                                        ; $6a25: $2b
    db $e4                                        ; $6a26: $e4
    nop                                           ; $6a27: $00
    sub l                                         ; $6a28: $95
    jr nc, jr_09e_6a75                            ; $6a29: $30 $4a

    add hl, de                                    ; $6a2b: $19
    rla                                           ; $6a2c: $17
    xor b                                         ; $6a2d: $a8
    xor e                                         ; $6a2e: $ab
    ld b, h                                       ; $6a2f: $44
    jr @-$1f                                      ; $6a30: $18 $df

    nop                                           ; $6a32: $00
    sub l                                         ; $6a33: $95
    ldh [$64], a                                  ; $6a34: $e0 $64
    ld a, h                                       ; $6a36: $7c
    dec l                                         ; $6a37: $2d
    rra                                           ; $6a38: $1f
    rst $38                                       ; $6a39: $ff
    ret                                           ; $6a3a: $c9


    ld b, $3f                                     ; $6a3b: $06 $3f
    jp hl                                         ; $6a3d: $e9


    rra                                           ; $6a3e: $1f
    reti                                          ; $6a3f: $d9


    cpl                                           ; $6a40: $2f
    ld h, b                                       ; $6a41: $60
    dec a                                         ; $6a42: $3d
    jr nc, @+$1d                                  ; $6a43: $30 $1b

    xor c                                         ; $6a45: $a9
    nop                                           ; $6a46: $00
    ld e, a                                       ; $6a47: $5f
    ld e, c                                       ; $6a48: $59
    cp a                                          ; $6a49: $bf
    jp hl                                         ; $6a4a: $e9


    rra                                           ; $6a4b: $1f
    ld sp, hl                                     ; $6a4c: $f9
    rrca                                          ; $6a4d: $0f
    ld sp, hl                                     ; $6a4e: $f9
    ld e, b                                       ; $6a4f: $58
    rrca                                          ; $6a50: $0f
    ld a, [bc]                                    ; $6a51: $0a
    ld [$98f9], sp                                ; $6a52: $08 $f9 $98
    inc bc                                        ; $6a55: $03
    and b                                         ; $6a56: $a0
    ld e, e                                       ; $6a57: $5b
    xor h                                         ; $6a58: $ac
    inc sp                                        ; $6a59: $33
    ld d, b                                       ; $6a5a: $50
    nop                                           ; $6a5b: $00
    ld h, a                                       ; $6a5c: $67
    add l                                         ; $6a5d: $85
    ld a, [$d12a]                                 ; $6a5e: $fa $2a $d1
    ld d, l                                       ; $6a61: $55
    adc d                                         ; $6a62: $8a
    ld [hl+], a                                   ; $6a63: $22
    inc b                                         ; $6a64: $04
    push de                                       ; $6a65: $d5
    ld d, c                                       ; $6a66: $51
    xor d                                         ; $6a67: $aa
    ld a, [bc]                                    ; $6a68: $0a
    ld h, l                                       ; $6a69: $65
    sub b                                         ; $6a6a: $90
    ld a, [bc]                                    ; $6a6b: $0a
    inc l                                         ; $6a6c: $2c
    ld [c], a                                     ; $6a6d: $e2
    sub b                                         ; $6a6e: $90
    sub b                                         ; $6a6f: $90
    ld a, [hl-]                                   ; $6a70: $3a

jr_09e_6a71:
    nop                                           ; $6a71: $00
    rst $38                                       ; $6a72: $ff
    ld a, $0d                                     ; $6a73: $3e $0d

jr_09e_6a75:
    ld h, b                                       ; $6a75: $60
    cp a                                          ; $6a76: $bf
    ld a, [$02a5]                                 ; $6a77: $fa $a5 $02
    ld a, a                                       ; $6a7a: $7f
    sub b                                         ; $6a7b: $90
    rst $38                                       ; $6a7c: $ff
    adc a                                         ; $6a7d: $8f
    ld a, b                                       ; $6a7e: $78
    add a                                         ; $6a7f: $87
    db $fc                                        ; $6a80: $fc
    rrca                                          ; $6a81: $0f
    sbc a                                         ; $6a82: $9f
    nop                                           ; $6a83: $00
    ld a, a                                       ; $6a84: $7f
    ld [hl], h                                    ; $6a85: $74
    sbc a                                         ; $6a86: $9f
    or a                                          ; $6a87: $b7
    ld e, h                                       ; $6a88: $5c
    db $e4                                        ; $6a89: $e4
    ccf                                           ; $6a8a: $3f
    ld hl, sp+$10                                 ; $6a8b: $f8 $10
    rst $38                                       ; $6a8d: $ff
    rrca                                          ; $6a8e: $0f
    ldh a, [$50]                                  ; $6a8f: $f0 $50
    dec c                                         ; $6a91: $0d
    rst $38                                       ; $6a92: $ff
    ldh [$3f], a                                  ; $6a93: $e0 $3f
    ldh [$0d], a                                  ; $6a95: $e0 $0d
    rst $38                                       ; $6a97: $ff
    nop                                           ; $6a98: $00
    rrca                                          ; $6a99: $0f
    ldh a, [$e3]                                  ; $6a9a: $f0 $e3
    ld [de], a                                    ; $6a9c: $12
    ld l, [hl]                                    ; $6a9d: $6e
    ld b, l                                       ; $6a9e: $45
    ret nz                                        ; $6a9f: $c0

    ld a, [hl-]                                   ; $6aa0: $3a
    dec c                                         ; $6aa1: $0d
    ld e, [hl]                                    ; $6aa2: $5e
    ld bc, $07e9                                  ; $6aa3: $01 $e9 $07
    ld bc, $176b                                  ; $6aa6: $01 $6b $17
    xor e                                         ; $6aa9: $ab
    rlca                                          ; $6aaa: $07
    ld [hl], e                                    ; $6aab: $73
    rla                                           ; $6aac: $17
    add l                                         ; $6aad: $85
    dec d                                         ; $6aae: $15
    ret nz                                        ; $6aaf: $c0

    ld b, b                                       ; $6ab0: $40
    ccf                                           ; $6ab1: $3f
    db $10                                        ; $6ab2: $10
    jr @-$7e                                      ; $6ab3: $18 $80

    rst $38                                       ; $6ab5: $ff
    adc d                                         ; $6ab6: $8a
    push af                                       ; $6ab7: $f5
    adc b                                         ; $6ab8: $88
    rst $30                                       ; $6ab9: $f7
    inc b                                         ; $6aba: $04
    xor d                                         ; $6abb: $aa
    rst $30                                       ; $6abc: $f7
    adc b                                         ; $6abd: $88
    rst $30                                       ; $6abe: $f7
    db $dd                                        ; $6abf: $dd
    ld b, $00                                     ; $6ac0: $06 $00
    db $dd                                        ; $6ac2: $dd
    rst $30                                       ; $6ac3: $f7
    and b                                         ; $6ac4: $a0
    ld l, h                                       ; $6ac5: $6c
    dec hl                                        ; $6ac6: $2b
    nop                                           ; $6ac7: $00
    ld l, [hl]                                    ; $6ac8: $6e
    inc de                                        ; $6ac9: $13
    ld d, l                                       ; $6aca: $55
    cp $00                                        ; $6acb: $fe $00
    rst $38                                       ; $6acd: $ff
    and d                                         ; $6ace: $a2
    nop                                           ; $6acf: $00
    ld e, l                                       ; $6ad0: $5d
    inc d                                         ; $6ad1: $14
    db $eb                                        ; $6ad2: $eb
    cp [hl]                                       ; $6ad3: $be
    db $eb                                        ; $6ad4: $eb
    inc d                                         ; $6ad5: $14
    db $eb                                        ; $6ad6: $eb
    ld d, l                                       ; $6ad7: $55
    nop                                           ; $6ad8: $00
    db $eb                                        ; $6ad9: $eb
    ld a, $2a                                     ; $6ada: $3e $2a
    ld [hl], $08                                  ; $6adc: $36 $08
    call z, $e8bb                                 ; $6ade: $cc $bb $e8
    ld [bc], a                                    ; $6ae1: $02
    rst $10                                       ; $6ae2: $d7

jr_09e_6ae3:
    push af                                       ; $6ae3: $f5
    xor $7b                                       ; $6ae4: $ee $7b
    push af                                       ; $6ae6: $f5
    cp a                                          ; $6ae7: $bf
    or l                                          ; $6ae8: $b5

jr_09e_6ae9:
    rlca                                          ; $6ae9: $07
    ld e, a                                       ; $6aea: $5f
    db $e4                                        ; $6aeb: $e4
    or b                                          ; $6aec: $b0
    rlca                                          ; $6aed: $07
    add b                                         ; $6aee: $80
    db $10                                        ; $6aef: $10
    ld [bc], a                                    ; $6af0: $02
    jr z, jr_09e_6b02                             ; $6af1: $28 $0f

    jr c, jr_09e_6b05                             ; $6af3: $38 $10

    ld b, b                                       ; $6af5: $40
    ldh a, [rIF]                                  ; $6af6: $f0 $0f
    inc c                                         ; $6af8: $0c
    rst $28                                       ; $6af9: $ef
    sub b                                         ; $6afa: $90

jr_09e_6afb:
    rst $38                                       ; $6afb: $ff
    cp a                                          ; $6afc: $bf
    jr nz, @+$32                                  ; $6afd: $20 $30

    inc e                                         ; $6aff: $1c
    nop                                           ; $6b00: $00
    rst $30                                       ; $6b01: $f7

jr_09e_6b02:
    jr c, @+$11                                   ; $6b02: $38 $0f

    ld a, a                                       ; $6b04: $7f

jr_09e_6b05:
    or b                                          ; $6b05: $b0
    nop                                           ; $6b06: $00
    rst $38                                       ; $6b07: $ff
    or d                                          ; $6b08: $b2
    dec h                                         ; $6b09: $25
    ret nc                                        ; $6b0a: $d0

    dec b                                         ; $6b0b: $05
    cp [hl]                                       ; $6b0c: $be
    dec c                                         ; $6b0d: $0d
    inc d                                         ; $6b0e: $14
    ld [$ff02], sp                                ; $6b0f: $08 $02 $ff

jr_09e_6b12:
    jr c, jr_09e_6ae3                             ; $6b12: $38 $cf

    rst $38                                       ; $6b14: $ff
    db $10                                        ; $6b15: $10
    rst $28                                       ; $6b16: $ef
    and b                                         ; $6b17: $a0
    jr jr_09e_6b12                                ; $6b18: $18 $f8

    dec b                                         ; $6b1a: $05
    db $10                                        ; $6b1b: $10
    rst $38                                       ; $6b1c: $ff
    rrca                                          ; $6b1d: $0f
    db $fc                                        ; $6b1e: $fc
    inc bc                                        ; $6b1f: $03
    push de                                       ; $6b20: $d5
    inc b                                         ; $6b21: $04
    add b                                         ; $6b22: $80
    or b                                          ; $6b23: $b0
    jr nz, jr_09e_6afb                            ; $6b24: $20 $d5

    inc e                                         ; $6b26: $1c
    jr nz, jr_09e_6ae9                            ; $6b27: $20 $c0

    jr nc, @+$03                                  ; $6b29: $30 $01

    jr c, jr_09e_6b2d                             ; $6b2b: $38 $00

jr_09e_6b2d:
    add c                                         ; $6b2d: $81
    or $1d                                        ; $6b2e: $f6 $1d
    inc bc                                        ; $6b30: $03
    cp $05                                        ; $6b31: $fe $05
    add b                                         ; $6b33: $80
    or b                                          ; $6b34: $b0
    ld c, b                                       ; $6b35: $48
    ld a, [hl+]                                   ; $6b36: $2a
    ld a, a                                       ; $6b37: $7f
    ld d, l                                       ; $6b38: $55
    ccf                                           ; $6b39: $3f
    nop                                           ; $6b3a: $00
    rst $38                                       ; $6b3b: $ff
    xor b                                         ; $6b3c: $a8
    ld [hl+], a                                   ; $6b3d: $22
    ld d, a                                       ; $6b3e: $57
    ld [$00d0], sp                                ; $6b3f: $08 $d0 $00
    ld [$5df7], sp                                ; $6b42: $08 $f7 $5d
    sub $00                                       ; $6b45: $d6 $00
    ld e, l                                       ; $6b47: $5d
    add b                                         ; $6b48: $80
    ret nc                                        ; $6b49: $d0

    db $10                                        ; $6b4a: $10
    add b                                         ; $6b4b: $80
    ld a, a                                       ; $6b4c: $7f
    xor b                                         ; $6b4d: $a8
    ld a, h                                       ; $6b4e: $7c
    add d                                         ; $6b4f: $82
    ld a, l                                       ; $6b50: $7d
    push de                                       ; $6b51: $d5
    ld [$807f], sp                                ; $6b52: $08 $7f $80
    nop                                           ; $6b55: $00
    ld d, l                                       ; $6b56: $55
    ld c, h                                       ; $6b57: $4c
    inc b                                         ; $6b58: $04
    xor h                                         ; $6b59: $ac
    ld d, e                                       ; $6b5a: $53
    inc b                                         ; $6b5b: $04
    add b                                         ; $6b5c: $80
    ld e, h                                       ; $6b5d: $5c
    inc b                                         ; $6b5e: $04
    inc b                                         ; $6b5f: $04
    ei                                            ; $6b60: $fb
    ld d, l                                       ; $6b61: $55
    ei                                            ; $6b62: $fb
    ld b, $03                                     ; $6b63: $06 $03
    ld d, l                                       ; $6b65: $55
    db $10                                        ; $6b66: $10
    rst $38                                       ; $6b67: $ff
    ld b, d                                       ; $6b68: $42
    cp a                                          ; $6b69: $bf
    ldh a, [$5c]                                  ; $6b6a: $f0 $5c
    ld e, e                                       ; $6b6c: $5b
    cp a                                          ; $6b6d: $bf
    xor l                                         ; $6b6e: $ad
    ld [hl], a                                    ; $6b6f: $77
    add b                                         ; $6b70: $80
    ld b, d                                       ; $6b71: $42
    inc b                                         ; $6b72: $04
    cp $ae                                        ; $6b73: $fe $ae
    db $db                                        ; $6b75: $db
    rst $18                                       ; $6b76: $df
    push af                                       ; $6b77: $f5
    xor e                                         ; $6b78: $ab
    rst $38                                       ; $6b79: $ff
    ld h, $f6                                     ; $6b7a: $26 $f6
    ld l, a                                       ; $6b7c: $6f
    ret nc                                        ; $6b7d: $d0

    dec a                                         ; $6b7e: $3d
    ld d, l                                       ; $6b7f: $55
    adc [hl]                                      ; $6b80: $8e
    ret nc                                        ; $6b81: $d0

    dec c                                         ; $6b82: $0d
    db $10                                        ; $6b83: $10
    ld c, a                                       ; $6b84: $4f
    adc h                                         ; $6b85: $8c
    ret nz                                        ; $6b86: $c0

    db $10                                        ; $6b87: $10
    rlca                                          ; $6b88: $07
    jr nc, jr_09e_6baf                            ; $6b89: $30 $24

    ld sp, $9b6a                                  ; $6b8b: $31 $6a $9b
    push af                                       ; $6b8e: $f5
    ld c, $6a                                     ; $6b8f: $0e $6a
    inc d                                         ; $6b91: $14
    adc [hl]                                      ; $6b92: $8e
    ld d, l                                       ; $6b93: $55
    sbc e                                         ; $6b94: $9b
    nop                                           ; $6b95: $00
    rrca                                          ; $6b96: $0f
    xor h                                         ; $6b97: $ac
    nop                                           ; $6b98: $00
    scf                                           ; $6b99: $37
    ld d, l                                       ; $6b9a: $55
    dec de                                        ; $6b9b: $1b
    ldh [rLCDC], a                                ; $6b9c: $e0 $40
    inc h                                         ; $6b9e: $24
    sub b                                         ; $6b9f: $90
    ld c, $40                                     ; $6ba0: $0e $40
    inc d                                         ; $6ba2: $14
    and h                                         ; $6ba3: $a4
    inc sp                                        ; $6ba4: $33
    ld e, [hl]                                    ; $6ba5: $5e
    ld h, b                                       ; $6ba6: $60
    xor l                                         ; $6ba7: $ad
    nop                                           ; $6ba8: $00
    ret nz                                        ; $6ba9: $c0

    ld d, c                                       ; $6baa: $51
    and d                                         ; $6bab: $a2
    db $fc                                        ; $6bac: $fc
    inc bc                                        ; $6bad: $03
    add d                                         ; $6bae: $82

jr_09e_6baf:
    ld [hl], c                                    ; $6baf: $71
    sub l                                         ; $6bb0: $95
    ld [bc], a                                    ; $6bb1: $02
    ld l, d                                       ; $6bb2: $6a
    ld c, b                                       ; $6bb3: $48
    ld sp, $f7aa                                  ; $6bb4: $31 $aa $f7
    rst $38                                       ; $6bb7: $ff
    ld a, [hl]                                    ; $6bb8: $7e
    ld bc, $91ff                                  ; $6bb9: $01 $ff $91
    ld b, $00                                     ; $6bbc: $06 $00
    ld hl, sp-$10                                 ; $6bbe: $f8 $f0
    or b                                          ; $6bc0: $b0
    inc c                                         ; $6bc1: $0c
    db $dd                                        ; $6bc2: $dd
    ld a, [hl+]                                   ; $6bc3: $2a
    ld a, $6e                                     ; $6bc4: $3e $6e
    ld bc, $ff4e                                  ; $6bc6: $01 $4e $ff
    ld [bc], a                                    ; $6bc9: $02
    nop                                           ; $6bca: $00
    inc e                                         ; $6bcb: $1c
    ld [$0cc0], sp                                ; $6bcc: $08 $c0 $0c
    ld [hl], b                                    ; $6bcf: $70
    dec h                                         ; $6bd0: $25
    add b                                         ; $6bd1: $80
    ld [hl], $f5                                  ; $6bd2: $36 $f5
    nop                                           ; $6bd4: $00
    ccf                                           ; $6bd5: $3f
    push af                                       ; $6bd6: $f5
    ld l, e                                       ; $6bd7: $6b
    ret nz                                        ; $6bd8: $c0

    rst $38                                       ; $6bd9: $ff
    ret                                           ; $6bda: $c9


    rst $38                                       ; $6bdb: $ff
    sub d                                         ; $6bdc: $92
    add b                                         ; $6bdd: $80
    ld [de], a                                    ; $6bde: $12
    inc bc                                        ; $6bdf: $03
    ld h, $fb                                     ; $6be0: $26 $fb
    add c                                         ; $6be2: $81
    ld a, a                                       ; $6be3: $7f
    db $eb                                        ; $6be4: $eb
    cp [hl]                                       ; $6be5: $be
    db $fd                                        ; $6be6: $fd
    ld h, b                                       ; $6be7: $60
    rst $18                                       ; $6be8: $df
    adc e                                         ; $6be9: $8b
    ld bc, $07e0                                  ; $6bea: $01 $e0 $07
    ld l, [hl]                                    ; $6bed: $6e
    rst $38                                       ; $6bee: $ff
    sbc a                                         ; $6bef: $9f
    ld l, [hl]                                    ; $6bf0: $6e
    ccf                                           ; $6bf1: $3f
    nop                                           ; $6bf2: $00
    db $db                                        ; $6bf3: $db
    ld a, e                                       ; $6bf4: $7b
    or a                                          ; $6bf5: $b7
    db $e4                                        ; $6bf6: $e4
    ld a, e                                       ; $6bf7: $7b
    ldh a, [$df]                                  ; $6bf8: $f0 $df
    and d                                         ; $6bfa: $a2
    nop                                           ; $6bfb: $00
    rst $38                                       ; $6bfc: $ff
    dec b                                         ; $6bfd: $05
    ld a, [$ff50]                                 ; $6bfe: $fa $50 $ff
    ld a, [bc]                                    ; $6c01: $0a
    db $fd                                        ; $6c02: $fd
    and l                                         ; $6c03: $a5
    ld de, $a47f                                  ; $6c04: $11 $7f $a4
    dec sp                                        ; $6c07: $3b
    ld h, b                                       ; $6c08: $60
    ld e, d                                       ; $6c09: $5a
    xor d                                         ; $6c0a: $aa
    ld a, a                                       ; $6c0b: $7f
    ld a, a                                       ; $6c0c: $7f
    db $10                                        ; $6c0d: $10
    ld d, l                                       ; $6c0e: $55
    sub d                                         ; $6c0f: $92
    add b                                         ; $6c10: $80
    jr c, jr_09e_6c22                             ; $6c11: $38 $0f

    rlca                                          ; $6c13: $07
    jr nc, jr_09e_6c2b                            ; $6c14: $30 $15

    ld d, l                                       ; $6c16: $55
    rst $38                                       ; $6c17: $ff
    ld l, $01                                     ; $6c18: $2e $01
    cp $63                                        ; $6c1a: $fe $63
    ld a, l                                       ; $6c1c: $7d
    ld [hl], a                                    ; $6c1d: $77
    ld [bc], a                                    ; $6c1e: $02
    jr nc, jr_09e_6c36                            ; $6c1f: $30 $15

    xor [hl]                                      ; $6c21: $ae

jr_09e_6c22:
    ld d, e                                       ; $6c22: $53
    rst $38                                       ; $6c23: $ff
    add [hl]                                      ; $6c24: $86
    dec c                                         ; $6c25: $0d
    ld d, [hl]                                    ; $6c26: $56
    dec b                                         ; $6c27: $05
    jr nz, jr_09e_6c31                            ; $6c28: $20 $07

    inc bc                                        ; $6c2a: $03

jr_09e_6c2b:
    ld d, b                                       ; $6c2b: $50
    dec c                                         ; $6c2c: $0d
    ld [$fdb7], a                                 ; $6c2d: $ea $b7 $fd
    db $db                                        ; $6c30: $db

jr_09e_6c31:
    ld a, e                                       ; $6c31: $7b
    jr nc, jr_09e_6c22                            ; $6c32: $30 $ee

    ccf                                           ; $6c34: $3f
    or b                                          ; $6c35: $b0

jr_09e_6c36:
    dec b                                         ; $6c36: $05
    add b                                         ; $6c37: $80
    ld e, $f1                                     ; $6c38: $1e $f1
    cp a                                          ; $6c3a: $bf
    ld [$007f], a                                 ; $6c3b: $ea $7f $00

jr_09e_6c3e:
    ld sp, hl                                     ; $6c3e: $f9
    xor $dc                                       ; $6c3f: $ee $dc
    rst $30                                       ; $6c41: $f7
    db $10                                        ; $6c42: $10
    rst $28                                       ; $6c43: $ef
    ld de, $01ef                                  ; $6c44: $11 $ef $01
    jr nc, @+$01                                  ; $6c47: $30 $ff

    sub d                                         ; $6c49: $92
    ld l, a                                       ; $6c4a: $6f
    jp nz, $ecbf                                  ; $6c4b: $c2 $bf $ec

    ld b, b                                       ; $6c4e: $40
    ld d, [hl]                                    ; $6c4f: $56
    ld h, a                                       ; $6c50: $67
    ld a, [hl]                                    ; $6c51: $7e
    or [hl]                                       ; $6c52: $b6
    rlca                                          ; $6c53: $07
    ld [bc], a                                    ; $6c54: $02
    jr z, jr_09e_6cac                             ; $6c55: $28 $55

    xor d                                         ; $6c57: $aa
    ld a, a                                       ; $6c58: $7f
    ld [de], a                                    ; $6c59: $12
    jr nc, jr_09e_6c8e                            ; $6c5a: $30 $32

    db $10                                        ; $6c5c: $10
    ld [$5090], sp                                ; $6c5d: $08 $90 $50
    ld a, [bc]                                    ; $6c60: $0a
    db $f4                                        ; $6c61: $f4
    rst $28                                       ; $6c62: $ef
    ld d, b                                       ; $6c63: $50
    ld a, [hl-]                                   ; $6c64: $3a
    ld e, e                                       ; $6c65: $5b
    cp l                                          ; $6c66: $bd
    or l                                          ; $6c67: $b5
    ld l, d                                       ; $6c68: $6a
    ld b, e                                       ; $6c69: $43
    ld l, a                                       ; $6c6a: $6f
    db $10                                        ; $6c6b: $10
    daa                                           ; $6c6c: $27
    ld a, e                                       ; $6c6d: $7b
    push de                                       ; $6c6e: $d5
    sbc $3b                                       ; $6c6f: $de $3b
    ld [hl], b                                    ; $6c71: $70
    ld [hl+], a                                   ; $6c72: $22

jr_09e_6c73:
    sub b                                         ; $6c73: $90
    ld b, $21                                     ; $6c74: $06 $21
    xor $bf                                       ; $6c76: $ee $bf
    ld [hl], b                                    ; $6c78: $70
    ld a, [de]                                    ; $6c79: $1a
    cp $01                                        ; $6c7a: $fe $01
    db $fc                                        ; $6c7c: $fc
    inc bc                                        ; $6c7d: $03
    inc b                                         ; $6c7e: $04
    jr z, jr_09e_6c81                             ; $6c7f: $28 $00

jr_09e_6c81:
    ld a, [hl]                                    ; $6c81: $7e
    add c                                         ; $6c82: $81
    pop de                                        ; $6c83: $d1
    cp a                                          ; $6c84: $bf
    ld [c], a                                     ; $6c85: $e2
    rst $18                                       ; $6c86: $df
    ld [hl], c                                    ; $6c87: $71
    xor $00                                       ; $6c88: $ee $00
    cp e                                          ; $6c8a: $bb
    ld [hl], l                                    ; $6c8b: $75
    ld e, a                                       ; $6c8c: $5f
    cp e                                          ; $6c8d: $bb

jr_09e_6c8e:
    xor a                                         ; $6c8e: $af
    rst $18                                       ; $6c8f: $df
    rst $18                                       ; $6c90: $df
    ld l, [hl]                                    ; $6c91: $6e
    ld bc, $dfbb                                  ; $6c92: $01 $bb $df
    call nz, $e2bb                                ; $6c95: $c4 $bb $e2
    db $dd                                        ; $6c98: $dd
    pop af                                        ; $6c99: $f1
    stop                                          ; $6c9a: $10 $00
    ld bc, $fb9f                                  ; $6c9c: $01 $9f $fb
    ld c, $ff                                     ; $6c9f: $0e $ff
    sbc a                                         ; $6ca1: $9f
    xor $bb                                       ; $6ca2: $ee $bb
    ld c, b                                       ; $6ca4: $48
    inc b                                         ; $6ca5: $04
    add a                                         ; $6ca6: $87
    add b                                         ; $6ca7: $80
    jr c, @+$81                                   ; $6ca8: $38 $7f

    add b                                         ; $6caa: $80
    ld a, [hl]                                    ; $6cab: $7e

jr_09e_6cac:
    add c                                         ; $6cac: $81
    add d                                         ; $6cad: $82
    jr c, jr_09e_6c3e                             ; $6cae: $38 $8e

    ld [$0622], sp                                ; $6cb0: $08 $22 $06
    db $e4                                        ; $6cb3: $e4
    inc de                                        ; $6cb4: $13
    ld a, [bc]                                    ; $6cb5: $0a
    db $eb                                        ; $6cb6: $eb
    ld [de], a                                    ; $6cb7: $12
    dec hl                                        ; $6cb8: $2b
    ld e, $7c                                     ; $6cb9: $1e $7c
    add e                                         ; $6cbb: $83
    ld h, b                                       ; $6cbc: $60
    jr c, jr_09e_6d13                             ; $6cbd: $38 $54

    xor e                                         ; $6cbf: $ab
    nop                                           ; $6cc0: $00
    nop                                           ; $6cc1: $00
    rst $38                                       ; $6cc2: $ff
    ld [hl], b                                    ; $6cc3: $70
    ld [de], a                                    ; $6cc4: $12
    sub d                                         ; $6cc5: $92
    dec bc                                        ; $6cc6: $0b
    ld b, d                                       ; $6cc7: $42
    rst $38                                       ; $6cc8: $ff
    ld bc, $8360                                  ; $6cc9: $01 $60 $83
    rst $38                                       ; $6ccc: $ff
    pop bc                                        ; $6ccd: $c1
    cp a                                          ; $6cce: $bf
    inc b                                         ; $6ccf: $04
    ld c, b                                       ; $6cd0: $48
    inc a                                         ; $6cd1: $3c
    nop                                           ; $6cd2: $00
    di                                            ; $6cd3: $f3
    sbc d                                         ; $6cd4: $9a
    ld [hl], c                                    ; $6cd5: $71
    rst $30                                       ; $6cd6: $f7
    jr nc, jr_09e_6c73                            ; $6cd7: $30 $9a

    ld [hl], c                                    ; $6cd9: $71
    di                                            ; $6cda: $f3
    nop                                           ; $6cdb: $00
    jr nc, jr_09e_6cee                            ; $6cdc: $30 $10

    ld [hl], c                                    ; $6cde: $71
    db $d3                                        ; $6cdf: $d3
    jr nc, jr_09e_6d33                            ; $6ce0: $30 $51

    jr nc, @+$01                                  ; $6ce2: $30 $ff

    inc [hl]                                      ; $6ce4: $34
    rst $38                                       ; $6ce5: $ff
    ld a, [hl]                                    ; $6ce6: $7e
    inc sp                                        ; $6ce7: $33
    nop                                           ; $6ce8: $00
    inc b                                         ; $6ce9: $04
    jr jr_09e_6d6b                                ; $6cea: $18 $7f

    inc c                                         ; $6cec: $0c
    nop                                           ; $6ced: $00

jr_09e_6cee:
    inc sp                                        ; $6cee: $33
    rst $08                                       ; $6cef: $cf
    nop                                           ; $6cf0: $00
    ld l, c                                       ; $6cf1: $69
    add a                                         ; $6cf2: $87
    rst $18                                       ; $6cf3: $df
    inc bc                                        ; $6cf4: $03
    ld l, c                                       ; $6cf5: $69
    add a                                         ; $6cf6: $87
    rst $08                                       ; $6cf7: $cf
    inc bc                                        ; $6cf8: $03
    nop                                           ; $6cf9: $00
    ld b, c                                       ; $6cfa: $41
    add a                                         ; $6cfb: $87
    call Call_09e_4503                            ; $6cfc: $cd $03 $45
    add e                                         ; $6cff: $83

Jump_09e_6d00:
    cp $ff                                        ; $6d00: $fe $ff
    rrca                                          ; $6d02: $0f
    db $fc                                        ; $6d03: $fc
    rst $38                                       ; $6d04: $ff
    rst $38                                       ; $6d05: $ff
    cp $04                                        ; $6d06: $fe $04
    jr c, jr_09e_6d3e                             ; $6d08: $38 $34

    ld [$4804], sp                                ; $6d0a: $08 $04 $48
    inc [hl]                                      ; $6d0d: $34
    ld [$04f4], sp                                ; $6d0e: $08 $f4 $04
    ld c, b                                       ; $6d11: $48
    inc [hl]                                      ; $6d12: $34

jr_09e_6d13:
    ld [$4804], sp                                ; $6d13: $08 $04 $48
    inc a                                         ; $6d16: $3c
    ld c, b                                       ; $6d17: $48
    ld d, a                                       ; $6d18: $57
    ld c, b                                       ; $6d19: $48
    nop                                           ; $6d1a: $00
    ld a, a                                       ; $6d1b: $7f
    rst $38                                       ; $6d1c: $ff

jr_09e_6d1d:
    ld b, c                                       ; $6d1d: $41
    ld l, d                                       ; $6d1e: $6a
    inc b                                         ; $6d1f: $04
    db $10                                        ; $6d20: $10
    ld d, a                                       ; $6d21: $57
    rst $38                                       ; $6d22: $ff
    ld b, d                                       ; $6d23: $42
    rst $38                                       ; $6d24: $ff
    ld b, e                                       ; $6d25: $43
    inc b                                         ; $6d26: $04
    nop                                           ; $6d27: $00
    ld bc, $fe57                                  ; $6d28: $01 $57 $fe
    xor h                                         ; $6d2b: $ac
    rst $38                                       ; $6d2c: $ff
    rlca                                          ; $6d2d: $07
    cp $04                                        ; $6d2e: $fe $04
    inc b                                         ; $6d30: $04
    db $10                                        ; $6d31: $10
    db $10                                        ; $6d32: $10

jr_09e_6d33:
    ld d, a                                       ; $6d33: $57
    xor [hl]                                      ; $6d34: $ae
    inc b                                         ; $6d35: $04
    inc d                                         ; $6d36: $14
    db $10                                        ; $6d37: $10
    ld b, e                                       ; $6d38: $43
    rst $38                                       ; $6d39: $ff
    ld l, d                                       ; $6d3a: $6a
    rst $10                                       ; $6d3b: $d7
    add l                                         ; $6d3c: $85
    inc b                                         ; $6d3d: $04

jr_09e_6d3e:
    ld [$eb55], sp                                ; $6d3e: $08 $55 $eb
    ld l, d                                       ; $6d41: $6a
    rst $10                                       ; $6d42: $d7
    ld d, b                                       ; $6d43: $50
    ld c, b                                       ; $6d44: $48
    call z, $0090                                 ; $6d45: $cc $90 $00
    nop                                           ; $6d48: $00
    ld d, e                                       ; $6d49: $53
    xor [hl]                                      ; $6d4a: $ae
    xor h                                         ; $6d4b: $ac
    ld d, a                                       ; $6d4c: $57
    ld d, e                                       ; $6d4d: $53
    xor [hl]                                      ; $6d4e: $ae
    db $fc                                        ; $6d4f: $fc
    rlca                                          ; $6d50: $07
    nop                                           ; $6d51: $00
    ei                                            ; $6d52: $fb
    ld b, $fc                                     ; $6d53: $06 $fc
    inc bc                                        ; $6d55: $03
    cp $01                                        ; $6d56: $fe $01
    rst $38                                       ; $6d58: $ff
    nop                                           ; $6d59: $00
    nop                                           ; $6d5a: $00
    ld h, a                                       ; $6d5b: $67
    sbc a                                         ; $6d5c: $9f
    db $d3                                        ; $6d5d: $d3
    rrca                                          ; $6d5e: $0f
    cp a                                          ; $6d5f: $bf
    rlca                                          ; $6d60: $07
    db $d3                                        ; $6d61: $d3
    rrca                                          ; $6d62: $0f
    nop                                           ; $6d63: $00
    sbc a                                         ; $6d64: $9f
    rlca                                          ; $6d65: $07
    add e                                         ; $6d66: $83
    rrca                                          ; $6d67: $0f
    sbc e                                         ; $6d68: $9b
    rlca                                          ; $6d69: $07
    adc e                                         ; $6d6a: $8b

jr_09e_6d6b:
    rlca                                          ; $6d6b: $07
    add l                                         ; $6d6c: $85
    inc b                                         ; $6d6d: $04
    ld c, b                                       ; $6d6e: $48
    sbc d                                         ; $6d6f: $9a
    rlca                                          ; $6d70: $07
    adc d                                         ; $6d71: $8a
    rlca                                          ; $6d72: $07
    cp h                                          ; $6d73: $bc
    jr jr_09e_6dca                                ; $6d74: $18 $54

    inc b                                         ; $6d76: $04
    db $10                                        ; $6d77: $10
    ld [hl], d                                    ; $6d78: $72
    xor a                                         ; $6d79: $af
    ld l, b                                       ; $6d7a: $68
    nop                                           ; $6d7b: $00
    inc e                                         ; $6d7c: $1c
    ld c, b                                       ; $6d7d: $48
    jr nz, jr_09e_6d90                            ; $6d7e: $20 $10

    rst $38                                       ; $6d80: $ff
    ld d, l                                       ; $6d81: $55
    inc sp                                        ; $6d82: $33
    ld bc, $0c55                                  ; $6d83: $01 $55 $0c
    rst $38                                       ; $6d86: $ff
    xor e                                         ; $6d87: $ab
    rst $38                                       ; $6d88: $ff
    ld bc, $1002                                  ; $6d89: $01 $02 $10
    jr jr_09e_6db6                                ; $6d8c: $18 $28

    sbc d                                         ; $6d8e: $9a
    rlca                                          ; $6d8f: $07

jr_09e_6d90:
    jr nc, jr_09e_6d1d                            ; $6d90: $30 $8b

    ld b, $04                                     ; $6d92: $06 $04
    ld [$089c], sp                                ; $6d94: $08 $9c $08
    xor a                                         ; $6d97: $af
    ld d, [hl]                                    ; $6d98: $56
    inc b                                         ; $6d99: $04
    rst $38                                       ; $6d9a: $ff
    nop                                           ; $6d9b: $00
    xor e                                         ; $6d9c: $ab
    ld d, [hl]                                    ; $6d9d: $56
    ld d, h                                       ; $6d9e: $54
    xor a                                         ; $6d9f: $af
    xor e                                         ; $6da0: $ab
    ld d, [hl]                                    ; $6da1: $56
    db $fc                                        ; $6da2: $fc
    rlca                                          ; $6da3: $07
    db $10                                        ; $6da4: $10
    sbc e                                         ; $6da5: $9b
    ld b, $8a                                     ; $6da6: $06 $8a
    inc b                                         ; $6da8: $04
    db $10                                        ; $6da9: $10
    sbc c                                         ; $6daa: $99
    ld b, $8b                                     ; $6dab: $06 $8b
    ld b, $80                                     ; $6dad: $06 $80
    inc b                                         ; $6daf: $04
    ld [$ab54], sp                                ; $6db0: $08 $54 $ab
    ld bc, $54ff                                  ; $6db3: $01 $ff $54

jr_09e_6db6:
    xor e                                         ; $6db6: $ab
    xor e                                         ; $6db7: $ab
    ld [de], a                                    ; $6db8: $12
    ld d, l                                       ; $6db9: $55
    ld d, l                                       ; $6dba: $55
    xor e                                         ; $6dbb: $ab
    adc [hl]                                      ; $6dbc: $8e
    ld [$00ff], sp                                ; $6dbd: $08 $ff $00
    jr jr_09e_6dea                                ; $6dc0: $18 $28

    reti                                          ; $6dc2: $d9


    ld bc, $bb06                                  ; $6dc3: $01 $06 $bb
    inc b                                         ; $6dc6: $04
    ld d, a                                       ; $6dc7: $57
    xor b                                         ; $6dc8: $a8
    rst $38                                       ; $6dc9: $ff

jr_09e_6dca:
    nop                                           ; $6dca: $00
    xor b                                         ; $6dcb: $a8
    jr z, @-$78                                   ; $6dcc: $28 $86

    inc e                                         ; $6dce: $1c
    ld [$00fd], sp                                ; $6dcf: $08 $fd $00
    ret nc                                        ; $6dd2: $d0

jr_09e_6dd3:
    nop                                           ; $6dd3: $00
    jr @+$2a                                      ; $6dd4: $18 $28

    inc c                                         ; $6dd6: $0c
    ld [$200b], sp                                ; $6dd7: $08 $0b $20
    nop                                           ; $6dda: $00
    cp [hl]                                       ; $6ddb: $be
    ld a, [de]                                    ; $6ddc: $1a
    jr nz, jr_09e_6dd3                            ; $6ddd: $20 $f4

    nop                                           ; $6ddf: $00
    ld [bc], a                                    ; $6de0: $02
    nop                                           ; $6de1: $00
    cp a                                          ; $6de2: $bf
    nop                                           ; $6de3: $00
    nop                                           ; $6de4: $00
    db $f4                                        ; $6de5: $f4
    dec bc                                        ; $6de6: $0b
    add d                                         ; $6de7: $82
    ld a, a                                       ; $6de8: $7f
    sbc c                                         ; $6de9: $99

jr_09e_6dea:
    rst $20                                       ; $6dea: $e7
    inc [hl]                                      ; $6deb: $34
    nop                                           ; $6dec: $00
    jp $81ef                                      ; $6ded: $c3 $ef $81


    inc [hl]                                      ; $6df0: $34
    jp $81e7                                      ; $6df1: $c3 $e7 $81


    jr nz, jr_09e_6df6                            ; $6df4: $20 $00

jr_09e_6df6:
    jp $81e6                                      ; $6df6: $c3 $e6 $81


    ld [hl+], a                                   ; $6df9: $22
    pop bc                                        ; $6dfa: $c1
    and $f9                                       ; $6dfb: $e6 $f9
    call $f000                                    ; $6dfd: $cd $00 $f0
    ei                                            ; $6e00: $fb
    ldh [$cd], a                                  ; $6e01: $e0 $cd
    ldh a, [$f9]                                  ; $6e03: $f0 $f9
    ldh [$c8], a                                  ; $6e05: $e0 $c8
    add c                                         ; $6e07: $81
    inc b                                         ; $6e08: $04
    db $10                                        ; $6e09: $10
    ld a, a                                       ; $6e0a: $7f
    rst $38                                       ; $6e0b: $ff
    ccf                                           ; $6e0c: $3f
    rst $38                                       ; $6e0d: $ff
    rst $38                                       ; $6e0e: $ff
    ld a, a                                       ; $6e0f: $7f
    inc b                                         ; $6e10: $04
    jr jr_09e_6e1f                                ; $6e11: $18 $0c

    cp a                                          ; $6e13: $bf
    ld a, a                                       ; $6e14: $7f
    or l                                          ; $6e15: $b5
    ld a, a                                       ; $6e16: $7f
    inc h                                         ; $6e17: $24
    db $10                                        ; $6e18: $10
    inc b                                         ; $6e19: $04
    ld b, b                                       ; $6e1a: $40
    rst $38                                       ; $6e1b: $ff
    rst $38                                       ; $6e1c: $ff
    ld b, b                                       ; $6e1d: $40
    push de                                       ; $6e1e: $d5

jr_09e_6e1f:
    inc bc                                        ; $6e1f: $03
    ld [bc], a                                    ; $6e20: $02
    push de                                       ; $6e21: $d5
    rst $38                                       ; $6e22: $ff
    xor d                                         ; $6e23: $aa
    rst $38                                       ; $6e24: $ff
    add b                                         ; $6e25: $80
    rst $38                                       ; $6e26: $ff
    ld bc, $aad5                                  ; $6e27: $01 $d5 $aa
    add b                                         ; $6e2a: $80
    rst $38                                       ; $6e2b: $ff
    ld sp, hl                                     ; $6e2c: $f9
    ldh [rOBP0], a                                ; $6e2d: $e0 $48
    inc a                                         ; $6e2f: $3c
    nop                                           ; $6e30: $00
    and b                                         ; $6e31: $a0
    inc b                                         ; $6e32: $04
    jr jr_09e_6eae                                ; $6e33: $18 $79

    inc c                                         ; $6e35: $0c
    nop                                           ; $6e36: $00
    cp a                                          ; $6e37: $bf
    ld a, a                                       ; $6e38: $7f
    and h                                         ; $6e39: $a4
    ld a, a                                       ; $6e3a: $7f
    xor d                                         ; $6e3b: $aa
    ld h, $7f                                     ; $6e3c: $26 $7f
    and b                                         ; $6e3e: $a0
    ld [bc], a                                    ; $6e3f: $02
    nop                                           ; $6e40: $00
    or l                                          ; $6e41: $b5
    ld l, d                                       ; $6e42: $6a
    inc b                                         ; $6e43: $04
    ld [$2840], sp                                ; $6e44: $08 $40 $28
    ld [c], a                                     ; $6e47: $e2
    nop                                           ; $6e48: $00
    add c                                         ; $6e49: $81
    halt                                          ; $6e4a: $76
    add c                                         ; $6e4b: $81
    ld l, $c1                                     ; $6e4c: $2e $c1
    sub l                                         ; $6e4e: $95
    ld l, d                                       ; $6e4f: $6a
    ld d, l                                       ; $6e50: $55
    ld [$aaaa], sp                                ; $6e51: $08 $aa $aa
    push de                                       ; $6e54: $d5
    ld d, l                                       ; $6e55: $55
    dec a                                         ; $6e56: $3d
    ld [$7f80], sp                                ; $6e57: $08 $80 $7f
    add b                                         ; $6e5a: $80
    add h                                         ; $6e5b: $84
    ret nc                                        ; $6e5c: $d0

    ld [$e039], sp                                ; $6e5d: $08 $39 $e0
    ret z                                         ; $6e60: $c8

    ld [hl], b                                    ; $6e61: $70
    inc b                                         ; $6e62: $04
    ld [$60bd], sp                                ; $6e63: $08 $bd $60
    nop                                           ; $6e66: $00
    swap b                                        ; $6e67: $cb $30
    push hl                                       ; $6e69: $e5
    ld a, [de]                                    ; $6e6a: $1a
    rst $38                                       ; $6e6b: $ff
    nop                                           ; $6e6c: $00
    adc d                                         ; $6e6d: $8a
    ld [hl], l                                    ; $6e6e: $75
    ld [bc], a                                    ; $6e6f: $02
    or l                                          ; $6e70: $b5
    ld l, d                                       ; $6e71: $6a
    sbc a                                         ; $6e72: $9f
    ld h, b                                       ; $6e73: $60
    cp a                                          ; $6e74: $bf
    ld h, b                                       ; $6e75: $60
    inc b                                         ; $6e76: $04
    nop                                           ; $6e77: $00
    ld b, b                                       ; $6e78: $40
    add d                                         ; $6e79: $82
    ld [hl+], a                                   ; $6e7a: $22
    jr @+$01                                      ; $6e7b: $18 $ff

    nop                                           ; $6e7d: $00
    add sp, $00                                   ; $6e7e: $e8 $00
    dec b                                         ; $6e80: $05
    ld a, [$d000]                                 ; $6e81: $fa $00 $d0
    ld hl, $052f                                  ; $6e84: $21 $2f $05
    ld a, l                                       ; $6e87: $7d
    ld a, [bc]                                    ; $6e88: $0a
    nop                                           ; $6e89: $00
    push af                                       ; $6e8a: $f5
    nop                                           ; $6e8b: $00
    nop                                           ; $6e8c: $00
    ld [$1401], sp                                ; $6e8d: $08 $01 $14
    call nc, Call_000_022b                        ; $6e90: $d4 $2b $02
    adc e                                         ; $6e93: $8b
    ld [bc], a                                    ; $6e94: $02
    ld d, b                                       ; $6e95: $50
    stop                                          ; $6e96: $10 $00
    nop                                           ; $6e98: $00
    nop                                           ; $6e99: $00
    ld b, b                                       ; $6e9a: $40
    xor e                                         ; $6e9b: $ab
    jr jr_09e_6e9f                                ; $6e9c: $18 $01

    nop                                           ; $6e9e: $00

jr_09e_6e9f:
    rst $38                                       ; $6e9f: $ff
    cp a                                          ; $6ea0: $bf
    rst $38                                       ; $6ea1: $ff
    ld [$68ff], a                                 ; $6ea2: $ea $ff $68
    jr nz, jr_09e_6eb7                            ; $6ea5: $20 $10

    db $10                                        ; $6ea7: $10
    jr z, jr_09e_6eb3                             ; $6ea8: $28 $09

    nop                                           ; $6eaa: $00
    xor c                                         ; $6eab: $a9
    ld [bc], a                                    ; $6eac: $02
    sub b                                         ; $6ead: $90

jr_09e_6eae:
    rst $38                                       ; $6eae: $ff
    db $10                                        ; $6eaf: $10
    inc b                                         ; $6eb0: $04
    rst $38                                       ; $6eb1: $ff
    ld a, l                                       ; $6eb2: $7d

jr_09e_6eb3:
    jp $c37e                                      ; $6eb3: $c3 $7e $c3


    inc b                                         ; $6eb6: $04

jr_09e_6eb7:
    nop                                           ; $6eb7: $00
    pop bc                                        ; $6eb8: $c1
    ld a, a                                       ; $6eb9: $7f
    inc c                                         ; $6eba: $0c
    ret nz                                        ; $6ebb: $c0

jr_09e_6ebc:
    ld a, a                                       ; $6ebc: $7f
    ret nz                                        ; $6ebd: $c0

    ccf                                           ; $6ebe: $3f
    inc b                                         ; $6ebf: $04
    nop                                           ; $6ec0: $00
    db $e4                                        ; $6ec1: $e4
    add hl, bc                                    ; $6ec2: $09
    db $ec                                        ; $6ec3: $ec
    inc bc                                        ; $6ec4: $03
    dec bc                                        ; $6ec5: $0b

jr_09e_6ec6:
    ld e, l                                       ; $6ec6: $5d
    add d                                         ; $6ec7: $82
    dec hl                                        ; $6ec8: $2b
    call nc, Call_000_094e                        ; $6ec9: $d4 $4e $09
    db $fc                                        ; $6ecc: $fc
    jr c, jr_09e_6ee0                             ; $6ecd: $38 $11

    ld [$0008], sp                                ; $6ecf: $08 $08 $00
    pop af                                        ; $6ed2: $f1
    nop                                           ; $6ed3: $00
    rst $00                                       ; $6ed4: $c7
    nop                                           ; $6ed5: $00
    rra                                           ; $6ed6: $1f

jr_09e_6ed7:
    nop                                           ; $6ed7: $00
    ld a, h                                       ; $6ed8: $7c
    inc bc                                        ; $6ed9: $03
    add b                                         ; $6eda: $80
    or h                                          ; $6edb: $b4
    ld a, [bc]                                    ; $6edc: $0a
    db $db                                        ; $6edd: $db
    jr nc, jr_09e_6f37                            ; $6ede: $30 $57

jr_09e_6ee0:
    jr nc, jr_09e_6ebc                            ; $6ee0: $30 $da

    dec [hl]                                      ; $6ee2: $35
    ld c, a                                       ; $6ee3: $4f
    inc b                                         ; $6ee4: $04
    jr nc, jr_09e_6ec6                            ; $6ee5: $30 $df

    jr nc, jr_09e_6f38                            ; $6ee7: $30 $4f

    jr nc, jr_09e_6f1f                            ; $6ee9: $30 $34

    ld [$c03f], sp                                ; $6eeb: $08 $3f $c0
    nop                                           ; $6eee: $00
    ld a, [hl]                                    ; $6eef: $7e
    add b                                         ; $6ef0: $80
    db $fc                                        ; $6ef1: $fc
    nop                                           ; $6ef2: $00
    di                                            ; $6ef3: $f3
    nop                                           ; $6ef4: $00
    rst $20                                       ; $6ef5: $e7
    nop                                           ; $6ef6: $00
    jr z, jr_09e_6ed7                             ; $6ef7: $28 $de

    ld bc, $0828                                  ; $6ef9: $01 $28 $08
    sbc a                                         ; $6efc: $9f
    jr z, jr_09e_6eff                             ; $6efd: $28 $00

jr_09e_6eff:
    pop af                                        ; $6eff: $f1
    rrca                                          ; $6f00: $0f
    rst $00                                       ; $6f01: $c7
    inc b                                         ; $6f02: $04
    ccf                                           ; $6f03: $3f
    sbc l                                         ; $6f04: $9d
    ld a, a                                       ; $6f05: $7f
    ld sp, $08ff                                  ; $6f06: $31 $ff $08
    ld [$ff1d], sp                                ; $6f09: $08 $1d $ff
    nop                                           ; $6f0c: $00
    ld [hl], c                                    ; $6f0d: $71
    rst $38                                       ; $6f0e: $ff
    rst $10                                       ; $6f0f: $d7
    cp $1a                                        ; $6f10: $fe $1a
    db $fd                                        ; $6f12: $fd
    ld [hl], l                                    ; $6f13: $75
    xor $20                                       ; $6f14: $ee $20
    rst $28                                       ; $6f16: $ef
    push de                                       ; $6f17: $d5
    inc [hl]                                      ; $6f18: $34
    ld [$20de], sp                                ; $6f19: $08 $de $20
    cp l                                          ; $6f1c: $bd
    ld b, b                                       ; $6f1d: $40
    ei                                            ; $6f1e: $fb

jr_09e_6f1f:
    nop                                           ; $6f1f: $00
    nop                                           ; $6f20: $00

jr_09e_6f21:
    rst $30                                       ; $6f21: $f7
    nop                                           ; $6f22: $00
    xor $01                                       ; $6f23: $ee $01
    call c, $bc03                                 ; $6f25: $dc $03 $bc
    nop                                           ; $6f28: $00
    inc bc                                        ; $6f29: $03
    ld [hl], c                                    ; $6f2a: $71
    rrca                                          ; $6f2b: $0f
    rst $20                                       ; $6f2c: $e7
    rra                                           ; $6f2d: $1f
    call z, $993f                                 ; $6f2e: $cc $3f $99
    nop                                           ; $6f31: $00
    ld a, a                                       ; $6f32: $7f
    ld h, $ff                                     ; $6f33: $26 $ff
    ld c, l                                       ; $6f35: $4d
    ei                                            ; $6f36: $fb

jr_09e_6f37:
    db $db                                        ; $6f37: $db

jr_09e_6f38:
    push af                                       ; $6f38: $f5
    rst $20                                       ; $6f39: $e7
    nop                                           ; $6f3a: $00
    cp $9a                                        ; $6f3b: $fe $9a
    db $fd                                        ; $6f3d: $fd
    ccf                                           ; $6f3e: $3f
    add sp, -$11                                  ; $6f3f: $e8 $ef
    reti                                          ; $6f41: $d9


    ld e, d                                       ; $6f42: $5a
    nop                                           ; $6f43: $00
    xor a                                         ; $6f44: $af
    or [hl]                                       ; $6f45: $b6
    ld e, c                                       ; $6f46: $59
    cp $20                                        ; $6f47: $fe $20
    ld e, c                                       ; $6f49: $59
    ldh [$7e], a                                  ; $6f4a: $e0 $7e
    nop                                           ; $6f4c: $00
    rst $00                                       ; $6f4d: $c7
    or $59                                        ; $6f4e: $f6 $59
    sbc $60                                       ; $6f50: $de $60
    ld sp, hl                                     ; $6f52: $f9
    add b                                         ; $6f53: $80
    push hl                                       ; $6f54: $e5
    nop                                           ; $6f55: $00
    ld [bc], a                                    ; $6f56: $02
    add b                                         ; $6f57: $80
    rra                                           ; $6f58: $1f
    ld a, [hl]                                    ; $6f59: $7e
    ld bc, $8057                                  ; $6f5a: $01 $57 $80
    cp c                                          ; $6f5d: $b9
    nop                                           ; $6f5e: $00
    rlca                                          ; $6f5f: $07
    or d                                          ; $6f60: $b2
    rrca                                          ; $6f61: $0f
    ld h, [hl]                                    ; $6f62: $66
    rra                                           ; $6f63: $1f
    ld c, e                                       ; $6f64: $4b
    ccf                                           ; $6f65: $3f
    db $d3                                        ; $6f66: $d3
    nop                                           ; $6f67: $00
    ld a, $97                                     ; $6f68: $3e $97
    ld a, h                                       ; $6f6a: $7c
    xor a                                         ; $6f6b: $af
    ld a, h                                       ; $6f6c: $7c
    ccf                                           ; $6f6d: $3f
    push af                                       ; $6f6e: $f5
    ld [hl], a                                    ; $6f6f: $77
    nop                                           ; $6f70: $00
    ld sp, hl                                     ; $6f71: $f9
    ld a, a                                       ; $6f72: $7f
    sub $fb                                       ; $6f73: $d6 $fb
    sbc h                                         ; $6f75: $9c
    ld a, [$f994]                                 ; $6f76: $fa $94 $f9
    nop                                           ; $6f79: $00
    and b                                         ; $6f7a: $a0
    db $d3                                        ; $6f7b: $d3
    ldh [$c4], a                                  ; $6f7c: $e0 $c4
    and b                                         ; $6f7e: $a0
    ret                                           ; $6f7f: $c9


    db $10                                        ; $6f80: $10
    jp Jump_000_2000                              ; $6f81: $c3 $00 $20


    ret                                           ; $6f84: $c9


    rlca                                          ; $6f85: $07
    jr nc, @+$41                                  ; $6f86: $30 $3f

    rlca                                          ; $6f88: $07
    ld hl, sp-$09                                 ; $6f89: $f8 $f7
    nop                                           ; $6f8b: $00
    ld [$10ef], sp                                ; $6f8c: $08 $ef $10
    xor e                                         ; $6f8f: $ab
    db $10                                        ; $6f90: $10
    ld l, h                                       ; $6f91: $6c
    db $10                                        ; $6f92: $10
    rst $18                                       ; $6f93: $df
    nop                                           ; $6f94: $00
    jr nz, jr_09e_6f21                            ; $6f95: $20 $8a

    ld [hl], l                                    ; $6f97: $75
    ccf                                           ; $6f98: $3f
    rst $38                                       ; $6f99: $ff
    and b                                         ; $6f9a: $a0
    ld a, a                                       ; $6f9b: $7f
    rra                                           ; $6f9c: $1f
    add d                                         ; $6f9d: $82
    xor [hl]                                      ; $6f9e: $ae
    ld bc, $7f9a                                  ; $6f9f: $01 $9a $7f
    ld a, [$fd3d]                                 ; $6fa2: $fa $3d $fd
    ld l, $01                                     ; $6fa5: $2e $01
    ld b, a                                       ; $6fa7: $47
    nop                                           ; $6fa8: $00
    nop                                           ; $6fa9: $00
    ld a, $01                                     ; $6faa: $3e $01
    db $f4                                        ; $6fac: $f4
    dec bc                                        ; $6fad: $0b
    pop hl                                        ; $6fae: $e1
    rra                                           ; $6faf: $1f
    rrca                                          ; $6fb0: $0f
    db $10                                        ; $6fb1: $10
    rst $38                                       ; $6fb2: $ff
    ld a, b                                       ; $6fb3: $78
    rst $38                                       ; $6fb4: $ff
    inc b                                         ; $6fb5: $04
    ld a, [bc]                                    ; $6fb6: $0a
    add sp, $17                                   ; $6fb7: $e8 $17
    adc e                                         ; $6fb9: $8b
    ld a, a                                       ; $6fba: $7f
    nop                                           ; $6fbb: $00
    dec a                                         ; $6fbc: $3d
    rst $38                                       ; $6fbd: $ff
    ret nc                                        ; $6fbe: $d0

    rst $38                                       ; $6fbf: $ff
    inc de                                        ; $6fc0: $13
    rst $38                                       ; $6fc1: $ff
    ld l, $ff                                     ; $6fc2: $2e $ff
    add b                                         ; $6fc4: $80
    inc c                                         ; $6fc5: $0c
    ld [$ffbd], sp                                ; $6fc6: $08 $bd $ff
    call nc, Call_000_07ff                        ; $6fc9: $d4 $ff $07
    rst $38                                       ; $6fcc: $ff
    ld l, $02                                     ; $6fcd: $2e $02
    db $fd                                        ; $6fcf: $fd
    push de                                       ; $6fd0: $d5
    ld [$54ab], a                                 ; $6fd1: $ea $ab $54
    cp a                                          ; $6fd4: $bf
    inc c                                         ; $6fd5: $0c
    nop                                           ; $6fd6: $00
    inc b                                         ; $6fd7: $04
    nop                                           ; $6fd8: $00
    rst $38                                       ; $6fd9: $ff
    dec sp                                        ; $6fda: $3b
    rst $38                                       ; $6fdb: $ff
    push de                                       ; $6fdc: $d5
    ld [$55ea], a                                 ; $6fdd: $ea $ea $55
    ld e, a                                       ; $6fe0: $5f
    nop                                           ; $6fe1: $00
    ldh [$fe], a                                  ; $6fe2: $e0 $fe
    ld a, a                                       ; $6fe4: $7f
    ret                                           ; $6fe5: $c9


    rst $38                                       ; $6fe6: $ff
    dec bc                                        ; $6fe7: $0b
    rst $38                                       ; $6fe8: $ff
    ld [hl], l                                    ; $6fe9: $75
    nop                                           ; $6fea: $00
    ei                                            ; $6feb: $fb
    xor e                                         ; $6fec: $ab
    push af                                       ; $6fed: $f5
    ld a, a                                       ; $6fee: $7f
    and c                                         ; $6fef: $a1
    ld sp, hl                                     ; $6ff0: $f9
    ld l, $ff                                     ; $6ff1: $2e $ff
    nop                                           ; $6ff3: $00
    ld a, b                                       ; $6ff4: $78
    ld a, [$d788]                                 ; $6ff5: $fa $88 $d7
    ld [$52af], a                                 ; $6ff8: $ea $af $52
    ld a, a                                       ; $6ffb: $7f
    nop                                           ; $6ffc: $00
    add e                                         ; $6ffd: $83
    ei                                            ; $6ffe: $fb
    inc a                                         ; $6fff: $3c
    xor a                                         ; $7000: $af
    ret nc                                        ; $7001: $d0

    db $e4                                        ; $7002: $e4
    db $10                                        ; $7003: $10
    ld b, d                                       ; $7004: $42
    nop                                           ; $7005: $00
    nop                                           ; $7006: $00
    jr z, @+$41                                   ; $7007: $28 $3f

    ld a, h                                       ; $7009: $7c
    add e                                         ; $700a: $83
    push af                                       ; $700b: $f5
    ld a, $3d                                     ; $700c: $3e $3d
    nop                                           ; $700e: $00
    jp nz, Jump_000_00f4                          ; $700f: $c2 $f4 $00

    ld b, d                                       ; $7012: $42
    nop                                           ; $7013: $00
    dec d                                         ; $7014: $15
    nop                                           ; $7015: $00
    jp RST_00                                     ; $7016: $c3 $00 $00


    dec bc                                        ; $7019: $0b
    rst $38                                       ; $701a: $ff
    dec sp                                        ; $701b: $3b
    call nz, $04f9                                ; $701c: $c4 $f9 $04
    ld b, b                                       ; $701f: $40
    nop                                           ; $7020: $00
    nop                                           ; $7021: $00
    ccf                                           ; $7022: $3f
    nop                                           ; $7023: $00
    ld a, a                                       ; $7024: $7f
    add b                                         ; $7025: $80
    dec [hl]                                      ; $7026: $35
    add b                                         ; $7027: $80
    ld l, b                                       ; $7028: $68
    nop                                           ; $7029: $00
    add b                                         ; $702a: $80
    sbc [hl]                                      ; $702b: $9e
    ldh [$d0], a                                  ; $702c: $e0 $d0
    ld bc, $008f                                  ; $702e: $01 $8f $00
    ld a, a                                       ; $7031: $7f
    nop                                           ; $7032: $00
    nop                                           ; $7033: $00

jr_09e_7034:
    cp d                                          ; $7034: $ba
    nop                                           ; $7035: $00
    ld b, c                                       ; $7036: $41
    nop                                           ; $7037: $00
    or h                                          ; $7038: $b4
    rst $38                                       ; $7039: $ff
    rrca                                          ; $703a: $0f
    nop                                           ; $703b: $00
    ldh a, [$b7]                                  ; $703c: $f0 $b7
    ld b, b                                       ; $703e: $40
    rlca                                          ; $703f: $07
    ld hl, sp-$41                                 ; $7040: $f8 $bf
    ld b, b                                       ; $7042: $40
    pop bc                                        ; $7043: $c1
    ld [$9420], sp                                ; $7044: $08 $20 $94
    jr nz, jr_09e_70a3                            ; $7047: $20 $5a

    cp l                                          ; $7049: $bd
    ld [bc], a                                    ; $704a: $02
    ei                                            ; $704b: $fb
    inc b                                         ; $704c: $04
    ld [hl], $00                                  ; $704d: $36 $00
    ld [$31ce], sp                                ; $704f: $08 $ce $31
    rst $28                                       ; $7052: $ef
    db $10                                        ; $7053: $10
    db $eb                                        ; $7054: $eb
    db $10                                        ; $7055: $10
    ld e, l                                       ; $7056: $5d
    nop                                           ; $7057: $00
    jr nz, jr_09e_7034                            ; $7058: $20 $da

    jr nz, jr_09e_7073                            ; $705a: $20 $17

    rst $38                                       ; $705c: $ff
    ldh a, [rIF]                                  ; $705d: $f0 $0f
    db $fd                                        ; $705f: $fd
    nop                                           ; $7060: $00
    ld [bc], a                                    ; $7061: $02
    rla                                           ; $7062: $17
    rst $38                                       ; $7063: $ff
    ld hl, sp+$07                                 ; $7064: $f8 $07
    db $fd                                        ; $7066: $fd
    ld [bc], a                                    ; $7067: $02
    ld d, l                                       ; $7068: $55
    nop                                           ; $7069: $00
    ld [bc], a                                    ; $706a: $02
    dec bc                                        ; $706b: $0b
    ccf                                           ; $706c: $3f
    and d                                         ; $706d: $a2
    db $fd                                        ; $706e: $fd
    ld a, [hl]                                    ; $706f: $7e
    add c                                         ; $7070: $81
    ld sp, hl                                     ; $7071: $f9
    sbc b                                         ; $7072: $98

jr_09e_7073:
    ld [c], a                                     ; $7073: $e2
    ld [bc], a                                    ; $7074: $02
    ld e, d                                       ; $7075: $5a
    and l                                         ; $7076: $a5
    push hl                                       ; $7077: $e5
    ld bc, $0467                                  ; $7078: $01 $67 $04
    cp $ff                                        ; $707b: $fe $ff
    push af                                       ; $707d: $f5
    nop                                           ; $707e: $00
    cp $d4                                        ; $707f: $fe $d4
    cp e                                          ; $7081: $bb
    ei                                            ; $7082: $fb
    inc b                                         ; $7083: $04
    ld d, c                                       ; $7084: $51
    xor [hl]                                      ; $7085: $ae
    db $fc                                        ; $7086: $fc
    nop                                           ; $7087: $00
    rst $38                                       ; $7088: $ff
    dec b                                         ; $7089: $05
    cp $f8                                        ; $708a: $fe $f8
    rst $38                                       ; $708c: $ff
    db $fd                                        ; $708d: $fd
    cp $f9                                        ; $708e: $fe $f9
    nop                                           ; $7090: $00
    cp $bf                                        ; $7091: $fe $bf
    db $fc                                        ; $7093: $fc
    ld [bc], a                                    ; $7094: $02
    ld bc, $0196                                  ; $7095: $01 $96 $01
    dec b                                         ; $7098: $05
    nop                                           ; $7099: $00
    rst $38                                       ; $709a: $ff
    ret nz                                        ; $709b: $c0

    ccf                                           ; $709c: $3f
    ld e, a                                       ; $709d: $5f
    jr nz, @-$13                                  ; $709e: $20 $eb

    db $10                                        ; $70a0: $10
    inc h                                         ; $70a1: $24
    nop                                           ; $70a2: $00

jr_09e_70a3:
    db $10                                        ; $70a3: $10
    jp hl                                         ; $70a4: $e9


    db $10                                        ; $70a5: $10
    ld d, e                                       ; $70a6: $53
    nop                                           ; $70a7: $00
    xor c                                         ; $70a8: $a9
    rlca                                          ; $70a9: $07
    ld [hl], b                                    ; $70aa: $70
    ld b, b                                       ; $70ab: $40
    rst $38                                       ; $70ac: $ff
    db $10                                        ; $70ad: $10
    add hl, sp                                    ; $70ae: $39
    and h                                         ; $70af: $a4
    rst $38                                       ; $70b0: $ff
    dec b                                         ; $70b1: $05
    rst $38                                       ; $70b2: $ff
    rst $30                                       ; $70b3: $f7
    cp $00                                        ; $70b4: $fe $00
    xor d                                         ; $70b6: $aa
    push de                                       ; $70b7: $d5
    push de                                       ; $70b8: $d5
    xor d                                         ; $70b9: $aa
    cp a                                          ; $70ba: $bf
    pop bc                                        ; $70bb: $c1
    reti                                          ; $70bc: $d9


    cp $00                                        ; $70bd: $fe $00
    rst $30                                       ; $70bf: $f7
    ld [$ff00], sp                                ; $70c0: $08 $00 $ff
    xor $ff                                       ; $70c3: $ee $ff
    ld d, l                                       ; $70c5: $55

Call_09e_70c6:
    db $eb                                        ; $70c6: $eb
    nop                                           ; $70c7: $00
    db $eb                                        ; $70c8: $eb
    ld d, l                                       ; $70c9: $55
    ld e, a                                       ; $70ca: $5f
    pop hl                                        ; $70cb: $e1
    rst $38                                       ; $70cc: $ff
    rst $38                                       ; $70cd: $ff
    rst $30                                       ; $70ce: $f7
    ld [$f501], sp                                ; $70cf: $08 $01 $f5
    ld [$ff3d], sp                                ; $70d2: $08 $3d $ff
    db $eb                                        ; $70d5: $eb
    push de                                       ; $70d6: $d5
    ld d, l                                       ; $70d7: $55
    ld d, b                                       ; $70d8: $50
    inc bc                                        ; $70d9: $03
    ld bc, $3ffd                                  ; $70da: $01 $fd $3f
    or a                                          ; $70dd: $b7
    ret z                                         ; $70de: $c8

    rst $30                                       ; $70df: $f7
    ld [$2740], sp                                ; $70e0: $08 $40 $27
    ld [bc], a                                    ; $70e3: $02
    add b                                         ; $70e4: $80
    ld e, h                                       ; $70e5: $5c
    dec bc                                        ; $70e6: $0b
    xor e                                         ; $70e7: $ab
    ld d, l                                       ; $70e8: $55

Jump_09e_70e9:
    cp $ff                                        ; $70e9: $fe $ff
    rst $28                                       ; $70eb: $ef
    db $10                                        ; $70ec: $10
    rst $28                                       ; $70ed: $ef
    nop                                           ; $70ee: $00
    stop                                          ; $70ef: $10 $00
    nop                                           ; $70f1: $00
    ld [c], a                                     ; $70f2: $e2
    ld [$0100], sp                                ; $70f3: $08 $00 $01
    rra                                           ; $70f6: $1f
    nop                                           ; $70f7: $00
    ldh [$bf], a                                  ; $70f8: $e0 $bf
    ld b, b                                       ; $70fa: $40
    sub a                                         ; $70fb: $97
    ld b, b                                       ; $70fc: $40
    and d                                         ; $70fd: $a2
    ld b, b                                       ; $70fe: $40
    ld de, $4001                                  ; $70ff: $11 $01 $40
    or b                                          ; $7102: $b0
    ld c, a                                       ; $7103: $4f
    nop                                           ; $7104: $00
    nop                                           ; $7105: $00
    inc c                                         ; $7106: $0c
    di                                            ; $7107: $f3
    ld a, [de]                                    ; $7108: $1a
    ld [$e710], sp                                ; $7109: $08 $10 $e7
    db $10                                        ; $710c: $10
    xor d                                         ; $710d: $aa
    ld l, [hl]                                    ; $710e: $6e
    ld bc, $ff15                                  ; $710f: $01 $15 $ff
    dec h                                         ; $7112: $25
    nop                                           ; $7113: $00
    nop                                           ; $7114: $00
    dec l                                         ; $7115: $2d
    rst $38                                       ; $7116: $ff
    ldh [$1f], a                                  ; $7117: $e0 $1f
    ei                                            ; $7119: $fb
    inc b                                         ; $711a: $04
    ld a, [HeaderLogo]                            ; $711b: $fa $04 $01
    cp e                                          ; $711e: $bb
    inc b                                         ; $711f: $04
    ld e, d                                       ; $7120: $5a
    inc b                                         ; $7121: $04
    add sp, -$01                                  ; $7122: $e8 $ff
    ld [hl], l                                    ; $7124: $75
    xor h                                         ; $7125: $ac
    ld [$98a0], sp                                ; $7126: $08 $a0 $98
    inc bc                                        ; $7129: $03
    cp $10                                        ; $712a: $fe $10
    ld hl, $ffa8                                  ; $712c: $21 $a8 $ff
    ld a, [hl]                                    ; $712f: $7e
    add c                                         ; $7130: $81
    cp $00                                        ; $7131: $fe $00
    ld bc, $0255                                  ; $7133: $01 $55 $02
    adc l                                         ; $7136: $8d
    ld [c], a                                     ; $7137: $e2
    ldh [$1f], a                                  ; $7138: $e0 $1f
    cp $e0                                        ; $713a: $fe $e0
    ret nc                                        ; $713c: $d0

    ld bc, $181e                                  ; $713d: $01 $1e $18
    db $10                                        ; $7140: $10
    add hl, sp                                    ; $7141: $39
    ld l, c                                       ; $7142: $69
    add b                                         ; $7143: $80
    ld h, [hl]                                    ; $7144: $66
    ld hl, sp+$02                                 ; $7145: $f8 $02
    ld b, b                                       ; $7147: $40
    rst $38                                       ; $7148: $ff
    ld e, h                                       ; $7149: $5c
    inc c                                         ; $714a: $0c
    db $fd                                        ; $714b: $fd
    ld [bc], a                                    ; $714c: $02
    call nc, Call_000_0502                        ; $714d: $d4 $02 $05
    ld [bc], a                                    ; $7150: $02
    nop                                           ; $7151: $00
    ld a, [hl+]                                   ; $7152: $2a
    ld b, b                                       ; $7153: $40
    or a                                          ; $7154: $b7
    ld b, b                                       ; $7155: $40
    ldh [rIE], a                                  ; $7156: $e0 $ff
    ld e, $e1                                     ; $7158: $1e $e1
    nop                                           ; $715a: $00
    cp $01                                        ; $715b: $fe $01
    cp $01                                        ; $715d: $fe $01
    xor d                                         ; $715f: $aa
    ld bc, HeaderSGBFlag                          ; $7160: $01 $46 $01
    jr jr_09e_71ba                                ; $7163: $18 $55

    ld [$ce38], sp                                ; $7165: $08 $38 $ce
    nop                                           ; $7168: $00
    ld d, d                                       ; $7169: $52
    jr jr_09e_71cb                                ; $716a: $18 $5f

    nop                                           ; $716c: $00
    add b                                         ; $716d: $80
    nop                                           ; $716e: $00
    nop                                           ; $716f: $00
    xor d                                         ; $7170: $aa
    push de                                       ; $7171: $d5
    ret nz                                        ; $7172: $c0

    cp a                                          ; $7173: $bf
    cp a                                          ; $7174: $bf
    rst $38                                       ; $7175: $ff
    db $db                                        ; $7176: $db
    ld [$bebf], sp                                ; $7177: $08 $bf $be
    rst $38                                       ; $717a: $ff
    rst $18                                       ; $717b: $df
    inc b                                         ; $717c: $04
    nop                                           ; $717d: $00
    db $dd                                        ; $717e: $dd
    cp a                                          ; $717f: $bf
    ld d, [hl]                                    ; $7180: $56
    nop                                           ; $7181: $00
    rst $38                                       ; $7182: $ff
    ld l, [hl]                                    ; $7183: $6e
    push af                                       ; $7184: $f5
    cp [hl]                                       ; $7185: $be
    add sp, -$23                                  ; $7186: $e8 $dd
    ldh a, [$d7]                                  ; $7188: $f0 $d7
    nop                                           ; $718a: $00
    ld hl, sp-$53                                 ; $718b: $f8 $ad
    ldh a, [$b6]                                  ; $718d: $f0 $b6
    add sp, -$40                                  ; $718f: $e8 $c0
    rst $38                                       ; $7191: $ff
    sub l                                         ; $7192: $95
    db $10                                        ; $7193: $10
    ccf                                           ; $7194: $3f
    jr nc, @+$51                                  ; $7195: $30 $4f

    jr @+$0e                                      ; $7197: $18 $0c

    ld d, $01                                     ; $7199: $16 $01
    xor [hl]                                      ; $719b: $ae
    ld bc, $1700                                  ; $719c: $01 $00 $17
    rst $38                                       ; $719f: $ff
    ret c                                         ; $71a0: $d8

    daa                                           ; $71a1: $27
    add $f8                                       ; $71a2: $c6 $f8
    ld bc, $00ff                                  ; $71a4: $01 $ff $00
    ld a, h                                       ; $71a7: $7c
    add e                                         ; $71a8: $83
    ld a, a                                       ; $71a9: $7f
    add b                                         ; $71aa: $80
    rst $18                                       ; $71ab: $df
    nop                                           ; $71ac: $00
    adc d                                         ; $71ad: $8a
    nop                                           ; $71ae: $00
    nop                                           ; $71af: $00
    dec [hl]                                      ; $71b0: $35

jr_09e_71b1:
    ret nz                                        ; $71b1: $c0

    ld b, $ff                                     ; $71b2: $06 $ff
    db $dd                                        ; $71b4: $dd
    dec sp                                        ; $71b5: $3b
    cp e                                          ; $71b6: $bb
    ld [hl], a                                    ; $71b7: $77
    ld b, b                                       ; $71b8: $40
    rla                                           ; $71b9: $17

jr_09e_71ba:
    jp z, $1f03                                   ; $71ba: $ca $03 $1f

    rst $38                                       ; $71bd: $ff
    cp [hl]                                       ; $71be: $be
    ld a, a                                       ; $71bf: $7f
    rra                                           ; $71c0: $1f
    cp $00                                        ; $71c1: $fe $00
    cp a                                          ; $71c3: $bf
    ld a, a                                       ; $71c4: $7f
    ld c, a                                       ; $71c5: $4f
    ldh a, [$9f]                                  ; $71c6: $f0 $9f
    ldh [$af], a                                  ; $71c8: $e0 $af
    ret nz                                        ; $71ca: $c0

jr_09e_71cb:
    nop                                           ; $71cb: $00
    add d                                         ; $71cc: $82
    ret nz                                        ; $71cd: $c0

    cpl                                           ; $71ce: $2f
    ret nz                                        ; $71cf: $c0

    ld d, b                                       ; $71d0: $50
    rst $38                                       ; $71d1: $ff
    scf                                           ; $71d2: $37
    ret z                                         ; $71d3: $c8

    nop                                           ; $71d4: $00
    push de                                       ; $71d5: $d5
    ld [$20df], sp                                ; $71d6: $08 $df $20
    rst $18                                       ; $71d9: $df
    jr nz, jr_09e_71b1                            ; $71da: $20 $d5

    jr nz, @+$06                                  ; $71dc: $20 $04

    ret nc                                        ; $71de: $d0

    jr nz, @+$1d                                  ; $71df: $20 $1b

    ldh [$03], a                                  ; $71e1: $e0 $03
    sub b                                         ; $71e3: $90
    ld bc, $04fb                                  ; $71e4: $01 $fb $04
    add b                                         ; $71e7: $80
    call c, Call_09e_7908                         ; $71e8: $dc $08 $79
    inc b                                         ; $71eb: $04
    xor d                                         ; $71ec: $aa
    inc b                                         ; $71ed: $04
    ret nc                                        ; $71ee: $d0

    rrca                                          ; $71ef: $0f
    ld d, b                                       ; $71f0: $50
    inc b                                         ; $71f1: $04
    rst $38                                       ; $71f2: $ff
    ld a, a                                       ; $71f3: $7f
    add b                                         ; $71f4: $80
    ld [c], a                                     ; $71f5: $e2
    nop                                           ; $71f6: $00
    ld e, b                                       ; $71f7: $58
    ld a, [bc]                                    ; $71f8: $0a
    rst $18                                       ; $71f9: $df
    ccf                                           ; $71fa: $3f
    ld [$7fbe], sp                                ; $71fb: $08 $be $7f
    rst $18                                       ; $71fe: $df
    ld a, $04                                     ; $71ff: $3e $04
    nop                                           ; $7201: $00
    ccf                                           ; $7202: $3f
    cp a                                          ; $7203: $bf
    ld a, a                                       ; $7204: $7f
    ld bc, $08b6                                  ; $7205: $01 $b6 $08
    ld l, b                                       ; $7208: $68
    rst $38                                       ; $7209: $ff
    inc bc                                        ; $720a: $03
    db $fc                                        ; $720b: $fc
    ld a, a                                       ; $720c: $7f
    cp [hl]                                       ; $720d: $be
    inc bc                                        ; $720e: $03
    ld b, b                                       ; $720f: $40
    ld e, a                                       ; $7210: $5f
    jp nz, Jump_09e_4a03                          ; $7211: $c2 $03 $4a

    add b                                         ; $7214: $80
    dec hl                                        ; $7215: $2b
    inc b                                         ; $7216: $04
    sbc e                                         ; $7217: $9b
    inc b                                         ; $7218: $04
    ld [$ffa3], sp                                ; $7219: $08 $a3 $ff
    ld [$48f7], sp                                ; $721c: $08 $f7 $48
    ld [$2052], sp                                ; $721f: $08 $52 $20
    ret c                                         ; $7222: $d8

    nop                                           ; $7223: $00
    jr nz, jr_09e_723b                            ; $7224: $20 $15

    nop                                           ; $7226: $00
    adc $3f                                       ; $7227: $ce $3f
    ret nz                                        ; $7229: $c0

    rst $38                                       ; $722a: $ff
    ld [hl], a                                    ; $722b: $77
    nop                                           ; $722c: $00
    adc b                                         ; $722d: $88
    rst $30                                       ; $722e: $f7
    ld [$08d7], sp                                ; $722f: $08 $d7 $08
    or l                                          ; $7232: $b5
    ld [$0016], sp                                ; $7233: $08 $16 $00
    ld [$7f9f], sp                                ; $7236: $08 $9f $7f
    cp a                                          ; $7239: $bf
    ld a, a                                       ; $723a: $7f

jr_09e_723b:
    sbc [hl]                                      ; $723b: $9e
    ld a, a                                       ; $723c: $7f
    cp l                                          ; $723d: $bd
    nop                                           ; $723e: $00
    ld a, a                                       ; $723f: $7f
    sbc $3d                                       ; $7240: $de $3d
    ld a, l                                       ; $7242: $7d
    cp e                                          ; $7243: $bb
    sbc e                                         ; $7244: $9b
    ld a, a                                       ; $7245: $7f
    ld a, a                                       ; $7246: $7f
    db $10                                        ; $7247: $10
    cp a                                          ; $7248: $bf
    ld h, l                                       ; $7249: $65
    add b                                         ; $724a: $80
    ld b, b                                       ; $724b: $40
    ld e, c                                       ; $724c: $59
    scf                                           ; $724d: $37
    ret z                                         ; $724e: $c8

    dec b                                         ; $724f: $05
    rst $38                                       ; $7250: $ff
    jr nc, @+$7a                                  ; $7251: $30 $78

    add a                                         ; $7253: $87
    ld d, b                                       ; $7254: $50
    ld [$1a40], sp                                ; $7255: $08 $40 $1a

jr_09e_7258:
    sbc [hl]                                      ; $7258: $9e
    ld a, a                                       ; $7259: $7f
    ld a, l                                       ; $725a: $7d
    cp [hl]                                       ; $725b: $be
    nop                                           ; $725c: $00
    sbc [hl]                                      ; $725d: $9e
    ld a, l                                       ; $725e: $7d
    ccf                                           ; $725f: $3f
    rst $38                                       ; $7260: $ff
    sbc a                                         ; $7261: $9f
    ld a, a                                       ; $7262: $7f
    cpl                                           ; $7263: $2f
    rst $38                                       ; $7264: $ff
    ld b, h                                       ; $7265: $44
    inc d                                         ; $7266: $14
    ld l, l                                       ; $7267: $6d

jr_09e_7268:
    ld b, $5f                                     ; $7268: $06 $5f
    xor [hl]                                      ; $726a: $ae
    cp $73                                        ; $726b: $fe $73
    ld d, $fd                                     ; $726d: $16 $fd
    ei                                            ; $726f: $fb
    nop                                           ; $7270: $00
    ei                                            ; $7271: $fb
    cp $ba                                        ; $7272: $fe $ba
    db $fd                                        ; $7274: $fd
    push af                                       ; $7275: $f5
    ei                                            ; $7276: $fb
    dec sp                                        ; $7277: $3b
    db $fc                                        ; $7278: $fc
    ld hl, $7efd                                  ; $7279: $21 $fd $7e
    inc c                                         ; $727c: $0c
    ld a, [bc]                                    ; $727d: $0a
    cp b                                          ; $727e: $b8
    rst $38                                       ; $727f: $ff
    ld a, l                                       ; $7280: $7d
    cp [hl]                                       ; $7281: $be
    inc d                                         ; $7282: $14
    ld a, [bc]                                    ; $7283: $0a
    ld [$ff15], sp                                ; $7284: $08 $15 $ff
    jr nc, jr_09e_7258                            ; $7287: $30 $cf

    nop                                           ; $7289: $00
    ld c, c                                       ; $728a: $49
    di                                            ; $728b: $f3
    rst $38                                       ; $728c: $ff
    db $fd                                        ; $728d: $fd
    add b                                         ; $728e: $80
    ld [bc], a                                    ; $728f: $02
    nop                                           ; $7290: $00
    ld [hl], e                                    ; $7291: $73
    db $fd                                        ; $7292: $fd
    ld [hl], l                                    ; $7293: $75
    ld a, [$fdde]                                 ; $7294: $fa $de $fd
    db $fd                                        ; $7297: $fd
    ret nz                                        ; $7298: $c0

    xor l                                         ; $7299: $ad
    ld b, $38                                     ; $729a: $06 $38
    ld a, [bc]                                    ; $729c: $0a
    ei                                            ; $729d: $fb
    db $fc                                        ; $729e: $fc
    cp l                                          ; $729f: $bd
    ld a, [hl]                                    ; $72a0: $7e
    ld a, e                                       ; $72a1: $7b
    db $fc                                        ; $72a2: $fc
    and b                                         ; $72a3: $a0
    ld [$fd08], sp                                ; $72a4: $08 $08 $fd
    ld c, l                                       ; $72a7: $4d
    jr @+$01                                      ; $72a8: $18 $ff

    ld l, c                                       ; $72aa: $69
    rst $30                                       ; $72ab: $f7
    sub $69                                       ; $72ac: $d6 $69
    ld b, b                                       ; $72ae: $40
    dec a                                         ; $72af: $3d
    rlc [hl]                                      ; $72b0: $cb $06
    cp [hl]                                       ; $72b2: $be

jr_09e_72b3:
    rst $38                                       ; $72b3: $ff
    ld sp, hl                                     ; $72b4: $f9
    cp $fd                                        ; $72b5: $fe $fd

jr_09e_72b7:
    cp $00                                        ; $72b7: $fe $00
    cp c                                          ; $72b9: $b9
    cp $7d                                        ; $72ba: $fe $7d
    cp [hl]                                       ; $72bc: $be
    cp e                                          ; $72bd: $bb
    db $fc                                        ; $72be: $fc
    cp $fd                                        ; $72bf: $fe $fd
    nop                                           ; $72c1: $00
    ld sp, hl                                     ; $72c2: $f9
    cp $fe                                        ; $72c3: $fe $fe
    db $fd                                        ; $72c5: $fd
    xor l                                         ; $72c6: $ad
    ld a, [hl]                                    ; $72c7: $7e
    ld e, e                                       ; $72c8: $5b
    xor l                                         ; $72c9: $ad
    jr nz, jr_09e_72b3                            ; $72ca: $20 $e7

    ei                                            ; $72cc: $fb
    and $1e                                       ; $72cd: $e6 $1e
    and l                                         ; $72cf: $a5
    ld e, d                                       ; $72d0: $5a
    rst $38                                       ; $72d1: $ff
    rst $38                                       ; $72d2: $ff
    ld a, c                                       ; $72d3: $79

jr_09e_72d4:
    jr z, jr_09e_72d4                             ; $72d4: $28 $fe

    ld a, $18                                     ; $72d6: $3e $18
    nop                                           ; $72d8: $00
    db $fc                                        ; $72d9: $fc
    jr z, jr_09e_72dc                             ; $72da: $28 $00

jr_09e_72dc:
    db $f4                                        ; $72dc: $f4
    rst $38                                       ; $72dd: $ff
    jr z, jr_09e_7268                             ; $72de: $28 $88

    db $fd                                        ; $72e0: $fd
    ld b, $ec                                     ; $72e1: $06 $ec
    inc bc                                        ; $72e3: $03
    ld e, d                                       ; $72e4: $5a
    ret c                                         ; $72e5: $d8

    ld [bc], a                                    ; $72e6: $02
    ld a, a                                       ; $72e7: $7f
    add b                                         ; $72e8: $80
    ld a, e                                       ; $72e9: $7b
    nop                                           ; $72ea: $00
    add b                                         ; $72eb: $80
    sub a                                         ; $72ec: $97
    ld b, b                                       ; $72ed: $40
    xor b                                         ; $72ee: $a8
    ld b, b                                       ; $72ef: $40
    and l                                         ; $72f0: $a5
    ld hl, sp+$6a                                 ; $72f1: $f8 $6a
    jr nc, @-$01                                  ; $72f3: $30 $fd

    nop                                           ; $72f5: $00
    ld e, b                                       ; $72f6: $58
    ld [bc], a                                    ; $72f7: $02
    ld [bc], a                                    ; $72f8: $02
    ld [$0855], sp                                ; $72f9: $08 $55 $08
    jr z, jr_09e_730e                             ; $72fc: $28 $10

    inc b                                         ; $72fe: $04
    ld l, l                                       ; $72ff: $6d
    db $10                                        ; $7300: $10
    db $eb                                        ; $7301: $eb
    nop                                           ; $7302: $00
    ld e, h                                       ; $7303: $5c
    ld [$bb12], a                                 ; $7304: $ea $12 $bb
    inc b                                         ; $7307: $04
    dec d                                         ; $7308: $15
    ld d, l                                       ; $7309: $55
    ld [$7e36], sp                                ; $730a: $08 $36 $7e
    ld [bc], a                                    ; $730d: $02

jr_09e_730e:
    cp e                                          ; $730e: $bb
    or h                                          ; $730f: $b4
    ld bc, $bcbb                                  ; $7310: $01 $bb $bc
    ld bc, $0480                                  ; $7313: $01 $80 $04
    jr jr_09e_72b7                                ; $7316: $18 $9f

    rst $38                                       ; $7318: $ff
    jr c, @-$37                                   ; $7319: $38 $c7

    db $fd                                        ; $731b: $fd
    ld [bc], a                                    ; $731c: $02
    ld a, l                                       ; $731d: $7d
    nop                                           ; $731e: $00
    ld [bc], a                                    ; $731f: $02
    jr z, jr_09e_7324                             ; $7320: $28 $02

    ld [hl], l                                    ; $7322: $75
    add d                                         ; $7323: $82

jr_09e_7324:
    add b                                         ; $7324: $80
    ld a, a                                       ; $7325: $7f
    cp a                                          ; $7326: $bf
    ld [$ad40], sp                                ; $7327: $08 $40 $ad
    ld b, b                                       ; $732a: $40
    rst $38                                       ; $732b: $ff
    dec bc                                        ; $732c: $0b
    dec c                                         ; $732d: $0d
    rst $38                                       ; $732e: $ff
    sub a                                         ; $732f: $97
    add sp, $00                                   ; $7330: $e8 $00
    add b                                         ; $7332: $80
    rst $38                                       ; $7333: $ff
    sub b                                         ; $7334: $90
    rst $28                                       ; $7335: $ef
    sub b                                         ; $7336: $90
    rst $28                                       ; $7337: $ef
    sub c                                         ; $7338: $91
    xor $e1                                       ; $7339: $ee $e1
    ld c, l                                       ; $733b: $4d
    ld [de], a                                    ; $733c: $12
    sub $0c                                       ; $733d: $d6 $0c
    db $ed                                        ; $733f: $ed
    dec b                                         ; $7340: $05
    ret nz                                        ; $7341: $c0

    ccf                                           ; $7342: $3f
    and b                                         ; $7343: $a0
    rra                                           ; $7344: $1f
    db $10                                        ; $7345: $10
    ld c, b                                       ; $7346: $48
    add d                                         ; $7347: $82
    push hl                                       ; $7348: $e5
    dec c                                         ; $7349: $0d
    or b                                          ; $734a: $b0
    ld b, b                                       ; $734b: $40
    xor e                                         ; $734c: $ab
    ldh a, [rSC]                                  ; $734d: $f0 $02
    inc [hl]                                      ; $734f: $34
    inc de                                        ; $7350: $13
    cp l                                          ; $7351: $bd
    ld bc, $6802                                  ; $7352: $01 $02 $68
    ld [bc], a                                    ; $7355: $02
    add l                                         ; $7356: $85
    ld [bc], a                                    ; $7357: $02
    sub c                                         ; $7358: $91
    xor $02                                       ; $7359: $ee $02

jr_09e_735b:
    jr c, jr_09e_735d                             ; $735b: $38 $00

jr_09e_735d:
    sub b                                         ; $735d: $90
    db $ed                                        ; $735e: $ed
    sub c                                         ; $735f: $91
    db $ed                                        ; $7360: $ed
    ldh [$1f], a                                  ; $7361: $e0 $1f
    and b                                         ; $7363: $a0
    ld e, a                                       ; $7364: $5f
    add h                                         ; $7365: $84
    inc b                                         ; $7366: $04
    jr z, @-$3e                                   ; $7367: $28 $c0

    cpl                                           ; $7369: $2f
    jr nz, jr_09e_735b                            ; $736a: $20 $ef

    jr c, jr_09e_7396                             ; $736c: $38 $28

    ld bc, $00fe                                  ; $736e: $01 $fe $00
    inc sp                                        ; $7371: $33
    call z, $817e                                 ; $7372: $cc $7e $81
    call $cbb3                                    ; $7375: $cd $b3 $cb
    ccf                                           ; $7378: $3f
    dec h                                         ; $7379: $25
    add b                                         ; $737a: $80
    rst $38                                       ; $737b: $ff
    ldh [rWY], a                                  ; $737c: $e0 $4a
    sub b                                         ; $737e: $90
    xor $78                                       ; $737f: $ee $78
    db $10                                        ; $7381: $10
    rst $28                                       ; $7382: $ef
    add h                                         ; $7383: $84
    jr jr_09e_7388                                ; $7384: $18 $02

    add b                                         ; $7386: $80
    rst $38                                       ; $7387: $ff

jr_09e_7388:
    ret nz                                        ; $7388: $c0

jr_09e_7389:
    rst $18                                       ; $7389: $df
    add b                                         ; $738a: $80
    cp a                                          ; $738b: $bf
    ld [bc], a                                    ; $738c: $02
    nop                                           ; $738d: $00
    sbc a                                         ; $738e: $9f
    jr nz, @-$7e                                  ; $738f: $20 $80

    cp a                                          ; $7391: $bf
    add h                                         ; $7392: $84
    jr jr_09e_73bf                                ; $7393: $18 $2a

    ld l, [hl]                                    ; $7395: $6e

jr_09e_7396:
    ld l, d                                       ; $7396: $6a
    ld a, e                                       ; $7397: $7b
    nop                                           ; $7398: $00
    jr nz, jr_09e_739b                            ; $7399: $20 $00

jr_09e_739b:
    ld a, a                                       ; $739b: $7f
    sub h                                         ; $739c: $94
    jr nc, jr_09e_735b                            ; $739d: $30 $bc

    rst $38                                       ; $739f: $ff
    ld a, [hl]                                    ; $73a0: $7e
    sub l                                         ; $73a1: $95
    cp $00                                        ; $73a2: $fe $00
    dec d                                         ; $73a4: $15
    ld e, l                                       ; $73a5: $5d
    ld d, $95                                     ; $73a6: $16 $95
    or $fc                                        ; $73a8: $f6 $fc
    rla                                           ; $73aa: $17
    and $00                                       ; $73ab: $e6 $00
    daa                                           ; $73ad: $27
    ld a, a                                       ; $73ae: $7f
    and [hl]                                      ; $73af: $a6
    adc a                                         ; $73b0: $8f
    ldh a, [$bf]                                  ; $73b1: $f0 $bf
    ld b, b                                       ; $73b3: $40
    xor a                                         ; $73b4: $af
    jr nc, jr_09e_73f7                            ; $73b5: $30 $40

    ld [bc], a                                    ; $73b7: $02
    inc b                                         ; $73b8: $04
    nop                                           ; $73b9: $00
    ld d, b                                       ; $73ba: $50
    ld a, [de]                                    ; $73bb: $1a
    ld d, [hl]                                    ; $73bc: $56
    rst $38                                       ; $73bd: $ff
    db $eb                                        ; $73be: $eb

jr_09e_73bf:
    ld a, [hl]                                    ; $73bf: $7e
    jr nz, @+$01                                  ; $73c0: $20 $ff

    ld a, [hl]                                    ; $73c2: $7e
    nop                                           ; $73c3: $00
    inc a                                         ; $73c4: $3c
    ccf                                           ; $73c5: $3f
    ld hl, sp-$41                                 ; $73c6: $f8 $bf
    ld l, b                                       ; $73c8: $68
    ld sp, hl                                     ; $73c9: $f9
    nop                                           ; $73ca: $00
    jr z, jr_09e_7389                             ; $73cb: $28 $bc

    jr z, jr_09e_7439                             ; $73cd: $28 $6a

    rst $28                                       ; $73cf: $ef
    jr c, @-$0f                                   ; $73d0: $38 $ef

    rst $08                                       ; $73d2: $cf
    ld a, [bc]                                    ; $73d3: $0a
    ld c, h                                       ; $73d4: $4c
    ld a, [hl]                                    ; $73d5: $7e
    ld c, h                                       ; $73d6: $4c
    ld a, [hl+]                                   ; $73d7: $2a
    jp nz, $5b05                                  ; $73d8: $c2 $05 $5b

    inc a                                         ; $73db: $3c
    inc b                                         ; $73dc: $04
    ld a, a                                       ; $73dd: $7f
    jr nc, jr_09e_73e0                            ; $73de: $30 $00

jr_09e_73e0:
    cpl                                           ; $73e0: $2f
    rst $08                                       ; $73e1: $cf
    ld b, $e4                                     ; $73e2: $06 $e4
    dec b                                         ; $73e4: $05
    ld a, a                                       ; $73e5: $7f
    push de                                       ; $73e6: $d5
    rst $38                                       ; $73e7: $ff
    add b                                         ; $73e8: $80
    ld b, b                                       ; $73e9: $40
    add b                                         ; $73ea: $80
    ld d, b                                       ; $73eb: $50
    ld b, $aa                                     ; $73ec: $06 $aa
    add b                                         ; $73ee: $80
    add b                                         ; $73ef: $80
    ld a, [hl+]                                   ; $73f0: $2a
    ld a, [hl+]                                   ; $73f1: $2a
    add b                                         ; $73f2: $80
    ld b, h                                       ; $73f3: $44
    add b                                         ; $73f4: $80
    jr nc, @+$11                                  ; $73f5: $30 $0f

jr_09e_73f7:
    nop                                           ; $73f7: $00
    nop                                           ; $73f8: $00
    ld d, l                                       ; $73f9: $55
    stop                                          ; $73fa: $10 $00
    nop                                           ; $73fc: $00
    nop                                           ; $73fd: $00
    adc a                                         ; $73fe: $8f
    inc b                                         ; $73ff: $04
    ld [$0000], sp                                ; $7400: $08 $00 $00
    add b                                         ; $7403: $80
    ld bc, $1e00                                  ; $7404: $01 $00 $1e
    ld [$0639], sp                                ; $7407: $08 $39 $06
    ld a, e                                       ; $740a: $7b
    ld b, $c5                                     ; $740b: $06 $c5
    ld [de], a                                    ; $740d: $12
    ld [$181a], sp                                ; $740e: $08 $1a $18
    xor d                                         ; $7411: $aa
    xor d                                         ; $7412: $aa
    ld d, l                                       ; $7413: $55
    ld e, e                                       ; $7414: $5b
    rrca                                          ; $7415: $0f
    rst $38                                       ; $7416: $ff
    ld d, d                                       ; $7417: $52
    ld b, $08                                     ; $7418: $06 $08
    ld d, l                                       ; $741a: $55
    ld d, l                                       ; $741b: $55
    xor d                                         ; $741c: $aa
    ld e, l                                       ; $741d: $5d
    add [hl]                                      ; $741e: $86
    ld de, $0000                                  ; $741f: $11 $00 $00
    ret z                                         ; $7422: $c8

    ld b, d                                       ; $7423: $42
    inc a                                         ; $7424: $3c
    ldh [$58], a                                  ; $7425: $e0 $58
    ld b, a                                       ; $7427: $47
    stop                                          ; $7428: $10 $00
    add b                                         ; $742a: $80
    or b                                          ; $742b: $b0
    ld c, e                                       ; $742c: $4b
    xor c                                         ; $742d: $a9
    ld a, [hl+]                                   ; $742e: $2a
    ld d, a                                       ; $742f: $57
    inc bc                                        ; $7430: $03
    jr jr_09e_7435                                ; $7431: $18 $02

    db $db                                        ; $7433: $db
    inc e                                         ; $7434: $1c

jr_09e_7435:
    ld [bc], a                                    ; $7435: $02
    ld a, e                                       ; $7436: $7b
    jr nz, jr_09e_743b                            ; $7437: $20 $02

jr_09e_7439:
    cp e                                          ; $7439: $bb
    inc bc                                        ; $743a: $03

jr_09e_743b:
    db $fd                                        ; $743b: $fd
    call c, $9f23                                 ; $743c: $dc $23 $9f
    jr nz, @+$04                                  ; $743f: $20 $02

    ld [$c006], sp                                ; $7441: $08 $06 $c0
    dec hl                                        ; $7444: $2b
    nop                                           ; $7445: $00
    ld a, $c1                                     ; $7446: $3e $c1
    xor a                                         ; $7448: $af
    ld a, h                                       ; $7449: $7c
    cp h                                          ; $744a: $bc
    ld b, e                                       ; $744b: $43
    cpl                                           ; $744c: $2f
    nop                                           ; $744d: $00
    db $10                                        ; $744e: $10
    ld b, d                                       ; $744f: $42
    add b                                         ; $7450: $80
    inc [hl]                                      ; $7451: $34
    ret nc                                        ; $7452: $d0

    inc d                                         ; $7453: $14
    db $eb                                        ; $7454: $eb
    ld d, a                                       ; $7455: $57
    push af                                       ; $7456: $f5
    ld c, d                                       ; $7457: $4a
    nop                                           ; $7458: $00
    cp $c1                                        ; $7459: $fe $c1
    rst $18                                       ; $745b: $df
    inc a                                         ; $745c: $3c
    push af                                       ; $745d: $f5
    dec bc                                        ; $745e: $0b
    daa                                           ; $745f: $27
    ld [$0201], sp                                ; $7460: $08 $01 $02
    ld b, b                                       ; $7463: $40
    or b                                          ; $7464: $b0
    ld c, h                                       ; $7465: $4c
    dec bc                                        ; $7466: $0b
    add b                                         ; $7467: $80
    pop af                                        ; $7468: $f1
    db $ec                                        ; $7469: $ec
    inc bc                                        ; $746a: $03
    jp Jump_000_3ce0                              ; $746b: $c3 $e0 $3c


    add b                                         ; $746e: $80

Jump_09e_746f:
    dec a                                         ; $746f: $3d
    cp e                                          ; $7470: $bb
    ld a, a                                       ; $7471: $7f
    sbc [hl]                                      ; $7472: $9e
    ld a, c                                       ; $7473: $79
    ld c, c                                       ; $7474: $49
    dec b                                         ; $7475: $05
    ret nz                                        ; $7476: $c0

    inc [hl]                                      ; $7477: $34
    nop                                           ; $7478: $00
    rst $18                                       ; $7479: $df
    rst $38                                       ; $747a: $ff
    rst $38                                       ; $747b: $ff
    rra                                           ; $747c: $1f
    rst $18                                       ; $747d: $df
    rst $38                                       ; $747e: $ff
    ld a, [hl]                                    ; $747f: $7e
    db $e3                                        ; $7480: $e3
    nop                                           ; $7481: $00
    ld l, a                                       ; $7482: $6f
    sbc d                                         ; $7483: $9a
    ld a, e                                       ; $7484: $7b
    ld b, $9f                                     ; $7485: $06 $9f
    ld bc, $e047                                  ; $7487: $01 $47 $e0
    inc e                                         ; $748a: $1c
    ld bc, $faf8                                  ; $748b: $01 $f8 $fa
    nop                                           ; $748e: $00
    dec b                                         ; $748f: $05
    ret nc                                        ; $7490: $d0

    ld e, h                                       ; $7491: $5c
    add hl, bc                                    ; $7492: $09
    inc b                                         ; $7493: $04
    inc b                                         ; $7494: $04
    sub e                                         ; $7495: $93
    stop                                          ; $7496: $10 $00
    inc b                                         ; $7498: $04
    db $fc                                        ; $7499: $fc
    ret nc                                        ; $749a: $d0

    inc a                                         ; $749b: $3c
    xor $9f                                       ; $749c: $ee $9f
    cp $6b                                        ; $749e: $fe $6b
    nop                                           ; $74a0: $00
    rst $18                                       ; $74a1: $df
    add hl, sp                                    ; $74a2: $39
    ld e, a                                       ; $74a3: $5f
    add hl, hl                                    ; $74a4: $29
    sbc a                                         ; $74a5: $9f
    dec b                                         ; $74a6: $05
    db $eb                                        ; $74a7: $eb
    rlca                                          ; $74a8: $07
    ld [$15a3], sp                                ; $74a9: $08 $a3 $15
    ld l, e                                       ; $74ac: $6b
    stop                                          ; $74ad: $10 $00
    ld e, d                                       ; $74af: $5a
    rrca                                          ; $74b0: $0f
    ld hl, sp-$01                                 ; $74b1: $f8 $ff
    jr nz, @+$01                                  ; $74b3: $20 $ff

    ld bc, $0002                                  ; $74b5: $01 $02 $00
    jp hl                                         ; $74b8: $e9


    rla                                           ; $74b9: $17
    ld bc, $09ff                                  ; $74ba: $01 $ff $09
    nop                                           ; $74bd: $00
    rst $30                                       ; $74be: $f7
    add hl, bc                                    ; $74bf: $09
    rst $30                                       ; $74c0: $f7
    ret                                           ; $74c1: $c9


    scf                                           ; $74c2: $37
    rlca                                          ; $74c3: $07
    ld hl, sp+$0f                                 ; $74c4: $f8 $0f
    ld b, b                                       ; $74c6: $40
    ld hl, sp+$04                                 ; $74c7: $f8 $04
    jr z, jr_09e_74cb                             ; $74c9: $28 $00

jr_09e_74cb:
    ldh a, [rIF]                                  ; $74cb: $f0 $0f
    rst $38                                       ; $74cd: $ff
    ret                                           ; $74ce: $c9


    scf                                           ; $74cf: $37
    ld b, b                                       ; $74d0: $40
    jp hl                                         ; $74d1: $e9


    ld [bc], a                                    ; $74d2: $02
    jr nc, jr_09e_74fe                            ; $74d3: $30 $29

    scf                                           ; $74d5: $37
    jp hl                                         ; $74d6: $e9


    rst $30                                       ; $74d7: $f7
    ld d, h                                       ; $74d8: $54
    halt                                          ; $74d9: $76
    ld sp, $de56                                  ; $74da: $31 $56 $de
    dec c                                         ; $74dd: $0d
    rrca                                          ; $74de: $0f
    ld d, h                                       ; $74df: $54
    ld a, [hl+]                                   ; $74e0: $2a
    add b                                         ; $74e1: $80
    ldh a, [$87]                                  ; $74e2: $f0 $87
    ld [hl], d                                    ; $74e4: $72
    ld [de], a                                    ; $74e5: $12
    ldh a, [$64]                                  ; $74e6: $f0 $64
    ld a, [hl+]                                   ; $74e8: $2a
    inc h                                         ; $74e9: $24
    ld [$084a], sp                                ; $74ea: $08 $4a $08
    ld d, h                                       ; $74ed: $54
    jr jr_09e_74f1                                ; $74ee: $18 $01

    rst $38                                       ; $74f0: $ff

jr_09e_74f1:
    rst $18                                       ; $74f1: $df
    dec sp                                        ; $74f2: $3b
    nop                                           ; $74f3: $00
    cp a                                          ; $74f4: $bf
    ld a, e                                       ; $74f5: $7b
    rra                                           ; $74f6: $1f
    ei                                            ; $74f7: $fb
    cp l                                          ; $74f8: $bd
    ld [hl], d                                    ; $74f9: $72
    rra                                           ; $74fa: $1f
    rst $30                                       ; $74fb: $f7
    ld [bc], a                                    ; $74fc: $02
    or a                                          ; $74fd: $b7

jr_09e_74fe:
    ld a, b                                       ; $74fe: $78
    rra                                           ; $74ff: $1f

Call_09e_7500:
    rst $30                                       ; $7500: $f7
    xor a                                         ; $7501: $af
    ld [hl], a                                    ; $7502: $77
    rst $00                                       ; $7503: $c7
    nop                                           ; $7504: $00
    db $db                                        ; $7505: $db
    nop                                           ; $7506: $00
    rst $38                                       ; $7507: $ff
    db $dd                                        ; $7508: $dd
    ld l, a                                       ; $7509: $6f
    sbc [hl]                                      ; $750a: $9e
    rst $38                                       ; $750b: $ff
    rst $28                                       ; $750c: $ef
    rst $38                                       ; $750d: $ff
    rrca                                          ; $750e: $0f
    ld [$eefd], sp                                ; $750f: $08 $fd $ee
    rst $28                                       ; $7512: $ef
    cp $18                                        ; $7513: $fe $18
    nop                                           ; $7515: $00
    ld a, a                                       ; $7516: $7f
    rst $18                                       ; $7517: $df
    scf                                           ; $7518: $37
    add b                                         ; $7519: $80
    inc d                                         ; $751a: $14
    inc c                                         ; $751b: $0c
    cp l                                          ; $751c: $bd
    ld a, a                                       ; $751d: $7f
    rst $18                                       ; $751e: $df
    jr c, @-$43                                   ; $751f: $38 $bb

    ld [hl], h                                    ; $7521: $74
    rst $28                                       ; $7522: $ef
    ld b, b                                       ; $7523: $40
    rst $38                                       ; $7524: $ff
    ld a, [de]                                    ; $7525: $1a
    nop                                           ; $7526: $00
    rst $28                                       ; $7527: $ef
    rst $38                                       ; $7528: $ff
    ei                                            ; $7529: $fb
    ei                                            ; $752a: $fb
    db $fd                                        ; $752b: $fd
    rst $38                                       ; $752c: $ff
    ld b, b                                       ; $752d: $40
    ld a, [$0004]                                 ; $752e: $fa $04 $00
    ld [hl], d                                    ; $7531: $72
    sbc a                                         ; $7532: $9f
    ld a, l                                       ; $7533: $7d
    cp a                                          ; $7534: $bf
    ld a, l                                       ; $7535: $7d
    sbc l                                         ; $7536: $9d
    nop                                           ; $7537: $00
    ld a, a                                       ; $7538: $7f
    cp a                                          ; $7539: $bf
    ld a, [hl]                                    ; $753a: $7e
    rst $18                                       ; $753b: $df
    ccf                                           ; $753c: $3f
    ld a, a                                       ; $753d: $7f
    cp a                                          ; $753e: $bf
    sbc a                                         ; $753f: $9f
    and b                                         ; $7540: $a0
    ldh a, [$03]                                  ; $7541: $f0 $03
    ei                                            ; $7543: $fb
    cp b                                          ; $7544: $b8
    dec b                                         ; $7545: $05
    rst $38                                       ; $7546: $ff
    ei                                            ; $7547: $fb
    rst $38                                       ; $7548: $ff
    rst $30                                       ; $7549: $f7
    rst $38                                       ; $754a: $ff
    ld bc, $ef77                                  ; $754b: $01 $77 $ef
    cp a                                          ; $754e: $bf
    db $fd                                        ; $754f: $fd
    rst $28                                       ; $7550: $ef
    rst $38                                       ; $7551: $ff
    db $ed                                        ; $7552: $ed
    inc d                                         ; $7553: $14
    ld [$9f20], sp                                ; $7554: $08 $20 $9f
    ld a, a                                       ; $7557: $7f
    ldh [$3b], a                                  ; $7558: $e0 $3b
    rst $38                                       ; $755a: $ff
    db $ed                                        ; $755b: $ed
    db $ed                                        ; $755c: $ed
    rst $18                                       ; $755d: $df
    cp a                                          ; $755e: $bf
    rlca                                          ; $755f: $07
    push af                                       ; $7560: $f5
    rst $38                                       ; $7561: $ff
    cp b                                          ; $7562: $b8
    db $db                                        ; $7563: $db
    db $e4                                        ; $7564: $e4
    ld [hl], b                                    ; $7565: $70
    dec de                                        ; $7566: $1b
    and h                                         ; $7567: $a4
    dec bc                                        ; $7568: $0b
    db $ec                                        ; $7569: $ec
    dec c                                         ; $756a: $0d
    nop                                           ; $756b: $00
    ld hl, sp+$7f                                 ; $756c: $f8 $7f
    ld a, l                                       ; $756e: $7d
    cp $f8                                        ; $756f: $fe $f8
    rra                                           ; $7571: $1f
    cp l                                          ; $7572: $bd
    ld a, [hl]                                    ; $7573: $7e
    ld [$f8c5], sp                                ; $7574: $08 $c5 $f8
    nop                                           ; $7577: $00
    cp $d0                                        ; $7578: $fe $d0
    ld c, h                                       ; $757a: $4c
    ld l, d                                       ; $757b: $6a
    rst $38                                       ; $757c: $ff
    halt                                          ; $757d: $76
    nop                                           ; $757e: $00
    xor a                                         ; $757f: $af
    ld a, l                                       ; $7580: $7d
    rla                                           ; $7581: $17
    dec sp                                        ; $7582: $3b
    adc a                                         ; $7583: $8f
    ld l, e                                       ; $7584: $6b
    sbc a                                         ; $7585: $9f
    sub l                                         ; $7586: $95
    ld bc, $ad4f                                  ; $7587: $01 $4f $ad
    ld d, a                                       ; $758a: $57
    and e                                         ; $758b: $a3
    rst $38                                       ; $758c: $ff
    ld hl, sp+$7f                                 ; $758d: $f8 $7f
    ret c                                         ; $758f: $d8

    inc de                                        ; $7590: $13
    inc b                                         ; $7591: $04
    cp [hl]                                       ; $7592: $be
    ei                                            ; $7593: $fb
    inc a                                         ; $7594: $3c
    cp l                                          ; $7595: $bd
    cp $04                                        ; $7596: $fe $04
    nop                                           ; $7598: $00
    sbc $3a                                       ; $7599: $de $3a
    nop                                           ; $759b: $00
    rst $00                                       ; $759c: $c7
    ld sp, hl                                     ; $759d: $f9
    rlca                                          ; $759e: $07
    ld a, l                                       ; $759f: $7d
    inc bc                                        ; $75a0: $03
    add hl, hl                                    ; $75a1: $29
    inc bc                                        ; $75a2: $03
    ld [hl], h                                    ; $75a3: $74
    nop                                           ; $75a4: $00
    add e                                         ; $75a5: $83
    add b                                         ; $75a6: $80
    ld a, a                                       ; $75a7: $7f
    cp [hl]                                       ; $75a8: $be
    ld b, c                                       ; $75a9: $41
    xor l                                         ; $75aa: $ad
    ld b, b                                       ; $75ab: $40
    ld sp, hl                                     ; $75ac: $f9
    nop                                           ; $75ad: $00
    cp [hl]                                       ; $75ae: $be
    db $fd                                        ; $75af: $fd
    ld a, [hl]                                    ; $75b0: $7e
    ld sp, hl                                     ; $75b1: $f9
    cp [hl]                                       ; $75b2: $be
    db $dd                                        ; $75b3: $dd
    cp $fb                                        ; $75b4: $fe $fb
    ld [bc], a                                    ; $75b6: $02
    call c, $edfe                                 ; $75b7: $dc $fe $ed
    ld sp, hl                                     ; $75ba: $f9
    ld l, [hl]                                    ; $75bb: $6e
    ld a, [hl]                                    ; $75bc: $7e
    inc b                                         ; $75bd: $04
    nop                                           ; $75be: $00
    cp $02                                        ; $75bf: $fe $02
    ld l, l                                       ; $75c1: $6d
    ld sp, hl                                     ; $75c2: $f9
    ld e, [hl]                                    ; $75c3: $5e
    db $fc                                        ; $75c4: $fc
    ccf                                           ; $75c5: $3f
    ld a, c                                       ; $75c6: $79
    ret nc                                        ; $75c7: $d0

    inc hl                                        ; $75c8: $23
    cp $00                                        ; $75c9: $fe $00
    cp $55                                        ; $75cb: $fe $55
    rst $38                                       ; $75cd: $ff
    ld bc, $5501                                  ; $75ce: $01 $01 $55
    rst $38                                       ; $75d1: $ff
    xor e                                         ; $75d2: $ab
    nop                                           ; $75d3: $00
    xor e                                         ; $75d4: $ab
    ld bc, $aa01                                  ; $75d5: $01 $01 $aa
    xor d                                         ; $75d8: $aa
    ld bc, $0001                                  ; $75d9: $01 $01 $00
    inc a                                         ; $75dc: $3c
    nop                                           ; $75dd: $00
    ld bc, $0001                                  ; $75de: $01 $01 $00
    ld c, $08                                     ; $75e1: $0e $08
    dec h                                         ; $75e3: $25
    ld b, $60                                     ; $75e4: $06 $60
    ld [bc], a                                    ; $75e6: $02
    or h                                          ; $75e7: $b4
    ld b, b                                       ; $75e8: $40
    inc d                                         ; $75e9: $14
    xor h                                         ; $75ea: $ac
    ld b, e                                       ; $75eb: $43
    ret nz                                        ; $75ec: $c0

    ld [hl-], a                                   ; $75ed: $32
    inc bc                                        ; $75ee: $03
    rst $38                                       ; $75ef: $ff
    ret nc                                        ; $75f0: $d0

    rlca                                          ; $75f1: $07
    cp d                                          ; $75f2: $ba
    nop                                           ; $75f3: $00
    ld a, [bc]                                    ; $75f4: $0a
    rrca                                          ; $75f5: $0f
    nop                                           ; $75f6: $00

jr_09e_75f7:
    ret nz                                        ; $75f7: $c0

    rst $38                                       ; $75f8: $ff
    db $10                                        ; $75f9: $10
    ld e, [hl]                                    ; $75fa: $5e
    xor d                                         ; $75fb: $aa
    ret nz                                        ; $75fc: $c0

    inc bc                                        ; $75fd: $03
    xor d                                         ; $75fe: $aa
    ld d, h                                       ; $75ff: $54
    push de                                       ; $7600: $d5
    call nz, $b50b                                ; $7601: $c4 $0b $b5
    jp z, $aa13                                   ; $7604: $ca $13 $aa

    add sp, $06                                   ; $7607: $e8 $06
    xor d                                         ; $7609: $aa
    ld d, l                                       ; $760a: $55
    ld b, [hl]                                    ; $760b: $46
    ld e, l                                       ; $760c: $5d
    xor $06                                       ; $760d: $ee $06
    ld b, b                                       ; $760f: $40
    rst $38                                       ; $7610: $ff
    inc l                                         ; $7611: $2c
    inc c                                         ; $7612: $0c
    ld [$1010], sp                                ; $7613: $08 $10 $10
    ld b, b                                       ; $7616: $40
    jr z, @+$01                                   ; $7617: $28 $ff

    dec c                                         ; $7619: $0d
    nop                                           ; $761a: $00
    rlca                                          ; $761b: $07
    ret nc                                        ; $761c: $d0

    sbc h                                         ; $761d: $9c
    ld b, $d4                                     ; $761e: $06 $d4
    rst $38                                       ; $7620: $ff
    add c                                         ; $7621: $81
    ld bc, $85ff                                  ; $7622: $01 $ff $85
    cp $cb                                        ; $7625: $fe $cb
    db $fc                                        ; $7627: $fc
    adc e                                         ; $7628: $8b
    db $ec                                        ; $7629: $ec
    ld [bc], a                                    ; $762a: $02
    ld [$ab10], sp                                ; $762b: $08 $10 $ab
    db $ec                                        ; $762e: $ec
    nop                                           ; $762f: $00
    ld e, c                                       ; $7630: $59
    ld bc, $38d7                                  ; $7631: $01 $d7 $38
    rst $30                                       ; $7634: $f7
    jr jr_09e_75f7                                ; $7635: $18 $c0

    inc b                                         ; $7637: $04

jr_09e_7638:
    jr z, jr_09e_7638                             ; $7638: $28 $fe

    dec bc                                        ; $763a: $0b
    ld d, h                                       ; $763b: $54
    rst $38                                       ; $763c: $ff
    and c                                         ; $763d: $a1
    ld a, a                                       ; $763e: $7f
    and c                                         ; $763f: $a1
    ld l, a                                       ; $7640: $6f
    add b                                         ; $7641: $80
    ld [bc], a                                    ; $7642: $02
    ld [$6fad], sp                                ; $7643: $08 $ad $6f
    set 5, h                                      ; $7646: $cb $ec
    adc d                                         ; $7648: $8a
    db $ed                                        ; $7649: $ed
    adc e                                         ; $764a: $8b
    nop                                           ; $764b: $00
    rst $28                                       ; $764c: $ef
    adc h                                         ; $764d: $8c
    db $ec                                        ; $764e: $ec
    add b                                         ; $764f: $80
    ldh [$a8], a                                  ; $7650: $e0 $a8
    rst $38                                       ; $7652: $ff
    add d                                         ; $7653: $82
    ld hl, $b4ff                                  ; $7654: $21 $ff $b4
    inc l                                         ; $7657: $2c
    nop                                           ; $7658: $00
    sub $ff                                       ; $7659: $d6 $ff
    add hl, sp                                    ; $765b: $39
    add hl, sp                                    ; $765c: $39
    ld b, $13                                     ; $765d: $06 $13
    add b                                         ; $765f: $80
    add $07                                       ; $7660: $c6 $07
    nop                                           ; $7662: $00
    rst $38                                       ; $7663: $ff
    and b                                         ; $7664: $a0
    ld l, a                                       ; $7665: $6f
    xor b                                         ; $7666: $a8
    ld l, a                                       ; $7667: $6f
    and d                                         ; $7668: $a2
    ld [bc], a                                    ; $7669: $02
    xor $60                                       ; $766a: $ee $60
    ld l, h                                       ; $766c: $6c
    ld [bc], a                                    ; $766d: $02
    ld c, $59                                     ; $766e: $0e $59
    ld h, d                                       ; $7670: $62
    rlca                                          ; $7671: $07
    ld d, d                                       ; $7672: $52
    jr nz, @+$01                                  ; $7673: $20 $ff

    xor e                                         ; $7675: $ab
    jr nz, jr_09e_767a                            ; $7676: $20 $02

    xor e                                         ; $7678: $ab
    ld d, l                                       ; $7679: $55

jr_09e_767a:
    ld bc, $d1ff                                  ; $767a: $01 $ff $d1
    add b                                         ; $767d: $80
    ld [hl], d                                    ; $767e: $72
    nop                                           ; $767f: $00
    sub l                                         ; $7680: $95
    rst $38                                       ; $7681: $ff
    dec [hl]                                      ; $7682: $35
    rst $28                                       ; $7683: $ef
    ld a, c                                       ; $7684: $79
    rst $08                                       ; $7685: $cf

jr_09e_7686:
    cp c                                          ; $7686: $b9
    nop                                           ; $7687: $00
    rst $08                                       ; $7688: $cf
    jp hl                                         ; $7689: $e9


    sbc a                                         ; $768a: $9f
    ld [hl], c                                    ; $768b: $71
    sbc a                                         ; $768c: $9f
    pop de                                        ; $768d: $d1
    ccf                                           ; $768e: $3f
    rst $20                                       ; $768f: $e7
    ld [$a13f], sp                                ; $7690: $08 $3f $a1
    ld a, a                                       ; $7693: $7f
    ld b, c                                       ; $7694: $41
    and [hl]                                      ; $7695: $a6
    nop                                           ; $7696: $00
    add c                                         ; $7697: $81
    rst $38                                       ; $7698: $ff
    and c                                         ; $7699: $a1
    ld [bc], a                                    ; $769a: $02
    cp a                                          ; $769b: $bf
    dec c                                         ; $769c: $0d
    rra                                           ; $769d: $1f
    ld hl, $c13f                                  ; $769e: $21 $3f $c1
    ld c, d                                       ; $76a1: $4a
    ld [bc], a                                    ; $76a2: $02
    dec bc                                        ; $76a3: $0b
    sbc b                                         ; $76a4: $98
    adc [hl]                                      ; $76a5: $8e
    nop                                           ; $76a6: $00
    add b                                         ; $76a7: $80
    rst $38                                       ; $76a8: $ff
    ld d, a                                       ; $76a9: $57
    inc bc                                        ; $76aa: $03
    ld [hl], b                                    ; $76ab: $70
    rlca                                          ; $76ac: $07
    ld a, a                                       ; $76ad: $7f
    ld a, a                                       ; $76ae: $7f
    ld c, $1e                                     ; $76af: $0e $1e
    jr c, jr_09e_76bb                             ; $76b1: $38 $08

    rst $38                                       ; $76b3: $ff
    cp d                                          ; $76b4: $ba
    ld [$1357], sp                                ; $76b5: $08 $57 $13
    add d                                         ; $76b8: $82
    rlca                                          ; $76b9: $07
    ld d, b                                       ; $76ba: $50

jr_09e_76bb:
    ld c, $01                                     ; $76bb: $0e $01
    ret nz                                        ; $76bd: $c0

    db $10                                        ; $76be: $10
    ld b, b                                       ; $76bf: $40
    ld d, b                                       ; $76c0: $50
    ld c, $8f                                     ; $76c1: $0e $8f
    ld hl, sp-$71                                 ; $76c3: $f8 $8f
    ld a, b                                       ; $76c5: $78
    adc a                                         ; $76c6: $8f
    ld a, b                                       ; $76c7: $78
    ld d, b                                       ; $76c8: $50
    ld a, [bc]                                    ; $76c9: $0a
    inc b                                         ; $76ca: $04
    nop                                           ; $76cb: $00
    ld c, b                                       ; $76cc: $48
    adc [hl]                                      ; $76cd: $8e
    ld [bc], a                                    ; $76ce: $02
    call $8038                                    ; $76cf: $cd $38 $80
    rst $38                                       ; $76d2: $ff
    nop                                           ; $76d3: $00
    ld [hl], l                                    ; $76d4: $75
    adc d                                         ; $76d5: $8a
    ld [hl+], a                                   ; $76d6: $22
    db $dd                                        ; $76d7: $dd
    ld a, a                                       ; $76d8: $7f
    add b                                         ; $76d9: $80
    ld c, l                                       ; $76da: $4d
    or d                                          ; $76db: $b2
    inc b                                         ; $76dc: $04
    ld a, a                                       ; $76dd: $7f
    add b                                         ; $76de: $80
    dec d                                         ; $76df: $15
    ld [$9e80], a                                 ; $76e0: $ea $80 $9e
    ld [bc], a                                    ; $76e3: $02
    ld c, [hl]                                    ; $76e4: $4e
    or c                                          ; $76e5: $b1
    nop                                           ; $76e6: $00
    ld a, [$ae05]                                 ; $76e7: $fa $05 $ae
    ld d, c                                       ; $76ea: $51
    ld b, h                                       ; $76eb: $44
    cp e                                          ; $76ec: $bb
    cp $01                                        ; $76ed: $fe $01
    db $10                                        ; $76ef: $10
    ld h, [hl]                                    ; $76f0: $66
    sbc c                                         ; $76f1: $99
    ld bc, $07c8                                  ; $76f2: $01 $c8 $07
    add c                                         ; $76f5: $81
    xor e                                         ; $76f6: $ab
    rst $38                                       ; $76f7: $ff
    rst $38                                       ; $76f8: $ff
    nop                                           ; $76f9: $00
    and e                                         ; $76fa: $a3
    and e                                         ; $76fb: $a3
    adc d                                         ; $76fc: $8a
    adc d                                         ; $76fd: $8a
    and d                                         ; $76fe: $a2
    and d                                         ; $76ff: $a2
    add b                                         ; $7700: $80
    add b                                         ; $7701: $80
    jr nc, jr_09e_7686                            ; $7702: $30 $82

    add d                                         ; $7704: $82
    stop                                          ; $7705: $10 $00
    add $03                                       ; $7707: $c6 $03
    ld b, l                                       ; $7709: $45
    ld b, l                                       ; $770a: $45
    ld de, $2c11                                  ; $770b: $11 $11 $2c
    ld b, l                                       ; $770e: $45
    ld b, l                                       ; $770f: $45
    ld l, d                                       ; $7710: $6a
    add hl, bc                                    ; $7711: $09
    and c                                         ; $7712: $a1
    ret nc                                        ; $7713: $d0

    ld [bc], a                                    ; $7714: $02
    ld [hl], b                                    ; $7715: $70

jr_09e_7716:
    jr nz, jr_09e_7716                            ; $7716: $20 $fe

    and h                                         ; $7718: $a4
    nop                                           ; $7719: $00
    ld e, h                                       ; $771a: $5c
    and l                                         ; $771b: $a5
    db $fc                                        ; $771c: $fc
    inc h                                         ; $771d: $24
    rst $18                                       ; $771e: $df
    push hl                                       ; $771f: $e5
    ld e, $65                                     ; $7720: $1e $65
    nop                                           ; $7722: $00
    ld e, $24                                     ; $7723: $1e $24
    ld e, $65                                     ; $7725: $1e $65
    sbc [hl]                                      ; $7727: $9e
    add h                                         ; $7728: $84
    ld a, a                                       ; $7729: $7f
    and a                                         ; $772a: $a7
    nop                                           ; $772b: $00
    ld e, h                                       ; $772c: $5c
    and l                                         ; $772d: $a5
    ld e, h                                       ; $772e: $5c
    call nc, $bfff                                ; $772f: $d4 $ff $bf
    rst $38                                       ; $7732: $ff
    cp a                                          ; $7733: $bf
    ld bc, $ffe0                                  ; $7734: $01 $e0 $ff
    ldh [$bf], a                                  ; $7737: $e0 $bf
    ldh [$b5], a                                  ; $7739: $e0 $b5
    ld [$0804], a                                 ; $773b: $ea $04 $08
    nop                                           ; $773e: $00
    ld [$e6ff], sp                                ; $773f: $08 $ff $e6
    rst $38                                       ; $7742: $ff
    ldh [$3f], a                                  ; $7743: $e0 $3f
    pop hl                                        ; $7745: $e1
    ccf                                           ; $7746: $3f
    dec b                                         ; $7747: $05
    db $f4                                        ; $7748: $f4
    ccf                                           ; $7749: $3f
    ld h, b                                       ; $774a: $60
    cp a                                          ; $774b: $bf
    db $fd                                        ; $774c: $fd
    inc b                                         ; $774d: $04
    nop                                           ; $774e: $00
    ld b, b                                       ; $774f: $40
    add b                                         ; $7750: $80
    rlca                                          ; $7751: $07
    dec b                                         ; $7752: $05
    sub h                                         ; $7753: $94
    rst $38                                       ; $7754: $ff
    ld hl, $09ff                                  ; $7755: $21 $ff $09
    jr @+$05                                      ; $7758: $18 $03

    ld b, c                                       ; $775a: $41
    ld h, [hl]                                    ; $775b: $66
    ld bc, $ea00                                  ; $775c: $01 $00 $ea
    push af                                       ; $775f: $f5
    and b                                         ; $7760: $a0
    rst $38                                       ; $7761: $ff
    add b                                         ; $7762: $80
    ret nz                                        ; $7763: $c0

    sbc a                                         ; $7764: $9f
    rst $18                                       ; $7765: $df
    jr nz, @-$7e                                  ; $7766: $20 $80

    ret nz                                        ; $7768: $c0

    jr nc, @+$1b                                  ; $7769: $30 $19

    and e                                         ; $776b: $a3
    ld a, a                                       ; $776c: $7f
    jr nz, @+$01                                  ; $776d: $20 $ff

    ld [$bf90], sp                                ; $776f: $08 $90 $bf
    ld bc, $1f05                                  ; $7772: $01 $05 $1f
    jr nc, jr_09e_7798                            ; $7775: $30 $21

    rst $38                                       ; $7777: $ff
    ld [$02ff], sp                                ; $7778: $08 $ff $02
    dec b                                         ; $777b: $05
    cp $50                                        ; $777c: $fe $50
    db $fc                                        ; $777e: $fc
    ld [bc], a                                    ; $777f: $02
    cp $30                                        ; $7780: $fe $30
    add hl, bc                                    ; $7782: $09
    jp nc, Jump_09e_4900                          ; $7783: $d2 $00 $49

    inc bc                                        ; $7786: $03
    rst $38                                       ; $7787: $ff
    ld c, a                                       ; $7788: $4f
    cp b                                          ; $7789: $b8
    ld c, d                                       ; $778a: $4a
    cp b                                          ; $778b: $b8
    ld e, [hl]                                    ; $778c: $5e
    nop                                           ; $778d: $00
    ld b, c                                       ; $778e: $41

jr_09e_778f:
    ret nc                                        ; $778f: $d0

    ld c, $60                                     ; $7790: $0e $60
    add hl, hl                                    ; $7792: $29
    db $10                                        ; $7793: $10
    ld b, c                                       ; $7794: $41
    ret nc                                        ; $7795: $d0

    ld c, $4d                                     ; $7796: $0e $4d

jr_09e_7798:
    cp b                                          ; $7798: $b8
    dec c                                         ; $7799: $0d
    rst $38                                       ; $779a: $ff
    ret z                                         ; $779b: $c8

    nop                                           ; $779c: $00
    ccf                                           ; $779d: $3f
    srl h                                         ; $779e: $cb $3c
    jp z, $8b3c                                   ; $77a0: $ca $3c $8b

    inc a                                         ; $77a3: $3c
    ld c, d                                       ; $77a4: $4a
    db $10                                        ; $77a5: $10
    inc a                                         ; $77a6: $3c
    ret z                                         ; $77a7: $c8

    rst $38                                       ; $77a8: $ff
    ret nz                                        ; $77a9: $c0

    ld c, b                                       ; $77aa: $48
    ld h, h                                       ; $77ab: $64
    ld e, $85                                     ; $77ac: $1e $85
    ld e, $00                                     ; $77ae: $1e $00
    rst $00                                       ; $77b0: $c7
    ccf                                           ; $77b1: $3f
    add h                                         ; $77b2: $84
    rst $38                                       ; $77b3: $ff
    rlca                                          ; $77b4: $07
    db $fc                                        ; $77b5: $fc
    and a                                         ; $77b6: $a7
    ld e, h                                       ; $77b7: $5c
    nop                                           ; $77b8: $00
    add a                                         ; $77b9: $87
    ld e, h                                       ; $77ba: $5c
    and [hl]                                      ; $77bb: $a6
    ld e, h                                       ; $77bc: $5c
    dec b                                         ; $77bd: $05
    ld e, h                                       ; $77be: $5c
    and h                                         ; $77bf: $a4

jr_09e_77c0:
    ld e, a                                       ; $77c0: $5f
    add b                                         ; $77c1: $80
    jr nz, jr_09e_781e                            ; $77c2: $20 $5a

    add c                                         ; $77c4: $81
    cp $df                                        ; $77c5: $fe $df
    ldh a, [$9e]                                  ; $77c7: $f0 $9e
    pop af                                        ; $77c9: $f1
    sbc l                                         ; $77ca: $9d
    jr jr_09e_77c0                                ; $77cb: $18 $f3

    sub $f9                                       ; $77cd: $d6 $f9
    ld c, b                                       ; $77cf: $48
    ld bc, $0002                                  ; $77d0: $01 $02 $00
    xor e                                         ; $77d3: $ab
    db $fc                                        ; $77d4: $fc
    add $07                                       ; $77d5: $c6 $07
    db $fd                                        ; $77d7: $fd
    add a                                         ; $77d8: $87
    db $fc                                        ; $77d9: $fc
    adc [hl]                                      ; $77da: $8e
    db $fd                                        ; $77db: $fd
    sub h                                         ; $77dc: $94
    dec bc                                        ; $77dd: $0b
    ldh [rNR24], a                                ; $77de: $e0 $19
    ld b, b                                       ; $77e0: $40
    ld c, d                                       ; $77e1: $4a
    nop                                           ; $77e2: $00
    inc a                                         ; $77e3: $3c
    rst $20                                       ; $77e4: $e7
    ld hl, sp+$07                                 ; $77e5: $f8 $07
    db $fc                                        ; $77e7: $fc
    inc bc                                        ; $77e8: $03
    xor $13                                       ; $77e9: $ee $13
    nop                                           ; $77eb: $00
    db $f4                                        ; $77ec: $f4
    dec hl                                        ; $77ed: $2b
    cp a                                          ; $77ee: $bf
    ld b, c                                       ; $77ef: $41
    cp $01                                        ; $77f0: $fe $01
    xor $11                                       ; $77f2: $ee $11
    nop                                           ; $77f4: $00
    xor e                                         ; $77f5: $ab
    ld d, h                                       ; $77f6: $54
    ld l, a                                       ; $77f7: $6f
    ldh a, [$f7]                                  ; $77f8: $f0 $f7
    ld [$0ff3], sp                                ; $77fa: $08 $f3 $0f
    ld e, d                                       ; $77fd: $5a
    ld a, h                                       ; $77fe: $7c
    inc [hl]                                      ; $77ff: $34
    ld b, $05                                     ; $7800: $06 $05
    push af                                       ; $7802: $f5
    rlca                                          ; $7803: $07
    ret nc                                        ; $7804: $d0

    jr jr_09e_778f                                ; $7805: $18 $88

    ret nc                                        ; $7807: $d0

    ld h, b                                       ; $7808: $60
    ret nz                                        ; $7809: $c0

    ld l, a                                       ; $780a: $6f
    cp a                                          ; $780b: $bf
    add $05                                       ; $780c: $c6 $05
    inc b                                         ; $780e: $04
    db $10                                        ; $780f: $10
    xor d                                         ; $7810: $aa
    ld a, [hl-]                                   ; $7811: $3a
    rla                                           ; $7812: $17
    sub b                                         ; $7813: $90
    ld a, [bc]                                    ; $7814: $0a
    ld a, $1e                                     ; $7815: $3e $1e
    db $10                                        ; $7817: $10
    ld [$e0f0], sp                                ; $7818: $08 $f0 $e0
    ld c, b                                       ; $781b: $48
    jr nc, jr_09e_782d                            ; $781c: $30 $0f

jr_09e_781e:
    ldh [rOBP0], a                                ; $781e: $e0 $48
    ld h, b                                       ; $7820: $60
    dec bc                                        ; $7821: $0b
    add b                                         ; $7822: $80
    rst $38                                       ; $7823: $ff
    sub d                                         ; $7824: $92
    db $ed                                        ; $7825: $ed
    nop                                           ; $7826: $00
    and a                                         ; $7827: $a7
    ret c                                         ; $7828: $d8

    ld a, [hl]                                    ; $7829: $7e
    add c                                         ; $782a: $81
    ld l, a                                       ; $782b: $6f
    sub b                                         ; $782c: $90

jr_09e_782d:
    ld a, a                                       ; $782d: $7f
    add b                                         ; $782e: $80
    nop                                           ; $782f: $00
    ld [hl], a                                    ; $7830: $77
    add b                                         ; $7831: $80
    ld l, a                                       ; $7832: $6f
    add b                                         ; $7833: $80
    and h                                         ; $7834: $a4
    rst $38                                       ; $7835: $ff
    ld [de], a                                    ; $7836: $12
    ld l, l                                       ; $7837: $6d
    nop                                           ; $7838: $00
    add h                                         ; $7839: $84
    ei                                            ; $783a: $fb
    ld h, [hl]                                    ; $783b: $66
    ld a, a                                       ; $783c: $7f
    adc d                                         ; $783d: $8a
    push af                                       ; $783e: $f5
    dec [hl]                                      ; $783f: $35
    ld a, a                                       ; $7840: $7f
    nop                                           ; $7841: $00
    add l                                         ; $7842: $85
    ld a, [$6f10]                                 ; $7843: $fa $10 $6f
    xor b                                         ; $7846: $a8
    rst $38                                       ; $7847: $ff
    ld [bc], a                                    ; $7848: $02
    rst $38                                       ; $7849: $ff
    nop                                           ; $784a: $00
    sub h                                         ; $784b: $94
    ld l, e                                       ; $784c: $6b
    call c, Call_09e_59ff                         ; $784d: $dc $ff $59
    and [hl]                                      ; $7850: $a6
    call Call_000_00ff                            ; $7851: $cd $ff $00
    ld a, [hl+]                                   ; $7854: $2a
    push de                                       ; $7855: $d5
    dec b                                         ; $7856: $05
    ld a, [$5ea1]                                 ; $7857: $fa $a1 $5e
    inc d                                         ; $785a: $14
    rst $38                                       ; $785b: $ff
    nop                                           ; $785c: $00
    ret                                           ; $785d: $c9


    ld [hl], $7d                                  ; $785e: $36 $7d
    rst $38                                       ; $7860: $ff

Call_09e_7861:
    ld a, [hl-]                                   ; $7861: $3a
    push bc                                       ; $7862: $c5
    ld l, b                                       ; $7863: $68
    rst $38                                       ; $7864: $ff
    nop                                           ; $7865: $00
    inc bc                                        ; $7866: $03
    rst $38                                       ; $7867: $ff
    add hl, de                                    ; $7868: $19
    and $d5                                       ; $7869: $e6 $d5
    nop                                           ; $786b: $00
    ld a, [bc]                                    ; $786c: $0a
    add b                                         ; $786d: $80
    ld bc, $00c5                                  ; $786e: $01 $c5 $00
    db $10                                        ; $7871: $10
    add b                                         ; $7872: $80
    xor b                                         ; $7873: $a8
    nop                                           ; $7874: $00
    add b                                         ; $7875: $80
    ld [bc], a                                    ; $7876: $02
    stop                                          ; $7877: $10 $00
    push de                                       ; $7879: $d5
    rst $38                                       ; $787a: $ff
    dec b                                         ; $787b: $05
    ld a, d                                       ; $787c: $7a
    db $dd                                        ; $787d: $dd
    rst $38                                       ; $787e: $ff
    nop                                           ; $787f: $00
    ld a, a                                       ; $7880: $7f
    nop                                           ; $7881: $00
    xor [hl]                                      ; $7882: $ae
    pop de                                        ; $7883: $d1

jr_09e_7884:
    inc [hl]                                      ; $7884: $34
    ld a, a                                       ; $7885: $7f
    add h                                         ; $7886: $84
    ei                                            ; $7887: $fb
    ld a, a                                       ; $7888: $7f
    ld a, a                                       ; $7889: $7f
    nop                                           ; $788a: $00
    sub a                                         ; $788b: $97
    rst $38                                       ; $788c: $ff
    and h                                         ; $788d: $a4
    ld e, e                                       ; $788e: $5b
    ld a, [de]                                    ; $788f: $1a
    rst $38                                       ; $7890: $ff
    jr z, @-$27                                   ; $7891: $28 $d7

    nop                                           ; $7893: $00
    add b                                         ; $7894: $80
    ld a, a                                       ; $7895: $7f
    ld c, c                                       ; $7896: $49
    rst $38                                       ; $7897: $ff
    ld d, [hl]                                    ; $7898: $56
    xor c                                         ; $7899: $a9
    rst $38                                       ; $789a: $ff
    rst $38                                       ; $789b: $ff
    nop                                           ; $789c: $00
    dec h                                         ; $789d: $25

jr_09e_789e:
    rst $38                                       ; $789e: $ff
    sub l                                         ; $789f: $95
    ld l, d                                       ; $78a0: $6a
    ld a, [bc]                                    ; $78a1: $0a
    push af                                       ; $78a2: $f5
    jr nz, jr_09e_7884                            ; $78a3: $20 $df

    ld e, b                                       ; $78a5: $58
    cp [hl]                                       ; $78a6: $be
    and d                                         ; $78a7: $a2
    ld b, $2a                                     ; $78a8: $06 $2a
    ldh [rTIMA], a                                ; $78aa: $e0 $05
    ld [hl], $18                                  ; $78ac: $36 $18
    adc c                                         ; $78ae: $89
    nop                                           ; $78af: $00
    jp nc, $0003                                  ; $78b0: $d2 $03 $00

    xor c                                         ; $78b3: $a9
    nop                                           ; $78b4: $00
    rst $18                                       ; $78b5: $df
    nop                                           ; $78b6: $00
    ld [hl], $10                                  ; $78b7: $36 $10
    ld b, $b2                                     ; $78b9: $06 $b2
    rra                                           ; $78bb: $1f
    ld b, d                                       ; $78bc: $42
    jp $0002                                      ; $78bd: $c3 $02 $00


    ret nz                                        ; $78c0: $c0

    db $fc                                        ; $78c1: $fc
    ret nz                                        ; $78c2: $c0

    db $fc                                        ; $78c3: $fc
    ret nz                                        ; $78c4: $c0

    rra                                           ; $78c5: $1f
    jr jr_09e_78e0                                ; $78c6: $18 $18

    rst $38                                       ; $78c8: $ff
    nop                                           ; $78c9: $00
    rst $20                                       ; $78ca: $e7
    ld [bc], a                                    ; $78cb: $02
    jr jr_09e_789e                                ; $78cc: $18 $d0

    rra                                           ; $78ce: $1f
    ld a, a                                       ; $78cf: $7f
    xor d                                         ; $78d0: $aa
    ld a, a                                       ; $78d1: $7f
    ld b, b                                       ; $78d2: $40
    push de                                       ; $78d3: $d5
    inc b                                         ; $78d4: $04
    nop                                           ; $78d5: $00
    add b                                         ; $78d6: $80
    ld a, a                                       ; $78d7: $7f
    xor d                                         ; $78d8: $aa
    rst $28                                       ; $78d9: $ef
    nop                                           ; $78da: $00
    ld a, a                                       ; $78db: $7f
    nop                                           ; $78dc: $00
    add b                                         ; $78dd: $80
    halt                                          ; $78de: $76
    adc c                                         ; $78df: $89

jr_09e_78e0:
    ld l, h                                       ; $78e0: $6c
    sub e                                         ; $78e1: $93
    ld d, d                                       ; $78e2: $52
    xor l                                         ; $78e3: $ad
    inc h                                         ; $78e4: $24
    inc e                                         ; $78e5: $1c
    db $db                                        ; $78e6: $db
    ld b, b                                       ; $78e7: $40
    cp a                                          ; $78e8: $bf
    ld c, $01                                     ; $78e9: $0e $01
    inc [hl]                                      ; $78eb: $34
    nop                                           ; $78ec: $00

jr_09e_78ed:
    jr c, @+$3a                                   ; $78ed: $38 $38

    pop bc                                        ; $78ef: $c1
    ld sp, hl                                     ; $78f0: $f9
    jp c, Jump_09e_5838                           ; $78f1: $da $38 $58

    or $02                                        ; $78f4: $f6 $02
    add b                                         ; $78f6: $80
    ld [bc], a                                    ; $78f7: $02
    jr jr_09e_78ed                                ; $78f8: $18 $f3

    ld [hl+], a                                   ; $78fa: $22
    ld a, [$0ba0]                                 ; $78fb: $fa $a0 $0b
    add b                                         ; $78fe: $80
    jr nz, @+$01                                  ; $78ff: $20 $ff

    jp c, $1796                                   ; $7901: $da $96 $17

    add d                                         ; $7904: $82
    rst $38                                       ; $7905: $ff
    xor c                                         ; $7906: $a9

jr_09e_7907:
    rst $38                                       ; $7907: $ff

Call_09e_7908:
    ret nz                                        ; $7908: $c0

    or c                                          ; $7909: $b1
    and b                                         ; $790a: $a0
    rlca                                          ; $790b: $07
    adc h                                         ; $790c: $8c
    and h                                         ; $790d: $a4
    rla                                           ; $790e: $17
    add b                                         ; $790f: $80
    dec de                                        ; $7910: $1b
    ld [$66ff], sp                                ; $7911: $08 $ff $66
    ld c, [hl]                                    ; $7914: $4e
    rrca                                          ; $7915: $0f
    ld [hl+], a                                   ; $7916: $22
    rst $38                                       ; $7917: $ff
    inc [hl]                                      ; $7918: $34
    and $07                                       ; $7919: $e6 $07
    sbc l                                         ; $791b: $9d
    rst $38                                       ; $791c: $ff
    jr nz, @-$0a                                  ; $791d: $20 $f4

    nop                                           ; $791f: $00
    nop                                           ; $7920: $00
    xor b                                         ; $7921: $a8
    cp d                                          ; $7922: $ba
    ld bc, $9040                                  ; $7923: $01 $40 $90
    ld sp, $d0a2                                  ; $7926: $31 $a2 $d0
    rlca                                          ; $7929: $07
    adc c                                         ; $792a: $89
    rst $38                                       ; $792b: $ff
    sub $b5                                       ; $792c: $d6 $b5
    or [hl]                                       ; $792e: $b6

Jump_09e_792f:
    ld [bc], a                                    ; $792f: $02
    cp $72                                        ; $7930: $fe $72
    jr nz, @+$04                                  ; $7932: $20 $02

    nop                                           ; $7934: $00
    ld hl, sp+$02                                 ; $7935: $f8 $02
    jr c, @-$37                                   ; $7937: $38 $c7

    add h                                         ; $7939: $84
    ld [$3940], sp                                ; $793a: $08 $40 $39
    ld [bc], a                                    ; $793d: $02
    jr c, jr_09e_7907                             ; $793e: $38 $c7

    push bc                                       ; $7940: $c5
    rst $00                                       ; $7941: $c7
    jp nz, $c007                                  ; $7942: $c2 $07 $c0

    ld a, a                                       ; $7945: $7f
    rlca                                          ; $7946: $07
    inc b                                         ; $7947: $04
    ld [$1002], sp                                ; $7948: $08 $02 $10
    or b                                          ; $794b: $b0
    ld e, b                                       ; $794c: $58
    and b                                         ; $794d: $a0
    ld [hl], b                                    ; $794e: $70
    pop af                                        ; $794f: $f1
    ld b, $a6                                     ; $7950: $06 $a6
    rla                                           ; $7952: $17
    db $e4                                        ; $7953: $e4
    ld hl, $c123                                  ; $7954: $21 $23 $c1
    cp a                                          ; $7957: $bf
    db $10                                        ; $7958: $10
    ld c, $83                                     ; $7959: $0e $83
    ld a, a                                       ; $795b: $7f
    ld bc, $017c                                  ; $795c: $01 $7c $01
    inc b                                         ; $795f: $04
    ld [$c100], sp                                ; $7960: $08 $00 $c1
    cp a                                          ; $7963: $bf
    dec hl                                        ; $7964: $2b
    call nc, $ffe3                                ; $7965: $d4 $e3 $ff
    ld d, $e9                                     ; $7968: $16 $e9
    nop                                           ; $796a: $00
    ld b, d                                       ; $796b: $42
    rst $38                                       ; $796c: $ff
    and l                                         ; $796d: $a5
    rst $38                                       ; $796e: $ff
    and b                                         ; $796f: $a0
    ld e, a                                       ; $7970: $5f
    xor e                                         ; $7971: $ab
    rst $38                                       ; $7972: $ff
    nop                                           ; $7973: $00
    ld hl, $46de                                  ; $7974: $21 $de $46
    cp c                                          ; $7977: $b9
    ld d, c                                       ; $7978: $51
    rst $38                                       ; $7979: $ff
    dec h                                         ; $797a: $25
    ld a, [$8d00]                                 ; $797b: $fa $00 $8d
    ld a, a                                       ; $797e: $7f
    ld c, d                                       ; $797f: $4a
    push af                                       ; $7980: $f5
    dec l                                         ; $7981: $2d
    rst $38                                       ; $7982: $ff
    ld b, c                                       ; $7983: $41
    cp $00                                        ; $7984: $fe $00
    ld e, d                                       ; $7986: $5a
    and l                                         ; $7987: $a5
    sub c                                         ; $7988: $91
    ld l, a                                       ; $7989: $6f
    or [hl]                                       ; $798a: $b6
    cp $81                                        ; $798b: $fe $81
    ld a, a                                       ; $798d: $7f
    nop                                           ; $798e: $00
    inc a                                         ; $798f: $3c
    cp $59                                        ; $7990: $fe $59
    and a                                         ; $7992: $a7
    ld c, h                                       ; $7993: $4c
    cp $41                                        ; $7994: $fe $41
    cp a                                          ; $7996: $bf
    db $10                                        ; $7997: $10
    adc b                                         ; $7998: $88
    halt                                          ; $7999: $76
    call Call_000_07e4                            ; $799a: $cd $e4 $07
    or l                                          ; $799d: $b5
    ld c, e                                       ; $799e: $4b
    nop                                           ; $799f: $00
    rst $38                                       ; $79a0: $ff
    ld [$ffa4], sp                                ; $79a1: $08 $a4 $ff
    ld c, b                                       ; $79a4: $48
    or a                                          ; $79a5: $b7
    or [hl]                                       ; $79a6: $b6
    ld c, $33                                     ; $79a7: $0e $33
    rst $38                                       ; $79a9: $ff
    xor c                                         ; $79aa: $a9
    add b                                         ; $79ab: $80
    sub a                                         ; $79ac: $97
    ld bc, $a25d                                  ; $79ad: $01 $5d $a2
    add b                                         ; $79b0: $80

jr_09e_79b1:
    ld a, a                                       ; $79b1: $7f
    xor a                                         ; $79b2: $af
    rst $38                                       ; $79b3: $ff
    sub b                                         ; $79b4: $90
    ld b, b                                       ; $79b5: $40
    ld l, a                                       ; $79b6: $6f
    ld l, [hl]                                    ; $79b7: $6e
    ld c, $28                                     ; $79b8: $0e $28
    cp $d7                                        ; $79ba: $fe $d7
    rst $38                                       ; $79bc: $ff
    ld d, b                                       ; $79bd: $50
    xor [hl]                                      ; $79be: $ae
    ld bc, $7f85                                  ; $79bf: $01 $85 $7f
    ld d, b                                       ; $79c2: $50
    cp $95                                        ; $79c3: $fe $95
    ld l, e                                       ; $79c5: $6b
    cp $d5                                        ; $79c6: $fe $d5
    jr jr_09e_79ca                                ; $79c8: $18 $00

jr_09e_79ca:
    rst $38                                       ; $79ca: $ff
    rst $38                                       ; $79cb: $ff
    cp a                                          ; $79cc: $bf
    jp $c37f                                      ; $79cd: $c3 $7f $c3


    cp a                                          ; $79d0: $bf
    ret nz                                        ; $79d1: $c0

    db $10                                        ; $79d2: $10
    inc a                                         ; $79d3: $3c
    ret nz                                        ; $79d4: $c0

    cp h                                          ; $79d5: $bc
    dec hl                                        ; $79d6: $2b
    inc e                                         ; $79d7: $1c
    rra                                           ; $79d8: $1f
    cp $1f                                        ; $79d9: $fe $1f
    db $fd                                        ; $79db: $fd
    ld [bc], a                                    ; $79dc: $02
    inc bc                                        ; $79dd: $03
    ld [c], a                                     ; $79de: $e2
    inc bc                                        ; $79df: $03
    ldh [$03], a                                  ; $79e0: $e0 $03

jr_09e_79e2:
    ld [c], a                                     ; $79e2: $e2
    jr nz, jr_09e_7a2d                            ; $79e3: $20 $48

    jp $3f77                                      ; $79e5: $c3 $77 $3f


    inc h                                         ; $79e8: $24
    db $10                                        ; $79e9: $10
    ld [bc], a                                    ; $79ea: $02
    db $10                                        ; $79eb: $10
    ld d, e                                       ; $79ec: $53
    inc h                                         ; $79ed: $24
    xor e                                         ; $79ee: $ab
    inc h                                         ; $79ef: $24
    nop                                           ; $79f0: $00
    ld [bc], a                                    ; $79f1: $02
    db $10                                        ; $79f2: $10
    ret c                                         ; $79f3: $d8

    ld sp, $3f72                                  ; $79f4: $31 $72 $3f
    ld [bc], a                                    ; $79f7: $02
    jr jr_09e_79e2                                ; $79f8: $18 $e8

    add hl, hl                                    ; $79fa: $29
    xor $0e                                       ; $79fb: $ee $0e
    ld de, $d2ee                                  ; $79fd: $11 $ee $d2

Call_09e_7a00:
    rrca                                          ; $7a00: $0f
    rst $28                                       ; $7a01: $ef
    ld [$df10], sp                                ; $7a02: $08 $10 $df

jr_09e_7a05:
    jr nz, jr_09e_7a05                            ; $7a05: $20 $fe

    ld hl, sp+$06                                 ; $7a07: $f8 $06
    ld a, [hl+]                                   ; $7a09: $2a
    push de                                       ; $7a0a: $d5
    ld e, a                                       ; $7a0b: $5f
    ld de, $f5a0                                  ; $7a0c: $11 $a0 $f5
    ld a, [bc]                                    ; $7a0f: $0a
    rlca                                          ; $7a10: $07
    rrca                                          ; $7a11: $0f
    rst $28                                       ; $7a12: $ef
    nop                                           ; $7a13: $00
    push af                                       ; $7a14: $f5
    ld [$0007], sp                                ; $7a15: $08 $07 $00
    ld [$54f7], sp                                ; $7a18: $08 $f7 $54

jr_09e_7a1b:
    xor e                                         ; $7a1b: $ab
    xor d                                         ; $7a1c: $aa
    ld d, l                                       ; $7a1d: $55
    rst $18                                       ; $7a1e: $df
    jr nz, jr_09e_79b1                            ; $7a1f: $20 $90

    ld d, l                                       ; $7a21: $55
    ld [bc], a                                    ; $7a22: $02
    nop                                           ; $7a23: $00
    cp e                                          ; $7a24: $bb
    xor l                                         ; $7a25: $ad
    inc c                                         ; $7a26: $0c
    xor e                                         ; $7a27: $ab
    cp $01                                        ; $7a28: $fe $01
    cp $d4                                        ; $7a2a: $fe $d4
    inc b                                         ; $7a2c: $04

jr_09e_7a2d:
    ld [$1002], sp                                ; $7a2d: $08 $02 $10
    sbc h                                         ; $7a30: $9c
    ld bc, $0000                                  ; $7a31: $01 $00 $00
    ld [bc], a                                    ; $7a34: $02
    ld b, b                                       ; $7a35: $40
    ld h, e                                       ; $7a36: $63
    ld a, a                                       ; $7a37: $7f
    dec c                                         ; $7a38: $0d
    ld h, e                                       ; $7a39: $63
    ld a, a                                       ; $7a3a: $7f
    ld b, e                                       ; $7a3b: $43
    rra                                           ; $7a3c: $1f
    ld [bc], a                                    ; $7a3d: $02
    jr c, jr_09e_7a1b                             ; $7a3e: $38 $db

    inc h                                         ; $7a40: $24
    xor d                                         ; $7a41: $aa
    push hl                                       ; $7a42: $e5
    inc b                                         ; $7a43: $04
    ret nz                                        ; $7a44: $c0

    xor e                                         ; $7a45: $ab
    dec d                                         ; $7a46: $15
    db $eb                                        ; $7a47: $eb
    inc h                                         ; $7a48: $24
    cp [hl]                                       ; $7a49: $be
    rst $38                                       ; $7a4a: $ff
    ld e, l                                       ; $7a4b: $5d
    db $e3                                        ; $7a4c: $e3
    and d                                         ; $7a4d: $a2
    db $e3                                        ; $7a4e: $e3
    rra                                           ; $7a4f: $1f
    nop                                           ; $7a50: $00
    db $e3                                        ; $7a51: $e3
    and d                                         ; $7a52: $a2
    ld l, a                                       ; $7a53: $6f
    rla                                           ; $7a54: $17
    ld [hl], e                                    ; $7a55: $73
    rla                                           ; $7a56: $17
    dec b                                         ; $7a57: $05
    dec e                                         ; $7a58: $1d
    inc d                                         ; $7a59: $14
    nop                                           ; $7a5a: $00
    ld [bc], a                                    ; $7a5b: $02
    db $10                                        ; $7a5c: $10
    add b                                         ; $7a5d: $80
    adc b                                         ; $7a5e: $88
    ld a, [hl+]                                   ; $7a5f: $2a
    cp a                                          ; $7a60: $bf
    nop                                           ; $7a61: $00
    or $00                                        ; $7a62: $f6 $00
    add hl, hl                                    ; $7a64: $29
    nop                                           ; $7a65: $00
    ld d, d                                       ; $7a66: $52
    and d                                         ; $7a67: $a2
    and d                                         ; $7a68: $a2
    ld [bc], a                                    ; $7a69: $02
    inc b                                         ; $7a6a: $04
    add l                                         ; $7a6b: $85
    dec d                                         ; $7a6c: $15
    ld c, d                                       ; $7a6d: $4a
    nop                                           ; $7a6e: $00
    sub c                                         ; $7a6f: $91
    ld a, [bc]                                    ; $7a70: $0a
    nop                                           ; $7a71: $00
    ld c, b                                       ; $7a72: $48
    pop bc                                        ; $7a73: $c1
    sub c                                         ; $7a74: $91
    dec d                                         ; $7a75: $15
    sub [hl]                                      ; $7a76: $96
    dec c                                         ; $7a77: $0d
    push af                                       ; $7a78: $f5
    nop                                           ; $7a79: $00
    ld l, b                                       ; $7a7a: $68
    nop                                           ; $7a7b: $00
    inc d                                         ; $7a7c: $14
    db $fc                                        ; $7a7d: $fc
    ld [bc], a                                    ; $7a7e: $02
    ld b, d                                       ; $7a7f: $42
    ld [$2012], sp                                ; $7a80: $08 $12 $20
    jp $e7ff                                      ; $7a83: $c3 $ff $e7


jr_09e_7a86:
    rst $18                                       ; $7a86: $df
    inc b                                         ; $7a87: $04
    ld c, b                                       ; $7a88: $48
    nop                                           ; $7a89: $00
    jr nz, jr_09e_7a8c                            ; $7a8a: $20 $00

jr_09e_7a8c:
    ld b, c                                       ; $7a8c: $41
    ld a, [de]                                    ; $7a8d: $1a
    inc bc                                        ; $7a8e: $03
    add hl, hl                                    ; $7a8f: $29
    nop                                           ; $7a90: $00
    rst $10                                       ; $7a91: $d7
    nop                                           ; $7a92: $00
    ei                                            ; $7a93: $fb
    ld [$7600], sp                                ; $7a94: $08 $00 $76
    nop                                           ; $7a97: $00
    db $fd                                        ; $7a98: $fd
    ld h, $03                                     ; $7a99: $26 $03
    stop                                          ; $7a9b: $10 $00
    ldh [$8e], a                                  ; $7a9d: $e0 $8e
    ld b, [hl]                                    ; $7a9f: $46
    nop                                           ; $7aa0: $00
    call nc, Call_09e_7a00                        ; $7aa1: $d4 $00 $7a
    ldh [rP1], a                                  ; $7aa4: $e0 $00
    add sp, $07                                   ; $7aa6: $e8 $07
    db $db                                        ; $7aa8: $db
    dec b                                         ; $7aa9: $05
    ld [de], a                                    ; $7aaa: $12
    nop                                           ; $7aab: $00
    nop                                           ; $7aac: $00
    inc h                                         ; $7aad: $24
    nop                                           ; $7aae: $00
    ld c, e                                       ; $7aaf: $4b
    nop                                           ; $7ab0: $00
    sbc a                                         ; $7ab1: $9f
    nop                                           ; $7ab2: $00
    ld e, l                                       ; $7ab3: $5d
    jr nc, jr_09e_7ab6                            ; $7ab4: $30 $00

jr_09e_7ab6:
    cp a                                          ; $7ab6: $bf
    inc b                                         ; $7ab7: $04
    inc bc                                        ; $7ab8: $03
    sbc h                                         ; $7ab9: $9c
    ld [bc], a                                    ; $7aba: $02
    nop                                           ; $7abb: $00
    ld d, a                                       ; $7abc: $57
    xor b                                         ; $7abd: $a8
    cp [hl]                                       ; $7abe: $be
    nop                                           ; $7abf: $00

jr_09e_7ac0:
    ld b, c                                       ; $7ac0: $41
    rla                                           ; $7ac1: $17
    add sp, $2a                                   ; $7ac2: $e8 $2a
    push de                                       ; $7ac4: $d5
    nop                                           ; $7ac5: $00
    rst $38                                       ; $7ac6: $ff
    rst $18                                       ; $7ac7: $df
    nop                                           ; $7ac8: $00
    jr nz, jr_09e_7ac0                            ; $7ac9: $20 $f5

    ld a, [bc]                                    ; $7acb: $0a
    xor b                                         ; $7acc: $a8
    ld d, a                                       ; $7acd: $57
    ld b, c                                       ; $7ace: $41
    cp [hl]                                       ; $7acf: $be
    sub b                                         ; $7ad0: $90
    nop                                           ; $7ad1: $00

jr_09e_7ad2:
    ld l, a                                       ; $7ad2: $6f
    ld bc, $00fe                                  ; $7ad3: $01 $fe $00
    rst $38                                       ; $7ad6: $ff
    ld d, b                                       ; $7ad7: $50
    rst $38                                       ; $7ad8: $ff
    rst $30                                       ; $7ad9: $f7
    nop                                           ; $7ada: $00
    ld [$14eb], sp                                ; $7adb: $08 $eb $14
    rst $10                                       ; $7ade: $d7
    jr z, jr_09e_7a86                             ; $7adf: $28 $a5

    ld e, d                                       ; $7ae1: $5a
    ld b, d                                       ; $7ae2: $42
    nop                                           ; $7ae3: $00
    cp l                                          ; $7ae4: $bd
    ld hl, $08de                                  ; $7ae5: $21 $de $08
    rst $38                                       ; $7ae8: $ff
    sub b                                         ; $7ae9: $90
    ld a, a                                       ; $7aea: $7f
    ld bc, $fe0a                                  ; $7aeb: $01 $0a $fe
    adc b                                         ; $7aee: $88
    rst $38                                       ; $7aef: $ff
    dec d                                         ; $7af0: $15
    ld b, $06                                     ; $7af1: $06 $06
    ld e, a                                       ; $7af3: $5f
    call nz, $2225                                ; $7af4: $c4 $25 $22
    add e                                         ; $7af7: $83
    jp nz, $a502                                  ; $7af8: $c2 $02 $a5

    rst $38                                       ; $7afb: $ff
    jp z, $97ff                                   ; $7afc: $ca $ff $97

    pop bc                                        ; $7aff: $c1
    rlca                                          ; $7b00: $07
    ld l, a                                       ; $7b01: $6f
    rrca                                          ; $7b02: $0f
    ld de, $ff08                                  ; $7b03: $11 $08 $ff
    or c                                          ; $7b06: $b1
    ld b, h                                       ; $7b07: $44
    rlca                                          ; $7b08: $07
    push af                                       ; $7b09: $f5
    rst $38                                       ; $7b0a: $ff
    xor $e4                                       ; $7b0b: $ee $e4
    dec h                                         ; $7b0d: $25
    inc c                                         ; $7b0e: $0c
    add e                                         ; $7b0f: $83
    rst $38                                       ; $7b10: $ff
    ld b, c                                       ; $7b11: $41

jr_09e_7b12:
    cp a                                          ; $7b12: $bf
    ld b, b                                       ; $7b13: $40
    ld a, [hl+]                                   ; $7b14: $2a
    xor c                                         ; $7b15: $a9
    dec b                                         ; $7b16: $05
    rst $38                                       ; $7b17: $ff
    rst $38                                       ; $7b18: $ff
    inc b                                         ; $7b19: $04
    cpl                                           ; $7b1a: $2f
    rst $38                                       ; $7b1b: $ff
    ld e, e                                       ; $7b1c: $5b
    rst $38                                       ; $7b1d: $ff
    ld l, $04                                     ; $7b1e: $2e $04
    nop                                           ; $7b20: $00
    cpl                                           ; $7b21: $2f
    rst $38                                       ; $7b22: $ff
    ld h, c                                       ; $7b23: $61
    ld e, d                                       ; $7b24: $5a
    inc c                                         ; $7b25: $0c
    ld [$4d20], sp                                ; $7b26: $08 $20 $4d
    srl h                                         ; $7b29: $cb $3c
    ld c, $38                                     ; $7b2b: $0e $38
    jr nz, jr_09e_7b7d                            ; $7b2d: $20 $4e

    ld [$0ff0], sp                                ; $7b2f: $08 $f0 $0f
    db $fd                                        ; $7b32: $fd
    ld [bc], a                                    ; $7b33: $02
    jr nz, @+$50                                  ; $7b34: $20 $4e

    ld a, [hl]                                    ; $7b36: $7e
    add c                                         ; $7b37: $81
    ld sp, hl                                     ; $7b38: $f9
    jr nz, jr_09e_7b3b                            ; $7b39: $20 $00

jr_09e_7b3b:
    ld c, l                                       ; $7b3b: $4d
    ld b, h                                       ; $7b3c: $44
    ld b, $0f                                     ; $7b3d: $06 $0f
    ld hl, sp-$31                                 ; $7b3f: $f8 $cf
    jr c, jr_09e_7b12                             ; $7b41: $38 $cf

    ld bc, $ce38                                  ; $7b43: $01 $38 $ce
    jr c, jr_09e_7b97                             ; $7b46: $38 $4f

    jr c, jr_09e_7ad2                             ; $7b48: $38 $88

    jr c, @-$1e                                   ; $7b4a: $38 $e0

    dec a                                         ; $7b4c: $3d
    nop                                           ; $7b4d: $00
    cp $ff                                        ; $7b4e: $fe $ff
    and $1d                                       ; $7b50: $e6 $1d
    ld b, a                                       ; $7b52: $47
    sbc h                                         ; $7b53: $9c
    ld h, l                                       ; $7b54: $65
    sbc h                                         ; $7b55: $9c
    nop                                           ; $7b56: $00
    ld h, [hl]                                    ; $7b57: $66
    db $fc                                        ; $7b58: $fc
    ld b, $ff                                     ; $7b59: $06 $ff
    db $e4                                        ; $7b5b: $e4
    rra                                           ; $7b5c: $1f
    and $1d                                       ; $7b5d: $e6 $1d
    inc bc                                        ; $7b5f: $03
    push hl                                       ; $7b60: $e5
    ld e, $c4                                     ; $7b61: $1e $c4
    ld e, $05                                     ; $7b63: $1e $05
    ld e, $70                                     ; $7b65: $1e $70
    ld c, l                                       ; $7b67: $4d
    ld d, b                                       ; $7b68: $50
    ld [$70c0], sp                                ; $7b69: $08 $c0 $70
    ld c, l                                       ; $7b6c: $4d
    ld d, b                                       ; $7b6d: $50
    ld [$0009], sp                                ; $7b6e: $08 $09 $00
    nop                                           ; $7b71: $00
    add c                                         ; $7b72: $81
    nop                                           ; $7b73: $00
    inc d                                         ; $7b74: $14
    db $ed                                        ; $7b75: $ed
    nop                                           ; $7b76: $00
    ld h, $11                                     ; $7b77: $26 $11
    nop                                           ; $7b79: $00
    dec c                                         ; $7b7a: $0d
    nop                                           ; $7b7b: $00
    ret c                                         ; $7b7c: $d8

jr_09e_7b7d:
    nop                                           ; $7b7d: $00
    ld de, $1100                                  ; $7b7e: $11 $00 $11
    nop                                           ; $7b81: $00
    rla                                           ; $7b82: $17
    ld bc, $0012                                  ; $7b83: $01 $12 $00
    ld d, $00                                     ; $7b86: $16 $00
    ld h, e                                       ; $7b88: $63
    ld [bc], a                                    ; $7b89: $02
    ld de, $1900                                  ; $7b8a: $11 $00 $19
    nop                                           ; $7b8d: $00
    ld a, a                                       ; $7b8e: $7f
    ld [bc], a                                    ; $7b8f: $02
    ld [de], a                                    ; $7b90: $12
    nop                                           ; $7b91: $00
    add hl, de                                    ; $7b92: $19
    nop                                           ; $7b93: $00
    jp z, Jump_000_1201                           ; $7b94: $ca $01 $12

jr_09e_7b97:
    nop                                           ; $7b97: $00
    ld a, [de]                                    ; $7b98: $1a
    nop                                           ; $7b99: $00
    rlc b                                         ; $7b9a: $cb $00
    ld de, $1e00                                  ; $7b9c: $11 $00 $1e
    nop                                           ; $7b9f: $00
    db $ed                                        ; $7ba0: $ed
    ld bc, $0011                                  ; $7ba1: $01 $11 $00
    rra                                           ; $7ba4: $1f
    nop                                           ; $7ba5: $00
    ld hl, $1104                                  ; $7ba6: $21 $04 $11
    nop                                           ; $7ba9: $00
    ld h, $00                                     ; $7baa: $26 $00
    ld [$1202], a                                 ; $7bac: $ea $02 $12
    nop                                           ; $7baf: $00
    inc l                                         ; $7bb0: $2c
    nop                                           ; $7bb1: $00
    ld b, $03                                     ; $7bb2: $06 $03
    ld [de], a                                    ; $7bb4: $12
    nop                                           ; $7bb5: $00
    dec l                                         ; $7bb6: $2d
    nop                                           ; $7bb7: $00
    ld a, a                                       ; $7bb8: $7f
    ld [bc], a                                    ; $7bb9: $02
    ld [$310d], sp                                ; $7bba: $08 $0d $31
    nop                                           ; $7bbd: $00
    ld l, $00                                     ; $7bbe: $2e $00
    ld [de], a                                    ; $7bc0: $12
    nop                                           ; $7bc1: $00
    inc sp                                        ; $7bc2: $33
    nop                                           ; $7bc3: $00
    dec sp                                        ; $7bc4: $3b
    ld bc, $0112                                  ; $7bc5: $01 $12 $01
    inc [hl]                                      ; $7bc8: $34
    nop                                           ; $7bc9: $00
    inc a                                         ; $7bca: $3c
    inc bc                                        ; $7bcb: $03
    ld [de], a                                    ; $7bcc: $12
    nop                                           ; $7bcd: $00
    ld [hl], $00                                  ; $7bce: $36 $00
    or d                                          ; $7bd0: $b2
    nop                                           ; $7bd1: $00
    ld de, $3a00                                  ; $7bd2: $11 $00 $3a
    nop                                           ; $7bd5: $00
    add c                                         ; $7bd6: $81
    ld bc, $0012                                  ; $7bd7: $01 $12 $00
    ld a, [hl-]                                   ; $7bda: $3a
    nop                                           ; $7bdb: $00
    sub e                                         ; $7bdc: $93
    inc bc                                        ; $7bdd: $03
    ld [de], a                                    ; $7bde: $12
    nop                                           ; $7bdf: $00
    ld a, $00                                     ; $7be0: $3e $00
    ld h, d                                       ; $7be2: $62
    ld [bc], a                                    ; $7be3: $02
    ld de, $3f00                                  ; $7be4: $11 $00 $3f
    nop                                           ; $7be7: $00
    or a                                          ; $7be8: $b7
    ld [bc], a                                    ; $7be9: $02
    ld [de], a                                    ; $7bea: $12
    nop                                           ; $7beb: $00
    ccf                                           ; $7bec: $3f
    nop                                           ; $7bed: $00
    ld d, c                                       ; $7bee: $51
    nop                                           ; $7bef: $00
    ld [de], a                                    ; $7bf0: $12
    nop                                           ; $7bf1: $00
    ld b, b                                       ; $7bf2: $40
    nop                                           ; $7bf3: $00
    ld h, a                                       ; $7bf4: $67
    nop                                           ; $7bf5: $00
    ld [de], a                                    ; $7bf6: $12
    nop                                           ; $7bf7: $00
    ld b, d                                       ; $7bf8: $42
    nop                                           ; $7bf9: $00
    add d                                         ; $7bfa: $82
    nop                                           ; $7bfb: $00
    ld [de], a                                    ; $7bfc: $12
    nop                                           ; $7bfd: $00
    ld b, h                                       ; $7bfe: $44
    nop                                           ; $7bff: $00
    sbc h                                         ; $7c00: $9c
    nop                                           ; $7c01: $00
    ld [de], a                                    ; $7c02: $12
    ld bc, $0044                                  ; $7c03: $01 $44 $00
    jp c, Jump_000_0801                           ; $7c06: $da $01 $08

    rrca                                          ; $7c09: $0f
    ld c, c                                       ; $7c0a: $49
    nop                                           ; $7c0b: $00
    ld sp, $1100                                  ; $7c0c: $31 $00 $11
    nop                                           ; $7c0f: $00
    ld c, a                                       ; $7c10: $4f
    nop                                           ; $7c11: $00
    pop af                                        ; $7c12: $f1
    nop                                           ; $7c13: $00
    ld de, $5000                                  ; $7c14: $11 $00 $50
    nop                                           ; $7c17: $00
    ld a, [hl-]                                   ; $7c18: $3a
    inc bc                                        ; $7c19: $03
    ld de, $5400                                  ; $7c1a: $11 $00 $54
    nop                                           ; $7c1d: $00
    add h                                         ; $7c1e: $84
    inc bc                                        ; $7c1f: $03
    ld de, $5b00                                  ; $7c20: $11 $00 $5b
    nop                                           ; $7c23: $00
    cp $01                                        ; $7c24: $fe $01
    ld [de], a                                    ; $7c26: $12
    ld bc, $0063                                  ; $7c27: $01 $63 $00
    ld e, l                                       ; $7c2a: $5d
    ld [bc], a                                    ; $7c2b: $02
    ld de, $6400                                  ; $7c2c: $11 $00 $64
    nop                                           ; $7c2f: $00
    or l                                          ; $7c30: $b5
    nop                                           ; $7c31: $00
    ld [de], a                                    ; $7c32: $12
    nop                                           ; $7c33: $00
    ld h, l                                       ; $7c34: $65
    nop                                           ; $7c35: $00
    and c                                         ; $7c36: $a1
    ld bc, $0011                                  ; $7c37: $01 $11 $00
    ld h, [hl]                                    ; $7c3a: $66
    nop                                           ; $7c3b: $00
    inc e                                         ; $7c3c: $1c
    inc b                                         ; $7c3d: $04
    ld [$660e], sp                                ; $7c3e: $08 $0e $66
    nop                                           ; $7c41: $00
    dec l                                         ; $7c42: $2d
    nop                                           ; $7c43: $00
    ld [de], a                                    ; $7c44: $12
    nop                                           ; $7c45: $00
    ld l, d                                       ; $7c46: $6a
    nop                                           ; $7c47: $00
    dec h                                         ; $7c48: $25
    ld bc, $0112                                  ; $7c49: $01 $12 $01
    ld l, l                                       ; $7c4c: $6d
    nop                                           ; $7c4d: $00
    ld d, l                                       ; $7c4e: $55
    inc bc                                        ; $7c4f: $03
    ld de, $6d00                                  ; $7c50: $11 $00 $6d
    nop                                           ; $7c53: $00
    ld sp, hl                                     ; $7c54: $f9
    nop                                           ; $7c55: $00
    ld [de], a                                    ; $7c56: $12
    nop                                           ; $7c57: $00
    halt                                          ; $7c58: $76
    nop                                           ; $7c59: $00
    dec bc                                        ; $7c5a: $0b
    ld [bc], a                                    ; $7c5b: $02
    ld [de], a                                    ; $7c5c: $12
    ld bc, $0083                                  ; $7c5d: $01 $83 $00
    ld [hl], e                                    ; $7c60: $73
    nop                                           ; $7c61: $00
    ld de, $8600                                  ; $7c62: $11 $00 $86
    nop                                           ; $7c65: $00
    rst $08                                       ; $7c66: $cf
    nop                                           ; $7c67: $00
    ld de, $8a00                                  ; $7c68: $11 $00 $8a
    nop                                           ; $7c6b: $00
    sub h                                         ; $7c6c: $94
    ld bc, $0011                                  ; $7c6d: $01 $11 $00
    adc d                                         ; $7c70: $8a
    nop                                           ; $7c71: $00
    db $e3                                        ; $7c72: $e3
    inc bc                                        ; $7c73: $03
    ld de, $9000                                  ; $7c74: $11 $00 $90
    nop                                           ; $7c77: $00
    db $10                                        ; $7c78: $10
    ld bc, $0011                                  ; $7c79: $01 $11 $00
    sub c                                         ; $7c7c: $91
    nop                                           ; $7c7d: $00
    pop bc                                        ; $7c7e: $c1
    ld [bc], a                                    ; $7c7f: $02
    rst $38                                       ; $7c80: $ff
    rst $38                                       ; $7c81: $ff
    rst $38                                       ; $7c82: $ff
    rst $38                                       ; $7c83: $ff
    rst $38                                       ; $7c84: $ff
    rst $38                                       ; $7c85: $ff
    inc c                                         ; $7c86: $0c
    nop                                           ; $7c87: $00
    nop                                           ; $7c88: $00
    inc c                                         ; $7c89: $0c
    nop                                           ; $7c8a: $00
    nop                                           ; $7c8b: $00
    ld e, $00                                     ; $7c8c: $1e $00
    inc bc                                        ; $7c8e: $03
    inc a                                         ; $7c8f: $3c
    nop                                           ; $7c90: $00
    ld [$040c], sp                                ; $7c91: $08 $0c $04
    ld b, b                                       ; $7c94: $40
    nop                                           ; $7c95: $00
    or l                                          ; $7c96: $b5
    nop                                           ; $7c97: $00
    ld [bc], a                                    ; $7c98: $02
    nop                                           ; $7c99: $00
    ld [hl], b                                    ; $7c9a: $70
    nop                                           ; $7c9b: $00
    ld l, c                                       ; $7c9c: $69
    ld bc, $000c                                  ; $7c9d: $01 $0c $00
    ld a, e                                       ; $7ca0: $7b
    nop                                           ; $7ca1: $00
    ld e, e                                       ; $7ca2: $5b
    nop                                           ; $7ca3: $00

Jump_09e_7ca4:
    inc c                                         ; $7ca4: $0c
    dec b                                         ; $7ca5: $05
    adc b                                         ; $7ca6: $88
    nop                                           ; $7ca7: $00
    xor $00                                       ; $7ca8: $ee $00
    inc c                                         ; $7caa: $0c
    nop                                           ; $7cab: $00
    sub b                                         ; $7cac: $90
    nop                                           ; $7cad: $00
    ld h, a                                       ; $7cae: $67
    nop                                           ; $7caf: $00
    ld a, [bc]                                    ; $7cb0: $0a
    dec bc                                        ; $7cb1: $0b
    and l                                         ; $7cb2: $a5
    nop                                           ; $7cb3: $00
    ld c, c                                       ; $7cb4: $49
    nop                                           ; $7cb5: $00
    rlca                                          ; $7cb6: $07
    nop                                           ; $7cb7: $00
    or a                                          ; $7cb8: $b7
    nop                                           ; $7cb9: $00
    ld c, c                                       ; $7cba: $49
    ld bc, $060c                                  ; $7cbb: $01 $0c $06
    cp a                                          ; $7cbe: $bf
    nop                                           ; $7cbf: $00
    or [hl]                                       ; $7cc0: $b6
    nop                                           ; $7cc1: $00
    rst $38                                       ; $7cc2: $ff
    rst $38                                       ; $7cc3: $ff
    rst $38                                       ; $7cc4: $ff
    rst $38                                       ; $7cc5: $ff
    rst $38                                       ; $7cc6: $ff
    rst $38                                       ; $7cc7: $ff
    rrca                                          ; $7cc8: $0f
    nop                                           ; $7cc9: $00
    nop                                           ; $7cca: $00
    dec d                                         ; $7ccb: $15
    nop                                           ; $7ccc: $00
    ld bc, $0015                                  ; $7ccd: $01 $15 $00
    ld bc, $0021                                  ; $7cd0: $01 $21 $00
    inc bc                                        ; $7cd3: $03
    daa                                           ; $7cd4: $27
    nop                                           ; $7cd5: $00
    inc b                                         ; $7cd6: $04
    rlca                                          ; $7cd7: $07
    nop                                           ; $7cd8: $00
    ld [hl+], a                                   ; $7cd9: $22
    nop                                           ; $7cda: $00
    jr nc, jr_09e_7cdd                            ; $7cdb: $30 $00

jr_09e_7cdd:
    inc c                                         ; $7cdd: $0c
    ld bc, $0087                                  ; $7cde: $01 $87 $00
    pop hl                                        ; $7ce1: $e1
    nop                                           ; $7ce2: $00
    inc c                                         ; $7ce3: $0c
    inc b                                         ; $7ce4: $04
    cp a                                          ; $7ce5: $bf
    nop                                           ; $7ce6: $00
    cp b                                          ; $7ce7: $b8
    nop                                           ; $7ce8: $00
    inc c                                         ; $7ce9: $0c
    inc bc                                        ; $7cea: $03
    call nc, $b000                                ; $7ceb: $d4 $00 $b0
    nop                                           ; $7cee: $00
    inc c                                         ; $7cef: $0c
    ld [bc], a                                    ; $7cf0: $02
    ld b, $01                                     ; $7cf1: $06 $01
    db $e3                                        ; $7cf3: $e3
    nop                                           ; $7cf4: $00
    ld [bc], a                                    ; $7cf5: $02
    nop                                           ; $7cf6: $00
    ld h, $01                                     ; $7cf7: $26 $01
    cpl                                           ; $7cf9: $2f
    ld bc, $ffff                                  ; $7cfa: $01 $ff $ff
    rst $38                                       ; $7cfd: $ff
    rst $38                                       ; $7cfe: $ff
    rst $38                                       ; $7cff: $ff
    rst $38                                       ; $7d00: $ff
    rrca                                          ; $7d01: $0f
    nop                                           ; $7d02: $00
    nop                                           ; $7d03: $00
    dec d                                         ; $7d04: $15
    nop                                           ; $7d05: $00
    ld bc, $0015                                  ; $7d06: $01 $15 $00
    ld bc, $002d                                  ; $7d09: $01 $2d $00
    dec b                                         ; $7d0c: $05
    inc sp                                        ; $7d0d: $33
    nop                                           ; $7d0e: $00
    ld b, $02                                     ; $7d0f: $06 $02
    nop                                           ; $7d11: $00
    jr jr_09e_7d14                                ; $7d12: $18 $00

jr_09e_7d14:
    ld e, a                                       ; $7d14: $5f
    nop                                           ; $7d15: $00
    dec bc                                        ; $7d16: $0b
    nop                                           ; $7d17: $00
    add [hl]                                      ; $7d18: $86
    nop                                           ; $7d19: $00
    jr nc, jr_09e_7d1c                            ; $7d1a: $30 $00

jr_09e_7d1c:
    rlca                                          ; $7d1c: $07
    nop                                           ; $7d1d: $00
    adc a                                         ; $7d1e: $8f
    nop                                           ; $7d1f: $00
    ld d, e                                       ; $7d20: $53
    nop                                           ; $7d21: $00
    dec bc                                        ; $7d22: $0b
    nop                                           ; $7d23: $00
    sbc a                                         ; $7d24: $9f
    nop                                           ; $7d25: $00
    ld e, d                                       ; $7d26: $5a
    nop                                           ; $7d27: $00
    dec bc                                        ; $7d28: $0b
    nop                                           ; $7d29: $00
    xor e                                         ; $7d2a: $ab
    nop                                           ; $7d2b: $00
    ld h, a                                       ; $7d2c: $67
    nop                                           ; $7d2d: $00
    inc c                                         ; $7d2e: $0c
    ld bc, $00d1                                  ; $7d2f: $01 $d1 $00
    ld b, [hl]                                    ; $7d32: $46
    nop                                           ; $7d33: $00
    rst $38                                       ; $7d34: $ff
    rst $38                                       ; $7d35: $ff
    rst $38                                       ; $7d36: $ff
    rst $38                                       ; $7d37: $ff
    rst $38                                       ; $7d38: $ff
    rst $38                                       ; $7d39: $ff
    inc h                                         ; $7d3a: $24
    nop                                           ; $7d3b: $00
    nop                                           ; $7d3c: $00
    ld a, [hl+]                                   ; $7d3d: $2a
    nop                                           ; $7d3e: $00
    ld bc, $002a                                  ; $7d3f: $01 $2a $00
    ld bc, $0030                                  ; $7d42: $01 $30 $00
    ld [bc], a                                    ; $7d45: $02
    jr nc, jr_09e_7d48                            ; $7d46: $30 $00

jr_09e_7d48:
    ld [bc], a                                    ; $7d48: $02
    jr nc, jr_09e_7d4b                            ; $7d49: $30 $00

jr_09e_7d4b:
    ld [bc], a                                    ; $7d4b: $02
    ld [hl], $00                                  ; $7d4c: $36 $00
    inc bc                                        ; $7d4e: $03
    ld [hl], $00                                  ; $7d4f: $36 $00
    inc bc                                        ; $7d51: $03
    ld [hl], $00                                  ; $7d52: $36 $00
    inc bc                                        ; $7d54: $03
    ld [hl], $00                                  ; $7d55: $36 $00
    inc bc                                        ; $7d57: $03
    ld [hl], $00                                  ; $7d58: $36 $00
    inc bc                                        ; $7d5a: $03
    inc a                                         ; $7d5b: $3c
    nop                                           ; $7d5c: $00
    inc b                                         ; $7d5d: $04
    ld [bc], a                                    ; $7d5e: $02
    ld bc, $0005                                  ; $7d5f: $01 $05 $00
    inc a                                         ; $7d62: $3c
    nop                                           ; $7d63: $00
    rlca                                          ; $7d64: $07
    ld bc, $00af                                  ; $7d65: $01 $af $00
    ld a, [hl-]                                   ; $7d68: $3a
    nop                                           ; $7d69: $00
    rlca                                          ; $7d6a: $07
    nop                                           ; $7d6b: $00
    ld [hl], c                                    ; $7d6c: $71
    ld bc, $003a                                  ; $7d6d: $01 $3a $00
    rlca                                          ; $7d70: $07
    ld [bc], a                                    ; $7d71: $02
    sub b                                         ; $7d72: $90
    ld [bc], a                                    ; $7d73: $02
    add hl, sp                                    ; $7d74: $39
    nop                                           ; $7d75: $00
    ld [bc], a                                    ; $7d76: $02
    nop                                           ; $7d77: $00
    push af                                       ; $7d78: $f5
    ld [bc], a                                    ; $7d79: $02
    ld b, d                                       ; $7d7a: $42
    nop                                           ; $7d7b: $00
    rst $38                                       ; $7d7c: $ff
    rst $38                                       ; $7d7d: $ff
    rst $38                                       ; $7d7e: $ff
    rst $38                                       ; $7d7f: $ff
    rst $38                                       ; $7d80: $ff
    rst $38                                       ; $7d81: $ff
    ld hl, $0000                                  ; $7d82: $21 $00 $00
    ld hl, $0000                                  ; $7d85: $21 $00 $00
    ld hl, $0000                                  ; $7d88: $21 $00 $00
    ld hl, $0000                                  ; $7d8b: $21 $00 $00
    ld hl, $0000                                  ; $7d8e: $21 $00 $00
    daa                                           ; $7d91: $27
    nop                                           ; $7d92: $00
    ld bc, $0027                                  ; $7d93: $01 $27 $00
    ld bc, $002d                                  ; $7d96: $01 $2d $00
    ld [bc], a                                    ; $7d99: $02
    dec l                                         ; $7d9a: $2d
    nop                                           ; $7d9b: $00
    ld [bc], a                                    ; $7d9c: $02
    inc sp                                        ; $7d9d: $33
    nop                                           ; $7d9e: $00
    inc bc                                        ; $7d9f: $03
    add hl, sp                                    ; $7da0: $39
    nop                                           ; $7da1: $00
    inc b                                         ; $7da2: $04
    rlca                                          ; $7da3: $07
    nop                                           ; $7da4: $00
    cpl                                           ; $7da5: $2f
    ld bc, $0072                                  ; $7da6: $01 $72 $00
    rlca                                          ; $7da9: $07
    ld [bc], a                                    ; $7daa: $02
    sub b                                         ; $7dab: $90
    ld bc, $0038                                  ; $7dac: $01 $38 $00
    ld [bc], a                                    ; $7daf: $02
    ld bc, $022e                                  ; $7db0: $01 $2e $02
    ld [hl-], a                                   ; $7db3: $32
    ld bc, $0107                                  ; $7db4: $01 $07 $01
    ld d, b                                       ; $7db7: $50
    ld [bc], a                                    ; $7db8: $02
    ld a, [hl-]                                   ; $7db9: $3a
    nop                                           ; $7dba: $00
    ld [bc], a                                    ; $7dbb: $02
    nop                                           ; $7dbc: $00
    or d                                          ; $7dbd: $b2
    ld [bc], a                                    ; $7dbe: $02
    ld b, h                                       ; $7dbf: $44
    nop                                           ; $7dc0: $00
    rst $38                                       ; $7dc1: $ff
    rst $38                                       ; $7dc2: $ff
    rst $38                                       ; $7dc3: $ff
    rst $38                                       ; $7dc4: $ff
    rst $38                                       ; $7dc5: $ff
    rst $38                                       ; $7dc6: $ff
    rrca                                          ; $7dc7: $0f
    nop                                           ; $7dc8: $00
    nop                                           ; $7dc9: $00
    dec d                                         ; $7dca: $15
    nop                                           ; $7dcb: $00
    ld bc, $0039                                  ; $7dcc: $01 $39 $00
    rlca                                          ; $7dcf: $07
    ld b, l                                       ; $7dd0: $45
    nop                                           ; $7dd1: $00
    add hl, bc                                    ; $7dd2: $09
    ld c, e                                       ; $7dd3: $4b
    nop                                           ; $7dd4: $00
    ld a, [bc]                                    ; $7dd5: $0a
    ld [bc], a                                    ; $7dd6: $02
    nop                                           ; $7dd7: $00
    dec h                                         ; $7dd8: $25
    nop                                           ; $7dd9: $00
    dec bc                                        ; $7dda: $0b
    nop                                           ; $7ddb: $00
    rlca                                          ; $7ddc: $07
    ld [bc], a                                    ; $7ddd: $02
    ld h, d                                       ; $7dde: $62
    nop                                           ; $7ddf: $00
    inc [hl]                                      ; $7de0: $34
    nop                                           ; $7de1: $00
    dec bc                                        ; $7de2: $0b
    ld bc, $006e                                  ; $7de3: $01 $6e $00
    ld h, d                                       ; $7de6: $62
    ld [bc], a                                    ; $7de7: $02
    dec bc                                        ; $7de8: $0b
    ld bc, $006f                                  ; $7de9: $01 $6f $00
    ld d, d                                       ; $7dec: $52
    ld [bc], a                                    ; $7ded: $02
    dec bc                                        ; $7dee: $0b
    ld bc, $0070                                  ; $7def: $01 $70 $00
    dec l                                         ; $7df2: $2d
    ld [bc], a                                    ; $7df3: $02
    dec bc                                        ; $7df4: $0b
    ld bc, $0070                                  ; $7df5: $01 $70 $00
    ld a, $02                                     ; $7df8: $3e $02
    rlca                                          ; $7dfa: $07
    nop                                           ; $7dfb: $00
    ld [hl], a                                    ; $7dfc: $77
    nop                                           ; $7dfd: $00
    adc h                                         ; $7dfe: $8c
    ld bc, $0202                                  ; $7dff: $01 $02 $02
    or e                                          ; $7e02: $b3
    nop                                           ; $7e03: $00
    db $d3                                        ; $7e04: $d3
    ld [bc], a                                    ; $7e05: $02
    rlca                                          ; $7e06: $07
    ld bc, $00b9                                  ; $7e07: $01 $b9 $00
    dec de                                        ; $7e0a: $1b
    ld [bc], a                                    ; $7e0b: $02
    rlca                                          ; $7e0c: $07
    inc bc                                        ; $7e0d: $03
    rst $18                                       ; $7e0e: $df
    nop                                           ; $7e0f: $00
    inc c                                         ; $7e10: $0c
    ld bc, $0102                                  ; $7e11: $01 $02 $01
    inc d                                         ; $7e14: $14
    ld bc, $0223                                  ; $7e15: $01 $23 $02
    rst $38                                       ; $7e18: $ff
    rst $38                                       ; $7e19: $ff
    rst $38                                       ; $7e1a: $ff
    rst $38                                       ; $7e1b: $ff
    rst $38                                       ; $7e1c: $ff
    rst $38                                       ; $7e1d: $ff
    ld hl, $0000                                  ; $7e1e: $21 $00 $00
    daa                                           ; $7e21: $27
    nop                                           ; $7e22: $00
    ld bc, $002d                                  ; $7e23: $01 $2d $00
    ld [bc], a                                    ; $7e26: $02
    dec l                                         ; $7e27: $2d
    nop                                           ; $7e28: $00
    ld [bc], a                                    ; $7e29: $02
    dec l                                         ; $7e2a: $2d
    nop                                           ; $7e2b: $00
    ld [bc], a                                    ; $7e2c: $02
    ld b, l                                       ; $7e2d: $45
    nop                                           ; $7e2e: $00
    ld b, $45                                     ; $7e2f: $06 $45
    nop                                           ; $7e31: $00
    ld b, $45                                     ; $7e32: $06 $45
    nop                                           ; $7e34: $00
    ld b, $4b                                     ; $7e35: $06 $4b
    nop                                           ; $7e37: $00
    rlca                                          ; $7e38: $07
    ld c, e                                       ; $7e39: $4b
    nop                                           ; $7e3a: $00
    rlca                                          ; $7e3b: $07
    ld e, l                                       ; $7e3c: $5d
    nop                                           ; $7e3d: $00
    ld a, [bc]                                    ; $7e3e: $0a
    ld [bc], a                                    ; $7e3f: $02
    nop                                           ; $7e40: $00
    rlca                                          ; $7e41: $07
    nop                                           ; $7e42: $00
    rst $00                                       ; $7e43: $c7
    ld bc, $0007                                  ; $7e44: $01 $07 $00
    ld h, l                                       ; $7e47: $65
    nop                                           ; $7e48: $00
    ret z                                         ; $7e49: $c8

    ld bc, $020c                                  ; $7e4a: $01 $0c $02
    ld bc, $0c01                                  ; $7e4d: $01 $01 $0c
    ld bc, $010c                                  ; $7e50: $01 $0c $01
    dec bc                                        ; $7e53: $0b
    ld bc, $00ec                                  ; $7e54: $01 $ec $00
    inc c                                         ; $7e57: $0c
    ld [bc], a                                    ; $7e58: $02
    inc de                                        ; $7e59: $13
    ld bc, $010b                                  ; $7e5a: $01 $0b $01
    inc c                                         ; $7e5d: $0c
    ld bc, $011b                                  ; $7e5e: $01 $1b $01
    db $ec                                        ; $7e61: $ec
    nop                                           ; $7e62: $00
    rlca                                          ; $7e63: $07
    ld [bc], a                                    ; $7e64: $02
    db $ed                                        ; $7e65: $ed
    ld bc, $004c                                  ; $7e66: $01 $4c $00
    rlca                                          ; $7e69: $07
    ld bc, $0256                                  ; $7e6a: $01 $56 $02
    sub b                                         ; $7e6d: $90
    nop                                           ; $7e6e: $00
    rlca                                          ; $7e6f: $07
    inc bc                                        ; $7e70: $03
    ld e, [hl]                                    ; $7e71: $5e
    ld [bc], a                                    ; $7e72: $02
    or e                                          ; $7e73: $b3
    ld bc, $0102                                  ; $7e74: $01 $02 $01
    ld l, l                                       ; $7e77: $6d
    ld [bc], a                                    ; $7e78: $02
    ld l, a                                       ; $7e79: $6f
    ld [bc], a                                    ; $7e7a: $02
    rst $38                                       ; $7e7b: $ff
    rst $38                                       ; $7e7c: $ff
    rst $38                                       ; $7e7d: $ff
    rst $38                                       ; $7e7e: $ff
    rst $38                                       ; $7e7f: $ff
    rst $38                                       ; $7e80: $ff
    ld e, $00                                     ; $7e81: $1e $00
    nop                                           ; $7e83: $00
    inc h                                         ; $7e84: $24
    nop                                           ; $7e85: $00
    ld bc, $0030                                  ; $7e86: $01 $30 $00
    inc bc                                        ; $7e89: $03
    ld [hl], $00                                  ; $7e8a: $36 $00
    inc b                                         ; $7e8c: $04
    inc a                                         ; $7e8d: $3c
    nop                                           ; $7e8e: $00
    dec b                                         ; $7e8f: $05
    inc a                                         ; $7e90: $3c
    nop                                           ; $7e91: $00
    dec b                                         ; $7e92: $05
    inc a                                         ; $7e93: $3c
    nop                                           ; $7e94: $00
    dec b                                         ; $7e95: $05
    ld b, d                                       ; $7e96: $42
    nop                                           ; $7e97: $00
    ld b, $42                                     ; $7e98: $06 $42
    nop                                           ; $7e9a: $00
    ld b, $42                                     ; $7e9b: $06 $42
    nop                                           ; $7e9d: $00
    ld b, $02                                     ; $7e9e: $06 $02
    nop                                           ; $7ea0: $00
    ld [hl+], a                                   ; $7ea1: $22
    nop                                           ; $7ea2: $00
    ld c, $00                                     ; $7ea3: $0e $00
    rlca                                          ; $7ea5: $07
    nop                                           ; $7ea6: $00
    ld e, l                                       ; $7ea7: $5d
    nop                                           ; $7ea8: $00
    db $db                                        ; $7ea9: $db
    ld bc, $0107                                  ; $7eaa: $01 $07 $01
    ld [hl], l                                    ; $7ead: $75
    nop                                           ; $7eae: $00
    ld a, d                                       ; $7eaf: $7a
    nop                                           ; $7eb0: $00
    dec bc                                        ; $7eb1: $0b
    ld bc, $00b1                                  ; $7eb2: $01 $b1 $00
    ld b, l                                       ; $7eb5: $45
    ld bc, $010b                                  ; $7eb6: $01 $0b $01
    call nz, $4300                                ; $7eb9: $c4 $00 $43
    ld bc, $0207                                  ; $7ebc: $01 $07 $02
    adc h                                         ; $7ebf: $8c
    ld bc, $0152                                  ; $7ec0: $01 $52 $01
    ld [bc], a                                    ; $7ec3: $02
    ld [bc], a                                    ; $7ec4: $02
    ld d, c                                       ; $7ec5: $51
    ld [bc], a                                    ; $7ec6: $02
    ld e, d                                       ; $7ec7: $5a
    ld bc, $0102                                  ; $7ec8: $01 $02 $01
    ld d, c                                       ; $7ecb: $51
    ld [bc], a                                    ; $7ecc: $02
    ld a, d                                       ; $7ecd: $7a
    nop                                           ; $7ece: $00
    rst $38                                       ; $7ecf: $ff
    rst $38                                       ; $7ed0: $ff
    rst $38                                       ; $7ed1: $ff
    rst $38                                       ; $7ed2: $ff
    rst $38                                       ; $7ed3: $ff
    rst $38                                       ; $7ed4: $ff
    inc h                                         ; $7ed5: $24
    nop                                           ; $7ed6: $00
    nop                                           ; $7ed7: $00
    jr nc, jr_09e_7eda                            ; $7ed8: $30 $00

jr_09e_7eda:
    ld [bc], a                                    ; $7eda: $02
    ld [hl], $00                                  ; $7edb: $36 $00
    inc bc                                        ; $7edd: $03
    inc a                                         ; $7ede: $3c
    nop                                           ; $7edf: $00
    inc b                                         ; $7ee0: $04
    inc a                                         ; $7ee1: $3c
    nop                                           ; $7ee2: $00
    inc b                                         ; $7ee3: $04
    inc a                                         ; $7ee4: $3c
    nop                                           ; $7ee5: $00
    inc b                                         ; $7ee6: $04
    ld b, d                                       ; $7ee7: $42
    nop                                           ; $7ee8: $00
    dec b                                         ; $7ee9: $05
    ld b, d                                       ; $7eea: $42
    nop                                           ; $7eeb: $00
    dec b                                         ; $7eec: $05
    ld b, d                                       ; $7eed: $42
    nop                                           ; $7eee: $00
    dec b                                         ; $7eef: $05
    ld b, d                                       ; $7ef0: $42
    nop                                           ; $7ef1: $00
    dec b                                         ; $7ef2: $05
    ld c, b                                       ; $7ef3: $48
    nop                                           ; $7ef4: $00
    ld b, $5a                                     ; $7ef5: $06 $5a
    nop                                           ; $7ef7: $00
    add hl, bc                                    ; $7ef8: $09
    ld [bc], a                                    ; $7ef9: $02
    nop                                           ; $7efa: $00
    add hl, bc                                    ; $7efb: $09
    nop                                           ; $7efc: $00
    ld e, [hl]                                    ; $7efd: $5e
    nop                                           ; $7efe: $00
    ld [bc], a                                    ; $7eff: $02
    ld bc, $000a                                  ; $7f00: $01 $0a $00
    ld e, [hl]                                    ; $7f03: $5e
    ld bc, $0307                                  ; $7f04: $01 $07 $03
    ld d, h                                       ; $7f07: $54
    nop                                           ; $7f08: $00
    ld d, e                                       ; $7f09: $53
    ld bc, $0202                                  ; $7f0a: $01 $02 $02
    adc h                                         ; $7f0d: $8c
    nop                                           ; $7f0e: $00
    dec bc                                        ; $7f0f: $0b
    nop                                           ; $7f10: $00
    rlca                                          ; $7f11: $07
    ld bc, $0165                                  ; $7f12: $01 $65 $01
    ld [hl], h                                    ; $7f15: $74
    ld bc, $0207                                  ; $7f16: $01 $07 $02
    ld e, [hl]                                    ; $7f19: $5e
    ld [bc], a                                    ; $7f1a: $02
    dec [hl]                                      ; $7f1b: $35
    nop                                           ; $7f1c: $00
    rlca                                          ; $7f1d: $07
    nop                                           ; $7f1e: $00
    add a                                         ; $7f1f: $87
    ld [bc], a                                    ; $7f20: $02
    sub b                                         ; $7f21: $90
    ld [bc], a                                    ; $7f22: $02
    dec bc                                        ; $7f23: $0b
    ld bc, $02a6                                  ; $7f24: $01 $a6 $02
    ret z                                         ; $7f27: $c8

    ld bc, $010b                                  ; $7f28: $01 $0b $01
    or e                                          ; $7f2b: $b3
    ld [bc], a                                    ; $7f2c: $02
    ret z                                         ; $7f2d: $c8

    ld bc, $ffff                                  ; $7f2e: $01 $ff $ff
    rst $38                                       ; $7f31: $ff
    rst $38                                       ; $7f32: $ff
    rst $38                                       ; $7f33: $ff
    rst $38                                       ; $7f34: $ff
    rrca                                          ; $7f35: $0f
    nop                                           ; $7f36: $00
    nop                                           ; $7f37: $00
    dec de                                        ; $7f38: $1b
    nop                                           ; $7f39: $00
    ld [bc], a                                    ; $7f3a: $02
    dec de                                        ; $7f3b: $1b
    nop                                           ; $7f3c: $00
    ld [bc], a                                    ; $7f3d: $02
    inc sp                                        ; $7f3e: $33
    nop                                           ; $7f3f: $00
    ld b, $33                                     ; $7f40: $06 $33
    nop                                           ; $7f42: $00
    ld b, $02                                     ; $7f43: $06 $02
    nop                                           ; $7f45: $00
    stop                                          ; $7f46: $10 $00
    ld b, b                                       ; $7f48: $40
    nop                                           ; $7f49: $00
    dec bc                                        ; $7f4a: $0b
    nop                                           ; $7f4b: $00
    ld h, $00                                     ; $7f4c: $26 $00
    ld b, a                                       ; $7f4e: $47
    nop                                           ; $7f4f: $00
    inc bc                                        ; $7f50: $03
    ld [$0087], sp                                ; $7f51: $08 $87 $00
    dec [hl]                                      ; $7f54: $35
    nop                                           ; $7f55: $00
    inc bc                                        ; $7f56: $03
    add hl, bc                                    ; $7f57: $09
    adc b                                         ; $7f58: $88
    nop                                           ; $7f59: $00
    ld c, h                                       ; $7f5a: $4c
    nop                                           ; $7f5b: $00
    ld [bc], a                                    ; $7f5c: $02
    ld bc, $008a                                  ; $7f5d: $01 $8a $00
    ld d, d                                       ; $7f60: $52
    nop                                           ; $7f61: $00
    ld [hl], d                                    ; $7f62: $72
    nop                                           ; $7f63: $00
    xor h                                         ; $7f64: $ac
    nop                                           ; $7f65: $00
    ld a, [hl-]                                   ; $7f66: $3a
    nop                                           ; $7f67: $00
    rst $38                                       ; $7f68: $ff
    rst $38                                       ; $7f69: $ff
    rst $38                                       ; $7f6a: $ff
    rst $38                                       ; $7f6b: $ff
    rst $38                                       ; $7f6c: $ff
    rst $38                                       ; $7f6d: $ff
    dec d                                         ; $7f6e: $15
    nop                                           ; $7f6f: $00
    nop                                           ; $7f70: $00
    ld hl, $0200                                  ; $7f71: $21 $00 $02
    inc sp                                        ; $7f74: $33
    nop                                           ; $7f75: $00
    dec b                                         ; $7f76: $05
    ccf                                           ; $7f77: $3f
    nop                                           ; $7f78: $00
    rlca                                          ; $7f79: $07
    ld c, e                                       ; $7f7a: $4b
    nop                                           ; $7f7b: $00
    add hl, bc                                    ; $7f7c: $09
    ld e, l                                       ; $7f7d: $5d
    nop                                           ; $7f7e: $00
    inc c                                         ; $7f7f: $0c
    ld [hl], l                                    ; $7f80: $75
    nop                                           ; $7f81: $00
    db $10                                        ; $7f82: $10
    inc c                                         ; $7f83: $0c
    ld [bc], a                                    ; $7f84: $02
    jr c, jr_09e_7f87                             ; $7f85: $38 $00

jr_09e_7f87:
    ld a, b                                       ; $7f87: $78
    nop                                           ; $7f88: $00
    inc c                                         ; $7f89: $0c
    ld bc, $0038                                  ; $7f8a: $01 $38 $00
    xor d                                         ; $7f8d: $aa
    nop                                           ; $7f8e: $00
    inc c                                         ; $7f8f: $0c
    ld bc, $0057                                  ; $7f90: $01 $57 $00
    dec [hl]                                      ; $7f93: $35
    nop                                           ; $7f94: $00
    rlca                                          ; $7f95: $07
    ld [bc], a                                    ; $7f96: $02
    ld h, a                                       ; $7f97: $67
    nop                                           ; $7f98: $00
    xor b                                         ; $7f99: $a8
    nop                                           ; $7f9a: $00
    inc c                                         ; $7f9b: $0c
    nop                                           ; $7f9c: $00
    ld a, a                                       ; $7f9d: $7f
    nop                                           ; $7f9e: $00
    ld e, d                                       ; $7f9f: $5a
    nop                                           ; $7fa0: $00
    inc c                                         ; $7fa1: $0c
    ld bc, $00a2                                  ; $7fa2: $01 $a2 $00
    ld [hl], $00                                  ; $7fa5: $36 $00
    inc c                                         ; $7fa7: $0c
    ld [$00b0], sp                                ; $7fa8: $08 $b0 $00
    ld a, [hl]                                    ; $7fab: $7e
    nop                                           ; $7fac: $00
    inc c                                         ; $7fad: $0c
    ld bc, $00c9                                  ; $7fae: $01 $c9 $00
    xor e                                         ; $7fb1: $ab
    nop                                           ; $7fb2: $00
    rlca                                          ; $7fb3: $07
    nop                                           ; $7fb4: $00
    db $e3                                        ; $7fb5: $e3
    nop                                           ; $7fb6: $00
    ld l, d                                       ; $7fb7: $6a
    nop                                           ; $7fb8: $00
    inc c                                         ; $7fb9: $0c
    ld bc, $0101                                  ; $7fba: $01 $01 $01
    dec [hl]                                      ; $7fbd: $35
    nop                                           ; $7fbe: $00
    inc c                                         ; $7fbf: $0c
    inc b                                         ; $7fc0: $04
    rra                                           ; $7fc1: $1f
    ld bc, $007e                                  ; $7fc2: $01 $7e $00
    rlca                                          ; $7fc5: $07
    ld bc, $0130                                  ; $7fc6: $01 $30 $01
    or h                                          ; $7fc9: $b4
    nop                                           ; $7fca: $00
    ld [bc], a                                    ; $7fcb: $02
    nop                                           ; $7fcc: $00
    ld b, b                                       ; $7fcd: $40
    ld bc, $0116                                  ; $7fce: $01 $16 $01
    inc c                                         ; $7fd1: $0c
    ld bc, $0161                                  ; $7fd2: $01 $61 $01
    dec [hl]                                      ; $7fd5: $35
    nop                                           ; $7fd6: $00
    rlca                                          ; $7fd7: $07
    inc bc                                        ; $7fd8: $03
    ld l, d                                       ; $7fd9: $6a

jr_09e_7fda:
    ld bc, $00fb                                  ; $7fda: $01 $fb $00
    inc c                                         ; $7fdd: $0c
    ld bc, $016f                                  ; $7fde: $01 $6f $01
    xor h                                         ; $7fe1: $ac
    nop                                           ; $7fe2: $00
    rst $38                                       ; $7fe3: $ff
    rst $38                                       ; $7fe4: $ff
    rst $38                                       ; $7fe5: $ff
    rst $38                                       ; $7fe6: $ff
    rst $38                                       ; $7fe7: $ff
    rst $38                                       ; $7fe8: $ff
    dec bc                                        ; $7fe9: $0b
    nop                                           ; $7fea: $00
    ld c, a                                       ; $7feb: $4f
    inc b                                         ; $7fec: $04
    ld bc, $00d0                                  ; $7fed: $01 $d0 $00
    nop                                           ; $7ff0: $00
    ld c, $58                                     ; $7ff1: $0e $58
    rrca                                          ; $7ff3: $0f
    ld [$0814], sp                                ; $7ff4: $08 $14 $08
    inc b                                         ; $7ff7: $04
    jr c, jr_09e_7fda                             ; $7ff8: $38 $e0

    inc d                                         ; $7ffa: $14
    ld [$6804], sp                                ; $7ffb: $08 $04 $68
    ld d, h                                       ; $7ffe: $54
    ld c, b                                       ; $7fff: $48
