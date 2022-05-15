; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0cb", ROMX[$4000], BANK[$cb]

    db $cb

    inc d                                         ; $4001: $14
    nop                                           ; $4002: $00
    dec c                                         ; $4003: $0d
    nop                                           ; $4004: $00
    ld a, $01                                     ; $4005: $3e $01
    ld [bc], a                                    ; $4007: $02
    ld l, b                                       ; $4008: $68
    ld l, c                                       ; $4009: $69
    ld l, d                                       ; $400a: $6a
    ld l, e                                       ; $400b: $6b
    ld l, h                                       ; $400c: $6c
    ld l, l                                       ; $400d: $6d
    ld b, $00                                     ; $400e: $06 $00
    ld l, a                                       ; $4010: $6f
    nop                                           ; $4011: $00
    ld l, [hl]                                    ; $4012: $6e
    ld [hl], d                                    ; $4013: $72
    ld [hl], l                                    ; $4014: $75
    ld [hl], h                                    ; $4015: $74
    add l                                         ; $4016: $85
    add h                                         ; $4017: $84
    add e                                         ; $4018: $83
    add d                                         ; $4019: $82
    nop                                           ; $401a: $00
    ld [hl], a                                    ; $401b: $77
    ld l, c                                       ; $401c: $69
    ld a, b                                       ; $401d: $78
    ld a, c                                       ; $401e: $79
    ld a, d                                       ; $401f: $7a
    ld a, e                                       ; $4020: $7b

Call_0cb_4021:
    ld a, h                                       ; $4021: $7c
    ld a, l                                       ; $4022: $7d
    add b                                         ; $4023: $80
    ld b, $00                                     ; $4024: $06 $00
    ld a, [hl]                                    ; $4026: $7e
    ld [hl], c                                    ; $4027: $71
    ld [hl], b                                    ; $4028: $70
    ld [hl], e                                    ; $4029: $73
    add c                                         ; $402a: $81
    add b                                         ; $402b: $80
    ld a, a                                       ; $402c: $7f
    nop                                           ; $402d: $00
    halt                                          ; $402e: $76
    add [hl]                                      ; $402f: $86
    add a                                         ; $4030: $87
    ld a, c                                       ; $4031: $79
    adc b                                         ; $4032: $88
    adc c                                         ; $4033: $89
    adc d                                         ; $4034: $8a
    adc e                                         ; $4035: $8b
    ld hl, $8d8c                                  ; $4036: $21 $8c $8d
    ld b, $00                                     ; $4039: $06 $00
    adc [hl]                                      ; $403b: $8e
    adc a                                         ; $403c: $8f
    sub b                                         ; $403d: $90
    sub b                                         ; $403e: $90
    inc b                                         ; $403f: $04
    nop                                           ; $4040: $00
    add b                                         ; $4041: $80
    rlca                                          ; $4042: $07
    nop                                           ; $4043: $00
    adc c                                         ; $4044: $89
    sub c                                         ; $4045: $91
    sub d                                         ; $4046: $92
    sub e                                         ; $4047: $93
    sub h                                         ; $4048: $94
    sub l                                         ; $4049: $95
    sub [hl]                                      ; $404a: $96
    nop                                           ; $404b: $00
    sub a                                         ; $404c: $97
    sbc b                                         ; $404d: $98
    sbc c                                         ; $404e: $99
    sbc d                                         ; $404f: $9a
    sbc e                                         ; $4050: $9b
    sbc h                                         ; $4051: $9c
    sbc l                                         ; $4052: $9d
    sub a                                         ; $4053: $97
    nop                                           ; $4054: $00
    sub [hl]                                      ; $4055: $96
    sub l                                         ; $4056: $95
    sub h                                         ; $4057: $94
    sub e                                         ; $4058: $93
    sub d                                         ; $4059: $92
    sub c                                         ; $405a: $91
    sbc [hl]                                      ; $405b: $9e
    sbc a                                         ; $405c: $9f
    nop                                           ; $405d: $00
    and b                                         ; $405e: $a0
    and c                                         ; $405f: $a1
    and d                                         ; $4060: $a2
    and e                                         ; $4061: $a3
    and h                                         ; $4062: $a4
    and l                                         ; $4063: $a5
    and [hl]                                      ; $4064: $a6
    and a                                         ; $4065: $a7
    nop                                           ; $4066: $00
    xor b                                         ; $4067: $a8
    xor c                                         ; $4068: $a9
    and l                                         ; $4069: $a5
    and h                                         ; $406a: $a4
    and e                                         ; $406b: $a3
    and d                                         ; $406c: $a2
    and c                                         ; $406d: $a1
    and b                                         ; $406e: $a0
    nop                                           ; $406f: $00
    sbc a                                         ; $4070: $9f
    sbc [hl]                                      ; $4071: $9e
    xor d                                         ; $4072: $aa
    xor e                                         ; $4073: $ab
    xor h                                         ; $4074: $ac
    xor l                                         ; $4075: $ad
    xor [hl]                                      ; $4076: $ae
    xor a                                         ; $4077: $af
    nop                                           ; $4078: $00
    or b                                          ; $4079: $b0
    or c                                          ; $407a: $b1
    or d                                          ; $407b: $b2
    or e                                          ; $407c: $b3
    or h                                          ; $407d: $b4
    or l                                          ; $407e: $b5
    or c                                          ; $407f: $b1
    or b                                          ; $4080: $b0
    nop                                           ; $4081: $00
    xor a                                         ; $4082: $af
    xor [hl]                                      ; $4083: $ae
    xor l                                         ; $4084: $ad
    xor h                                         ; $4085: $ac
    xor e                                         ; $4086: $ab
    xor d                                         ; $4087: $aa
    or [hl]                                       ; $4088: $b6
    or a                                          ; $4089: $b7
    nop                                           ; $408a: $00
    cp b                                          ; $408b: $b8
    cp c                                          ; $408c: $b9
    cp d                                          ; $408d: $ba
    cp e                                          ; $408e: $bb
    cp h                                          ; $408f: $bc
    cp l                                          ; $4090: $bd
    cp [hl]                                       ; $4091: $be
    cp a                                          ; $4092: $bf
    nop                                           ; $4093: $00
    ret nz                                        ; $4094: $c0

    pop bc                                        ; $4095: $c1
    jp nz, $bbbc                                  ; $4096: $c2 $bc $bb

    cp d                                          ; $4099: $ba
    cp c                                          ; $409a: $b9
    cp b                                          ; $409b: $b8
    nop                                           ; $409c: $00
    or a                                          ; $409d: $b7
    or [hl]                                       ; $409e: $b6
    jp $c5c4                                      ; $409f: $c3 $c4 $c5


    add $c7                                       ; $40a2: $c6 $c7
    ret z                                         ; $40a4: $c8

    nop                                           ; $40a5: $00
    ret                                           ; $40a6: $c9


    jp z, $cccb                                   ; $40a7: $ca $cb $cc

    call $cfce                                    ; $40aa: $cd $ce $cf
    ret                                           ; $40ad: $c9


    nop                                           ; $40ae: $00
    ret z                                         ; $40af: $c8

    rst $00                                       ; $40b0: $c7
    add $c5                                       ; $40b1: $c6 $c5
    call nz, $d0c3                                ; $40b3: $c4 $c3 $d0
    pop de                                        ; $40b6: $d1
    nop                                           ; $40b7: $00
    jp nc, $d4d3                                  ; $40b8: $d2 $d3 $d4

    push de                                       ; $40bb: $d5
    sub $d7                                       ; $40bc: $d6 $d7
    ret c                                         ; $40be: $d8

Jump_0cb_40bf:
    reti                                          ; $40bf: $d9


    nop                                           ; $40c0: $00
    jp c, $dcdb                                   ; $40c1: $da $db $dc

    db $dd                                        ; $40c4: $dd
    push de                                       ; $40c5: $d5
    call nc, $d2d3                                ; $40c6: $d4 $d3 $d2
    nop                                           ; $40c9: $00
    pop de                                        ; $40ca: $d1
    ret nc                                        ; $40cb: $d0

    sbc $df                                       ; $40cc: $de $df
    ldh [$e1], a                                  ; $40ce: $e0 $e1
    ld [c], a                                     ; $40d0: $e2
    db $e3                                        ; $40d1: $e3
    nop                                           ; $40d2: $00
    db $e4                                        ; $40d3: $e4
    push hl                                       ; $40d4: $e5
    and $e7                                       ; $40d5: $e6 $e7
    add sp, -$17                                  ; $40d7: $e8 $e9
    ld [$00e4], a                                 ; $40d9: $ea $e4 $00
    db $e3                                        ; $40dc: $e3
    ld [c], a                                     ; $40dd: $e2
    pop hl                                        ; $40de: $e1
    ldh [$df], a                                  ; $40df: $e0 $df
    sbc $eb                                       ; $40e1: $de $eb
    db $ec                                        ; $40e3: $ec
    nop                                           ; $40e4: $00
    db $ed                                        ; $40e5: $ed
    xor $ef                                       ; $40e6: $ee $ef
    ldh a, [$f1]                                  ; $40e8: $f0 $f1
    ld a, [c]                                     ; $40ea: $f2
    di                                            ; $40eb: $f3
    db $f4                                        ; $40ec: $f4
    nop                                           ; $40ed: $00
    push af                                       ; $40ee: $f5
    or $f7                                        ; $40ef: $f6 $f7
    pop af                                        ; $40f1: $f1
    ldh a, [$ef]                                  ; $40f2: $f0 $ef
    xor $ed                                       ; $40f4: $ee $ed
    nop                                           ; $40f6: $00
    db $ec                                        ; $40f7: $ec
    db $eb                                        ; $40f8: $eb
    ld hl, sp-$07                                 ; $40f9: $f8 $f9
    ld a, [$fcfb]                                 ; $40fb: $fa $fb $fc
    db $fd                                        ; $40fe: $fd
    nop                                           ; $40ff: $00
    cp $ff                                        ; $4100: $fe $ff
    nop                                           ; $4102: $00
    or e                                          ; $4103: $b3
    ld bc, $ff02                                  ; $4104: $01 $02 $ff
    cp $00                                        ; $4107: $fe $00
    db $fd                                        ; $4109: $fd
    db $fc                                        ; $410a: $fc
    ei                                            ; $410b: $fb
    ld a, [$f8f9]                                 ; $410c: $fa $f9 $f8
    inc bc                                        ; $410f: $03
    inc b                                         ; $4110: $04
    nop                                           ; $4111: $00
    dec b                                         ; $4112: $05
    ld b, $07                                     ; $4113: $06 $07
    ld [$0a09], sp                                ; $4115: $08 $09 $0a
    dec bc                                        ; $4118: $0b
    inc c                                         ; $4119: $0c
    nop                                           ; $411a: $00
    dec c                                         ; $411b: $0d
    ld c, $0a                                     ; $411c: $0e $0a
    add hl, bc                                    ; $411e: $09
    ld [$0607], sp                                ; $411f: $08 $07 $06
    dec b                                         ; $4122: $05
    dec d                                         ; $4123: $15
    inc b                                         ; $4124: $04
    inc bc                                        ; $4125: $03
    inc b                                         ; $4126: $04
    ld bc, $0028                                  ; $4127: $01 $28 $00
    ld bc, $0808                                  ; $412a: $01 $08 $08
    ld bc, $7900                                  ; $412d: $01 $00 $79
    nop                                           ; $4130: $00
    inc de                                        ; $4131: $13
    jr nc, jr_0cb_4148                            ; $4132: $30 $14

    db $10                                        ; $4134: $10
    ld de, $1700                                  ; $4135: $11 $00 $17

Call_0cb_4138:
    nop                                           ; $4138: $00
    inc b                                         ; $4139: $04
    inc c                                         ; $413a: $0c
    ld bc, $5580                                  ; $413b: $01 $80 $55
    dec c                                         ; $413e: $0d
    ld bc, $2d48                                  ; $413f: $01 $48 $2d
    ld bc, $0e18                                  ; $4142: $01 $18 $0e
    ld bc, $2e40                                  ; $4145: $01 $40 $2e

jr_0cb_4148:
    ld bc, $0d20                                  ; $4148: $01 $20 $0d
    add hl, bc                                    ; $414b: $09
    rrca                                          ; $414c: $0f
    add hl, bc                                    ; $414d: $09
    add hl, bc                                    ; $414e: $09
    inc b                                         ; $414f: $04
    ld [$0807], sp                                ; $4150: $08 $07 $08
    add hl, hl                                    ; $4153: $29
    ld bc, $0f00                                  ; $4154: $01 $00 $0f
    cpl                                           ; $4157: $2f
    cpl                                           ; $4158: $2f
    add hl, hl                                    ; $4159: $29
    add hl, hl                                    ; $415a: $29
    inc de                                        ; $415b: $13
    ld [$0018], sp                                ; $415c: $08 $18 $00
    ld d, $18                                     ; $415f: $16 $18
    ld de, $1c08                                  ; $4161: $11 $08 $1c
    cpl                                           ; $4164: $2f
    cpl                                           ; $4165: $2f
    cpl                                           ; $4166: $2f
    inc hl                                        ; $4167: $23
    jr @+$08                                      ; $4168: $18 $06

    jr nz, jr_0cb_4195                            ; $416a: $20 $29

    ld [$2f29], sp                                ; $416c: $08 $29 $2f
    ld e, $29                                     ; $416f: $1e $29
    add hl, bc                                    ; $4171: $09
    rrca                                          ; $4172: $0f
    ld a, [hl+]                                   ; $4173: $2a
    db $10                                        ; $4174: $10
    dec hl                                        ; $4175: $2b
    jr jr_0cb_41b6                                ; $4176: $18 $3e

    nop                                           ; $4178: $00
    dec sp                                        ; $4179: $3b
    nop                                           ; $417a: $00
    add hl, hl                                    ; $417b: $29
    rst $28                                       ; $417c: $ef
    db $10                                        ; $417d: $10
    jr c, jr_0cb_41a8                             ; $417e: $38 $28

    db $10                                        ; $4180: $10
    inc de                                        ; $4181: $13
    ld [$612f], sp                                ; $4182: $08 $2f $61
    nop                                           ; $4185: $00
    inc hl                                        ; $4186: $23
    jr jr_0cb_41c5                                ; $4187: $18 $3c

    db $10                                        ; $4189: $10
    ld d, b                                       ; $418a: $50
    ld [$64fc], sp                                ; $418b: $08 $fc $64
    ld e, b                                       ; $418e: $58
    ld c, a                                       ; $418f: $4f
    jr jr_0cb_41e2                                ; $4190: $18 $50

jr_0cb_4192:
    ld [$3077], sp                                ; $4192: $08 $77 $30

jr_0cb_4195:
    ld h, e                                       ; $4195: $63
    ld [$107a], sp                                ; $4196: $08 $7a $10
    inc d                                         ; $4199: $14
    nop                                           ; $419a: $00
    dec c                                         ; $419b: $0d
    nop                                           ; $419c: $00
    ret                                           ; $419d: $c9


    nop                                           ; $419e: $00
    nop                                           ; $419f: $00
    ld l, b                                       ; $41a0: $68
    ld l, c                                       ; $41a1: $69
    ld l, d                                       ; $41a2: $6a
    ld l, e                                       ; $41a3: $6b
    ld l, b                                       ; $41a4: $68
    ld l, h                                       ; $41a5: $6c
    ld l, l                                       ; $41a6: $6d

jr_0cb_41a7:
    ld l, [hl]                                    ; $41a7: $6e

jr_0cb_41a8:
    nop                                           ; $41a8: $00
    ld l, a                                       ; $41a9: $6f
    ld [hl], b                                    ; $41aa: $70
    ld [hl], c                                    ; $41ab: $71
    ld [hl], d                                    ; $41ac: $72
    ld [hl], e                                    ; $41ad: $73
    ld [hl], h                                    ; $41ae: $74
    ld [hl], l                                    ; $41af: $75
    halt                                          ; $41b0: $76
    nop                                           ; $41b1: $00
    ld [hl], a                                    ; $41b2: $77
    ld a, b                                       ; $41b3: $78
    ld l, l                                       ; $41b4: $6d
    ld l, e                                       ; $41b5: $6b

jr_0cb_41b6:
    ld a, c                                       ; $41b6: $79
    ld a, d                                       ; $41b7: $7a
    ld a, e                                       ; $41b8: $7b
    ld a, h                                       ; $41b9: $7c
    nop                                           ; $41ba: $00
    ld a, c                                       ; $41bb: $79
    ld a, l                                       ; $41bc: $7d
    ld a, [hl]                                    ; $41bd: $7e
    ld a, a                                       ; $41be: $7f
    add b                                         ; $41bf: $80
    add c                                         ; $41c0: $81
    add d                                         ; $41c1: $82
    add e                                         ; $41c2: $83
    nop                                           ; $41c3: $00
    add h                                         ; $41c4: $84

jr_0cb_41c5:
    add l                                         ; $41c5: $85
    add [hl]                                      ; $41c6: $86
    add a                                         ; $41c7: $87
    adc b                                         ; $41c8: $88
    adc c                                         ; $41c9: $89
    ld a, [hl]                                    ; $41ca: $7e
    ld a, h                                       ; $41cb: $7c
    nop                                           ; $41cc: $00
    adc d                                         ; $41cd: $8a
    adc e                                         ; $41ce: $8b
    adc h                                         ; $41cf: $8c
    adc l                                         ; $41d0: $8d
    adc d                                         ; $41d1: $8a
    adc [hl]                                      ; $41d2: $8e
    adc a                                         ; $41d3: $8f
    sub b                                         ; $41d4: $90
    nop                                           ; $41d5: $00
    sub c                                         ; $41d6: $91
    sub d                                         ; $41d7: $92
    sub e                                         ; $41d8: $93
    sub h                                         ; $41d9: $94
    sub l                                         ; $41da: $95
    adc [hl]                                      ; $41db: $8e
    adc a                                         ; $41dc: $8f
    sub [hl]                                      ; $41dd: $96
    nop                                           ; $41de: $00
    sub a                                         ; $41df: $97
    sbc b                                         ; $41e0: $98
    adc a                                         ; $41e1: $8f

jr_0cb_41e2:
    adc l                                         ; $41e2: $8d
    sbc c                                         ; $41e3: $99
    sbc d                                         ; $41e4: $9a
    sbc e                                         ; $41e5: $9b
    sbc h                                         ; $41e6: $9c
    add h                                         ; $41e7: $84
    inc b                                         ; $41e8: $04
    jr @-$61                                      ; $41e9: $18 $9d

    sbc [hl]                                      ; $41eb: $9e
    sbc a                                         ; $41ec: $9f
    and b                                         ; $41ed: $a0
    inc c                                         ; $41ee: $0c
    jr jr_0cb_4192                                ; $41ef: $18 $a1

    and d                                         ; $41f1: $a2
    jr nz, @-$5b                                  ; $41f2: $20 $a3

    and h                                         ; $41f4: $a4
    inc b                                         ; $41f5: $04
    nop                                           ; $41f6: $00
    and l                                         ; $41f7: $a5
    and [hl]                                      ; $41f8: $a6
    and b                                         ; $41f9: $a0
    and a                                         ; $41fa: $a7
    xor b                                         ; $41fb: $a8
    jr nz, jr_0cb_41a7                            ; $41fc: $20 $a9

    xor d                                         ; $41fe: $aa
    inc c                                         ; $41ff: $0c
    ld [$a6a5], sp                                ; $4200: $08 $a5 $a6
    xor e                                         ; $4203: $ab
    xor h                                         ; $4204: $ac
    sbc a                                         ; $4205: $9f
    ld b, h                                       ; $4206: $44
    and b                                         ; $4207: $a0
    ld [hl+], a                                   ; $4208: $22
    nop                                           ; $4209: $00
    and e                                         ; $420a: $a3
    and h                                         ; $420b: $a4
    xor d                                         ; $420c: $aa
    ld h, $10                                     ; $420d: $26 $10
    xor l                                         ; $420f: $ad
    xor [hl]                                      ; $4210: $ae
    add b                                         ; $4211: $80
    ld l, $00                                     ; $4212: $2e $00
    xor a                                         ; $4214: $af
    or b                                          ; $4215: $b0
    xor c                                         ; $4216: $a9

jr_0cb_4217:
    xor d                                         ; $4217: $aa
    and a                                         ; $4218: $a7
    xor h                                         ; $4219: $ac
    xor e                                         ; $421a: $ab
    ld c, b                                       ; $421b: $48
    or c                                          ; $421c: $b1
    ld h, $20                                     ; $421d: $26 $20
    or d                                          ; $421f: $b2
    or e                                          ; $4220: $b3
    ld l, $00                                     ; $4221: $2e $00
    sbc c                                         ; $4223: $99
    sbc d                                         ; $4224: $9a
    or h                                          ; $4225: $b4
    nop                                           ; $4226: $00
    or l                                          ; $4227: $b5
    sbc c                                         ; $4228: $99
    or b                                          ; $4229: $b0
    xor a                                         ; $422a: $af
    or [hl]                                       ; $422b: $b6
    sbc c                                         ; $422c: $99
    sbc d                                         ; $422d: $9a
    and l                                         ; $422e: $a5
    ld b, b                                       ; $422f: $40
    and [hl]                                      ; $4230: $a6
    ld d, h                                       ; $4231: $54
    nop                                           ; $4232: $00
    or a                                          ; $4233: $b7
    cp b                                          ; $4234: $b8
    and b                                         ; $4235: $a0
    sbc e                                         ; $4236: $9b
    or h                                          ; $4237: $b4
    and c                                         ; $4238: $a1
    dec e                                         ; $4239: $1d
    and d                                         ; $423a: $a2
    cp c                                          ; $423b: $b9
    cp d                                          ; $423c: $ba
    ld d, h                                       ; $423d: $54
    jr nz, jr_0cb_4298                            ; $423e: $20 $58

    nop                                           ; $4240: $00
    ld d, h                                       ; $4241: $54
    db $10                                        ; $4242: $10
    cp c                                          ; $4243: $b9
    ld l, [hl]                                    ; $4244: $6e
    ld [$729e], sp                                ; $4245: $08 $9e $72
    ld [$bcbb], sp                                ; $4248: $08 $bb $bc
    ld [$8618], sp                                ; $424b: $08 $18 $86
    ld [$086e], sp                                ; $424e: $08 $6e $08
    ld [hl], d                                    ; $4251: $72
    ld [$4cbd], sp                                ; $4252: $08 $bd $4c
    cp [hl]                                       ; $4255: $be
    ld e, b                                       ; $4256: $58
    nop                                           ; $4257: $00
    xor [hl]                                      ; $4258: $ae
    xor l                                         ; $4259: $ad
    ld a, d                                       ; $425a: $7a
    db $10                                        ; $425b: $10
    and b                                         ; $425c: $a0
    nop                                           ; $425d: $00
    xor l                                         ; $425e: $ad
    xor [hl]                                      ; $425f: $ae
    sub b                                         ; $4260: $90
    and h                                         ; $4261: $a4
    jr z, jr_0cb_4217                             ; $4262: $28 $b3

    or d                                          ; $4264: $b2

jr_0cb_4265:
    xor h                                         ; $4265: $ac
    nop                                           ; $4266: $00
    or c                                          ; $4267: $b1
    xor e                                         ; $4268: $ab
    cp h                                          ; $4269: $bc
    and d                                         ; $426a: $a2
    db $10                                        ; $426b: $10
    and e                                         ; $426c: $a3
    or d                                          ; $426d: $b2
    or e                                          ; $426e: $b3
    and h                                         ; $426f: $a4
    ld [$abb1], sp                                ; $4270: $08 $b1 $ab
    xor h                                         ; $4273: $ac
    and c                                         ; $4274: $a1
    ld [hl+], a                                   ; $4275: $22
    cp b                                          ; $4276: $b8
    or a                                          ; $4277: $b7
    xor h                                         ; $4278: $ac
    nop                                           ; $4279: $00
    or [hl]                                       ; $427a: $b6
    xor a                                         ; $427b: $af
    ld bc, $2001                                  ; $427c: $01 $01 $20
    ld [bc], a                                    ; $427f: $02
    add sp, $01                                   ; $4280: $e8 $01
    jr z, jr_0cb_4295                             ; $4282: $28 $11

    jr z, @+$1b                                   ; $4284: $28 $19

    nop                                           ; $4286: $00
    ld a, [bc]                                    ; $4287: $0a
    ld bc, $0928                                  ; $4288: $01 $28 $09
    ld bc, $5501                                  ; $428b: $01 $01 $55
    add hl, bc                                    ; $428e: $09
    ld bc, $0b80                                  ; $428f: $01 $80 $0b
    ld bc, $0d80                                  ; $4292: $01 $80 $0d

jr_0cb_4295:
    ld bc, $0c80                                  ; $4295: $01 $80 $0c

jr_0cb_4298:
    ld bc, $3fa8                                  ; $4298: $01 $a8 $3f
    inc l                                         ; $429b: $2c
    inc l                                         ; $429c: $2c
    inc d                                         ; $429d: $14
    ld hl, sp+$0e                                 ; $429e: $f8 $0e
    ld hl, sp+$58                                 ; $42a0: $f8 $58
    ld hl, sp+$6c                                 ; $42a2: $f8 $6c
    jr nc, jr_0cb_4316                            ; $42a4: $30 $70

    ld b, b                                       ; $42a6: $40
    rrca                                          ; $42a7: $0f
    db $10                                        ; $42a8: $10
    add b                                         ; $42a9: $80
    inc d                                         ; $42aa: $14
    jr jr_0cb_42c1                                ; $42ab: $18 $14

    nop                                           ; $42ad: $00
    dec c                                         ; $42ae: $0d
    nop                                           ; $42af: $00
    jr c, jr_0cb_42b3                             ; $42b0: $38 $01

    nop                                           ; $42b2: $00

jr_0cb_42b3:
    ld l, b                                       ; $42b3: $68
    ld l, c                                       ; $42b4: $69
    ld l, d                                       ; $42b5: $6a
    ld l, e                                       ; $42b6: $6b
    ld l, h                                       ; $42b7: $6c
    ld l, l                                       ; $42b8: $6d
    ld l, [hl]                                    ; $42b9: $6e
    ld l, a                                       ; $42ba: $6f
    nop                                           ; $42bb: $00
    ld [hl], b                                    ; $42bc: $70
    ld [hl], c                                    ; $42bd: $71
    ld [hl], d                                    ; $42be: $72
    ld [hl], e                                    ; $42bf: $73
    ld [hl], h                                    ; $42c0: $74

jr_0cb_42c1:
    ld l, b                                       ; $42c1: $68
    ld [hl], l                                    ; $42c2: $75
    halt                                          ; $42c3: $76
    nop                                           ; $42c4: $00
    ld [hl], a                                    ; $42c5: $77
    ld a, b                                       ; $42c6: $78
    ld a, c                                       ; $42c7: $79
    ld l, h                                       ; $42c8: $6c
    ld a, d                                       ; $42c9: $7a
    ld a, e                                       ; $42ca: $7b
    ld a, h                                       ; $42cb: $7c
    ld a, l                                       ; $42cc: $7d
    nop                                           ; $42cd: $00
    ld a, [hl]                                    ; $42ce: $7e
    ld a, d                                       ; $42cf: $7a
    ld a, a                                       ; $42d0: $7f
    add b                                         ; $42d1: $80
    ld a, d                                       ; $42d2: $7a
    add c                                         ; $42d3: $81
    add d                                         ; $42d4: $82
    ld a, d                                       ; $42d5: $7a
    nop                                           ; $42d6: $00
    ld a, a                                       ; $42d7: $7f
    ld a, e                                       ; $42d8: $7b
    ld a, a                                       ; $42d9: $7f
    add e                                         ; $42da: $83
    add b                                         ; $42db: $80
    ld a, [hl]                                    ; $42dc: $7e
    add c                                         ; $42dd: $81
    add d                                         ; $42de: $82
    jr nz, jr_0cb_4265                            ; $42df: $20 $84

    add l                                         ; $42e1: $85
    ld [bc], a                                    ; $42e2: $02
    ld a, b                                       ; $42e3: $78
    add [hl]                                      ; $42e4: $86
    add a                                         ; $42e5: $87
    adc b                                         ; $42e6: $88
    adc c                                         ; $42e7: $89
    adc d                                         ; $42e8: $8a
    nop                                           ; $42e9: $00
    adc e                                         ; $42ea: $8b
    adc h                                         ; $42eb: $8c
    adc l                                         ; $42ec: $8d
    adc [hl]                                      ; $42ed: $8e
    adc a                                         ; $42ee: $8f
    adc a                                         ; $42ef: $8f
    adc [hl]                                      ; $42f0: $8e
    adc l                                         ; $42f1: $8d
    nop                                           ; $42f2: $00
    adc h                                         ; $42f3: $8c
    adc e                                         ; $42f4: $8b
    adc d                                         ; $42f5: $8a
    adc c                                         ; $42f6: $89
    adc b                                         ; $42f7: $88
    add a                                         ; $42f8: $87
    add [hl]                                      ; $42f9: $86
    sbc d                                         ; $42fa: $9a
    nop                                           ; $42fb: $00
    sbc e                                         ; $42fc: $9b
    sbc h                                         ; $42fd: $9c
    sbc l                                         ; $42fe: $9d
    sbc [hl]                                      ; $42ff: $9e
    sbc a                                         ; $4300: $9f
    and b                                         ; $4301: $a0
    and c                                         ; $4302: $a1
    and d                                         ; $4303: $a2
    nop                                           ; $4304: $00
    and e                                         ; $4305: $a3
    and e                                         ; $4306: $a3
    and d                                         ; $4307: $a2
    and c                                         ; $4308: $a1
    and b                                         ; $4309: $a0
    sbc a                                         ; $430a: $9f
    sbc [hl]                                      ; $430b: $9e
    sbc l                                         ; $430c: $9d
    nop                                           ; $430d: $00
    sbc h                                         ; $430e: $9c
    sbc e                                         ; $430f: $9b
    sbc d                                         ; $4310: $9a
    xor [hl]                                      ; $4311: $ae
    xor a                                         ; $4312: $af
    or b                                          ; $4313: $b0
    or c                                          ; $4314: $b1
    or d                                          ; $4315: $b2

jr_0cb_4316:
    nop                                           ; $4316: $00
    or e                                          ; $4317: $b3
    or h                                          ; $4318: $b4
    or l                                          ; $4319: $b5
    or [hl]                                       ; $431a: $b6
    or a                                          ; $431b: $b7
    or a                                          ; $431c: $b7
    or [hl]                                       ; $431d: $b6
    or l                                          ; $431e: $b5
    nop                                           ; $431f: $00
    or h                                          ; $4320: $b4
    or e                                          ; $4321: $b3
    or d                                          ; $4322: $b2
    or c                                          ; $4323: $b1
    or b                                          ; $4324: $b0
    xor a                                         ; $4325: $af
    xor [hl]                                      ; $4326: $ae
    jp nz, $c300                                  ; $4327: $c2 $00 $c3

    call nz, $c6c5                                ; $432a: $c4 $c5 $c6
    rst $00                                       ; $432d: $c7
    ret z                                         ; $432e: $c8

    ret                                           ; $432f: $c9


    jp z, $cb00                                   ; $4330: $ca $00 $cb

    set 1, d                                      ; $4333: $cb $ca
    ret                                           ; $4335: $c9


    ret z                                         ; $4336: $c8

    rst $00                                       ; $4337: $c7
    add $c5                                       ; $4338: $c6 $c5
    nop                                           ; $433a: $00
    call nz, $c2c3                                ; $433b: $c4 $c3 $c2
    sub $d7                                       ; $433e: $d6 $d7
    ret c                                         ; $4340: $d8

    reti                                          ; $4341: $d9


    jp c, $db00                                   ; $4342: $da $00 $db

    call c, $dedd                                 ; $4345: $dc $dd $de
    rst $18                                       ; $4348: $df
    rst $18                                       ; $4349: $df
    sbc $dd                                       ; $434a: $de $dd
    nop                                           ; $434c: $00
    call c, $dadb                                 ; $434d: $dc $db $da
    reti                                          ; $4350: $d9


    ret c                                         ; $4351: $d8

    rst $10                                       ; $4352: $d7
    sub $ea                                       ; $4353: $d6 $ea
    nop                                           ; $4355: $00
    jp hl                                         ; $4356: $e9


    add sp, -$19                                  ; $4357: $e8 $e7
    and $e5                                       ; $4359: $e6 $e5
    db $e4                                        ; $435b: $e4
    db $e3                                        ; $435c: $e3
    ld [c], a                                     ; $435d: $e2
    nop                                           ; $435e: $00
    pop hl                                        ; $435f: $e1
    pop hl                                        ; $4360: $e1
    ld [c], a                                     ; $4361: $e2
    db $e3                                        ; $4362: $e3
    db $e4                                        ; $4363: $e4
    push hl                                       ; $4364: $e5
    and $e7                                       ; $4365: $e6 $e7
    nop                                           ; $4367: $00
    add sp, -$17                                  ; $4368: $e8 $e9
    ld [$d5e0], a                                 ; $436a: $ea $e0 $d5
    call nc, $d2d3                                ; $436d: $d4 $d3 $d2
    nop                                           ; $4370: $00
    pop de                                        ; $4371: $d1
    ret nc                                        ; $4372: $d0

    rst $08                                       ; $4373: $cf
    adc $cd                                       ; $4374: $ce $cd
    call $cfce                                    ; $4376: $cd $ce $cf
    nop                                           ; $4379: $00
    ret nc                                        ; $437a: $d0

    pop de                                        ; $437b: $d1
    jp nc, $d4d3                                  ; $437c: $d2 $d3 $d4

    push de                                       ; $437f: $d5
    ldh [$cc], a                                  ; $4380: $e0 $cc
    nop                                           ; $4382: $00
    pop bc                                        ; $4383: $c1
    ret nz                                        ; $4384: $c0

    cp a                                          ; $4385: $bf
    cp [hl]                                       ; $4386: $be
    cp l                                          ; $4387: $bd
    cp h                                          ; $4388: $bc
    cp e                                          ; $4389: $bb
    cp d                                          ; $438a: $ba
    nop                                           ; $438b: $00
    cp c                                          ; $438c: $b9
    cp c                                          ; $438d: $b9
    cp d                                          ; $438e: $ba
    cp e                                          ; $438f: $bb
    cp h                                          ; $4390: $bc
    cp l                                          ; $4391: $bd
    cp [hl]                                       ; $4392: $be
    cp a                                          ; $4393: $bf
    nop                                           ; $4394: $00
    ret nz                                        ; $4395: $c0

    pop bc                                        ; $4396: $c1
    call z, $adb8                                 ; $4397: $cc $b8 $ad
    xor h                                         ; $439a: $ac
    xor e                                         ; $439b: $ab
    xor d                                         ; $439c: $aa
    nop                                           ; $439d: $00
    xor c                                         ; $439e: $a9
    xor b                                         ; $439f: $a8
    and a                                         ; $43a0: $a7
    and [hl]                                      ; $43a1: $a6
    and l                                         ; $43a2: $a5
    and l                                         ; $43a3: $a5
    and [hl]                                      ; $43a4: $a6
    and a                                         ; $43a5: $a7
    nop                                           ; $43a6: $00
    xor b                                         ; $43a7: $a8
    xor c                                         ; $43a8: $a9
    xor d                                         ; $43a9: $aa
    xor e                                         ; $43aa: $ab
    xor h                                         ; $43ab: $ac
    xor l                                         ; $43ac: $ad
    cp b                                          ; $43ad: $b8
    and h                                         ; $43ae: $a4
    nop                                           ; $43af: $00
    sbc c                                         ; $43b0: $99
    sbc b                                         ; $43b1: $98
    sub a                                         ; $43b2: $97
    sub [hl]                                      ; $43b3: $96
    sub l                                         ; $43b4: $95
    sub h                                         ; $43b5: $94
    sub e                                         ; $43b6: $93
    sub d                                         ; $43b7: $92
    nop                                           ; $43b8: $00
    sub c                                         ; $43b9: $91
    sub c                                         ; $43ba: $91
    sub d                                         ; $43bb: $92
    sub e                                         ; $43bc: $93
    sub h                                         ; $43bd: $94
    sub l                                         ; $43be: $95
    sub [hl]                                      ; $43bf: $96
    sub a                                         ; $43c0: $97
    ld a, [bc]                                    ; $43c1: $0a
    sbc b                                         ; $43c2: $98
    sbc c                                         ; $43c3: $99
    and h                                         ; $43c4: $a4
    ld [bc], a                                    ; $43c5: $02
    ld bc, $0388                                  ; $43c6: $01 $88 $03
    ld [bc], a                                    ; $43c9: $02
    nop                                           ; $43ca: $00
    ld [bc], a                                    ; $43cb: $02
    dec b                                         ; $43cc: $05
    ld [bc], a                                    ; $43cd: $02
    dec bc                                        ; $43ce: $0b
    ld [bc], a                                    ; $43cf: $02
    dec bc                                        ; $43d0: $0b
    dec bc                                        ; $43d1: $0b
    inc c                                         ; $43d2: $0c
    ld [$090a], sp                                ; $43d3: $08 $0a $09
    ld [$0c54], sp                                ; $43d6: $08 $54 $0c

jr_0cb_43d9:
    ld bc, $0e80                                  ; $43d9: $01 $80 $0e
    ld bc, $0f08                                  ; $43dc: $01 $08 $0f
    ld b, $08                                     ; $43df: $06 $08
    cpl                                           ; $43e1: $2f
    ld l, $d8                                     ; $43e2: $2e $d8
    ld bc, $0608                                  ; $43e4: $01 $08 $06
    nop                                           ; $43e7: $00
    cpl                                           ; $43e8: $2f
    ld [de], a                                    ; $43e9: $12
    ld [$0013], sp                                ; $43ea: $08 $13 $00
    rrca                                          ; $43ed: $0f
    ld c, $0f                                     ; $43ee: $0e $0f
    rst $08                                       ; $43f0: $cf
    rrca                                          ; $43f1: $0f
    db $10                                        ; $43f2: $10
    dec d                                         ; $43f3: $15
    nop                                           ; $43f4: $00
    cpl                                           ; $43f5: $2f
    ld l, $0e                                     ; $43f6: $2e $0e
    ld [$1818], sp                                ; $43f8: $08 $18 $18
    inc h                                         ; $43fb: $24
    db $10                                        ; $43fc: $10
    add hl, hl                                    ; $43fd: $29
    db $10                                        ; $43fe: $10
    db $db                                        ; $43ff: $db

Jump_0cb_4400:
    jr c, @+$0a                                   ; $4400: $38 $08

    dec sp                                        ; $4402: $3b
    db $10                                        ; $4403: $10
    ld c, $13                                     ; $4404: $0e $13
    jr jr_0cb_4447                                ; $4406: $18 $3f

    ld [$3a0f], sp                                ; $4408: $08 $0f $3a
    ld [$1051], sp                                ; $440b: $08 $51 $10
    rst $30                                       ; $440e: $f7
    dec sp                                        ; $440f: $3b
    jr jr_0cb_4463                                ; $4410: $18 $51

    ld [$1824], sp                                ; $4412: $08 $24 $18
    ld l, b                                       ; $4415: $68
    ld [$3c2f], sp                                ; $4416: $08 $2f $3c
    jr nc, jr_0cb_4441                            ; $4419: $30 $26

    jr z, jr_0cb_4459                             ; $441b: $28 $3c

    nop                                           ; $441d: $00
    rst $20                                       ; $441e: $e7
    ld [hl], a                                    ; $441f: $77
    jr nz, jr_0cb_4472                            ; $4420: $20 $50

    nop                                           ; $4422: $00
    adc d                                         ; $4423: $8a
    jr nz, @+$11                                  ; $4424: $20 $0f

    rrca                                          ; $4426: $0f
    adc c                                         ; $4427: $89
    ld [$182c], sp                                ; $4428: $08 $2c $18
    sbc l                                         ; $442b: $9d
    jr @+$01                                      ; $442c: $18 $ff

    ld d, [hl]                                    ; $442e: $56
    nop                                           ; $442f: $00
    inc a                                         ; $4430: $3c
    ld [$0088], sp                                ; $4431: $08 $88 $00
    jr z, jr_0cb_4446                             ; $4434: $28 $10

    ld [hl], l                                    ; $4436: $75
    jr jr_0cb_43d9                                ; $4437: $18 $a0

    ld [$08b1], sp                                ; $4439: $08 $b1 $08
    and h                                         ; $443c: $a4
    db $10                                        ; $443d: $10
    inc d                                         ; $443e: $14
    nop                                           ; $443f: $00
    dec c                                         ; $4440: $0d

jr_0cb_4441:
    nop                                           ; $4441: $00
    cp d                                          ; $4442: $ba
    nop                                           ; $4443: $00
    nop                                           ; $4444: $00
    ld l, b                                       ; $4445: $68

jr_0cb_4446:
    ld l, c                                       ; $4446: $69

jr_0cb_4447:
    ld l, d                                       ; $4447: $6a
    ld l, e                                       ; $4448: $6b
    ld l, h                                       ; $4449: $6c
    ld l, l                                       ; $444a: $6d
    ld l, [hl]                                    ; $444b: $6e
    ld l, a                                       ; $444c: $6f
    ld [$7170], sp                                ; $444d: $08 $70 $71
    ld [hl], d                                    ; $4450: $72
    ld [hl], e                                    ; $4451: $73
    inc b                                         ; $4452: $04
    ld [$7574], sp                                ; $4453: $08 $74 $75

jr_0cb_4456:
    halt                                          ; $4456: $76
    nop                                           ; $4457: $00
    ld [hl], a                                    ; $4458: $77

jr_0cb_4459:
    ld a, b                                       ; $4459: $78
    ld a, c                                       ; $445a: $79
    ld a, d                                       ; $445b: $7a
    ld a, e                                       ; $445c: $7b
    ld a, h                                       ; $445d: $7c
    ld a, l                                       ; $445e: $7d
    ld a, [hl]                                    ; $445f: $7e
    nop                                           ; $4460: $00
    ld a, a                                       ; $4461: $7f
    add b                                         ; $4462: $80

jr_0cb_4463:
    add c                                         ; $4463: $81
    add b                                         ; $4464: $80
    add c                                         ; $4465: $81
    add d                                         ; $4466: $82
    add e                                         ; $4467: $83
    add h                                         ; $4468: $84
    nop                                           ; $4469: $00
    add l                                         ; $446a: $85
    add [hl]                                      ; $446b: $86
    add a                                         ; $446c: $87
    add d                                         ; $446d: $82
    add e                                         ; $446e: $83
    adc b                                         ; $446f: $88
    adc c                                         ; $4470: $89
    adc d                                         ; $4471: $8a

jr_0cb_4472:
    nop                                           ; $4472: $00
    adc e                                         ; $4473: $8b
    adc h                                         ; $4474: $8c
    adc l                                         ; $4475: $8d
    adc b                                         ; $4476: $88
    adc c                                         ; $4477: $89
    adc [hl]                                      ; $4478: $8e
    adc a                                         ; $4479: $8f
    adc [hl]                                      ; $447a: $8e
    nop                                           ; $447b: $00
    adc a                                         ; $447c: $8f
    adc b                                         ; $447d: $88
    adc c                                         ; $447e: $89
    sub b                                         ; $447f: $90
    sub c                                         ; $4480: $91
    sub d                                         ; $4481: $92
    sub e                                         ; $4482: $93
    sub h                                         ; $4483: $94
    nop                                           ; $4484: $00
    sub e                                         ; $4485: $93
    sub l                                         ; $4486: $95
    sub [hl]                                      ; $4487: $96
    sub a                                         ; $4488: $97
    sbc b                                         ; $4489: $98
    sbc c                                         ; $448a: $99
    sbc d                                         ; $448b: $9a
    sbc e                                         ; $448c: $9b
    nop                                           ; $448d: $00
    sbc h                                         ; $448e: $9c
    sbc l                                         ; $448f: $9d
    sbc [hl]                                      ; $4490: $9e
    sbc l                                         ; $4491: $9d
    sbc [hl]                                      ; $4492: $9e
    sbc c                                         ; $4493: $99
    sbc d                                         ; $4494: $9a
    sbc a                                         ; $4495: $9f
    ld b, b                                       ; $4496: $40
    and b                                         ; $4497: $a0
    ld [bc], a                                    ; $4498: $02
    ld [$a2a1], sp                                ; $4499: $08 $a1 $a2
    and e                                         ; $449c: $a3
    and h                                         ; $449d: $a4
    and l                                         ; $449e: $a5
    and [hl]                                      ; $449f: $a6
    nop                                           ; $44a0: $00
    and a                                         ; $44a1: $a7
    xor b                                         ; $44a2: $a8
    xor c                                         ; $44a3: $a9
    xor d                                         ; $44a4: $aa
    xor c                                         ; $44a5: $a9
    xor d                                         ; $44a6: $aa
    and l                                         ; $44a7: $a5
    and [hl]                                      ; $44a8: $a6
    jr nz, jr_0cb_4456                            ; $44a9: $20 $ab

    xor h                                         ; $44ab: $ac
    ld [bc], a                                    ; $44ac: $02
    ld [$aead], sp                                ; $44ad: $08 $ad $ae
    xor a                                         ; $44b0: $af
    or b                                          ; $44b1: $b0
    or c                                          ; $44b2: $b1
    db $10                                        ; $44b3: $10
    or d                                          ; $44b4: $b2
    or e                                          ; $44b5: $b3
    or h                                          ; $44b6: $b4
    ld [$b548], sp                                ; $44b7: $08 $48 $b5
    or [hl]                                       ; $44ba: $b6
    or a                                          ; $44bb: $b7
    cp b                                          ; $44bc: $b8
    ld [$bab9], sp                                ; $44bd: $08 $b9 $ba
    cp e                                          ; $44c0: $bb
    cp h                                          ; $44c1: $bc
    ld [$bd48], sp                                ; $44c2: $08 $48 $bd
    cp [hl]                                       ; $44c5: $be
    cp a                                          ; $44c6: $bf
    inc b                                         ; $44c7: $04
    ret nz                                        ; $44c8: $c0

    pop bc                                        ; $44c9: $c1
    jp nz, $c4c3                                  ; $44ca: $c2 $c3 $c4

    ld [$c548], sp                                ; $44cd: $08 $48 $c5
    add $02                                       ; $44d0: $c6 $02
    rst $00                                       ; $44d2: $c7
    ret z                                         ; $44d3: $c8

    ret                                           ; $44d4: $c9


    jp z, $cccb                                   ; $44d5: $ca $cb $cc

    ld [$cd48], sp                                ; $44d8: $08 $48 $cd
    ld bc, $cfce                                  ; $44db: $01 $ce $cf
    ret nc                                        ; $44de: $d0

    pop de                                        ; $44df: $d1
    jp nc, $d4d3                                  ; $44e0: $d2 $d3 $d4

    ld [$0048], sp                                ; $44e3: $08 $48 $00
    push de                                       ; $44e6: $d5
    sub $d7                                       ; $44e7: $d6 $d7
    ret c                                         ; $44e9: $d8

    reti                                          ; $44ea: $d9


    jp c, $dcdb                                   ; $44eb: $da $db $dc

    add b                                         ; $44ee: $80
    ld [$dd48], sp                                ; $44ef: $08 $48 $dd
    sbc $df                                       ; $44f2: $de $df
    ldh [$e1], a                                  ; $44f4: $e0 $e1
    ld [c], a                                     ; $44f6: $e2
    db $e3                                        ; $44f7: $e3
    ld b, b                                       ; $44f8: $40
    db $e4                                        ; $44f9: $e4
    ld [$e548], sp                                ; $44fa: $08 $48 $e5
    and $e7                                       ; $44fd: $e6 $e7
    add sp, -$17                                  ; $44ff: $e8 $e9
    ld [$eb2a], a                                 ; $4501: $ea $2a $eb
    db $ec                                        ; $4504: $ec
    ld [$0248], sp                                ; $4505: $08 $48 $02
    ld bc, $09c0                                  ; $4508: $01 $c0 $09
    ld bc, $0a00                                  ; $450b: $01 $00 $0a
    db $e3                                        ; $450e: $e3
    ld bc, $1460                                  ; $450f: $01 $60 $14
    jr jr_0cb_452e                                ; $4512: $18 $1a

    ld [$0909], sp                                ; $4514: $08 $09 $09
    rrca                                          ; $4517: $0f
    ld bc, $0c20                                  ; $4518: $01 $20 $0c
    jr @-$3f                                      ; $451b: $18 $bf

    inc d                                         ; $451d: $14
    jr jr_0cb_452e                                ; $451e: $18 $0e

    ld bc, $0c20                                  ; $4520: $01 $20 $0c
    jr jr_0cb_4539                                ; $4523: $18 $14

    ld e, b                                       ; $4525: $58
    ld [$2af8], sp                                ; $4526: $08 $f8 $2a
    ld hl, sp+$4c                                 ; $4529: $f8 $4c
    ld hl, sp-$40                                 ; $452b: $f8 $c0
    ld l, [hl]                                    ; $452d: $6e

jr_0cb_452e:
    ld hl, sp-$70                                 ; $452e: $f8 $90
    ld l, b                                       ; $4530: $68
    inc d                                         ; $4531: $14
    nop                                           ; $4532: $00
    dec c                                         ; $4533: $0d
    nop                                           ; $4534: $00
    ld c, d                                       ; $4535: $4a
    ld bc, $6800                                  ; $4536: $01 $00 $68

jr_0cb_4539:
    ld l, c                                       ; $4539: $69
    ld l, d                                       ; $453a: $6a
    ld l, e                                       ; $453b: $6b
    ld l, h                                       ; $453c: $6c
    ld l, l                                       ; $453d: $6d
    ld l, [hl]                                    ; $453e: $6e
    ld l, a                                       ; $453f: $6f
    nop                                           ; $4540: $00
    ld [hl], b                                    ; $4541: $70
    ld [hl], c                                    ; $4542: $71
    ld [hl], c                                    ; $4543: $71
    ld [hl], b                                    ; $4544: $70
    ld l, a                                       ; $4545: $6f
    ld l, [hl]                                    ; $4546: $6e
    ld l, l                                       ; $4547: $6d
    ld l, h                                       ; $4548: $6c
    nop                                           ; $4549: $00
    ld l, e                                       ; $454a: $6b
    ld l, d                                       ; $454b: $6a
    ld l, c                                       ; $454c: $69
    ld l, b                                       ; $454d: $68
    ld [hl], d                                    ; $454e: $72
    ld [hl], e                                    ; $454f: $73
    ld [hl], h                                    ; $4550: $74
    ld [hl], l                                    ; $4551: $75
    nop                                           ; $4552: $00
    halt                                          ; $4553: $76
    ld [hl], a                                    ; $4554: $77
    ld a, b                                       ; $4555: $78
    ld a, c                                       ; $4556: $79
    ld a, d                                       ; $4557: $7a
    ld a, e                                       ; $4558: $7b
    ld a, h                                       ; $4559: $7c
    ld a, d                                       ; $455a: $7a
    nop                                           ; $455b: $00
    ld a, c                                       ; $455c: $79
    ld a, b                                       ; $455d: $78
    ld [hl], a                                    ; $455e: $77
    halt                                          ; $455f: $76
    ld [hl], l                                    ; $4560: $75
    ld [hl], h                                    ; $4561: $74
    ld [hl], e                                    ; $4562: $73
    ld [hl], d                                    ; $4563: $72
    nop                                           ; $4564: $00
    ld a, l                                       ; $4565: $7d
    ld a, [hl]                                    ; $4566: $7e
    ld a, a                                       ; $4567: $7f
    add b                                         ; $4568: $80
    add c                                         ; $4569: $81
    add d                                         ; $456a: $82
    add e                                         ; $456b: $83
    add h                                         ; $456c: $84
    nop                                           ; $456d: $00
    add l                                         ; $456e: $85
    add [hl]                                      ; $456f: $86
    add a                                         ; $4570: $87
    adc b                                         ; $4571: $88
    add h                                         ; $4572: $84
    add e                                         ; $4573: $83
    add d                                         ; $4574: $82
    add c                                         ; $4575: $81
    nop                                           ; $4576: $00
    add b                                         ; $4577: $80
    ld a, a                                       ; $4578: $7f
    ld a, [hl]                                    ; $4579: $7e
    ld a, l                                       ; $457a: $7d
    adc c                                         ; $457b: $89
    adc d                                         ; $457c: $8a
    adc e                                         ; $457d: $8b
    adc h                                         ; $457e: $8c
    nop                                           ; $457f: $00
    adc l                                         ; $4580: $8d
    adc [hl]                                      ; $4581: $8e
    adc a                                         ; $4582: $8f
    sub b                                         ; $4583: $90
    sub c                                         ; $4584: $91
    sub d                                         ; $4585: $92
    sub e                                         ; $4586: $93
    sub h                                         ; $4587: $94
    nop                                           ; $4588: $00
    sub b                                         ; $4589: $90
    adc a                                         ; $458a: $8f
    adc [hl]                                      ; $458b: $8e
    adc l                                         ; $458c: $8d
    adc h                                         ; $458d: $8c
    adc e                                         ; $458e: $8b
    adc d                                         ; $458f: $8a
    adc c                                         ; $4590: $89
    nop                                           ; $4591: $00
    sub l                                         ; $4592: $95
    sub [hl]                                      ; $4593: $96
    sub a                                         ; $4594: $97
    sbc b                                         ; $4595: $98
    sbc c                                         ; $4596: $99
    sbc d                                         ; $4597: $9a
    sbc e                                         ; $4598: $9b
    sbc h                                         ; $4599: $9c
    nop                                           ; $459a: $00
    sbc l                                         ; $459b: $9d
    sbc [hl]                                      ; $459c: $9e
    sbc a                                         ; $459d: $9f
    and b                                         ; $459e: $a0
    sbc h                                         ; $459f: $9c
    sbc e                                         ; $45a0: $9b
    sbc d                                         ; $45a1: $9a
    sbc c                                         ; $45a2: $99
    nop                                           ; $45a3: $00
    sbc b                                         ; $45a4: $98
    sub a                                         ; $45a5: $97
    sub [hl]                                      ; $45a6: $96
    sub l                                         ; $45a7: $95
    and c                                         ; $45a8: $a1
    and d                                         ; $45a9: $a2
    and e                                         ; $45aa: $a3
    and h                                         ; $45ab: $a4
    nop                                           ; $45ac: $00
    and l                                         ; $45ad: $a5
    and [hl]                                      ; $45ae: $a6
    and a                                         ; $45af: $a7
    xor b                                         ; $45b0: $a8
    xor c                                         ; $45b1: $a9
    xor d                                         ; $45b2: $aa
    xor e                                         ; $45b3: $ab
    xor h                                         ; $45b4: $ac
    nop                                           ; $45b5: $00
    xor b                                         ; $45b6: $a8
    and a                                         ; $45b7: $a7
    and [hl]                                      ; $45b8: $a6
    and l                                         ; $45b9: $a5
    and h                                         ; $45ba: $a4
    and e                                         ; $45bb: $a3
    and d                                         ; $45bc: $a2
    and c                                         ; $45bd: $a1
    nop                                           ; $45be: $00
    xor l                                         ; $45bf: $ad
    xor [hl]                                      ; $45c0: $ae
    xor a                                         ; $45c1: $af
    or b                                          ; $45c2: $b0
    or c                                          ; $45c3: $b1
    or d                                          ; $45c4: $b2
    or e                                          ; $45c5: $b3
    or h                                          ; $45c6: $b4
    nop                                           ; $45c7: $00
    or l                                          ; $45c8: $b5
    or [hl]                                       ; $45c9: $b6
    or a                                          ; $45ca: $b7
    cp b                                          ; $45cb: $b8
    or h                                          ; $45cc: $b4
    or e                                          ; $45cd: $b3
    or d                                          ; $45ce: $b2
    or c                                          ; $45cf: $b1
    nop                                           ; $45d0: $00
    or b                                          ; $45d1: $b0
    xor a                                         ; $45d2: $af
    xor [hl]                                      ; $45d3: $ae
    xor l                                         ; $45d4: $ad
    cp c                                          ; $45d5: $b9
    cp d                                          ; $45d6: $ba
    cp e                                          ; $45d7: $bb
    cp h                                          ; $45d8: $bc
    nop                                           ; $45d9: $00
    cp l                                          ; $45da: $bd
    cp [hl]                                       ; $45db: $be
    cp a                                          ; $45dc: $bf
    ret nz                                        ; $45dd: $c0

    pop bc                                        ; $45de: $c1
    jp nz, $c4c3                                  ; $45df: $c2 $c3 $c4

    nop                                           ; $45e2: $00
    ret nz                                        ; $45e3: $c0

    cp a                                          ; $45e4: $bf
    cp [hl]                                       ; $45e5: $be
    cp l                                          ; $45e6: $bd
    cp h                                          ; $45e7: $bc
    cp e                                          ; $45e8: $bb
    cp d                                          ; $45e9: $ba
    cp c                                          ; $45ea: $b9
    nop                                           ; $45eb: $00
    push bc                                       ; $45ec: $c5
    add $c7                                       ; $45ed: $c6 $c7
    ret z                                         ; $45ef: $c8

    ret                                           ; $45f0: $c9


    jp z, $cccb                                   ; $45f1: $ca $cb $cc

    nop                                           ; $45f4: $00
    call $cfce                                    ; $45f5: $cd $ce $cf
    ret nc                                        ; $45f8: $d0

    call z, $cacb                                 ; $45f9: $cc $cb $ca
    ret                                           ; $45fc: $c9


    nop                                           ; $45fd: $00
    ret z                                         ; $45fe: $c8

    rst $00                                       ; $45ff: $c7

Jump_0cb_4600:
    add $c5                                       ; $4600: $c6 $c5
    pop de                                        ; $4602: $d1
    jp nc, $d4d3                                  ; $4603: $d2 $d3 $d4

    nop                                           ; $4606: $00
    push de                                       ; $4607: $d5
    sub $d7                                       ; $4608: $d6 $d7
    ret c                                         ; $460a: $d8

    reti                                          ; $460b: $d9


    jp c, $dcdb                                   ; $460c: $da $db $dc

    nop                                           ; $460f: $00
    ret c                                         ; $4610: $d8

    rst $10                                       ; $4611: $d7
    sub $d5                                       ; $4612: $d6 $d5
    call nc, $d2d3                                ; $4614: $d4 $d3 $d2
    pop de                                        ; $4617: $d1
    nop                                           ; $4618: $00
    db $dd                                        ; $4619: $dd
    sbc $df                                       ; $461a: $de $df
    ldh [$e1], a                                  ; $461c: $e0 $e1
    ld [c], a                                     ; $461e: $e2
    db $e3                                        ; $461f: $e3
    db $e4                                        ; $4620: $e4
    nop                                           ; $4621: $00
    push hl                                       ; $4622: $e5
    and $e7                                       ; $4623: $e6 $e7
    add sp, -$1c                                  ; $4625: $e8 $e4
    db $e3                                        ; $4627: $e3
    ld [c], a                                     ; $4628: $e2
    pop hl                                        ; $4629: $e1
    nop                                           ; $462a: $00
    ldh [$df], a                                  ; $462b: $e0 $df
    sbc $dd                                       ; $462d: $de $dd
    jp hl                                         ; $462f: $e9


    ld [$eceb], a                                 ; $4630: $ea $eb $ec
    nop                                           ; $4633: $00
    db $ed                                        ; $4634: $ed
    xor $ef                                       ; $4635: $ee $ef
    ldh a, [$f1]                                  ; $4637: $f0 $f1
    ld a, [c]                                     ; $4639: $f2
    di                                            ; $463a: $f3
    db $f4                                        ; $463b: $f4
    nop                                           ; $463c: $00
    ldh a, [$ef]                                  ; $463d: $f0 $ef
    xor $ed                                       ; $463f: $ee $ed
    db $ec                                        ; $4641: $ec
    db $eb                                        ; $4642: $eb
    ld [$05e9], a                                 ; $4643: $ea $e9 $05
    push af                                       ; $4646: $f5
    or $f7                                        ; $4647: $f6 $f7
    ld hl, sp-$07                                 ; $4649: $f8 $f9
    dec b                                         ; $464b: $05
    ld h, b                                       ; $464c: $60
    ld bc, $3001                                  ; $464d: $01 $01 $30
    ld a, d                                       ; $4650: $7a
    ld hl, $3001                                  ; $4651: $21 $01 $30
    inc d                                         ; $4654: $14
    jr c, @+$17                                   ; $4655: $38 $15

    jr c, jr_0cb_4681                             ; $4657: $38 $28

    nop                                           ; $4659: $00
    add hl, bc                                    ; $465a: $09
    ld bc, $0c08                                  ; $465b: $01 $08 $0c
    rrca                                          ; $465e: $0f
    add hl, bc                                    ; $465f: $09
    ld c, $09                                     ; $4660: $0e $09
    add hl, hl                                    ; $4662: $29
    ld bc, $2f08                                  ; $4663: $01 $08 $2f
    nop                                           ; $4666: $00
    rrca                                          ; $4667: $0f
    db $10                                        ; $4668: $10
    inc de                                        ; $4669: $13
    nop                                           ; $466a: $00
    ld bc, $0e0c                                  ; $466b: $01 $0c $0e
    add hl, bc                                    ; $466e: $09
    inc c                                         ; $466f: $0c
    add hl, hl                                    ; $4670: $29
    add hl, hl                                    ; $4671: $29
    inc l                                         ; $4672: $2c
    rla                                           ; $4673: $17
    db $10                                        ; $4674: $10
    or d                                          ; $4675: $b2
    dec h                                         ; $4676: $25
    db $10                                        ; $4677: $10
    ld c, $12                                     ; $4678: $0e $12
    nop                                           ; $467a: $00
    ld l, $00                                     ; $467b: $2e $00
    ld l, $2e                                     ; $467d: $2e $2e
    ld d, $08                                     ; $467f: $16 $08

jr_0cb_4681:
    ld l, $ef                                     ; $4681: $2e $ef
    inc d                                         ; $4683: $14
    nop                                           ; $4684: $00
    ld hl, $2a00                                  ; $4685: $21 $00 $2a
    nop                                           ; $4688: $00
    ld c, $3c                                     ; $4689: $0e $3c
    nop                                           ; $468b: $00
    ld h, $10                                     ; $468c: $26 $10
    dec d                                         ; $468e: $15
    nop                                           ; $468f: $00
    dec c                                         ; $4690: $0d
    db $10                                        ; $4691: $10
    sbc l                                         ; $4692: $9d
    inc bc                                        ; $4693: $03
    jr nz, jr_0cb_46bf                            ; $4694: $20 $29

    ld l, $2a                                     ; $4696: $2e $2a
    jr @+$15                                      ; $4698: $18 $13

    db $10                                        ; $469a: $10
    ld h, h                                       ; $469b: $64
    jr nz, jr_0cb_46cc                            ; $469c: $20 $2e

    jr c, jr_0cb_46a0                             ; $469e: $38 $00

jr_0cb_46a0:
    ret                                           ; $46a0: $c9


    jr @+$0a                                      ; $46a1: $18 $08

    ld h, c                                       ; $46a3: $61
    nop                                           ; $46a4: $00
    inc c                                         ; $46a5: $0c
    ld c, $4e                                     ; $46a6: $0e $4e
    db $10                                        ; $46a8: $10
    inc c                                         ; $46a9: $0c
    ld c, $62                                     ; $46aa: $0e $62
    ld [$54b9], sp                                ; $46ac: $08 $b9 $54
    ld [$150e], sp                                ; $46af: $08 $0e $15
    ld [$0066], sp                                ; $46b2: $08 $66 $00
    ld [hl], a                                    ; $46b5: $77
    nop                                           ; $46b6: $00
    add hl, bc                                    ; $46b7: $09
    inc l                                         ; $46b8: $2c
    ld h, c                                       ; $46b9: $61
    ld [$7df5], sp                                ; $46ba: $08 $f5 $7d
    nop                                           ; $46bd: $00
    add e                                         ; $46be: $83

jr_0cb_46bf:
    nop                                           ; $46bf: $00
    rrca                                          ; $46c0: $0f
    ld [$0863], sp                                ; $46c1: $08 $63 $08
    inc c                                         ; $46c4: $0c
    adc e                                         ; $46c5: $8b
    ld [$902e], sp                                ; $46c6: $08 $2e $90
    nop                                           ; $46c9: $00
    cp $72                                        ; $46ca: $fe $72

jr_0cb_46cc:
    jr jr_0cb_4747                                ; $46cc: $18 $79

    jr jr_0cb_470a                                ; $46ce: $18 $3a

    db $10                                        ; $46d0: $10
    adc l                                         ; $46d1: $8d
    nop                                           ; $46d2: $00
    ret nz                                        ; $46d3: $c0

    nop                                           ; $46d4: $00
    ld bc, $3f00                                  ; $46d5: $01 $00 $3f
    db $10                                        ; $46d8: $10
    inc c                                         ; $46d9: $0c
    ret nz                                        ; $46da: $c0

    cp [hl]                                       ; $46db: $be
    ld [$08d0], sp                                ; $46dc: $08 $d0 $08
    inc d                                         ; $46df: $14
    nop                                           ; $46e0: $00
    dec c                                         ; $46e1: $0d
    nop                                           ; $46e2: $00
    or a                                          ; $46e3: $b7
    nop                                           ; $46e4: $00
    ld b, b                                       ; $46e5: $40
    ld l, b                                       ; $46e6: $68
    ld bc, $6900                                  ; $46e7: $01 $00 $69
    ld l, d                                       ; $46ea: $6a
    ld l, e                                       ; $46eb: $6b
    ld l, b                                       ; $46ec: $68
    ld l, b                                       ; $46ed: $68
    ld l, h                                       ; $46ee: $6c
    nop                                           ; $46ef: $00
    ld l, l                                       ; $46f0: $6d
    ld l, [hl]                                    ; $46f1: $6e
    ld l, a                                       ; $46f2: $6f
    ld [hl], b                                    ; $46f3: $70
    ld [hl], c                                    ; $46f4: $71
    ld [hl], d                                    ; $46f5: $72
    ld [hl], e                                    ; $46f6: $73
    ld l, b                                       ; $46f7: $68
    nop                                           ; $46f8: $00
    ld [hl], h                                    ; $46f9: $74
    ld [hl], l                                    ; $46fa: $75
    halt                                          ; $46fb: $76
    ld [hl], a                                    ; $46fc: $77

jr_0cb_46fd:
    halt                                          ; $46fd: $76
    ld a, b                                       ; $46fe: $78
    ld a, c                                       ; $46ff: $79
    ld a, d                                       ; $4700: $7a
    nop                                           ; $4701: $00
    ld a, e                                       ; $4702: $7b
    halt                                          ; $4703: $76
    ld [hl], a                                    ; $4704: $77
    ld a, h                                       ; $4705: $7c
    ld a, l                                       ; $4706: $7d
    ld a, [hl]                                    ; $4707: $7e
    ld a, a                                       ; $4708: $7f
    add b                                         ; $4709: $80

jr_0cb_470a:
    nop                                           ; $470a: $00
    add c                                         ; $470b: $81
    add d                                         ; $470c: $82
    add e                                         ; $470d: $83
    ld a, b                                       ; $470e: $78
    add h                                         ; $470f: $84
    add l                                         ; $4710: $85
    add [hl]                                      ; $4711: $86
    add a                                         ; $4712: $87
    nop                                           ; $4713: $00
    add [hl]                                      ; $4714: $86
    adc b                                         ; $4715: $88
    adc c                                         ; $4716: $89
    adc d                                         ; $4717: $8a
    add a                                         ; $4718: $87
    add [hl]                                      ; $4719: $86
    add a                                         ; $471a: $87
    adc e                                         ; $471b: $8b
    ld bc, $8d8c                                  ; $471c: $01 $8c $8d
    adc [hl]                                      ; $471f: $8e
    adc a                                         ; $4720: $8f
    sub b                                         ; $4721: $90
    sub c                                         ; $4722: $91
    sub d                                         ; $4723: $92
    ld c, $00                                     ; $4724: $0e $00
    nop                                           ; $4726: $00
    sub e                                         ; $4727: $93
    sub h                                         ; $4728: $94
    sub l                                         ; $4729: $95
    sub [hl]                                      ; $472a: $96
    sub a                                         ; $472b: $97
    sbc b                                         ; $472c: $98
    sbc c                                         ; $472d: $99
    sbc d                                         ; $472e: $9a
    nop                                           ; $472f: $00
    sub e                                         ; $4730: $93
    sub h                                         ; $4731: $94
    sbc e                                         ; $4732: $9b
    sbc h                                         ; $4733: $9c
    sbc l                                         ; $4734: $9d
    sbc [hl]                                      ; $4735: $9e
    sbc a                                         ; $4736: $9f
    and b                                         ; $4737: $a0
    add b                                         ; $4738: $80
    db $10                                        ; $4739: $10
    ld [$a2a1], sp                                ; $473a: $08 $a1 $a2
    and e                                         ; $473d: $a3
    and h                                         ; $473e: $a4
    and l                                         ; $473f: $a5
    and [hl]                                      ; $4740: $a6
    and a                                         ; $4741: $a7
    ld b, b                                       ; $4742: $40
    xor b                                         ; $4743: $a8
    ld [$a948], sp                                ; $4744: $08 $48 $a9

jr_0cb_4747:
    xor d                                         ; $4747: $aa
    xor e                                         ; $4748: $ab
    xor h                                         ; $4749: $ac
    xor l                                         ; $474a: $ad
    xor [hl]                                      ; $474b: $ae
    jr nz, jr_0cb_46fd                            ; $474c: $20 $af

    or b                                          ; $474e: $b0
    ld [$b148], sp                                ; $474f: $08 $48 $b1
    or d                                          ; $4752: $b2
    or e                                          ; $4753: $b3
    or h                                          ; $4754: $b4
    or l                                          ; $4755: $b5
    db $10                                        ; $4756: $10
    or [hl]                                       ; $4757: $b6
    or a                                          ; $4758: $b7
    cp b                                          ; $4759: $b8
    ld [$b948], sp                                ; $475a: $08 $48 $b9
    cp d                                          ; $475d: $ba
    cp e                                          ; $475e: $bb
    cp h                                          ; $475f: $bc
    ld [$bebd], sp                                ; $4760: $08 $bd $be
    cp a                                          ; $4763: $bf
    ret nz                                        ; $4764: $c0

    ld [$c148], sp                                ; $4765: $08 $48 $c1
    jp nz, $04c3                                  ; $4768: $c2 $c3 $04

    call nz, $c6c5                                ; $476b: $c4 $c5 $c6
    rst $00                                       ; $476e: $c7
    ret z                                         ; $476f: $c8

    ld [$c948], sp                                ; $4770: $08 $48 $c9
    jp z, $cb02                                   ; $4773: $ca $02 $cb

    call z, $cecd                                 ; $4776: $cc $cd $ce
    rst $08                                       ; $4779: $cf
    ret nc                                        ; $477a: $d0

    ld [$d148], sp                                ; $477b: $08 $48 $d1
    ld bc, $d3d2                                  ; $477e: $01 $d2 $d3
    call nc, $d6d5                                ; $4781: $d4 $d5 $d6
    rst $10                                       ; $4784: $d7
    ret c                                         ; $4785: $d8

    ld [$0048], sp                                ; $4786: $08 $48 $00
    reti                                          ; $4789: $d9


    jp c, $dcdb                                   ; $478a: $da $db $dc

    db $dd                                        ; $478d: $dd
    sbc $df                                       ; $478e: $de $df
    ldh [$80], a                                  ; $4790: $e0 $80
    ld [$e148], sp                                ; $4792: $08 $48 $e1
    ld [c], a                                     ; $4795: $e2
    db $e3                                        ; $4796: $e3
    db $e4                                        ; $4797: $e4
    push hl                                       ; $4798: $e5
    and $e7                                       ; $4799: $e6 $e7
    ld d, a                                       ; $479b: $57
    add sp, $08                                   ; $479c: $e8 $08
    ld c, b                                       ; $479e: $48
    inc bc                                        ; $479f: $03
    ld bc, $0130                                  ; $47a0: $01 $30 $01
    ld bc, $1010                                  ; $47a3: $01 $10 $10
    jr c, @+$16                                   ; $47a6: $38 $14

    jr nz, jr_0cb_47ad                            ; $47a8: $20 $03

    add hl, bc                                    ; $47aa: $09
    add hl, bc                                    ; $47ab: $09
    add hl, bc                                    ; $47ac: $09

jr_0cb_47ad:
    dec bc                                        ; $47ad: $0b
    inc bc                                        ; $47ae: $03
    dec bc                                        ; $47af: $0b
    ld bc, $1140                                  ; $47b0: $01 $40 $11
    nop                                           ; $47b3: $00
    db $dd                                        ; $47b4: $dd
    inc d                                         ; $47b5: $14
    ld [$0013], sp                                ; $47b6: $08 $13 $00
    rrca                                          ; $47b9: $0f
    ld bc, $1430                                  ; $47ba: $01 $30 $14
    jr jr_0cb_47cf                                ; $47bd: $18 $10

    ld [$010e], sp                                ; $47bf: $08 $0e $01

jr_0cb_47c2:
    jr nc, jr_0cb_47c2                            ; $47c2: $30 $fe

    ld e, $20                                     ; $47c4: $1e $20
    ld de, $0a38                                  ; $47c6: $11 $38 $0a
    ld hl, sp+$2c                                 ; $47c9: $f8 $2c
    ld hl, sp+$4e                                 ; $47cb: $f8 $4e
    ld hl, sp+$70                                 ; $47cd: $f8 $70

jr_0cb_47cf:
    ld hl, sp-$6e                                 ; $47cf: $f8 $92
    ld [hl], b                                    ; $47d1: $70
    inc d                                         ; $47d2: $14
    nop                                           ; $47d3: $00
    dec c                                         ; $47d4: $0d
    nop                                           ; $47d5: $00
    jr c, jr_0cb_47d9                             ; $47d6: $38 $01

    ld b, b                                       ; $47d8: $40

jr_0cb_47d9:
    ld l, b                                       ; $47d9: $68
    ld bc, $6918                                  ; $47da: $01 $18 $69
    ld l, d                                       ; $47dd: $6a
    ld l, e                                       ; $47de: $6b
    ld l, h                                       ; $47df: $6c
    ld l, l                                       ; $47e0: $6d
    ld l, [hl]                                    ; $47e1: $6e
    ld [$6f68], sp                                ; $47e2: $08 $68 $6f
    ld l, e                                       ; $47e5: $6b
    ld l, h                                       ; $47e6: $6c
    ld de, $7000                                  ; $47e7: $11 $00 $70
    ld [hl], c                                    ; $47ea: $71
    ld [hl], b                                    ; $47eb: $70
    ld b, b                                       ; $47ec: $40
    ld [hl], b                                    ; $47ed: $70
    inc b                                         ; $47ee: $04
    ld [$7372], sp                                ; $47ef: $08 $72 $73
    ld [hl], h                                    ; $47f2: $74
    ld [hl], l                                    ; $47f3: $75
    halt                                          ; $47f4: $76
    ld [hl], b                                    ; $47f5: $70
    db $10                                        ; $47f6: $10
    ld [hl], a                                    ; $47f7: $77
    ld a, b                                       ; $47f8: $78
    ld [hl], h                                    ; $47f9: $74
    ld de, $7900                                  ; $47fa: $11 $00 $79
    ld a, d                                       ; $47fd: $7a
    ld a, c                                       ; $47fe: $79
    ld a, c                                       ; $47ff: $79
    add b                                         ; $4800: $80

Call_0cb_4801:
    inc b                                         ; $4801: $04
    ld [$7a7b], sp                                ; $4802: $08 $7b $7a
    ld a, c                                       ; $4805: $79
    ld a, h                                       ; $4806: $7c
    ld a, l                                       ; $4807: $7d
    ld a, c                                       ; $4808: $79
    ld a, [hl]                                    ; $4809: $7e
    ld b, b                                       ; $480a: $40
    ld a, a                                       ; $480b: $7f
    dec c                                         ; $480c: $0d
    ld [$8180], sp                                ; $480d: $08 $80 $81
    add d                                         ; $4810: $82
    add e                                         ; $4811: $83
    add h                                         ; $4812: $84
    add l                                         ; $4813: $85
    nop                                           ; $4814: $00
    add [hl]                                      ; $4815: $86
    add a                                         ; $4816: $87
    adc b                                         ; $4817: $88
    adc c                                         ; $4818: $89
    adc d                                         ; $4819: $8a
    adc e                                         ; $481a: $8b
    adc h                                         ; $481b: $8c
    add [hl]                                      ; $481c: $86
    nop                                           ; $481d: $00
    adc e                                         ; $481e: $8b
    adc h                                         ; $481f: $8c
    add e                                         ; $4820: $83
    add d                                         ; $4821: $82
    add c                                         ; $4822: $81
    add b                                         ; $4823: $80
    adc l                                         ; $4824: $8d
    adc [hl]                                      ; $4825: $8e
    nop                                           ; $4826: $00
    adc a                                         ; $4827: $8f
    sub b                                         ; $4828: $90
    sub c                                         ; $4829: $91
    sub d                                         ; $482a: $92
    sub e                                         ; $482b: $93
    sub h                                         ; $482c: $94
    sub l                                         ; $482d: $95
    sub [hl]                                      ; $482e: $96
    nop                                           ; $482f: $00
    sub a                                         ; $4830: $97
    sub l                                         ; $4831: $95
    sub h                                         ; $4832: $94
    sub e                                         ; $4833: $93
    sub d                                         ; $4834: $92
    sub c                                         ; $4835: $91
    sub b                                         ; $4836: $90
    adc a                                         ; $4837: $8f
    nop                                           ; $4838: $00
    adc [hl]                                      ; $4839: $8e
    adc l                                         ; $483a: $8d
    sbc b                                         ; $483b: $98
    sbc c                                         ; $483c: $99
    sbc d                                         ; $483d: $9a
    sbc e                                         ; $483e: $9b
    sbc h                                         ; $483f: $9c
    sbc l                                         ; $4840: $9d
    nop                                           ; $4841: $00
    sbc [hl]                                      ; $4842: $9e
    sbc a                                         ; $4843: $9f
    and b                                         ; $4844: $a0
    and c                                         ; $4845: $a1
    and d                                         ; $4846: $a2
    and b                                         ; $4847: $a0
    sbc a                                         ; $4848: $9f
    sbc [hl]                                      ; $4849: $9e
    nop                                           ; $484a: $00
    sbc l                                         ; $484b: $9d
    sbc h                                         ; $484c: $9c
    sbc e                                         ; $484d: $9b
    sbc d                                         ; $484e: $9a
    sbc c                                         ; $484f: $99
    sbc b                                         ; $4850: $98
    and e                                         ; $4851: $a3
    and h                                         ; $4852: $a4
    nop                                           ; $4853: $00
    and l                                         ; $4854: $a5
    and [hl]                                      ; $4855: $a6
    and a                                         ; $4856: $a7
    xor b                                         ; $4857: $a8
    xor c                                         ; $4858: $a9
    xor d                                         ; $4859: $aa
    xor e                                         ; $485a: $ab
    xor h                                         ; $485b: $ac
    nop                                           ; $485c: $00
    xor l                                         ; $485d: $ad
    xor e                                         ; $485e: $ab
    xor d                                         ; $485f: $aa
    xor c                                         ; $4860: $a9
    xor b                                         ; $4861: $a8
    and a                                         ; $4862: $a7
    and [hl]                                      ; $4863: $a6
    and l                                         ; $4864: $a5
    nop                                           ; $4865: $00
    and h                                         ; $4866: $a4
    and e                                         ; $4867: $a3
    xor [hl]                                      ; $4868: $ae
    xor a                                         ; $4869: $af
    or b                                          ; $486a: $b0
    or c                                          ; $486b: $b1
    or d                                          ; $486c: $b2
    or e                                          ; $486d: $b3
    nop                                           ; $486e: $00
    or h                                          ; $486f: $b4
    or l                                          ; $4870: $b5
    or [hl]                                       ; $4871: $b6
    or a                                          ; $4872: $b7
    cp b                                          ; $4873: $b8
    or [hl]                                       ; $4874: $b6
    or l                                          ; $4875: $b5
    or h                                          ; $4876: $b4
    nop                                           ; $4877: $00
    or e                                          ; $4878: $b3
    or d                                          ; $4879: $b2
    or c                                          ; $487a: $b1
    or b                                          ; $487b: $b0
    xor a                                         ; $487c: $af
    xor [hl]                                      ; $487d: $ae
    cp c                                          ; $487e: $b9
    cp d                                          ; $487f: $ba
    nop                                           ; $4880: $00
    cp e                                          ; $4881: $bb
    cp h                                          ; $4882: $bc
    cp l                                          ; $4883: $bd
    cp [hl]                                       ; $4884: $be
    cp a                                          ; $4885: $bf
    ret nz                                        ; $4886: $c0

    pop bc                                        ; $4887: $c1
    jp nz, $c300                                  ; $4888: $c2 $00 $c3

    pop bc                                        ; $488b: $c1
    ret nz                                        ; $488c: $c0

    cp a                                          ; $488d: $bf
    cp [hl]                                       ; $488e: $be
    cp l                                          ; $488f: $bd
    cp h                                          ; $4890: $bc
    cp e                                          ; $4891: $bb
    nop                                           ; $4892: $00
    cp d                                          ; $4893: $ba
    cp c                                          ; $4894: $b9
    call nz, $c6c5                                ; $4895: $c4 $c5 $c6
    rst $00                                       ; $4898: $c7
    ret z                                         ; $4899: $c8

    ret                                           ; $489a: $c9


    nop                                           ; $489b: $00
    jp z, $cccb                                   ; $489c: $ca $cb $cc

    call $ccce                                    ; $489f: $cd $ce $cc
    set 1, d                                      ; $48a2: $cb $ca
    nop                                           ; $48a4: $00
    ret                                           ; $48a5: $c9


    ret z                                         ; $48a6: $c8

    rst $00                                       ; $48a7: $c7
    add $c5                                       ; $48a8: $c6 $c5
    call nz, $d0cf                                ; $48aa: $c4 $cf $d0
    nop                                           ; $48ad: $00
    pop de                                        ; $48ae: $d1
    jp nc, $d4d3                                  ; $48af: $d2 $d3 $d4

    push de                                       ; $48b2: $d5
    sub $d7                                       ; $48b3: $d6 $d7
    ret c                                         ; $48b5: $d8

    nop                                           ; $48b6: $00
    and d                                         ; $48b7: $a2
    rst $10                                       ; $48b8: $d7
    sub $d5                                       ; $48b9: $d6 $d5
    call nc, $d2d3                                ; $48bb: $d4 $d3 $d2
    pop de                                        ; $48be: $d1
    nop                                           ; $48bf: $00
    ret nc                                        ; $48c0: $d0

    rst $08                                       ; $48c1: $cf
    reti                                          ; $48c2: $d9


    jp c, $dcdb                                   ; $48c3: $da $db $dc

    db $dd                                        ; $48c6: $dd
    sbc $00                                       ; $48c7: $de $00
    rst $18                                       ; $48c9: $df
    ldh [$e1], a                                  ; $48ca: $e0 $e1
    ld [c], a                                     ; $48cc: $e2
    xor l                                         ; $48cd: $ad
    pop hl                                        ; $48ce: $e1
    ldh [$df], a                                  ; $48cf: $e0 $df
    nop                                           ; $48d1: $00
    sbc $dd                                       ; $48d2: $de $dd
    call c, $dadb                                 ; $48d4: $dc $db $da
    reti                                          ; $48d7: $d9


    db $e3                                        ; $48d8: $e3
    db $e4                                        ; $48d9: $e4
    ld [$e6e5], sp                                ; $48da: $08 $e5 $e6
    rst $20                                       ; $48dd: $e7
    cp b                                          ; $48de: $b8
    inc b                                         ; $48df: $04
    nop                                           ; $48e0: $00
    or a                                          ; $48e1: $b7
    cp b                                          ; $48e2: $b8
    rst $20                                       ; $48e3: $e7
    ld [hl+], a                                   ; $48e4: $22
    and $e5                                       ; $48e5: $e6 $e5
    inc b                                         ; $48e7: $04
    ld [$e3e4], sp                                ; $48e8: $08 $e4 $e3
    inc bc                                        ; $48eb: $03
    ld bc, $0528                                  ; $48ec: $01 $28 $05
    ld [hl], h                                    ; $48ef: $74
    dec b                                         ; $48f0: $05
    ld b, $38                                     ; $48f1: $06 $38
    inc b                                         ; $48f3: $04
    ld hl, sp+$37                                 ; $48f4: $f8 $37
    db $10                                        ; $48f6: $10
    ld c, $01                                     ; $48f7: $0e $01
    jr c, jr_0cb_4907                             ; $48f9: $38 $0c

    inc c                                         ; $48fb: $0c
    ld h, h                                       ; $48fc: $64
    ld l, $03                                     ; $48fd: $2e $03
    nop                                           ; $48ff: $00
    ld bc, $0f00                                  ; $4900: $01 $00 $0f
    add hl, bc                                    ; $4903: $09
    ld [bc], a                                    ; $4904: $02
    db $10                                        ; $4905: $10
    rrca                                          ; $4906: $0f

jr_0cb_4907:
    add hl, bc                                    ; $4907: $09
    ld [bc], a                                    ; $4908: $02
    add hl, bc                                    ; $4909: $09
    add hl, bc                                    ; $490a: $09
    add hl, hl                                    ; $490b: $29
    ld l, $2e                                     ; $490c: $2e $2e
    cpl                                           ; $490e: $2f
    inc bc                                        ; $490f: $03
    nop                                           ; $4910: $00
    cpl                                           ; $4911: $2f
    ld d, b                                       ; $4912: $50
    cpl                                           ; $4913: $2f
    inc de                                        ; $4914: $13
    jr jr_0cb_4920                                ; $4915: $18 $09

    ld d, $00                                     ; $4917: $16 $00
    rrca                                          ; $4919: $0f
    add hl, hl                                    ; $491a: $29
    cpl                                           ; $491b: $2f
    add hl, hl                                    ; $491c: $29
    ld a, $29                                     ; $491d: $3e $29
    cpl                                           ; $491f: $2f

jr_0cb_4920:
    inc b                                         ; $4920: $04
    ld [$000c], sp                                ; $4921: $08 $0c $00
    ld de, $1708                                  ; $4924: $11 $08 $17

jr_0cb_4927:
    ld [$1014], sp                                ; $4927: $08 $14 $10
    add hl, hl                                    ; $492a: $29
    rst $30                                       ; $492b: $f7
    ld bc, $3500                                  ; $492c: $01 $00 $35
    ld [$083c], sp                                ; $492f: $08 $3c $08
    ld a, $00                                     ; $4932: $3e $00
    cpl                                           ; $4934: $2f
    ld [de], a                                    ; $4935: $12
    db $10                                        ; $4936: $10
    ld a, [hl+]                                   ; $4937: $2a
    nop                                           ; $4938: $00
    ld [hl], $10                                  ; $4939: $36 $10

jr_0cb_493b:
    rst $38                                       ; $493b: $ff
    ld a, [hl+]                                   ; $493c: $2a
    jr jr_0cb_4978                                ; $493d: $18 $39

    nop                                           ; $493f: $00
    ld c, l                                       ; $4940: $4d
    nop                                           ; $4941: $00
    ld b, d                                       ; $4942: $42
    nop                                           ; $4943: $00
    inc hl                                        ; $4944: $23
    jr jr_0cb_4998                                ; $4945: $18 $51

    ld [$1028], sp                                ; $4947: $08 $28 $10
    inc b                                         ; $494a: $04
    db $10                                        ; $494b: $10
    db $fd                                        ; $494c: $fd
    inc a                                         ; $494d: $3c
    jr jr_0cb_4990                                ; $494e: $18 $40

    db $10                                        ; $4950: $10
    inc de                                        ; $4951: $13
    db $10                                        ; $4952: $10
    ld d, e                                       ; $4953: $53
    ld [$0084], sp                                ; $4954: $08 $84 $00
    ld h, $18                                     ; $4957: $26 $18
    rrca                                          ; $4959: $0f
    ld h, h                                       ; $495a: $64
    nop                                           ; $495b: $00
    db $fc                                        ; $495c: $fc
    ld h, l                                       ; $495d: $65
    db $10                                        ; $495e: $10
    inc a                                         ; $495f: $3c
    ld [$089a], sp                                ; $4960: $08 $9a $08
    ld l, d                                       ; $4963: $6a
    db $10                                        ; $4964: $10
    ld h, h                                       ; $4965: $64
    nop                                           ; $4966: $00
    ld a, h                                       ; $4967: $7c
    ld [$292f], sp                                ; $4968: $08 $2f $29
    inc d                                         ; $496b: $14
    nop                                           ; $496c: $00
    dec c                                         ; $496d: $0d

jr_0cb_496e:
    nop                                           ; $496e: $00
    sbc l                                         ; $496f: $9d
    nop                                           ; $4970: $00
    nop                                           ; $4971: $00
    ld l, b                                       ; $4972: $68
    ld l, c                                       ; $4973: $69
    ld l, d                                       ; $4974: $6a
    ld l, d                                       ; $4975: $6a
    ld l, d                                       ; $4976: $6a
    ld l, e                                       ; $4977: $6b

jr_0cb_4978:
    ld l, h                                       ; $4978: $6c
    ld l, l                                       ; $4979: $6d
    ld [hl+], a                                   ; $497a: $22
    ld l, [hl]                                    ; $497b: $6e
    ld l, a                                       ; $497c: $6f
    ld bc, $7008                                  ; $497d: $01 $08 $70
    ld [hl], c                                    ; $4980: $71
    ld [hl], d                                    ; $4981: $72
    ld [$7300], sp                                ; $4982: $08 $00 $73
    nop                                           ; $4985: $00
    ld [hl], h                                    ; $4986: $74
    ld [hl], l                                    ; $4987: $75
    ld [hl], l                                    ; $4988: $75
    ld [hl], l                                    ; $4989: $75
    halt                                          ; $498a: $76
    ld [hl], a                                    ; $498b: $77
    ld a, b                                       ; $498c: $78
    ld a, c                                       ; $498d: $79
    ld b, d                                       ; $498e: $42
    ld a, d                                       ; $498f: $7a

jr_0cb_4990:
    inc b                                         ; $4990: $04
    nop                                           ; $4991: $00
    ld [hl], a                                    ; $4992: $77
    ld a, b                                       ; $4993: $78
    ld a, e                                       ; $4994: $7b
    ld a, h                                       ; $4995: $7c
    dec bc                                        ; $4996: $0b
    nop                                           ; $4997: $00

jr_0cb_4998:
    ld a, l                                       ; $4998: $7d
    ld b, $7e                                     ; $4999: $06 $7e
    ld a, a                                       ; $499b: $7f
    add b                                         ; $499c: $80
    add c                                         ; $499d: $81
    add d                                         ; $499e: $82
    inc b                                         ; $499f: $04
    jr nz, jr_0cb_49ad                            ; $49a0: $20 $0b

    jr nz, jr_0cb_4927                            ; $49a2: $20 $83

    ld [$8584], sp                                ; $49a4: $08 $84 $85
    add [hl]                                      ; $49a7: $86
    add a                                         ; $49a8: $87
    dec b                                         ; $49a9: $05
    ld h, b                                       ; $49aa: $60
    adc b                                         ; $49ab: $88
    adc c                                         ; $49ac: $89

jr_0cb_49ad:
    adc d                                         ; $49ad: $8a
    jr nz, jr_0cb_493b                            ; $49ae: $20 $8b

    adc h                                         ; $49b0: $8c
    dec b                                         ; $49b1: $05
    ld h, b                                       ; $49b2: $60
    adc l                                         ; $49b3: $8d
    adc [hl]                                      ; $49b4: $8e
    adc a                                         ; $49b5: $8f
    sub b                                         ; $49b6: $90
    sub c                                         ; $49b7: $91
    add d                                         ; $49b8: $82
    dec b                                         ; $49b9: $05
    ld h, b                                       ; $49ba: $60
    sub d                                         ; $49bb: $92
    sub e                                         ; $49bc: $93
    sub h                                         ; $49bd: $94
    sub l                                         ; $49be: $95
    sub [hl]                                      ; $49bf: $96
    dec b                                         ; $49c0: $05
    ld h, b                                       ; $49c1: $60
    sub a                                         ; $49c2: $97
    ld [$9998], sp                                ; $49c3: $08 $98 $99
    sbc d                                         ; $49c6: $9a
    sbc e                                         ; $49c7: $9b
    dec b                                         ; $49c8: $05
    ld h, b                                       ; $49c9: $60
    sbc h                                         ; $49ca: $9c
    sbc l                                         ; $49cb: $9d
    sbc [hl]                                      ; $49cc: $9e
    jr nz, jr_0cb_496e                            ; $49cd: $20 $9f

    and b                                         ; $49cf: $a0
    dec b                                         ; $49d0: $05
    ld h, b                                       ; $49d1: $60
    and c                                         ; $49d2: $a1
    and d                                         ; $49d3: $a2
    and e                                         ; $49d4: $a3
    and h                                         ; $49d5: $a4
    and l                                         ; $49d6: $a5
    add d                                         ; $49d7: $82
    dec b                                         ; $49d8: $05
    ld h, b                                       ; $49d9: $60
    and [hl]                                      ; $49da: $a6
    and a                                         ; $49db: $a7
    xor b                                         ; $49dc: $a8
    xor c                                         ; $49dd: $a9
    xor d                                         ; $49de: $aa
    dec b                                         ; $49df: $05
    ld h, b                                       ; $49e0: $60
    xor e                                         ; $49e1: $ab
    ld [$adac], sp                                ; $49e2: $08 $ac $ad
    xor [hl]                                      ; $49e5: $ae
    xor a                                         ; $49e6: $af
    dec b                                         ; $49e7: $05
    ld h, b                                       ; $49e8: $60
    or b                                          ; $49e9: $b0
    or c                                          ; $49ea: $b1
    or d                                          ; $49eb: $b2
    inc l                                         ; $49ec: $2c
    or e                                          ; $49ed: $b3
    or h                                          ; $49ee: $b4
    dec b                                         ; $49ef: $05
    ld h, b                                       ; $49f0: $60
    inc bc                                        ; $49f1: $03
    ld bc, $23f8                                  ; $49f2: $01 $f8 $23
    jr z, jr_0cb_4a02                             ; $49f5: $28 $0b

    dec bc                                        ; $49f7: $0b
    ld l, b                                       ; $49f8: $68
    dec bc                                        ; $49f9: $0b
    inc b                                         ; $49fa: $04
    jr nz, jr_0cb_4a08                            ; $49fb: $20 $0b

    jr nz, jr_0cb_4a0d                            ; $49fd: $20 $0e

    ld bc, $0980                                  ; $49ff: $01 $80 $09

jr_0cb_4a02:
    add hl, bc                                    ; $4a02: $09
    rrca                                          ; $4a03: $0f
    inc l                                         ; $4a04: $2c
    rrca                                          ; $4a05: $0f
    add hl, bc                                    ; $4a06: $09
    ld [bc], a                                    ; $4a07: $02

jr_0cb_4a08:
    jr jr_0cb_4a16                                ; $4a08: $18 $0c

    inc c                                         ; $4a0a: $0c
    nop                                           ; $4a0b: $00
    dec bc                                        ; $4a0c: $0b

jr_0cb_4a0d:
    nop                                           ; $4a0d: $00
    add hl, bc                                    ; $4a0e: $09
    inc c                                         ; $4a0f: $0c
    rlca                                          ; $4a10: $07
    rrca                                          ; $4a11: $0f
    inc c                                         ; $4a12: $0c
    add hl, bc                                    ; $4a13: $09
    inc c                                         ; $4a14: $0c
    inc c                                         ; $4a15: $0c

jr_0cb_4a16:
    dec d                                         ; $4a16: $15
    jr nz, jr_0cb_4a25                            ; $4a17: $20 $0c

    nop                                           ; $4a19: $00
    inc de                                        ; $4a1a: $13
    nop                                           ; $4a1b: $00
    ei                                            ; $4a1c: $fb
    inc hl                                        ; $4a1d: $23
    db $10                                        ; $4a1e: $10
    dec de                                        ; $4a1f: $1b
    nop                                           ; $4a20: $00
    dec l                                         ; $4a21: $2d
    nop                                           ; $4a22: $00
    ld l, $18                                     ; $4a23: $2e $18

jr_0cb_4a25:
    dec bc                                        ; $4a25: $0b
    jr nz, jr_0cb_4a34                            ; $4a26: $20 $0c

    jr c, jr_0cb_4a3a                             ; $4a28: $38 $10

    ld [$ff20], sp                                ; $4a2a: $08 $20 $ff
    inc hl                                        ; $4a2d: $23
    ld [$0011], sp                                ; $4a2e: $08 $11 $00
    ld bc, $2918                                  ; $4a31: $01 $18 $29

jr_0cb_4a34:
    nop                                           ; $4a34: $00
    jr c, jr_0cb_4a47                             ; $4a35: $38 $10

    ld c, a                                       ; $4a37: $4f
    nop                                           ; $4a38: $00
    ld b, h                                       ; $4a39: $44

jr_0cb_4a3a:
    db $10                                        ; $4a3a: $10
    ld b, b                                       ; $4a3b: $40
    db $10                                        ; $4a3c: $10
    cp a                                          ; $4a3d: $bf
    ld d, l                                       ; $4a3e: $55
    ld [$2c0c], sp                                ; $4a3f: $08 $0c $2c
    jr nc, jr_0cb_4a93                            ; $4a42: $30 $4f

    ld [$285d], sp                                ; $4a44: $08 $5d $28

jr_0cb_4a47:
    inc c                                         ; $4a47: $0c
    db $10                                        ; $4a48: $10
    ld d, [hl]                                    ; $4a49: $56
    jr @+$06                                      ; $4a4a: $18 $04

    jr nz, @-$06                                  ; $4a4c: $20 $f8

    inc c                                         ; $4a4e: $0c
    jr c, jr_0cb_4ab8                             ; $4a4f: $38 $67

    ld [$182d], sp                                ; $4a51: $08 $2d $18
    ld [$a808], sp                                ; $4a54: $08 $08 $a8
    nop                                           ; $4a57: $00
    inc d                                         ; $4a58: $14
    nop                                           ; $4a59: $00
    dec c                                         ; $4a5a: $0d
    nop                                           ; $4a5b: $00
    ld [hl], $01                                  ; $4a5c: $36 $01
    ld bc, $6968                                  ; $4a5e: $01 $68 $69
    ld l, d                                       ; $4a61: $6a
    ld l, e                                       ; $4a62: $6b
    ld l, b                                       ; $4a63: $68
    ld l, h                                       ; $4a64: $6c
    ld l, l                                       ; $4a65: $6d
    ld b, $00                                     ; $4a66: $06 $00
    and b                                         ; $4a68: $a0
    add hl, bc                                    ; $4a69: $09
    ld [$0f68], sp                                ; $4a6a: $08 $68 $0f
    db $10                                        ; $4a6d: $10
    ld l, [hl]                                    ; $4a6e: $6e
    ld l, a                                       ; $4a6f: $6f
    ld l, d                                       ; $4a70: $6a
    ld [hl], b                                    ; $4a71: $70
    ld l, [hl]                                    ; $4a72: $6e
    ld h, b                                       ; $4a73: $60
    ld l, [hl]                                    ; $4a74: $6e
    ld b, $08                                     ; $4a75: $06 $08
    add hl, bc                                    ; $4a77: $09
    jr nc, @+$70                                  ; $4a78: $30 $6e

    ld [hl], c                                    ; $4a7a: $71
    ld [hl], c                                    ; $4a7b: $71
    ld [hl], d                                    ; $4a7c: $72
    ld [hl], c                                    ; $4a7d: $71
    ldh [rSB], a                                  ; $4a7e: $e0 $01
    ld [$0006], sp                                ; $4a80: $08 $06 $00
    add hl, bc                                    ; $4a83: $09
    jr nc, jr_0cb_4af9                            ; $4a84: $30 $73

    ld [hl], h                                    ; $4a86: $74
    ld [hl], l                                    ; $4a87: $75
    halt                                          ; $4a88: $76
    ld [hl], a                                    ; $4a89: $77
    nop                                           ; $4a8a: $00
    ld a, b                                       ; $4a8b: $78
    ld a, c                                       ; $4a8c: $79
    ld a, d                                       ; $4a8d: $7a
    ld a, e                                       ; $4a8e: $7b
    ld a, h                                       ; $4a8f: $7c
    ld a, l                                       ; $4a90: $7d
    ld a, [hl]                                    ; $4a91: $7e
    ld a, a                                       ; $4a92: $7f

jr_0cb_4a93:
    nop                                           ; $4a93: $00
    add b                                         ; $4a94: $80
    add c                                         ; $4a95: $81
    add d                                         ; $4a96: $82
    add e                                         ; $4a97: $83
    add h                                         ; $4a98: $84
    add l                                         ; $4a99: $85
    add [hl]                                      ; $4a9a: $86
    add a                                         ; $4a9b: $87
    nop                                           ; $4a9c: $00
    adc b                                         ; $4a9d: $88
    adc c                                         ; $4a9e: $89
    adc d                                         ; $4a9f: $8a
    adc e                                         ; $4aa0: $8b
    adc h                                         ; $4aa1: $8c
    adc l                                         ; $4aa2: $8d
    adc [hl]                                      ; $4aa3: $8e
    adc a                                         ; $4aa4: $8f
    nop                                           ; $4aa5: $00
    sub b                                         ; $4aa6: $90
    sub c                                         ; $4aa7: $91
    sub d                                         ; $4aa8: $92
    sub e                                         ; $4aa9: $93
    sub h                                         ; $4aaa: $94
    sub l                                         ; $4aab: $95
    sub [hl]                                      ; $4aac: $96
    sub a                                         ; $4aad: $97
    nop                                           ; $4aae: $00
    sbc b                                         ; $4aaf: $98
    sbc c                                         ; $4ab0: $99
    sbc d                                         ; $4ab1: $9a
    sbc e                                         ; $4ab2: $9b
    sbc h                                         ; $4ab3: $9c
    sbc l                                         ; $4ab4: $9d
    sbc [hl]                                      ; $4ab5: $9e
    sbc a                                         ; $4ab6: $9f
    nop                                           ; $4ab7: $00

jr_0cb_4ab8:
    and b                                         ; $4ab8: $a0
    and c                                         ; $4ab9: $a1
    and d                                         ; $4aba: $a2
    and e                                         ; $4abb: $a3
    and h                                         ; $4abc: $a4
    and l                                         ; $4abd: $a5
    and [hl]                                      ; $4abe: $a6
    and a                                         ; $4abf: $a7
    nop                                           ; $4ac0: $00
    xor b                                         ; $4ac1: $a8
    xor c                                         ; $4ac2: $a9
    xor d                                         ; $4ac3: $aa
    xor e                                         ; $4ac4: $ab
    xor h                                         ; $4ac5: $ac
    xor l                                         ; $4ac6: $ad
    xor [hl]                                      ; $4ac7: $ae
    xor a                                         ; $4ac8: $af
    nop                                           ; $4ac9: $00
    or b                                          ; $4aca: $b0
    or c                                          ; $4acb: $b1
    or d                                          ; $4acc: $b2
    or e                                          ; $4acd: $b3
    or h                                          ; $4ace: $b4
    or l                                          ; $4acf: $b5
    or [hl]                                       ; $4ad0: $b6
    or a                                          ; $4ad1: $b7
    nop                                           ; $4ad2: $00
    cp b                                          ; $4ad3: $b8
    cp c                                          ; $4ad4: $b9
    cp d                                          ; $4ad5: $ba
    cp e                                          ; $4ad6: $bb
    cp h                                          ; $4ad7: $bc
    cp l                                          ; $4ad8: $bd
    cp [hl]                                       ; $4ad9: $be
    cp a                                          ; $4ada: $bf
    nop                                           ; $4adb: $00
    ret nz                                        ; $4adc: $c0

    pop bc                                        ; $4add: $c1
    jp nz, $c4c3                                  ; $4ade: $c2 $c3 $c4

    push bc                                       ; $4ae1: $c5
    add $c7                                       ; $4ae2: $c6 $c7
    nop                                           ; $4ae4: $00
    ret z                                         ; $4ae5: $c8

    ret                                           ; $4ae6: $c9


    jp z, $cccb                                   ; $4ae7: $ca $cb $cc

    call $cfce                                    ; $4aea: $cd $ce $cf
    nop                                           ; $4aed: $00
    ret nc                                        ; $4aee: $d0

    pop de                                        ; $4aef: $d1
    jp nc, $d4d3                                  ; $4af0: $d2 $d3 $d4

    push de                                       ; $4af3: $d5
    sub $d7                                       ; $4af4: $d6 $d7
    nop                                           ; $4af6: $00
    ret c                                         ; $4af7: $d8

    reti                                          ; $4af8: $d9


jr_0cb_4af9:
    jp c, $dcdb                                   ; $4af9: $da $db $dc

    db $dd                                        ; $4afc: $dd
    sbc $df                                       ; $4afd: $de $df
    nop                                           ; $4aff: $00
    ldh [$e1], a                                  ; $4b00: $e0 $e1
    ld [c], a                                     ; $4b02: $e2
    db $e3                                        ; $4b03: $e3
    db $e4                                        ; $4b04: $e4
    push hl                                       ; $4b05: $e5
    and $e7                                       ; $4b06: $e6 $e7
    nop                                           ; $4b08: $00
    add sp, -$17                                  ; $4b09: $e8 $e9
    ld [$eceb], a                                 ; $4b0b: $ea $eb $ec
    db $ed                                        ; $4b0e: $ed
    xor $ef                                       ; $4b0f: $ee $ef
    nop                                           ; $4b11: $00
    ldh a, [$f1]                                  ; $4b12: $f0 $f1
    ld a, [c]                                     ; $4b14: $f2
    di                                            ; $4b15: $f3
    db $f4                                        ; $4b16: $f4
    push af                                       ; $4b17: $f5
    or $f7                                        ; $4b18: $f6 $f7
    nop                                           ; $4b1a: $00
    ld hl, sp-$07                                 ; $4b1b: $f8 $f9
    ld a, [$fcfb]                                 ; $4b1d: $fa $fb $fc
    db $fd                                        ; $4b20: $fd
    cp $ff                                        ; $4b21: $fe $ff
    nop                                           ; $4b23: $00
    nop                                           ; $4b24: $00
    ld bc, $0302                                  ; $4b25: $01 $02 $03
    inc b                                         ; $4b28: $04
    dec b                                         ; $4b29: $05
    ld b, $07                                     ; $4b2a: $06 $07
    nop                                           ; $4b2c: $00
    ld [$0a09], sp                                ; $4b2d: $08 $09 $0a
    dec bc                                        ; $4b30: $0b
    inc c                                         ; $4b31: $0c
    dec c                                         ; $4b32: $0d
    ld c, $0f                                     ; $4b33: $0e $0f
    nop                                           ; $4b35: $00
    db $10                                        ; $4b36: $10
    ld de, $1312                                  ; $4b37: $11 $12 $13
    inc d                                         ; $4b3a: $14
    dec d                                         ; $4b3b: $15
    ld d, $17                                     ; $4b3c: $16 $17
    nop                                           ; $4b3e: $00
    jr jr_0cb_4b5a                                ; $4b3f: $18 $19

    ld a, [de]                                    ; $4b41: $1a
    dec de                                        ; $4b42: $1b
    inc e                                         ; $4b43: $1c
    dec e                                         ; $4b44: $1d
    ld e, $1f                                     ; $4b45: $1e $1f
    nop                                           ; $4b47: $00
    jr nz, @+$23                                  ; $4b48: $20 $21

    ld [hl+], a                                   ; $4b4a: $22
    inc hl                                        ; $4b4b: $23
    inc h                                         ; $4b4c: $24
    dec h                                         ; $4b4d: $25
    ld h, $27                                     ; $4b4e: $26 $27
    nop                                           ; $4b50: $00
    jr z, jr_0cb_4b7c                             ; $4b51: $28 $29

    ld a, [hl+]                                   ; $4b53: $2a
    dec hl                                        ; $4b54: $2b
    inc l                                         ; $4b55: $2c
    dec l                                         ; $4b56: $2d
    ld l, $2f                                     ; $4b57: $2e $2f
    nop                                           ; $4b59: $00

jr_0cb_4b5a:
    jr nc, jr_0cb_4b8d                            ; $4b5a: $30 $31

    ld [hl-], a                                   ; $4b5c: $32
    inc sp                                        ; $4b5d: $33
    inc [hl]                                      ; $4b5e: $34
    dec [hl]                                      ; $4b5f: $35
    ld [hl], $37                                  ; $4b60: $36 $37
    ld bc, $3938                                  ; $4b62: $01 $38 $39
    ld a, [hl-]                                   ; $4b65: $3a
    dec b                                         ; $4b66: $05
    dec b                                         ; $4b67: $05
    ld [bc], a                                    ; $4b68: $02
    dec b                                         ; $4b69: $05
    ld bc, $f508                                  ; $4b6a: $01 $08 $f5
    ld b, $00                                     ; $4b6d: $06 $00
    add hl, bc                                    ; $4b6f: $09
    jr c, @+$03                                   ; $4b70: $38 $01

    ld hl, sp+$23                                 ; $4b72: $f8 $23
    db $10                                        ; $4b74: $10
    inc b                                         ; $4b75: $04
    ld bc, $0c48                                  ; $4b76: $01 $48 $0c
    ld bc, $0018                                  ; $4b79: $01 $18 $00

jr_0cb_4b7c:
    rrca                                          ; $4b7c: $0f
    rrca                                          ; $4b7d: $0f
    rrca                                          ; $4b7e: $0f
    add hl, bc                                    ; $4b7f: $09
    ld a, [bc]                                    ; $4b80: $0a
    add hl, bc                                    ; $4b81: $09
    ld c, $09                                     ; $4b82: $0e $09
    inc d                                         ; $4b84: $14
    add hl, bc                                    ; $4b85: $09
    ld a, [bc]                                    ; $4b86: $0a
    ld c, $06                                     ; $4b87: $0e $06
    nop                                           ; $4b89: $00
    ld c, $09                                     ; $4b8a: $0e $09
    nop                                           ; $4b8c: $00

jr_0cb_4b8d:
    add hl, bc                                    ; $4b8d: $09
    add hl, bc                                    ; $4b8e: $09
    ld h, d                                       ; $4b8f: $62
    rrca                                          ; $4b90: $0f
    rlca                                          ; $4b91: $07
    nop                                           ; $4b92: $00
    inc d                                         ; $4b93: $14
    nop                                           ; $4b94: $00
    ld a, [bc]                                    ; $4b95: $0a
    ld a, [bc]                                    ; $4b96: $0a
    ld a, [bc]                                    ; $4b97: $0a
    ld c, $08                                     ; $4b98: $0e $08
    ld a, [bc]                                    ; $4b9a: $0a
    sbc a                                         ; $4b9b: $9f
    jr nz, jr_0cb_4bae                            ; $4b9c: $20 $10

    rrca                                          ; $4b9e: $0f
    ld c, $21                                     ; $4b9f: $0e $21
    nop                                           ; $4ba1: $00
    jr z, jr_0cb_4bac                             ; $4ba2: $28 $08

    ld a, [hl+]                                   ; $4ba4: $2a
    nop                                           ; $4ba5: $00
    rla                                           ; $4ba6: $17
    nop                                           ; $4ba7: $00
    ld a, [de]                                    ; $4ba8: $1a
    ld [$21f4], sp                                ; $4ba9: $08 $f4 $21

jr_0cb_4bac:
    nop                                           ; $4bac: $00
    ld [de], a                                    ; $4bad: $12

jr_0cb_4bae:
    jr nc, jr_0cb_4bdf                            ; $4bae: $30 $2f

    ld [$0046], sp                                ; $4bb0: $08 $46 $00
    ld a, [bc]                                    ; $4bb3: $0a
    ld b, [hl]                                    ; $4bb4: $46
    ld [$0a0e], sp                                ; $4bb5: $08 $0e $0a
    ccf                                           ; $4bb8: $3f
    rrca                                          ; $4bb9: $0f
    rrca                                          ; $4bba: $0f
    inc a                                         ; $4bbb: $3c
    nop                                           ; $4bbc: $00
    jr nc, jr_0cb_4bc7                            ; $4bbd: $30 $08

    ld e, l                                       ; $4bbf: $5d
    db $10                                        ; $4bc0: $10
    ld sp, $5610                                  ; $4bc1: $31 $10 $56
    nop                                           ; $4bc4: $00
    dec e                                         ; $4bc5: $1d
    nop                                           ; $4bc6: $00

jr_0cb_4bc7:
    ei                                            ; $4bc7: $fb
    ld c, b                                       ; $4bc8: $48
    nop                                           ; $4bc9: $00
    jr c, jr_0cb_4bd4                             ; $4bca: $38 $08

    ld [hl], h                                    ; $4bcc: $74
    ld [$1861], sp                                ; $4bcd: $08 $61 $18
    halt                                          ; $4bd0: $76
    nop                                           ; $4bd1: $00
    ld a, [bc]                                    ; $4bd2: $0a
    inc de                                        ; $4bd3: $13

jr_0cb_4bd4:
    ld [$0075], sp                                ; $4bd4: $08 $75 $00
    rst $38                                       ; $4bd7: $ff
    ld [hl], a                                    ; $4bd8: $77
    nop                                           ; $4bd9: $00
    jr nc, jr_0cb_4bdc                            ; $4bda: $30 $00

jr_0cb_4bdc:
    rlca                                          ; $4bdc: $07
    nop                                           ; $4bdd: $00
    sub b                                         ; $4bde: $90

jr_0cb_4bdf:
    ld [$0001], sp                                ; $4bdf: $08 $01 $00
    sub e                                         ; $4be2: $93
    nop                                           ; $4be3: $00
    sbc l                                         ; $4be4: $9d
    db $10                                        ; $4be5: $10
    and d                                         ; $4be6: $a2
    nop                                           ; $4be7: $00
    ld [hl], b                                    ; $4be8: $70
    ld a, [bc]                                    ; $4be9: $0a
    inc h                                         ; $4bea: $24
    db $10                                        ; $4beb: $10
    inc d                                         ; $4bec: $14
    ld [$00af], sp                                ; $4bed: $08 $af $00
    rrca                                          ; $4bf0: $0f
    rrca                                          ; $4bf1: $0f
    inc d                                         ; $4bf2: $14
    nop                                           ; $4bf3: $00
    dec c                                         ; $4bf4: $0d
    nop                                           ; $4bf5: $00
    ld a, l                                       ; $4bf6: $7d
    nop                                           ; $4bf7: $00
    ld [bc], a                                    ; $4bf8: $02
    ld l, b                                       ; $4bf9: $68
    ld l, c                                       ; $4bfa: $69
    ld l, c                                       ; $4bfb: $69
    ld l, c                                       ; $4bfc: $69
    ld l, d                                       ; $4bfd: $6a
    ld l, e                                       ; $4bfe: $6b
    dec b                                         ; $4bff: $05
    nop                                           ; $4c00: $00
    ld l, c                                       ; $4c01: $69
    nop                                           ; $4c02: $00
    ld l, h                                       ; $4c03: $6c
    ld l, l                                       ; $4c04: $6d
    ld l, [hl]                                    ; $4c05: $6e
    ld l, a                                       ; $4c06: $6f
    ld l, c                                       ; $4c07: $69
    ld l, c                                       ; $4c08: $69
    ld [hl], b                                    ; $4c09: $70
    ld [hl], c                                    ; $4c0a: $71
    nop                                           ; $4c0b: $00
    ld [hl], d                                    ; $4c0c: $72
    ld [hl], e                                    ; $4c0d: $73
    ld [hl], h                                    ; $4c0e: $74
    ld [hl], l                                    ; $4c0f: $75
    halt                                          ; $4c10: $76
    ld [hl], a                                    ; $4c11: $77
    halt                                          ; $4c12: $76
    ld [hl], a                                    ; $4c13: $77
    adc b                                         ; $4c14: $88
    ld b, $08                                     ; $4c15: $06 $08
    ld a, b                                       ; $4c17: $78
    ld a, c                                       ; $4c18: $79
    ld a, d                                       ; $4c19: $7a
    inc c                                         ; $4c1a: $0c
    nop                                           ; $4c1b: $00
    ld a, e                                       ; $4c1c: $7b
    ld a, h                                       ; $4c1d: $7c
    ld a, l                                       ; $4c1e: $7d
    ld bc, $7e73                                  ; $4c1f: $01 $73 $7e
    ld a, a                                       ; $4c22: $7f
    add b                                         ; $4c23: $80
    add c                                         ; $4c24: $81
    add b                                         ; $4c25: $80
    add c                                         ; $4c26: $81
    ld b, $38                                     ; $4c27: $06 $38
    nop                                           ; $4c29: $00
    add d                                         ; $4c2a: $82
    add e                                         ; $4c2b: $83
    add h                                         ; $4c2c: $84
    add l                                         ; $4c2d: $85
    add [hl]                                      ; $4c2e: $86
    add a                                         ; $4c2f: $87
    adc b                                         ; $4c30: $88
    adc c                                         ; $4c31: $89
    ld [$8b8a], sp                                ; $4c32: $08 $8a $8b
    adc h                                         ; $4c35: $8c
    adc l                                         ; $4c36: $8d
    ld [$8e28], sp                                ; $4c37: $08 $28 $8e
    adc a                                         ; $4c3a: $8f
    sub b                                         ; $4c3b: $90
    nop                                           ; $4c3c: $00
    sub c                                         ; $4c3d: $91
    sub d                                         ; $4c3e: $92
    sub e                                         ; $4c3f: $93
    sub h                                         ; $4c40: $94
    sub l                                         ; $4c41: $95
    sub [hl]                                      ; $4c42: $96
    sub a                                         ; $4c43: $97
    sbc b                                         ; $4c44: $98
    ld b, b                                       ; $4c45: $40
    sbc c                                         ; $4c46: $99
    ld [$9a28], sp                                ; $4c47: $08 $28 $9a
    sbc e                                         ; $4c4a: $9b
    sbc h                                         ; $4c4b: $9c
    sbc l                                         ; $4c4c: $9d
    sbc [hl]                                      ; $4c4d: $9e
    sbc a                                         ; $4c4e: $9f
    ld [bc], a                                    ; $4c4f: $02
    and b                                         ; $4c50: $a0
    and c                                         ; $4c51: $a1
    and d                                         ; $4c52: $a2
    and e                                         ; $4c53: $a3
    and h                                         ; $4c54: $a4
    and l                                         ; $4c55: $a5
    ld [$a648], sp                                ; $4c56: $08 $48 $a6
    ld bc, $a8a7                                  ; $4c59: $01 $a7 $a8
    xor c                                         ; $4c5c: $a9
    xor d                                         ; $4c5d: $aa
    xor e                                         ; $4c5e: $ab
    xor h                                         ; $4c5f: $ac
    xor l                                         ; $4c60: $ad
    ld [$0048], sp                                ; $4c61: $08 $48 $00
    xor [hl]                                      ; $4c64: $ae
    xor a                                         ; $4c65: $af
    or b                                          ; $4c66: $b0
    or c                                          ; $4c67: $b1
    or d                                          ; $4c68: $b2
    or e                                          ; $4c69: $b3
    or h                                          ; $4c6a: $b4
    or l                                          ; $4c6b: $b5
    cp $08                                        ; $4c6c: $fe $08
    ld c, b                                       ; $4c6e: $48
    ld h, h                                       ; $4c6f: $64
    ld l, b                                       ; $4c70: $68
    ld [hl], h                                    ; $4c71: $74
    ld [$6864], sp                                ; $4c72: $08 $64 $68
    ld [hl], h                                    ; $4c75: $74
    ld [$f864], sp                                ; $4c76: $08 $64 $f8
    ld h, h                                       ; $4c79: $64
    cp b                                          ; $4c7a: $b8
    ld [bc], a                                    ; $4c7b: $02
    adc e                                         ; $4c7c: $8b
    ld bc, $0368                                  ; $4c7d: $01 $68 $03
    inc bc                                        ; $4c80: $03
    inc b                                         ; $4c81: $04
    inc d                                         ; $4c82: $14
    sbc b                                         ; $4c83: $98
    ld a, [bc]                                    ; $4c84: $0a
    ld bc, $0600                                  ; $4c85: $01 $00 $06
    ld b, b                                       ; $4c88: $40
    dec c                                         ; $4c89: $0d
    dec bc                                        ; $4c8a: $0b
    dec bc                                        ; $4c8b: $0b
    dec bc                                        ; $4c8c: $0b
    rrca                                          ; $4c8d: $0f
    ld bc, $1468                                  ; $4c8e: $01 $68 $14
    nop                                           ; $4c91: $00
    add hl, bc                                    ; $4c92: $09
    ld bc, $f8f8                                  ; $4c93: $01 $f8 $f8
    inc hl                                        ; $4c96: $23
    ld hl, sp+$45                                 ; $4c97: $f8 $45
    ld hl, sp+$67                                 ; $4c99: $f8 $67
    ld hl, sp-$77                                 ; $4c9b: $f8 $89
    ld hl, sp-$55                                 ; $4c9d: $f8 $ab
    jr nc, jr_0cb_4cb5                            ; $4c9f: $30 $14

    nop                                           ; $4ca1: $00
    dec c                                         ; $4ca2: $0d
    nop                                           ; $4ca3: $00
    sbc b                                         ; $4ca4: $98
    nop                                           ; $4ca5: $00
    nop                                           ; $4ca6: $00
    ld l, b                                       ; $4ca7: $68
    ld l, c                                       ; $4ca8: $69
    ld l, d                                       ; $4ca9: $6a
    ld l, e                                       ; $4caa: $6b
    ld l, h                                       ; $4cab: $6c
    ld l, l                                       ; $4cac: $6d
    ld l, [hl]                                    ; $4cad: $6e
    ld l, a                                       ; $4cae: $6f
    ld bc, $6b70                                  ; $4caf: $01 $70 $6b
    ld l, e                                       ; $4cb2: $6b
    ld [hl], c                                    ; $4cb3: $71
    ld [hl], d                                    ; $4cb4: $72

jr_0cb_4cb5:
    ld [hl], e                                    ; $4cb5: $73
    ld [hl], h                                    ; $4cb6: $74
    dec c                                         ; $4cb7: $0d
    nop                                           ; $4cb8: $00
    nop                                           ; $4cb9: $00
    ld [hl], l                                    ; $4cba: $75
    halt                                          ; $4cbb: $76
    ld [hl], a                                    ; $4cbc: $77
    ld a, b                                       ; $4cbd: $78
    ld a, c                                       ; $4cbe: $79
    ld a, d                                       ; $4cbf: $7a
    ld a, e                                       ; $4cc0: $7b
    ld a, h                                       ; $4cc1: $7c
    ld bc, $7e7d                                  ; $4cc2: $01 $7d $7e
    ld a, a                                       ; $4cc5: $7f
    ld a, d                                       ; $4cc6: $7a
    add b                                         ; $4cc7: $80
    add c                                         ; $4cc8: $81
    ld [hl], a                                    ; $4cc9: $77
    dec c                                         ; $4cca: $0d
    jr nz, jr_0cb_4ccd                            ; $4ccb: $20 $00

jr_0cb_4ccd:
    add d                                         ; $4ccd: $82
    add e                                         ; $4cce: $83
    add h                                         ; $4ccf: $84
    add l                                         ; $4cd0: $85
    add [hl]                                      ; $4cd1: $86
    add l                                         ; $4cd2: $85

jr_0cb_4cd3:
    add a                                         ; $4cd3: $87
    add d                                         ; $4cd4: $82
    jr @-$7b                                      ; $4cd5: $18 $83

    add l                                         ; $4cd7: $85
    add a                                         ; $4cd8: $87
    ld b, $08                                     ; $4cd9: $06 $08
    dec c                                         ; $4cdb: $0d
    db $10                                        ; $4cdc: $10
    adc b                                         ; $4cdd: $88
    adc c                                         ; $4cde: $89
    adc d                                         ; $4cdf: $8a
    inc b                                         ; $4ce0: $04
    adc e                                         ; $4ce1: $8b
    adc h                                         ; $4ce2: $8c
    adc l                                         ; $4ce3: $8d
    adc [hl]                                      ; $4ce4: $8e
    adc a                                         ; $4ce5: $8f
    ld [$9048], sp                                ; $4ce6: $08 $48 $90
    sub c                                         ; $4ce9: $91
    ld [bc], a                                    ; $4cea: $02
    sub d                                         ; $4ceb: $92
    sub e                                         ; $4cec: $93
    sub h                                         ; $4ced: $94
    sub l                                         ; $4cee: $95
    sub [hl]                                      ; $4cef: $96
    sub a                                         ; $4cf0: $97
    ld [$9848], sp                                ; $4cf1: $08 $48 $98
    ld bc, $9a99                                  ; $4cf4: $01 $99 $9a
    sbc e                                         ; $4cf7: $9b
    sbc h                                         ; $4cf8: $9c
    sbc l                                         ; $4cf9: $9d
    sbc [hl]                                      ; $4cfa: $9e
    sbc a                                         ; $4cfb: $9f
    ld [$0048], sp                                ; $4cfc: $08 $48 $00
    and b                                         ; $4cff: $a0
    and c                                         ; $4d00: $a1
    and d                                         ; $4d01: $a2
    and e                                         ; $4d02: $a3
    and h                                         ; $4d03: $a4
    and l                                         ; $4d04: $a5
    and [hl]                                      ; $4d05: $a6
    and a                                         ; $4d06: $a7
    add b                                         ; $4d07: $80
    ld [$a848], sp                                ; $4d08: $08 $48 $a8
    xor c                                         ; $4d0b: $a9
    xor d                                         ; $4d0c: $aa
    xor e                                         ; $4d0d: $ab
    xor h                                         ; $4d0e: $ac
    xor l                                         ; $4d0f: $ad
    xor [hl]                                      ; $4d10: $ae
    ld b, b                                       ; $4d11: $40
    xor a                                         ; $4d12: $af
    ld [$b048], sp                                ; $4d13: $08 $48 $b0
    or c                                          ; $4d16: $b1
    or d                                          ; $4d17: $b2
    or e                                          ; $4d18: $b3
    or h                                          ; $4d19: $b4
    or l                                          ; $4d1a: $b5
    jr nz, jr_0cb_4cd3                            ; $4d1b: $20 $b6

    or a                                          ; $4d1d: $b7
    ld [$b848], sp                                ; $4d1e: $08 $48 $b8
    cp c                                          ; $4d21: $b9
    cp d                                          ; $4d22: $ba
    cp e                                          ; $4d23: $bb
    cp h                                          ; $4d24: $bc
    db $10                                        ; $4d25: $10
    cp l                                          ; $4d26: $bd
    cp [hl]                                       ; $4d27: $be

Jump_0cb_4d28:
    cp a                                          ; $4d28: $bf
    ld [$c048], sp                                ; $4d29: $08 $48 $c0
    pop bc                                        ; $4d2c: $c1
    jp nz, $0ec3                                  ; $4d2d: $c2 $c3 $0e

    call nz, $c6c5                                ; $4d30: $c4 $c5 $c6
    rst $00                                       ; $4d33: $c7
    ld [$a048], sp                                ; $4d34: $08 $48 $a0
    ld hl, sp-$58                                 ; $4d37: $f8 $a8
    jr @+$03                                      ; $4d39: $18 $01

    ld bc, $0601                                  ; $4d3b: $01 $01 $06
    ld b, $06                                     ; $4d3e: $06 $06
    inc b                                         ; $4d40: $04
    inc b                                         ; $4d41: $04
    inc b                                         ; $4d42: $04
    ld b, $00                                     ; $4d43: $06 $00
    add hl, bc                                    ; $4d45: $09
    ld b, $03                                     ; $4d46: $06 $03
    inc bc                                        ; $4d48: $03
    inc bc                                        ; $4d49: $03
    dec c                                         ; $4d4a: $0d
    nop                                           ; $4d4b: $00
    ld [bc], a                                    ; $4d4c: $02
    ld [bc], a                                    ; $4d4d: $02
    inc c                                         ; $4d4e: $0c
    ld [$048d], sp                                ; $4d4f: $08 $8d $04
    jr jr_0cb_4d62                                ; $4d52: $18 $0e

    ld c, $26                                     ; $4d54: $0e $26
    ld a, [bc]                                    ; $4d56: $0a
    jr nc, jr_0cb_4d5b                            ; $4d57: $30 $02

    ld a, b                                       ; $4d59: $78
    rrca                                          ; $4d5a: $0f

jr_0cb_4d5b:
    ld bc, $5f80                                  ; $4d5b: $01 $80 $5f
    dec c                                         ; $4d5e: $0d
    ld bc, $0980                                  ; $4d5f: $01 $80 $09

jr_0cb_4d62:
    ld bc, $23f8                                  ; $4d62: $01 $f8 $23
    ld hl, sp+$45                                 ; $4d65: $f8 $45
    ld hl, sp+$67                                 ; $4d67: $f8 $67
    ld hl, sp-$77                                 ; $4d69: $f8 $89
    and b                                         ; $4d6b: $a0
    inc d                                         ; $4d6c: $14
    nop                                           ; $4d6d: $00
    dec c                                         ; $4d6e: $0d
    nop                                           ; $4d6f: $00
    ld h, h                                       ; $4d70: $64
    ld bc, $6800                                  ; $4d71: $01 $00 $68
    ld l, c                                       ; $4d74: $69
    ld l, d                                       ; $4d75: $6a
    ld l, e                                       ; $4d76: $6b
    ld l, h                                       ; $4d77: $6c
    ld l, l                                       ; $4d78: $6d
    ld l, [hl]                                    ; $4d79: $6e
    ld l, a                                       ; $4d7a: $6f
    nop                                           ; $4d7b: $00
    ld [hl], b                                    ; $4d7c: $70
    ld [hl], c                                    ; $4d7d: $71
    ld [hl], c                                    ; $4d7e: $71
    ld [hl], d                                    ; $4d7f: $72
    ld [hl], e                                    ; $4d80: $73
    ld l, [hl]                                    ; $4d81: $6e
    ld l, l                                       ; $4d82: $6d
    ld l, h                                       ; $4d83: $6c
    nop                                           ; $4d84: $00
    ld l, e                                       ; $4d85: $6b
    ld [hl], h                                    ; $4d86: $74
    ld l, c                                       ; $4d87: $69
    ld l, b                                       ; $4d88: $68
    ld l, l                                       ; $4d89: $6d
    ld l, [hl]                                    ; $4d8a: $6e
    ld [hl], l                                    ; $4d8b: $75
    halt                                          ; $4d8c: $76
    ld [$7877], sp                                ; $4d8d: $08 $77 $78
    ld a, c                                       ; $4d90: $79
    ld a, d                                       ; $4d91: $7a
    ld bc, $7910                                  ; $4d92: $01 $10 $79
    ld a, b                                       ; $4d95: $78
    ld [hl], a                                    ; $4d96: $77
    nop                                           ; $4d97: $00
    halt                                          ; $4d98: $76
    ld [hl], l                                    ; $4d99: $75
    ld l, [hl]                                    ; $4d9a: $6e
    ld l, l                                       ; $4d9b: $6d
    ld a, b                                       ; $4d9c: $78
    ld a, e                                       ; $4d9d: $7b
    ld a, h                                       ; $4d9e: $7c
    ld a, d                                       ; $4d9f: $7a
    nop                                           ; $4da0: $00
    ld a, l                                       ; $4da1: $7d
    ld a, [hl]                                    ; $4da2: $7e
    ld a, a                                       ; $4da3: $7f
    add b                                         ; $4da4: $80
    add c                                         ; $4da5: $81
    add d                                         ; $4da6: $82
    add d                                         ; $4da7: $82
    add e                                         ; $4da8: $83
    nop                                           ; $4da9: $00
    add h                                         ; $4daa: $84
    ld a, a                                       ; $4dab: $7f
    ld a, [hl]                                    ; $4dac: $7e
    ld a, l                                       ; $4dad: $7d
    ld a, d                                       ; $4dae: $7a
    ld a, h                                       ; $4daf: $7c
    ld a, e                                       ; $4db0: $7b
    ld a, b                                       ; $4db1: $78
    nop                                           ; $4db2: $00
    ld a, d                                       ; $4db3: $7a
    add l                                         ; $4db4: $85
    add [hl]                                      ; $4db5: $86
    add a                                         ; $4db6: $87
    adc b                                         ; $4db7: $88
    adc c                                         ; $4db8: $89
    adc d                                         ; $4db9: $8a
    adc e                                         ; $4dba: $8b
    nop                                           ; $4dbb: $00
    adc h                                         ; $4dbc: $8c
    adc l                                         ; $4dbd: $8d
    adc l                                         ; $4dbe: $8d
    adc h                                         ; $4dbf: $8c
    adc e                                         ; $4dc0: $8b
    adc d                                         ; $4dc1: $8a
    adc c                                         ; $4dc2: $89
    adc b                                         ; $4dc3: $88
    nop                                           ; $4dc4: $00
    add a                                         ; $4dc5: $87
    add [hl]                                      ; $4dc6: $86
    add l                                         ; $4dc7: $85
    ld a, d                                       ; $4dc8: $7a
    adc [hl]                                      ; $4dc9: $8e
    adc a                                         ; $4dca: $8f
    sub b                                         ; $4dcb: $90
    sub c                                         ; $4dcc: $91
    nop                                           ; $4dcd: $00
    sub d                                         ; $4dce: $92
    sub e                                         ; $4dcf: $93
    sub h                                         ; $4dd0: $94
    sub l                                         ; $4dd1: $95
    sub [hl]                                      ; $4dd2: $96
    sub a                                         ; $4dd3: $97
    sub a                                         ; $4dd4: $97
    sub [hl]                                      ; $4dd5: $96
    nop                                           ; $4dd6: $00
    sub l                                         ; $4dd7: $95
    sub h                                         ; $4dd8: $94
    sub e                                         ; $4dd9: $93
    sub d                                         ; $4dda: $92
    sub c                                         ; $4ddb: $91
    sub b                                         ; $4ddc: $90
    adc a                                         ; $4ddd: $8f
    adc [hl]                                      ; $4dde: $8e
    nop                                           ; $4ddf: $00
    sbc b                                         ; $4de0: $98
    sbc c                                         ; $4de1: $99
    sbc d                                         ; $4de2: $9a
    sbc e                                         ; $4de3: $9b
    sbc h                                         ; $4de4: $9c
    sbc l                                         ; $4de5: $9d
    sbc [hl]                                      ; $4de6: $9e
    sbc a                                         ; $4de7: $9f
    nop                                           ; $4de8: $00
    and b                                         ; $4de9: $a0
    and c                                         ; $4dea: $a1
    and d                                         ; $4deb: $a2
    and e                                         ; $4dec: $a3
    sbc a                                         ; $4ded: $9f
    sbc [hl]                                      ; $4dee: $9e
    sbc l                                         ; $4def: $9d
    sbc h                                         ; $4df0: $9c
    nop                                           ; $4df1: $00
    sbc e                                         ; $4df2: $9b
    sbc d                                         ; $4df3: $9a
    sbc c                                         ; $4df4: $99
    sbc b                                         ; $4df5: $98
    and h                                         ; $4df6: $a4
    and l                                         ; $4df7: $a5
    and [hl]                                      ; $4df8: $a6
    and a                                         ; $4df9: $a7
    nop                                           ; $4dfa: $00
    xor b                                         ; $4dfb: $a8
    xor c                                         ; $4dfc: $a9
    xor d                                         ; $4dfd: $aa
    xor e                                         ; $4dfe: $ab
    xor h                                         ; $4dff: $ac
    xor l                                         ; $4e00: $ad
    xor [hl]                                      ; $4e01: $ae
    xor a                                         ; $4e02: $af
    nop                                           ; $4e03: $00
    xor e                                         ; $4e04: $ab
    xor d                                         ; $4e05: $aa
    xor c                                         ; $4e06: $a9
    xor b                                         ; $4e07: $a8
    and a                                         ; $4e08: $a7
    and [hl]                                      ; $4e09: $a6
    and l                                         ; $4e0a: $a5
    and h                                         ; $4e0b: $a4
    nop                                           ; $4e0c: $00
    or b                                          ; $4e0d: $b0
    or c                                          ; $4e0e: $b1
    or d                                          ; $4e0f: $b2
    or e                                          ; $4e10: $b3
    or h                                          ; $4e11: $b4
    or l                                          ; $4e12: $b5
    or [hl]                                       ; $4e13: $b6
    or a                                          ; $4e14: $b7
    nop                                           ; $4e15: $00
    cp b                                          ; $4e16: $b8
    cp c                                          ; $4e17: $b9
    cp d                                          ; $4e18: $ba
    cp e                                          ; $4e19: $bb
    or a                                          ; $4e1a: $b7
    or [hl]                                       ; $4e1b: $b6
    or l                                          ; $4e1c: $b5
    or h                                          ; $4e1d: $b4
    nop                                           ; $4e1e: $00
    or e                                          ; $4e1f: $b3
    or d                                          ; $4e20: $b2
    or c                                          ; $4e21: $b1
    or b                                          ; $4e22: $b0
    cp h                                          ; $4e23: $bc
    cp l                                          ; $4e24: $bd
    cp [hl]                                       ; $4e25: $be
    cp a                                          ; $4e26: $bf
    nop                                           ; $4e27: $00
    ret nz                                        ; $4e28: $c0

    pop bc                                        ; $4e29: $c1
    jp nz, $c4c3                                  ; $4e2a: $c2 $c3 $c4

    push bc                                       ; $4e2d: $c5
    add $c7                                       ; $4e2e: $c6 $c7
    nop                                           ; $4e30: $00
    jp $c1c2                                      ; $4e31: $c3 $c2 $c1


    ret nz                                        ; $4e34: $c0

    cp a                                          ; $4e35: $bf
    cp [hl]                                       ; $4e36: $be
    cp l                                          ; $4e37: $bd
    cp h                                          ; $4e38: $bc
    nop                                           ; $4e39: $00
    ret z                                         ; $4e3a: $c8

    ret                                           ; $4e3b: $c9


    jp z, $cccb                                   ; $4e3c: $ca $cb $cc

    call $cfce                                    ; $4e3f: $cd $ce $cf
    nop                                           ; $4e42: $00
    ret nc                                        ; $4e43: $d0

    pop de                                        ; $4e44: $d1
    pop de                                        ; $4e45: $d1
    ret nc                                        ; $4e46: $d0

    rst $08                                       ; $4e47: $cf
    adc $cd                                       ; $4e48: $ce $cd
    call z, $cb00                                 ; $4e4a: $cc $00 $cb
    jp z, $c8c9                                   ; $4e4d: $ca $c9 $c8

    jp nc, $d4d3                                  ; $4e50: $d2 $d3 $d4

    push de                                       ; $4e53: $d5
    nop                                           ; $4e54: $00
    sub $d7                                       ; $4e55: $d6 $d7
    ret c                                         ; $4e57: $d8

    reti                                          ; $4e58: $d9


    jp c, $dbdb                                   ; $4e59: $da $db $db

    jp c, $d900                                   ; $4e5c: $da $00 $d9

    ret c                                         ; $4e5f: $d8

    rst $10                                       ; $4e60: $d7
    sub $d5                                       ; $4e61: $d6 $d5
    call nc, $d2d3                                ; $4e63: $d4 $d3 $d2
    nop                                           ; $4e66: $00
    call c, $dedd                                 ; $4e67: $dc $dd $de
    rst $18                                       ; $4e6a: $df
    ldh [$e1], a                                  ; $4e6b: $e0 $e1
    ld [c], a                                     ; $4e6d: $e2
    db $e3                                        ; $4e6e: $e3
    nop                                           ; $4e6f: $00
    db $e4                                        ; $4e70: $e4
    push hl                                       ; $4e71: $e5
    push hl                                       ; $4e72: $e5
    db $e4                                        ; $4e73: $e4
    db $e3                                        ; $4e74: $e3
    ld [c], a                                     ; $4e75: $e2
    pop hl                                        ; $4e76: $e1
    ldh [rP1], a                                  ; $4e77: $e0 $00
    rst $18                                       ; $4e79: $df
    sbc $dd                                       ; $4e7a: $de $dd
    call c, $e7e6                                 ; $4e7c: $dc $e6 $e7
    add sp, -$17                                  ; $4e7f: $e8 $e9
    nop                                           ; $4e81: $00
    ld [$eceb], a                                 ; $4e82: $ea $eb $ec
    db $ed                                        ; $4e85: $ed
    xor $ef                                       ; $4e86: $ee $ef
    rst $28                                       ; $4e88: $ef
    xor $00                                       ; $4e89: $ee $00
    db $ed                                        ; $4e8b: $ed
    db $ec                                        ; $4e8c: $ec
    db $eb                                        ; $4e8d: $eb
    ld [$e8e9], a                                 ; $4e8e: $ea $e9 $e8
    rst $20                                       ; $4e91: $e7
    and $00                                       ; $4e92: $e6 $00
    inc b                                         ; $4e94: $04
    inc b                                         ; $4e95: $04
    inc bc                                        ; $4e96: $03
    inc bc                                        ; $4e97: $03
    inc b                                         ; $4e98: $04
    inc b                                         ; $4e99: $04
    inc b                                         ; $4e9a: $04
    dec b                                         ; $4e9b: $05
    add b                                         ; $4e9c: $80
    ld bc, $2410                                  ; $4e9d: $01 $10 $24
    inc h                                         ; $4ea0: $24
    inc h                                         ; $4ea1: $24
    inc bc                                        ; $4ea2: $03
    inc bc                                        ; $4ea3: $03

jr_0cb_4ea4:
    inc h                                         ; $4ea4: $24
    inc h                                         ; $4ea5: $24
    or b                                          ; $4ea6: $b0
    inc d                                         ; $4ea7: $14
    jr nz, jr_0cb_4ead                            ; $4ea8: $20 $03

    ld bc, $1410                                  ; $4eaa: $01 $10 $14

jr_0cb_4ead:
    ld b, b                                       ; $4ead: $40
    inc bc                                        ; $4eae: $03
    ld [bc], a                                    ; $4eaf: $02
    ld [bc], a                                    ; $4eb0: $02
    ld a, [bc]                                    ; $4eb1: $0a
    ld bc, $0a0a                                  ; $4eb2: $01 $0a $0a
    ld a, [hl+]                                   ; $4eb5: $2a
    ld a, [bc]                                    ; $4eb6: $0a
    ld a, [bc]                                    ; $4eb7: $0a
    ld [hl+], a                                   ; $4eb8: $22
    ld [hl+], a                                   ; $4eb9: $22
    add hl, de                                    ; $4eba: $19
    db $10                                        ; $4ebb: $10
    jr nz, jr_0cb_4ec1                            ; $4ebc: $20 $03

    dec bc                                        ; $4ebe: $0b
    rrca                                          ; $4ebf: $0f
    nop                                           ; $4ec0: $00

jr_0cb_4ec1:
    add hl, bc                                    ; $4ec1: $09
    add hl, bc                                    ; $4ec2: $09
    rrca                                          ; $4ec3: $0f
    rrca                                          ; $4ec4: $0f
    add hl, bc                                    ; $4ec5: $09

jr_0cb_4ec6:
    nop                                           ; $4ec6: $00
    add hl, hl                                    ; $4ec7: $29
    add hl, hl                                    ; $4ec8: $29
    cpl                                           ; $4ec9: $2f
    add hl, hl                                    ; $4eca: $29
    add hl, hl                                    ; $4ecb: $29
    ld a, [hl+]                                   ; $4ecc: $2a
    ld a, [hl+]                                   ; $4ecd: $2a
    ld a, [hl+]                                   ; $4ece: $2a
    ld b, l                                       ; $4ecf: $45
    dec bc                                        ; $4ed0: $0b
    inc de                                        ; $4ed1: $13
    ld [$0f09], sp                                ; $4ed2: $08 $09 $0f
    add hl, bc                                    ; $4ed5: $09
    ld bc, $2908                                  ; $4ed6: $01 $08 $29
    ld bc, $5708                                  ; $4ed9: $01 $08 $57
    cpl                                           ; $4edc: $2f
    ld d, $00                                     ; $4edd: $16 $00
    dec bc                                        ; $4edf: $0b
    ld [de], a                                    ; $4ee0: $12
    nop                                           ; $4ee1: $00
    rrca                                          ; $4ee2: $0f
    dec d                                         ; $4ee3: $15
    jr nz, jr_0cb_4f10                            ; $4ee4: $20 $2a

    ld [$002b], sp                                ; $4ee6: $08 $2b $00
    dec a                                         ; $4ee9: $3d
    add hl, hl                                    ; $4eea: $29
    ld a, [hl+]                                   ; $4eeb: $2a
    dec h                                         ; $4eec: $25
    ld [$0039], sp                                ; $4eed: $08 $39 $00
    ld a, [hl+]                                   ; $4ef0: $2a
    jr z, jr_0cb_4f07                             ; $4ef1: $28 $14

    ld [$2629], sp                                ; $4ef3: $08 $29 $26
    ld [$27ff], sp                                ; $4ef6: $08 $ff $27
    jr nz, jr_0cb_4f23                            ; $4ef9: $20 $28

    jr jr_0cb_4f52                                ; $4efb: $18 $55

    nop                                           ; $4efd: $00
    dec sp                                        ; $4efe: $3b
    ld b, b                                       ; $4eff: $40
    jr z, @+$12                                   ; $4f00: $28 $10

    dec d                                         ; $4f02: $15
    ld [$3827], sp                                ; $4f03: $08 $27 $38
    ld h, h                                       ; $4f06: $64

jr_0cb_4f07:
    jr jr_0cb_4ec6                                ; $4f07: $18 $bd

    ld a, h                                       ; $4f09: $7c
    nop                                           ; $4f0a: $00
    cpl                                           ; $4f0b: $2f
    add [hl]                                      ; $4f0c: $86
    nop                                           ; $4f0d: $00
    ld a, $20                                     ; $4f0e: $3e $20

jr_0cb_4f10:
    ld [hl], a                                    ; $4f10: $77
    jr jr_0cb_4ea4                                ; $4f11: $18 $91

    nop                                           ; $4f13: $00
    cpl                                           ; $4f14: $2f
    ld h, b                                       ; $4f15: $60
    ld [$03b3], sp                                ; $4f16: $08 $b3 $03
    db $10                                        ; $4f19: $10
    rrca                                          ; $4f1a: $0f
    ld c, $08                                     ; $4f1b: $0e $08
    ld a, d                                       ; $4f1d: $7a
    ld [$2f2f], sp                                ; $4f1e: $08 $2f $2f
    sbc e                                         ; $4f21: $9b
    nop                                           ; $4f22: $00

jr_0cb_4f23:
    ld h, [hl]                                    ; $4f23: $66
    ld [$b4c0], sp                                ; $4f24: $08 $c0 $b4
    jr nz, @+$66                                  ; $4f27: $20 $64

    ld [$2f2f], sp                                ; $4f29: $08 $2f $2f
    inc d                                         ; $4f2c: $14
    nop                                           ; $4f2d: $00
    dec c                                         ; $4f2e: $0d
    nop                                           ; $4f2f: $00
    or d                                          ; $4f30: $b2
    nop                                           ; $4f31: $00
    nop                                           ; $4f32: $00
    ld l, b                                       ; $4f33: $68
    ld l, c                                       ; $4f34: $69
    ld l, d                                       ; $4f35: $6a
    ld l, e                                       ; $4f36: $6b
    ld l, h                                       ; $4f37: $6c
    ld l, l                                       ; $4f38: $6d
    ld l, [hl]                                    ; $4f39: $6e
    ld l, a                                       ; $4f3a: $6f
    nop                                           ; $4f3b: $00
    ld [hl], b                                    ; $4f3c: $70
    ld [hl], c                                    ; $4f3d: $71
    ld [hl], d                                    ; $4f3e: $72
    ld [hl], e                                    ; $4f3f: $73
    ld [hl], h                                    ; $4f40: $74
    ld [hl], l                                    ; $4f41: $75
    halt                                          ; $4f42: $76
    ld [hl], a                                    ; $4f43: $77
    ld b, b                                       ; $4f44: $40
    ld a, b                                       ; $4f45: $78
    ld [$7900], sp                                ; $4f46: $08 $00 $79
    ld a, d                                       ; $4f49: $7a
    ld a, e                                       ; $4f4a: $7b
    ld a, h                                       ; $4f4b: $7c
    ld a, l                                       ; $4f4c: $7d
    ld a, [hl]                                    ; $4f4d: $7e
    ld [$807f], sp                                ; $4f4e: $08 $7f $80
    add c                                         ; $4f51: $81

jr_0cb_4f52:
    add d                                         ; $4f52: $82
    ld [$8300], sp                                ; $4f53: $08 $00 $83
    add h                                         ; $4f56: $84
    add l                                         ; $4f57: $85
    ld b, b                                       ; $4f58: $40
    add [hl]                                      ; $4f59: $86
    ld [$8700], sp                                ; $4f5a: $08 $00 $87
    adc b                                         ; $4f5d: $88
    adc c                                         ; $4f5e: $89
    adc d                                         ; $4f5f: $8a
    adc e                                         ; $4f60: $8b
    adc h                                         ; $4f61: $8c
    inc b                                         ; $4f62: $04
    adc l                                         ; $4f63: $8d
    adc [hl]                                      ; $4f64: $8e
    add a                                         ; $4f65: $87
    adc b                                         ; $4f66: $88
    adc a                                         ; $4f67: $8f
    ld [$9008], sp                                ; $4f68: $08 $08 $90
    sub c                                         ; $4f6b: $91
    add c                                         ; $4f6c: $81
    ld [$9200], sp                                ; $4f6d: $08 $00 $92
    sub e                                         ; $4f70: $93
    sub h                                         ; $4f71: $94
    sub l                                         ; $4f72: $95
    sub [hl]                                      ; $4f73: $96
    sub a                                         ; $4f74: $97
    ld b, $58                                     ; $4f75: $06 $58
    ld [bc], a                                    ; $4f77: $02
    sbc b                                         ; $4f78: $98
    sbc c                                         ; $4f79: $99
    sbc d                                         ; $4f7a: $9a
    sbc e                                         ; $4f7b: $9b
    sbc h                                         ; $4f7c: $9c
    sbc l                                         ; $4f7d: $9d
    ld b, $58                                     ; $4f7e: $06 $58
    sbc [hl]                                      ; $4f80: $9e
    inc b                                         ; $4f81: $04
    sbc a                                         ; $4f82: $9f
    and b                                         ; $4f83: $a0
    and c                                         ; $4f84: $a1
    and d                                         ; $4f85: $a2
    and e                                         ; $4f86: $a3
    ld b, $58                                     ; $4f87: $06 $58
    and h                                         ; $4f89: $a4
    and l                                         ; $4f8a: $a5
    ld [$a7a6], sp                                ; $4f8b: $08 $a6 $a7
    xor b                                         ; $4f8e: $a8
    xor c                                         ; $4f8f: $a9
    ld b, $58                                     ; $4f90: $06 $58
    xor d                                         ; $4f92: $aa
    xor e                                         ; $4f93: $ab
    xor h                                         ; $4f94: $ac
    db $10                                        ; $4f95: $10
    xor l                                         ; $4f96: $ad
    xor [hl]                                      ; $4f97: $ae
    xor a                                         ; $4f98: $af
    ld b, $58                                     ; $4f99: $06 $58
    or b                                          ; $4f9b: $b0
    or c                                          ; $4f9c: $b1
    or d                                          ; $4f9d: $b2
    or e                                          ; $4f9e: $b3
    jr nz, @-$4a                                  ; $4f9f: $20 $b4

    or l                                          ; $4fa1: $b5
    ld b, $58                                     ; $4fa2: $06 $58
    or [hl]                                       ; $4fa4: $b6
    or a                                          ; $4fa5: $b7
    cp b                                          ; $4fa6: $b8
    cp c                                          ; $4fa7: $b9
    cp d                                          ; $4fa8: $ba
    ld b, b                                       ; $4fa9: $40
    cp e                                          ; $4faa: $bb
    ld b, $58                                     ; $4fab: $06 $58
    cp h                                          ; $4fad: $bc
    cp l                                          ; $4fae: $bd
    cp [hl]                                       ; $4faf: $be
    cp a                                          ; $4fb0: $bf
    ret nz                                        ; $4fb1: $c0

    pop bc                                        ; $4fb2: $c1
    add c                                         ; $4fb3: $81
    ld b, $58                                     ; $4fb4: $06 $58
    jp nz, $c4c3                                  ; $4fb6: $c2 $c3 $c4

    push bc                                       ; $4fb9: $c5
    add $c7                                       ; $4fba: $c6 $c7
    ld b, $58                                     ; $4fbc: $06 $58
    ld [bc], a                                    ; $4fbe: $02
    ret z                                         ; $4fbf: $c8

    ret                                           ; $4fc0: $c9


    jp z, $cccb                                   ; $4fc1: $ca $cb $cc

    call Call_0cb_5806                            ; $4fc4: $cd $06 $58
    ld [bc], a                                    ; $4fc7: $02
    adc a                                         ; $4fc8: $8f
    ld bc, $0ab8                                  ; $4fc9: $01 $b8 $0a
    ld a, [bc]                                    ; $4fcc: $0a
    ld a, [bc]                                    ; $4fcd: $0a
    ld b, $18                                     ; $4fce: $06 $18
    ld [$0708], sp                                ; $4fd0: $08 $08 $07
    db $10                                        ; $4fd3: $10
    dec b                                         ; $4fd4: $05
    ld h, b                                       ; $4fd5: $60
    ld b, b                                       ; $4fd6: $40
    dec bc                                        ; $4fd7: $0b
    ld bc, $0980                                  ; $4fd8: $01 $80 $09
    dec c                                         ; $4fdb: $0d
    dec c                                         ; $4fdc: $0d
    inc c                                         ; $4fdd: $0c
    add hl, bc                                    ; $4fde: $09
    add hl, bc                                    ; $4fdf: $09
    ld e, [hl]                                    ; $4fe0: $5e
    inc c                                         ; $4fe1: $0c
    ld [bc], a                                    ; $4fe2: $02
    nop                                           ; $4fe3: $00
    dec c                                         ; $4fe4: $0d
    ld [bc], a                                    ; $4fe5: $02
    nop                                           ; $4fe6: $00
    ld b, $00                                     ; $4fe7: $06 $00
    dec b                                         ; $4fe9: $05
    nop                                           ; $4fea: $00
    ld de, $0900                                  ; $4feb: $11 $00 $09
    ei                                            ; $4fee: $fb
    ld d, $08                                     ; $4fef: $16 $08
    ld de, $0d08                                  ; $4ff1: $11 $08 $0d
    nop                                           ; $4ff4: $00
    dec de                                        ; $4ff5: $1b
    ld [$0012], sp                                ; $4ff6: $08 $12 $00
    inc c                                         ; $4ff9: $0c
    ld hl, $0818                                  ; $4ffa: $21 $18 $08
    db $10                                        ; $4ffd: $10
    rst $38                                       ; $4ffe: $ff
    ld l, $00                                     ; $4fff: $2e $00
    add hl, de                                    ; $5001: $19
    jr @+$0c                                      ; $5002: $18 $0a

jr_0cb_5004:
    jr nz, jr_0cb_5034                            ; $5004: $20 $2e

    db $10                                        ; $5006: $10
    daa                                           ; $5007: $27
    ld [$0049], sp                                ; $5008: $08 $49 $00
    ld b, d                                       ; $500b: $42
    ld [$182a], sp                                ; $500c: $08 $2a $18
    rst $38                                       ; $500f: $ff
    inc sp                                        ; $5010: $33
    ld [$085c], sp                                ; $5011: $08 $5c $08
    ld d, h                                       ; $5014: $54
    jr jr_0cb_5077                                ; $5015: $18 $60

    db $10                                        ; $5017: $10
    ld l, c                                       ; $5018: $69
    ld [$0854], sp                                ; $5019: $08 $54 $08
    ld h, l                                       ; $501c: $65
    nop                                           ; $501d: $00
    ld b, l                                       ; $501e: $45
    ld [$08ff], sp                                ; $501f: $08 $ff $08
    ld [$1867], sp                                ; $5022: $08 $67 $18
    ld a, a                                       ; $5025: $7f
    ld [$2073], sp                                ; $5026: $08 $73 $20
    ld a, b                                       ; $5029: $78
    ld [$088d], sp                                ; $502a: $08 $8d $08
    jr nc, jr_0cb_505f                            ; $502d: $30 $30

    inc de                                        ; $502f: $13
    db $10                                        ; $5030: $10
    ret nz                                        ; $5031: $c0

    sbc c                                         ; $5032: $99
    nop                                           ; $5033: $00

jr_0cb_5034:
    ld e, b                                       ; $5034: $58
    jr z, jr_0cb_504b                             ; $5035: $28 $14

    nop                                           ; $5037: $00
    dec c                                         ; $5038: $0d
    nop                                           ; $5039: $00
    cp h                                          ; $503a: $bc
    nop                                           ; $503b: $00
    ld b, c                                       ; $503c: $41
    ld l, l                                       ; $503d: $6d
    ld bc, $a310                                  ; $503e: $01 $10 $a3
    and h                                         ; $5041: $a4
    and l                                         ; $5042: $a5
    and [hl]                                      ; $5043: $a6
    and a                                         ; $5044: $a7
    dec b                                         ; $5045: $05
    db $10                                        ; $5046: $10
    pop bc                                        ; $5047: $c1
    db $10                                        ; $5048: $10
    jr jr_0cb_5061                                ; $5049: $18 $16

jr_0cb_504b:
    ld [$a9a8], sp                                ; $504b: $08 $a8 $a9
    xor d                                         ; $504e: $aa
    xor e                                         ; $504f: $ab
    xor h                                         ; $5050: $ac
    dec b                                         ; $5051: $05
    db $10                                        ; $5052: $10
    add e                                         ; $5053: $83
    inc d                                         ; $5054: $14
    jr c, jr_0cb_5004                             ; $5055: $38 $ad

    xor [hl]                                      ; $5057: $ae
    xor a                                         ; $5058: $af
    or b                                          ; $5059: $b0
    or c                                          ; $505a: $b1
    dec b                                         ; $505b: $05
    db $10                                        ; $505c: $10
    jr c, jr_0cb_5067                             ; $505d: $38 $08

jr_0cb_505f:
    nop                                           ; $505f: $00
    ld [hl], a                                    ; $5060: $77

jr_0cb_5061:
    ld a, d                                       ; $5061: $7a
    ld a, h                                       ; $5062: $7c
    ld a, d                                       ; $5063: $7a
    ld a, e                                       ; $5064: $7b
    ld a, h                                       ; $5065: $7c
    or d                                          ; $5066: $b2

jr_0cb_5067:
    or e                                          ; $5067: $b3
    db $10                                        ; $5068: $10
    or h                                          ; $5069: $b4
    or l                                          ; $506a: $b5
    or [hl]                                       ; $506b: $b6
    dec b                                         ; $506c: $05
    db $10                                        ; $506d: $10
    ld a, d                                       ; $506e: $7a
    add [hl]                                      ; $506f: $86
    add [hl]                                      ; $5070: $86
    add a                                         ; $5071: $87
    nop                                           ; $5072: $00
    adc b                                         ; $5073: $88
    adc c                                         ; $5074: $89
    adc d                                         ; $5075: $8a
    adc e                                         ; $5076: $8b

jr_0cb_5077:
    adc h                                         ; $5077: $8c
    adc l                                         ; $5078: $8d
    adc [hl]                                      ; $5079: $8e
    adc [hl]                                      ; $507a: $8e
    nop                                           ; $507b: $00
    adc [hl]                                      ; $507c: $8e
    adc a                                         ; $507d: $8f
    adc [hl]                                      ; $507e: $8e
    sub b                                         ; $507f: $90
    sub c                                         ; $5080: $91
    sub d                                         ; $5081: $92
    sub e                                         ; $5082: $93
    sub h                                         ; $5083: $94
    nop                                           ; $5084: $00
    sub l                                         ; $5085: $95
    adc [hl]                                      ; $5086: $8e
    sub c                                         ; $5087: $91
    adc [hl]                                      ; $5088: $8e
    adc h                                         ; $5089: $8c
    sub [hl]                                      ; $508a: $96
    adc b                                         ; $508b: $88
    adc c                                         ; $508c: $89
    db $10                                        ; $508d: $10
    sub a                                         ; $508e: $97
    adc [hl]                                      ; $508f: $8e
    sub l                                         ; $5090: $95
    inc de                                        ; $5091: $13
    nop                                           ; $5092: $00
    sbc b                                         ; $5093: $98
    sub h                                         ; $5094: $94
    sbc c                                         ; $5095: $99
    sbc d                                         ; $5096: $9a
    nop                                           ; $5097: $00
    sub c                                         ; $5098: $91
    sbc e                                         ; $5099: $9b
    adc [hl]                                      ; $509a: $8e
    sub h                                         ; $509b: $94
    adc a                                         ; $509c: $8f
    adc [hl]                                      ; $509d: $8e
    adc d                                         ; $509e: $8a
    sbc h                                         ; $509f: $9c
    add b                                         ; $50a0: $80
    ld h, $00                                     ; $50a1: $26 $00
    sbc e                                         ; $50a3: $9b
    sbc b                                         ; $50a4: $98
    adc [hl]                                      ; $50a5: $8e
    adc [hl]                                      ; $50a6: $8e
    sub b                                         ; $50a7: $90
    sbc l                                         ; $50a8: $9d
    sbc e                                         ; $50a9: $9b
    db $10                                        ; $50aa: $10
    sbc b                                         ; $50ab: $98
    sbc [hl]                                      ; $50ac: $9e
    sub l                                         ; $50ad: $95
    ld sp, $8e00                                  ; $50ae: $31 $00 $8e
    adc [hl]                                      ; $50b1: $8e
    adc b                                         ; $50b2: $88
    adc [hl]                                      ; $50b3: $8e
    adc [hl]                                      ; $50b4: $8e
    ld h, $00                                     ; $50b5: $26 $00
    sub b                                         ; $50b7: $90
    adc [hl]                                      ; $50b8: $8e
    adc [hl]                                      ; $50b9: $8e
    stop                                          ; $50ba: $10 $00
    ld d, $00                                     ; $50bc: $16 $00
    inc de                                        ; $50be: $13
    ld [$0891], sp                                ; $50bf: $08 $91 $08
    adc [hl]                                      ; $50c2: $8e
    sbc a                                         ; $50c3: $9f
    adc [hl]                                      ; $50c4: $8e
    adc [hl]                                      ; $50c5: $8e
    ld a, [bc]                                    ; $50c6: $0a
    ld [$9d90], sp                                ; $50c7: $08 $90 $9d
    sub d                                         ; $50ca: $92
    inc d                                         ; $50cb: $14
    sbc b                                         ; $50cc: $98
    sbc [hl]                                      ; $50cd: $9e
    sbc c                                         ; $50ce: $99
    inc e                                         ; $50cf: $1c
    nop                                           ; $50d0: $00
    adc [hl]                                      ; $50d1: $8e
    ld d, d                                       ; $50d2: $52
    nop                                           ; $50d3: $00
    adc [hl]                                      ; $50d4: $8e
    adc [hl]                                      ; $50d5: $8e
    inc h                                         ; $50d6: $24
    and b                                         ; $50d7: $a0
    and c                                         ; $50d8: $a1
    ld h, $00                                     ; $50d9: $26 $00
    sub h                                         ; $50db: $94
    sbc c                                         ; $50dc: $99
    ld h, d                                       ; $50dd: $62
    nop                                           ; $50de: $00
    sbc b                                         ; $50df: $98
    and d                                         ; $50e0: $a2
    or b                                          ; $50e1: $b0
    ld h, $00                                     ; $50e2: $26 $00
    sbc e                                         ; $50e4: $9b
    ld l, [hl]                                    ; $50e5: $6e
    nop                                           ; $50e6: $00
    ld [$8e00], sp                                ; $50e7: $08 $00 $8e
    sub b                                         ; $50ea: $90
    adc [hl]                                      ; $50eb: $8e
    sbc e                                         ; $50ec: $9b
    ld e, h                                       ; $50ed: $5c
    sub e                                         ; $50ee: $93
    inc a                                         ; $50ef: $3c
    nop                                           ; $50f0: $00
    sub c                                         ; $50f1: $91
    ld h, $00                                     ; $50f2: $26 $00
    ld d, c                                       ; $50f4: $51
    db $10                                        ; $50f5: $10
    ld d, [hl]                                    ; $50f6: $56
    db $10                                        ; $50f7: $10
    sub l                                         ; $50f8: $95
    sbc d                                         ; $50f9: $9a
    rst $28                                       ; $50fa: $ef
    ld c, h                                       ; $50fb: $4c
    nop                                           ; $50fc: $00
    ld [hl], d                                    ; $50fd: $72
    nop                                           ; $50fe: $00
    ld h, e                                       ; $50ff: $63
    ld [$3fa2], sp                                ; $5100: $08 $a2 $3f
    db $10                                        ; $5103: $10
    adc b                                         ; $5104: $88
    nop                                           ; $5105: $00
    ld [hl], d                                    ; $5106: $72
    nop                                           ; $5107: $00
    ld h, $00                                     ; $5108: $26 $00
    sub $6e                                       ; $510a: $d6 $6e
    nop                                           ; $510c: $00
    adc [hl]                                      ; $510d: $8e
    ld [$0102], sp                                ; $510e: $08 $02 $01
    db $10                                        ; $5111: $10
    ld a, [bc]                                    ; $5112: $0a
    ld bc, $1030                                  ; $5113: $01 $30 $10
    ld [$b504], sp                                ; $5116: $08 $04 $b5
    ld bc, $0c10                                  ; $5119: $01 $10 $0c
    ld bc, $1030                                  ; $511c: $01 $30 $10
    ld [$0105], sp                                ; $511f: $08 $05 $01
    db $10                                        ; $5122: $10
    dec c                                         ; $5123: $0d
    ld bc, $a130                                  ; $5124: $01 $30 $a1
    db $10                                        ; $5127: $10
    ld [$0106], sp                                ; $5128: $08 $06 $01
    db $10                                        ; $512b: $10
    ld c, $0e                                     ; $512c: $0e $0e
    dec bc                                        ; $512e: $0b
    ld c, $01                                     ; $512f: $0e $01
    nop                                           ; $5131: $00
    rst $08                                       ; $5132: $cf
    dec b                                         ; $5133: $05
    nop                                           ; $5134: $00
    dec bc                                        ; $5135: $0b
    nop                                           ; $5136: $00
    ld c, $09                                     ; $5137: $0e $09
    ld bc, $23f8                                  ; $5139: $01 $f8 $23
    ld hl, sp+$45                                 ; $513c: $f8 $45
    ld hl, sp+$67                                 ; $513e: $f8 $67
    jr c, jr_0cb_51b2                             ; $5140: $38 $70

    rrca                                          ; $5142: $0f
    ld [$2d60], sp                                ; $5143: $08 $60 $2d
    ld hl, sp-$5d                                 ; $5146: $f8 $a3
    ld [hl], b                                    ; $5148: $70
    inc d                                         ; $5149: $14
    nop                                           ; $514a: $00
    dec c                                         ; $514b: $0d
    nop                                           ; $514c: $00
    sub e                                         ; $514d: $93
    nop                                           ; $514e: $00
    db $10                                        ; $514f: $10
    ld l, b                                       ; $5150: $68
    ld l, c                                       ; $5151: $69
    ld l, d                                       ; $5152: $6a
    inc bc                                        ; $5153: $03
    ld [$6b68], sp                                ; $5154: $08 $68 $6b
    ld a, h                                       ; $5157: $7c
    ld a, e                                       ; $5158: $7b
    inc b                                         ; $5159: $04
    ld a, d                                       ; $515a: $7a
    ld a, c                                       ; $515b: $79
    ld a, b                                       ; $515c: $78
    ld [hl], a                                    ; $515d: $77
    ld [hl], d                                    ; $515e: $72
    rrca                                          ; $515f: $0f
    ld [$7473], sp                                ; $5160: $08 $73 $74
    ld b, b                                       ; $5163: $40
    ld [hl], l                                    ; $5164: $75
    inc bc                                        ; $5165: $03
    ld [$7673], sp                                ; $5166: $08 $73 $76
    ld [hl], c                                    ; $5169: $71
    ld [hl], b                                    ; $516a: $70
    ld l, a                                       ; $516b: $6f
    ld l, [hl]                                    ; $516c: $6e
    ld de, $6c6d                                  ; $516d: $11 $6d $6c
    ld a, l                                       ; $5170: $7d
    rrca                                          ; $5171: $0f
    ld [$7f7e], sp                                ; $5172: $08 $7e $7f
    add b                                         ; $5175: $80
    inc bc                                        ; $5176: $03
    ld [$7e00], sp                                ; $5177: $08 $00 $7e
    add c                                         ; $517a: $81
    add d                                         ; $517b: $82
    add e                                         ; $517c: $83
    add h                                         ; $517d: $84
    add l                                         ; $517e: $85
    add d                                         ; $517f: $82
    add [hl]                                      ; $5180: $86
    ld b, b                                       ; $5181: $40
    add a                                         ; $5182: $87
    rrca                                          ; $5183: $0f
    ld [$8988], sp                                ; $5184: $08 $88 $89
    adc d                                         ; $5187: $8a
    adc e                                         ; $5188: $8b
    adc h                                         ; $5189: $8c
    adc l                                         ; $518a: $8d
    add c                                         ; $518b: $81
    ld b, $58                                     ; $518c: $06 $58
    adc [hl]                                      ; $518e: $8e
    adc a                                         ; $518f: $8f
    sub b                                         ; $5190: $90
    sub c                                         ; $5191: $91
    sub d                                         ; $5192: $92
    sub e                                         ; $5193: $93
    ld b, $58                                     ; $5194: $06 $58
    ld [bc], a                                    ; $5196: $02
    sub h                                         ; $5197: $94
    sub l                                         ; $5198: $95
    sub [hl]                                      ; $5199: $96
    sub a                                         ; $519a: $97
    sbc b                                         ; $519b: $98
    sbc c                                         ; $519c: $99
    ld b, $58                                     ; $519d: $06 $58
    sbc d                                         ; $519f: $9a
    inc b                                         ; $51a0: $04
    sbc e                                         ; $51a1: $9b
    sbc h                                         ; $51a2: $9c
    sbc l                                         ; $51a3: $9d
    sbc [hl]                                      ; $51a4: $9e
    sbc a                                         ; $51a5: $9f
    ld b, $58                                     ; $51a6: $06 $58
    and b                                         ; $51a8: $a0
    and c                                         ; $51a9: $a1
    ld [$a3a2], sp                                ; $51aa: $08 $a2 $a3
    and h                                         ; $51ad: $a4
    and l                                         ; $51ae: $a5
    ld b, $58                                     ; $51af: $06 $58
    and [hl]                                      ; $51b1: $a6

jr_0cb_51b2:
    and a                                         ; $51b2: $a7
    xor b                                         ; $51b3: $a8
    db $10                                        ; $51b4: $10
    xor c                                         ; $51b5: $a9
    xor d                                         ; $51b6: $aa

jr_0cb_51b7:
    xor e                                         ; $51b7: $ab
    ld b, $58                                     ; $51b8: $06 $58
    adc b                                         ; $51ba: $88
    adc c                                         ; $51bb: $89
    xor h                                         ; $51bc: $ac
    xor l                                         ; $51bd: $ad
    ld [bc], a                                    ; $51be: $02
    xor [hl]                                      ; $51bf: $ae
    xor a                                         ; $51c0: $af
    or b                                          ; $51c1: $b0
    or c                                          ; $51c2: $b1
    or d                                          ; $51c3: $b2
    or e                                          ; $51c4: $b3
    ld b, $18                                     ; $51c5: $06 $18
    or h                                          ; $51c7: $b4
    ld c, c                                       ; $51c8: $49
    or l                                          ; $51c9: $b5
    ld a, b                                       ; $51ca: $78
    ld [$b7b6], sp                                ; $51cb: $08 $b6 $b7
    ld a, b                                       ; $51ce: $78
    ld c, b                                       ; $51cf: $48
    cp b                                          ; $51d0: $b8
    cp c                                          ; $51d1: $b9
    ld a, b                                       ; $51d2: $78
    ld [$ba00], sp                                ; $51d3: $08 $00 $ba
    cp e                                          ; $51d6: $bb
    cp h                                          ; $51d7: $bc

jr_0cb_51d8:
    cp l                                          ; $51d8: $bd
    cp [hl]                                       ; $51d9: $be
    cp a                                          ; $51da: $bf
    ret nz                                        ; $51db: $c0

    pop bc                                        ; $51dc: $c1
    ld b, h                                       ; $51dd: $44
    jp nz, Jump_000_0806                          ; $51de: $c2 $06 $08

    jp $c498                                      ; $51e1: $c3 $98 $c4


    ld a, b                                       ; $51e4: $78
    nop                                           ; $51e5: $00
    push bc                                       ; $51e6: $c5
    add $20                                       ; $51e7: $c6 $20
    rst $00                                       ; $51e9: $c7
    ret z                                         ; $51ea: $c8

    ld a, b                                       ; $51eb: $78
    jr c, jr_0cb_51b7                             ; $51ec: $38 $c9

    jp z, $9acb                                   ; $51ee: $ca $cb $9a

    sbc e                                         ; $51f1: $9b
    ld e, l                                       ; $51f2: $5d
    ld [bc], a                                    ; $51f3: $02
    ld bc, $0528                                  ; $51f4: $01 $28 $05
    ld bc, $0f10                                  ; $51f7: $01 $10 $0f
    jr nc, jr_0cb_5210                            ; $51fa: $30 $14

    ld a, b                                       ; $51fc: $78
    ld a, [bc]                                    ; $51fd: $0a
    inc bc                                        ; $51fe: $03
    jr jr_0cb_51d8                                ; $51ff: $18 $d7

    ld bc, $0f20                                  ; $5201: $01 $20 $0f
    ld [$010f], sp                                ; $5204: $08 $0f $01
    add b                                         ; $5207: $80
    ld c, $01                                     ; $5208: $0e $01
    ld hl, sp+$23                                 ; $520a: $f8 $23
    ld hl, sp+$45                                 ; $520c: $f8 $45
    ld hl, sp-$20                                 ; $520e: $f8 $e0

jr_0cb_5210:
    ld h, a                                       ; $5210: $67
    ld hl, sp-$77                                 ; $5211: $f8 $89
    ld hl, sp-$55                                 ; $5213: $f8 $ab
    jr nc, jr_0cb_522b                            ; $5215: $30 $14

    nop                                           ; $5217: $00
    dec c                                         ; $5218: $0d
    nop                                           ; $5219: $00
    ld c, d                                       ; $521a: $4a
    ld bc, $6808                                  ; $521b: $01 $08 $68
    ld l, c                                       ; $521e: $69
    ld l, d                                       ; $521f: $6a
    ld l, e                                       ; $5220: $6b
    inc b                                         ; $5221: $04
    ld e, b                                       ; $5222: $58
    ld l, e                                       ; $5223: $6b
    ld l, h                                       ; $5224: $6c
    ld l, l                                       ; $5225: $6d
    inc b                                         ; $5226: $04
    ld l, [hl]                                    ; $5227: $6e
    ld l, a                                       ; $5228: $6f
    ld [hl], b                                    ; $5229: $70
    ld [hl], c                                    ; $522a: $71

jr_0cb_522b:
    ld [hl], d                                    ; $522b: $72
    inc b                                         ; $522c: $04
    db $10                                        ; $522d: $10
    ld [hl], e                                    ; $522e: $73
    ld [hl], h                                    ; $522f: $74
    jr nz, jr_0cb_52a7                            ; $5230: $20 $75

    halt                                          ; $5232: $76
    inc c                                         ; $5233: $0c
    nop                                           ; $5234: $00
    ld l, l                                       ; $5235: $6d
    ld l, [hl]                                    ; $5236: $6e
    ld [hl], a                                    ; $5237: $77
    ld a, b                                       ; $5238: $78
    ld a, c                                       ; $5239: $79
    inc b                                         ; $523a: $04
    ld a, d                                       ; $523b: $7a
    ld a, e                                       ; $523c: $7b
    ld a, h                                       ; $523d: $7c
    ld a, l                                       ; $523e: $7d
    ld a, [hl]                                    ; $523f: $7e
    inc b                                         ; $5240: $04
    nop                                           ; $5241: $00
    ld a, a                                       ; $5242: $7f
    add b                                         ; $5243: $80
    nop                                           ; $5244: $00
    add c                                         ; $5245: $81
    add d                                         ; $5246: $82
    ld a, [hl]                                    ; $5247: $7e
    ld a, c                                       ; $5248: $79
    ld a, d                                       ; $5249: $7a
    ld [hl], a                                    ; $524a: $77
    ld a, b                                       ; $524b: $78
    add e                                         ; $524c: $83
    nop                                           ; $524d: $00
    add h                                         ; $524e: $84
    ld [hl], a                                    ; $524f: $77
    ld a, b                                       ; $5250: $78
    add l                                         ; $5251: $85
    add [hl]                                      ; $5252: $86
    add a                                         ; $5253: $87
    adc b                                         ; $5254: $88
    adc c                                         ; $5255: $89
    ld bc, $8b8a                                  ; $5256: $01 $8a $8b
    adc h                                         ; $5259: $8c
    adc l                                         ; $525a: $8d
    adc h                                         ; $525b: $8c
    adc l                                         ; $525c: $8d
    add l                                         ; $525d: $85
    ld [de], a                                    ; $525e: $12
    jr jr_0cb_5261                                ; $525f: $18 $00

jr_0cb_5261:
    adc [hl]                                      ; $5261: $8e
    adc a                                         ; $5262: $8f
    sub b                                         ; $5263: $90
    sub c                                         ; $5264: $91
    sub d                                         ; $5265: $92
    sub e                                         ; $5266: $93
    sub h                                         ; $5267: $94
    sub l                                         ; $5268: $95
    nop                                           ; $5269: $00
    sub [hl]                                      ; $526a: $96
    sub a                                         ; $526b: $97
    sbc b                                         ; $526c: $98
    sub a                                         ; $526d: $97
    sbc b                                         ; $526e: $98
    sub b                                         ; $526f: $90
    adc a                                         ; $5270: $8f
    adc [hl]                                      ; $5271: $8e
    nop                                           ; $5272: $00
    ld [hl], a                                    ; $5273: $77
    ld a, b                                       ; $5274: $78
    sbc c                                         ; $5275: $99
    sbc d                                         ; $5276: $9a
    sbc e                                         ; $5277: $9b
    sbc h                                         ; $5278: $9c
    sbc l                                         ; $5279: $9d
    sbc [hl]                                      ; $527a: $9e
    nop                                           ; $527b: $00
    sbc a                                         ; $527c: $9f
    and b                                         ; $527d: $a0
    and c                                         ; $527e: $a1
    and d                                         ; $527f: $a2
    and e                                         ; $5280: $a3
    and h                                         ; $5281: $a4
    and b                                         ; $5282: $a0
    sbc a                                         ; $5283: $9f
    nop                                           ; $5284: $00
    sbc [hl]                                      ; $5285: $9e
    sbc l                                         ; $5286: $9d
    sbc h                                         ; $5287: $9c
    sbc e                                         ; $5288: $9b
    sbc d                                         ; $5289: $9a
    sbc c                                         ; $528a: $99
    and l                                         ; $528b: $a5
    and [hl]                                      ; $528c: $a6
    nop                                           ; $528d: $00
    and a                                         ; $528e: $a7
    xor b                                         ; $528f: $a8
    xor c                                         ; $5290: $a9
    xor d                                         ; $5291: $aa
    xor e                                         ; $5292: $ab
    xor h                                         ; $5293: $ac
    xor l                                         ; $5294: $ad
    xor [hl]                                      ; $5295: $ae
    nop                                           ; $5296: $00
    xor a                                         ; $5297: $af
    or b                                          ; $5298: $b0
    xor h                                         ; $5299: $ac
    xor e                                         ; $529a: $ab
    xor d                                         ; $529b: $aa
    xor c                                         ; $529c: $a9
    xor b                                         ; $529d: $a8
    and a                                         ; $529e: $a7
    nop                                           ; $529f: $00
    and [hl]                                      ; $52a0: $a6
    and l                                         ; $52a1: $a5
    or c                                          ; $52a2: $b1
    or d                                          ; $52a3: $b2
    or e                                          ; $52a4: $b3
    or h                                          ; $52a5: $b4
    or l                                          ; $52a6: $b5

jr_0cb_52a7:
    or [hl]                                       ; $52a7: $b6
    nop                                           ; $52a8: $00
    or a                                          ; $52a9: $b7
    cp b                                          ; $52aa: $b8
    cp c                                          ; $52ab: $b9
    cp d                                          ; $52ac: $ba
    cp e                                          ; $52ad: $bb
    cp h                                          ; $52ae: $bc
    cp b                                          ; $52af: $b8
    or a                                          ; $52b0: $b7
    nop                                           ; $52b1: $00
    or [hl]                                       ; $52b2: $b6
    or l                                          ; $52b3: $b5
    or h                                          ; $52b4: $b4
    or e                                          ; $52b5: $b3
    or d                                          ; $52b6: $b2
    or c                                          ; $52b7: $b1
    cp l                                          ; $52b8: $bd
    cp [hl]                                       ; $52b9: $be
    nop                                           ; $52ba: $00
    cp a                                          ; $52bb: $bf
    ret nz                                        ; $52bc: $c0

    pop bc                                        ; $52bd: $c1
    jp nz, $c4c3                                  ; $52be: $c2 $c3 $c4

    push bc                                       ; $52c1: $c5
    add $00                                       ; $52c2: $c6 $00
    rst $00                                       ; $52c4: $c7
    ret z                                         ; $52c5: $c8

    call nz, $c2c3                                ; $52c6: $c4 $c3 $c2
    pop bc                                        ; $52c9: $c1
    ret nz                                        ; $52ca: $c0

    cp a                                          ; $52cb: $bf
    nop                                           ; $52cc: $00
    cp [hl]                                       ; $52cd: $be
    cp l                                          ; $52ce: $bd
    ret                                           ; $52cf: $c9


    jp z, $cccb                                   ; $52d0: $ca $cb $cc

    call Call_000_00ce                            ; $52d3: $cd $ce $00
    rst $08                                       ; $52d6: $cf
    ret nc                                        ; $52d7: $d0

    pop de                                        ; $52d8: $d1
    jp nc, $d4d3                                  ; $52d9: $d2 $d3 $d4

    ret nc                                        ; $52dc: $d0

    rst $08                                       ; $52dd: $cf
    nop                                           ; $52de: $00
    adc $cd                                       ; $52df: $ce $cd
    call z, $cacb                                 ; $52e1: $cc $cb $ca
    ret                                           ; $52e4: $c9


    push de                                       ; $52e5: $d5
    sub $00                                       ; $52e6: $d6 $00
    rst $10                                       ; $52e8: $d7
    ret c                                         ; $52e9: $d8

    reti                                          ; $52ea: $d9


    jp c, $dcdb                                   ; $52eb: $da $db $dc

    db $dd                                        ; $52ee: $dd
    sbc $00                                       ; $52ef: $de $00
    rst $18                                       ; $52f1: $df
    ldh [$dc], a                                  ; $52f2: $e0 $dc
    db $db                                        ; $52f4: $db
    jp c, $d8d9                                   ; $52f5: $da $d9 $d8

    rst $10                                       ; $52f8: $d7
    nop                                           ; $52f9: $00
    sub $d5                                       ; $52fa: $d6 $d5
    pop hl                                        ; $52fc: $e1
    ld [c], a                                     ; $52fd: $e2
    db $e3                                        ; $52fe: $e3
    db $e4                                        ; $52ff: $e4
    push hl                                       ; $5300: $e5
    and $00                                       ; $5301: $e6 $00
    rst $20                                       ; $5303: $e7
    add sp, -$17                                  ; $5304: $e8 $e9
    ld [$eceb], a                                 ; $5306: $ea $eb $ec
    add sp, -$19                                  ; $5309: $e8 $e7
    nop                                           ; $530b: $00
    and $e5                                       ; $530c: $e6 $e5
    db $e4                                        ; $530e: $e4
    db $e3                                        ; $530f: $e3
    ld [c], a                                     ; $5310: $e2
    pop hl                                        ; $5311: $e1
    db $ed                                        ; $5312: $ed
    xor $00                                       ; $5313: $ee $00
    rst $28                                       ; $5315: $ef
    ldh a, [$f1]                                  ; $5316: $f0 $f1
    jp hl                                         ; $5318: $e9


    ld a, [c]                                     ; $5319: $f2
    di                                            ; $531a: $f3
    pop af                                        ; $531b: $f1
    jp hl                                         ; $531c: $e9


    nop                                           ; $531d: $00
    db $f4                                        ; $531e: $f4
    push af                                       ; $531f: $f5
    di                                            ; $5320: $f3
    ld a, [c]                                     ; $5321: $f2
    jp hl                                         ; $5322: $e9


    pop af                                        ; $5323: $f1
    ldh a, [$ef]                                  ; $5324: $f0 $ef
    ld [de], a                                    ; $5326: $12
    xor $ed                                       ; $5327: $ee $ed
    inc bc                                        ; $5329: $03
    ld bc, $0180                                  ; $532a: $01 $80 $01
    ld bc, $3016                                  ; $532d: $01 $16 $30
    ld [bc], a                                    ; $5330: $02
    ld e, b                                       ; $5331: $58
    ld [bc], a                                    ; $5332: $02
    dec c                                         ; $5333: $0d
    db $10                                        ; $5334: $10
    ld bc, $1001                                  ; $5335: $01 $01 $10
    inc d                                         ; $5338: $14
    jr z, jr_0cb_5345                             ; $5339: $28 $0a

    add hl, bc                                    ; $533b: $09
    add hl, bc                                    ; $533c: $09
    add d                                         ; $533d: $82
    ld [de], a                                    ; $533e: $12
    db $10                                        ; $533f: $10
    add hl, bc                                    ; $5340: $09
    add hl, bc                                    ; $5341: $09
    ld bc, $0f01                                  ; $5342: $01 $01 $0f

jr_0cb_5345:
    ld bc, $0918                                  ; $5345: $01 $18 $09
    and b                                         ; $5348: $a0
    ld bc, $2f00                                  ; $5349: $01 $00 $2f
    ld [de], a                                    ; $534c: $12
    jr nc, @+$10                                  ; $534d: $30 $0e

    ld c, $0e                                     ; $534f: $0e $0e
    inc c                                         ; $5351: $0c
    ld c, $58                                     ; $5352: $0e $58
    ld c, $14                                     ; $5354: $0e $14
    db $10                                        ; $5356: $10
    cpl                                           ; $5357: $2f
    ld d, $00                                     ; $5358: $16 $00
    ld [de], a                                    ; $535a: $12
    ld [$0e0c], sp                                ; $535b: $08 $0c $0e
    inc c                                         ; $535e: $0c
    sub b                                         ; $535f: $90
    inc de                                        ; $5360: $13
    nop                                           ; $5361: $00
    ld c, $0e                                     ; $5362: $0e $0e
    ld de, $2f00                                  ; $5364: $11 $00 $2f
    ld l, $2e                                     ; $5367: $2e $2e
    ld l, $68                                     ; $5369: $2e $68
    cpl                                           ; $536b: $2f
    ld [hl+], a                                   ; $536c: $22
    nop                                           ; $536d: $00
    inc de                                        ; $536e: $13
    jr z, jr_0cb_537d                             ; $536f: $28 $0c

    stop                                          ; $5371: $10 $00
    inc l                                         ; $5373: $2c
    inc l                                         ; $5374: $2c
    ld l, $2f                                     ; $5375: $2e $2f
    inc l                                         ; $5377: $2c
    ld l, $21                                     ; $5378: $2e $21
    ld [$010c], sp                                ; $537a: $08 $0c $01

jr_0cb_537d:
    nop                                           ; $537d: $00
    dec b                                         ; $537e: $05
    ld [$1011], sp                                ; $537f: $08 $11 $10
    add hl, hl                                    ; $5382: $29
    nop                                           ; $5383: $00

jr_0cb_5384:
    cp $35                                        ; $5384: $fe $35
    db $10                                        ; $5386: $10
    ld d, $08                                     ; $5387: $16 $08
    ld d, d                                       ; $5389: $52
    nop                                           ; $538a: $00
    jr z, jr_0cb_5395                             ; $538b: $28 $08

    ld d, $08                                     ; $538d: $16 $08
    ld [hl], $18                                  ; $538f: $36 $18
    dec l                                         ; $5391: $2d
    db $10                                        ; $5392: $10
    ld c, $99                                     ; $5393: $0e $99

jr_0cb_5395:
    ld h, $18                                     ; $5395: $26 $18
    inc l                                         ; $5397: $2c
    ld l, $11                                     ; $5398: $2e $11
    jr jr_0cb_5414                                ; $539a: $18 $78

    ld [$0e0c], sp                                ; $539c: $08 $0c $0e
    add hl, sp                                    ; $539f: $39
    nop                                           ; $53a0: $00
    or a                                          ; $53a1: $b7
    inc bc                                        ; $53a2: $03
    ld [$132c], sp                                ; $53a3: $08 $2c $13
    jr @+$3c                                      ; $53a6: $18 $3a

    ld [$280e], sp                                ; $53a8: $08 $0e $28
    ld [$0064], sp                                ; $53ab: $08 $64 $00
    ld d, b                                       ; $53ae: $50
    db $10                                        ; $53af: $10
    jr jr_0cb_53be                                ; $53b0: $18 $0c

    inc c                                         ; $53b2: $0c
    ld l, [hl]                                    ; $53b3: $6e
    and c                                         ; $53b4: $a1
    nop                                           ; $53b5: $00
    inc b                                         ; $53b6: $04
    nop                                           ; $53b7: $00
    inc l                                         ; $53b8: $2c
    ld l, $4e                                     ; $53b9: $2e $4e
    ld b, b                                       ; $53bb: $40
    inc l                                         ; $53bc: $2c
    dec d                                         ; $53bd: $15

jr_0cb_53be:
    ld [$0014], sp                                ; $53be: $08 $14 $00
    dec c                                         ; $53c1: $0d
    nop                                           ; $53c2: $00
    sbc l                                         ; $53c3: $9d
    nop                                           ; $53c4: $00
    ld [$6968], sp                                ; $53c5: $08 $68 $69
    ld l, d                                       ; $53c8: $6a
    ld l, e                                       ; $53c9: $6b
    inc b                                         ; $53ca: $04
    ld [$6d6c], sp                                ; $53cb: $08 $6c $6d
    ld l, [hl]                                    ; $53ce: $6e
    call nz, $1004                                ; $53cf: $c4 $04 $10
    db $10                                        ; $53d2: $10
    ld [$706f], sp                                ; $53d3: $08 $6f $70
    ld [hl], c                                    ; $53d6: $71
    inc b                                         ; $53d7: $04
    db $10                                        ; $53d8: $10
    ld [hl], d                                    ; $53d9: $72
    ld [hl], e                                    ; $53da: $73
    ld h, c                                       ; $53db: $61
    ld [hl], h                                    ; $53dc: $74
    inc b                                         ; $53dd: $04
    db $10                                        ; $53de: $10
    db $10                                        ; $53df: $10
    ld [$7675], sp                                ; $53e0: $08 $75 $76
    ld [hl], a                                    ; $53e3: $77
    ld a, b                                       ; $53e4: $78
    inc b                                         ; $53e5: $04
    ld [$7918], sp                                ; $53e6: $08 $18 $79
    ld a, d                                       ; $53e9: $7a
    ld a, e                                       ; $53ea: $7b
    inc b                                         ; $53eb: $04
    db $10                                        ; $53ec: $10
    db $10                                        ; $53ed: $10
    ld [$7d7c], sp                                ; $53ee: $08 $7c $7d
    ld a, [hl]                                    ; $53f1: $7e
    db $10                                        ; $53f2: $10
    ld a, a                                       ; $53f3: $7f
    add b                                         ; $53f4: $80
    add c                                         ; $53f5: $81
    ld b, $58                                     ; $53f6: $06 $58
    add d                                         ; $53f8: $82
    add e                                         ; $53f9: $83
    add h                                         ; $53fa: $84
    add l                                         ; $53fb: $85
    jr nz, jr_0cb_5384                            ; $53fc: $20 $86

    add a                                         ; $53fe: $87
    ld b, $58                                     ; $53ff: $06 $58
    adc b                                         ; $5401: $88
    adc c                                         ; $5402: $89
    adc d                                         ; $5403: $8a
    adc e                                         ; $5404: $8b
    adc h                                         ; $5405: $8c
    ld b, b                                       ; $5406: $40
    adc l                                         ; $5407: $8d
    ld b, $58                                     ; $5408: $06 $58
    adc [hl]                                      ; $540a: $8e
    adc a                                         ; $540b: $8f
    sub b                                         ; $540c: $90
    sub c                                         ; $540d: $91
    sub d                                         ; $540e: $92
    sub e                                         ; $540f: $93
    add c                                         ; $5410: $81
    ld b, $58                                     ; $5411: $06 $58
    sub h                                         ; $5413: $94

jr_0cb_5414:
    sub l                                         ; $5414: $95
    sub [hl]                                      ; $5415: $96
    sub a                                         ; $5416: $97
    sbc b                                         ; $5417: $98
    sbc c                                         ; $5418: $99
    ld b, $58                                     ; $5419: $06 $58
    inc bc                                        ; $541b: $03
    sbc d                                         ; $541c: $9a
    sbc e                                         ; $541d: $9b
    sbc h                                         ; $541e: $9c
    sbc l                                         ; $541f: $9d
    sbc [hl]                                      ; $5420: $9e
    sbc a                                         ; $5421: $9f
    ld b, $58                                     ; $5422: $06 $58
    ld a, b                                       ; $5424: $78
    ld hl, sp-$2f                                 ; $5425: $f8 $d1
    ld a, b                                       ; $5427: $78
    ld hl, sp+$7e                                 ; $5428: $f8 $7e
    ld c, b                                       ; $542a: $48
    ld [bc], a                                    ; $542b: $02
    ld bc, $0320                                  ; $542c: $01 $20 $03
    inc bc                                        ; $542f: $03
    inc bc                                        ; $5430: $03
    inc b                                         ; $5431: $04
    db $10                                        ; $5432: $10
    call nz, Call_0cb_4801                        ; $5433: $c4 $01 $48
    inc d                                         ; $5436: $14
    ld c, b                                       ; $5437: $48
    ld b, $06                                     ; $5438: $06 $06
    ld b, $04                                     ; $543a: $06 $04
    adc b                                         ; $543c: $88
    inc b                                         ; $543d: $04
    inc c                                         ; $543e: $0c
    ld bc, $060c                                  ; $543f: $01 $0c $06
    ld b, $05                                     ; $5442: $06 $05
    ld b, $0c                                     ; $5444: $06 $0c
    ld c, $05                                     ; $5446: $0e $05
    nop                                           ; $5448: $00
    inc d                                         ; $5449: $14
    inc b                                         ; $544a: $04
    ld c, $0d                                     ; $544b: $0e $0d
    inc b                                         ; $544d: $04
    ld [$010e], sp                                ; $544e: $08 $0e $01
    nop                                           ; $5451: $00
    dec c                                         ; $5452: $0d
    dec c                                         ; $5453: $0d
    ld bc, $0d0e                                  ; $5454: $01 $0e $0d
    inc c                                         ; $5457: $0c
    inc c                                         ; $5458: $0c
    ld c, $0c                                     ; $5459: $0e $0c
    ld c, $03                                     ; $545b: $0e $03
    nop                                           ; $545d: $00
    ld a, [hl]                                    ; $545e: $7e
    inc c                                         ; $545f: $0c
    dec bc                                        ; $5460: $0b
    nop                                           ; $5461: $00
    ld d, $00                                     ; $5462: $16 $00
    inc de                                        ; $5464: $13
    ld [$0019], sp                                ; $5465: $08 $19 $00
    ld c, $00                                     ; $5468: $0e $00
    ld a, [bc]                                    ; $546a: $0a
    jr nz, jr_0cb_547a                            ; $546b: $20 $0d

    cp $1a                                        ; $546d: $fe $1a
    ld [$1004], sp                                ; $546f: $08 $04 $10
    dec b                                         ; $5472: $05
    jr @+$22                                      ; $5473: $18 $20

    jr jr_0cb_54b7                                ; $5475: $18 $40

    db $10                                        ; $5477: $10
    inc hl                                        ; $5478: $23
    nop                                           ; $5479: $00

jr_0cb_547a:
    inc sp                                        ; $547a: $33
    jr nz, jr_0cb_5489                            ; $547b: $20 $0c

    ld a, [hl]                                    ; $547d: $7e
    inc c                                         ; $547e: $0c
    dec a                                         ; $547f: $3d
    ld [$2829], sp                                ; $5480: $08 $29 $28
    ld d, b                                       ; $5483: $50
    nop                                           ; $5484: $00
    ld [hl], $08                                  ; $5485: $36 $08
    ld l, e                                       ; $5487: $6b
    nop                                           ; $5488: $00

jr_0cb_5489:
    ld l, h                                       ; $5489: $6c
    ld [$1106], sp                                ; $548a: $08 $06 $11
    inc b                                         ; $548d: $04
    ld b, $0d                                     ; $548e: $06 $0d
    ld a, b                                       ; $5490: $78
    nop                                           ; $5491: $00
    dec b                                         ; $5492: $05
    dec b                                         ; $5493: $05
    ld c, $12                                     ; $5494: $0e $12
    nop                                           ; $5496: $00
    rst $30                                       ; $5497: $f7
    inc e                                         ; $5498: $1c
    db $10                                        ; $5499: $10
    ld [hl], a                                    ; $549a: $77
    nop                                           ; $549b: $00
    add b                                         ; $549c: $80
    jr jr_0cb_54a6                                ; $549d: $18 $07

    db $10                                        ; $549f: $10
    inc c                                         ; $54a0: $0c
    ld [hl], l                                    ; $54a1: $75
    ld [$1033], sp                                ; $54a2: $08 $33 $10
    ld h, e                                       ; $54a5: $63

jr_0cb_54a6:
    db $10                                        ; $54a6: $10
    ld hl, sp+$6e                                 ; $54a7: $f8 $6e
    db $10                                        ; $54a9: $10
    sub d                                         ; $54aa: $92
    nop                                           ; $54ab: $00
    dec bc                                        ; $54ac: $0b
    jr c, jr_0cb_5524                             ; $54ad: $38 $75

    db $10                                        ; $54af: $10
    and a                                         ; $54b0: $a7
    nop                                           ; $54b1: $00
    inc d                                         ; $54b2: $14
    nop                                           ; $54b3: $00
    dec c                                         ; $54b4: $0d
    nop                                           ; $54b5: $00
    dec hl                                        ; $54b6: $2b

jr_0cb_54b7:
    ld bc, $6800                                  ; $54b7: $01 $00 $68
    ld l, c                                       ; $54ba: $69
    ld l, d                                       ; $54bb: $6a
    ld l, e                                       ; $54bc: $6b
    ld l, h                                       ; $54bd: $6c
    ld l, l                                       ; $54be: $6d
    ld l, [hl]                                    ; $54bf: $6e
    ld l, a                                       ; $54c0: $6f
    nop                                           ; $54c1: $00
    ld [hl], b                                    ; $54c2: $70
    ld [hl], c                                    ; $54c3: $71
    ld [hl], d                                    ; $54c4: $72
    ld l, l                                       ; $54c5: $6d
    ld l, [hl]                                    ; $54c6: $6e
    ld [hl], e                                    ; $54c7: $73
    ld [hl], h                                    ; $54c8: $74
    ld [hl], l                                    ; $54c9: $75
    nop                                           ; $54ca: $00
    halt                                          ; $54cb: $76
    ld [hl], a                                    ; $54cc: $77
    ld a, b                                       ; $54cd: $78
    ld a, c                                       ; $54ce: $79
    ld a, d                                       ; $54cf: $7a
    ld a, e                                       ; $54d0: $7b
    ld a, h                                       ; $54d1: $7c
    ld a, l                                       ; $54d2: $7d
    nop                                           ; $54d3: $00
    ld a, [hl]                                    ; $54d4: $7e
    ld a, [hl]                                    ; $54d5: $7e
    ld a, a                                       ; $54d6: $7f
    add b                                         ; $54d7: $80
    add c                                         ; $54d8: $81
    add d                                         ; $54d9: $82
    add e                                         ; $54da: $83
    ld a, [hl]                                    ; $54db: $7e
    nop                                           ; $54dc: $00
    ld a, a                                       ; $54dd: $7f
    add h                                         ; $54de: $84
    add l                                         ; $54df: $85
    add [hl]                                      ; $54e0: $86
    add a                                         ; $54e1: $87
    adc b                                         ; $54e2: $88
    adc c                                         ; $54e3: $89
    adc d                                         ; $54e4: $8a
    nop                                           ; $54e5: $00
    adc e                                         ; $54e6: $8b
    adc h                                         ; $54e7: $8c
    adc l                                         ; $54e8: $8d
    adc [hl]                                      ; $54e9: $8e
    adc a                                         ; $54ea: $8f
    adc a                                         ; $54eb: $8f
    sub b                                         ; $54ec: $90
    sub c                                         ; $54ed: $91
    nop                                           ; $54ee: $00
    sub d                                         ; $54ef: $92
    sub e                                         ; $54f0: $93
    adc [hl]                                      ; $54f1: $8e
    adc a                                         ; $54f2: $8f
    sub b                                         ; $54f3: $90
    sub h                                         ; $54f4: $94
    sub l                                         ; $54f5: $95
    sub [hl]                                      ; $54f6: $96
    nop                                           ; $54f7: $00
    sub a                                         ; $54f8: $97
    sbc b                                         ; $54f9: $98
    sbc c                                         ; $54fa: $99
    sbc d                                         ; $54fb: $9a
    sbc e                                         ; $54fc: $9b
    sbc h                                         ; $54fd: $9c
    sbc l                                         ; $54fe: $9d
    sbc [hl]                                      ; $54ff: $9e
    nop                                           ; $5500: $00
    sbc a                                         ; $5501: $9f
    and b                                         ; $5502: $a0
    and c                                         ; $5503: $a1
    and d                                         ; $5504: $a2
    and e                                         ; $5505: $a3
    and h                                         ; $5506: $a4
    and l                                         ; $5507: $a5
    and [hl]                                      ; $5508: $a6
    nop                                           ; $5509: $00
    and a                                         ; $550a: $a7
    and c                                         ; $550b: $a1
    xor b                                         ; $550c: $a8
    xor c                                         ; $550d: $a9
    xor d                                         ; $550e: $aa
    xor e                                         ; $550f: $ab
    xor h                                         ; $5510: $ac
    xor l                                         ; $5511: $ad
    nop                                           ; $5512: $00
    xor [hl]                                      ; $5513: $ae
    xor a                                         ; $5514: $af
    or b                                          ; $5515: $b0
    or c                                          ; $5516: $b1
    or d                                          ; $5517: $b2
    or e                                          ; $5518: $b3
    or h                                          ; $5519: $b4
    and c                                         ; $551a: $a1
    nop                                           ; $551b: $00
    or l                                          ; $551c: $b5
    or [hl]                                       ; $551d: $b6
    or a                                          ; $551e: $b7
    cp b                                          ; $551f: $b8
    cp c                                          ; $5520: $b9
    and c                                         ; $5521: $a1
    and c                                         ; $5522: $a1
    cp d                                          ; $5523: $ba

jr_0cb_5524:
    nop                                           ; $5524: $00
    cp e                                          ; $5525: $bb
    cp h                                          ; $5526: $bc
    cp l                                          ; $5527: $bd
    cp [hl]                                       ; $5528: $be
    cp a                                          ; $5529: $bf
    ret nz                                        ; $552a: $c0

    pop bc                                        ; $552b: $c1
    jp nz, $c300                                  ; $552c: $c2 $00 $c3

    call nz, $a1c5                                ; $552f: $c4 $c5 $a1
    and c                                         ; $5532: $a1
    add $c7                                       ; $5533: $c6 $c7
    ret z                                         ; $5535: $c8

    nop                                           ; $5536: $00
    ret                                           ; $5537: $c9


    jp z, $cba1                                   ; $5538: $ca $a1 $cb

    call z, $a1a1                                 ; $553b: $cc $a1 $a1
    and c                                         ; $553e: $a1
    nop                                           ; $553f: $00
    call $cfce                                    ; $5540: $cd $ce $cf
    ret nc                                        ; $5543: $d0

    pop de                                        ; $5544: $d1
    jp nc, $a1a1                                  ; $5545: $d2 $a1 $a1

    nop                                           ; $5548: $00
    db $d3                                        ; $5549: $d3
    call nc, $d6d5                                ; $554a: $d4 $d5 $d6
    rst $10                                       ; $554d: $d7
    ret c                                         ; $554e: $d8

    reti                                          ; $554f: $d9


    jp c, Jump_000_1384                           ; $5550: $da $84 $13

    nop                                           ; $5553: $00
    and c                                         ; $5554: $a1
    db $db                                        ; $5555: $db
    call c, Call_000_07dd                         ; $5556: $dc $dd $07
    ld [$dfde], sp                                ; $5559: $08 $de $df
    nop                                           ; $555c: $00
    ldh [$e1], a                                  ; $555d: $e0 $e1
    ld [c], a                                     ; $555f: $e2
    db $e3                                        ; $5560: $e3
    db $e4                                        ; $5561: $e4
    push hl                                       ; $5562: $e5
    and $a1                                       ; $5563: $e6 $a1
    nop                                           ; $5565: $00
    rst $20                                       ; $5566: $e7
    add sp, -$17                                  ; $5567: $e8 $e9

jr_0cb_5569:
    ld [$a1eb], a                                 ; $5569: $ea $eb $a1
    and c                                         ; $556c: $a1
    db $ec                                        ; $556d: $ec
    nop                                           ; $556e: $00
    db $ed                                        ; $556f: $ed
    xor $ef                                       ; $5570: $ee $ef
    ldh a, [$f1]                                  ; $5572: $f0 $f1

jr_0cb_5574:
    ld a, [c]                                     ; $5574: $f2
    di                                            ; $5575: $f3
    db $f4                                        ; $5576: $f4
    nop                                           ; $5577: $00
    and c                                         ; $5578: $a1
    and c                                         ; $5579: $a1
    push af                                       ; $557a: $f5
    or $f7                                        ; $557b: $f6 $f7
    ld hl, sp-$07                                 ; $557d: $f8 $f9
    and c                                         ; $557f: $a1
    nop                                           ; $5580: $00
    ld a, [$fcfb]                                 ; $5581: $fa $fb $fc
    db $fd                                        ; $5584: $fd
    cp $ff                                        ; $5585: $fe $ff
    nop                                           ; $5587: $00
    ld bc, $a100                                  ; $5588: $01 $00 $a1
    ld [bc], a                                    ; $558b: $02
    inc bc                                        ; $558c: $03
    inc b                                         ; $558d: $04
    dec b                                         ; $558e: $05
    ld b, $07                                     ; $558f: $06 $07
    ld [$0900], sp                                ; $5591: $08 $00 $09
    ld a, [bc]                                    ; $5594: $0a
    dec bc                                        ; $5595: $0b
    inc c                                         ; $5596: $0c
    dec c                                         ; $5597: $0d
    ld c, $0f                                     ; $5598: $0e $0f
    db $10                                        ; $559a: $10
    db $10                                        ; $559b: $10
    ld de, $1312                                  ; $559c: $11 $12 $13
    ld e, e                                       ; $559f: $5b
    nop                                           ; $55a0: $00
    inc d                                         ; $55a1: $14
    dec d                                         ; $55a2: $15
    ld d, $a1                                     ; $55a3: $16 $a1
    nop                                           ; $55a5: $00
    and c                                         ; $55a6: $a1
    rla                                           ; $55a7: $17
    jr jr_0cb_55c3                                ; $55a8: $18 $19

    ld a, [de]                                    ; $55aa: $1a
    dec de                                        ; $55ab: $1b
    inc e                                         ; $55ac: $1c
    dec e                                         ; $55ad: $1d
    ld [$1f1e], sp                                ; $55ae: $08 $1e $1f
    jr nz, jr_0cb_55d4                            ; $55b1: $20 $21

    ld l, [hl]                                    ; $55b3: $6e
    nop                                           ; $55b4: $00
    ld [hl+], a                                   ; $55b5: $22
    inc hl                                        ; $55b6: $23
    inc h                                         ; $55b7: $24
    nop                                           ; $55b8: $00
    dec h                                         ; $55b9: $25
    ld h, $a1                                     ; $55ba: $26 $a1
    daa                                           ; $55bc: $27
    jr z, jr_0cb_55e8                             ; $55bd: $28 $29

    ld a, [hl+]                                   ; $55bf: $2a
    dec hl                                        ; $55c0: $2b
    nop                                           ; $55c1: $00
    inc l                                         ; $55c2: $2c

jr_0cb_55c3:
    dec l                                         ; $55c3: $2d
    ld l, $2f                                     ; $55c4: $2e $2f
    jr nc, jr_0cb_5569                            ; $55c6: $30 $a1

    and c                                         ; $55c8: $a1
    ld sp, $3200                                  ; $55c9: $31 $00 $32
    inc sp                                        ; $55cc: $33
    inc [hl]                                      ; $55cd: $34
    dec [hl]                                      ; $55ce: $35
    ld [hl], $37                                  ; $55cf: $36 $37
    jr c, jr_0cb_5574                             ; $55d1: $38 $a1

    dec bc                                        ; $55d3: $0b

jr_0cb_55d4:
    and c                                         ; $55d4: $a1
    add hl, sp                                    ; $55d5: $39
    ld a, [hl-]                                   ; $55d6: $3a
    ld b, $01                                     ; $55d7: $06 $01
    ld d, b                                       ; $55d9: $50
    nop                                           ; $55da: $00
    ld bc, $1410                                  ; $55db: $01 $10 $14
    jr nz, jr_0cb_564e                            ; $55de: $20 $6e

    ld c, $01                                     ; $55e0: $0e $01
    nop                                           ; $55e2: $00
    ld b, $00                                     ; $55e3: $06 $00
    ld [$1001], sp                                ; $55e5: $08 $01 $10

jr_0cb_55e8:
    dec c                                         ; $55e8: $0d
    ld [$6804], sp                                ; $55e9: $08 $04 $68
    rrca                                          ; $55ec: $0f
    add e                                         ; $55ed: $83
    ld bc, $0980                                  ; $55ee: $01 $80 $09
    dec c                                         ; $55f1: $0d
    dec c                                         ; $55f2: $0d
    dec c                                         ; $55f3: $0d
    add hl, bc                                    ; $55f4: $09
    ld bc, $0500                                  ; $55f5: $01 $00 $05
    ld [$0afb], sp                                ; $55f8: $08 $fb $0a
    ld [$000f], sp                                ; $55fb: $08 $0f $00
    rlca                                          ; $55fe: $07
    jr nz, jr_0cb_5617                            ; $55ff: $20 $16

    jr z, jr_0cb_5606                             ; $5601: $28 $03

    jr jr_0cb_5612                                ; $5603: $18 $0d

    ld a, [de]                                    ; $5605: $1a

jr_0cb_5606:
    db $10                                        ; $5606: $10
    inc h                                         ; $5607: $24
    db $10                                        ; $5608: $10
    rst $38                                       ; $5609: $ff
    ld b, $18                                     ; $560a: $06 $18

jr_0cb_560c:
    dec [hl]                                      ; $560c: $35
    db $10                                        ; $560d: $10
    dec a                                         ; $560e: $3d
    ld [$1841], sp                                ; $560f: $08 $41 $18

jr_0cb_5612:
    dec sp                                        ; $5612: $3b
    ld [$2817], sp                                ; $5613: $08 $17 $28
    scf                                           ; $5616: $37

jr_0cb_5617:
    jr jr_0cb_5671                                ; $5617: $18 $58

    jr z, @+$01                                   ; $5619: $28 $ff

    ld e, d                                       ; $561b: $5a
    jr jr_0cb_564f                                ; $561c: $18 $31

    jr nz, @+$1b                                  ; $561e: $20 $19

    ld b, b                                       ; $5620: $40
    dec sp                                        ; $5621: $3b
    jr jr_0cb_5686                                ; $5622: $18 $62

    jr z, jr_0cb_56a2                             ; $5624: $28 $7c

    db $10                                        ; $5626: $10
    ld [hl], d                                    ; $5627: $72
    ld b, b                                       ; $5628: $40
    ld l, b                                       ; $5629: $68
    jr jr_0cb_560c                                ; $562a: $18 $e0

    ld c, b                                       ; $562c: $48
    jr c, jr_0cb_564c                             ; $562d: $38 $1d

    jr nz, @-$52                                  ; $562f: $20 $ac

    db $10                                        ; $5631: $10
    inc d                                         ; $5632: $14
    nop                                           ; $5633: $00
    dec c                                         ; $5634: $0d
    nop                                           ; $5635: $00
    ld b, h                                       ; $5636: $44
    ld bc, $6800                                  ; $5637: $01 $00 $68
    ld l, c                                       ; $563a: $69
    ld l, d                                       ; $563b: $6a
    ld l, e                                       ; $563c: $6b
    ld l, h                                       ; $563d: $6c
    ld l, l                                       ; $563e: $6d
    ld l, [hl]                                    ; $563f: $6e
    ld l, a                                       ; $5640: $6f
    db $10                                        ; $5641: $10
    ld l, b                                       ; $5642: $68
    ld [hl], b                                    ; $5643: $70
    ld [hl], c                                    ; $5644: $71
    inc b                                         ; $5645: $04
    nop                                           ; $5646: $00
    ld [hl], d                                    ; $5647: $72
    ld [hl], e                                    ; $5648: $73
    ld [hl], h                                    ; $5649: $74
    ld [hl], l                                    ; $564a: $75
    nop                                           ; $564b: $00

jr_0cb_564c:
    ld l, [hl]                                    ; $564c: $6e
    ld l, a                                       ; $564d: $6f

jr_0cb_564e:
    halt                                          ; $564e: $76

jr_0cb_564f:
    ld [hl], a                                    ; $564f: $77
    ld a, b                                       ; $5650: $78
    ld a, c                                       ; $5651: $79
    ld a, d                                       ; $5652: $7a
    ld a, e                                       ; $5653: $7b
    inc b                                         ; $5654: $04
    ld a, h                                       ; $5655: $7c
    ld a, l                                       ; $5656: $7d
    halt                                          ; $5657: $76
    ld a, [hl]                                    ; $5658: $7e
    ld a, a                                       ; $5659: $7f
    inc b                                         ; $565a: $04
    nop                                           ; $565b: $00
    add b                                         ; $565c: $80
    add c                                         ; $565d: $81
    nop                                           ; $565e: $00
    add d                                         ; $565f: $82
    add e                                         ; $5660: $83
    ld a, h                                       ; $5661: $7c
    ld a, l                                       ; $5662: $7d
    add h                                         ; $5663: $84
    add l                                         ; $5664: $85
    add [hl]                                      ; $5665: $86
    add a                                         ; $5666: $87
    ld bc, $8988                                  ; $5667: $01 $88 $89
    adc d                                         ; $566a: $8a
    adc e                                         ; $566b: $8b
    add h                                         ; $566c: $84
    add l                                         ; $566d: $85
    adc h                                         ; $566e: $8c
    inc b                                         ; $566f: $04
    nop                                           ; $5670: $00

jr_0cb_5671:
    add b                                         ; $5671: $80
    inc c                                         ; $5672: $0c
    jr @-$71                                      ; $5673: $18 $8d

    adc [hl]                                      ; $5675: $8e
    adc a                                         ; $5676: $8f
    sub b                                         ; $5677: $90
    sub c                                         ; $5678: $91
    sub d                                         ; $5679: $92
    sub e                                         ; $567a: $93
    nop                                           ; $567b: $00
    sub h                                         ; $567c: $94
    sub l                                         ; $567d: $95
    sub [hl]                                      ; $567e: $96
    sub a                                         ; $567f: $97
    sbc b                                         ; $5680: $98
    sbc c                                         ; $5681: $99
    sub e                                         ; $5682: $93
    sub d                                         ; $5683: $92
    nop                                           ; $5684: $00
    sub c                                         ; $5685: $91

jr_0cb_5686:
    sub b                                         ; $5686: $90
    adc a                                         ; $5687: $8f
    adc [hl]                                      ; $5688: $8e
    adc l                                         ; $5689: $8d
    sbc d                                         ; $568a: $9a
    sbc e                                         ; $568b: $9b
    sbc h                                         ; $568c: $9c
    nop                                           ; $568d: $00
    sbc l                                         ; $568e: $9d
    sbc [hl]                                      ; $568f: $9e
    sbc a                                         ; $5690: $9f
    and b                                         ; $5691: $a0
    and c                                         ; $5692: $a1
    and d                                         ; $5693: $a2
    and e                                         ; $5694: $a3
    and h                                         ; $5695: $a4
    nop                                           ; $5696: $00
    and l                                         ; $5697: $a5
    and [hl]                                      ; $5698: $a6
    and b                                         ; $5699: $a0
    sbc a                                         ; $569a: $9f
    sbc [hl]                                      ; $569b: $9e
    sbc l                                         ; $569c: $9d
    sbc h                                         ; $569d: $9c
    sbc e                                         ; $569e: $9b
    nop                                           ; $569f: $00
    sbc d                                         ; $56a0: $9a
    and a                                         ; $56a1: $a7

jr_0cb_56a2:
    xor b                                         ; $56a2: $a8
    xor c                                         ; $56a3: $a9
    xor d                                         ; $56a4: $aa
    xor e                                         ; $56a5: $ab
    xor h                                         ; $56a6: $ac
    xor l                                         ; $56a7: $ad
    nop                                           ; $56a8: $00
    xor [hl]                                      ; $56a9: $ae
    xor a                                         ; $56aa: $af
    or b                                          ; $56ab: $b0
    or c                                          ; $56ac: $b1
    or d                                          ; $56ad: $b2
    or e                                          ; $56ae: $b3
    xor l                                         ; $56af: $ad
    xor h                                         ; $56b0: $ac
    nop                                           ; $56b1: $00
    xor e                                         ; $56b2: $ab
    xor d                                         ; $56b3: $aa
    xor c                                         ; $56b4: $a9
    xor b                                         ; $56b5: $a8
    and a                                         ; $56b6: $a7
    or h                                          ; $56b7: $b4
    or l                                          ; $56b8: $b5
    or [hl]                                       ; $56b9: $b6
    nop                                           ; $56ba: $00
    or a                                          ; $56bb: $b7
    cp b                                          ; $56bc: $b8
    cp c                                          ; $56bd: $b9
    cp d                                          ; $56be: $ba
    cp e                                          ; $56bf: $bb
    cp h                                          ; $56c0: $bc
    cp l                                          ; $56c1: $bd
    cp [hl]                                       ; $56c2: $be
    nop                                           ; $56c3: $00
    cp a                                          ; $56c4: $bf
    ret nz                                        ; $56c5: $c0

    cp d                                          ; $56c6: $ba
    cp c                                          ; $56c7: $b9
    cp b                                          ; $56c8: $b8
    or a                                          ; $56c9: $b7
    or [hl]                                       ; $56ca: $b6
    or l                                          ; $56cb: $b5
    nop                                           ; $56cc: $00
    or h                                          ; $56cd: $b4
    pop bc                                        ; $56ce: $c1
    jp nz, $c4c3                                  ; $56cf: $c2 $c3 $c4

    push bc                                       ; $56d2: $c5
    add $c7                                       ; $56d3: $c6 $c7
    nop                                           ; $56d5: $00
    ret z                                         ; $56d6: $c8

    ret                                           ; $56d7: $c9


    jp z, $cccb                                   ; $56d8: $ca $cb $cc

    call $c6c7                                    ; $56db: $cd $c7 $c6
    nop                                           ; $56de: $00
    push bc                                       ; $56df: $c5
    call nz, $c2c3                                ; $56e0: $c4 $c3 $c2
    pop bc                                        ; $56e3: $c1
    adc $cf                                       ; $56e4: $ce $cf
    ret nc                                        ; $56e6: $d0

    nop                                           ; $56e7: $00
    pop de                                        ; $56e8: $d1
    jp nc, $d4d3                                  ; $56e9: $d2 $d3 $d4

    push de                                       ; $56ec: $d5
    sub $d7                                       ; $56ed: $d6 $d7
    ret c                                         ; $56ef: $d8

    nop                                           ; $56f0: $00
    reti                                          ; $56f1: $d9


    jp c, $d3d4                                   ; $56f2: $da $d4 $d3

    jp nc, $d0d1                                  ; $56f5: $d2 $d1 $d0

    rst $08                                       ; $56f8: $cf
    nop                                           ; $56f9: $00
    adc $db                                       ; $56fa: $ce $db
    call c, $dedd                                 ; $56fc: $dc $dd $de
    rst $18                                       ; $56ff: $df
    ldh [$e1], a                                  ; $5700: $e0 $e1
    nop                                           ; $5702: $00
    ld [c], a                                     ; $5703: $e2
    db $e3                                        ; $5704: $e3
    db $e4                                        ; $5705: $e4
    push hl                                       ; $5706: $e5
    and $e7                                       ; $5707: $e6 $e7
    pop hl                                        ; $5709: $e1
    ldh [rP1], a                                  ; $570a: $e0 $00
    rst $18                                       ; $570c: $df
    sbc $dd                                       ; $570d: $de $dd
    call c, $e8db                                 ; $570f: $dc $db $e8
    jp hl                                         ; $5712: $e9


    ld [$eb00], a                                 ; $5713: $ea $00 $eb
    db $ec                                        ; $5716: $ec
    db $ed                                        ; $5717: $ed
    xor $ef                                       ; $5718: $ee $ef
    ldh a, [$f1]                                  ; $571a: $f0 $f1
    ld a, [c]                                     ; $571c: $f2
    nop                                           ; $571d: $00
    di                                            ; $571e: $f3
    db $f4                                        ; $571f: $f4
    xor $ed                                       ; $5720: $ee $ed
    db $ec                                        ; $5722: $ec
    db $eb                                        ; $5723: $eb
    ld [$00e9], a                                 ; $5724: $ea $e9 $00
    add sp, -$0b                                  ; $5727: $e8 $f5
    or $f7                                        ; $5729: $f6 $f7
    ld hl, sp-$07                                 ; $572b: $f8 $f9
    ld a, [$00fb]                                 ; $572d: $fa $fb $00
    db $fc                                        ; $5730: $fc
    db $fd                                        ; $5731: $fd
    cp $ff                                        ; $5732: $fe $ff
    nop                                           ; $5734: $00
    ld bc, $fafb                                  ; $5735: $01 $fb $fa
    nop                                           ; $5738: $00
    ld sp, hl                                     ; $5739: $f9
    ld hl, sp-$09                                 ; $573a: $f8 $f7
    or $f5                                        ; $573c: $f6 $f5
    ld [bc], a                                    ; $573e: $02
    inc bc                                        ; $573f: $03
    inc b                                         ; $5740: $04
    nop                                           ; $5741: $00
    dec b                                         ; $5742: $05
    ld b, $07                                     ; $5743: $06 $07
    ld [$0a09], sp                                ; $5745: $08 $09 $0a
    dec bc                                        ; $5748: $0b
    inc c                                         ; $5749: $0c
    nop                                           ; $574a: $00
    dec c                                         ; $574b: $0d
    ld c, $08                                     ; $574c: $0e $08
    rlca                                          ; $574e: $07
    ld b, $05                                     ; $574f: $06 $05
    inc b                                         ; $5751: $04
    inc bc                                        ; $5752: $03
    ld a, [bc]                                    ; $5753: $0a
    ld [bc], a                                    ; $5754: $02
    inc b                                         ; $5755: $04
    inc b                                         ; $5756: $04
    inc bc                                        ; $5757: $03
    ld bc, $0400                                  ; $5758: $01 $00 $04
    ld bc, $0220                                  ; $575b: $01 $20 $02
    add sp, $01                                   ; $575e: $e8 $01
    nop                                           ; $5760: $00
    inc c                                         ; $5761: $0c
    ld [$4814], sp                                ; $5762: $08 $14 $48
    ld a, [bc]                                    ; $5765: $0a
    ld bc, $0400                                  ; $5766: $01 $00 $04
    inc b                                         ; $5769: $04
    inc c                                         ; $576a: $0c
    xor b                                         ; $576b: $a8
    ld bc, $0f80                                  ; $576c: $01 $80 $0f
    ld bc, $2f48                                  ; $576f: $01 $48 $2f
    ld bc, $0e18                                  ; $5772: $01 $18 $0e
    dec c                                         ; $5775: $0d
    dec c                                         ; $5776: $0d
    ld [$0d0e], sp                                ; $5777: $08 $0e $0d
    ld c, $0e                                     ; $577a: $0e $0e
    rlca                                          ; $577c: $07
    ld [$0e0e], sp                                ; $577d: $08 $0e $0e
    ld l, $3f                                     ; $5780: $2e $3f
    ld l, $2d                                     ; $5782: $2e $2d
    inc bc                                        ; $5784: $03
    ld [$0010], sp                                ; $5785: $08 $10 $00
    inc de                                        ; $5788: $13
    jr nc, jr_0cb_579f                            ; $5789: $30 $14

    nop                                           ; $578b: $00

jr_0cb_578c:
    ld d, $00                                     ; $578c: $16 $00
    inc d                                         ; $578e: $14
    db $10                                        ; $578f: $10
    or [hl]                                       ; $5790: $b6
    dec hl                                        ; $5791: $2b
    jr nc, jr_0cb_57a2                            ; $5792: $30 $0e

    ld de, $2900                                  ; $5794: $11 $00 $29
    nop                                           ; $5797: $00
    ld l, $3c                                     ; $5798: $2e $3c
    nop                                           ; $579a: $00
    dec hl                                        ; $579b: $2b
    jr z, @+$10                                   ; $579c: $28 $0e

    ld c, l                                       ; $579e: $4d

jr_0cb_579f:
    ld c, $12                                     ; $579f: $0e $12
    db $10                                        ; $57a1: $10

jr_0cb_57a2:
    dec l                                         ; $57a2: $2d
    dec l                                         ; $57a3: $2d
    ld [hl+], a                                   ; $57a4: $22
    jr nz, jr_0cb_57c1                            ; $57a5: $20 $1a

    db $10                                        ; $57a7: $10
    ld c, $25                                     ; $57a8: $0e $25
    ld [$28f3], sp                                ; $57aa: $08 $f3 $28
    db $10                                        ; $57ad: $10
    ld c, c                                       ; $57ae: $49
    ld [$2004], sp                                ; $57af: $08 $04 $20
    daa                                           ; $57b2: $27
    db $10                                        ; $57b3: $10
    ld l, $2d                                     ; $57b4: $2e $2d
    dec h                                         ; $57b6: $25
    db $10                                        ; $57b7: $10
    dec a                                         ; $57b8: $3d
    jr z, @+$01                                   ; $57b9: $28 $ff

    jr z, jr_0cb_57cd                             ; $57bb: $28 $10

    ld a, b                                       ; $57bd: $78
    nop                                           ; $57be: $00
    ld a, c                                       ; $57bf: $79
    db $10                                        ; $57c0: $10

jr_0cb_57c1:
    adc [hl]                                      ; $57c1: $8e
    jr nz, jr_0cb_5838                            ; $57c2: $20 $74

    nop                                           ; $57c4: $00
    ld h, l                                       ; $57c5: $65
    ld [$088c], sp                                ; $57c6: $08 $8c $08
    adc c                                         ; $57c9: $89
    jr jr_0cb_578c                                ; $57ca: $18 $c0

    ld a, b                                       ; $57cc: $78

jr_0cb_57cd:
    ld [$0879], sp                                ; $57cd: $08 $79 $08
    dec l                                         ; $57d0: $2d
    ld l, $14                                     ; $57d1: $2e $14
    nop                                           ; $57d3: $00
    dec c                                         ; $57d4: $0d
    nop                                           ; $57d5: $00
    inc a                                         ; $57d6: $3c
    ld bc, $6808                                  ; $57d7: $01 $08 $68
    ld l, c                                       ; $57da: $69
    ld l, d                                       ; $57db: $6a
    ld l, e                                       ; $57dc: $6b
    inc b                                         ; $57dd: $04
    db $10                                        ; $57de: $10
    ld l, h                                       ; $57df: $6c
    ld l, l                                       ; $57e0: $6d
    ld l, [hl]                                    ; $57e1: $6e
    ld b, c                                       ; $57e2: $41
    ld l, a                                       ; $57e3: $6f
    inc c                                         ; $57e4: $0c
    jr nz, @+$72                                  ; $57e5: $20 $70

    ld [hl], c                                    ; $57e7: $71
    ld [hl], d                                    ; $57e8: $72
    ld [hl], e                                    ; $57e9: $73
    ld [hl], h                                    ; $57ea: $74
    inc b                                         ; $57eb: $04
    ld [$7508], sp                                ; $57ec: $08 $08 $75
    halt                                          ; $57ef: $76
    ld [hl], a                                    ; $57f0: $77
    ld a, b                                       ; $57f1: $78
    inc c                                         ; $57f2: $0c
    nop                                           ; $57f3: $00
    ld a, c                                       ; $57f4: $79
    ld [hl], b                                    ; $57f5: $70
    ld [hl], d                                    ; $57f6: $72
    ld [bc], a                                    ; $57f7: $02
    ld [hl], e                                    ; $57f8: $73
    ld a, d                                       ; $57f9: $7a
    ld a, e                                       ; $57fa: $7b
    ld a, h                                       ; $57fb: $7c
    ld a, l                                       ; $57fc: $7d
    ld a, [hl]                                    ; $57fd: $7e
    inc b                                         ; $57fe: $04
    ld [$107f], sp                                ; $57ff: $08 $7f $10
    add b                                         ; $5802: $80
    add c                                         ; $5803: $81
    add d                                         ; $5804: $82
    inc c                                         ; $5805: $0c

Call_0cb_5806:
    nop                                           ; $5806: $00
    add e                                         ; $5807: $83
    ld a, d                                       ; $5808: $7a
    ld a, h                                       ; $5809: $7c
    ld a, l                                       ; $580a: $7d
    nop                                           ; $580b: $00
    add h                                         ; $580c: $84
    add l                                         ; $580d: $85
    add [hl]                                      ; $580e: $86
    add a                                         ; $580f: $87
    adc b                                         ; $5810: $88
    adc c                                         ; $5811: $89
    adc d                                         ; $5812: $8a
    adc e                                         ; $5813: $8b
    nop                                           ; $5814: $00
    adc h                                         ; $5815: $8c
    adc l                                         ; $5816: $8d
    adc [hl]                                      ; $5817: $8e
    adc a                                         ; $5818: $8f
    sub b                                         ; $5819: $90
    sub c                                         ; $581a: $91
    sub d                                         ; $581b: $92
    sub e                                         ; $581c: $93
    nop                                           ; $581d: $00
    sub h                                         ; $581e: $94
    add h                                         ; $581f: $84
    sub l                                         ; $5820: $95
    sub [hl]                                      ; $5821: $96
    sub a                                         ; $5822: $97
    sbc b                                         ; $5823: $98
    sbc c                                         ; $5824: $99
    sbc d                                         ; $5825: $9a
    nop                                           ; $5826: $00
    sbc e                                         ; $5827: $9b
    sbc h                                         ; $5828: $9c
    sbc l                                         ; $5829: $9d
    sbc [hl]                                      ; $582a: $9e
    sbc a                                         ; $582b: $9f
    and b                                         ; $582c: $a0
    and b                                         ; $582d: $a0
    sbc a                                         ; $582e: $9f
    nop                                           ; $582f: $00
    sbc [hl]                                      ; $5830: $9e
    sbc l                                         ; $5831: $9d
    sbc h                                         ; $5832: $9c
    sbc e                                         ; $5833: $9b
    sbc d                                         ; $5834: $9a
    sbc c                                         ; $5835: $99
    sbc b                                         ; $5836: $98
    sub a                                         ; $5837: $97

jr_0cb_5838:
    nop                                           ; $5838: $00
    xor e                                         ; $5839: $ab
    xor h                                         ; $583a: $ac
    xor l                                         ; $583b: $ad
    xor [hl]                                      ; $583c: $ae
    xor a                                         ; $583d: $af
    or b                                          ; $583e: $b0
    or c                                          ; $583f: $b1
    or d                                          ; $5840: $b2
    nop                                           ; $5841: $00
    or e                                          ; $5842: $b3
    or h                                          ; $5843: $b4
    or h                                          ; $5844: $b4
    or e                                          ; $5845: $b3
    or d                                          ; $5846: $b2
    or c                                          ; $5847: $b1
    or b                                          ; $5848: $b0
    xor a                                         ; $5849: $af
    nop                                           ; $584a: $00
    xor [hl]                                      ; $584b: $ae
    xor l                                         ; $584c: $ad
    xor h                                         ; $584d: $ac
    xor e                                         ; $584e: $ab
    cp a                                          ; $584f: $bf
    ret nz                                        ; $5850: $c0

    pop bc                                        ; $5851: $c1
    jp nz, $c300                                  ; $5852: $c2 $00 $c3

    call nz, $c6c5                                ; $5855: $c4 $c5 $c6
    rst $00                                       ; $5858: $c7
    ret z                                         ; $5859: $c8

    ret z                                         ; $585a: $c8

    rst $00                                       ; $585b: $c7
    nop                                           ; $585c: $00
    add $c5                                       ; $585d: $c6 $c5
    call nz, $c2c3                                ; $585f: $c4 $c3 $c2
    pop bc                                        ; $5862: $c1
    ret nz                                        ; $5863: $c0

    cp a                                          ; $5864: $bf
    nop                                           ; $5865: $00
    db $d3                                        ; $5866: $d3
    call nc, $d6d5                                ; $5867: $d4 $d5 $d6
    rst $10                                       ; $586a: $d7
    ret c                                         ; $586b: $d8

    reti                                          ; $586c: $d9


    jp c, $db00                                   ; $586d: $da $00 $db

    call c, $dbdc                                 ; $5870: $dc $dc $db
    jp c, $d8d9                                   ; $5873: $da $d9 $d8

    rst $10                                       ; $5876: $d7
    nop                                           ; $5877: $00
    sub $d5                                       ; $5878: $d6 $d5
    call nc, $e7d3                                ; $587a: $d4 $d3 $e7
    add sp, -$17                                  ; $587d: $e8 $e9
    ld [$eb00], a                                 ; $587f: $ea $00 $eb
    db $ec                                        ; $5882: $ec
    db $ed                                        ; $5883: $ed
    xor $ef                                       ; $5884: $ee $ef
    ldh a, [$f0]                                  ; $5886: $f0 $f0
    rst $28                                       ; $5888: $ef
    nop                                           ; $5889: $00
    xor $ed                                       ; $588a: $ee $ed
    db $ec                                        ; $588c: $ec
    db $eb                                        ; $588d: $eb
    ld [$e8e9], a                                 ; $588e: $ea $e9 $e8
    rst $20                                       ; $5891: $e7
    nop                                           ; $5892: $00
    and $e5                                       ; $5893: $e6 $e5
    db $e4                                        ; $5895: $e4
    db $e3                                        ; $5896: $e3
    ld [c], a                                     ; $5897: $e2
    pop hl                                        ; $5898: $e1
    ldh [$df], a                                  ; $5899: $e0 $df
    nop                                           ; $589b: $00
    sbc $dd                                       ; $589c: $de $dd
    db $dd                                        ; $589e: $dd
    sbc $df                                       ; $589f: $de $df
    ldh [$e1], a                                  ; $58a1: $e0 $e1
    ld [c], a                                     ; $58a3: $e2
    nop                                           ; $58a4: $00
    db $e3                                        ; $58a5: $e3
    db $e4                                        ; $58a6: $e4
    push hl                                       ; $58a7: $e5
    and $d2                                       ; $58a8: $e6 $d2
    pop de                                        ; $58aa: $d1
    ret nc                                        ; $58ab: $d0

    rst $08                                       ; $58ac: $cf
    nop                                           ; $58ad: $00
    adc $cd                                       ; $58ae: $ce $cd
    call z, $cacb                                 ; $58b0: $cc $cb $ca
    ret                                           ; $58b3: $c9


    ret                                           ; $58b4: $c9


    jp z, $cb00                                   ; $58b5: $ca $00 $cb

    call z, $cecd                                 ; $58b8: $cc $cd $ce
    rst $08                                       ; $58bb: $cf
    ret nc                                        ; $58bc: $d0

    pop de                                        ; $58bd: $d1
    jp nc, $be00                                  ; $58be: $d2 $00 $be

    cp l                                          ; $58c1: $bd
    cp h                                          ; $58c2: $bc
    cp e                                          ; $58c3: $bb
    cp d                                          ; $58c4: $ba
    cp c                                          ; $58c5: $b9
    cp b                                          ; $58c6: $b8
    or a                                          ; $58c7: $b7
    nop                                           ; $58c8: $00
    or [hl]                                       ; $58c9: $b6
    or l                                          ; $58ca: $b5
    or l                                          ; $58cb: $b5
    or [hl]                                       ; $58cc: $b6
    or a                                          ; $58cd: $b7
    cp b                                          ; $58ce: $b8
    cp c                                          ; $58cf: $b9
    cp d                                          ; $58d0: $ba
    nop                                           ; $58d1: $00
    cp e                                          ; $58d2: $bb
    cp h                                          ; $58d3: $bc
    cp l                                          ; $58d4: $bd
    cp [hl]                                       ; $58d5: $be
    xor d                                         ; $58d6: $aa
    xor c                                         ; $58d7: $a9
    xor b                                         ; $58d8: $a8
    and a                                         ; $58d9: $a7
    nop                                           ; $58da: $00
    and [hl]                                      ; $58db: $a6
    and l                                         ; $58dc: $a5
    and h                                         ; $58dd: $a4
    and e                                         ; $58de: $a3
    and d                                         ; $58df: $a2
    and c                                         ; $58e0: $a1
    and c                                         ; $58e1: $a1
    and d                                         ; $58e2: $a2
    nop                                           ; $58e3: $00
    and e                                         ; $58e4: $a3
    and h                                         ; $58e5: $a4
    and l                                         ; $58e6: $a5
    and [hl]                                      ; $58e7: $a6
    and a                                         ; $58e8: $a7
    xor b                                         ; $58e9: $a8
    xor c                                         ; $58ea: $a9
    xor d                                         ; $58eb: $aa
    ld e, a                                       ; $58ec: $5f
    rlca                                          ; $58ed: $07
    ld bc, $0428                                  ; $58ee: $01 $28 $04
    ld bc, $0b00                                  ; $58f1: $01 $00 $0b
    jr z, jr_0cb_590a                             ; $58f4: $28 $14

    ld h, b                                       ; $58f6: $60
    add hl, de                                    ; $58f7: $19
    ld [$3814], sp                                ; $58f8: $08 $14 $38
    inc d                                         ; $58fb: $14
    inc c                                         ; $58fc: $0c
    inc c                                         ; $58fd: $0c
    inc c                                         ; $58fe: $0c
    dec [hl]                                      ; $58ff: $35
    nop                                           ; $5900: $00
    inc c                                         ; $5901: $0c
    dec l                                         ; $5902: $2d
    nop                                           ; $5903: $00
    inc c                                         ; $5904: $0c
    ld c, $f0                                     ; $5905: $0e $f0
    ld bc, $1320                                  ; $5907: $01 $20 $13

jr_0cb_590a:
    nop                                           ; $590a: $00
    inc c                                         ; $590b: $0c
    ld [$1005], sp                                ; $590c: $08 $05 $10
    ld c, $0a                                     ; $590f: $0e $0a
    ld a, [bc]                                    ; $5911: $0a
    dec c                                         ; $5912: $0d
    adc c                                         ; $5913: $89
    ld [bc], a                                    ; $5914: $02
    nop                                           ; $5915: $00

jr_0cb_5916:
    ld a, [bc]                                    ; $5916: $0a
    ld c, $2e                                     ; $5917: $0e $2e
    ld bc, $2a00                                  ; $5919: $01 $00 $2a
    ld a, [hl+]                                   ; $591c: $2a
    dec b                                         ; $591d: $05
    ld [$12c0], sp                                ; $591e: $08 $c0 $12
    ld [$0801], sp                                ; $5921: $08 $01 $08
    dec c                                         ; $5924: $0d
    ld a, [bc]                                    ; $5925: $0a
    dec l                                         ; $5926: $2d
    ld a, [hl+]                                   ; $5927: $2a
    ld a, [hl+]                                   ; $5928: $2a
    ld a, [hl+]                                   ; $5929: $2a
    cp $04                                        ; $592a: $fe $04
    jr jr_0cb_5950                                ; $592c: $18 $22

    nop                                           ; $592e: $00
    inc bc                                        ; $592f: $03
    jr nz, @+$15                                  ; $5930: $20 $13

    jr nz, jr_0cb_594c                            ; $5932: $20 $18

    nop                                           ; $5934: $00
    ld a, [hl-]                                   ; $5935: $3a
    jr nz, @+$3f                                  ; $5936: $20 $3d

    nop                                           ; $5938: $00
    dec l                                         ; $5939: $2d
    sub [hl]                                      ; $593a: $96
    ld [de], a                                    ; $593b: $12
    jr nz, jr_0cb_5968                            ; $593c: $20 $2a

    dec l                                         ; $593e: $2d
    ld c, l                                       ; $593f: $4d
    ld [$2d0d], sp                                ; $5940: $08 $0d $2d
    ld [$0028], sp                                ; $5943: $08 $28 $00
    dec l                                         ; $5946: $2d
    cp h                                          ; $5947: $bc
    ld [de], a                                    ; $5948: $12
    db $10                                        ; $5949: $10
    ld a, [hl+]                                   ; $594a: $2a
    inc a                                         ; $594b: $3c

jr_0cb_594c:
    ld [$203d], sp                                ; $594c: $08 $3d $20
    inc de                                        ; $594f: $13

jr_0cb_5950:
    db $10                                        ; $5950: $10
    rla                                           ; $5951: $17
    nop                                           ; $5952: $00
    dec l                                         ; $5953: $2d
    dec l                                         ; $5954: $2d
    rst $38                                       ; $5955: $ff
    ld d, b                                       ; $5956: $50

jr_0cb_5957:
    db $10                                        ; $5957: $10
    ld h, a                                       ; $5958: $67
    db $10                                        ; $5959: $10
    ld h, h                                       ; $595a: $64
    jr jr_0cb_5989                                ; $595b: $18 $2c

    ld [$0038], sp                                ; $595d: $08 $38 $00
    inc d                                         ; $5960: $14
    jr nz, @+$24                                  ; $5961: $20 $22

    nop                                           ; $5963: $00
    ccf                                           ; $5964: $3f
    jr nz, jr_0cb_5957                            ; $5965: $20 $f0

    dec sp                                        ; $5967: $3b

jr_0cb_5968:
    jr jr_0cb_59ba                                ; $5968: $18 $50

    db $10                                        ; $596a: $10
    ld [hl], $00                                  ; $596b: $36 $00
    ld a, d                                       ; $596d: $7a
    jr jr_0cb_5984                                ; $596e: $18 $14

    nop                                           ; $5970: $00
    dec c                                         ; $5971: $0d
    nop                                           ; $5972: $00
    ld bc, $0001                                  ; $5973: $01 $01 $00
    ld l, b                                       ; $5976: $68
    ld l, c                                       ; $5977: $69
    ld l, d                                       ; $5978: $6a
    ld l, e                                       ; $5979: $6b
    ld l, h                                       ; $597a: $6c
    ld l, l                                       ; $597b: $6d
    ld l, [hl]                                    ; $597c: $6e
    ld l, a                                       ; $597d: $6f
    ld [$7170], sp                                ; $597e: $08 $70 $71
    ld [hl], d                                    ; $5981: $72
    ld [hl], e                                    ; $5982: $73
    inc c                                         ; $5983: $0c

jr_0cb_5984:
    jr z, jr_0cb_59fa                             ; $5984: $28 $74

    ld [hl], l                                    ; $5986: $75
    halt                                          ; $5987: $76
    nop                                           ; $5988: $00

jr_0cb_5989:
    ld [hl], a                                    ; $5989: $77
    ld a, b                                       ; $598a: $78
    ld a, c                                       ; $598b: $79
    ld a, d                                       ; $598c: $7a
    ld a, e                                       ; $598d: $7b
    ld a, h                                       ; $598e: $7c
    ld a, l                                       ; $598f: $7d
    ld a, [hl]                                    ; $5990: $7e
    ld b, b                                       ; $5991: $40
    ld a, a                                       ; $5992: $7f
    inc c                                         ; $5993: $0c
    jr z, jr_0cb_5916                             ; $5994: $28 $80

    add c                                         ; $5996: $81
    add d                                         ; $5997: $82
    add e                                         ; $5998: $83
    add h                                         ; $5999: $84
    add l                                         ; $599a: $85
    ld [bc], a                                    ; $599b: $02
    add [hl]                                      ; $599c: $86
    add a                                         ; $599d: $87
    adc b                                         ; $599e: $88
    adc c                                         ; $599f: $89
    adc d                                         ; $59a0: $8a
    adc e                                         ; $59a1: $8b
    inc c                                         ; $59a2: $0c
    jr z, @-$72                                   ; $59a3: $28 $8c

    nop                                           ; $59a5: $00
    adc l                                         ; $59a6: $8d
    adc [hl]                                      ; $59a7: $8e
    adc a                                         ; $59a8: $8f
    sub b                                         ; $59a9: $90
    sub c                                         ; $59aa: $91
    sub d                                         ; $59ab: $92
    sub e                                         ; $59ac: $93
    sub h                                         ; $59ad: $94
    nop                                           ; $59ae: $00
    sub l                                         ; $59af: $95
    sub [hl]                                      ; $59b0: $96
    sub h                                         ; $59b1: $94
    sub e                                         ; $59b2: $93
    sub d                                         ; $59b3: $92
    sub c                                         ; $59b4: $91
    sub b                                         ; $59b5: $90
    adc a                                         ; $59b6: $8f
    nop                                           ; $59b7: $00
    adc [hl]                                      ; $59b8: $8e
    adc l                                         ; $59b9: $8d

jr_0cb_59ba:
    adc h                                         ; $59ba: $8c
    sub a                                         ; $59bb: $97
    sbc b                                         ; $59bc: $98
    sbc c                                         ; $59bd: $99
    sbc d                                         ; $59be: $9a
    sbc e                                         ; $59bf: $9b
    nop                                           ; $59c0: $00
    sbc h                                         ; $59c1: $9c
    sbc l                                         ; $59c2: $9d
    sbc [hl]                                      ; $59c3: $9e
    sbc a                                         ; $59c4: $9f
    and b                                         ; $59c5: $a0
    and c                                         ; $59c6: $a1
    sbc a                                         ; $59c7: $9f
    sbc [hl]                                      ; $59c8: $9e
    nop                                           ; $59c9: $00
    sbc l                                         ; $59ca: $9d
    sbc h                                         ; $59cb: $9c
    sbc e                                         ; $59cc: $9b
    sbc d                                         ; $59cd: $9a
    sbc c                                         ; $59ce: $99
    sbc b                                         ; $59cf: $98
    sub a                                         ; $59d0: $97
    and d                                         ; $59d1: $a2
    nop                                           ; $59d2: $00
    and e                                         ; $59d3: $a3
    and h                                         ; $59d4: $a4
    and l                                         ; $59d5: $a5
    and [hl]                                      ; $59d6: $a6
    and a                                         ; $59d7: $a7
    xor b                                         ; $59d8: $a8
    xor c                                         ; $59d9: $a9
    xor d                                         ; $59da: $aa
    nop                                           ; $59db: $00
    xor e                                         ; $59dc: $ab
    xor h                                         ; $59dd: $ac
    xor d                                         ; $59de: $aa
    xor c                                         ; $59df: $a9
    xor b                                         ; $59e0: $a8
    and a                                         ; $59e1: $a7
    and [hl]                                      ; $59e2: $a6
    and l                                         ; $59e3: $a5
    nop                                           ; $59e4: $00
    and h                                         ; $59e5: $a4
    and e                                         ; $59e6: $a3
    and d                                         ; $59e7: $a2
    xor l                                         ; $59e8: $ad
    xor [hl]                                      ; $59e9: $ae
    xor a                                         ; $59ea: $af
    or b                                          ; $59eb: $b0
    or c                                          ; $59ec: $b1
    nop                                           ; $59ed: $00
    or d                                          ; $59ee: $b2
    or e                                          ; $59ef: $b3
    or h                                          ; $59f0: $b4
    or l                                          ; $59f1: $b5
    or [hl]                                       ; $59f2: $b6
    or a                                          ; $59f3: $b7
    or l                                          ; $59f4: $b5
    or h                                          ; $59f5: $b4
    nop                                           ; $59f6: $00
    or e                                          ; $59f7: $b3
    or d                                          ; $59f8: $b2
    or c                                          ; $59f9: $b1

jr_0cb_59fa:
    or b                                          ; $59fa: $b0
    xor a                                         ; $59fb: $af
    xor [hl]                                      ; $59fc: $ae
    xor l                                         ; $59fd: $ad
    cp b                                          ; $59fe: $b8
    nop                                           ; $59ff: $00
    cp c                                          ; $5a00: $b9
    cp d                                          ; $5a01: $ba
    cp e                                          ; $5a02: $bb
    cp h                                          ; $5a03: $bc
    cp l                                          ; $5a04: $bd
    cp [hl]                                       ; $5a05: $be
    cp a                                          ; $5a06: $bf
    ret nz                                        ; $5a07: $c0

    nop                                           ; $5a08: $00
    pop bc                                        ; $5a09: $c1
    jp nz, $bfc0                                  ; $5a0a: $c2 $c0 $bf

    cp [hl]                                       ; $5a0d: $be
    cp l                                          ; $5a0e: $bd
    cp h                                          ; $5a0f: $bc
    cp e                                          ; $5a10: $bb
    nop                                           ; $5a11: $00
    cp d                                          ; $5a12: $ba
    cp c                                          ; $5a13: $b9
    cp b                                          ; $5a14: $b8
    jp $c5c4                                      ; $5a15: $c3 $c4 $c5


    add $c7                                       ; $5a18: $c6 $c7
    nop                                           ; $5a1a: $00
    ret z                                         ; $5a1b: $c8

    ret                                           ; $5a1c: $c9


    jp z, $cccb                                   ; $5a1d: $ca $cb $cc

    call $cacb                                    ; $5a20: $cd $cb $ca
    nop                                           ; $5a23: $00
    ret                                           ; $5a24: $c9


    ret z                                         ; $5a25: $c8

    rst $00                                       ; $5a26: $c7
    add $c5                                       ; $5a27: $c6 $c5
    call nz, $cec3                                ; $5a29: $c4 $c3 $ce
    nop                                           ; $5a2c: $00
    rst $08                                       ; $5a2d: $cf
    ret nc                                        ; $5a2e: $d0

    pop de                                        ; $5a2f: $d1
    jp nc, $d4d3                                  ; $5a30: $d2 $d3 $d4

    push de                                       ; $5a33: $d5
    sub $00                                       ; $5a34: $d6 $00
    rst $10                                       ; $5a36: $d7
    ret c                                         ; $5a37: $d8

    sub $d5                                       ; $5a38: $d6 $d5
    call nc, $d2d3                                ; $5a3a: $d4 $d3 $d2
    pop de                                        ; $5a3d: $d1
    nop                                           ; $5a3e: $00
    ret nc                                        ; $5a3f: $d0

    rst $08                                       ; $5a40: $cf
    adc $d9                                       ; $5a41: $ce $d9
    jp c, $dcdb                                   ; $5a43: $da $db $dc

    db $dd                                        ; $5a46: $dd
    nop                                           ; $5a47: $00
    sbc $df                                       ; $5a48: $de $df
    ldh [$e1], a                                  ; $5a4a: $e0 $e1
    ld [c], a                                     ; $5a4c: $e2
    db $e3                                        ; $5a4d: $e3
    pop hl                                        ; $5a4e: $e1
    ldh [rP1], a                                  ; $5a4f: $e0 $00
    rst $18                                       ; $5a51: $df
    sbc $dd                                       ; $5a52: $de $dd
    call c, $dadb                                 ; $5a54: $dc $db $da
    reti                                          ; $5a57: $d9


    db $e4                                        ; $5a58: $e4
    nop                                           ; $5a59: $00
    push hl                                       ; $5a5a: $e5
    and $e7                                       ; $5a5b: $e6 $e7
    add sp, -$17                                  ; $5a5d: $e8 $e9
    ld [$eceb], a                                 ; $5a5f: $ea $eb $ec
    nop                                           ; $5a62: $00
    db $ed                                        ; $5a63: $ed
    xor $ec                                       ; $5a64: $ee $ec
    db $eb                                        ; $5a66: $eb
    ld [$e8e9], a                                 ; $5a67: $ea $e9 $e8
    rst $20                                       ; $5a6a: $e7
    nop                                           ; $5a6b: $00
    and $e5                                       ; $5a6c: $e6 $e5
    db $e4                                        ; $5a6e: $e4
    rst $28                                       ; $5a6f: $ef
    ldh a, [$f1]                                  ; $5a70: $f0 $f1
    ld a, [c]                                     ; $5a72: $f2
    di                                            ; $5a73: $f3
    nop                                           ; $5a74: $00
    db $f4                                        ; $5a75: $f4
    push af                                       ; $5a76: $f5
    or $f7                                        ; $5a77: $f6 $f7
    ld hl, sp-$07                                 ; $5a79: $f8 $f9
    rst $30                                       ; $5a7b: $f7
    or $00                                        ; $5a7c: $f6 $00
    push af                                       ; $5a7e: $f5
    db $f4                                        ; $5a7f: $f4
    di                                            ; $5a80: $f3
    ld a, [c]                                     ; $5a81: $f2
    pop af                                        ; $5a82: $f1
    ldh a, [$ef]                                  ; $5a83: $f0 $ef
    ld b, $d5                                     ; $5a85: $06 $d5
    ld bc, $23f8                                  ; $5a87: $01 $f8 $23
    db $10                                        ; $5a8a: $10
    ld c, $01                                     ; $5a8b: $0e $01
    add b                                         ; $5a8d: $80
    dec bc                                        ; $5a8e: $0b
    ld bc, $2b38                                  ; $5a8f: $01 $38 $2b
    ld bc, $5f28                                  ; $5a92: $01 $28 $5f
    ld a, [bc]                                    ; $5a95: $0a
    ld bc, $2a38                                  ; $5a96: $01 $38 $2a
    ld bc, $1428                                  ; $5a99: $01 $28 $14
    ld hl, sp+$28                                 ; $5a9c: $f8 $28
    ld hl, sp+$50                                 ; $5a9e: $f8 $50
    ld hl, sp+$78                                 ; $5aa0: $f8 $78
    ld hl, sp-$80                                 ; $5aa2: $f8 $80
    adc h                                         ; $5aa4: $8c
    xor b                                         ; $5aa5: $a8
    inc d                                         ; $5aa6: $14
    nop                                           ; $5aa7: $00
    dec c                                         ; $5aa8: $0d
    nop                                           ; $5aa9: $00
    rra                                           ; $5aaa: $1f
    ld bc, $6804                                  ; $5aab: $01 $04 $68
    ld l, c                                       ; $5aae: $69
    ld l, d                                       ; $5aaf: $6a
    ld l, e                                       ; $5ab0: $6b
    ld l, h                                       ; $5ab1: $6c
    dec b                                         ; $5ab2: $05
    ld [$6e6d], sp                                ; $5ab3: $08 $6d $6e
    nop                                           ; $5ab6: $00
    ld l, a                                       ; $5ab7: $6f
    ld [hl], b                                    ; $5ab8: $70
    ld [hl], c                                    ; $5ab9: $71
    ld [hl], c                                    ; $5aba: $71
    ld [hl], d                                    ; $5abb: $72
    ld l, a                                       ; $5abc: $6f
    ld l, [hl]                                    ; $5abd: $6e
    ld l, l                                       ; $5abe: $6d
    ld [bc], a                                    ; $5abf: $02
    ld [hl], e                                    ; $5ac0: $73
    ld [hl], h                                    ; $5ac1: $74
    ld [hl], l                                    ; $5ac2: $75
    halt                                          ; $5ac3: $76
    ld [hl], a                                    ; $5ac4: $77
    ld a, b                                       ; $5ac5: $78
    dec b                                         ; $5ac6: $05
    ld [$0079], sp                                ; $5ac7: $08 $79 $00
    ld a, d                                       ; $5aca: $7a
    ld a, e                                       ; $5acb: $7b
    ld a, h                                       ; $5acc: $7c
    ld a, l                                       ; $5acd: $7d
    ld a, [hl]                                    ; $5ace: $7e
    ld a, a                                       ; $5acf: $7f
    ld a, e                                       ; $5ad0: $7b
    ld a, d                                       ; $5ad1: $7a
    ld bc, $8180                                  ; $5ad2: $01 $80 $81
    add d                                         ; $5ad5: $82
    add e                                         ; $5ad6: $83
    add h                                         ; $5ad7: $84
    add l                                         ; $5ad8: $85
    add [hl]                                      ; $5ad9: $86
    dec b                                         ; $5ada: $05
    ld [$8700], sp                                ; $5adb: $08 $00 $87
    adc b                                         ; $5ade: $88
    adc c                                         ; $5adf: $89
    adc d                                         ; $5ae0: $8a
    adc e                                         ; $5ae1: $8b
    adc h                                         ; $5ae2: $8c
    adc l                                         ; $5ae3: $8d
    adc c                                         ; $5ae4: $89
    nop                                           ; $5ae5: $00
    adc b                                         ; $5ae6: $88
    add a                                         ; $5ae7: $87
    add l                                         ; $5ae8: $85
    adc [hl]                                      ; $5ae9: $8e
    adc a                                         ; $5aea: $8f
    sub b                                         ; $5aeb: $90
    sub c                                         ; $5aec: $91
    sub d                                         ; $5aed: $92
    nop                                           ; $5aee: $00
    sub e                                         ; $5aef: $93
    sub h                                         ; $5af0: $94
    sub l                                         ; $5af1: $95
    adc [hl]                                      ; $5af2: $8e
    sub [hl]                                      ; $5af3: $96
    sub a                                         ; $5af4: $97
    sbc b                                         ; $5af5: $98
    sbc c                                         ; $5af6: $99
    nop                                           ; $5af7: $00
    sbc d                                         ; $5af8: $9a
    sbc e                                         ; $5af9: $9b
    sbc h                                         ; $5afa: $9c
    sbc l                                         ; $5afb: $9d
    sbc [hl]                                      ; $5afc: $9e
    sbc a                                         ; $5afd: $9f
    and b                                         ; $5afe: $a0
    and c                                         ; $5aff: $a1
    nop                                           ; $5b00: $00
    and d                                         ; $5b01: $a2
    and e                                         ; $5b02: $a3
    and h                                         ; $5b03: $a4
    and l                                         ; $5b04: $a5
    and [hl]                                      ; $5b05: $a6
    and a                                         ; $5b06: $a7
    xor b                                         ; $5b07: $a8
    and c                                         ; $5b08: $a1
    nop                                           ; $5b09: $00
    xor c                                         ; $5b0a: $a9
    xor d                                         ; $5b0b: $aa
    xor e                                         ; $5b0c: $ab
    xor h                                         ; $5b0d: $ac
    xor l                                         ; $5b0e: $ad
    and a                                         ; $5b0f: $a7
    xor [hl]                                      ; $5b10: $ae
    xor a                                         ; $5b11: $af
    nop                                           ; $5b12: $00
    or b                                          ; $5b13: $b0
    and e                                         ; $5b14: $a3
    or c                                          ; $5b15: $b1
    or d                                          ; $5b16: $b2
    or e                                          ; $5b17: $b3
    or h                                          ; $5b18: $b4
    or l                                          ; $5b19: $b5
    or [hl]                                       ; $5b1a: $b6
    db $10                                        ; $5b1b: $10
    or a                                          ; $5b1c: $b7
    cp b                                          ; $5b1d: $b8
    cp c                                          ; $5b1e: $b9
    ld [$ba20], sp                                ; $5b1f: $08 $20 $ba
    cp e                                          ; $5b22: $bb
    cp h                                          ; $5b23: $bc
    or h                                          ; $5b24: $b4
    nop                                           ; $5b25: $00
    or l                                          ; $5b26: $b5
    cp l                                          ; $5b27: $bd
    cp [hl]                                       ; $5b28: $be
    cp a                                          ; $5b29: $bf
    ret nz                                        ; $5b2a: $c0

    pop bc                                        ; $5b2b: $c1
    jp nz, $40c3                                  ; $5b2c: $c2 $c3 $40

    call nz, RST_08                               ; $5b2f: $c4 $08 $00
    push bc                                       ; $5b32: $c5
    add $c7                                       ; $5b33: $c6 $c7
    ret z                                         ; $5b35: $c8

    ret                                           ; $5b36: $c9


    cp l                                          ; $5b37: $bd
    nop                                           ; $5b38: $00
    jp z, $cccb                                   ; $5b39: $ca $cb $cc

    call $cfce                                    ; $5b3c: $cd $ce $cf
    ret nc                                        ; $5b3f: $d0

    pop de                                        ; $5b40: $d1
    db $10                                        ; $5b41: $10
    jp nc, $d4d3                                  ; $5b42: $d2 $d3 $d4

    ld [$d500], sp                                ; $5b45: $08 $00 $d5
    sub $d7                                       ; $5b48: $d6 $d7
    ret c                                         ; $5b4a: $d8

    nop                                           ; $5b4b: $00
    reti                                          ; $5b4c: $d9


    call $dbda                                    ; $5b4d: $cd $da $db
    call c, $dedd                                 ; $5b50: $dc $dd $de
    rst $18                                       ; $5b53: $df
    nop                                           ; $5b54: $00
    ldh [$e1], a                                  ; $5b55: $e0 $e1
    ld [c], a                                     ; $5b57: $e2
    db $e3                                        ; $5b58: $e3
    db $e4                                        ; $5b59: $e4
    db $dd                                        ; $5b5a: $dd
    push hl                                       ; $5b5b: $e5
    and $04                                       ; $5b5c: $e6 $04
    rst $20                                       ; $5b5e: $e7
    pop hl                                        ; $5b5f: $e1
    add sp, -$17                                  ; $5b60: $e8 $e9
    ld [$0808], a                                 ; $5b62: $ea $08 $08
    db $eb                                        ; $5b65: $eb
    db $ec                                        ; $5b66: $ec
    nop                                           ; $5b67: $00
    db $ed                                        ; $5b68: $ed
    xor $ef                                       ; $5b69: $ee $ef
    ldh a, [$f1]                                  ; $5b6b: $f0 $f1
    ld a, [c]                                     ; $5b6d: $f2
    db $eb                                        ; $5b6e: $eb
    di                                            ; $5b6f: $f3
    ld [bc], a                                    ; $5b70: $02
    db $f4                                        ; $5b71: $f4
    push af                                       ; $5b72: $f5
    rst $28                                       ; $5b73: $ef
    or $f7                                        ; $5b74: $f6 $f7
    ld hl, sp+$08                                 ; $5b76: $f8 $08
    ld [$00f9], sp                                ; $5b78: $08 $f9 $00
    ld a, [$fcfb]                                 ; $5b7b: $fa $fb $fc
    db $fd                                        ; $5b7e: $fd
    cp $ff                                        ; $5b7f: $fe $ff
    nop                                           ; $5b81: $00
    ld sp, hl                                     ; $5b82: $f9
    nop                                           ; $5b83: $00
    ld bc, $0302                                  ; $5b84: $01 $02 $03
    inc b                                         ; $5b87: $04
    dec b                                         ; $5b88: $05
    ld b, $07                                     ; $5b89: $06 $07
    ld [$0900], sp                                ; $5b8b: $08 $00 $09
    ld [bc], a                                    ; $5b8e: $02
    inc bc                                        ; $5b8f: $03
    ld a, [bc]                                    ; $5b90: $0a
    dec bc                                        ; $5b91: $0b
    inc c                                         ; $5b92: $0c
    dec c                                         ; $5b93: $0d
    ld c, $00                                     ; $5b94: $0e $00
    rrca                                          ; $5b96: $0f
    db $10                                        ; $5b97: $10
    ld de, $120a                                  ; $5b98: $11 $0a $12
    inc de                                        ; $5b9b: $13
    inc d                                         ; $5b9c: $14
    dec d                                         ; $5b9d: $15
    nop                                           ; $5b9e: $00
    ld d, $17                                     ; $5b9f: $16 $17
    jr @+$1b                                      ; $5ba1: $18 $19

    ld a, [de]                                    ; $5ba3: $1a
    inc de                                        ; $5ba4: $13
    inc d                                         ; $5ba5: $14
    dec de                                        ; $5ba6: $1b
    nop                                           ; $5ba7: $00
    inc e                                         ; $5ba8: $1c
    dec e                                         ; $5ba9: $1d
    ld e, $1f                                     ; $5baa: $1e $1f
    jr nz, @+$23                                  ; $5bac: $20 $21

    ld [hl+], a                                   ; $5bae: $22
    inc hl                                        ; $5baf: $23
    ld bc, $1d24                                  ; $5bb0: $01 $24 $1d
    dec h                                         ; $5bb3: $25
    ld h, $27                                     ; $5bb4: $26 $27
    jr z, @+$2b                                   ; $5bb6: $28 $29

    ld [$2200], sp                                ; $5bb8: $08 $00 $22
    ld e, $03                                     ; $5bbb: $1e $03
    ld bc, $0230                                  ; $5bbd: $01 $30 $02
    ld [bc], a                                    ; $5bc0: $02

jr_0cb_5bc1:
    ld bc, $0001                                  ; $5bc1: $01 $01 $00
    ld [hl+], a                                   ; $5bc4: $22
    inc [hl]                                      ; $5bc5: $34
    ld [hl+], a                                   ; $5bc6: $22
    inc hl                                        ; $5bc7: $23
    inc de                                        ; $5bc8: $13
    jr c, jr_0cb_5bdf                             ; $5bc9: $38 $14

    jr nc, jr_0cb_5bd8                            ; $5bcb: $30 $0b

    ld bc, $0a40                                  ; $5bcd: $01 $40 $0a
    ld a, [bc]                                    ; $5bd0: $0a
    ld b, c                                       ; $5bd1: $41
    add hl, bc                                    ; $5bd2: $09
    ld bc, $2a00                                  ; $5bd3: $01 $00 $2a
    ld a, [hl+]                                   ; $5bd6: $2a
    dec hl                                        ; $5bd7: $2b

jr_0cb_5bd8:
    dec hl                                        ; $5bd8: $2b
    rrca                                          ; $5bd9: $0f
    ld bc, $0380                                  ; $5bda: $01 $80 $03
    ld c, $0d                                     ; $5bdd: $0e $0d

jr_0cb_5bdf:
    dec c                                         ; $5bdf: $0d
    ld c, $0e                                     ; $5be0: $0e $0e
    ld c, $04                                     ; $5be2: $0e $04
    nop                                           ; $5be4: $00
    inc bc                                        ; $5be5: $03
    jr nc, @+$01                                  ; $5be6: $30 $ff

    ld c, $08                                     ; $5be8: $0e $08
    ld [bc], a                                    ; $5bea: $02
    ld [$1808], sp                                ; $5beb: $08 $08 $18
    inc de                                        ; $5bee: $13
    jr jr_0cb_5c08                                ; $5bef: $18 $17

jr_0cb_5bf1:
    jr nz, @+$1f                                  ; $5bf1: $20 $1d

    db $10                                        ; $5bf3: $10
    ld bc, $0600                                  ; $5bf4: $01 $00 $06
    jr nc, @+$01                                  ; $5bf7: $30 $ff

    inc [hl]                                      ; $5bf9: $34
    jr nc, jr_0cb_5c2b                            ; $5bfa: $30 $2f

    jr nc, jr_0cb_5c38                            ; $5bfc: $30 $3a

    jr nc, jr_0cb_5c58                            ; $5bfe: $30 $58

    jr nz, jr_0cb_5c15                            ; $5c00: $20 $13

    ld c, b                                       ; $5c02: $48
    ld b, d                                       ; $5c03: $42
    jr z, jr_0cb_5c68                             ; $5c04: $28 $62

    jr nz, jr_0cb_5c4b                            ; $5c06: $20 $43

jr_0cb_5c08:
    jr nz, jr_0cb_5c08                            ; $5c08: $20 $fe

    add c                                         ; $5c0a: $81
    nop                                           ; $5c0b: $00
    ld a, a                                       ; $5c0c: $7f
    jr z, jr_0cb_5c24                             ; $5c0d: $28 $15

    jr nc, jr_0cb_5c2c                            ; $5c0f: $30 $1b

    jr z, jr_0cb_5c83                             ; $5c11: $28 $70

    jr z, jr_0cb_5c25                             ; $5c13: $28 $10

jr_0cb_5c15:
    jr c, jr_0cb_5bc1                             ; $5c15: $38 $aa

    ld [$0014], sp                                ; $5c17: $08 $14 $00
    dec c                                         ; $5c1a: $0d
    nop                                           ; $5c1b: $00
    cp l                                          ; $5c1c: $bd
    nop                                           ; $5c1d: $00
    nop                                           ; $5c1e: $00
    ld l, b                                       ; $5c1f: $68
    adc h                                         ; $5c20: $8c
    adc e                                         ; $5c21: $8b
    adc d                                         ; $5c22: $8a
    adc c                                         ; $5c23: $89

jr_0cb_5c24:
    add b                                         ; $5c24: $80

jr_0cb_5c25:
    ld l, [hl]                                    ; $5c25: $6e
    ld l, a                                       ; $5c26: $6f
    nop                                           ; $5c27: $00
    ld [hl], b                                    ; $5c28: $70
    ld [hl], c                                    ; $5c29: $71
    ld [hl], d                                    ; $5c2a: $72

jr_0cb_5c2b:
    ld [hl], e                                    ; $5c2b: $73

jr_0cb_5c2c:
    ld [hl], h                                    ; $5c2c: $74
    ld [hl], l                                    ; $5c2d: $75
    ld a, c                                       ; $5c2e: $79
    ld a, b                                       ; $5c2f: $78
    nop                                           ; $5c30: $00
    ld [hl], a                                    ; $5c31: $77
    halt                                          ; $5c32: $76
    ld l, l                                       ; $5c33: $6d
    ld l, [hl]                                    ; $5c34: $6e
    ld a, e                                       ; $5c35: $7b
    ld a, a                                       ; $5c36: $7f
    ld a, [hl]                                    ; $5c37: $7e

jr_0cb_5c38:
    ld a, l                                       ; $5c38: $7d
    nop                                           ; $5c39: $00
    ld a, h                                       ; $5c3a: $7c
    ld a, d                                       ; $5c3b: $7a
    add c                                         ; $5c3c: $81
    add d                                         ; $5c3d: $82
    add e                                         ; $5c3e: $83
    add h                                         ; $5c3f: $84
    add l                                         ; $5c40: $85
    add [hl]                                      ; $5c41: $86
    nop                                           ; $5c42: $00
    add a                                         ; $5c43: $87
    adc b                                         ; $5c44: $88
    ld l, h                                       ; $5c45: $6c
    ld l, e                                       ; $5c46: $6b
    ld a, l                                       ; $5c47: $7d
    ld l, d                                       ; $5c48: $6a
    ld l, c                                       ; $5c49: $69
    add c                                         ; $5c4a: $81

jr_0cb_5c4b:
    nop                                           ; $5c4b: $00
    adc l                                         ; $5c4c: $8d
    adc [hl]                                      ; $5c4d: $8e
    adc a                                         ; $5c4e: $8f
    sub b                                         ; $5c4f: $90
    sub c                                         ; $5c50: $91
    adc [hl]                                      ; $5c51: $8e
    sub d                                         ; $5c52: $92
    sub b                                         ; $5c53: $90
    jr z, @-$6d                                   ; $5c54: $28 $91

    adc a                                         ; $5c56: $8f
    add hl, bc                                    ; $5c57: $09

jr_0cb_5c58:
    nop                                           ; $5c58: $00
    sub e                                         ; $5c59: $93
    dec c                                         ; $5c5a: $0d
    jr jr_0cb_5bf1                                ; $5c5b: $18 $94

    sub l                                         ; $5c5d: $95
    sub [hl]                                      ; $5c5e: $96
    db $10                                        ; $5c5f: $10
    sub a                                         ; $5c60: $97
    sbc b                                         ; $5c61: $98
    sbc c                                         ; $5c62: $99
    ld b, $58                                     ; $5c63: $06 $58
    sbc d                                         ; $5c65: $9a
    sbc e                                         ; $5c66: $9b
    sbc h                                         ; $5c67: $9c

jr_0cb_5c68:
    sbc l                                         ; $5c68: $9d
    jr nz, @-$60                                  ; $5c69: $20 $9e

    sbc a                                         ; $5c6b: $9f
    ld b, $58                                     ; $5c6c: $06 $58
    and b                                         ; $5c6e: $a0
    and c                                         ; $5c6f: $a1
    and d                                         ; $5c70: $a2
    and e                                         ; $5c71: $a3
    and h                                         ; $5c72: $a4
    ld b, b                                       ; $5c73: $40
    and l                                         ; $5c74: $a5
    ld b, $58                                     ; $5c75: $06 $58
    and [hl]                                      ; $5c77: $a6
    and a                                         ; $5c78: $a7
    xor b                                         ; $5c79: $a8
    xor c                                         ; $5c7a: $a9
    xor d                                         ; $5c7b: $aa
    xor e                                         ; $5c7c: $ab
    add c                                         ; $5c7d: $81
    ld b, $58                                     ; $5c7e: $06 $58
    xor h                                         ; $5c80: $ac
    xor l                                         ; $5c81: $ad
    xor [hl]                                      ; $5c82: $ae

jr_0cb_5c83:
    xor a                                         ; $5c83: $af
    or b                                          ; $5c84: $b0
    or c                                          ; $5c85: $b1
    ld b, $58                                     ; $5c86: $06 $58
    ld [bc], a                                    ; $5c88: $02
    or d                                          ; $5c89: $b2
    or e                                          ; $5c8a: $b3
    or h                                          ; $5c8b: $b4
    or l                                          ; $5c8c: $b5
    or [hl]                                       ; $5c8d: $b6
    or a                                          ; $5c8e: $b7
    ld b, $58                                     ; $5c8f: $06 $58
    cp b                                          ; $5c91: $b8
    inc b                                         ; $5c92: $04
    cp c                                          ; $5c93: $b9
    cp d                                          ; $5c94: $ba
    cp e                                          ; $5c95: $bb
    cp h                                          ; $5c96: $bc
    cp l                                          ; $5c97: $bd
    ld b, $58                                     ; $5c98: $06 $58
    cp [hl]                                       ; $5c9a: $be
    cp a                                          ; $5c9b: $bf
    ld [$c1c0], sp                                ; $5c9c: $08 $c0 $c1
    jp nz, Jump_000_06c3                          ; $5c9f: $c2 $c3 $06

    ld e, b                                       ; $5ca2: $58
    call nz, $c6c5                                ; $5ca3: $c4 $c5 $c6
    db $10                                        ; $5ca6: $10
    rst $00                                       ; $5ca7: $c7
    ret z                                         ; $5ca8: $c8

    ret                                           ; $5ca9: $c9


    ld b, $58                                     ; $5caa: $06 $58
    jp z, $cccb                                   ; $5cac: $ca $cb $cc

    call $ce24                                    ; $5caf: $cd $24 $ce
    rst $08                                       ; $5cb2: $cf
    ld b, $58                                     ; $5cb3: $06 $58
    ld bc, $0108                                  ; $5cb5: $01 $08 $01
    ld [$0201], sp                                ; $5cb8: $08 $01 $02
    sub h                                         ; $5cbb: $94

jr_0cb_5cbc:
    ld bc, $0110                                  ; $5cbc: $01 $10 $01
    nop                                           ; $5cbf: $00
    ld bc, $0108                                  ; $5cc0: $01 $08 $01
    rlca                                          ; $5cc3: $07
    jr jr_0cb_5ccf                                ; $5cc4: $18 $09

    ld a, [bc]                                    ; $5cc6: $0a
    or h                                          ; $5cc7: $b4
    ld bc, $0910                                  ; $5cc8: $01 $10 $09
    dec c                                         ; $5ccb: $0d
    jr jr_0cb_5ccf                                ; $5ccc: $18 $01

    adc b                                         ; $5cce: $88

jr_0cb_5ccf:
    rrca                                          ; $5ccf: $0f
    ld bc, $0c80                                  ; $5cd0: $01 $80 $0c
    inc c                                         ; $5cd3: $0c
    ld [bc], a                                    ; $5cd4: $02
    ld c, $0d                                     ; $5cd5: $0e $0d
    ld c, $0c                                     ; $5cd7: $0e $0c
    dec c                                         ; $5cd9: $0d
    ld c, $06                                     ; $5cda: $0e $06
    ld [$5c0c], sp                                ; $5cdc: $08 $0c $5c
    ld c, $02                                     ; $5cdf: $0e $02
    nop                                           ; $5ce1: $00
    inc c                                         ; $5ce2: $0c
    dec bc                                        ; $5ce3: $0b
    ld [$0009], sp                                ; $5ce4: $08 $09 $00
    rrca                                          ; $5ce7: $0f
    ld [$0d0d], sp                                ; $5ce8: $08 $0d $0d
    rst $18                                       ; $5ceb: $df
    inc c                                         ; $5cec: $0c
    ld [$0006], sp                                ; $5ced: $08 $06 $00
    inc c                                         ; $5cf0: $0c
    ld bc, $0800                                  ; $5cf1: $01 $00 $08
    db $10                                        ; $5cf4: $10
    daa                                           ; $5cf5: $27
    db $10                                        ; $5cf6: $10
    inc hl                                        ; $5cf7: $23
    nop                                           ; $5cf8: $00
    ld hl, $ff10                                  ; $5cf9: $21 $10 $ff
    dec c                                         ; $5cfc: $0d
    jr jr_0cb_5d02                                ; $5cfd: $18 $03

    db $10                                        ; $5cff: $10
    add hl, hl                                    ; $5d00: $29
    nop                                           ; $5d01: $00

jr_0cb_5d02:
    ld a, [hl+]                                   ; $5d02: $2a
    jr nz, jr_0cb_5d54                            ; $5d03: $20 $4f

    nop                                           ; $5d05: $00
    rlca                                          ; $5d06: $07
    ld b, b                                       ; $5d07: $40
    ld e, [hl]                                    ; $5d08: $5e
    ld [$1032], sp                                ; $5d09: $08 $32 $10
    rst $38                                       ; $5d0c: $ff
    ld a, [de]                                    ; $5d0d: $1a

jr_0cb_5d0e:
    jr nz, jr_0cb_5d37                            ; $5d0e: $20 $27

    db $10                                        ; $5d10: $10
    ld c, h                                       ; $5d11: $4c
    jr nz, jr_0cb_5d8f                            ; $5d12: $20 $7b

    db $10                                        ; $5d14: $10
    ld a, d                                       ; $5d15: $7a
    nop                                           ; $5d16: $00
    add c                                         ; $5d17: $81
    jr nc, jr_0cb_5d79                            ; $5d18: $30 $5f

    jr @+$06                                      ; $5d1a: $18 $04

    jr z, jr_0cb_5d0e                             ; $5d1c: $28 $f0

    sub c                                         ; $5d1e: $91
    jr jr_0cb_5cbc                                ; $5d1f: $18 $9b

    ld [$3076], sp                                ; $5d21: $08 $76 $30
    and a                                         ; $5d24: $a7
    jr jr_0cb_5d35                                ; $5d25: $18 $0e

    ld bc, $ff00                                  ; $5d27: $01 $00 $ff
    ld a, a                                       ; $5d2a: $7f
    ld h, l                                       ; $5d2b: $65
    add hl, de                                    ; $5d2c: $19
    inc b                                         ; $5d2d: $04
    nop                                           ; $5d2e: $00
    db $fd                                        ; $5d2f: $fd
    ld a, $b6                                     ; $5d30: $3e $b6
    dec c                                         ; $5d32: $0d
    xor a                                         ; $5d33: $af
    nop                                           ; $5d34: $00

jr_0cb_5d35:
    ld b, l                                       ; $5d35: $45
    nop                                           ; $5d36: $00

jr_0cb_5d37:
    cp l                                          ; $5d37: $bd
    ld [hl], a                                    ; $5d38: $77
    db $fd                                        ; $5d39: $fd
    ld c, $35                                     ; $5d3a: $0e $35
    ld bc, $0448                                  ; $5d3c: $01 $48 $04
    ld a, a                                       ; $5d3f: $7f
    nop                                           ; $5d40: $00
    ld [$7201], a                                 ; $5d41: $ea $01 $72
    inc h                                         ; $5d44: $24
    ld hl, $1c04                                  ; $5d45: $21 $04 $1c
    rlca                                          ; $5d48: $07
    ld l, a                                       ; $5d49: $6f
    ld h, $67                                     ; $5d4a: $26 $67
    add hl, de                                    ; $5d4c: $19
    ld h, b                                       ; $5d4d: $60
    inc c                                         ; $5d4e: $0c
    sbc [hl]                                      ; $5d4f: $9e
    ld a, a                                       ; $5d50: $7f
    sub h                                         ; $5d51: $94
    ld d, [hl]                                    ; $5d52: $56
    xor l                                         ; $5d53: $ad

jr_0cb_5d54:
    add hl, sp                                    ; $5d54: $39
    add $28                                       ; $5d55: $c6 $28
    sbc d                                         ; $5d57: $9a
    ld a, a                                       ; $5d58: $7f
    sub b                                         ; $5d59: $90
    ld d, [hl]                                    ; $5d5a: $56
    xor c                                         ; $5d5b: $a9
    add hl, sp                                    ; $5d5c: $39
    jp nz, Jump_0cb_4d28                          ; $5d5d: $c2 $28 $4d

    ld d, [hl]                                    ; $5d60: $56
    ld h, [hl]                                    ; $5d61: $66
    add hl, sp                                    ; $5d62: $39
    add b                                         ; $5d63: $80
    jr z, jr_0cb_5d66                             ; $5d64: $28 $00

jr_0cb_5d66:
    ld [$0001], sp                                ; $5d66: $08 $01 $00
    rst $38                                       ; $5d69: $ff
    ld a, a                                       ; $5d6a: $7f
    dec sp                                        ; $5d6b: $3b
    jr jr_0cb_5daf                                ; $5d6c: $18 $41

    ld [$437f], sp                                ; $5d6e: $08 $7f $43
    sub [hl]                                      ; $5d71: $96
    ld a, [hl-]                                   ; $5d72: $3a
    adc l                                         ; $5d73: $8d
    dec l                                         ; $5d74: $2d
    add l                                         ; $5d75: $85
    db $10                                        ; $5d76: $10
    cp l                                          ; $5d77: $bd
    ld a, a                                       ; $5d78: $7f

jr_0cb_5d79:
    ld sp, $6656                                  ; $5d79: $31 $56 $66
    ld sp, $1022                                  ; $5d7c: $31 $22 $10
    ld e, [hl]                                    ; $5d7f: $5e
    ld e, e                                       ; $5d80: $5b
    inc de                                        ; $5d81: $13
    ld a, $e8                                     ; $5d82: $3e $e8
    inc l                                         ; $5d84: $2c
    ld b, d                                       ; $5d85: $42
    jr jr_0cb_5e07                                ; $5d86: $18 $7f

    dec sp                                        ; $5d88: $3b
    rla                                           ; $5d89: $17
    ld [hl+], a                                   ; $5d8a: $22
    ret nc                                        ; $5d8b: $d0

    inc d                                         ; $5d8c: $14
    ld h, a                                       ; $5d8d: $67
    inc b                                         ; $5d8e: $04

jr_0cb_5d8f:
    ldh [rKEY1], a                                ; $5d8f: $e0 $4d
    inc d                                         ; $5d91: $14
    db $10                                        ; $5d92: $10
    jr z, jr_0cb_5dba                             ; $5d93: $28 $25

    ld b, d                                       ; $5d95: $42
    jr jr_0cb_5df3                                ; $5d96: $18 $5b

    ld h, e                                       ; $5d98: $63
    ld [hl], e                                    ; $5d99: $73
    ld b, [hl]                                    ; $5d9a: $46
    add hl, hl                                    ; $5d9b: $29
    ld hl, $10a5                                  ; $5d9c: $21 $a5 $10
    ld d, e                                       ; $5d9f: $53
    ld d, d                                       ; $5da0: $52
    ld l, e                                       ; $5da1: $6b
    dec [hl]                                      ; $5da2: $35
    add e                                         ; $5da3: $83
    db $10                                        ; $5da4: $10
    ld hl, $0100                                  ; $5da5: $21 $00 $01
    nop                                           ; $5da8: $00
    rst $38                                       ; $5da9: $ff
    ld a, a                                       ; $5daa: $7f
    rrca                                          ; $5dab: $0f
    ld e, b                                       ; $5dac: $58
    inc b                                         ; $5dad: $04
    db $10                                        ; $5dae: $10

jr_0cb_5daf:
    add hl, bc                                    ; $5daf: $09
    ld b, [hl]                                    ; $5db0: $46
    rst $38                                       ; $5db1: $ff
    ld a, e                                       ; $5db2: $7b
    db $eb                                        ; $5db3: $eb
    dec a                                         ; $5db4: $3d
    nop                                           ; $5db5: $00
    nop                                           ; $5db6: $00
    add hl, bc                                    ; $5db7: $09
    ld b, [hl]                                    ; $5db8: $46
    ld e, a                                       ; $5db9: $5f

jr_0cb_5dba:
    inc de                                        ; $5dba: $13
    ld d, l                                       ; $5dbb: $55
    add hl, bc                                    ; $5dbc: $09
    ld bc, $0000                                  ; $5dbd: $01 $00 $00
    nop                                           ; $5dc0: $00
    rst $38                                       ; $5dc1: $ff
    ld a, e                                       ; $5dc2: $7b
    dec bc                                        ; $5dc3: $0b
    ld b, d                                       ; $5dc4: $42
    nop                                           ; $5dc5: $00
    nop                                           ; $5dc6: $00
    scf                                           ; $5dc7: $37
    ld b, a                                       ; $5dc8: $47
    add hl, bc                                    ; $5dc9: $09
    ld b, [hl]                                    ; $5dca: $46
    dec h                                         ; $5dcb: $25
    ld hl, $0c40                                  ; $5dcc: $21 $40 $0c
    ld a, e                                       ; $5dcf: $7b
    ld h, a                                       ; $5dd0: $67
    add hl, bc                                    ; $5dd1: $09
    ld b, [hl]                                    ; $5dd2: $46
    db $ec                                        ; $5dd3: $ec
    inc [hl]                                      ; $5dd4: $34
    daa                                           ; $5dd5: $27
    db $10                                        ; $5dd6: $10
    ld [hl], a                                    ; $5dd7: $77
    ld [hl], a                                    ; $5dd8: $77
    add hl, bc                                    ; $5dd9: $09
    ld b, [hl]                                    ; $5dda: $46
    add sp, $44                                   ; $5ddb: $e8 $44
    inc hl                                        ; $5ddd: $23
    jr nz, @-$6e                                  ; $5dde: $20 $90

    ld e, d                                       ; $5de0: $5a
    ld [hl+], a                                   ; $5de1: $22
    add hl, hl                                    ; $5de2: $29
    ld [hl+], a                                   ; $5de3: $22
    inc l                                         ; $5de4: $2c
    nop                                           ; $5de5: $00
    db $10                                        ; $5de6: $10
    ld bc, $ff00                                  ; $5de7: $01 $00 $ff
    ld a, a                                       ; $5dea: $7f
    dec sp                                        ; $5deb: $3b
    jr jr_0cb_5e2f                                ; $5dec: $18 $41

    ld [$66f5], sp                                ; $5dee: $08 $f5 $66
    rst $28                                       ; $5df1: $ef
    ld c, l                                       ; $5df2: $4d

jr_0cb_5df3:
    ld h, $29                                     ; $5df3: $26 $29
    and d                                         ; $5df5: $a2
    inc e                                         ; $5df6: $1c
    adc $31                                       ; $5df7: $ce $31
    db $fc                                        ; $5df9: $fc
    ld a, [hl]                                    ; $5dfa: $7e
    ld c, [hl]                                    ; $5dfb: $4e
    ld b, c                                       ; $5dfc: $41
    ld b, a                                       ; $5dfd: $47
    jr jr_0cb_5e14                                ; $5dfe: $18 $14

    ld d, e                                       ; $5e00: $53

jr_0cb_5e01:
    adc $31                                       ; $5e01: $ce $31
    rrc h                                         ; $5e03: $cb $0c
    ld h, a                                       ; $5e05: $67
    nop                                           ; $5e06: $00

jr_0cb_5e07:
    sbc [hl]                                      ; $5e07: $9e
    ccf                                           ; $5e08: $3f
    ld sp, hl                                     ; $5e09: $f9
    ld sp, $2d2e                                  ; $5e0a: $31 $2e $2d
    dec h                                         ; $5e0d: $25
    jr @+$30                                      ; $5e0e: $18 $2e

    dec l                                         ; $5e10: $2d
    cp $7b                                        ; $5e11: $fe $7b
    xor e                                         ; $5e13: $ab

jr_0cb_5e14:
    dec a                                         ; $5e14: $3d
    ld [hl+], a                                   ; $5e15: $22
    inc c                                         ; $5e16: $0c
    sub [hl]                                      ; $5e17: $96
    ld e, $f1                                     ; $5e18: $1e $f1
    db $10                                        ; $5e1a: $10
    adc b                                         ; $5e1b: $88
    jr jr_0cb_5e1e                                ; $5e1c: $18 $00

jr_0cb_5e1e:
    nop                                           ; $5e1e: $00
    inc c                                         ; $5e1f: $0c
    ld [hl-], a                                   ; $5e20: $32
    ld [$4519], sp                                ; $5e21: $08 $19 $45
    ld [$0442], sp                                ; $5e24: $08 $42 $04
    nop                                           ; $5e27: $00
    nop                                           ; $5e28: $00
    rst $38                                       ; $5e29: $ff
    ld a, a                                       ; $5e2a: $7f
    ld d, c                                       ; $5e2b: $51
    nop                                           ; $5e2c: $00
    inc b                                         ; $5e2d: $04
    nop                                           ; $5e2e: $00

jr_0cb_5e2f:
    rst $38                                       ; $5e2f: $ff
    ld a, a                                       ; $5e30: $7f
    rrca                                          ; $5e31: $0f
    ld e, [hl]                                    ; $5e32: $5e
    and $38                                       ; $5e33: $e6 $38
    jr nz, @+$12                                  ; $5e35: $20 $10

    cp c                                          ; $5e37: $b9
    ld h, $df                                     ; $5e38: $26 $df
    ld [hl], a                                    ; $5e3a: $77
    pop de                                        ; $5e3b: $d1
    ld sp, $0043                                  ; $5e3c: $31 $43 $00
    ld de, $607f                                  ; $5e3f: $11 $7f $60
    ld l, d                                       ; $5e42: $6a
    ld b, b                                       ; $5e43: $40
    ld b, l                                       ; $5e44: $45
    ld h, b                                       ; $5e45: $60
    jr jr_0cb_5e01                                ; $5e46: $18 $b9

    ld h, $f7                                     ; $5e48: $26 $f7
    ld a, a                                       ; $5e4a: $7f
    ld [$4341], a                                 ; $5e4b: $ea $41 $43
    db $10                                        ; $5e4e: $10
    ld a, a                                       ; $5e4f: $7f
    ccf                                           ; $5e50: $3f
    ld [hl], $2a                                  ; $5e51: $36 $2a
    ld [hl], b                                    ; $5e53: $70
    ld hl, $14a9                                  ; $5e54: $21 $a9 $14
    ld a, e                                       ; $5e57: $7b
    ccf                                           ; $5e58: $3f
    ld [hl-], a                                   ; $5e59: $32
    ld l, $6c                                     ; $5e5a: $2e $6c
    ld hl, $14a5                                  ; $5e5c: $21 $a5 $14
    ld d, d                                       ; $5e5f: $52
    ld [hl], $8d                                  ; $5e60: $36 $8d
    dec [hl]                                      ; $5e62: $35
    add l                                         ; $5e63: $85
    jr z, jr_0cb_5e66                             ; $5e64: $28 $00

jr_0cb_5e66:
    inc d                                         ; $5e66: $14
    ld bc, $ff00                                  ; $5e67: $01 $00 $ff
    ld a, a                                       ; $5e6a: $7f
    rrca                                          ; $5e6b: $0f
    ld e, b                                       ; $5e6c: $58
    inc b                                         ; $5e6d: $04
    db $10                                        ; $5e6e: $10
    cp b                                          ; $5e6f: $b8
    ld c, [hl]                                    ; $5e70: $4e
    or d                                          ; $5e71: $b2
    add hl, hl                                    ; $5e72: $29
    ld a, [bc]                                    ; $5e73: $0a
    add hl, de                                    ; $5e74: $19
    add h                                         ; $5e75: $84
    inc b                                         ; $5e76: $04
    call c, Call_000_127f                         ; $5e77: $dc $7f $12
    ld [hl], e                                    ; $5e7a: $73
    add hl, hl                                    ; $5e7b: $29
    dec a                                         ; $5e7c: $3d
    inc hl                                        ; $5e7d: $23
    inc d                                         ; $5e7e: $14
    rst $18                                       ; $5e7f: $df
    ld [hl-], a                                   ; $5e80: $32
    sub $25                                       ; $5e81: $d6 $25
    ld d, c                                       ; $5e83: $51
    ld hl, $1406                                  ; $5e84: $21 $06 $14
    ei                                            ; $5e87: $fb
    ld a, a                                       ; $5e88: $7f
    ld l, $5b                                     ; $5e89: $2e $5b
    and $35                                       ; $5e8b: $e6 $35
    and c                                         ; $5e8d: $a1
    db $10                                        ; $5e8e: $10
    sbc $6a                                       ; $5e8f: $de $6a
    push de                                       ; $5e91: $d5
    ld h, l                                       ; $5e92: $65
    adc $40                                       ; $5e93: $ce $40
    dec b                                         ; $5e95: $05
    ld [$3f1f], sp                                ; $5e96: $08 $1f $3f
    ld e, c                                       ; $5e99: $59
    ld [hl], $b4                                  ; $5e9a: $36 $b4
    dec l                                         ; $5e9c: $2d
    adc c                                         ; $5e9d: $89
    inc h                                         ; $5e9e: $24
    rst $10                                       ; $5e9f: $d7
    ld de, $04ce                                  ; $5ea0: $11 $ce $04
    ld c, c                                       ; $5ea3: $49
    nop                                           ; $5ea4: $00
    nop                                           ; $5ea5: $00
    nop                                           ; $5ea6: $00
    ld bc, $ff00                                  ; $5ea7: $01 $00 $ff
    ld a, a                                       ; $5eaa: $7f
    rrca                                          ; $5eab: $0f
    ld e, b                                       ; $5eac: $58
    inc b                                         ; $5ead: $04
    db $10                                        ; $5eae: $10
    cp l                                          ; $5eaf: $bd
    ld h, e                                       ; $5eb0: $63
    ld [hl], h                                    ; $5eb1: $74
    dec l                                         ; $5eb2: $2d
    ld l, e                                       ; $5eb3: $6b
    jr jr_0cb_5ed9                                ; $5eb4: $18 $23

    ld [$26de], sp                                ; $5eb6: $08 $de $26
    ld [hl], l                                    ; $5eb9: $75
    dec d                                         ; $5eba: $15
    ld l, [hl]                                    ; $5ebb: $6e
    jr @+$42                                      ; $5ebc: $18 $40

    jr jr_0cb_5f19                                ; $5ebe: $18 $59

    ld h, e                                       ; $5ec0: $63
    jp z, Jump_000_0569                           ; $5ec1: $ca $69 $05

    dec [hl]                                      ; $5ec4: $35
    dec b                                         ; $5ec5: $05
    ld [$3fbf], sp                                ; $5ec6: $08 $bf $3f
    db $dd                                        ; $5ec9: $dd
    ld [bc], a                                    ; $5eca: $02
    ld l, a                                       ; $5ecb: $6f
    add hl, bc                                    ; $5ecc: $09
    inc h                                         ; $5ecd: $24
    inc e                                         ; $5ece: $1c
    cp l                                          ; $5ecf: $bd
    ld [hl], a                                    ; $5ed0: $77
    rst $08                                       ; $5ed1: $cf
    ld a, [hl+]                                   ; $5ed2: $2a
    ld h, e                                       ; $5ed3: $63
    add hl, de                                    ; $5ed4: $19
    add b                                         ; $5ed5: $80
    ld [$637b], sp                                ; $5ed6: $08 $7b $63

jr_0cb_5ed9:
    pop af                                        ; $5ed9: $f1
    ld b, c                                       ; $5eda: $41
    ld a, [bc]                                    ; $5edb: $0a
    dec [hl]                                      ; $5edc: $35
    ld [bc], a                                    ; $5edd: $02
    jr jr_0cb_5f32                                ; $5ede: $18 $52

    ld b, d                                       ; $5ee0: $42
    dec hl                                        ; $5ee1: $2b
    add hl, hl                                    ; $5ee2: $29
    ld b, h                                       ; $5ee3: $44
    inc e                                         ; $5ee4: $1c
    ld bc, $0110                                  ; $5ee5: $01 $10 $01
    nop                                           ; $5ee8: $00
    rst $38                                       ; $5ee9: $ff
    ld a, a                                       ; $5eea: $7f
    ld l, [hl]                                    ; $5eeb: $6e
    ld sp, $0c64                                  ; $5eec: $31 $64 $0c
    db $ec                                        ; $5eef: $ec
    ld d, c                                       ; $5ef0: $51
    ld e, $17                                     ; $5ef1: $1e $17
    jr jr_0cb_5ef6                                ; $5ef3: $18 $01

    ld h, a                                       ; $5ef5: $67

jr_0cb_5ef6:
    db $10                                        ; $5ef6: $10
    ld hl, sp+$73                                 ; $5ef7: $f8 $73
    db $f4                                        ; $5ef9: $f4
    ld h, d                                       ; $5efa: $62
    db $ec                                        ; $5efb: $ec
    ld d, c                                       ; $5efc: $51
    call nz, $ec20                                ; $5efd: $c4 $20 $ec
    ld d, c                                       ; $5f00: $51
    ld e, c                                       ; $5f01: $59
    ld a, d                                       ; $5f02: $7a
    adc a                                         ; $5f03: $8f
    ld d, b                                       ; $5f04: $50
    inc hl                                        ; $5f05: $23
    inc e                                         ; $5f06: $1c
    rst $38                                       ; $5f07: $ff
    ld a, $36                                     ; $5f08: $3e $36
    ld [hl-], a                                   ; $5f0a: $32
    ld l, [hl]                                    ; $5f0b: $6e
    add hl, hl                                    ; $5f0c: $29
    jp hl                                         ; $5f0d: $e9


    inc d                                         ; $5f0e: $14
    rst $38                                       ; $5f0f: $ff
    ccf                                           ; $5f10: $3f
    ei                                            ; $5f11: $fb
    ld a, $f2                                     ; $5f12: $3e $f2
    add hl, hl                                    ; $5f14: $29
    add hl, bc                                    ; $5f15: $09
    dec d                                         ; $5f16: $15
    dec de                                        ; $5f17: $1b
    ld b, e                                       ; $5f18: $43

jr_0cb_5f19:
    db $f4                                        ; $5f19: $f4
    dec l                                         ; $5f1a: $2d
    rst $28                                       ; $5f1b: $ef
    db $10                                        ; $5f1c: $10
    ld b, [hl]                                    ; $5f1d: $46
    inc b                                         ; $5f1e: $04
    ld e, b                                       ; $5f1f: $58
    ld [hl+], a                                   ; $5f20: $22
    or d                                          ; $5f21: $b2
    ld hl, $10ab                                  ; $5f22: $21 $ab $10
    ld [hl+], a                                   ; $5f25: $22
    nop                                           ; $5f26: $00
    ld bc, $ff00                                  ; $5f27: $01 $00 $ff
    ld a, a                                       ; $5f2a: $7f
    dec d                                         ; $5f2b: $15
    ld d, h                                       ; $5f2c: $54
    dec d                                         ; $5f2d: $15
    ld d, h                                       ; $5f2e: $54
    ld sp, hl                                     ; $5f2f: $f9
    ld b, [hl]                                    ; $5f30: $46
    pop de                                        ; $5f31: $d1

jr_0cb_5f32:
    ld e, c                                       ; $5f32: $59
    dec b                                         ; $5f33: $05
    dec [hl]                                      ; $5f34: $35
    ld bc, $0508                                  ; $5f35: $01 $08 $05
    dec [hl]                                      ; $5f38: $35
    sbc c                                         ; $5f39: $99
    ld a, [hl-]                                   ; $5f3a: $3a
    rrca                                          ; $5f3b: $0f
    dec e                                         ; $5f3c: $1d
    ld h, a                                       ; $5f3d: $67
    db $10                                        ; $5f3e: $10
    rrca                                          ; $5f3f: $0f
    ld hl, $76ff                                  ; $5f40: $21 $ff $76
    or e                                          ; $5f43: $b3
    jr nc, jr_0cb_5f69                            ; $5f44: $30 $23

    nop                                           ; $5f46: $00
    rst $28                                       ; $5f47: $ef
    dec a                                         ; $5f48: $3d
    rst $28                                       ; $5f49: $ef
    dec a                                         ; $5f4a: $3d
    rst $28                                       ; $5f4b: $ef
    dec a                                         ; $5f4c: $3d
    rst $28                                       ; $5f4d: $ef
    dec a                                         ; $5f4e: $3d
    rrca                                          ; $5f4f: $0f
    ld hl, $76ff                                  ; $5f50: $21 $ff $76
    inc sp                                        ; $5f53: $33
    ld [hl], b                                    ; $5f54: $70
    inc hl                                        ; $5f55: $23
    nop                                           ; $5f56: $00
    dec b                                         ; $5f57: $05
    dec [hl]                                      ; $5f58: $35
    sbc l                                         ; $5f59: $9d
    ld [bc], a                                    ; $5f5a: $02
    rrca                                          ; $5f5b: $0f
    dec e                                         ; $5f5c: $1d
    ld d, $10                                     ; $5f5d: $16 $10
    ld sp, hl                                     ; $5f5f: $f9
    ld b, [hl]                                    ; $5f60: $46
    ld d, c                                       ; $5f61: $51
    ld c, c                                       ; $5f62: $49
    xor c                                         ; $5f63: $a9
    jr z, @+$03                                   ; $5f64: $28 $01

    ld [$0001], sp                                ; $5f66: $08 $01 $00

jr_0cb_5f69:
    rst $38                                       ; $5f69: $ff
    ld a, a                                       ; $5f6a: $7f
    dec d                                         ; $5f6b: $15
    ld d, h                                       ; $5f6c: $54
    dec d                                         ; $5f6d: $15
    ld d, h                                       ; $5f6e: $54
    dec de                                        ; $5f6f: $1b
    ld b, a                                       ; $5f70: $47
    jp nc, $e849                                  ; $5f71: $d2 $49 $e8

    jr nc, jr_0cb_5f76                            ; $5f74: $30 $00

jr_0cb_5f76:
    inc d                                         ; $5f76: $14
    add sp, $30                                   ; $5f77: $e8 $30
    sbc a                                         ; $5f79: $9f
    ld a, [hl-]                                   ; $5f7a: $3a
    rrca                                          ; $5f7b: $0f
    dec h                                         ; $5f7c: $25
    ld h, a                                       ; $5f7d: $67
    db $10                                        ; $5f7e: $10
    rrca                                          ; $5f7f: $0f
    ld hl, $7776                                  ; $5f80: $21 $76 $77
    ld c, [hl]                                    ; $5f83: $4e
    ld sp, $0023                                  ; $5f84: $31 $23 $00
    rra                                           ; $5f87: $1f
    daa                                           ; $5f88: $27
    ld [hl], e                                    ; $5f89: $73
    ld hl, $10aa                                  ; $5f8a: $21 $aa $10
    ld [bc], a                                    ; $5f8d: $02
    nop                                           ; $5f8e: $00
    rrca                                          ; $5f8f: $0f
    ld hl, $7776                                  ; $5f90: $21 $76 $77
    ld d, b                                       ; $5f93: $50
    ld e, c                                       ; $5f94: $59
    inc hl                                        ; $5f95: $23
    nop                                           ; $5f96: $00
    rst $28                                       ; $5f97: $ef
    dec a                                         ; $5f98: $3d
    inc de                                        ; $5f99: $13
    dec sp                                        ; $5f9a: $3b
    rrca                                          ; $5f9b: $0f
    dec h                                         ; $5f9c: $25
    ldh [$08], a                                  ; $5f9d: $e0 $08
    rst $28                                       ; $5f9f: $ef
    dec a                                         ; $5fa0: $3d
    rra                                           ; $5fa1: $1f
    ld bc, $250f                                  ; $5fa2: $01 $0f $25
    nop                                           ; $5fa5: $00
    ld b, h                                       ; $5fa6: $44
    ld bc, $ff00                                  ; $5fa7: $01 $00 $ff
    ld a, a                                       ; $5faa: $7f
    dec d                                         ; $5fab: $15
    ld d, h                                       ; $5fac: $54
    dec d                                         ; $5fad: $15
    ld d, h                                       ; $5fae: $54
    cp b                                          ; $5faf: $b8
    ld b, a                                       ; $5fb0: $47
    dec l                                         ; $5fb1: $2d
    ld a, $e6                                     ; $5fb2: $3e $e6
    inc e                                         ; $5fb4: $1c
    ld b, d                                       ; $5fb5: $42
    ld [$1d06], sp                                ; $5fb6: $08 $06 $1d
    sbc a                                         ; $5fb9: $9f
    ld a, [hl-]                                   ; $5fba: $3a
    rrca                                          ; $5fbb: $0f
    dec h                                         ; $5fbc: $25
    ld h, a                                       ; $5fbd: $67
    db $10                                        ; $5fbe: $10
    rrca                                          ; $5fbf: $0f
    ld hl, $7776                                  ; $5fc0: $21 $76 $77
    ld sp, $4218                                  ; $5fc3: $31 $18 $42
    ld [$3def], sp                                ; $5fc6: $08 $ef $3d
    rst $28                                       ; $5fc9: $ef
    dec a                                         ; $5fca: $3d
    rst $28                                       ; $5fcb: $ef
    dec a                                         ; $5fcc: $3d
    rst $28                                       ; $5fcd: $ef
    dec a                                         ; $5fce: $3d
    ld b, $1d                                     ; $5fcf: $06 $1d
    sbc a                                         ; $5fd1: $9f
    ld l, d                                       ; $5fd2: $6a
    rrca                                          ; $5fd3: $0f
    dec h                                         ; $5fd4: $25
    ld h, a                                       ; $5fd5: $67
    jr nc, @+$11                                  ; $5fd6: $30 $0f

    ld hl, $7776                                  ; $5fd8: $21 $76 $77
    dec a                                         ; $5fdb: $3d
    add hl, bc                                    ; $5fdc: $09
    ld b, d                                       ; $5fdd: $42
    ld [$3efa], sp                                ; $5fde: $08 $fa $3e
    ld c, a                                       ; $5fe1: $4f
    dec [hl]                                      ; $5fe2: $35
    ld h, a                                       ; $5fe3: $67
    inc e                                         ; $5fe4: $1c
    ld b, d                                       ; $5fe5: $42
    ld [$0001], sp                                ; $5fe6: $08 $01 $00
    rst $38                                       ; $5fe9: $ff
    ld a, a                                       ; $5fea: $7f
    dec d                                         ; $5feb: $15
    ld d, h                                       ; $5fec: $54
    dec d                                         ; $5fed: $15
    ld d, h                                       ; $5fee: $54
    ld a, a                                       ; $5fef: $7f
    ld d, e                                       ; $5ff0: $53
    dec l                                         ; $5ff1: $2d
    ld c, [hl]                                    ; $5ff2: $4e
    and $2c                                       ; $5ff3: $e6 $2c
    ld hl, $e604                                  ; $5ff5: $21 $04 $e6
    inc l                                         ; $5ff8: $2c
    sbc a                                         ; $5ff9: $9f
    ld a, [hl-]                                   ; $5ffa: $3a
    rst $08                                       ; $5ffb: $cf
    inc h                                         ; $5ffc: $24
    dec h                                         ; $5ffd: $25
    inc c                                         ; $5ffe: $0c
    rst $08                                       ; $5fff: $cf
    inc h                                         ; $6000: $24
    ld a, l                                       ; $6001: $7d
    cpl                                           ; $6002: $2f
    push bc                                       ; $6003: $c5
    add hl, hl                                    ; $6004: $29
    ld hl, $e604                                  ; $6005: $21 $04 $e6
    inc l                                         ; $6008: $2c
    ccf                                           ; $6009: $3f
    ld bc, $24cf                                  ; $600a: $01 $cf $24
    dec hl                                        ; $600d: $2b
    nop                                           ; $600e: $00
    rst $08                                       ; $600f: $cf
    inc h                                         ; $6010: $24
    ld a, l                                       ; $6011: $7d
    cpl                                           ; $6012: $2f
    jp hl                                         ; $6013: $e9


    ld d, h                                       ; $6014: $54
    ld hl, $7f04                                  ; $6015: $21 $04 $7f
    ld d, e                                       ; $6018: $53

jr_0cb_6019:
    pop af                                        ; $6019: $f1
    dec a                                         ; $601a: $3d
    jp hl                                         ; $601b: $e9


    inc e                                         ; $601c: $1c
    ld [bc], a                                    ; $601d: $02
    nop                                           ; $601e: $00
    rst $08                                       ; $601f: $cf
    inc h                                         ; $6020: $24
    cp a                                          ; $6021: $bf
    ld b, [hl]                                    ; $6022: $46
    rst $08                                       ; $6023: $cf
    add hl, sp                                    ; $6024: $39
    ld b, a                                       ; $6025: $47
    dec l                                         ; $6026: $2d
    ld bc, $ff00                                  ; $6027: $01 $00 $ff
    ld a, a                                       ; $602a: $7f
    dec d                                         ; $602b: $15
    ld d, h                                       ; $602c: $54
    dec d                                         ; $602d: $15
    ld d, h                                       ; $602e: $54
    sub $5e                                       ; $602f: $d6 $5e
    xor l                                         ; $6031: $ad
    ld d, c                                       ; $6032: $51
    and $2c                                       ; $6033: $e6 $2c
    ld b, d                                       ; $6035: $42
    ld [$2ce6], sp                                ; $6036: $08 $e6 $2c
    dec de                                        ; $6039: $1b
    dec sp                                        ; $603a: $3b
    ld c, h                                       ; $603b: $4c
    dec l                                         ; $603c: $2d
    rlca                                          ; $603d: $07
    db $10                                        ; $603e: $10
    ld c, h                                       ; $603f: $4c
    dec l                                         ; $6040: $2d
    sub $5e                                       ; $6041: $d6 $5e
    ld l, $19                                     ; $6043: $2e $19
    ld b, d                                       ; $6045: $42
    ld [$5ed6], sp                                ; $6046: $08 $d6 $5e
    sub l                                         ; $6049: $95
    add hl, hl                                    ; $604a: $29
    adc d                                         ; $604b: $8a
    inc c                                         ; $604c: $0c
    ld b, d                                       ; $604d: $42
    ld [$2ce6], sp                                ; $604e: $08 $e6 $2c
    rst $38                                       ; $6051: $ff
    ld a, a                                       ; $6052: $7f
    ld c, h                                       ; $6053: $4c
    dec l                                         ; $6054: $2d
    sub d                                         ; $6055: $92
    ld d, d                                       ; $6056: $52
    ld c, h                                       ; $6057: $4c
    dec l                                         ; $6058: $2d
    sub $5e                                       ; $6059: $d6 $5e
    or [hl]                                       ; $605b: $b6
    add hl, de                                    ; $605c: $19
    ld b, d                                       ; $605d: $42
    ld [$290f], sp                                ; $605e: $08 $0f $29
    cp a                                          ; $6061: $bf
    ld b, [hl]                                    ; $6062: $46
    rst $08                                       ; $6063: $cf
    add hl, sp                                    ; $6064: $39
    ld b, a                                       ; $6065: $47
    dec l                                         ; $6066: $2d
    ld bc, $ff00                                  ; $6067: $01 $00 $ff
    ld a, a                                       ; $606a: $7f
    dec d                                         ; $606b: $15
    ld d, h                                       ; $606c: $54
    dec d                                         ; $606d: $15
    ld d, h                                       ; $606e: $54
    ccf                                           ; $606f: $3f
    ld b, a                                       ; $6070: $47
    inc de                                        ; $6071: $13
    ld l, $e7                                     ; $6072: $2e $e7
    jr jr_0cb_6097                                ; $6074: $18 $21

    inc b                                         ; $6076: $04
    rst $20                                       ; $6077: $e7
    jr jr_0cb_6019                                ; $6078: $18 $9f

    ld a, [hl-]                                   ; $607a: $3a
    rrca                                          ; $607b: $0f
    dec h                                         ; $607c: $25
    ld h, a                                       ; $607d: $67
    db $10                                        ; $607e: $10
    rrca                                          ; $607f: $0f
    ld hl, $2e9d                                  ; $6080: $21 $9d $2e
    ldh a, [rDIV]                                 ; $6083: $f0 $04
    ld hl, $0f04                                  ; $6085: $21 $04 $0f
    ld hl, $026b                                  ; $6088: $21 $6b $02
    xor c                                         ; $608b: $a9
    dec c                                         ; $608c: $0d
    ld hl, $e704                                  ; $608d: $21 $04 $e7
    jr @+$01                                      ; $6090: $18 $ff

    dec sp                                        ; $6092: $3b
    rrca                                          ; $6093: $0f
    dec h                                         ; $6094: $25
    ld h, b                                       ; $6095: $60
    ld b, h                                       ; $6096: $44

jr_0cb_6097:
    cp h                                          ; $6097: $bc
    ld l, [hl]                                    ; $6098: $6e
    sub c                                         ; $6099: $91
    ld b, l                                       ; $609a: $45
    rst $00                                       ; $609b: $c7
    inc e                                         ; $609c: $1c
    ld hl, $0f04                                  ; $609d: $21 $04 $0f
    ld hl, $0de6                                  ; $60a0: $21 $e6 $0d
    pop bc                                        ; $60a3: $c1
    inc b                                         ; $60a4: $04
    ld c, a                                       ; $60a5: $4f
    ld c, d                                       ; $60a6: $4a
    ld bc, $ff00                                  ; $60a7: $01 $00 $ff
    ld a, a                                       ; $60aa: $7f
    xor e                                         ; $60ab: $ab
    dec c                                         ; $60ac: $0d
    add d                                         ; $60ad: $82
    nop                                           ; $60ae: $00
    or e                                          ; $60af: $b3
    ld e, l                                       ; $60b0: $5d
    ld c, [hl]                                    ; $60b1: $4e
    ld c, c                                       ; $60b2: $49
    xor b                                         ; $60b3: $a8
    jr nc, jr_0cb_60b7                            ; $60b4: $30 $01

    inc c                                         ; $60b6: $0c

jr_0cb_60b7:
    inc l                                         ; $60b7: $2c
    dec a                                         ; $60b8: $3d
    ld l, [hl]                                    ; $60b9: $6e
    ld [bc], a                                    ; $60ba: $02
    add l                                         ; $60bb: $85
    ld bc, $00a1                                  ; $60bc: $01 $a1 $00
    ei                                            ; $60bf: $fb
    ld a, $33                                     ; $60c0: $3e $33
    ld a, $2c                                     ; $60c2: $3e $2c
    ld b, c                                       ; $60c4: $41
    ld h, a                                       ; $60c5: $67
    inc e                                         ; $60c6: $1c
    inc l                                         ; $60c7: $2c
    dec a                                         ; $60c8: $3d
    halt                                          ; $60c9: $76
    ld [bc], a                                    ; $60ca: $02
    ld h, l                                       ; $60cb: $65
    add hl, sp                                    ; $60cc: $39
    and b                                         ; $60cd: $a0
    inc c                                         ; $60ce: $0c
    ld a, e                                       ; $60cf: $7b
    ld a, $b3                                     ; $60d0: $3e $b3
    dec a                                         ; $60d2: $3d
    inc l                                         ; $60d3: $2c
    ld b, c                                       ; $60d4: $41
    rlca                                          ; $60d5: $07
    inc e                                         ; $60d6: $1c
    ld h, [hl]                                    ; $60d7: $66
    jr z, @+$11                                   ; $60d8: $28 $0f

    ld [bc], a                                    ; $60da: $02
    nop                                           ; $60db: $00
    ld bc, $0000                                  ; $60dc: $01 $00 $00
    inc d                                         ; $60df: $14
    ld [hl+], a                                   ; $60e0: $22
    ld c, h                                       ; $60e1: $4c
    ld hl, $2045                                  ; $60e2: $21 $45 $20
    inc bc                                        ; $60e5: $03
    inc c                                         ; $60e6: $0c
    ld bc, $ff00                                  ; $60e7: $01 $00 $ff
    ld a, a                                       ; $60ea: $7f
    xor e                                         ; $60eb: $ab
    dec c                                         ; $60ec: $0d
    add d                                         ; $60ed: $82
    nop                                           ; $60ee: $00
    rst $38                                       ; $60ef: $ff
    ld a, a                                       ; $60f0: $7f
    sub e                                         ; $60f1: $93
    ld d, [hl]                                    ; $60f2: $56
    ld l, d                                       ; $60f3: $6a
    ld sp, $1463                                  ; $60f4: $31 $63 $14
    ld a, e                                       ; $60f7: $7b
    ld l, a                                       ; $60f8: $6f
    rrca                                          ; $60f9: $0f
    ld b, [hl]                                    ; $60fa: $46
    and $20                                       ; $60fb: $e6 $20
    nop                                           ; $60fd: $00
    inc b                                         ; $60fe: $04
    add hl, de                                    ; $60ff: $19
    ld b, $50                                     ; $6100: $06 $50
    ld bc, $00c9                                  ; $6102: $01 $c9 $00
    ld b, h                                       ; $6105: $44
    nop                                           ; $6106: $00
    rst $30                                       ; $6107: $f7
    ld e, [hl]                                    ; $6108: $5e
    adc e                                         ; $6109: $8b
    dec [hl]                                      ; $610a: $35
    ld h, d                                       ; $610b: $62
    stop                                          ; $610c: $10 $00
    inc b                                         ; $610e: $04
    ld [hl], e                                    ; $610f: $73
    ld c, [hl]                                    ; $6110: $4e
    rlca                                          ; $6111: $07
    dec h                                         ; $6112: $25
    nop                                           ; $6113: $00
    nop                                           ; $6114: $00
    nop                                           ; $6115: $00
    inc b                                         ; $6116: $04
    db $10                                        ; $6117: $10
    ld b, d                                       ; $6118: $42
    add e                                         ; $6119: $83
    inc d                                         ; $611a: $14
    nop                                           ; $611b: $00
    nop                                           ; $611c: $00
    nop                                           ; $611d: $00
    inc b                                         ; $611e: $04
    and b                                         ; $611f: $a0
    ld e, $e0                                     ; $6120: $1e $e0
    ld bc, $00e0                                  ; $6122: $01 $e0 $00
    ld b, b                                       ; $6125: $40
    nop                                           ; $6126: $00
    ld bc, $ff00                                  ; $6127: $01 $00 $ff
    ld a, a                                       ; $612a: $7f
    xor e                                         ; $612b: $ab
    dec c                                         ; $612c: $0d
    add d                                         ; $612d: $82
    nop                                           ; $612e: $00
    ldh [rDMA], a                                 ; $612f: $e0 $46
    ld e, $17                                     ; $6131: $1e $17
    jr jr_0cb_6136                                ; $6133: $18 $01

    ld h, a                                       ; $6135: $67

jr_0cb_6136:
    db $10                                        ; $6136: $10
    jp c, $0d52                                   ; $6137: $da $52 $0d

    ld b, [hl]                                    ; $613a: $46
    ld h, l                                       ; $613b: $65
    ld hl, $1440                                  ; $613c: $21 $40 $14
    cp d                                          ; $613f: $ba
    ld b, d                                       ; $6140: $42
    xor a                                         ; $6141: $af
    ld sp, $14c8                                  ; $6142: $31 $c8 $14
    ld b, e                                       ; $6145: $43
    inc b                                         ; $6146: $04
    ld e, e                                       ; $6147: $5b
    ld h, e                                       ; $6148: $63
    ld d, c                                       ; $6149: $51
    ld c, d                                       ; $614a: $4a
    rlca                                          ; $614b: $07
    add hl, hl                                    ; $614c: $29
    ld bc, $d414                                  ; $614d: $01 $14 $d4
    ld d, e                                       ; $6150: $53
    ldh [rDMA], a                                 ; $6151: $e0 $46
    ret nz                                        ; $6153: $c0

    dec h                                         ; $6154: $25
    and b                                         ; $6155: $a0
    inc d                                         ; $6156: $14
    ld [hl], h                                    ; $6157: $74
    ld a, a                                       ; $6158: $7f
    ld c, l                                       ; $6159: $4d
    ld h, d                                       ; $615a: $62
    add a                                         ; $615b: $87
    ld b, l                                       ; $615c: $45
    ld h, b                                       ; $615d: $60
    inc h                                         ; $615e: $24
    ld l, h                                       ; $615f: $6c
    ld [hl-], a                                   ; $6160: $32
    and b                                         ; $6161: $a0
    dec h                                         ; $6162: $25
    add b                                         ; $6163: $80
    inc b                                         ; $6164: $04
    nop                                           ; $6165: $00
    nop                                           ; $6166: $00
    ld bc, $ff00                                  ; $6167: $01 $00 $ff
    ld a, a                                       ; $616a: $7f
    rrca                                          ; $616b: $0f
    ld e, b                                       ; $616c: $58
    inc b                                         ; $616d: $04
    db $10                                        ; $616e: $10
    dec [hl]                                      ; $616f: $35
    inc sp                                        ; $6170: $33
    jr z, jr_0cb_6195                             ; $6171: $28 $22

    ret z                                         ; $6173: $c8

    jr nc, jr_0cb_61b9                            ; $6174: $30 $43

    jr jr_0cb_61d6                                ; $6176: $18 $5e

    rrca                                          ; $6178: $0f
    ld e, $0d                                     ; $6179: $1e $0d
    ld l, a                                       ; $617b: $6f
    inc h                                         ; $617c: $24
    ld bc, $3f1c                                  ; $617d: $01 $1c $3f
    inc bc                                        ; $6180: $03
    rla                                           ; $6181: $17
    add hl, bc                                    ; $6182: $09
    add c                                         ; $6183: $81
    ld h, b                                       ; $6184: $60
    ld h, e                                       ; $6185: $63
    inc c                                         ; $6186: $0c
    dec e                                         ; $6187: $1d
    ld b, a                                       ; $6188: $47
    push de                                       ; $6189: $d5
    add hl, hl                                    ; $618a: $29
    inc l                                         ; $618b: $2c
    dec e                                         ; $618c: $1d
    ld b, [hl]                                    ; $618d: $46
    inc b                                         ; $618e: $04
    ld de, $c967                                  ; $618f: $11 $67 $c9
    ld c, c                                       ; $6192: $49
    jr z, jr_0cb_61d2                             ; $6193: $28 $3d

jr_0cb_6195:
    ld b, d                                       ; $6195: $42
    inc d                                         ; $6196: $14
    inc e                                         ; $6197: $1c
    ld e, e                                       ; $6198: $5b
    ld de, $273e                                  ; $6199: $11 $3e $27
    ld sp, $2060                                  ; $619c: $31 $60 $20
    ld sp, $6c46                                  ; $619f: $31 $46 $6c
    ld sp, $20a3                                  ; $61a2: $31 $a3 $20
    nop                                           ; $61a5: $00
    db $10                                        ; $61a6: $10
    ld bc, $ff00                                  ; $61a7: $01 $00 $ff
    ld a, a                                       ; $61aa: $7f
    ld l, l                                       ; $61ab: $6d
    ld [hl], d                                    ; $61ac: $72
    ld bc, $1620                                  ; $61ad: $01 $20 $16
    ld a, a                                       ; $61b0: $7f
    xor [hl]                                      ; $61b1: $ae
    ld l, c                                       ; $61b2: $69
    ld b, $39                                     ; $61b3: $06 $39
    ld h, b                                       ; $61b5: $60
    inc e                                         ; $61b6: $1c
    sbc b                                         ; $61b7: $98
    ld [hl], e                                    ; $61b8: $73

jr_0cb_61b9:
    cpl                                           ; $61b9: $2f
    ld d, d                                       ; $61ba: $52
    bit 0, c                                      ; $61bb: $cb $41
    ld c, b                                       ; $61bd: $48
    ld sp, $7bbd                                  ; $61be: $31 $bd $7b
    ld [hl], b                                    ; $61c1: $70
    ld b, d                                       ; $61c2: $42
    sra l                                         ; $61c3: $cb $2d
    daa                                           ; $61c5: $27
    dec e                                         ; $61c6: $1d
    ld e, a                                       ; $61c7: $5f
    rrca                                          ; $61c8: $0f
    cp a                                          ; $61c9: $bf
    dec c                                         ; $61ca: $0d
    or d                                          ; $61cb: $b2
    db $10                                        ; $61cc: $10
    ld b, h                                       ; $61cd: $44
    inc d                                         ; $61ce: $14
    dec e                                         ; $61cf: $1d
    ld [hl], a                                    ; $61d0: $77
    dec d                                         ; $61d1: $15

jr_0cb_61d2:
    ld d, d                                       ; $61d2: $52
    sub c                                         ; $61d3: $91
    ld b, c                                       ; $61d4: $41
    db $ed                                        ; $61d5: $ed

jr_0cb_61d6:
    inc l                                         ; $61d6: $2c
    ld e, l                                       ; $61d7: $5d
    ld d, a                                       ; $61d8: $57
    inc [hl]                                      ; $61d9: $34
    ld a, $8f                                     ; $61da: $3e $8f
    ld sp, $24e9                                  ; $61dc: $31 $e9 $24
    ld d, e                                       ; $61df: $53
    ld a, $ae                                     ; $61e0: $3e $ae
    ld sp, $2109                                  ; $61e2: $31 $09 $21
    ld b, h                                       ; $61e5: $44
    db $10                                        ; $61e6: $10
    ld bc, $ff00                                  ; $61e7: $01 $00 $ff
    ld a, a                                       ; $61ea: $7f
    ld h, l                                       ; $61eb: $65
    add hl, de                                    ; $61ec: $19
    inc b                                         ; $61ed: $04
    nop                                           ; $61ee: $00
    ld sp, hl                                     ; $61ef: $f9
    ld a, a                                       ; $61f0: $7f
    xor $66                                       ; $61f1: $ee $66
    rst $20                                       ; $61f3: $e7
    ld b, l                                       ; $61f4: $45
    nop                                           ; $61f5: $00
    db $10                                        ; $61f6: $10
    ld e, h                                       ; $61f7: $5c
    ld [bc], a                                    ; $61f8: $02
    ld [hl], h                                    ; $61f9: $74
    ld bc, $0aa7                                  ; $61fa: $01 $a7 $0a
    ret nz                                        ; $61fd: $c0

    ld [$2173], sp                                ; $61fe: $08 $73 $21
    cp l                                          ; $6201: $bd
    ld l, a                                       ; $6202: $6f
    xor $4d                                       ; $6203: $ee $4d
    add e                                         ; $6205: $83
    jr jr_0cb_6285                                ; $6206: $18 $7d

    ld d, e                                       ; $6208: $53
    push af                                       ; $6209: $f5
    ld sp, $190c                                  ; $620a: $31 $0c $19
    inc hl                                        ; $620d: $23
    nop                                           ; $620e: $00
    ld a, a                                       ; $620f: $7f
    ld e, e                                       ; $6210: $5b
    adc l                                         ; $6211: $8d
    ld c, d                                       ; $6212: $4a
    xor b                                         ; $6213: $a8
    ld b, l                                       ; $6214: $45
    ld [bc], a                                    ; $6215: $02
    add hl, sp                                    ; $6216: $39
    ld a, d                                       ; $6217: $7a
    ld [hl], a                                    ; $6218: $77
    or c                                          ; $6219: $b1
    ld h, [hl]                                    ; $621a: $66
    bit 2, l                                      ; $621b: $cb $55
    ld b, $49                                     ; $621d: $06 $49
    ld [hl], d                                    ; $621f: $72
    ld d, [hl]                                    ; $6220: $56
    xor c                                         ; $6221: $a9
    ld b, l                                       ; $6222: $45
    jp Jump_000_0034                              ; $6223: $c3 $34 $00


    jr z, jr_0cb_6229                             ; $6226: $28 $01

    nop                                           ; $6228: $00

jr_0cb_6229:
    rst $38                                       ; $6229: $ff
    ld a, a                                       ; $622a: $7f
    jr nz, @+$22                                  ; $622b: $20 $20

    add b                                         ; $622d: $80
    inc b                                         ; $622e: $04
    scf                                           ; $622f: $37
    ld [de], a                                    ; $6230: $12
    inc c                                         ; $6231: $0c
    add hl, bc                                    ; $6232: $09
    ld c, b                                       ; $6233: $48
    ld [$0842], sp                                ; $6234: $08 $42 $08
    ld b, b                                       ; $6237: $40
    ld d, [hl]                                    ; $6238: $56
    adc c                                         ; $6239: $89
    rrca                                          ; $623a: $0f
    ld h, e                                       ; $623b: $63
    ld bc, $0420                                  ; $623c: $01 $20 $04
    ld h, e                                       ; $623f: $63
    dec b                                         ; $6240: $05
    sbc $07                                       ; $6241: $de $07
    ld [hl], h                                    ; $6243: $74
    nop                                           ; $6244: $00
    jr nz, @+$2a                                  ; $6245: $20 $28

    sbc e                                         ; $6247: $9b
    ld d, e                                       ; $6248: $53
    ld [hl], e                                    ; $6249: $73
    ld a, [hl-]                                   ; $624a: $3a
    ld a, [hl+]                                   ; $624b: $2a
    ld hl, $0863                                  ; $624c: $21 $63 $08
    ld a, [c]                                     ; $624f: $f2
    ld hl, $1ba0                                  ; $6250: $21 $a0 $1b
    and b                                         ; $6253: $a0
    ld de, $0060                                  ; $6254: $11 $60 $00
    db $fd                                        ; $6257: $fd
    ld l, $d2                                     ; $6258: $2e $d2
    dec e                                         ; $625a: $1d
    ld c, $09                                     ; $625b: $0e $09
    ld h, a                                       ; $625d: $67
    nop                                           ; $625e: $00
    ld sp, hl                                     ; $625f: $f9
    ld l, $ce                                     ; $6260: $2e $ce
    dec e                                         ; $6262: $1d
    ld a, [bc]                                    ; $6263: $0a
    add hl, bc                                    ; $6264: $09
    ld h, e                                       ; $6265: $63
    nop                                           ; $6266: $00
    ld bc, $ff00                                  ; $6267: $01 $00 $ff
    ld a, a                                       ; $626a: $7f
    ld c, h                                       ; $626b: $4c
    dec [hl]                                      ; $626c: $35
    ld b, h                                       ; $626d: $44
    ld [$1afd], sp                                ; $626e: $08 $fd $1a
    inc de                                        ; $6271: $13
    ld c, $2a                                     ; $6272: $0e $2a
    ld bc, $0066                                  ; $6274: $01 $66 $00
    db $db                                        ; $6277: $db
    ld a, a                                       ; $6278: $7f
    pop de                                        ; $6279: $d1
    ld d, l                                       ; $627a: $55
    ret                                           ; $627b: $c9


    inc l                                         ; $627c: $2c
    ld b, h                                       ; $627d: $44
    db $10                                        ; $627e: $10
    cp b                                          ; $627f: $b8
    ld b, c                                       ; $6280: $41
    ld l, $31                                     ; $6281: $2e $31
    adc e                                         ; $6283: $8b
    inc d                                         ; $6284: $14

jr_0cb_6285:
    inc hl                                        ; $6285: $23
    jr @-$62                                      ; $6286: $18 $9c

    ld l, a                                       ; $6288: $6f
    ld l, $31                                     ; $6289: $2e $31
    adc e                                         ; $628b: $8b
    inc d                                         ; $628c: $14
    ld bc, $df04                                  ; $628d: $01 $04 $df
    ld [de], a                                    ; $6290: $12
    halt                                          ; $6291: $76
    dec d                                         ; $6292: $15
    or b                                          ; $6293: $b0
    jr nz, jr_0cb_62da                            ; $6294: $20 $44

    db $10                                        ; $6296: $10
    or b                                          ; $6297: $b0
    ld d, c                                       ; $6298: $51
    dec c                                         ; $6299: $0d
    ld b, c                                       ; $629a: $41
    daa                                           ; $629b: $27
    inc [hl]                                      ; $629c: $34
    inc bc                                        ; $629d: $03
    jr z, @+$3e                                   ; $629e: $28 $3c

    ld b, d                                       ; $62a0: $42
    dec [hl]                                      ; $62a1: $35
    ld sp, $142f                                  ; $62a2: $31 $2f $14
    daa                                           ; $62a5: $27
    jr jr_0cb_62a9                                ; $62a6: $18 $01

    nop                                           ; $62a8: $00

jr_0cb_62a9:
    rst $38                                       ; $62a9: $ff
    ld a, a                                       ; $62aa: $7f
    dec d                                         ; $62ab: $15
    ld d, h                                       ; $62ac: $54
    dec d                                         ; $62ad: $15
    ld d, h                                       ; $62ae: $54
    adc [hl]                                      ; $62af: $8e
    inc de                                        ; $62b0: $13
    inc hl                                        ; $62b1: $23
    ld e, $05                                     ; $62b2: $1e $05
    ld bc, $1462                                  ; $62b4: $01 $62 $14
    inc bc                                        ; $62b7: $03
    halt                                          ; $62b8: $76
    ld [hl], e                                    ; $62b9: $73
    rlca                                          ; $62ba: $07
    jp z, $a615                                   ; $62bb: $ca $15 $a6

    inc b                                         ; $62be: $04
    inc bc                                        ; $62bf: $03
    ld e, $f5                                     ; $62c0: $1e $f5
    ld sp, $08ef                                  ; $62c2: $31 $ef $08
    ld b, [hl]                                    ; $62c5: $46
    nop                                           ; $62c6: $00
    add e                                         ; $62c7: $83
    halt                                          ; $62c8: $76
    ld [hl], e                                    ; $62c9: $73
    rlca                                          ; $62ca: $07
    jp z, $a615                                   ; $62cb: $ca $15 $a6

    inc b                                         ; $62ce: $04
    rlca                                          ; $62cf: $07
    ld [hl], a                                    ; $62d0: $77
    ld [hl], e                                    ; $62d1: $73
    rlca                                          ; $62d2: $07
    jp z, $a615                                   ; $62d3: $ca $15 $a6

    inc b                                         ; $62d6: $04
    dec hl                                        ; $62d7: $2b
    rlca                                          ; $62d8: $07
    ret nz                                        ; $62d9: $c0

jr_0cb_62da:
    ld de, $00a2                                  ; $62da: $11 $a2 $00
    jr nz, jr_0cb_62eb                            ; $62dd: $20 $0c

    inc hl                                        ; $62df: $23
    ld e, $57                                     ; $62e0: $1e $57
    ld l, a                                       ; $62e2: $6f
    cpl                                           ; $62e3: $2f
    ld c, d                                       ; $62e4: $4a
    add h                                         ; $62e5: $84
    jr jr_0cb_62e8                                ; $62e6: $18 $00

jr_0cb_62e8:
    nop                                           ; $62e8: $00
    rst $38                                       ; $62e9: $ff
    ld a, a                                       ; $62ea: $7f

jr_0cb_62eb:
    ld d, c                                       ; $62eb: $51
    nop                                           ; $62ec: $00
    inc b                                         ; $62ed: $04
    nop                                           ; $62ee: $00

jr_0cb_62ef:
    inc a                                         ; $62ef: $3c
    ld d, a                                       ; $62f0: $57
    dec [hl]                                      ; $62f1: $35
    ld [hl], $4b                                  ; $62f2: $36 $4b
    dec h                                         ; $62f4: $25
    ld h, d                                       ; $62f5: $62
    db $10                                        ; $62f6: $10
    ld a, l                                       ; $62f7: $7d
    ld [bc], a                                    ; $62f8: $02
    jr c, jr_0cb_6304                             ; $62f9: $38 $09

    adc $20                                       ; $62fb: $ce $20
    ld b, h                                       ; $62fd: $44
    jr jr_0cb_62ef                                ; $62fe: $18 $ef

    ld a, l                                       ; $6300: $7d
    dec e                                         ; $6301: $1d
    ld c, a                                       ; $6302: $4f
    or e                                          ; $6303: $b3

jr_0cb_6304:
    jr nz, jr_0cb_6326                            ; $6304: $20 $20

    inc d                                         ; $6306: $14
    sbc [hl]                                      ; $6307: $9e
    ld [bc], a                                    ; $6308: $02
    cp d                                          ; $6309: $ba
    ld a, $13                                     ; $630a: $3e $13
    ld c, h                                       ; $630c: $4c
    inc h                                         ; $630d: $24
    inc b                                         ; $630e: $04
    ld d, h                                       ; $630f: $54
    ld l, e                                       ; $6310: $6b
    dec l                                         ; $6311: $2d
    ld e, [hl]                                    ; $6312: $5e
    ret                                           ; $6313: $c9


    ld c, h                                       ; $6314: $4c
    ld b, a                                       ; $6315: $47
    inc h                                         ; $6316: $24
    ccf                                           ; $6317: $3f
    ld d, a                                       ; $6318: $57
    add hl, sp                                    ; $6319: $39
    ld [hl], $4f                                  ; $631a: $36 $4f
    dec h                                         ; $631c: $25
    ld h, [hl]                                    ; $631d: $66
    db $10                                        ; $631e: $10
    inc [hl]                                      ; $631f: $34
    ld [hl], $2d                                  ; $6320: $36 $2d
    dec d                                         ; $6322: $15
    ld b, e                                       ; $6323: $43
    inc b                                         ; $6324: $04
    ld h, d                                       ; $6325: $62

jr_0cb_6326:
    db $10                                        ; $6326: $10
    ld bc, $ff00                                  ; $6327: $01 $00 $ff
    ld a, a                                       ; $632a: $7f
    rrca                                          ; $632b: $0f
    ld e, b                                       ; $632c: $58
    inc b                                         ; $632d: $04
    db $10                                        ; $632e: $10
    cp a                                          ; $632f: $bf
    ld a, [hl+]                                   ; $6330: $2a
    cp e                                          ; $6331: $bb
    ld bc, $04cd                                  ; $6332: $01 $cd $04
    inc b                                         ; $6335: $04
    nop                                           ; $6336: $00
    rst $38                                       ; $6337: $ff
    ld a, $b8                                     ; $6338: $3e $b8
    ld b, c                                       ; $633a: $41
    xor [hl]                                      ; $633b: $ae
    jr nz, jr_0cb_6381                            ; $633c: $20 $43

    ld [$6623], sp                                ; $633e: $08 $23 $66
    ld h, b                                       ; $6341: $60
    inc l                                         ; $6342: $2c
    ld bc, $000a                                  ; $6343: $01 $0a $00
    nop                                           ; $6346: $00
    dec de                                        ; $6347: $1b
    ld bc, $004a                                  ; $6348: $01 $4a $00
    ei                                            ; $634b: $fb
    dec b                                         ; $634c: $05
    nop                                           ; $634d: $00
    nop                                           ; $634e: $00
    rst $38                                       ; $634f: $ff
    ld a, [hl-]                                   ; $6350: $3a
    ld e, c                                       ; $6351: $59
    ld a, [hl+]                                   ; $6352: $2a
    ld [hl], c                                    ; $6353: $71
    dec d                                         ; $6354: $15
    ld b, l                                       ; $6355: $45

jr_0cb_6356:
    nop                                           ; $6356: $00
    ei                                            ; $6357: $fb
    ld c, d                                       ; $6358: $4a
    ld d, l                                       ; $6359: $55
    ld a, [hl-]                                   ; $635a: $3a
    ld l, l                                       ; $635b: $6d
    dec h                                         ; $635c: $25
    ld h, l                                       ; $635d: $65
    ld [$29f3], sp                                ; $635e: $08 $f3 $29
    ld c, l                                       ; $6361: $4d
    add hl, de                                    ; $6362: $19
    ld h, l                                       ; $6363: $65
    inc b                                         ; $6364: $04
    nop                                           ; $6365: $00
    nop                                           ; $6366: $00
    ld bc, $ff00                                  ; $6367: $01 $00 $ff
    ld a, a                                       ; $636a: $7f
    ld l, l                                       ; $636b: $6d
    ld [hl], d                                    ; $636c: $72
    nop                                           ; $636d: $00

jr_0cb_636e:
    jr jr_0cb_636e                                ; $636e: $18 $fe

    add hl, hl                                    ; $6370: $29
    ld [hl], e                                    ; $6371: $73
    add hl, hl                                    ; $6372: $29
    xor h                                         ; $6373: $ac
    db $10                                        ; $6374: $10
    inc b                                         ; $6375: $04
    nop                                           ; $6376: $00
    db $db                                        ; $6377: $db
    dec c                                         ; $6378: $0d
    ccf                                           ; $6379: $3f
    dec hl                                        ; $637a: $2b
    jr @+$42                                      ; $637b: $18 $40

    inc c                                         ; $637d: $0c
    ld [$129e], sp                                ; $637e: $08 $9e $12

jr_0cb_6381:
    push af                                       ; $6381: $f5
    ld a, l                                       ; $6382: $7d
    rst $08                                       ; $6383: $cf
    ld d, b                                       ; $6384: $50
    ld [bc], a                                    ; $6385: $02
    inc l                                         ; $6386: $2c
    ld e, a                                       ; $6387: $5f
    daa                                           ; $6388: $27
    or d                                          ; $6389: $b2
    ld [hl-], a                                   ; $638a: $32
    adc c                                         ; $638b: $89
    dec l                                         ; $638c: $2d
    ld h, b                                       ; $638d: $60
    jr z, jr_0cb_6356                             ; $638e: $28 $c6

    ld d, e                                       ; $6390: $53
    pop hl                                        ; $6391: $e1
    inc b                                         ; $6392: $04
    ld [c], a                                     ; $6393: $e2
    dec a                                         ; $6394: $3d
    ld b, b                                       ; $6395: $40
    inc c                                         ; $6396: $0c
    ld [hl], e                                    ; $6397: $73
    add hl, hl                                    ; $6398: $29
    ld e, a                                       ; $6399: $5f
    jr c, @+$0f                                   ; $639a: $38 $0d

    inc d                                         ; $639c: $14
    inc hl                                        ; $639d: $23
    inc c                                         ; $639e: $0c
    jp nc, Jump_000_2b29                          ; $639f: $d2 $29 $2b

    ld hl, $0864                                  ; $63a2: $21 $64 $08
    nop                                           ; $63a5: $00
    nop                                           ; $63a6: $00
    ld bc, $ff00                                  ; $63a7: $01 $00 $ff
    ld a, a                                       ; $63aa: $7f
    ld l, [hl]                                    ; $63ab: $6e
    ld sp, $0c64                                  ; $63ac: $31 $64 $0c
    ld e, h                                       ; $63af: $5c
    ccf                                           ; $63b0: $3f
    sub [hl]                                      ; $63b1: $96
    ld sp, $08cf                                  ; $63b2: $31 $cf $08
    daa                                           ; $63b5: $27
    nop                                           ; $63b6: $00
    sbc e                                         ; $63b7: $9b
    ld [hl], a                                    ; $63b8: $77
    ld d, d                                       ; $63b9: $52
    ld d, d                                       ; $63ba: $52
    ld [$0025], sp                                ; $63bb: $08 $25 $00
    inc d                                         ; $63be: $14
    ld d, d                                       ; $63bf: $52
    ld d, d                                       ; $63c0: $52
    ret nz                                        ; $63c1: $c0

    dec c                                         ; $63c2: $0d
    pop hl                                        ; $63c3: $e1
    halt                                          ; $63c4: $76
    add d                                         ; $63c5: $82
    inc h                                         ; $63c6: $24
    ret nc                                        ; $63c7: $d0

    ld [$77bd], sp                                ; $63c8: $08 $bd $77
    add sp, $51                                   ; $63cb: $e8 $51
    ld hl, $d00c                                  ; $63cd: $21 $0c $d0
    ld [$5777], sp                                ; $63d0: $08 $77 $57
    add hl, de                                    ; $63d3: $19
    ld bc, $0024                                  ; $63d4: $01 $24 $00
    sbc l                                         ; $63d7: $9d
    ld h, e                                       ; $63d8: $63
    sub b                                         ; $63d9: $90
    ld c, [hl]                                    ; $63da: $4e
    jr nz, jr_0cb_640e                            ; $63db: $20 $31

    ld b, b                                       ; $63dd: $40
    inc e                                         ; $63de: $1c
    sub l                                         ; $63df: $95
    ld b, d                                       ; $63e0: $42
    adc b                                         ; $63e1: $88
    dec l                                         ; $63e2: $2d
    jr nz, jr_0cb_63f5                            ; $63e3: $20 $10

    nop                                           ; $63e5: $00
    nop                                           ; $63e6: $00
    nop                                           ; $63e7: $00
    nop                                           ; $63e8: $00
    rst $38                                       ; $63e9: $ff
    ld a, a                                       ; $63ea: $7f
    ld d, c                                       ; $63eb: $51
    nop                                           ; $63ec: $00
    inc b                                         ; $63ed: $04
    nop                                           ; $63ee: $00
    sub e                                         ; $63ef: $93
    dec h                                         ; $63f0: $25
    rst $38                                       ; $63f1: $ff
    ld h, a                                       ; $63f2: $67
    dec a                                         ; $63f3: $3d
    ld a, [bc]                                    ; $63f4: $0a

jr_0cb_63f5:
    add a                                         ; $63f5: $87
    ld [$5bff], sp                                ; $63f6: $08 $ff $5b
    call nc, $ef66                                ; $63f9: $d4 $66 $ef
    ld a, c                                       ; $63fc: $79
    add [hl]                                      ; $63fd: $86
    jr z, @+$01                                   ; $63fe: $28 $ff

    dec [hl]                                      ; $6400: $35
    ld d, l                                       ; $6401: $55
    ld sp, $28ed                                  ; $6402: $31 $ed $28
    add [hl]                                      ; $6405: $86
    jr z, @+$62                                   ; $6406: $28 $60

    ld a, e                                       ; $6408: $7b
    ld h, b                                       ; $6409: $60
    ld c, [hl]                                    ; $640a: $4e
    ld b, b                                       ; $640b: $40
    dec d                                         ; $640c: $15
    add c                                         ; $640d: $81

jr_0cb_640e:
    db $10                                        ; $640e: $10
    cp c                                          ; $640f: $b9
    ld h, [hl]                                    ; $6410: $66
    sub d                                         ; $6411: $92
    add hl, sp                                    ; $6412: $39
    jp z, $0130                                   ; $6413: $ca $30 $01

    inc e                                         ; $6416: $1c
    ld e, c                                       ; $6417: $59
    ld h, a                                       ; $6418: $67
    ld [hl-], a                                   ; $6419: $32
    ld a, [hl-]                                   ; $641a: $3a
    ld l, d                                       ; $641b: $6a
    ld sp, $1c61                                  ; $641c: $31 $61 $1c
    jr nc, @+$54                                  ; $641f: $30 $52

    ld c, e                                       ; $6421: $4b
    dec l                                         ; $6422: $2d
    add e                                         ; $6423: $83
    inc h                                         ; $6424: $24
    nop                                           ; $6425: $00
    inc d                                         ; $6426: $14
    ld bc, $ff00                                  ; $6427: $01 $00 $ff
    ld a, a                                       ; $642a: $7f
    ld c, h                                       ; $642b: $4c
    dec [hl]                                      ; $642c: $35
    rst $00                                       ; $642d: $c7
    jr jr_0cb_646f                                ; $642e: $18 $3f

    add hl, sp                                    ; $6430: $39
    pop de                                        ; $6431: $d1
    ld c, b                                       ; $6432: $48
    adc d                                         ; $6433: $8a
    ld b, h                                       ; $6434: $44
    add d                                         ; $6435: $82
    inc e                                         ; $6436: $1c
    ld e, e                                       ; $6437: $5b
    ld d, e                                       ; $6438: $53
    db $f4                                        ; $6439: $f4
    dec h                                         ; $643a: $25
    rrca                                          ; $643b: $0f
    add hl, bc                                    ; $643c: $09

Jump_0cb_643d:
    ld h, l                                       ; $643d: $65
    ld [$48d4], sp                                ; $643e: $08 $d4 $48
    or a                                          ; $6441: $b7
    ld c, [hl]                                    ; $6442: $4e
    ld c, e                                       ; $6443: $4b
    dec h                                         ; $6444: $25
    ld b, d                                       ; $6445: $42
    inc e                                         ; $6446: $1c
    cp d                                          ; $6447: $ba
    rla                                           ; $6448: $17
    ld [hl], b                                    ; $6449: $70
    ld [hl+], a                                   ; $644a: $22
    ld l, b                                       ; $644b: $68
    dec h                                         ; $644c: $25
    add c                                         ; $644d: $81
    inc h                                         ; $644e: $24
    scf                                           ; $644f: $37
    jr jr_0cb_645e                                ; $6450: $18 $0c

    jr z, jr_0cb_6456                             ; $6452: $28 $02

    inc h                                         ; $6454: $24
    nop                                           ; $6455: $00

jr_0cb_6456:
    nop                                           ; $6456: $00
    cp e                                          ; $6457: $bb
    jr z, jr_0cb_64c8                             ; $6458: $28 $6e

    jr c, jr_0cb_64a2                             ; $645a: $38 $46

    inc [hl]                                      ; $645c: $34
    ld b, c                                       ; $645d: $41

jr_0cb_645e:
    inc c                                         ; $645e: $0c
    inc sp                                        ; $645f: $33
    ld e, l                                       ; $6460: $5d
    call $8658                                    ; $6461: $cd $58 $86
    ld d, h                                       ; $6464: $54
    add b                                         ; $6465: $80
    inc l                                         ; $6466: $2c
    ld bc, $ff00                                  ; $6467: $01 $00 $ff
    ld a, a                                       ; $646a: $7f
    rrca                                          ; $646b: $0f
    ld e, b                                       ; $646c: $58
    inc b                                         ; $646d: $04
    db $10                                        ; $646e: $10

jr_0cb_646f:
    rst $38                                       ; $646f: $ff
    inc bc                                        ; $6470: $03
    ld sp, hl                                     ; $6471: $f9
    ld de, $00ef                                  ; $6472: $11 $ef $00
    rlca                                          ; $6475: $07
    inc b                                         ; $6476: $04
    db $dd                                        ; $6477: $dd
    ld a, a                                       ; $6478: $7f
    inc [hl]                                      ; $6479: $34
    ld c, d                                       ; $647a: $4a
    add sp, $28                                   ; $647b: $e8 $28
    nop                                           ; $647d: $00
    db $10                                        ; $647e: $10
    cp a                                          ; $647f: $bf
    ld l, a                                       ; $6480: $6f
    sbc d                                         ; $6481: $9a
    ld c, [hl]                                    ; $6482: $4e
    pop de                                        ; $6483: $d1
    add hl, sp                                    ; $6484: $39
    add hl, bc                                    ; $6485: $09
    dec h                                         ; $6486: $25
    db $ed                                        ; $6487: $ed
    ld c, c                                       ; $6488: $49
    ei                                            ; $6489: $fb
    ld c, c                                       ; $648a: $49
    sub c                                         ; $648b: $91
    jr z, jr_0cb_6491                             ; $648c: $28 $03

    ld [$539f], sp                                ; $648e: $08 $9f $53

jr_0cb_6491:
    db $d3                                        ; $6491: $d3
    ld a, [hl+]                                   ; $6492: $2a
    xor b                                         ; $6493: $a8
    add hl, de                                    ; $6494: $19
    ld h, d                                       ; $6495: $62
    inc b                                         ; $6496: $04
    cp l                                          ; $6497: $bd
    ld a, a                                       ; $6498: $7f
    sub [hl]                                      ; $6499: $96
    ld e, [hl]                                    ; $649a: $5e
    call Call_000_0549                            ; $649b: $cd $49 $05
    dec [hl]                                      ; $649e: $35
    ld [hl], h                                    ; $649f: $74
    ld e, d                                       ; $64a0: $5a
    ld l, l                                       ; $64a1: $6d

jr_0cb_64a2:
    add hl, sp                                    ; $64a2: $39
    and h                                         ; $64a3: $a4
    inc h                                         ; $64a4: $24
    jr nz, jr_0cb_64bb                            ; $64a5: $20 $14

    ld bc, $ff00                                  ; $64a7: $01 $00 $ff
    ld a, a                                       ; $64aa: $7f
    ld c, h                                       ; $64ab: $4c
    dec [hl]                                      ; $64ac: $35
    ld b, h                                       ; $64ad: $44
    ld [$073e], sp                                ; $64ae: $08 $3e $07
    db $fd                                        ; $64b1: $fd
    add hl, bc                                    ; $64b2: $09
    ld [de], a                                    ; $64b3: $12
    add hl, bc                                    ; $64b4: $09
    ld b, h                                       ; $64b5: $44
    nop                                           ; $64b6: $00
    ld h, c                                       ; $64b7: $61
    inc c                                         ; $64b8: $0c
    push hl                                       ; $64b9: $e5
    ld d, e                                       ; $64ba: $53

jr_0cb_64bb:
    ld bc, $e036                                  ; $64bb: $01 $36 $e0
    inc d                                         ; $64be: $14
    sub l                                         ; $64bf: $95
    nop                                           ; $64c0: $00
    inc l                                         ; $64c1: $2c
    inc d                                         ; $64c2: $14
    inc b                                         ; $64c3: $04
    inc d                                         ; $64c4: $14
    nop                                           ; $64c5: $00
    nop                                           ; $64c6: $00
    ld a, a                                       ; $64c7: $7f

jr_0cb_64c8:
    ld bc, $30f3                                  ; $64c8: $01 $f3 $30

jr_0cb_64cb:
    ld l, e                                       ; $64cb: $6b
    jr nc, jr_0cb_64d1                            ; $64cc: $30 $03

    jr nz, jr_0cb_64cb                            ; $64ce: $20 $fb

    inc b                                         ; $64d0: $04

jr_0cb_64d1:
    sub b                                         ; $64d1: $90
    inc h                                         ; $64d2: $24
    jr z, jr_0cb_64f9                             ; $64d3: $28 $24

    ld [bc], a                                    ; $64d5: $02
    inc d                                         ; $64d6: $14
    di                                            ; $64d7: $f3
    jr nc, jr_0cb_6513                            ; $64d8: $30 $39

    ccf                                           ; $64da: $3f
    ld l, [hl]                                    ; $64db: $6e
    ld hl, $0c20                                  ; $64dc: $21 $20 $0c
    rst $28                                       ; $64df: $ef
    dec a                                         ; $64e0: $3d
    rra                                           ; $64e1: $1f
    nop                                           ; $64e2: $00
    rrca                                          ; $64e3: $0f
    inc a                                         ; $64e4: $3c
    ld h, c                                       ; $64e5: $61
    jr nz, jr_0cb_64e9                            ; $64e6: $20 $01

    nop                                           ; $64e8: $00

jr_0cb_64e9:
    rst $38                                       ; $64e9: $ff
    ld a, a                                       ; $64ea: $7f
    jr nz, @+$22                                  ; $64eb: $20 $20

    add b                                         ; $64ed: $80
    inc b                                         ; $64ee: $04
    or l                                          ; $64ef: $b5
    ld h, e                                       ; $64f0: $63
    inc c                                         ; $64f1: $0c
    ld h, a                                       ; $64f2: $67
    jr nz, jr_0cb_654b                            ; $64f3: $20 $56

    nop                                           ; $64f5: $00
    nop                                           ; $64f6: $00
    ld b, b                                       ; $64f7: $40
    ld d, [hl]                                    ; $64f8: $56

jr_0cb_64f9:
    adc c                                         ; $64f9: $89
    rrca                                          ; $64fa: $0f
    ld h, e                                       ; $64fb: $63
    ld bc, $0420                                  ; $64fc: $01 $20 $04
    ld h, e                                       ; $64ff: $63
    dec b                                         ; $6500: $05
    sbc $07                                       ; $6501: $de $07
    ld [hl], h                                    ; $6503: $74
    nop                                           ; $6504: $00
    jr nz, jr_0cb_652f                            ; $6505: $20 $28

    sbc a                                         ; $6507: $9f
    inc hl                                        ; $6508: $23
    dec [hl]                                      ; $6509: $35
    ld a, [de]                                    ; $650a: $1a
    ld a, [hl+]                                   ; $650b: $2a
    ld hl, $0863                                  ; $650c: $21 $63 $08
    sub e                                         ; $650f: $93
    dec a                                         ; $6510: $3d
    add b                                         ; $6511: $80
    ld h, e                                       ; $6512: $63

jr_0cb_6513:
    and b                                         ; $6513: $a0
    ld hl, $0c60                                  ; $6514: $21 $60 $0c
    ld a, h                                       ; $6517: $7c
    ld [de], a                                    ; $6518: $12
    sub e                                         ; $6519: $93
    dec a                                         ; $651a: $3d
    xor d                                         ; $651b: $aa
    ld b, b                                       ; $651c: $40
    inc hl                                        ; $651d: $23
    inc d                                         ; $651e: $14
    ld a, h                                       ; $651f: $7c
    ld [hl-], a                                   ; $6520: $32
    sub e                                         ; $6521: $93
    ld c, l                                       ; $6522: $4d
    xor d                                         ; $6523: $aa
    ld d, b                                       ; $6524: $50
    inc hl                                        ; $6525: $23
    inc h                                         ; $6526: $24
    ld bc, $ff00                                  ; $6527: $01 $00 $ff
    ld a, a                                       ; $652a: $7f
    ld h, l                                       ; $652b: $65
    add hl, de                                    ; $652c: $19
    inc b                                         ; $652d: $04
    nop                                           ; $652e: $00

jr_0cb_652f:
    cp a                                          ; $652f: $bf
    ld [hl+], a                                   ; $6530: $22
    sub a                                         ; $6531: $97
    dec d                                         ; $6532: $15
    sub c                                         ; $6533: $91
    ld [$0045], sp                                ; $6534: $08 $45 $00
    ld a, a                                       ; $6537: $7f
    inc sp                                        ; $6538: $33
    ld a, d                                       ; $6539: $7a
    ld b, $8e                                     ; $653a: $06 $8e
    dec d                                         ; $653c: $15
    add a                                         ; $653d: $87
    inc e                                         ; $653e: $1c
    or l                                          ; $653f: $b5
    ld a, a                                       ; $6540: $7f
    jr jr_0cb_65a1                                ; $6541: $18 $5e

    ld l, e                                       ; $6543: $6b
    jr nc, jr_0cb_6548                            ; $6544: $30 $02

    jr @-$10                                      ; $6546: $18 $ee

jr_0cb_6548:
    dec a                                         ; $6548: $3d
    cp e                                          ; $6549: $bb
    ld l, a                                       ; $654a: $6f

jr_0cb_654b:
    inc de                                        ; $654b: $13
    ld d, b                                       ; $654c: $50
    add b                                         ; $654d: $80
    ld [$77bd], sp                                ; $654e: $08 $bd $77
    inc [hl]                                      ; $6551: $34
    ld d, d                                       ; $6552: $52
    ld [$0328], a                                 ; $6553: $ea $28 $03
    ld [$3ef2], sp                                ; $6556: $08 $f2 $3e
    push de                                       ; $6559: $d5
    dec h                                         ; $655a: $25
    ld c, h                                       ; $655b: $4c
    dec a                                         ; $655c: $3d
    ld b, l                                       ; $655d: $45
    inc h                                         ; $655e: $24
    dec bc                                        ; $655f: $0b
    ld [hl+], a                                   ; $6560: $22
    rrca                                          ; $6561: $0f
    dec c                                         ; $6562: $0d
    add [hl]                                      ; $6563: $86
    jr z, jr_0cb_658a                             ; $6564: $28 $24

    inc e                                         ; $6566: $1c
    ld bc, $ff00                                  ; $6567: $01 $00 $ff
    ld a, a                                       ; $656a: $7f
    db $e4                                        ; $656b: $e4
    ld [hl], b                                    ; $656c: $70
    nop                                           ; $656d: $00
    db $10                                        ; $656e: $10
    sbc l                                         ; $656f: $9d
    ld e, a                                       ; $6570: $5f
    ld [hl], h                                    ; $6571: $74
    ld a, $6d                                     ; $6572: $3e $6d
    dec h                                         ; $6574: $25
    ld h, l                                       ; $6575: $65
    ld [$0024], sp                                ; $6576: $08 $24 $00
    rra                                           ; $6579: $1f
    inc de                                        ; $657a: $13
    db $f4                                        ; $657b: $f4
    nop                                           ; $657c: $00
    adc c                                         ; $657d: $89
    nop                                           ; $657e: $00
    jp z, $9f2d                                   ; $657f: $ca $2d $9f

    cpl                                           ; $6582: $2f
    ld [hl], e                                    ; $6583: $73
    dec e                                         ; $6584: $1d
    dec h                                         ; $6585: $25
    nop                                           ; $6586: $00
    jr c, @+$61                                   ; $6587: $38 $5f

    ld l, a                                       ; $6589: $6f

jr_0cb_658a:
    ld [hl-], a                                   ; $658a: $32
    jp hl                                         ; $658b: $e9


    inc e                                         ; $658c: $1c
    ld b, l                                       ; $658d: $45
    inc b                                         ; $658e: $04
    ld e, l                                       ; $658f: $5d
    rra                                           ; $6590: $1f
    or $21                                        ; $6591: $f6 $21
    dec hl                                        ; $6593: $2b
    dec h                                         ; $6594: $25
    ld h, b                                       ; $6595: $60
    inc l                                         ; $6596: $2c
    add hl, de                                    ; $6597: $19
    ld l, a                                       ; $6598: $6f
    ldh a, [rKEY1]                                ; $6599: $f0 $4d
    jp hl                                         ; $659b: $e9


    inc [hl]                                      ; $659c: $34
    ld bc, $1118                                  ; $659d: $01 $18 $11
    ld [hl-], a                                   ; $65a0: $32

jr_0cb_65a1:
    dec hl                                        ; $65a1: $2b
    add hl, de                                    ; $65a2: $19
    ld h, l                                       ; $65a3: $65
    inc b                                         ; $65a4: $04
    nop                                           ; $65a5: $00
    nop                                           ; $65a6: $00
    ld bc, $ff00                                  ; $65a7: $01 $00 $ff
    ld a, a                                       ; $65aa: $7f
    rrca                                          ; $65ab: $0f
    ld e, b                                       ; $65ac: $58
    inc b                                         ; $65ad: $04
    db $10                                        ; $65ae: $10
    cp a                                          ; $65af: $bf
    inc bc                                        ; $65b0: $03
    dec sp                                        ; $65b1: $3b
    ld bc, $142b                                  ; $65b2: $01 $2b $14
    adc a                                         ; $65b5: $8f
    ld a, a                                       ; $65b6: $7f
    rst $28                                       ; $65b7: $ef
    ld h, [hl]                                    ; $65b8: $66
    xor b                                         ; $65b9: $a8
    dec a                                         ; $65ba: $3d
    push bc                                       ; $65bb: $c5
    inc e                                         ; $65bc: $1c
    inc hl                                        ; $65bd: $23
    ld [$435f], sp                                ; $65be: $08 $5f $43
    ld d, h                                       ; $65c1: $54
    ld l, $69                                     ; $65c2: $2e $69
    dec e                                         ; $65c4: $1d
    and b                                         ; $65c5: $a0
    inc b                                         ; $65c6: $04
    rst $18                                       ; $65c7: $df
    ld a, [hl]                                    ; $65c8: $7e
    xor [hl]                                      ; $65c9: $ae
    ld l, h                                       ; $65ca: $6c
    dec hl                                        ; $65cb: $2b
    inc d                                         ; $65cc: $14
    adc a                                         ; $65cd: $8f
    ld a, a                                       ; $65ce: $7f
    db $f4                                        ; $65cf: $f4
    dec h                                         ; $65d0: $25
    rst $38                                       ; $65d1: $ff
    ld a, a                                       ; $65d2: $7f
    db $ed                                        ; $65d3: $ed
    dec a                                         ; $65d4: $3d
    nop                                           ; $65d5: $00
    nop                                           ; $65d6: $00
    db $fc                                        ; $65d7: $fc
    ld c, d                                       ; $65d8: $4a
    db $d3                                        ; $65d9: $d3
    dec l                                         ; $65da: $2d
    db $eb                                        ; $65db: $eb
    jr jr_0cb_6601                                ; $65dc: $18 $23

    inc b                                         ; $65de: $04
    db $f4                                        ; $65df: $f4
    add hl, hl                                    ; $65e0: $29
    rrc h                                         ; $65e1: $cb $0c
    inc bc                                        ; $65e3: $03
    nop                                           ; $65e4: $00
    nop                                           ; $65e5: $00
    nop                                           ; $65e6: $00
    ld bc, $ff00                                  ; $65e7: $01 $00 $ff
    ld a, a                                       ; $65ea: $7f
    or [hl]                                       ; $65eb: $b6
    ld d, [hl]                                    ; $65ec: $56
    add sp, $20                                   ; $65ed: $e8 $20
    sub l                                         ; $65ef: $95
    ld a, [hl-]                                   ; $65f0: $3a
    xor [hl]                                      ; $65f1: $ae
    ld d, l                                       ; $65f2: $55
    ld a, [hl+]                                   ; $65f3: $2a
    add hl, hl                                    ; $65f4: $29
    add h                                         ; $65f5: $84
    db $10                                        ; $65f6: $10
    rst $28                                       ; $65f7: $ef
    dec a                                         ; $65f8: $3d
    sub h                                         ; $65f9: $94
    dec e                                         ; $65fa: $1d
    xor a                                         ; $65fb: $af
    db $10                                        ; $65fc: $10
    inc hl                                        ; $65fd: $23
    inc b                                         ; $65fe: $04
    nop                                           ; $65ff: $00
    nop                                           ; $6600: $00

jr_0cb_6601:
    cp [hl]                                       ; $6601: $be
    ld [bc], a                                    ; $6602: $02
    ld [hl], h                                    ; $6603: $74
    add hl, bc                                    ; $6604: $09
    adc l                                         ; $6605: $8d
    inc b                                         ; $6606: $04
    nop                                           ; $6607: $00
    nop                                           ; $6608: $00
    db $fc                                        ; $6609: $fc
    ld d, [hl]                                    ; $660a: $56
    cpl                                           ; $660b: $2f
    dec h                                         ; $660c: $25
    dec h                                         ; $660d: $25
    ld [$02be], sp                                ; $660e: $08 $be $02
    inc h                                         ; $6611: $24
    inc b                                         ; $6612: $04
    ld d, b                                       ; $6613: $50
    nop                                           ; $6614: $00
    cp a                                          ; $6615: $bf
    nop                                           ; $6616: $00
    xor [hl]                                      ; $6617: $ae
    dec e                                         ; $6618: $1d
    rst $00                                       ; $6619: $c7
    jr c, jr_0cb_65a1                             ; $661a: $38 $85

    inc d                                         ; $661c: $14
    add e                                         ; $661d: $83
    inc c                                         ; $661e: $0c
    sbc c                                         ; $661f: $99
    ld a, [hl-]                                   ; $6620: $3a
    or d                                          ; $6621: $b2
    ld d, l                                       ; $6622: $55
    ld l, $29                                     ; $6623: $2e $29
    add a                                         ; $6625: $87
    inc d                                         ; $6626: $14
    ld bc, $ff00                                  ; $6627: $01 $00 $ff
    ld a, a                                       ; $662a: $7f
    xor a                                         ; $662b: $af
    inc e                                         ; $662c: $1c
    ld [bc], a                                    ; $662d: $02
    ld [$76f8], sp                                ; $662e: $08 $f8 $76
    ld sp, $6b5a                                  ; $6631: $31 $5a $6b
    ld b, c                                       ; $6634: $41
    and h                                         ; $6635: $a4
    inc h                                         ; $6636: $24
    sbc [hl]                                      ; $6637: $9e
    ld d, a                                       ; $6638: $57
    ei                                            ; $6639: $fb
    ld bc, $04f0                                  ; $663a: $01 $f0 $04
    inc hl                                        ; $663d: $23
    ld [$3f5c], sp                                ; $663e: $08 $5c $3f
    ld d, e                                       ; $6641: $53
    ld a, $2a                                     ; $6642: $3e $2a
    ld hl, $0843                                  ; $6644: $21 $43 $08
    ld sp, $155a                                  ; $6647: $31 $5a $15
    ld d, a                                       ; $664a: $57
    adc d                                         ; $664b: $8a
    dec h                                         ; $664c: $25
    ld hl, HeaderLogo                             ; $664d: $21 $04 $01
    nop                                           ; $6650: $00
    rra                                           ; $6651: $1f
    ld bc, $080f                                  ; $6652: $01 $0f $08
    daa                                           ; $6655: $27
    db $10                                        ; $6656: $10
    ldh a, [rHDMA5]                               ; $6657: $f0 $55
    add hl, hl                                    ; $6659: $29
    add hl, sp                                    ; $665a: $39
    ld h, e                                       ; $665b: $63
    jr nz, jr_0cb_665e                            ; $665c: $20 $00

jr_0cb_665e:
    inc b                                         ; $665e: $04
    db $fc                                        ; $665f: $fc
    halt                                          ; $6660: $76
    ld [hl], $5a                                  ; $6661: $36 $5a
    ld l, a                                       ; $6663: $6f
    ld b, c                                       ; $6664: $41
    xor b                                         ; $6665: $a8
    inc h                                         ; $6666: $24
    ld bc, $ff00                                  ; $6667: $01 $00 $ff
    ld a, a                                       ; $666a: $7f
    bit 1, l                                      ; $666b: $cb $4d
    cp [hl]                                       ; $666d: $be
    ld [bc], a                                    ; $666e: $02
    ei                                            ; $666f: $fb
    ld a, $f9                                     ; $6670: $3e $f9
    dec e                                         ; $6672: $1d
    ld [hl], b                                    ; $6673: $70
    ld hl, $20e7                                  ; $6674: $21 $e7 $20
    or [hl]                                       ; $6677: $b6
    ld c, d                                       ; $6678: $4a
    sub h                                         ; $6679: $94
    dec e                                         ; $667a: $1d
    xor a                                         ; $667b: $af
    db $10                                        ; $667c: $10
    inc h                                         ; $667d: $24
    inc b                                         ; $667e: $04
    sbc $03                                       ; $667f: $de $03
    jr c, @+$26                                   ; $6681: $38 $24

    ld c, e                                       ; $6683: $4b
    jr jr_0cb_66aa                                ; $6684: $18 $24

    ld [$19b1], sp                                ; $6686: $08 $b1 $19
    ld c, $0d                                     ; $6689: $0e $0d
    add sp, $10                                   ; $668b: $e8 $10
    ld b, d                                       ; $668d: $42
    inc c                                         ; $668e: $0c
    or $6a                                        ; $668f: $f6 $6a
    xor l                                         ; $6691: $ad
    ld c, c                                       ; $6692: $49
    call nz, Call_0cb_4138                        ; $6693: $c4 $38 $41
    inc e                                         ; $6696: $1c
    ld e, h                                       ; $6697: $5c
    ld h, e                                       ; $6698: $63
    ld [de], a                                    ; $6699: $12
    ld a, [hl-]                                   ; $669a: $3a
    ld a, [hl+]                                   ; $669b: $2a
    dec e                                         ; $669c: $1d
    ld b, e                                       ; $669d: $43
    inc b                                         ; $669e: $04
    ld [hl], a                                    ; $669f: $77
    ld a, $75                                     ; $66a0: $3e $75
    add hl, hl                                    ; $66a2: $29
    xor d                                         ; $66a3: $aa
    inc h                                         ; $66a4: $24
    ld h, e                                       ; $66a5: $63
    jr z, jr_0cb_66a9                             ; $66a6: $28 $01

    nop                                           ; $66a8: $00

jr_0cb_66a9:
    rst $38                                       ; $66a9: $ff

jr_0cb_66aa:
    ld a, a                                       ; $66aa: $7f
    and a                                         ; $66ab: $a7
    inc a                                         ; $66ac: $3c
    nop                                           ; $66ad: $00
    inc c                                         ; $66ae: $0c
    cp [hl]                                       ; $66af: $be
    ld d, $74                                     ; $66b0: $16 $74
    add hl, bc                                    ; $66b2: $09
    rlc b                                         ; $66b3: $cb $00
    dec h                                         ; $66b5: $25
    nop                                           ; $66b6: $00
    ld a, [$cd7f]                                 ; $66b7: $fa $7f $cd
    ld d, [hl]                                    ; $66ba: $56
    ld h, a                                       ; $66bb: $67
    dec a                                         ; $66bc: $3d
    jr nz, jr_0cb_66db                            ; $66bd: $20 $1c

    db $dd                                        ; $66bf: $dd
    ld bc, $56f7                                  ; $66c0: $01 $f7 $56
    adc h                                         ; $66c3: $8c
    dec l                                         ; $66c4: $2d
    ld [hl+], a                                   ; $66c5: $22
    ld [$1fde], sp                                ; $66c6: $08 $de $1f
    rst $38                                       ; $66c9: $ff
    ld bc, $0416                                  ; $66ca: $01 $16 $04
    nop                                           ; $66cd: $00
    nop                                           ; $66ce: $00
    ld [hl], h                                    ; $66cf: $74
    add hl, bc                                    ; $66d0: $09
    ld a, c                                       ; $66d1: $79
    ld c, [hl]                                    ; $66d2: $4e
    rrca                                          ; $66d3: $0f
    add hl, hl                                    ; $66d4: $29
    dec b                                         ; $66d5: $05
    inc b                                         ; $66d6: $04
    adc l                                         ; $66d7: $8d
    nop                                           ; $66d8: $00
    ld a, c                                       ; $66d9: $79
    ld c, [hl]                                    ; $66da: $4e

jr_0cb_66db:
    rrca                                          ; $66db: $0f
    add hl, hl                                    ; $66dc: $29
    dec b                                         ; $66dd: $05
    inc b                                         ; $66de: $04
    ld [hl], h                                    ; $66df: $74
    ld bc, $008d                                  ; $66e0: $01 $8d $00
    ld b, a                                       ; $66e3: $47
    nop                                           ; $66e4: $00
    dec h                                         ; $66e5: $25
    nop                                           ; $66e6: $00
    ld bc, $ff00                                  ; $66e7: $01 $00 $ff
    ld a, a                                       ; $66ea: $7f
    add a                                         ; $66eb: $87
    add hl, sp                                    ; $66ec: $39
    nop                                           ; $66ed: $00
    inc c                                         ; $66ee: $0c
    ld d, [hl]                                    ; $66ef: $56
    ld [hl], a                                    ; $66f0: $77
    rst $28                                       ; $66f1: $ef
    ld [hl], l                                    ; $66f2: $75
    ret z                                         ; $66f3: $c8

    jr c, @+$28                                   ; $66f4: $38 $26

    db $10                                        ; $66f6: $10
    db $10                                        ; $66f7: $10
    ld a, d                                       ; $66f8: $7a
    cp l                                          ; $66f9: $bd
    ld [hl], a                                    ; $66fa: $77
    adc $35                                       ; $66fb: $ce $35
    ld h, e                                       ; $66fd: $63
    inc c                                         ; $66fe: $0c
    ld [bc], a                                    ; $66ff: $02

Jump_0cb_6700:
    nop                                           ; $6700: $00
    cp $5a                                        ; $6701: $fe $5a
    ld [hl], l                                    ; $6703: $75
    ld hl, $042a                                  ; $6704: $21 $2a $04
    rst $38                                       ; $6707: $ff
    ld c, [hl]                                    ; $6708: $4e
    ld e, b                                       ; $6709: $58
    ld bc, $5586                                  ; $670a: $01 $86 $55
    add d                                         ; $670d: $82
    jr @-$2c                                      ; $670e: $18 $d2

    ld h, [hl]                                    ; $6710: $66
    adc h                                         ; $6711: $8c
    ld l, c                                       ; $6712: $69
    ld h, l                                       ; $6713: $65

jr_0cb_6714:
    inc l                                         ; $6714: $2c
    nop                                           ; $6715: $00
    nop                                           ; $6716: $00
    rst $38                                       ; $6717: $ff
    inc bc                                        ; $6718: $03
    rst $38                                       ; $6719: $ff
    ld bc, $00d5                                  ; $671a: $01 $d5 $00
    ld c, e                                       ; $671d: $4b
    nop                                           ; $671e: $00
    ld l, a                                       ; $671f: $6f
    ld e, d                                       ; $6720: $5a
    add hl, hl                                    ; $6721: $29
    ld e, l                                       ; $6722: $5d
    ld [hl+], a                                   ; $6723: $22
    jr nz, jr_0cb_6726                            ; $6724: $20 $00

jr_0cb_6726:
    nop                                           ; $6726: $00
    ld bc, $ff00                                  ; $6727: $01 $00 $ff
    ld a, a                                       ; $672a: $7f
    ld c, h                                       ; $672b: $4c
    dec [hl]                                      ; $672c: $35
    ld b, h                                       ; $672d: $44
    ld [$719c], sp                                ; $672e: $08 $9c $71
    call nc, $8a48                                ; $6731: $d4 $48 $8a
    ld b, h                                       ; $6734: $44
    and e                                         ; $6735: $a3
    jr nz, jr_0cb_673c                            ; $6736: $20 $04

    ld hl, $48d3                                  ; $6738: $21 $d3 $48
    adc c                                         ; $673b: $89

jr_0cb_673c:
    ld b, h                                       ; $673c: $44
    and e                                         ; $673d: $a3
    jr nz, jr_0cb_6714                            ; $673e: $20 $d4

    ld c, b                                       ; $6740: $48
    dec b                                         ; $6741: $05
    ld hl, $0c00                                  ; $6742: $21 $00 $0c
    ld b, h                                       ; $6745: $44
    ld [$2b79], sp                                ; $6746: $08 $79 $2b
    inc l                                         ; $6749: $2c
    ld a, [hl+]                                   ; $674a: $2a
    dec b                                         ; $674b: $05
    ld hl, $1c83                                  ; $674c: $21 $83 $1c
    dec b                                         ; $674f: $05
    ld hl, $3eda                                  ; $6750: $21 $da $3e
    ld c, e                                       ; $6753: $4b
    dec h                                         ; $6754: $25
    ld h, e                                       ; $6755: $63
    db $10                                        ; $6756: $10
    db $f4                                        ; $6757: $f4
    ld e, [hl]                                    ; $6758: $5e
    sub a                                         ; $6759: $97
    dec b                                         ; $675a: $05
    ld l, l                                       ; $675b: $6d
    inc b                                         ; $675c: $04
    ld b, d                                       ; $675d: $42
    ld [$6a18], sp                                ; $675e: $08 $18 $6a
    pop de                                        ; $6761: $d1
    ld h, b                                       ; $6762: $60
    adc d                                         ; $6763: $8a
    inc h                                         ; $6764: $24
    add d                                         ; $6765: $82
    inc e                                         ; $6766: $1c
    ld bc, $ff00                                  ; $6767: $01 $00 $ff
    ld a, a                                       ; $676a: $7f
    dec sp                                        ; $676b: $3b
    jr jr_0cb_67af                                ; $676c: $18 $41

    ld [$66f5], sp                                ; $676e: $08 $f5 $66
    rst $28                                       ; $6771: $ef
    ld c, l                                       ; $6772: $4d
    ld h, $29                                     ; $6773: $26 $29
    and d                                         ; $6775: $a2
    inc e                                         ; $6776: $1c
    push de                                       ; $6777: $d5
    ld a, a                                       ; $6778: $7f
    db $e4                                        ; $6779: $e4
    ld e, c                                       ; $677a: $59
    dec b                                         ; $677b: $05
    dec a                                         ; $677c: $3d
    inc bc                                        ; $677d: $03
    inc h                                         ; $677e: $24
    bit 0, c                                      ; $677f: $cb $41
    rst $20                                       ; $6781: $e7
    inc l                                         ; $6782: $2c
    jr nz, @+$0a                                  ; $6783: $20 $08

    nop                                           ; $6785: $00
    nop                                           ; $6786: $00
    ld [hl], l                                    ; $6787: $75
    halt                                          ; $6788: $76
    ld l, a                                       ; $6789: $6f
    ld e, l                                       ; $678a: $5d
    and [hl]                                      ; $678b: $a6
    jr c, jr_0cb_67b0                             ; $678c: $38 $22

    inc l                                         ; $678e: $2c
    ld sp, hl                                     ; $678f: $f9
    ld h, [hl]                                    ; $6790: $66
    di                                            ; $6791: $f3
    ld c, l                                       ; $6792: $4d
    ld a, [hl+]                                   ; $6793: $2a
    add hl, hl                                    ; $6794: $29
    and [hl]                                      ; $6795: $a6
    inc e                                         ; $6796: $1c
    push de                                       ; $6797: $d5
    ld a, a                                       ; $6798: $7f
    ld [$0959], a                                 ; $6799: $ea $59 $09
    dec a                                         ; $679c: $3d
    inc b                                         ; $679d: $04
    inc h                                         ; $679e: $24
    rst $28                                       ; $679f: $ef
    dec a                                         ; $67a0: $3d
    rst $28                                       ; $67a1: $ef
    dec a                                         ; $67a2: $3d
    rst $28                                       ; $67a3: $ef
    dec a                                         ; $67a4: $3d
    rst $28                                       ; $67a5: $ef
    dec a                                         ; $67a6: $3d
    ld bc, $ff00                                  ; $67a7: $01 $00 $ff
    ld a, a                                       ; $67aa: $7f
    dec d                                         ; $67ab: $15
    ld d, h                                       ; $67ac: $54
    dec d                                         ; $67ad: $15
    ld d, h                                       ; $67ae: $54

jr_0cb_67af:
    adc [hl]                                      ; $67af: $8e

jr_0cb_67b0:
    inc de                                        ; $67b0: $13
    inc hl                                        ; $67b1: $23
    ld e, $05                                     ; $67b2: $1e $05
    ld bc, $1462                                  ; $67b4: $01 $62 $14
    inc bc                                        ; $67b7: $03
    halt                                          ; $67b8: $76
    ld [hl], e                                    ; $67b9: $73
    rlca                                          ; $67ba: $07
    jp z, $a615                                   ; $67bb: $ca $15 $a6

    inc b                                         ; $67be: $04
    inc bc                                        ; $67bf: $03
    ld e, $f5                                     ; $67c0: $1e $f5
    ld sp, $08ef                                  ; $67c2: $31 $ef $08
    ld b, [hl]                                    ; $67c5: $46
    nop                                           ; $67c6: $00
    add e                                         ; $67c7: $83
    halt                                          ; $67c8: $76
    ld [hl], e                                    ; $67c9: $73
    rlca                                          ; $67ca: $07
    jp z, $a615                                   ; $67cb: $ca $15 $a6

    inc b                                         ; $67ce: $04
    rlca                                          ; $67cf: $07
    ld [hl], a                                    ; $67d0: $77
    ld [hl], e                                    ; $67d1: $73
    rlca                                          ; $67d2: $07
    jp z, $a615                                   ; $67d3: $ca $15 $a6

    inc b                                         ; $67d6: $04
    dec hl                                        ; $67d7: $2b
    rlca                                          ; $67d8: $07
    ret nz                                        ; $67d9: $c0

    ld de, $00a2                                  ; $67da: $11 $a2 $00
    jr nz, jr_0cb_67eb                            ; $67dd: $20 $0c

    inc hl                                        ; $67df: $23
    ld e, $57                                     ; $67e0: $1e $57
    ld l, a                                       ; $67e2: $6f
    cpl                                           ; $67e3: $2f
    ld c, d                                       ; $67e4: $4a
    add h                                         ; $67e5: $84
    jr jr_0cb_67e9                                ; $67e6: $18 $01

    nop                                           ; $67e8: $00

jr_0cb_67e9:
    rst $38                                       ; $67e9: $ff
    ld a, a                                       ; $67ea: $7f

jr_0cb_67eb:
    ld l, [hl]                                    ; $67eb: $6e
    ld sp, $0c64                                  ; $67ec: $31 $64 $0c
    sbc [hl]                                      ; $67ef: $9e
    ld e, e                                       ; $67f0: $5b
    cp d                                          ; $67f1: $ba
    ld [hl-], a                                   ; $67f2: $32
    sub b                                         ; $67f3: $90
    dec e                                         ; $67f4: $1d
    ld b, [hl]                                    ; $67f5: $46

jr_0cb_67f6:
    inc b                                         ; $67f6: $04
    rst $38                                       ; $67f7: $ff
    ld [bc], a                                    ; $67f8: $02
    dec e                                         ; $67f9: $1d
    dec b                                         ; $67fa: $05
    sub d                                         ; $67fb: $92
    ld [$0467], sp                                ; $67fc: $08 $67 $04
    dec a                                         ; $67ff: $3d
    ld d, a                                       ; $6800: $57
    or $61                                        ; $6801: $f6 $61
    ld c, a                                       ; $6803: $4f
    ld d, b                                       ; $6804: $50
    ld [hl+], a                                   ; $6805: $22
    db $10                                        ; $6806: $10
    cp l                                          ; $6807: $bd
    ld [hl], a                                    ; $6808: $77
    or l                                          ; $6809: $b5
    ld d, [hl]                                    ; $680a: $56
    ld c, c                                       ; $680b: $49
    dec h                                         ; $680c: $25
    ld b, e                                       ; $680d: $43
    ld [$044f], sp                                ; $680e: $08 $4f $04
    sbc h                                         ; $6811: $9c
    ld [hl], e                                    ; $6812: $73
    db $ec                                        ; $6813: $ec
    dec a                                         ; $6814: $3d
    jr nz, jr_0cb_681f                            ; $6815: $20 $08

    xor a                                         ; $6817: $af
    ld a, [hl]                                    ; $6818: $7e
    xor h                                         ; $6819: $ac
    ld l, c                                       ; $681a: $69
    add hl, hl                                    ; $681b: $29
    ld d, c                                       ; $681c: $51
    and h                                         ; $681d: $a4
    inc l                                         ; $681e: $2c

jr_0cb_681f:
    ret z                                         ; $681f: $c8

    ld h, c                                       ; $6820: $61
    and $50                                       ; $6821: $e6 $50
    and l                                         ; $6823: $a5
    ld b, b                                       ; $6824: $40
    jr nz, jr_0cb_6843                            ; $6825: $20 $1c

    ld bc, $ff00                                  ; $6827: $01 $00 $ff
    ld a, a                                       ; $682a: $7f
    ld h, l                                       ; $682b: $65
    add hl, de                                    ; $682c: $19
    inc b                                         ; $682d: $04
    nop                                           ; $682e: $00
    cp a                                          ; $682f: $bf
    ld [hl+], a                                   ; $6830: $22
    sub a                                         ; $6831: $97
    dec d                                         ; $6832: $15
    sub c                                         ; $6833: $91
    ld [$0045], sp                                ; $6834: $08 $45 $00
    rst $38                                       ; $6837: $ff
    ld h, e                                       ; $6838: $63
    ld [de], a                                    ; $6839: $12
    ld [hl], $e8                                  ; $683a: $36 $e8
    inc e                                         ; $683c: $1c
    ld hl, $0004                                  ; $683d: $21 $04 $00
    ld d, e                                       ; $6840: $53
    pop bc                                        ; $6841: $c1
    dec a                                         ; $6842: $3d

jr_0cb_6843:
    db $e3                                        ; $6843: $e3
    inc [hl]                                      ; $6844: $34
    ld b, b                                       ; $6845: $40
    jr z, @+$01                                   ; $6846: $28 $ff

    cpl                                           ; $6848: $2f
    ld a, l                                       ; $6849: $7d
    ld [hl-], a                                   ; $684a: $32
    dec d                                         ; $684b: $15
    ld c, c                                       ; $684c: $49
    adc l                                         ; $684d: $8d
    jr c, @+$01                                   ; $684e: $38 $ff

    rla                                           ; $6850: $17
    ld a, l                                       ; $6851: $7d
    ld a, [hl+]                                   ; $6852: $2a
    dec d                                         ; $6853: $15
    ld b, c                                       ; $6854: $41
    adc l                                         ; $6855: $8d
    jr nc, jr_0cb_67f6                            ; $6856: $30 $9e

    rlca                                          ; $6858: $07
    ld sp, hl                                     ; $6859: $f9
    add hl, de                                    ; $685a: $19
    sub c                                         ; $685b: $91
    jr nc, @+$0b                                  ; $685c: $30 $09

    jr nz, jr_0cb_67f6                            ; $685e: $20 $96

    ld [bc], a                                    ; $6860: $02
    pop af                                        ; $6861: $f1
    nop                                           ; $6862: $00
    add hl, bc                                    ; $6863: $09
    db $10                                        ; $6864: $10
    ld bc, $0100                                  ; $6865: $01 $00 $01
    nop                                           ; $6868: $00
    rst $38                                       ; $6869: $ff
    ld a, a                                       ; $686a: $7f
    ld l, [hl]                                    ; $686b: $6e

jr_0cb_686c:
    ld sp, $0843                                  ; $686c: $31 $43 $08
    rst $38                                       ; $686f: $ff
    ld a, a                                       ; $6870: $7f
    dec [hl]                                      ; $6871: $35
    ld b, [hl]                                    ; $6872: $46
    inc c                                         ; $6873: $0c
    dec h                                         ; $6874: $25
    inc bc                                        ; $6875: $03
    inc b                                         ; $6876: $04
    sbc a                                         ; $6877: $9f
    ld [bc], a                                    ; $6878: $02
    ld a, a                                       ; $6879: $7f
    nop                                           ; $687a: $00
    inc d                                         ; $687b: $14
    nop                                           ; $687c: $00
    ld b, $00                                     ; $687d: $06 $00
    rst $38                                       ; $687f: $ff
    ld a, a                                       ; $6880: $7f
    rst $28                                       ; $6881: $ef
    dec a                                         ; $6882: $3d
    ld h, $29                                     ; $6883: $26 $29
    ld bc, $3700                                  ; $6885: $01 $00 $37
    ld [hl], a                                    ; $6888: $77
    ld c, $52                                     ; $6889: $0e $52

jr_0cb_688b:
    ld c, b                                       ; $688b: $48
    add hl, sp                                    ; $688c: $39
    ld b, c                                       ; $688d: $41
    jr jr_0cb_688b                                ; $688e: $18 $fb

    ld l, e                                       ; $6890: $6b
    ld l, [hl]                                    ; $6891: $6e
    ld a, $a8                                     ; $6892: $3e $a8
    ld hl, $0443                                  ; $6894: $21 $43 $04
    ld a, e                                       ; $6897: $7b
    ld l, e                                       ; $6898: $6b
    xor $3d                                       ; $6899: $ee $3d
    ld a, [hl+]                                   ; $689b: $2a
    ld hl, $0c85                                  ; $689c: $21 $85 $0c
    xor $3d                                       ; $689f: $ee $3d
    ld a, [hl+]                                   ; $68a1: $2a
    ld hl, $0c85                                  ; $68a2: $21 $85 $0c
    ld bc, $0100                                  ; $68a5: $01 $00 $01
    nop                                           ; $68a8: $00
    rst $38                                       ; $68a9: $ff
    ld a, a                                       ; $68aa: $7f
    ld l, l                                       ; $68ab: $6d
    ld [hl], d                                    ; $68ac: $72
    ld bc, $d820                                  ; $68ad: $01 $20 $d8
    ld [hl], d                                    ; $68b0: $72
    ld sp, $6a5a                                  ; $68b1: $31 $5a $6a
    dec a                                         ; $68b4: $3d
    jp Jump_000_3124                              ; $68b5: $c3 $24 $31


    ld e, d                                       ; $68b8: $5a
    cp l                                          ; $68b9: $bd
    ld [hl], a                                    ; $68ba: $77
    call Call_000_0039                            ; $68bb: $cd $39 $00
    nop                                           ; $68be: $00
    ld sp, $de5a                                  ; $68bf: $31 $5a $de
    ld [hl+], a                                   ; $68c2: $22
    inc de                                        ; $68c3: $13
    dec c                                         ; $68c4: $0d
    ld [hl+], a                                   ; $68c5: $22
    nop                                           ; $68c6: $00
    ld sp, $7f5a                                  ; $68c7: $31 $5a $7f
    inc bc                                        ; $68ca: $03
    ld a, b                                       ; $68cb: $78
    nop                                           ; $68cc: $00
    inc bc                                        ; $68cd: $03
    nop                                           ; $68ce: $00
    call c, Call_000_3162                         ; $68cf: $dc $62 $31
    ld e, d                                       ; $68d2: $5a
    ld l, [hl]                                    ; $68d3: $6e
    dec l                                         ; $68d4: $2d
    rst $00                                       ; $68d5: $c7
    inc d                                         ; $68d6: $14
    ld e, a                                       ; $68d7: $5f
    rra                                           ; $68d8: $1f
    add hl, de                                    ; $68d9: $19
    ld a, [de]                                    ; $68da: $1a
    db $d3                                        ; $68db: $d3
    jr z, jr_0cb_6943                             ; $68dc: $28 $65

    jr jr_0cb_686c                                ; $68de: $18 $8c

    ld d, c                                       ; $68e0: $51

jr_0cb_68e1:
    ld l, c                                       ; $68e1: $69
    ld b, c                                       ; $68e2: $41
    add d                                         ; $68e3: $82
    inc h                                         ; $68e4: $24
    ld b, b                                       ; $68e5: $40
    inc c                                         ; $68e6: $0c
    ld bc, $ff00                                  ; $68e7: $01 $00 $ff
    ld a, a                                       ; $68ea: $7f
    ld l, l                                       ; $68eb: $6d
    ld [hl], d                                    ; $68ec: $72
    ld bc, $1a20                                  ; $68ed: $01 $20 $1a
    ld [hl], a                                    ; $68f0: $77
    rst $08                                       ; $68f1: $cf
    ld d, c                                       ; $68f2: $51
    jp z, Jump_000_2330                           ; $68f3: $ca $30 $23

    db $10                                        ; $68f6: $10
    cp $7a                                        ; $68f7: $fe $7a
    ld h, $02                                     ; $68f9: $26 $02
    db $fc                                        ; $68fb: $fc
    ld [bc], a                                    ; $68fc: $02
    ld h, a                                       ; $68fd: $67
    inc h                                         ; $68fe: $24

jr_0cb_68ff:
    cp l                                          ; $68ff: $bd
    ld [hl], a                                    ; $6900: $77
    ld [hl], b                                    ; $6901: $70
    ld [hl-], a                                   ; $6902: $32
    ld l, d                                       ; $6903: $6a
    dec c                                         ; $6904: $0d
    and l                                         ; $6905: $a5
    ld [$6388], sp                                ; $6906: $08 $88 $63
    ld h, $46                                     ; $6909: $26 $46
    ld b, e                                       ; $690b: $43
    add hl, hl                                    ; $690c: $29
    ld b, c                                       ; $690d: $41
    inc c                                         ; $690e: $0c
    cp a                                          ; $690f: $bf
    ld b, e                                       ; $6910: $43
    sub a                                         ; $6911: $97
    dec d                                         ; $6912: $15
    sub a                                         ; $6913: $97
    jr nz, jr_0cb_68e1                            ; $6914: $20 $cb

    inc [hl]                                      ; $6916: $34
    cp a                                          ; $6917: $bf
    ld [hl+], a                                   ; $6918: $22
    sub a                                         ; $6919: $97
    dec d                                         ; $691a: $15
    adc a                                         ; $691b: $8f
    jr @+$49                                      ; $691c: $18 $47

    db $10                                        ; $691e: $10
    or a                                          ; $691f: $b7
    ld bc, $008f                                  ; $6920: $01 $8f $00
    rlca                                          ; $6923: $07
    nop                                           ; $6924: $00
    nop                                           ; $6925: $00
    nop                                           ; $6926: $00
    ld bc, $ff00                                  ; $6927: $01 $00 $ff
    ld a, a                                       ; $692a: $7f
    dec d                                         ; $692b: $15
    ld d, h                                       ; $692c: $54
    ld bc, $4e18                                  ; $692d: $01 $18 $4e
    ld l, [hl]                                    ; $6930: $6e
    ld c, c                                       ; $6931: $49
    ld c, c                                       ; $6932: $49
    and l                                         ; $6933: $a5
    jr nc, @+$03                                  ; $6934: $30 $01

    jr jr_0cb_69b7                                ; $6936: $18 $7f

    ld d, [hl]                                    ; $6938: $56
    rst $10                                       ; $6939: $d7
    ld b, l                                       ; $693a: $45
    ld c, $31                                     ; $693b: $0e $31
    ld h, [hl]                                    ; $693d: $66
    jr nz, jr_0cb_68ff                            ; $693e: $20 $bf

    inc bc                                        ; $6940: $03
    cp b                                          ; $6941: $b8
    dec e                                         ; $6942: $1d

jr_0cb_6943:
    jp z, $0110                                   ; $6943: $ca $10 $01

    inc c                                         ; $6946: $0c
    dec a                                         ; $6947: $3d
    ld b, e                                       ; $6948: $43
    db $db                                        ; $6949: $db
    dec c                                         ; $694a: $0d
    ld l, $0d                                     ; $694b: $2e $0d
    ld [hl+], a                                   ; $694d: $22
    nop                                           ; $694e: $00
    ld a, e                                       ; $694f: $7b
    ld a, [hl]                                    ; $6950: $7e
    db $d3                                        ; $6951: $d3
    ld c, l                                       ; $6952: $4d
    ld a, [bc]                                    ; $6953: $0a
    add hl, sp                                    ; $6954: $39
    ld h, h                                       ; $6955: $64
    jr z, jr_0cb_69cf                             ; $6956: $28 $77

    dec a                                         ; $6958: $3d
    rst $08                                       ; $6959: $cf
    inc l                                         ; $695a: $2c
    ld b, $18                                     ; $695b: $06 $18
    nop                                           ; $695d: $00
    ld [$630d], sp                                ; $695e: $08 $0d $63
    ld [c], a                                     ; $6961: $e2
    dec a                                         ; $6962: $3d
    ld bc, $6021                                  ; $6963: $01 $21 $60
    db $10                                        ; $6966: $10
    ld bc, $ff00                                  ; $6967: $01 $00 $ff
    ld a, a                                       ; $696a: $7f
    ld h, l                                       ; $696b: $65
    add hl, de                                    ; $696c: $19
    inc b                                         ; $696d: $04
    nop                                           ; $696e: $00
    sbc $7f                                       ; $696f: $de $7f
    ld [hl], c                                    ; $6971: $71
    ld e, d                                       ; $6972: $5a
    ld c, b                                       ; $6973: $48
    add hl, sp                                    ; $6974: $39
    and e                                         ; $6975: $a3
    inc e                                         ; $6976: $1c
    ld a, c                                       ; $6977: $79
    ld l, $f2                                     ; $6978: $2e $f2
    inc l                                         ; $697a: $2c
    inc c                                         ; $697b: $0c
    inc a                                         ; $697c: $3c
    ld b, l                                       ; $697d: $45
    inc e                                         ; $697e: $1c
    or c                                          ; $697f: $b1
    dec c                                         ; $6980: $0d
    xor d                                         ; $6981: $aa
    inc d                                         ; $6982: $14
    inc b                                         ; $6983: $04
    inc e                                         ; $6984: $1c
    nop                                           ; $6985: $00
    nop                                           ; $6986: $00
    sbc l                                         ; $6987: $9d
    dec sp                                        ; $6988: $3b
    inc d                                         ; $6989: $14
    ld a, [hl-]                                   ; $698a: $3a
    ld l, b                                       ; $698b: $68
    dec [hl]                                      ; $698c: $35
    and e                                         ; $698d: $a3
    jr z, jr_0cb_69da                             ; $698e: $28 $4a

    inc [hl]                                      ; $6990: $34
    jp c, $ee42                                   ; $6991: $da $42 $ee

    inc c                                         ; $6994: $0c
    inc hl                                        ; $6995: $23
    nop                                           ; $6996: $00
    ld l, h                                       ; $6997: $6c
    inc a                                         ; $6998: $3c
    ld a, a                                       ; $6999: $7f
    ld b, a                                       ; $699a: $47
    sub e                                         ; $699b: $93
    dec e                                         ; $699c: $1d
    add a                                         ; $699d: $87
    ld [$2c08], sp                                ; $699e: $08 $08 $2c
    ld [hl], a                                    ; $69a1: $77
    ld [hl], $8b                                  ; $69a2: $36 $8b
    inc b                                         ; $69a4: $04
    ld bc, $0100                                  ; $69a5: $01 $00 $01
    nop                                           ; $69a8: $00
    rst $38                                       ; $69a9: $ff
    ld a, a                                       ; $69aa: $7f
    ld h, l                                       ; $69ab: $65
    add hl, de                                    ; $69ac: $19
    inc b                                         ; $69ad: $04
    nop                                           ; $69ae: $00
    ld a, [hl]                                    ; $69af: $7e
    inc bc                                        ; $69b0: $03
    inc e                                         ; $69b1: $1c
    inc d                                         ; $69b2: $14
    ld c, $30                                     ; $69b3: $0e $30
    inc hl                                        ; $69b5: $23
    inc d                                         ; $69b6: $14

jr_0cb_69b7:
    ld a, d                                       ; $69b7: $7a
    inc bc                                        ; $69b8: $03
    db $10                                        ; $69b9: $10
    ld [hl+], a                                   ; $69ba: $22
    adc e                                         ; $69bb: $8b
    ld b, b                                       ; $69bc: $40
    ld hl, $ff14                                  ; $69bd: $21 $14 $ff
    ld b, [hl]                                    ; $69c0: $46
    rla                                           ; $69c1: $17
    ld e, $2e                                     ; $69c2: $1e $2e
    dec d                                         ; $69c4: $15
    ld h, l                                       ; $69c5: $65
    nop                                           ; $69c6: $00
    inc [hl]                                      ; $69c7: $34
    ld e, [hl]                                    ; $69c8: $5e
    rst $28                                       ; $69c9: $ef
    ccf                                           ; $69ca: $3f
    add l                                         ; $69cb: $85
    ld sp, $1060                                  ; $69cc: $31 $60 $10

jr_0cb_69cf:
    sbc [hl]                                      ; $69cf: $9e
    ld h, a                                       ; $69d0: $67
    scf                                           ; $69d1: $37
    ld c, [hl]                                    ; $69d2: $4e
    adc [hl]                                      ; $69d3: $8e
    add hl, sp                                    ; $69d4: $39
    ret                                           ; $69d5: $c9


    db $10                                        ; $69d6: $10
    sbc d                                         ; $69d7: $9a
    ld [hl], a                                    ; $69d8: $77
    inc sp                                        ; $69d9: $33

jr_0cb_69da:
    ld e, [hl]                                    ; $69da: $5e
    ld c, $49                                     ; $69db: $0e $49

jr_0cb_69dd:
    ld c, c                                       ; $69dd: $49
    jr nc, @-$10                                  ; $69de: $30 $ee

    ld c, l                                       ; $69e0: $4d
    add hl, hl                                    ; $69e1: $29
    ld b, l                                       ; $69e2: $45
    inc b                                         ; $69e3: $04
    jr nc, jr_0cb_69e7                            ; $69e4: $30 $01

    inc e                                         ; $69e6: $1c

jr_0cb_69e7:
    ld bc, $ff00                                  ; $69e7: $01 $00 $ff
    ld a, a                                       ; $69ea: $7f
    ld l, l                                       ; $69eb: $6d
    ld [hl], d                                    ; $69ec: $72
    ld bc, $7f20                                  ; $69ed: $01 $20 $7f
    inc bc                                        ; $69f0: $03
    call c, $b201                                 ; $69f1: $dc $01 $b2
    inc b                                         ; $69f4: $04
    rlca                                          ; $69f5: $07
    db $10                                        ; $69f6: $10
    cp [hl]                                       ; $69f7: $be
    ld d, a                                       ; $69f8: $57
    jr nz, jr_0cb_6a6d                            ; $69f9: $20 $72

    ld h, b                                       ; $69fb: $60
    ld de, $0081                                  ; $69fc: $11 $81 $00
    cp d                                          ; $69ff: $ba
    ld a, e                                       ; $6a00: $7b
    adc e                                         ; $6a01: $8b
    ld c, [hl]                                    ; $6a02: $4e
    inc hl                                        ; $6a03: $23
    ld hl, $1461                                  ; $6a04: $21 $61 $14
    sbc a                                         ; $6a07: $9f
    ld l, a                                       ; $6a08: $6f
    dec [hl]                                      ; $6a09: $35
    ld d, [hl]                                    ; $6a0a: $56
    dec c                                         ; $6a0b: $0d
    dec a                                         ; $6a0c: $3d
    ld h, h                                       ; $6a0d: $64
    inc h                                         ; $6a0e: $24
    rra                                           ; $6a0f: $1f
    ld e, a                                       ; $6a10: $5f
    or a                                          ; $6a11: $b7
    dec a                                         ; $6a12: $3d
    adc l                                         ; $6a13: $8d
    inc l                                         ; $6a14: $2c
    inc b                                         ; $6a15: $04
    inc d                                         ; $6a16: $14
    sbc a                                         ; $6a17: $9f
    ld e, a                                       ; $6a18: $5f
    ld [hl], a                                    ; $6a19: $77
    ld b, [hl]                                    ; $6a1a: $46
    dec l                                         ; $6a1b: $2d
    dec l                                         ; $6a1c: $2d
    ld h, h                                       ; $6a1d: $64
    inc d                                         ; $6a1e: $14
    halt                                          ; $6a1f: $76
    ld a, [hl-]                                   ; $6a20: $3a
    ld c, [hl]                                    ; $6a21: $4e
    ld hl, $14c8                                  ; $6a22: $21 $c8 $14
    ld hl, $f004                                  ; $6a25: $21 $04 $f0
    inc bc                                        ; $6a28: $03
    db $fc                                        ; $6a29: $fc
    ld [bc], a                                    ; $6a2a: $02
    ld b, b                                       ; $6a2b: $40
    nop                                           ; $6a2c: $00
    ld bc, $0310                                  ; $6a2d: $01 $10 $03
    nop                                           ; $6a30: $00
    inc b                                         ; $6a31: $04
    inc bc                                        ; $6a32: $03
    add hl, bc                                    ; $6a33: $09
    ld b, $08                                     ; $6a34: $06 $08
    inc de                                        ; $6a36: $13
    inc c                                         ; $6a37: $0c
    ld d, $09                                     ; $6a38: $16 $09
    db $10                                        ; $6a3a: $10
    jr jr_0cb_69dd                                ; $6a3b: $18 $a0

    ld b, b                                       ; $6a3d: $40
    nop                                           ; $6a3e: $00
    ld bc, $f0f0                                  ; $6a3f: $01 $f0 $f0
    ld [$04f8], sp                                ; $6a42: $08 $f8 $04
    cp b                                          ; $6a45: $b8
    ld b, h                                       ; $6a46: $44
    jr nz, @+$1a                                  ; $6a47: $20 $18

    add b                                         ; $6a49: $80
    ld b, $60                                     ; $6a4a: $06 $60
    inc e                                         ; $6a4c: $1c
    inc e                                         ; $6a4d: $1c
    ld [hl+], a                                   ; $6a4e: $22
    inc d                                         ; $6a4f: $14
    ld a, [hl+]                                   ; $6a50: $2a
    ld [$0036], sp                                ; $6a51: $08 $36 $00
    nop                                           ; $6a54: $00
    inc e                                         ; $6a55: $1c
    nop                                           ; $6a56: $00
    nop                                           ; $6a57: $00

jr_0cb_6a58:
    dec d                                         ; $6a58: $15
    ld a, [bc]                                    ; $6a59: $0a
    db $10                                        ; $6a5a: $10
    rrca                                          ; $6a5b: $0f
    ld bc, $0f10                                  ; $6a5c: $01 $10 $0f
    ld [$0407], sp                                ; $6a5f: $08 $07 $04
    inc bc                                        ; $6a62: $03
    inc bc                                        ; $6a63: $03
    ld c, e                                       ; $6a64: $4b
    stop                                          ; $6a65: $10 $00
    ld d, b                                       ; $6a67: $50
    xor h                                         ; $6a68: $ac
    ld [$10f4], sp                                ; $6a69: $08 $f4 $10
    db $ec                                        ; $6a6c: $ec

jr_0cb_6a6d:
    nop                                           ; $6a6d: $00
    ld hl, sp+$30                                 ; $6a6e: $f8 $30
    nop                                           ; $6a70: $00
    ldh a, [rLY]                                  ; $6a71: $f0 $44

jr_0cb_6a73:
    nop                                           ; $6a73: $00
    ld e, l                                       ; $6a74: $5d
    db $10                                        ; $6a75: $10
    ld de, $0011                                  ; $6a76: $11 $11 $00
    nop                                           ; $6a79: $00
    nop                                           ; $6a7a: $00
    ld b, h                                       ; $6a7b: $44
    ld b, h                                       ; $6a7c: $44
    xor d                                         ; $6a7d: $aa
    xor d                                         ; $6a7e: $aa
    ld d, l                                       ; $6a7f: $55
    ld d, l                                       ; $6a80: $55
    cp e                                          ; $6a81: $bb
    cp e                                          ; $6a82: $bb
    jr nz, jr_0cb_6a73                            ; $6a83: $20 $ee

    xor $10                                       ; $6a85: $ee $10
    db $10                                        ; $6a87: $10
    inc e                                         ; $6a88: $1c
    ld e, h                                       ; $6a89: $5c
    ld h, d                                       ; $6a8a: $62
    sub h                                         ; $6a8b: $94
    xor d                                         ; $6a8c: $aa
    ld [bc], a                                    ; $6a8d: $02
    ld c, c                                       ; $6a8e: $49
    ld [hl], a                                    ; $6a8f: $77
    db $e3                                        ; $6a90: $e3
    rst $38                                       ; $6a91: $ff
    xor $ee                                       ; $6a92: $ee $ee
    ld b, b                                       ; $6a94: $40
    jr jr_0cb_6adf                                ; $6a95: $18 $48

    inc b                                         ; $6a97: $04
    ld b, a                                       ; $6a98: $47
    xor h                                         ; $6a99: $ac
    xor e                                         ; $6a9a: $ab
    ld d, a                                       ; $6a9b: $57
    ld d, h                                       ; $6a9c: $54
    jr nz, @+$0a                                  ; $6a9d: $20 $08

    ld d, b                                       ; $6a9f: $50
    xor h                                         ; $6aa0: $ac
    nop                                           ; $6aa1: $00
    add hl, bc                                    ; $6aa2: $09
    push af                                       ; $6aa3: $f5
    db $10                                        ; $6aa4: $10
    db $ec                                        ; $6aa5: $ec
    ld bc, $0af9                                  ; $6aa6: $01 $f9 $0a
    ld a, [$b560]                                 ; $6aa9: $fa $60 $b5
    jr nc, @-$7e                                  ; $6aac: $30 $80

    ld bc, $e398                                  ; $6aae: $01 $98 $e3
    rst $38                                       ; $6ab1: $ff
    db $dd                                        ; $6ab2: $dd
    db $e3                                        ; $6ab3: $e3
    push de                                       ; $6ab4: $d5
    db $10                                        ; $6ab5: $10
    db $eb                                        ; $6ab6: $eb
    ret                                           ; $6ab7: $c9


    rst $30                                       ; $6ab8: $f7
    jr nz, jr_0cb_6ad3                            ; $6ab9: $20 $18

    xor $ee                                       ; $6abb: $ee $ee
    rst $38                                       ; $6abd: $ff
    rst $38                                       ; $6abe: $ff
    nop                                           ; $6abf: $00
    cp e                                          ; $6ac0: $bb
    cp e                                          ; $6ac1: $bb
    ld d, l                                       ; $6ac2: $55
    ld d, l                                       ; $6ac3: $55
    xor d                                         ; $6ac4: $aa
    xor d                                         ; $6ac5: $aa
    ld b, h                                       ; $6ac6: $44
    ld b, h                                       ; $6ac7: $44
    ret nz                                        ; $6ac8: $c0

    ld a, h                                       ; $6ac9: $7c
    ld [$18e2], sp                                ; $6aca: $08 $e2 $18
    ld [bc], a                                    ; $6acd: $02
    nop                                           ; $6ace: $00
    rlca                                          ; $6acf: $07
    nop                                           ; $6ad0: $00
    daa                                           ; $6ad1: $27
    nop                                           ; $6ad2: $00

jr_0cb_6ad3:
    ld d, d                                       ; $6ad3: $52
    rrca                                          ; $6ad4: $0f
    rst $08                                       ; $6ad5: $cf
    jr nc, jr_0cb_6a58                            ; $6ad6: $30 $80

    inc b                                         ; $6ad8: $04
    db $10                                        ; $6ad9: $10
    ret nz                                        ; $6ada: $c0

jr_0cb_6adb:
    nop                                           ; $6adb: $00
    ld d, e                                       ; $6adc: $53
    jr nz, jr_0cb_6adb                            ; $6add: $20 $fc

jr_0cb_6adf:
    nop                                           ; $6adf: $00
    db $fc                                        ; $6ae0: $fc
    ei                                            ; $6ae1: $fb
    ld sp, hl                                     ; $6ae2: $f9
    or $f3                                        ; $6ae3: $f6 $f3
    db $ec                                        ; $6ae5: $ec
    or $e9                                        ; $6ae6: $f6 $e9
    add b                                         ; $6ae8: $80
    ld h, e                                       ; $6ae9: $63
    jr @-$3f                                      ; $6aea: $18 $bf

    ld e, a                                       ; $6aec: $5f
    rrca                                          ; $6aed: $0f
    rst $38                                       ; $6aee: $ff
    rst $30                                       ; $6aef: $f7
    rrca                                          ; $6af0: $0f
    ei                                            ; $6af1: $fb
    nop                                           ; $6af2: $00
    rlca                                          ; $6af3: $07
    cp e                                          ; $6af4: $bb
    ld b, a                                       ; $6af5: $47
    inc [hl]                                      ; $6af6: $34
    dec bc                                        ; $6af7: $0b
    or h                                          ; $6af8: $b4
    dec bc                                        ; $6af9: $0b
    inc e                                         ; $6afa: $1c
    nop                                           ; $6afb: $00
    inc bc                                        ; $6afc: $03
    ld e, b                                       ; $6afd: $58
    rlca                                          ; $6afe: $07
    dec c                                         ; $6aff: $0d
    ld [bc], a                                    ; $6b00: $02
    ld a, a                                       ; $6b01: $7f
    nop                                           ; $6b02: $00
    call nz, Call_000_3b00                        ; $6b03: $c4 $00 $3b
    add e                                         ; $6b06: $83
    ld a, h                                       ; $6b07: $7c
    ld l, h                                       ; $6b08: $6c
    sub b                                         ; $6b09: $90
    ld sp, $f0c0                                  ; $6b0a: $31 $c0 $f0
    nop                                           ; $6b0d: $00
    nop                                           ; $6b0e: $00
    ld h, h                                       ; $6b0f: $64
    add b                                         ; $6b10: $80
    ldh a, [rP1]                                  ; $6b11: $f0 $00
    sbc b                                         ; $6b13: $98
    ld h, b                                       ; $6b14: $60
    ld c, $02                                     ; $6b15: $0e $02
    ldh a, [$84]                                  ; $6b17: $f0 $84
    ld a, b                                       ; $6b19: $78
    inc de                                        ; $6b1a: $13
    nop                                           ; $6b1b: $00
    ld b, e                                       ; $6b1c: $43
    ld b, e                                       ; $6b1d: $43
    ld bc, $0082                                  ; $6b1e: $01 $82 $00
    nop                                           ; $6b21: $00
    ld a, b                                       ; $6b22: $78
    nop                                           ; $6b23: $00
    db $ec                                        ; $6b24: $ec
    db $10                                        ; $6b25: $10
    adc [hl]                                      ; $6b26: $8e
    ld [hl], b                                    ; $6b27: $70
    jp nz, Jump_000_3c00                          ; $6b28: $c2 $00 $3c

    push af                                       ; $6b2b: $f5
    ld [$eff0], a                                 ; $6b2c: $ea $f0 $ef
    ldh a, [$ef]                                  ; $6b2f: $f0 $ef
    ld hl, sp+$04                                 ; $6b31: $f8 $04
    rst $30                                       ; $6b33: $f7
    db $fc                                        ; $6b34: $fc
    ei                                            ; $6b35: $fb
    rst $38                                       ; $6b36: $ff
    db $fc                                        ; $6b37: $fc
    xor a                                         ; $6b38: $af
    ld [$af53], sp                                ; $6b39: $08 $53 $af
    ld bc, $f70b                                  ; $6b3c: $01 $0b $f7
    inc de                                        ; $6b3f: $13
    rst $28                                       ; $6b40: $ef
    rlca                                          ; $6b41: $07
    rst $38                                       ; $6b42: $ff
    rrca                                          ; $6b43: $0f
    ld d, h                                       ; $6b44: $54
    nop                                           ; $6b45: $00
    adc b                                         ; $6b46: $88
    cp a                                          ; $6b47: $bf
    ld [$0030], sp                                ; $6b48: $08 $30 $00
    add [hl]                                      ; $6b4b: $86
    ld [hl], e                                    ; $6b4c: $73
    ld de, $002f                                  ; $6b4d: $11 $2f $00
    add hl, de                                    ; $6b50: $19
    ld [bc], a                                    ; $6b51: $02
    ld b, $31                                     ; $6b52: $06 $31
    ld c, $a1                                     ; $6b54: $0e $a1
    ld e, $0b                                     ; $6b56: $1e $0b
    sub [hl]                                      ; $6b58: $96
    db $10                                        ; $6b59: $10
    or c                                          ; $6b5a: $b1
    nop                                           ; $6b5b: $00
    ld c, $31                                     ; $6b5c: $0e $31
    ld c, $f0                                     ; $6b5e: $0e $f0
    rrca                                          ; $6b60: $0f
    ld hl, sp+$07                                 ; $6b61: $f8 $07
    call z, Call_000_0308                         ; $6b63: $cc $08 $03
    db $eb                                        ; $6b66: $eb
    nop                                           ; $6b67: $00
    di                                            ; $6b68: $f3
    dec a                                         ; $6b69: $3d
    ld bc, $e01d                                  ; $6b6a: $01 $1d $e0
    ld c, $00                                     ; $6b6d: $0e $00
    ldh a, [$08]                                  ; $6b6f: $f0 $08
    ldh a, [$0a]                                  ; $6b71: $f0 $0a
    ldh a, [$38]                                  ; $6b73: $f0 $38
    ret nz                                        ; $6b75: $c0

    or h                                          ; $6b76: $b4
    nop                                           ; $6b77: $00
    ld a, [bc]                                    ; $6b78: $0a
    jr c, jr_0cb_6b81                             ; $6b79: $38 $06

    ld e, h                                       ; $6b7b: $5c
    inc bc                                        ; $6b7c: $03
    inc e                                         ; $6b7d: $1c
    inc bc                                        ; $6b7e: $03
    adc e                                         ; $6b7f: $8b
    nop                                           ; $6b80: $00

jr_0cb_6b81:
    inc b                                         ; $6b81: $04
    ld a, a                                       ; $6b82: $7f
    nop                                           ; $6b83: $00
    and $18                                       ; $6b84: $e6 $18
    pop bc                                        ; $6b86: $c1
    ld a, $1c                                     ; $6b87: $3e $1c
    nop                                           ; $6b89: $00
    nop                                           ; $6b8a: $00
    ei                                            ; $6b8b: $fb
    nop                                           ; $6b8c: $00
    ld [hl], e                                    ; $6b8d: $73
    add b                                         ; $6b8e: $80
    sbc h                                         ; $6b8f: $9c
    ld h, b                                       ; $6b90: $60
    ld e, $00                                     ; $6b91: $1e $00
    ldh [$95], a                                  ; $6b93: $e0 $95
    ld l, d                                       ; $6b95: $6a
    ei                                            ; $6b96: $fb
    inc b                                         ; $6b97: $04
    adc $31                                       ; $6b98: $ce $31
    jp Jump_000_3c00                              ; $6b9a: $c3 $00 $3c


    and c                                         ; $6b9d: $a1
    ld e, [hl]                                    ; $6b9e: $5e
    rst $30                                       ; $6b9f: $f7
    ld [$fc03], sp                                ; $6ba0: $08 $03 $fc
    ld bc, $fe00                                  ; $6ba3: $01 $00 $fe
    db $e3                                        ; $6ba6: $e3
    inc e                                         ; $6ba7: $1c
    ld e, e                                       ; $6ba8: $5b
    and h                                         ; $6ba9: $a4
    or $08                                        ; $6baa: $f6 $08
    add h                                         ; $6bac: $84
    ld bc, $8d78                                  ; $6bad: $01 $78 $8d
    ld [hl], b                                    ; $6bb0: $70
    sbc b                                         ; $6bb1: $98
    ld h, b                                       ; $6bb2: $60
    ldh a, [rP1]                                  ; $6bb3: $f0 $00
    ld a, l                                       ; $6bb5: $7d
    add hl, bc                                    ; $6bb6: $09
    nop                                           ; $6bb7: $00
    stop                                          ; $6bb8: $10 $00
    inc c                                         ; $6bba: $0c
    nop                                           ; $6bbb: $00
    ld [$6000], sp                                ; $6bbc: $08 $00 $60
    nop                                           ; $6bbf: $00
    nop                                           ; $6bc0: $00
    ld e, d                                       ; $6bc1: $5a
    nop                                           ; $6bc2: $00
    jr jr_0cb_6bc5                                ; $6bc3: $18 $00

jr_0cb_6bc5:
    db $fd                                        ; $6bc5: $fd
    nop                                           ; $6bc6: $00
    ld a, [c]                                     ; $6bc7: $f2
    inc c                                         ; $6bc8: $0c
    dec b                                         ; $6bc9: $05
    jp $cf3c                                      ; $6bca: $c3 $3c $cf


    jr nc, jr_0cb_6bd1                            ; $6bcd: $30 $02

    ld a, [de]                                    ; $6bcf: $1a
    nop                                           ; $6bd0: $00

jr_0cb_6bd1:
    ld a, [de]                                    ; $6bd1: $1a
    db $10                                        ; $6bd2: $10
    ld b, b                                       ; $6bd3: $40
    ld bc, $00c7                                  ; $6bd4: $01 $c7 $00
    db $eb                                        ; $6bd7: $eb
    nop                                           ; $6bd8: $00
    add c                                         ; $6bd9: $81
    nop                                           ; $6bda: $00
    sub e                                         ; $6bdb: $93
    ld e, $01                                     ; $6bdc: $1e $01
    nop                                           ; $6bde: $00
    adc a                                         ; $6bdf: $8f
    nop                                           ; $6be0: $00
    ld l, $01                                     ; $6be1: $2e $01
    ld c, $01                                     ; $6be3: $0e $01
    dec e                                         ; $6be5: $1d
    ld [c], a                                     ; $6be6: $e2
    nop                                           ; $6be7: $00
    db $e3                                        ; $6be8: $e3
    inc e                                         ; $6be9: $1c
    ld h, c                                       ; $6bea: $61
    sbc [hl]                                      ; $6beb: $9e
    pop bc                                        ; $6bec: $c1
    ld a, $70                                     ; $6bed: $3e $70
    adc a                                         ; $6bef: $8f
    nop                                           ; $6bf0: $00
    ld b, c                                       ; $6bf1: $41
    cp [hl]                                       ; $6bf2: $be
    add b                                         ; $6bf3: $80
    ld a, a                                       ; $6bf4: $7f
    add c                                         ; $6bf5: $81
    ld a, [hl]                                    ; $6bf6: $7e
    ld l, b                                       ; $6bf7: $68
    add b                                         ; $6bf8: $80
    nop                                           ; $6bf9: $00
    and c                                         ; $6bfa: $a1
    ld b, b                                       ; $6bfb: $40
    inc h                                         ; $6bfc: $24
    ret nz                                        ; $6bfd: $c0

    ldh [rP1], a                                  ; $6bfe: $e0 $00
    call z, Call_000_1000                         ; $6c00: $cc $00 $10
    adc h                                         ; $6c03: $8c
    nop                                           ; $6c04: $00
    jr nz, jr_0cb_6c4d                            ; $6c05: $20 $46

    ld bc, $002f                                  ; $6c07: $01 $2f $00
    ld a, b                                       ; $6c0a: $78
    rlca                                          ; $6c0b: $07
    db $10                                        ; $6c0c: $10
    ld [hl], b                                    ; $6c0d: $70
    rrca                                          ; $6c0e: $0f
    jr nc, jr_0cb_6c13                            ; $6c0f: $30 $02

    nop                                           ; $6c11: $00
    ld e, b                                       ; $6c12: $58

jr_0cb_6c13:
    rlca                                          ; $6c13: $07
    rra                                           ; $6c14: $1f
    nop                                           ; $6c15: $00
    nop                                           ; $6c16: $00
    sbc [hl]                                      ; $6c17: $9e
    ld bc, $00c8                                  ; $6c18: $01 $c8 $00
    ld h, b                                       ; $6c1b: $60
    add b                                         ; $6c1c: $80

jr_0cb_6c1d:
    cp b                                          ; $6c1d: $b8
    ld b, b                                       ; $6c1e: $40
    nop                                           ; $6c1f: $00
    xor d                                         ; $6c20: $aa
    ld d, b                                       ; $6c21: $50
    ld d, $e0                                     ; $6c22: $16 $e0
    scf                                           ; $6c24: $37
    ret nz                                        ; $6c25: $c0

    ld d, b                                       ; $6c26: $50
    and b                                         ; $6c27: $a0
    ld bc, $00f4                                  ; $6c28: $01 $f4 $00
    ldh [rP1], a                                  ; $6c2b: $e0 $00
    ldh a, [rP1]                                  ; $6c2d: $f0 $00
    ld [c], a                                     ; $6c2f: $e2

jr_0cb_6c30:
    ld b, $00                                     ; $6c30: $06 $00
    and b                                         ; $6c32: $a0
    jr nc, @+$0a                                  ; $6c33: $30 $08

    ld h, b                                       ; $6c35: $60
    ld e, l                                       ; $6c36: $5d
    ld [bc], a                                    ; $6c37: $02
    adc b                                         ; $6c38: $88
    nop                                           ; $6c39: $00
    pop bc                                        ; $6c3a: $c1
    nop                                           ; $6c3b: $00
    call nz, RST_00                               ; $6c3c: $c4 $00 $00
    sbc c                                         ; $6c3f: $99
    nop                                           ; $6c40: $00
    rra                                           ; $6c41: $1f
    nop                                           ; $6c42: $00
    ld c, a                                       ; $6c43: $4f
    nop                                           ; $6c44: $00
    rla                                           ; $6c45: $17
    add b                                         ; $6c46: $80
    inc b                                         ; $6c47: $04
    nop                                           ; $6c48: $00
    sbc d                                         ; $6c49: $9a
    dec b                                         ; $6c4a: $05
    inc l                                         ; $6c4b: $2c
    inc de                                        ; $6c4c: $13

jr_0cb_6c4d:
    ld hl, sp+$07                                 ; $6c4d: $f8 $07
    rst $28                                       ; $6c4f: $ef
    nop                                           ; $6c50: $00
    db $10                                        ; $6c51: $10
    cp [hl]                                       ; $6c52: $be
    ld b, c                                       ; $6c53: $41
    pop de                                        ; $6c54: $d1
    ld l, $21                                     ; $6c55: $2e $21
    sbc $c1                                       ; $6c57: $de $c1
    nop                                           ; $6c59: $00
    ld a, $0b                                     ; $6c5a: $3e $0b
    db $f4                                        ; $6c5c: $f4
    ld a, [bc]                                    ; $6c5d: $0a
    push af                                       ; $6c5e: $f5
    rst $08                                       ; $6c5f: $cf
    jr nc, jr_0cb_6c1d                            ; $6c60: $30 $bb

    ld [hl+], a                                   ; $6c62: $22
    ld b, h                                       ; $6c63: $44
    ld hl, sp+$48                                 ; $6c64: $f8 $48
    nop                                           ; $6c66: $00
    and [hl]                                      ; $6c67: $a6
    ld b, b                                       ; $6c68: $40
    cp $39                                        ; $6c69: $fe $39
    ld [bc], a                                    ; $6c6b: $02
    ei                                            ; $6c6c: $fb
    ld a, [bc]                                    ; $6c6d: $0a
    nop                                           ; $6c6e: $00
    jp nz, $9000                                  ; $6c6f: $c2 $00 $90

    sub a                                         ; $6c72: $97
    ld [bc], a                                    ; $6c73: $02
    ret z                                         ; $6c74: $c8

    sbc [hl]                                      ; $6c75: $9e
    ld bc, $2a20                                  ; $6c76: $01 $20 $2a
    nop                                           ; $6c79: $00
    add h                                         ; $6c7a: $84
    and h                                         ; $6c7b: $a4
    ld bc, $40c0                                  ; $6c7c: $01 $c0 $40
    db $10                                        ; $6c7f: $10
    cpl                                           ; $6c80: $2f
    jp nz, $0f01                                  ; $6c81: $c2 $01 $0f

    add b                                         ; $6c84: $80
    adc b                                         ; $6c85: $88
    nop                                           ; $6c86: $00
    ret                                           ; $6c87: $c9


    nop                                           ; $6c88: $00
    db $e4                                        ; $6c89: $e4
    nop                                           ; $6c8a: $00
    ld c, e                                       ; $6c8b: $4b
    nop                                           ; $6c8c: $00
    ld hl, $0000                                  ; $6c8d: $21 $00 $00
    ld a, c                                       ; $6c90: $79
    nop                                           ; $6c91: $00
    db $d3                                        ; $6c92: $d3
    jr nz, jr_0cb_6c30                            ; $6c93: $20 $9b

    ld h, b                                       ; $6c95: $60
    rrca                                          ; $6c96: $0f
    and b                                         ; $6c97: $a0
    ld e, d                                       ; $6c98: $5a
    nop                                           ; $6c99: $00
    jr @+$2e                                      ; $6c9a: $18 $2c

jr_0cb_6c9c:
    nop                                           ; $6c9c: $00
    rst $08                                       ; $6c9d: $cf
    nop                                           ; $6c9e: $00
    rst $38                                       ; $6c9f: $ff
    nop                                           ; $6ca0: $00
    rst $20                                       ; $6ca1: $e7
    add b                                         ; $6ca2: $80
    ld [bc], a                                    ; $6ca3: $02
    nop                                           ; $6ca4: $00
    add c                                         ; $6ca5: $81
    ld a, [hl]                                    ; $6ca6: $7e
    ld bc, $c0fe                                  ; $6ca7: $01 $fe $c0
    ccf                                           ; $6caa: $3f
    ret nz                                        ; $6cab: $c0

    nop                                           ; $6cac: $00
    ccf                                           ; $6cad: $3f
    add b                                         ; $6cae: $80
    ld a, a                                       ; $6caf: $7f
    ret nz                                        ; $6cb0: $c0

    ccf                                           ; $6cb1: $3f
    nop                                           ; $6cb2: $00
    rst $38                                       ; $6cb3: $ff
    ld [$f700], sp                                ; $6cb4: $08 $00 $f7
    xor $10                                       ; $6cb7: $ee $10
    scf                                           ; $6cb9: $37
    ret z                                         ; $6cba: $c8

    ld bc, $07fe                                  ; $6cbb: $01 $fe $07
    nop                                           ; $6cbe: $00
    ld hl, sp+$01                                 ; $6cbf: $f8 $01
    cp $c1                                        ; $6cc1: $fe $c1
    ld a, $f0                                     ; $6cc3: $3e $f0
    rrca                                          ; $6cc5: $0f
    inc l                                         ; $6cc6: $2c
    jr z, jr_0cb_6c9c                             ; $6cc7: $28 $d3

    ld d, $80                                     ; $6cc9: $16 $80
    ld bc, $082c                                  ; $6ccb: $01 $2c $08
    ld [bc], a                                    ; $6cce: $02
    adc a                                         ; $6ccf: $8f
    nop                                           ; $6cd0: $00
    add a                                         ; $6cd1: $87
    jr z, jr_0cb_6cd4                             ; $6cd2: $28 $00

jr_0cb_6cd4:
    and a                                         ; $6cd4: $a7
    inc [hl]                                      ; $6cd5: $34
    nop                                           ; $6cd6: $00
    nop                                           ; $6cd7: $00
    ld e, $11                                     ; $6cd8: $1e $11
    cp $00                                        ; $6cda: $fe $00
    rst $18                                       ; $6cdc: $df
    nop                                           ; $6cdd: $00
    jr nz, jr_0cb_6d57                            ; $6cde: $20 $77

    adc b                                         ; $6ce0: $88
    cp $01                                        ; $6ce1: $fe $01
    dec de                                        ; $6ce3: $1b
    db $e4                                        ; $6ce4: $e4
    ld h, e                                       ; $6ce5: $63
    nop                                           ; $6ce6: $00
    inc c                                         ; $6ce7: $0c
    ld [hl], e                                    ; $6ce8: $73
    inc c                                         ; $6ce9: $0c
    ld a, $01                                     ; $6cea: $3e $01
    ld a, a                                       ; $6cec: $7f
    nop                                           ; $6ced: $00
    db $e3                                        ; $6cee: $e3
    nop                                           ; $6cef: $00
    inc e                                         ; $6cf0: $1c
    pop bc                                        ; $6cf1: $c1
    ld a, $43                                     ; $6cf2: $3e $43
    cp h                                          ; $6cf4: $bc
    rst $00                                       ; $6cf5: $c7
    jr c, @+$01                                   ; $6cf6: $38 $ff

    nop                                           ; $6cf8: $00
    nop                                           ; $6cf9: $00
    jp c, $bf25                                   ; $6cfa: $da $25 $bf

    ld b, b                                       ; $6cfd: $40
    call z, $8033                                 ; $6cfe: $cc $33 $80
    ld b, b                                       ; $6d01: $40
    ld a, a                                       ; $6d02: $7f
    ld h, c                                       ; $6d03: $61
    nop                                           ; $6d04: $00
    rst $38                                       ; $6d05: $ff
    inc e                                         ; $6d06: $1c
    db $e3                                        ; $6d07: $e3
    rst $00                                       ; $6d08: $c7
    jr c, @+$68                                   ; $6d09: $38 $66

    nop                                           ; $6d0b: $00
    sbc c                                         ; $6d0c: $99
    rst $38                                       ; $6d0d: $ff
    nop                                           ; $6d0e: $00
    adc c                                         ; $6d0f: $89
    halt                                          ; $6d10: $76
    add a                                         ; $6d11: $87
    ld a, b                                       ; $6d12: $78
    rst $00                                       ; $6d13: $c7
    nop                                           ; $6d14: $00
    jr c, @+$67                                   ; $6d15: $38 $65

    sbc d                                         ; $6d17: $9a
    rst $20                                       ; $6d18: $e7
    jr jr_0cb_6d3a                                ; $6d19: $18 $1f

    ldh [rNR22], a                                ; $6d1b: $e0 $17
    nop                                           ; $6d1d: $00
    add sp, $1e                                   ; $6d1e: $e8 $1e
    pop hl                                        ; $6d20: $e1
    jp $823c                                      ; $6d21: $c3 $3c $82


    ld a, l                                       ; $6d24: $7d
    nop                                           ; $6d25: $00
    nop                                           ; $6d26: $00
    rst $38                                       ; $6d27: $ff
    ld bc, $06fe                                  ; $6d28: $01 $fe $06
    ld sp, hl                                     ; $6d2b: $f9
    inc a                                         ; $6d2c: $3c
    jp $c830                                      ; $6d2d: $c3 $30 $c8


    adc e                                         ; $6d30: $8b
    ld [$002c], sp                                ; $6d31: $08 $2c $00
    ld [$32f7], sp                                ; $6d34: $08 $f7 $32
    ld [$817e], sp                                ; $6d37: $08 $7e $81

jr_0cb_6d3a:
    or $10                                        ; $6d3a: $f6 $10
    add hl, bc                                    ; $6d3c: $09
    sbc h                                         ; $6d3d: $9c
    ld h, e                                       ; $6d3e: $63
    inc a                                         ; $6d3f: $3c
    ld [$df20], sp                                ; $6d40: $08 $20 $df
    ld a, b                                       ; $6d43: $78
    add a                                         ; $6d44: $87
    ld [bc], a                                    ; $6d45: $02
    and c                                         ; $6d46: $a1
    ld e, [hl]                                    ; $6d47: $5e
    rrca                                          ; $6d48: $0f
    ldh a, [rTMA]                                 ; $6d49: $f0 $06
    ld sp, hl                                     ; $6d4b: $f9
    ld c, d                                       ; $6d4c: $4a
    ld [$40f0], sp                                ; $6d4d: $08 $f0 $40
    rrca                                          ; $6d50: $0f
    ld [$8008], sp                                ; $6d51: $08 $08 $80
    ld a, a                                       ; $6d54: $7f
    inc bc                                        ; $6d55: $03
    db $fc                                        ; $6d56: $fc

jr_0cb_6d57:
    ld b, $f9                                     ; $6d57: $06 $f9
    nop                                           ; $6d59: $00

jr_0cb_6d5a:
    rrca                                          ; $6d5a: $0f
    ldh a, [rIF]                                  ; $6d5b: $f0 $0f
    ldh a, [$0b]                                  ; $6d5d: $f0 $0b
    db $f4                                        ; $6d5f: $f4
    rlca                                          ; $6d60: $07
    ld hl, sp+$00                                 ; $6d61: $f8 $00
    ld [bc], a                                    ; $6d63: $02
    db $fd                                        ; $6d64: $fd
    ld bc, $a7fe                                  ; $6d65: $01 $fe $a7
    ld e, b                                       ; $6d68: $58
    cp [hl]                                       ; $6d69: $be
    ld b, c                                       ; $6d6a: $41
    nop                                           ; $6d6b: $00
    ld hl, sp+$07                                 ; $6d6c: $f8 $07
    ld h, b                                       ; $6d6e: $60
    sbc a                                         ; $6d6f: $9f
    ldh [$1f], a                                  ; $6d70: $e0 $1f
    and b                                         ; $6d72: $a0
    ld e, a                                       ; $6d73: $5f
    nop                                           ; $6d74: $00
    ldh [$1f], a                                  ; $6d75: $e0 $1f
    ld hl, sp+$07                                 ; $6d77: $f8 $07
    ret c                                         ; $6d79: $d8

    daa                                           ; $6d7a: $27
    ld hl, sp+$07                                 ; $6d7b: $f8 $07
    nop                                           ; $6d7d: $00
    add sp, $17                                   ; $6d7e: $e8 $17
    ld hl, sp+$07                                 ; $6d80: $f8 $07
    ld [hl], b                                    ; $6d82: $70
    adc a                                         ; $6d83: $8f
    ldh a, [rIF]                                  ; $6d84: $f0 $0f
    nop                                           ; $6d86: $00
    ld h, b                                       ; $6d87: $60
    sbc a                                         ; $6d88: $9f
    jr nc, jr_0cb_6d5a                            ; $6d89: $30 $cf

    inc d                                         ; $6d8b: $14
    db $eb                                        ; $6d8c: $eb
    ccf                                           ; $6d8d: $3f
    ret nz                                        ; $6d8e: $c0

    nop                                           ; $6d8f: $00
    ld l, $d1                                     ; $6d90: $2e $d1
    rra                                           ; $6d92: $1f
    ldh [rNR31], a                                ; $6d93: $e0 $1b
    db $e4                                        ; $6d95: $e4
    ld [bc], a                                    ; $6d96: $02
    db $fd                                        ; $6d97: $fd
    inc bc                                        ; $6d98: $03
    inc bc                                        ; $6d99: $03
    db $fc                                        ; $6d9a: $fc
    nop                                           ; $6d9b: $00
    rst $38                                       ; $6d9c: $ff
    pop bc                                        ; $6d9d: $c1
    ld a, $f2                                     ; $6d9e: $3e $f2
    ld [$1860], sp                                ; $6da0: $08 $60 $18
    nop                                           ; $6da3: $00
    ld b, b                                       ; $6da4: $40
    cp a                                          ; $6da5: $bf
    ld bc, $62fe                                  ; $6da6: $01 $fe $62
    sbc l                                         ; $6da9: $9d
    pop hl                                        ; $6daa: $e1
    ld e, $20                                     ; $6dab: $1e $20
    add c                                         ; $6dad: $81
    ld a, [hl]                                    ; $6dae: $7e
    ld d, [hl]                                    ; $6daf: $56
    ld [$1ce3], sp                                ; $6db0: $08 $e3 $1c
    and e                                         ; $6db3: $a3
    ld e, h                                       ; $6db4: $5c
    di                                            ; $6db5: $f3
    jr nz, jr_0cb_6dc4                            ; $6db6: $20 $0c

    rst $38                                       ; $6db8: $ff
    jp c, $be00                                   ; $6db9: $da $00 $be

    ld b, c                                       ; $6dbc: $41
    rst $30                                       ; $6dbd: $f7
    ld [$10fd], sp                                ; $6dbe: $08 $fd $10
    ld [bc], a                                    ; $6dc1: $02
    ld b, b                                       ; $6dc2: $40
    cp a                                          ; $6dc3: $bf

jr_0cb_6dc4:
    ld d, $09                                     ; $6dc4: $16 $09
    ret nc                                        ; $6dc6: $d0

    ld [bc], a                                    ; $6dc7: $02
    ld h, b                                       ; $6dc8: $60
    ld [bc], a                                    ; $6dc9: $02
    nop                                           ; $6dca: $00
    or a                                          ; $6dcb: $b7
    nop                                           ; $6dcc: $00

jr_0cb_6dcd:
    and c                                         ; $6dcd: $a1
    nop                                           ; $6dce: $00
    ld a, [c]                                     ; $6dcf: $f2
    nop                                           ; $6dd0: $00
    inc a                                         ; $6dd1: $3c
    nop                                           ; $6dd2: $00
    nop                                           ; $6dd3: $00
    ld a, [de]                                    ; $6dd4: $1a
    nop                                           ; $6dd5: $00
    ld [hl], c                                    ; $6dd6: $71
    nop                                           ; $6dd7: $00
    sub c                                         ; $6dd8: $91
    ld h, b                                       ; $6dd9: $60
    sbc [hl]                                      ; $6dda: $9e
    ld h, c                                       ; $6ddb: $61
    nop                                           ; $6ddc: $00
    rst $18                                       ; $6ddd: $df
    nop                                           ; $6dde: $00
    inc bc                                        ; $6ddf: $03
    nop                                           ; $6de0: $00
    add b                                         ; $6de1: $80
    nop                                           ; $6de2: $00
    cp h                                          ; $6de3: $bc
    nop                                           ; $6de4: $00
    nop                                           ; $6de5: $00
    db $e4                                        ; $6de6: $e4
    jr jr_0cb_6dcd                                ; $6de7: $18 $e4

    jr jr_0cb_6e67                                ; $6de9: $18 $7c

    add b                                         ; $6deb: $80

jr_0cb_6dec:
    nop                                           ; $6dec: $00
    ldh [rP1], a                                  ; $6ded: $e0 $00
    ret                                           ; $6def: $c9


    ld [hl], $7c                                  ; $6df0: $36 $7c
    inc bc                                        ; $6df2: $03
    inc d                                         ; $6df3: $14
    inc bc                                        ; $6df4: $03
    rst $20                                       ; $6df5: $e7
    nop                                           ; $6df6: $00
    nop                                           ; $6df7: $00
    ld [hl+], a                                   ; $6df8: $22
    pop bc                                        ; $6df9: $c1
    ld [hl-], a                                   ; $6dfa: $32
    pop bc                                        ; $6dfb: $c1
    rst $20                                       ; $6dfc: $e7
    nop                                           ; $6dfd: $00
    cp b                                          ; $6dfe: $b8
    nop                                           ; $6dff: $00
    nop                                           ; $6e00: $00
    rra                                           ; $6e01: $1f
    nop                                           ; $6e02: $00
    inc sp                                        ; $6e03: $33
    inc c                                         ; $6e04: $0c
    ld [hl-], a                                   ; $6e05: $32
    inc c                                         ; $6e06: $0c
    ld e, $00                                     ; $6e07: $1e $00
    nop                                           ; $6e09: $00
    rlca                                          ; $6e0a: $07
    nop                                           ; $6e0b: $00
    add c                                         ; $6e0c: $81
    nop                                           ; $6e0d: $00
    ret c                                         ; $6e0e: $d8

    nop                                           ; $6e0f: $00
    db $fd                                        ; $6e10: $fd
    nop                                           ; $6e11: $00
    nop                                           ; $6e12: $00
    and $18                                       ; $6e13: $e6 $18
    ld l, h                                       ; $6e15: $6c
    db $10                                        ; $6e16: $10
    sbc b                                         ; $6e17: $98
    ld h, b                                       ; $6e18: $60
    inc l                                         ; $6e19: $2c
    ret nz                                        ; $6e1a: $c0

    nop                                           ; $6e1b: $00
    xor e                                         ; $6e1c: $ab
    ld b, h                                       ; $6e1d: $44
    rst $38                                       ; $6e1e: $ff
    nop                                           ; $6e1f: $00
    db $d3                                        ; $6e20: $d3
    inc l                                         ; $6e21: $2c
    push hl                                       ; $6e22: $e5
    ld a, [de]                                    ; $6e23: $1a
    nop                                           ; $6e24: $00
    rst $20                                       ; $6e25: $e7
    jr jr_0cb_6dec                                ; $6e26: $18 $c4

    dec sp                                        ; $6e28: $3b
    call z, $f333                                 ; $6e29: $cc $33 $f3
    nop                                           ; $6e2c: $00
    nop                                           ; $6e2d: $00
    ld a, a                                       ; $6e2e: $7f
    add b                                         ; $6e2f: $80
    ld [hl], b                                    ; $6e30: $70
    adc a                                         ; $6e31: $8f
    ret nc                                        ; $6e32: $d0

    rrca                                          ; $6e33: $0f
    adc a                                         ; $6e34: $8f
    nop                                           ; $6e35: $00
    nop                                           ; $6e36: $00
    ld e, a                                       ; $6e37: $5f
    rst $38                                       ; $6e38: $ff
    sbc a                                         ; $6e39: $9f
    rst $38                                       ; $6e3a: $ff
    rlca                                          ; $6e3b: $07
    rst $38                                       ; $6e3c: $ff
    xor [hl]                                      ; $6e3d: $ae
    ld a, a                                       ; $6e3e: $7f
    nop                                           ; $6e3f: $00
    inc c                                         ; $6e40: $0c
    rst $38                                       ; $6e41: $ff
    ld h, e                                       ; $6e42: $63
    sbc a                                         ; $6e43: $9f
    xor e                                         ; $6e44: $ab
    rra                                           ; $6e45: $1f
    ld d, d                                       ; $6e46: $52
    xor a                                         ; $6e47: $af
    nop                                           ; $6e48: $00
    inc bc                                        ; $6e49: $03
    db $fc                                        ; $6e4a: $fc
    nop                                           ; $6e4b: $00
    rst $38                                       ; $6e4c: $ff
    ret nz                                        ; $6e4d: $c0

    ccf                                           ; $6e4e: $3f
    ld [bc], a                                    ; $6e4f: $02
    db $fd                                        ; $6e50: $fd
    nop                                           ; $6e51: $00
    ld bc, $0bfe                                  ; $6e52: $01 $fe $0b
    db $f4                                        ; $6e55: $f4
    nop                                           ; $6e56: $00
    rst $38                                       ; $6e57: $ff
    nop                                           ; $6e58: $00
    rst $38                                       ; $6e59: $ff
    nop                                           ; $6e5a: $00
    daa                                           ; $6e5b: $27
    ret c                                         ; $6e5c: $d8

    ld hl, $79de                                  ; $6e5d: $21 $de $79
    add [hl]                                      ; $6e60: $86
    db $e3                                        ; $6e61: $e3
    inc e                                         ; $6e62: $1c
    nop                                           ; $6e63: $00
    add c                                         ; $6e64: $81
    ld a, [hl]                                    ; $6e65: $7e
    rlca                                          ; $6e66: $07

jr_0cb_6e67:
    ld hl, sp+$3f                                 ; $6e67: $f8 $3f
    ret nz                                        ; $6e69: $c0

    inc h                                         ; $6e6a: $24
    db $db                                        ; $6e6b: $db
    nop                                           ; $6e6c: $00
    add d                                         ; $6e6d: $82
    ld a, l                                       ; $6e6e: $7d
    db $10                                        ; $6e6f: $10

jr_0cb_6e70:
    rst $28                                       ; $6e70: $ef
    ld d, c                                       ; $6e71: $51
    xor [hl]                                      ; $6e72: $ae
    ld bc, $00fe                                  ; $6e73: $01 $fe $00
    ld [bc], a                                    ; $6e76: $02
    db $fd                                        ; $6e77: $fd
    nop                                           ; $6e78: $00
    rst $38                                       ; $6e79: $ff
    ld a, [bc]                                    ; $6e7a: $0a
    push af                                       ; $6e7b: $f5
    dec h                                         ; $6e7c: $25
    jp c, $e000                                   ; $6e7d: $da $00 $e0

    nop                                           ; $6e80: $00
    ld bc, $8f00                                  ; $6e81: $01 $00 $8f
    nop                                           ; $6e84: $00
    ret nz                                        ; $6e85: $c0

    nop                                           ; $6e86: $00
    nop                                           ; $6e87: $00
    di                                            ; $6e88: $f3
    nop                                           ; $6e89: $00
    and b                                         ; $6e8a: $a0
    nop                                           ; $6e8b: $00
    jp nz, $ed00                                  ; $6e8c: $c2 $00 $ed

jr_0cb_6e8f:
    nop                                           ; $6e8f: $00
    nop                                           ; $6e90: $00
    and c                                         ; $6e91: $a1
    ld e, $b9                                     ; $6e92: $1e $b9
    ld b, $c8                                     ; $6e94: $06 $c8
    rlca                                          ; $6e96: $07
    ld b, [hl]                                    ; $6e97: $46
    add c                                         ; $6e98: $81
    nop                                           ; $6e99: $00
    ld a, a                                       ; $6e9a: $7f
    add b                                         ; $6e9b: $80
    ret                                           ; $6e9c: $c9


    ld [hl], $89                                  ; $6e9d: $36 $89
    halt                                          ; $6e9f: $76
    sbc a                                         ; $6ea0: $9f
    ld h, b                                       ; $6ea1: $60
    ld bc, $08f7                                  ; $6ea2: $01 $f7 $08
    sub d                                         ; $6ea5: $92
    ld l, h                                       ; $6ea6: $6c
    rst $18                                       ; $6ea7: $df
    jr nz, jr_0cb_6e8f                            ; $6ea8: $20 $e5

    adc [hl]                                      ; $6eaa: $8e
    nop                                           ; $6eab: $00
    nop                                           ; $6eac: $00
    rlca                                          ; $6ead: $07
    nop                                           ; $6eae: $00
    pop hl                                        ; $6eaf: $e1
    nop                                           ; $6eb0: $00
    ld hl, sp+$00                                 ; $6eb1: $f8 $00
    xor l                                         ; $6eb3: $ad
    ld d, d                                       ; $6eb4: $52
    nop                                           ; $6eb5: $00
    ld sp, hl                                     ; $6eb6: $f9
    ld b, $ca                                     ; $6eb7: $06 $ca
    dec [hl]                                      ; $6eb9: $35
    rst $20                                       ; $6eba: $e7
    jr jr_0cb_6e70                                ; $6ebb: $18 $b3

    inc c                                         ; $6ebd: $0c
    nop                                           ; $6ebe: $00
    or d                                          ; $6ebf: $b2
    inc c                                         ; $6ec0: $0c
    rra                                           ; $6ec1: $1f
    nop                                           ; $6ec2: $00
    ret                                           ; $6ec3: $c9


    nop                                           ; $6ec4: $00
    add h                                         ; $6ec5: $84
    ld a, e                                       ; $6ec6: $7b
    nop                                           ; $6ec7: $00
    db $e4                                        ; $6ec8: $e4
    dec de                                        ; $6ec9: $1b
    rst $38                                       ; $6eca: $ff
    nop                                           ; $6ecb: $00
    ld sp, hl                                     ; $6ecc: $f9
    ld b, $99                                     ; $6ecd: $06 $99
    ld h, [hl]                                    ; $6ecf: $66
    nop                                           ; $6ed0: $00
    sbc a                                         ; $6ed1: $9f
    ld h, b                                       ; $6ed2: $60
    ld a, c                                       ; $6ed3: $79
    add [hl]                                      ; $6ed4: $86
    ld [hl], c                                    ; $6ed5: $71
    adc [hl]                                      ; $6ed6: $8e
    inc a                                         ; $6ed7: $3c
    jp $d700                                      ; $6ed8: $c3 $00 $d7


    nop                                           ; $6edb: $00
    call $8802                                    ; $6edc: $cd $02 $88
    rlca                                          ; $6edf: $07
    dec e                                         ; $6ee0: $1d
    ld [bc], a                                    ; $6ee1: $02
    ld b, b                                       ; $6ee2: $40
    add a                                         ; $6ee3: $87
    ld d, [hl]                                    ; $6ee4: $56
    nop                                           ; $6ee5: $00
    inc bc                                        ; $6ee6: $03
    nop                                           ; $6ee7: $00
    nop                                           ; $6ee8: $00
    rst $38                                       ; $6ee9: $ff
    ld h, h                                       ; $6eea: $64
    sbc e                                         ; $6eeb: $9b
    inc c                                         ; $6eec: $0c
    ld h, b                                       ; $6eed: $60
    sbc a                                         ; $6eee: $9f
    inc bc                                        ; $6eef: $03
    db $fc                                        ; $6ef0: $fc
    sbc b                                         ; $6ef1: $98
    ld [$0890], sp                                ; $6ef2: $08 $90 $08
    inc b                                         ; $6ef5: $04
    ei                                            ; $6ef6: $fb
    nop                                           ; $6ef7: $00
    rrca                                          ; $6ef8: $0f
    ldh a, [rTAC]                                 ; $6ef9: $f0 $07
    ld hl, sp-$7f                                 ; $6efb: $f8 $81
    ld a, [hl]                                    ; $6efd: $7e
    db $e3                                        ; $6efe: $e3
    inc e                                         ; $6eff: $1c
    nop                                           ; $6f00: $00
    ld a, c                                       ; $6f01: $79
    add [hl]                                      ; $6f02: $86
    ld hl, $27de                                  ; $6f03: $21 $de $27
    ret c                                         ; $6f06: $d8

    cp e                                          ; $6f07: $bb
    nop                                           ; $6f08: $00
    nop                                           ; $6f09: $00
    add hl, de                                    ; $6f0a: $19
    nop                                           ; $6f0b: $00
    nop                                           ; $6f0c: $00
    nop                                           ; $6f0d: $00
    ld h, [hl]                                    ; $6f0e: $66
    nop                                           ; $6f0f: $00
    sbc c                                         ; $6f10: $99
    ld h, b                                       ; $6f11: $60
    nop                                           ; $6f12: $00
    sbc c                                         ; $6f13: $99
    ld h, b                                       ; $6f14: $60
    ld h, a                                       ; $6f15: $67
    sbc b                                         ; $6f16: $98
    ld h, h                                       ; $6f17: $64
    sbc e                                         ; $6f18: $9b
    rst $38                                       ; $6f19: $ff
    nop                                           ; $6f1a: $00
    inc b                                         ; $6f1b: $04
    adc l                                         ; $6f1c: $8d
    nop                                           ; $6f1d: $00
    jp Jump_0cb_6700                              ; $6f1e: $c3 $00 $67


    inc d                                         ; $6f21: $14
    nop                                           ; $6f22: $00
    add c                                         ; $6f23: $81
    nop                                           ; $6f24: $00
    nop                                           ; $6f25: $00
    db $e3                                        ; $6f26: $e3
    nop                                           ; $6f27: $00
    inc sp                                        ; $6f28: $33
    nop                                           ; $6f29: $00
    sbc a                                         ; $6f2a: $9f
    rst $38                                       ; $6f2b: $ff
    add hl, sp                                    ; $6f2c: $39

jr_0cb_6f2d:
    rst $38                                       ; $6f2d: $ff
    nop                                           ; $6f2e: $00
    jr @+$01                                      ; $6f2f: $18 $ff

    and e                                         ; $6f31: $a3
    ld a, a                                       ; $6f32: $7f
    dec bc                                        ; $6f33: $0b
    rst $30                                       ; $6f34: $f7
    xor d                                         ; $6f35: $aa
    ld d, a                                       ; $6f36: $57
    nop                                           ; $6f37: $00
    or h                                          ; $6f38: $b4

jr_0cb_6f39:
    ld c, a                                       ; $6f39: $4f
    push af                                       ; $6f3a: $f5
    dec bc                                        ; $6f3b: $0b
    ld l, a                                       ; $6f3c: $6f
    add b                                         ; $6f3d: $80
    ld e, e                                       ; $6f3e: $5b
    and h                                         ; $6f3f: $a4
    ld [bc], a                                    ; $6f40: $02
    ld bc, $17fe                                  ; $6f41: $01 $fe $17
    add sp, $01                                   ; $6f44: $e8 $01
    cp $50                                        ; $6f46: $fe $50
    jr z, @-$7a                                   ; $6f48: $28 $84

    nop                                           ; $6f4a: $00
    ld a, e                                       ; $6f4b: $7b
    jr nz, jr_0cb_6f2d                            ; $6f4c: $20 $df

    sub l                                         ; $6f4e: $95
    ld l, d                                       ; $6f4f: $6a

jr_0cb_6f50:
    jr jr_0cb_6f39                                ; $6f50: $18 $e7

    add b                                         ; $6f52: $80
    ld b, b                                       ; $6f53: $40
    ld a, a                                       ; $6f54: $7f
    ldh a, [$08]                                  ; $6f55: $f0 $08
    cp $01                                        ; $6f57: $fe $01
    daa                                           ; $6f59: $27
    ret nz                                        ; $6f5a: $c0

    ld sp, $00c0                                  ; $6f5b: $31 $c0 $00
    db $e3                                        ; $6f5e: $e3
    nop                                           ; $6f5f: $00
    inc b                                         ; $6f60: $04
    inc bc                                        ; $6f61: $03
    add [hl]                                      ; $6f62: $86
    ld bc, $0304                                  ; $6f63: $01 $04 $03
    nop                                           ; $6f66: $00
    add hl, sp                                    ; $6f67: $39
    ld [bc], a                                    ; $6f68: $02
    rst $20                                       ; $6f69: $e7
    jr jr_0cb_6fe1                                ; $6f6a: $18 $75

    ld [$00b8], sp                                ; $6f6c: $08 $b8 $00
    ld b, $5c                                     ; $6f6f: $06 $5c
    nop                                           ; $6f71: $00
    dec bc                                        ; $6f72: $0b
    nop                                           ; $6f73: $00
    adc b                                         ; $6f74: $88
    sub b                                         ; $6f75: $90
    jr nz, @+$18                                  ; $6f76: $20 $16

    add hl, bc                                    ; $6f78: $09
    add b                                         ; $6f79: $80
    nop                                           ; $6f7a: $00
    ld a, a                                       ; $6f7b: $7f
    ld l, b                                       ; $6f7c: $68
    sub a                                         ; $6f7d: $97
    nop                                           ; $6f7e: $00
    rst $38                                       ; $6f7f: $ff
    ld b, b                                       ; $6f80: $40
    cp a                                          ; $6f81: $bf
    nop                                           ; $6f82: $00
    nop                                           ; $6f83: $00
    rst $38                                       ; $6f84: $ff
    ret                                           ; $6f85: $c9


    ld b, $ed                                     ; $6f86: $06 $ed
    inc bc                                        ; $6f88: $03
    inc a                                         ; $6f89: $3c
    jp $0017                                      ; $6f8a: $c3 $17 $00


    add sp, -$31                                  ; $6f8d: $e8 $cf
    jr nc, jr_0cb_6f50                            ; $6f8f: $30 $bf

    ld b, b                                       ; $6f91: $40
    ld d, e                                       ; $6f92: $53
    db $ec                                        ; $6f93: $ec
    call z, $ff00                                 ; $6f94: $cc $00 $ff
    ld e, b                                       ; $6f97: $58
    and a                                         ; $6f98: $a7
    ld d, $e9                                     ; $6f99: $16 $e9
    add $f9                                       ; $6f9b: $c6 $f9
    ret c                                         ; $6f9d: $d8

    nop                                           ; $6f9e: $00
    rst $20                                       ; $6f9f: $e7
    ld de, $4aef                                  ; $6fa0: $11 $ef $4a
    rst $38                                       ; $6fa3: $ff
    ld a, $ff                                     ; $6fa4: $3e $ff
    ld e, a                                       ; $6fa6: $5f
    nop                                           ; $6fa7: $00
    rst $38                                       ; $6fa8: $ff
    ld b, d                                       ; $6fa9: $42
    cp a                                          ; $6faa: $bf
    inc de                                        ; $6fab: $13
    rst $38                                       ; $6fac: $ff
    ld b, a                                       ; $6fad: $47
    rst $38                                       ; $6fae: $ff
    jr nc, jr_0cb_6fb1                            ; $6faf: $30 $00

jr_0cb_6fb1:
    rst $38                                       ; $6fb1: $ff
    jr c, @+$01                                   ; $6fb2: $38 $ff

    ld a, [de]                                    ; $6fb4: $1a
    rst $38                                       ; $6fb5: $ff
    db $f4                                        ; $6fb6: $f4
    rst $38                                       ; $6fb7: $ff
    cp $00                                        ; $6fb8: $fe $00
    rst $38                                       ; $6fba: $ff
    pop af                                        ; $6fbb: $f1
    nop                                           ; $6fbc: $00
    dec bc                                        ; $6fbd: $0b
    ldh a, [$0e]                                  ; $6fbe: $f0 $0e
    pop af                                        ; $6fc0: $f1
    cp $00                                        ; $6fc1: $fe $00
    ld bc, $00cf                                  ; $6fc3: $01 $cf $00
    inc sp                                        ; $6fc6: $33
    call z, $dca7                                 ; $6fc7: $cc $a7 $dc
    call z, $ff00                                 ; $6fca: $cc $00 $ff
    ret nc                                        ; $6fcd: $d0

    cpl                                           ; $6fce: $2f
    or b                                          ; $6fcf: $b0
    rrca                                          ; $6fd0: $0f
    ld d, l                                       ; $6fd1: $55
    xor d                                         ; $6fd2: $aa
    dec bc                                        ; $6fd3: $0b
    nop                                           ; $6fd4: $00
    ldh a, [$79]                                  ; $6fd5: $f0 $79
    add b                                         ; $6fd7: $80
    and $19                                       ; $6fd8: $e6 $19
    ld b, h                                       ; $6fda: $44
    cp e                                          ; $6fdb: $bb
    ret c                                         ; $6fdc: $d8

    ld c, [hl]                                    ; $6fdd: $4e
    daa                                           ; $6fde: $27
    and $18                                       ; $6fdf: $e6 $18

jr_0cb_6fe1:
    ld c, b                                       ; $6fe1: $48
    or a                                          ; $6fe2: $b7
    ld e, h                                       ; $6fe3: $5c
    ld [$0964], sp                                ; $6fe4: $08 $64 $09
    ld [bc], a                                    ; $6fe7: $02
    ld l, b                                       ; $6fe8: $68
    add b                                         ; $6fe9: $80
    add b                                         ; $6fea: $80
    sub h                                         ; $6feb: $94
    ld bc, $ffcc                                  ; $6fec: $01 $cc $ff
    sub b                                         ; $6fef: $90
    rst $38                                       ; $6ff0: $ff
    and e                                         ; $6ff1: $a3
    rst $38                                       ; $6ff2: $ff
    or b                                          ; $6ff3: $b0
    jr nz, @+$01                                  ; $6ff4: $20 $ff

    or $02                                        ; $6ff6: $f6 $02
    nop                                           ; $6ff8: $00
    ccf                                           ; $6ff9: $3f
    ret nz                                        ; $6ffa: $c0

jr_0cb_6ffb:
    ld e, a                                       ; $6ffb: $5f
    and b                                         ; $6ffc: $a0
    add hl, bc                                    ; $6ffd: $09
    db $10                                        ; $6ffe: $10
    or $16                                        ; $6fff: $f6 $16
    jp hl                                         ; $7001: $e9


    ret nc                                        ; $7002: $d0

    jr z, @+$01                                   ; $7003: $28 $ff

    nop                                           ; $7005: $00
    ld l, e                                       ; $7006: $6b

jr_0cb_7007:
    nop                                           ; $7007: $00
    nop                                           ; $7008: $00
    add a                                         ; $7009: $87
    nop                                           ; $700a: $00
    inc c                                         ; $700b: $0c
    inc bc                                        ; $700c: $03
    ld h, $01                                     ; $700d: $26 $01
    rlca                                          ; $700f: $07
    nop                                           ; $7010: $00

jr_0cb_7011:
    nop                                           ; $7011: $00
    sbc e                                         ; $7012: $9b
    nop                                           ; $7013: $00
    ld a, l                                       ; $7014: $7d
    ld [bc], a                                    ; $7015: $02
    inc d                                         ; $7016: $14
    db $eb                                        ; $7017: $eb
    db $10                                        ; $7018: $10
    rst $28                                       ; $7019: $ef
    nop                                           ; $701a: $00

jr_0cb_701b:
    add b                                         ; $701b: $80
    ld a, a                                       ; $701c: $7f
    ld e, a                                       ; $701d: $5f
    jr nz, jr_0cb_7068                            ; $701e: $20 $48

    scf                                           ; $7020: $37
    sbc b                                         ; $7021: $98
    ld h, a                                       ; $7022: $67
    ld [$7c83], sp                                ; $7023: $08 $83 $7c
    jr nz, jr_0cb_7007                            ; $7026: $20 $df

    ld b, [hl]                                    ; $7028: $46
    add hl, de                                    ; $7029: $19
    ld [bc], a                                    ; $702a: $02
    db $fd                                        ; $702b: $fd
    ret nz                                        ; $702c: $c0

    nop                                           ; $702d: $00
    ccf                                           ; $702e: $3f
    ld c, b                                       ; $702f: $48
    or a                                          ; $7030: $b7
    ld [$00f7], sp                                ; $7031: $08 $f7 $00
    rst $38                                       ; $7034: $ff
    pop de                                        ; $7035: $d1
    nop                                           ; $7036: $00
    ld l, $20                                     ; $7037: $2e $20
    rst $18                                       ; $7039: $df
    jr nz, jr_0cb_701b                            ; $703a: $20 $df

    add [hl]                                      ; $703c: $86
    ld a, c                                       ; $703d: $79
    dec b                                         ; $703e: $05
    ld b, b                                       ; $703f: $40
    ld a, [$08d6]                                 ; $7040: $fa $d6 $08
    inc h                                         ; $7043: $24
    db $db                                        ; $7044: $db
    ld h, e                                       ; $7045: $63
    sbc h                                         ; $7046: $9c
    ld [hl], d                                    ; $7047: $72
    adc l                                         ; $7048: $8d
    dec b                                         ; $7049: $05
    rst $30                                       ; $704a: $f7
    ld [$00bd], sp                                ; $704b: $08 $bd $00
    ld de, $0266                                  ; $704e: $11 $66 $02
    adc h                                         ; $7051: $8c
    ret nc                                        ; $7052: $d0

    ld bc, $b040                                  ; $7053: $01 $40 $b0
    ld a, b                                       ; $7056: $78
    ld [bc], a                                    ; $7057: $02
    ld l, e                                       ; $7058: $6b
    db $10                                        ; $7059: $10
    push bc                                       ; $705a: $c5
    jr c, jr_0cb_7011                             ; $705b: $38 $b4

    ld c, b                                       ; $705d: $48
    nop                                           ; $705e: $00
    db $dd                                        ; $705f: $dd
    jr nz, jr_0cb_6ffb                            ; $7060: $20 $99

    ld h, b                                       ; $7062: $60
    push hl                                       ; $7063: $e5
    nop                                           ; $7064: $00
    db $10                                        ; $7065: $10
    rst $28                                       ; $7066: $ef
    ld [hl-], a                                   ; $7067: $32

jr_0cb_7068:
    inc c                                         ; $7068: $0c
    di                                            ; $7069: $f3
    sub [hl]                                      ; $706a: $96
    ld c, b                                       ; $706b: $48
    ret nc                                        ; $706c: $d0

    ld c, b                                       ; $706d: $48
    inc hl                                        ; $706e: $23
    call c, Call_000_0a32                         ; $706f: $dc $32 $0a
    ret z                                         ; $7072: $c8

    nop                                           ; $7073: $00
    scf                                           ; $7074: $37
    db $fd                                        ; $7075: $fd
    ld [bc], a                                    ; $7076: $02
    di                                            ; $7077: $f3
    inc c                                         ; $7078: $0c
    add sp, $17                                   ; $7079: $e8 $17
    inc a                                         ; $707b: $3c
    ld [bc], a                                    ; $707c: $02
    jp $c037                                      ; $707d: $c3 $37 $c0


    sub e                                         ; $7080: $93
    ld h, b                                       ; $7081: $60
    rst $38                                       ; $7082: $ff
    ld l, d                                       ; $7083: $6a
    ld [bc], a                                    ; $7084: $02
    dec d                                         ; $7085: $15
    ld b, b                                       ; $7086: $40
    ld [$0970], a                                 ; $7087: $ea $70 $09
    inc bc                                        ; $708a: $03
    db $fc                                        ; $708b: $fc
    ld b, $f9                                     ; $708c: $06 $f9
    nop                                           ; $708e: $00
    rst $38                                       ; $708f: $ff
    ldh a, [$03]                                  ; $7090: $f0 $03
    ld h, e                                       ; $7092: $63
    inc bc                                        ; $7093: $03
    nop                                           ; $7094: $00
    ldh [rNR32], a                                ; $7095: $e0 $1c
    ldh [rNR32], a                                ; $7097: $e0 $1c
    ld hl, sp+$1e                                 ; $7099: $f8 $1e
    cp b                                          ; $709b: $b8
    ld a, $00                                     ; $709c: $3e $00
    sbc a                                         ; $709e: $9f
    ld a, h                                       ; $709f: $7c
    rra                                           ; $70a0: $1f
    ld a, h                                       ; $70a1: $7c
    ccf                                           ; $70a2: $3f
    inc a                                         ; $70a3: $3c
    ccf                                           ; $70a4: $3f
    nop                                           ; $70a5: $00
    nop                                           ; $70a6: $00
    sbc h                                         ; $70a7: $9c
    ld h, e                                       ; $70a8: $63
    sbc a                                         ; $70a9: $9f
    ld h, b                                       ; $70aa: $60
    add a                                         ; $70ab: $87
    ld a, b                                       ; $70ac: $78
    add b                                         ; $70ad: $80
    jr jr_0cb_70b0                                ; $70ae: $18 $00

jr_0cb_70b0:
    add e                                         ; $70b0: $83
    nop                                           ; $70b1: $00
    ld bc, $01c6                                  ; $70b2: $01 $c6 $01
    cp $1b                                        ; $70b5: $fe $1b
    inc a                                         ; $70b7: $3c
    nop                                           ; $70b8: $00
    rra                                           ; $70b9: $1f
    add b                                         ; $70ba: $80
    inc bc                                        ; $70bb: $03
    add b                                         ; $70bc: $80
    rra                                           ; $70bd: $1f
    inc e                                         ; $70be: $1c
    rra                                           ; $70bf: $1f
    ld a, h                                       ; $70c0: $7c
    nop                                           ; $70c1: $00
    sbc [hl]                                      ; $70c2: $9e
    ld h, [hl]                                    ; $70c3: $66
    rst $18                                       ; $70c4: $df
    ld b, $01                                     ; $70c5: $06 $01
    ldh a, [rSB]                                  ; $70c7: $f0 $01
    ldh a, [$08]                                  ; $70c9: $f0 $08
    nop                                           ; $70cb: $00
    ldh [$03], a                                  ; $70cc: $e0 $03
    ldh [$28], a                                  ; $70ce: $e0 $28
    nop                                           ; $70d0: $00
    db $fc                                        ; $70d1: $fc
    ld [hl-], a                                   ; $70d2: $32
    db $fc                                        ; $70d3: $fc
    nop                                           ; $70d4: $00
    jr nc, jr_0cb_7113                            ; $70d5: $30 $3c

    nop                                           ; $70d7: $00
    rst $20                                       ; $70d8: $e7
    inc bc                                        ; $70d9: $03
    rst $20                                       ; $70da: $e7
    adc h                                         ; $70db: $8c
    or e                                          ; $70dc: $b3
    db $10                                        ; $70dd: $10
    add b                                         ; $70de: $80
    add a                                         ; $70df: $87
    ldh a, [rSC]                                  ; $70e0: $f0 $02
    nop                                           ; $70e2: $00
    rst $30                                       ; $70e3: $f7
    rlca                                          ; $70e4: $07
    add [hl]                                      ; $70e5: $86
    ld a, a                                       ; $70e6: $7f
    nop                                           ; $70e7: $00
    ld e, $27                                     ; $70e8: $1e $27
    ld e, $27                                     ; $70ea: $1e $27
    ld [$06f0], sp                                ; $70ec: $08 $f0 $06
    ldh [rP1], a                                  ; $70ef: $e0 $00
    ld b, $e0                                     ; $70f1: $06 $e0
    rst $18                                       ; $70f3: $df
    nop                                           ; $70f4: $00
    ret c                                         ; $70f5: $d8

    rlca                                          ; $70f6: $07
    ldh [$e7], a                                  ; $70f7: $e0 $e7
    nop                                           ; $70f9: $00
    rst $20                                       ; $70fa: $e7
    rst $38                                       ; $70fb: $ff
    rst $20                                       ; $70fc: $e7
    rst $20                                       ; $70fd: $e7
    ldh [$e6], a                                  ; $70fe: $e0 $e6
    pop hl                                        ; $7100: $e1

Jump_0cb_7101:
    rst $20                                       ; $7101: $e7
    nop                                           ; $7102: $00
    rlca                                          ; $7103: $07
    reti                                          ; $7104: $d9


    rlca                                          ; $7105: $07
    reti                                          ; $7106: $d9


    rra                                           ; $7107: $1f
    pop bc                                        ; $7108: $c1
    ld c, $00                                     ; $7109: $0e $00
    nop                                           ; $710b: $00
    ld c, $c0                                     ; $710c: $0e $c0
    ld e, $e0                                     ; $710e: $1e $e0
    add b                                         ; $7110: $80
    ld a, b                                       ; $7111: $78
    rlca                                          ; $7112: $07

jr_0cb_7113:
    ldh [rP1], a                                  ; $7113: $e0 $00
    rlca                                          ; $7115: $07
    ldh [$7f], a                                  ; $7116: $e0 $7f
    ld hl, sp+$79                                 ; $7118: $f8 $79
    cp $78                                        ; $711a: $fe $78
    ld a, [hl]                                    ; $711c: $7e
    nop                                           ; $711d: $00
    ld hl, sp+$7e                                 ; $711e: $f8 $7e
    rst $00                                       ; $7120: $c7
    jr jr_0cb_7133                                ; $7121: $18 $10

    ldh [$f8], a                                  ; $7123: $e0 $f8
    rrca                                          ; $7125: $0f

jr_0cb_7126:
    nop                                           ; $7126: $00
    ld hl, sp+$0f                                 ; $7127: $f8 $0f
    ld c, a                                       ; $7129: $4f
    adc a                                         ; $712a: $8f
    ld c, [hl]                                    ; $712b: $4e
    adc a                                         ; $712c: $8f
    ret nz                                        ; $712d: $c0

    add hl, sp                                    ; $712e: $39
    nop                                           ; $712f: $00
    ld bc, $0779                                  ; $7130: $01 $79 $07

jr_0cb_7133:
    ld a, c                                       ; $7133: $79
    sbc $c0                                       ; $7134: $de $c0
    sbc $c0                                       ; $7136: $de $c0
    nop                                           ; $7138: $00
    rrca                                          ; $7139: $0f
    ldh a, [$0e]                                  ; $713a: $f0 $0e
    pop af                                        ; $713c: $f1
    nop                                           ; $713d: $00
    pop bc                                        ; $713e: $c1
    nop                                           ; $713f: $00
    ret nz                                        ; $7140: $c0

    nop                                           ; $7141: $00
    add [hl]                                      ; $7142: $86
    ldh a, [$86]                                  ; $7143: $f0 $86
    ld sp, hl                                     ; $7145: $f9
    sbc [hl]                                      ; $7146: $9e
    ldh [$f9], a                                  ; $7147: $e0 $f9
    ldh [rP1], a                                  ; $7149: $e0 $00
    add hl, bc                                    ; $714b: $09
    nop                                           ; $714c: $00
    rrca                                          ; $714d: $0f
    nop                                           ; $714e: $00
    ld h, a                                       ; $714f: $67
    jr jr_0cb_71b2                                ; $7150: $18 $60

    dec de                                        ; $7152: $1b
    nop                                           ; $7153: $00
    ei                                            ; $7154: $fb
    jp $c3fb                                      ; $7155: $c3 $fb $c3


    jr nc, jr_0cb_7126                            ; $7158: $30 $cc

    dec a                                         ; $715a: $3d
    ret nz                                        ; $715b: $c0

    nop                                           ; $715c: $00
    ccf                                           ; $715d: $3f
    add d                                         ; $715e: $82
    sbc a                                         ; $715f: $9f
    ld e, $9f                                     ; $7160: $1e $9f
    ld e, $12                                     ; $7162: $1e $12
    sub d                                         ; $7164: $92
    nop                                           ; $7165: $00
    nop                                           ; $7166: $00
    jr jr_0cb_718a                                ; $7167: $18 $21

    ret c                                         ; $7169: $d8

    rlca                                          ; $716a: $07
    and $06                                       ; $716b: $e6 $06
    and $00                                       ; $716d: $e6 $00
    ld e, $3f                                     ; $716f: $1e $3f
    rst $18                                       ; $7171: $df
    cp $c1                                        ; $7172: $fe $c1
    cp $d8                                        ; $7174: $fe $d8
    rst $00                                       ; $7176: $c7
    nop                                           ; $7177: $00
    sbc $c0                                       ; $7178: $de $c0
    ld [bc], a                                    ; $717a: $02
    ld [hl], b                                    ; $717b: $70
    db $10                                        ; $717c: $10
    rrca                                          ; $717d: $0f
    rra                                           ; $717e: $1f
    inc bc                                        ; $717f: $03
    nop                                           ; $7180: $00
    sbc a                                         ; $7181: $9f
    di                                            ; $7182: $f3
    sub b                                         ; $7183: $90
    di                                            ; $7184: $f3
    ldh a, [$f3]                                  ; $7185: $f0 $f3
    ldh a, [$f0]                                  ; $7187: $f0 $f0
    nop                                           ; $7189: $00

jr_0cb_718a:
    ccf                                           ; $718a: $3f
    rlca                                          ; $718b: $07
    ccf                                           ; $718c: $3f
    rlca                                          ; $718d: $07
    ld [bc], a                                    ; $718e: $02
    ld [hl], c                                    ; $718f: $71
    rlca                                          ; $7190: $07
    ld a, e                                       ; $7191: $7b
    nop                                           ; $7192: $00
    rlca                                          ; $7193: $07
    ld a, e                                       ; $7194: $7b
    inc a                                         ; $7195: $3c
    ld bc, $c13d                                  ; $7196: $01 $3d $c1
    nop                                           ; $7199: $00
    rst $30                                       ; $719a: $f7
    nop                                           ; $719b: $00
    ld h, [hl]                                    ; $719c: $66
    rst $30                                       ; $719d: $f7
    ld l, [hl]                                    ; $719e: $6e
    rst $30                                       ; $719f: $f7
    add hl, de                                    ; $71a0: $19
    rst $20                                       ; $71a1: $e7
    rst $18                                       ; $71a2: $df
    rst $20                                       ; $71a3: $e7
    ld b, b                                       ; $71a4: $40
    call c, Call_000_00f5                         ; $71a5: $dc $f5 $00
    inc sp                                        ; $71a8: $33
    inc bc                                        ; $71a9: $03
    inc sp                                        ; $71aa: $33
    ld b, e                                       ; $71ab: $43
    rst $20                                       ; $71ac: $e7
    rra                                           ; $71ad: $1f
    nop                                           ; $71ae: $00
    rst $20                                       ; $71af: $e7
    rra                                           ; $71b0: $1f
    sbc [hl]                                      ; $71b1: $9e

jr_0cb_71b2:
    ldh [$86], a                                  ; $71b2: $e0 $86
    ld hl, sp-$3a                                 ; $71b4: $f8 $c6
    jr c, jr_0cb_71b8                             ; $71b6: $38 $00

jr_0cb_71b8:
    ret nz                                        ; $71b8: $c0

    jr c, jr_0cb_71bb                             ; $71b9: $38 $00

jr_0cb_71bb:
    rst $38                                       ; $71bb: $ff
    nop                                           ; $71bc: $00
    rra                                           ; $71bd: $1f
    ld b, $19                                     ; $71be: $06 $19
    nop                                           ; $71c0: $00
    ld b, $19                                     ; $71c1: $06 $19
    ld de, $c1ed                                  ; $71c3: $11 $ed $c1
    rst $20                                       ; $71c6: $e7
    ret nz                                        ; $71c7: $c0

    and $80                                       ; $71c8: $e6 $80
    add [hl]                                      ; $71ca: $86
    ld [$001e], sp                                ; $71cb: $08 $1e $00
    ld e, $00                                     ; $71ce: $1e $00
    ld b, $06                                     ; $71d0: $06 $06
    ld b, $00                                     ; $71d2: $06 $00
    adc a                                         ; $71d4: $8f
    ret nz                                        ; $71d5: $c0

    pop bc                                        ; $71d6: $c1
    adc $c1                                       ; $71d7: $ce $c1
    rst $00                                       ; $71d9: $c7
    ld hl, sp-$39                                 ; $71da: $f8 $c7
    nop                                           ; $71dc: $00
    ld hl, sp+$1f                                 ; $71dd: $f8 $1f
    ld a, b                                       ; $71df: $78
    jr @+$7a                                      ; $71e0: $18 $78

    nop                                           ; $71e2: $00
    nop                                           ; $71e3: $00
    ld hl, sp+$00                                 ; $71e4: $f8 $00
    sub [hl]                                      ; $71e6: $96
    jr jr_0cb_71f0                                ; $71e7: $18 $07

    nop                                           ; $71e9: $00
    ld bc, $003c                                  ; $71ea: $01 $3c $00
    inc a                                         ; $71ed: $3c
    ld b, b                                       ; $71ee: $40
    nop                                           ; $71ef: $00

jr_0cb_71f0:
    add hl, sp                                    ; $71f0: $39
    ld bc, $00e0                                  ; $71f1: $01 $e0 $00
    ldh [$90], a                                  ; $71f4: $e0 $90
    nop                                           ; $71f6: $00
    ld c, b                                       ; $71f7: $48
    nop                                           ; $71f8: $00
    nop                                           ; $71f9: $00
    jp nz, Jump_0cb_4600                          ; $71fa: $c2 $00 $46

    nop                                           ; $71fd: $00
    add e                                         ; $71fe: $83
    nop                                           ; $71ff: $00
    adc h                                         ; $7200: $8c
    inc b                                         ; $7201: $04
    nop                                           ; $7202: $00
    ld e, h                                       ; $7203: $5c
    nop                                           ; $7204: $00
    adc b                                         ; $7205: $88
    nop                                           ; $7206: $00
    ld bc, $4018                                  ; $7207: $01 $18 $40
    nop                                           ; $720a: $00
    ld bc, $001a                                  ; $720b: $01 $1a $00
    ld [hl], a                                    ; $720e: $77
    nop                                           ; $720f: $00
    ld c, d                                       ; $7210: $4a
    nop                                           ; $7211: $00
    ret nz                                        ; $7212: $c0

    db $10                                        ; $7213: $10
    stop                                          ; $7214: $10 $00
    jr nz, jr_0cb_7218                            ; $7216: $20 $00

jr_0cb_7218:
    inc c                                         ; $7218: $0c
    nop                                           ; $7219: $00
    jr nc, jr_0cb_721c                            ; $721a: $30 $00

jr_0cb_721c:
    inc [hl]                                      ; $721c: $34
    nop                                           ; $721d: $00
    db $10                                        ; $721e: $10
    ld e, d                                       ; $721f: $5a
    nop                                           ; $7220: $00
    jr jr_0cb_7243                                ; $7221: $18 $20

    db $10                                        ; $7223: $10
    ld hl, $0400                                  ; $7224: $21 $00 $04
    nop                                           ; $7227: $00
    nop                                           ; $7228: $00
    ld d, b                                       ; $7229: $50
    nop                                           ; $722a: $00
    inc h                                         ; $722b: $24
    nop                                           ; $722c: $00
    jp $cc00                                      ; $722d: $c3 $00 $cc


    nop                                           ; $7230: $00

jr_0cb_7231:
    nop                                           ; $7231: $00
    db $e3                                        ; $7232: $e3
    ldh [$f8], a                                  ; $7233: $e0 $f8
    ldh [rSVBK], a                                ; $7235: $e0 $70
    rrca                                          ; $7237: $0f
    ld [hl], e                                    ; $7238: $73
    rrca                                          ; $7239: $0f
    nop                                           ; $723a: $00
    di                                            ; $723b: $f3
    rrca                                          ; $723c: $0f
    ldh a, [rIF]                                  ; $723d: $f0 $0f
    di                                            ; $723f: $f3
    inc bc                                        ; $7240: $03
    di                                            ; $7241: $f3
    inc bc                                        ; $7242: $03

jr_0cb_7243:
    nop                                           ; $7243: $00
    add e                                         ; $7244: $83
    or e                                          ; $7245: $b3
    sbc e                                         ; $7246: $9b
    ei                                            ; $7247: $fb
    sbc b                                         ; $7248: $98
    ld hl, sp-$80                                 ; $7249: $f8 $80
    rst $20                                       ; $724b: $e7
    ld [bc], a                                    ; $724c: $02
    nop                                           ; $724d: $00
    ld a, a                                       ; $724e: $7f
    ldh a, [$09]                                  ; $724f: $f0 $09
    ret nz                                        ; $7251: $c0

    add hl, sp                                    ; $7252: $39
    rst $28                                       ; $7253: $ef
    nop                                           ; $7254: $00
    jp $f000                                      ; $7255: $c3 $00 $f0


    rst $08                                       ; $7258: $cf
    ld hl, sp-$40                                 ; $7259: $f8 $c0
    ld a, b                                       ; $725b: $78
    nop                                           ; $725c: $00
    ld c, a                                       ; $725d: $4f
    scf                                           ; $725e: $37
    nop                                           ; $725f: $00
    rst $00                                       ; $7260: $c7
    scf                                           ; $7261: $37
    rst $20                                       ; $7262: $e7
    add a                                         ; $7263: $87
    rst $20                                       ; $7264: $e7
    sbc a                                         ; $7265: $9f
    inc bc                                        ; $7266: $03
    inc bc                                        ; $7267: $03
    nop                                           ; $7268: $00
    inc bc                                        ; $7269: $03
    jp $c739                                      ; $726a: $c3 $39 $c7


    jr c, jr_0cb_7231                             ; $726d: $38 $c2

    jr nz, jr_0cb_7243                            ; $726f: $20 $d2

    nop                                           ; $7271: $00
    ld hl, $071e                                  ; $7272: $21 $1e $07
    rra                                           ; $7275: $1f
    rst $20                                       ; $7276: $e7
    rst $20                                       ; $7277: $e7
    add $00                                       ; $7278: $c6 $00
    db $10                                        ; $727a: $10
    adc [hl]                                      ; $727b: $8e
    nop                                           ; $727c: $00
    inc e                                         ; $727d: $1c
    ld h, b                                       ; $727e: $60
    nop                                           ; $727f: $00
    xor a                                         ; $7280: $af
    nop                                           ; $7281: $00
    ei                                            ; $7282: $fb
    nop                                           ; $7283: $00
    ld b, d                                       ; $7284: $42
    or [hl]                                       ; $7285: $b6
    push bc                                       ; $7286: $c5
    nop                                           ; $7287: $00
    ld a, [c]                                     ; $7288: $f2
    nop                                           ; $7289: $00
    ld [hl], d                                    ; $728a: $72
    nop                                           ; $728b: $00
    dec a                                         ; $728c: $3d

Call_0cb_728d:
    add hl, bc                                    ; $728d: $09
    ret                                           ; $728e: $c9


    ret nc                                        ; $728f: $d0

    pop de                                        ; $7290: $d1
    nop                                           ; $7291: $00
    ld [bc], a                                    ; $7292: $02
    ld [$7420], sp                                ; $7293: $08 $20 $74
    nop                                           ; $7296: $00
    sbc h                                         ; $7297: $9c
    nop                                           ; $7298: $00
    sbc b                                         ; $7299: $98
    nop                                           ; $729a: $00
    inc d                                         ; $729b: $14
    ld a, c                                       ; $729c: $79
    nop                                           ; $729d: $00
    xor $12                                       ; $729e: $ee $12
    db $10                                        ; $72a0: $10
    dec c                                         ; $72a1: $0d
    ld e, c                                       ; $72a2: $59
    ld bc, $00c7                                  ; $72a3: $01 $c7 $00
    ld [hl], h                                    ; $72a6: $74
    rst $20                                       ; $72a7: $e7
    ld [bc], a                                    ; $72a8: $02
    nop                                           ; $72a9: $00
    jr nz, jr_0cb_72c4                            ; $72aa: $20 $18

    or c                                          ; $72ac: $b1
    ld [$ce10], sp                                ; $72ad: $08 $10 $ce
    nop                                           ; $72b0: $00
    jr jr_0cb_72b3                                ; $72b1: $18 $00

jr_0cb_72b3:
    inc b                                         ; $72b3: $04
    or c                                          ; $72b4: $b1
    nop                                           ; $72b5: $00
    ld a, [hl]                                    ; $72b6: $7e
    nop                                           ; $72b7: $00
    cp l                                          ; $72b8: $bd
    cp [hl]                                       ; $72b9: $be
    jr nz, @+$04                                  ; $72ba: $20 $02

    nop                                           ; $72bc: $00
    ld bc, $00b7                                  ; $72bd: $01 $b7 $00
    or b                                          ; $72c0: $b0
    nop                                           ; $72c1: $00
    dec sp                                        ; $72c2: $3b
    nop                                           ; $72c3: $00

jr_0cb_72c4:
    sbc d                                         ; $72c4: $9a
    ld a, [bc]                                    ; $72c5: $0a
    nop                                           ; $72c6: $00
    nop                                           ; $72c7: $00
    nop                                           ; $72c8: $00
    nop                                           ; $72c9: $00
    dec b                                         ; $72ca: $05
    nop                                           ; $72cb: $00
    ld [hl+], a                                   ; $72cc: $22
    nop                                           ; $72cd: $00
    ld e, a                                       ; $72ce: $5f
    nop                                           ; $72cf: $00

jr_0cb_72d0:
    inc b                                         ; $72d0: $04
    ld l, $00                                     ; $72d1: $2e $00
    cp a                                          ; $72d3: $bf
    nop                                           ; $72d4: $00
    ld l, l                                       ; $72d5: $6d
    ldh [rP1], a                                  ; $72d6: $e0 $00
    inc bc                                        ; $72d8: $03
    nop                                           ; $72d9: $00
    ld b, b                                       ; $72da: $40
    add l                                         ; $72db: $85
    stop                                          ; $72dc: $10 $00
    add hl, bc                                    ; $72de: $09
    nop                                           ; $72df: $00
    ld a, a                                       ; $72e0: $7f
    nop                                           ; $72e1: $00
    or $00                                        ; $72e2: $f6 $00
    ld d, b                                       ; $72e4: $50
    add c                                         ; $72e5: $81
    ld [hl], b                                    ; $72e6: $70
    nop                                           ; $72e7: $00
    ld c, d                                       ; $72e8: $4a
    ld [hl], b                                    ; $72e9: $70
    jr nz, @-$07                                  ; $72ea: $20 $f7

    nop                                           ; $72ec: $00
    db $fd                                        ; $72ed: $fd
    nop                                           ; $72ee: $00
    jr nc, jr_0cb_72d0                            ; $72ef: $30 $df

    jr nz, jr_0cb_7369                            ; $72f1: $20 $76

    jr @+$08                                      ; $72f3: $18 $06

    ld l, b                                       ; $72f5: $68
    db $fd                                        ; $72f6: $fd
    ld [bc], a                                    ; $72f7: $02
    cp a                                          ; $72f8: $bf
    ld b, b                                       ; $72f9: $40
    jr nz, @-$0f                                  ; $72fa: $20 $ef

    db $10                                        ; $72fc: $10
    ld b, $08                                     ; $72fd: $06 $08
    ld c, h                                       ; $72ff: $4c
    nop                                           ; $7300: $00
    ld l, h                                       ; $7301: $6c
    nop                                           ; $7302: $00
    and $20                                       ; $7303: $e6 $20
    nop                                           ; $7305: $00
    cp d                                          ; $7306: $ba
    or b                                          ; $7307: $b0
    nop                                           ; $7308: $00
    dec a                                         ; $7309: $3d
    ld [bc], a                                    ; $730a: $02
    rst $30                                       ; $730b: $f7
    ld [$08e5], sp                                ; $730c: $08 $e5 $08
    ld a, [de]                                    ; $730f: $1a
    db $fc                                        ; $7310: $fc
    nop                                           ; $7311: $00
    ld a, $02                                     ; $7312: $3e $02
    nop                                           ; $7314: $00
    db $fc                                        ; $7315: $fc
    nop                                           ; $7316: $00
    call c, Call_000_3a80                         ; $7317: $dc $80 $3a
    nop                                           ; $731a: $00
    or l                                          ; $731b: $b5
    ld c, d                                       ; $731c: $4a
    ld h, [hl]                                    ; $731d: $66
    sbc c                                         ; $731e: $99
    db $e4                                        ; $731f: $e4
    nop                                           ; $7320: $00
    ld [hl], b                                    ; $7321: $70
    jr nz, jr_0cb_7324                            ; $7322: $20 $00

jr_0cb_7324:
    ld h, e                                       ; $7324: $63
    sbc [hl]                                      ; $7325: $9e
    db $10                                        ; $7326: $10
    ld a, a                                       ; $7327: $7f
    add b                                         ; $7328: $80
    ld a, [$d105]                                 ; $7329: $fa $05 $d1
    jr z, jr_0cb_735c                             ; $732c: $28 $2e

    rst $20                                       ; $732e: $e7
    ld c, $00                                     ; $732f: $0e $00
    or e                                          ; $7331: $b3
    sbc l                                         ; $7332: $9d
    ld bc, $00f3                                  ; $7333: $01 $f3 $00
    scf                                           ; $7336: $37
    nop                                           ; $7337: $00
    ret nz                                        ; $7338: $c0

    sbc a                                         ; $7339: $9f
    ld h, b                                       ; $733a: $60
    ld d, $e9                                     ; $733b: $16 $e9
    xor $11                                       ; $733d: $ee $11
    rst $30                                       ; $733f: $f7
    nop                                           ; $7340: $00
    ld [$00ff], sp                                ; $7341: $08 $ff $00
    ld e, [hl]                                    ; $7344: $5e
    and c                                         ; $7345: $a1
    ld a, l                                       ; $7346: $7d
    add d                                         ; $7347: $82
    cp $00                                        ; $7348: $fe $00
    ld bc, $05fa                                  ; $734a: $01 $fa $05
    ret nz                                        ; $734d: $c0

    ccf                                           ; $734e: $3f
    db $fd                                        ; $734f: $fd
    ld [bc], a                                    ; $7350: $02
    rst $38                                       ; $7351: $ff
    nop                                           ; $7352: $00
    nop                                           ; $7353: $00
    db $eb                                        ; $7354: $eb
    inc d                                         ; $7355: $14
    rst $10                                       ; $7356: $d7
    jr z, jr_0cb_736e                             ; $7357: $28 $15

    ld [$000f], a                                 ; $7359: $ea $0f $00

jr_0cb_735c:
    ldh a, [$1f]                                  ; $735c: $f0 $1f
    ldh [$37], a                                  ; $735e: $e0 $37
    ret z                                         ; $7360: $c8

    db $fd                                        ; $7361: $fd
    ld [bc], a                                    ; $7362: $02
    sbc $00                                       ; $7363: $de $00
    ld hl, $946b                                  ; $7365: $21 $6b $94

jr_0cb_7368:
    pop hl                                        ; $7368: $e1

jr_0cb_7369:
    ld e, $92                                     ; $7369: $1e $92
    ld l, l                                       ; $736b: $6d
    ret nz                                        ; $736c: $c0

    nop                                           ; $736d: $00

jr_0cb_736e:
    ccf                                           ; $736e: $3f
    add c                                         ; $736f: $81
    ld a, [hl]                                    ; $7370: $7e
    dec bc                                        ; $7371: $0b
    db $f4                                        ; $7372: $f4
    rst $28                                       ; $7373: $ef
    db $10                                        ; $7374: $10
    rst $00                                       ; $7375: $c7
    nop                                           ; $7376: $00
    jr c, jr_0cb_7368                             ; $7377: $38 $ef

    db $10                                        ; $7379: $10
    sbc l                                         ; $737a: $9d
    ld h, d                                       ; $737b: $62
    adc b                                         ; $737c: $88
    ld [hl], a                                    ; $737d: $77
    dec b                                         ; $737e: $05
    nop                                           ; $737f: $00
    ld a, [$fc03]                                 ; $7380: $fa $03 $fc
    ld bc, $fafe                                  ; $7383: $01 $fe $fa
    dec b                                         ; $7386: $05
    ei                                            ; $7387: $fb
    nop                                           ; $7388: $00
    inc b                                         ; $7389: $04
    cp $01                                        ; $738a: $fe $01
    db $ec                                        ; $738c: $ec
    inc de                                        ; $738d: $13
    ld c, d                                       ; $738e: $4a
    or l                                          ; $738f: $b5
    inc [hl]                                      ; $7390: $34
    nop                                           ; $7391: $00
    bit 0, b                                      ; $7392: $cb $40
    cp a                                          ; $7394: $bf
    add b                                         ; $7395: $80
    ld a, a                                       ; $7396: $7f
    rst $38                                       ; $7397: $ff
    nop                                           ; $7398: $00
    ld c, a                                       ; $7399: $4f
    nop                                           ; $739a: $00
    or b                                          ; $739b: $b0
    daa                                           ; $739c: $27
    ret c                                         ; $739d: $d8

    ld e, l                                       ; $739e: $5d
    and d                                         ; $739f: $a2
    ld [$51f7], sp                                ; $73a0: $08 $f7 $51
    ld bc, $65ae                                  ; $73a3: $01 $ae $65
    sbc d                                         ; $73a6: $9a
    ret nz                                        ; $73a7: $c0

    ccf                                           ; $73a8: $3f
    rst $38                                       ; $73a9: $ff
    nop                                           ; $73aa: $00
    jr nz, jr_0cb_73b5                            ; $73ab: $20 $08

    nop                                           ; $73ad: $00
    and a                                         ; $73ae: $a7
    ld e, b                                       ; $73af: $58
    db $fc                                        ; $73b0: $fc
    inc bc                                        ; $73b1: $03
    ld hl, sp+$07                                 ; $73b2: $f8 $07
    db $f4                                        ; $73b4: $f4

jr_0cb_73b5:
    dec bc                                        ; $73b5: $0b
    nop                                           ; $73b6: $00
    and b                                         ; $73b7: $a0
    ld e, a                                       ; $73b8: $5f
    rst $18                                       ; $73b9: $df
    jr nz, @+$7d                                  ; $73ba: $20 $7b

    add h                                         ; $73bc: $84
    sub c                                         ; $73bd: $91
    ld l, [hl]                                    ; $73be: $6e
    nop                                           ; $73bf: $00
    dec hl                                        ; $73c0: $2b
    call nc, $f10e                                ; $73c1: $d4 $0e $f1
    ld a, [bc]                                    ; $73c4: $0a
    push af                                       ; $73c5: $f5
    ld b, b                                       ; $73c6: $40
    cp a                                          ; $73c7: $bf
    nop                                           ; $73c8: $00
    jr z, @-$27                                   ; $73c9: $28 $d7

    nop                                           ; $73cb: $00
    rst $38                                       ; $73cc: $ff

jr_0cb_73cd:
    inc [hl]                                      ; $73cd: $34
    set 5, a                                      ; $73ce: $cb $ef
    db $10                                        ; $73d0: $10
    inc d                                         ; $73d1: $14
    rst $38                                       ; $73d2: $ff
    nop                                           ; $73d3: $00
    scf                                           ; $73d4: $37
    jp nc, Jump_0cb_7101                          ; $73d5: $d2 $01 $71

    xor d                                         ; $73d8: $aa
    nop                                           ; $73d9: $00
    add b                                         ; $73da: $80
    ld a, a                                       ; $73db: $7f
    nop                                           ; $73dc: $00
    ld c, b                                       ; $73dd: $48
    or a                                          ; $73de: $b7
    inc b                                         ; $73df: $04
    ei                                            ; $73e0: $fb
    ld b, e                                       ; $73e1: $43
    cp h                                          ; $73e2: $bc
    rst $20                                       ; $73e3: $e7
    jr jr_0cb_73e6                                ; $73e4: $18 $00

jr_0cb_73e6:
    db $db                                        ; $73e6: $db
    inc h                                         ; $73e7: $24
    xor a                                         ; $73e8: $af
    ld d, b                                       ; $73e9: $50
    cp $01                                        ; $73ea: $fe $01
    ld l, a                                       ; $73ec: $6f
    sub b                                         ; $73ed: $90
    nop                                           ; $73ee: $00
    ld b, a                                       ; $73ef: $47
    cp b                                          ; $73f0: $b8
    add e                                         ; $73f1: $83
    ld a, h                                       ; $73f2: $7c
    add a                                         ; $73f3: $87
    ld a, b                                       ; $73f4: $78
    add d                                         ; $73f5: $82
    ld a, l                                       ; $73f6: $7d
    nop                                           ; $73f7: $00
    inc b                                         ; $73f8: $04
    ei                                            ; $73f9: $fb
    or b                                          ; $73fa: $b0
    ld c, a                                       ; $73fb: $4f
    ld l, a                                       ; $73fc: $6f
    sub b                                         ; $73fd: $90
    add a                                         ; $73fe: $87
    ld a, b                                       ; $73ff: $78
    nop                                           ; $7400: $00
    push bc                                       ; $7401: $c5
    ld a, [hl-]                                   ; $7402: $3a
    ld b, d                                       ; $7403: $42
    cp l                                          ; $7404: $bd
    add a                                         ; $7405: $87
    ld a, b                                       ; $7406: $78
    inc b                                         ; $7407: $04
    ei                                            ; $7408: $fb
    nop                                           ; $7409: $00
    cpl                                           ; $740a: $2f
    ret nc                                        ; $740b: $d0

    ld a, e                                       ; $740c: $7b
    add h                                         ; $740d: $84
    rst $08                                       ; $740e: $cf
    jr nc, jr_0cb_7411                            ; $740f: $30 $00

jr_0cb_7411:
    rst $38                                       ; $7411: $ff
    nop                                           ; $7412: $00
    or d                                          ; $7413: $b2
    ld c, l                                       ; $7414: $4d
    db $e4                                        ; $7415: $e4
    dec de                                        ; $7416: $1b
    ld b, b                                       ; $7417: $40
    cp a                                          ; $7418: $bf
    ldh [$1f], a                                  ; $7419: $e0 $1f
    nop                                           ; $741b: $00
    or b                                          ; $741c: $b0
    ld c, a                                       ; $741d: $4f
    ld hl, sp+$07                                 ; $741e: $f8 $07
    and $19                                       ; $7420: $e6 $19
    ld bc, $00fe                                  ; $7422: $01 $fe $00
    or e                                          ; $7425: $b3
    ld c, h                                       ; $7426: $4c
    ld a, l                                       ; $7427: $7d
    add d                                         ; $7428: $82
    dec l                                         ; $7429: $2d
    jp nc, $807f                                  ; $742a: $d2 $7f $80

    jr nz, jr_0cb_73cd                            ; $742d: $20 $9e

    ld h, c                                       ; $742f: $61
    db $f4                                        ; $7430: $f4
    ld [$1ee1], sp                                ; $7431: $08 $e1 $1e
    ld [hl], e                                    ; $7434: $73
    adc h                                         ; $7435: $8c
    ldh a, [rP1]                                  ; $7436: $f0 $00
    rrca                                          ; $7438: $0f
    or b                                          ; $7439: $b0
    ld c, a                                       ; $743a: $4f
    ld a, [$ff05]                                 ; $743b: $fa $05 $ff
    nop                                           ; $743e: $00
    ld h, a                                       ; $743f: $67
    nop                                           ; $7440: $00
    sbc b                                         ; $7441: $98
    cp $01                                        ; $7442: $fe $01
    inc d                                         ; $7444: $14
    db $eb                                        ; $7445: $eb
    or b                                          ; $7446: $b0
    ld c, a                                       ; $7447: $4f
    ret nz                                        ; $7448: $c0

    nop                                           ; $7449: $00
    ccf                                           ; $744a: $3f
    dec b                                         ; $744b: $05
    ld a, [$6c93]                                 ; $744c: $fa $93 $6c
    cp a                                          ; $744f: $bf
    ld b, b                                       ; $7450: $40
    dec l                                         ; $7451: $2d
    nop                                           ; $7452: $00
    jp nc, Jump_0cb_40bf                          ; $7453: $d2 $bf $40

    ld l, h                                       ; $7456: $6c
    sub e                                         ; $7457: $93
    ld hl, sp+$07                                 ; $7458: $f8 $07
    ret nc                                        ; $745a: $d0

    nop                                           ; $745b: $00
    cpl                                           ; $745c: $2f
    ld sp, hl                                     ; $745d: $f9
    ld b, $b7                                     ; $745e: $06 $b7
    ld c, b                                       ; $7460: $48
    ld a, [hl]                                    ; $7461: $7e
    add c                                         ; $7462: $81
    cp a                                          ; $7463: $bf
    nop                                           ; $7464: $00
    ld b, b                                       ; $7465: $40
    db $fd                                        ; $7466: $fd
    ld [bc], a                                    ; $7467: $02
    pop hl                                        ; $7468: $e1
    ld e, $a3                                     ; $7469: $1e $a3
    ld e, h                                       ; $746b: $5c
    jp Jump_000_3c00                              ; $746c: $c3 $00 $3c


    pop hl                                        ; $746f: $e1
    ld e, $e0                                     ; $7470: $1e $e0
    rra                                           ; $7472: $1f
    db $f4                                        ; $7473: $f4
    dec bc                                        ; $7474: $0b
    cp $74                                        ; $7475: $fe $74

jr_0cb_7477:
    ld bc, $096a                                  ; $7477: $01 $6a $09
    ld hl, sp+$09                                 ; $747a: $f8 $09
    ldh [$09], a                                  ; $747c: $e0 $09
    db $e3                                        ; $747e: $e3
    sub h                                         ; $747f: $94
    ld [bc], a                                    ; $7480: $02
    or b                                          ; $7481: $b0
    nop                                           ; $7482: $00
    jr nz, jr_0cb_7477                            ; $7483: $20 $f2

    dec c                                         ; $7485: $0d
    ld [$9f0a], sp                                ; $7486: $08 $0a $9f
    nop                                           ; $7489: $00
    add hl, de                                    ; $748a: $19
    nop                                           ; $748b: $00
    add hl, sp                                    ; $748c: $39
    add b                                         ; $748d: $80
    ld a, [hl]                                    ; $748e: $7e
    ld [bc], a                                    ; $748f: $02
    inc b                                         ; $7490: $04
    nop                                           ; $7491: $00
    db $10                                        ; $7492: $10
    inc bc                                        ; $7493: $03
    add sp, $01                                   ; $7494: $e8 $01
    nop                                           ; $7496: $00
    rst $38                                       ; $7497: $ff
    nop                                           ; $7498: $00
    cp a                                          ; $7499: $bf
    ld b, b                                       ; $749a: $40
    or a                                          ; $749b: $b7
    ld c, b                                       ; $749c: $48
    ld sp, hl                                     ; $749d: $f9
    ld b, $00                                     ; $749e: $06 $00
    cp e                                          ; $74a0: $bb
    ld b, h                                       ; $74a1: $44
    jp z, $9235                                   ; $74a2: $ca $35 $92

    ld l, l                                       ; $74a5: $6d
    ld [$00f7], sp                                ; $74a6: $08 $f7 $00
    or $00                                        ; $74a9: $f6 $00
    db $fd                                        ; $74ab: $fd
    nop                                           ; $74ac: $00
    xor [hl]                                      ; $74ad: $ae
    ld d, b                                       ; $74ae: $50
    ei                                            ; $74af: $fb
    nop                                           ; $74b0: $00
    nop                                           ; $74b1: $00
    sbc $20                                       ; $74b2: $de $20
    di                                            ; $74b4: $f3
    inc c                                         ; $74b5: $0c
    ld d, a                                       ; $74b6: $57
    xor b                                         ; $74b7: $a8
    ld a, h                                       ; $74b8: $7c
    add b                                         ; $74b9: $80
    nop                                           ; $74ba: $00
    ld e, e                                       ; $74bb: $5b
    nop                                           ; $74bc: $00
    ld bc, $a600                                  ; $74bd: $01 $00 $a6
    nop                                           ; $74c0: $00
    dec bc                                        ; $74c1: $0b
    nop                                           ; $74c2: $00
    nop                                           ; $74c3: $00
    sbc l                                         ; $74c4: $9d
    nop                                           ; $74c5: $00
    dec hl                                        ; $74c6: $2b
    nop                                           ; $74c7: $00
    ld e, e                                       ; $74c8: $5b
    nop                                           ; $74c9: $00
    sub a                                         ; $74ca: $97
    nop                                           ; $74cb: $00
    nop                                           ; $74cc: $00
    rst $38                                       ; $74cd: $ff
    nop                                           ; $74ce: $00
    cp [hl]                                       ; $74cf: $be
    ld b, c                                       ; $74d0: $41
    push af                                       ; $74d1: $f5
    ld a, [bc]                                    ; $74d2: $0a
    sbc l                                         ; $74d3: $9d
    ld h, d                                       ; $74d4: $62
    nop                                           ; $74d5: $00
    rst $30                                       ; $74d6: $f7
    ld [$ab54], sp                                ; $74d7: $08 $54 $ab
    sbc l                                         ; $74da: $9d
    ld h, d                                       ; $74db: $62
    ld b, h                                       ; $74dc: $44
    cp e                                          ; $74dd: $bb
    nop                                           ; $74de: $00
    rst $38                                       ; $74df: $ff
    nop                                           ; $74e0: $00
    db $fd                                        ; $74e1: $fd
    ld [bc], a                                    ; $74e2: $02
    and a                                         ; $74e3: $a7
    ld e, b                                       ; $74e4: $58
    cp $01                                        ; $74e5: $fe $01
    nop                                           ; $74e7: $00
    ld e, c                                       ; $74e8: $59
    and [hl]                                      ; $74e9: $a6
    dec hl                                        ; $74ea: $2b
    call nc, Call_0cb_728d                        ; $74eb: $d4 $8d $72
    ld [$00f7], sp                                ; $74ee: $08 $f7 $00
    push af                                       ; $74f1: $f5
    nop                                           ; $74f2: $00
    ld sp, hl                                     ; $74f3: $f9
    nop                                           ; $74f4: $00
    push de                                       ; $74f5: $d5
    nop                                           ; $74f6: $00
    ld [$0100], a                                 ; $74f7: $ea $00 $01
    or $00                                        ; $74fa: $f6 $00
    db $d3                                        ; $74fc: $d3
    nop                                           ; $74fd: $00
    add sp, $00                                   ; $74fe: $e8 $00
    cp $34                                        ; $7500: $fe $34
    nop                                           ; $7502: $00
    nop                                           ; $7503: $00

jr_0cb_7504:
    or e                                          ; $7504: $b3
    nop                                           ; $7505: $00
    rla                                           ; $7506: $17
    nop                                           ; $7507: $00
    ld b, a                                       ; $7508: $47
    nop                                           ; $7509: $00
    xor e                                         ; $750a: $ab
    nop                                           ; $750b: $00
    ld bc, $0077                                  ; $750c: $01 $77 $00
    xor a                                         ; $750f: $af
    nop                                           ; $7510: $00
    ld a, a                                       ; $7511: $7f
    nop                                           ; $7512: $00
    push af                                       ; $7513: $f5
    jr jr_0cb_7516                                ; $7514: $18 $00

jr_0cb_7516:
    ld de, $00f5                                  ; $7516: $11 $f5 $00
    jp z, Jump_000_3020                           ; $7519: $ca $20 $30

    ld d, a                                       ; $751c: $57
    nop                                           ; $751d: $00
    cp e                                          ; $751e: $bb
    jr nz, jr_0cb_7571                            ; $751f: $20 $50

    add b                                         ; $7521: $80

jr_0cb_7522:
    ld h, c                                       ; $7522: $61
    nop                                           ; $7523: $00
    rst $38                                       ; $7524: $ff
    inc h                                         ; $7525: $24
    rst $38                                       ; $7526: $ff
    ld [hl], b                                    ; $7527: $70
    rst $38                                       ; $7528: $ff
    ld h, d                                       ; $7529: $62
    rst $38                                       ; $752a: $ff
    ld b, b                                       ; $752b: $40
    db $ec                                        ; $752c: $ec
    ld [bc], a                                    ; $752d: $02
    nop                                           ; $752e: $00
    ld c, [hl]                                    ; $752f: $4e
    rst $38                                       ; $7530: $ff
    rst $18                                       ; $7531: $df
    jr nz, jr_0cb_754f                            ; $7532: $20 $1b

    db $e4                                        ; $7534: $e4
    nop                                           ; $7535: $00
    ld c, a                                       ; $7536: $4f
    or b                                          ; $7537: $b0
    ld l, l                                       ; $7538: $6d
    sub d                                         ; $7539: $92
    ld e, c                                       ; $753a: $59
    and [hl]                                      ; $753b: $a6
    inc b                                         ; $753c: $04
    ei                                            ; $753d: $fb
    nop                                           ; $753e: $00
    db $10                                        ; $753f: $10
    rst $28                                       ; $7540: $ef
    jr nz, jr_0cb_7522                            ; $7541: $20 $df

    rst $18                                       ; $7543: $df
    nop                                           ; $7544: $00
    ld l, [hl]                                    ; $7545: $6e
    sub c                                         ; $7546: $91
    nop                                           ; $7547: $00
    ld a, e                                       ; $7548: $7b
    add h                                         ; $7549: $84
    ret                                           ; $754a: $c9


    ld [hl], $ec                                  ; $754b: $36 $ec
    inc de                                        ; $754d: $13
    pop bc                                        ; $754e: $c1

jr_0cb_754f:
    ld a, $08                                     ; $754f: $3e $08
    jr nc, jr_0cb_7522                            ; $7551: $30 $cf

    inc h                                         ; $7553: $24
    db $db                                        ; $7554: $db
    jr nc, jr_0cb_755f                            ; $7555: $30 $08

    inc b                                         ; $7557: $04
    rst $38                                       ; $7558: $ff
    ld [hl+], a                                   ; $7559: $22
    nop                                           ; $755a: $00
    rst $38                                       ; $755b: $ff
    rlca                                          ; $755c: $07
    rst $38                                       ; $755d: $ff
    inc bc                                        ; $755e: $03

jr_0cb_755f:
    rst $38                                       ; $755f: $ff
    ld d, e                                       ; $7560: $53
    rst $38                                       ; $7561: $ff
    jr nc, jr_0cb_7504                            ; $7562: $30 $a0

    ld a, $00                                     ; $7564: $3e $00
    ld [bc], a                                    ; $7566: $02
    ld b, d                                       ; $7567: $42
    nop                                           ; $7568: $00
    ld b, $ff                                     ; $7569: $06 $ff
    daa                                           ; $756b: $27
    rst $38                                       ; $756c: $ff
    ld a, $b4                                     ; $756d: $3e $b4
    ld [bc], a                                    ; $756f: $02
    nop                                           ; $7570: $00

jr_0cb_7571:
    db $10                                        ; $7571: $10
    ld c, [hl]                                    ; $7572: $4e
    nop                                           ; $7573: $00
    ld d, d                                       ; $7574: $52
    ld [$0a02], sp                                ; $7575: $08 $02 $0a
    nop                                           ; $7578: $00
    ld e, b                                       ; $7579: $58
    rst $38                                       ; $757a: $ff
    inc b                                         ; $757b: $04
    ld a, h                                       ; $757c: $7c
    rst $38                                       ; $757d: $ff
    ld a, [hl]                                    ; $757e: $7e
    rst $38                                       ; $757f: $ff
    call c, $6050                                 ; $7580: $dc $50 $60
    db $fc                                        ; $7583: $fc
    inc bc                                        ; $7584: $03
    nop                                           ; $7585: $00
    or [hl]                                       ; $7586: $b6
    ld c, c                                       ; $7587: $49
    ld sp, hl                                     ; $7588: $f9
    ld b, $c2                                     ; $7589: $06 $c2
    dec a                                         ; $758b: $3d
    cp b                                          ; $758c: $b8
    ld b, a                                       ; $758d: $47
    ld h, $51                                     ; $758e: $26 $51
    xor [hl]                                      ; $7590: $ae
    ld a, d                                       ; $7591: $7a
    nop                                           ; $7592: $00
    db $db                                        ; $7593: $db
    rst $38                                       ; $7594: $ff
    ld h, b                                       ; $7595: $60
    ld h, b                                       ; $7596: $60
    add [hl]                                      ; $7597: $86
    ld [$001a], sp                                ; $7598: $08 $1a $00
    rst $38                                       ; $759b: $ff
    ld e, d                                       ; $759c: $5a
    rst $38                                       ; $759d: $ff
    db $eb                                        ; $759e: $eb
    rst $38                                       ; $759f: $ff
    cp a                                          ; $75a0: $bf
    rst $38                                       ; $75a1: $ff
    ld a, d                                       ; $75a2: $7a
    jr nz, @+$01                                  ; $75a3: $20 $ff

    inc de                                        ; $75a5: $13
    ld e, d                                       ; $75a6: $5a
    nop                                           ; $75a7: $00
    adc [hl]                                      ; $75a8: $8e
    rst $38                                       ; $75a9: $ff
    rst $00                                       ; $75aa: $c7
    rst $38                                       ; $75ab: $ff
    ldh a, [rP1]                                  ; $75ac: $f0 $00
    rst $38                                       ; $75ae: $ff
    ld [hl], b                                    ; $75af: $70

jr_0cb_75b0:
    db $fc                                        ; $75b0: $fc
    di                                            ; $75b1: $f3
    ld hl, sp-$07                                 ; $75b2: $f8 $f9
    ld hl, sp-$08                                 ; $75b4: $f8 $f8
    jr nz, jr_0cb_75b0                            ; $75b6: $20 $f8

    nop                                           ; $75b8: $00
    xor h                                         ; $75b9: $ac
    nop                                           ; $75ba: $00
    ld [hl], $ff                                  ; $75bb: $36 $ff
    ld c, $ff                                     ; $75bd: $0e $ff
    ld c, $00                                     ; $75bf: $0e $00
    rra                                           ; $75c1: $1f
    and $0f                                       ; $75c2: $e6 $0f
    rst $28                                       ; $75c4: $ef
    rrca                                          ; $75c5: $0f
    ld c, a                                       ; $75c6: $4f
    rrca                                          ; $75c7: $0f
    ld [hl], e                                    ; $75c8: $73
    dec bc                                        ; $75c9: $0b
    rst $38                                       ; $75ca: $ff
    ld h, e                                       ; $75cb: $63
    rst $38                                       ; $75cc: $ff
    rrca                                          ; $75cd: $0f
    ld [hl+], a                                   ; $75ce: $22
    nop                                           ; $75cf: $00
    or $6c                                        ; $75d0: $f6 $6c
    nop                                           ; $75d2: $00
    ld bc, $0008                                  ; $75d3: $01 $08 $00
    dec sp                                        ; $75d6: $3b
    rst $38                                       ; $75d7: $ff
    ld a, e                                       ; $75d8: $7b
    rst $38                                       ; $75d9: $ff
    add hl, sp                                    ; $75da: $39
    rst $38                                       ; $75db: $ff
    inc sp                                        ; $75dc: $33
    rst $38                                       ; $75dd: $ff
    ld b, c                                       ; $75de: $41
    rst $18                                       ; $75df: $df
    ld c, $10                                     ; $75e0: $0e $10
    sbc $ff                                       ; $75e2: $de $ff
    add b                                         ; $75e4: $80
    rst $38                                       ; $75e5: $ff
    add $06                                       ; $75e6: $c6 $06
    nop                                           ; $75e8: $00
    nop                                           ; $75e9: $00
    ei                                            ; $75ea: $fb
    rst $38                                       ; $75eb: $ff
    rst $30                                       ; $75ec: $f7
    rst $38                                       ; $75ed: $ff
    rst $20                                       ; $75ee: $e7

jr_0cb_75ef:
    rst $38                                       ; $75ef: $ff
    db $ed                                        ; $75f0: $ed
    rst $38                                       ; $75f1: $ff
    ld d, b                                       ; $75f2: $50
    ld l, l                                       ; $75f3: $6d
    inc h                                         ; $75f4: $24
    nop                                           ; $75f5: $00
    or $0e                                        ; $75f6: $f6 $0e
    db $10                                        ; $75f8: $10
    ld [c], a                                     ; $75f9: $e2
    rst $38                                       ; $75fa: $ff
    or h                                          ; $75fb: $b4
    rst $38                                       ; $75fc: $ff
    inc b                                         ; $75fd: $04
    cp h                                          ; $75fe: $bc
    rst $38                                       ; $75ff: $ff
    and $ff                                       ; $7600: $e6 $ff
    ld [hl], b                                    ; $7602: $70
    ld d, [hl]                                    ; $7603: $56
    nop                                           ; $7604: $00
    adc b                                         ; $7605: $88
    ld hl, sp+$04                                 ; $7606: $f8 $04
    add hl, bc                                    ; $7608: $09
    ld hl, sp+$70                                 ; $7609: $f8 $70
    db $fc                                        ; $760b: $fc
    add b                                         ; $760c: $80
    ld a, [bc]                                    ; $760d: $0a
    ld bc, $ff01                                  ; $760e: $01 $01 $ff
    ld b, b                                       ; $7611: $40
    add sp, $54                                   ; $7612: $e8 $54
    nop                                           ; $7614: $00
    pop hl                                        ; $7615: $e1
    rrca                                          ; $7616: $0f
    ld c, e                                       ; $7617: $4b
    rrca                                          ; $7618: $0f
    rst $30                                       ; $7619: $f7
    rra                                           ; $761a: $1f
    nop                                           ; $761b: $00
    ld h, c                                       ; $761c: $61
    rrca                                          ; $761d: $0f
    add b                                         ; $761e: $80
    sbc a                                         ; $761f: $9f
    add b                                         ; $7620: $80
    rst $38                                       ; $7621: $ff
    rra                                           ; $7622: $1f
    rst $38                                       ; $7623: $ff
    ld de, $ffe3                                  ; $7624: $11 $e3 $ff
    pop bc                                        ; $7627: $c1
    ld [bc], a                                    ; $7628: $02
    db $10                                        ; $7629: $10
    inc sp                                        ; $762a: $33
    rst $38                                       ; $762b: $ff
    inc e                                         ; $762c: $1c
    ld [bc], a                                    ; $762d: $02
    nop                                           ; $762e: $00
    db $10                                        ; $762f: $10
    rst $38                                       ; $7630: $ff
    rst $38                                       ; $7631: $ff
    cp l                                          ; $7632: $bd
    ld c, h                                       ; $7633: $4c
    nop                                           ; $7634: $00
    rra                                           ; $7635: $1f
    rst $38                                       ; $7636: $ff

jr_0cb_7637:
    sbc a                                         ; $7637: $9f
    rst $38                                       ; $7638: $ff
    inc d                                         ; $7639: $14
    pop af                                        ; $763a: $f1
    rst $38                                       ; $763b: $ff
    ret nz                                        ; $763c: $c0

    ld e, [hl]                                    ; $763d: $5e
    nop                                           ; $763e: $00
    ld hl, sp-$64                                 ; $763f: $f8 $9c
    nop                                           ; $7641: $00
    ld c, b                                       ; $7642: $48
    rst $38                                       ; $7643: $ff
    ld d, c                                       ; $7644: $51
    rst $08                                       ; $7645: $cf
    ld [$3000], sp                                ; $7646: $08 $00 $30
    ld c, $01                                     ; $7649: $0e $01
    add sp, -$01                                  ; $764b: $e8 $ff
    nop                                           ; $764d: $00
    ld bc, $d560                                  ; $764e: $01 $60 $d5
    sub l                                         ; $7651: $95
    db $10                                        ; $7652: $10
    dec b                                         ; $7653: $05
    ld b, b                                       ; $7654: $40
    jp nz, $004e                                  ; $7655: $c2 $4e $00

    db $e3                                        ; $7658: $e3
    jr @+$03                                      ; $7659: $18 $01

    call z, $0002                                 ; $765b: $cc $02 $00
    dec d                                         ; $765e: $15
    ld a, [$f2ff]                                 ; $765f: $fa $ff $f2
    ld b, [hl]                                    ; $7662: $46
    ld bc, $b886                                  ; $7663: $01 $86 $b8
    nop                                           ; $7666: $00
    rst $00                                       ; $7667: $c7
    ld b, d                                       ; $7668: $42
    nop                                           ; $7669: $00
    adc b                                         ; $766a: $88
    ld a, [hl+]                                   ; $766b: $2a
    jr jr_0cb_75ef                                ; $766c: $18 $81

    rst $38                                       ; $766e: $ff
    jp Jump_000_1006                              ; $766f: $c3 $06 $10


    nop                                           ; $7672: $00
    db $fc                                        ; $7673: $fc
    inc bc                                        ; $7674: $03
    ld [bc], a                                    ; $7675: $02
    ld hl, sp+$01                                 ; $7676: $f8 $01
    ld hl, sp+$00                                 ; $7678: $f8 $00
    ld hl, sp-$79                                 ; $767a: $f8 $87
    ld h, b                                       ; $767c: $60
    ld bc, $8003                                  ; $767d: $01 $03 $80
    ld l, [hl]                                    ; $7680: $6e
    ld bc, $1f18                                  ; $7681: $01 $18 $1f
    ldh [rIF], a                                  ; $7684: $e0 $0f
    ldh [rIF], a                                  ; $7686: $e0 $0f
    ld b, b                                       ; $7688: $40
    jr z, jr_0cb_769a                             ; $7689: $28 $0f

    rlca                                          ; $768b: $07
    or [hl]                                       ; $768c: $b6
    nop                                           ; $768d: $00
    ldh a, [$7a]                                  ; $768e: $f0 $7a
    nop                                           ; $7690: $00
    ret nz                                        ; $7691: $c0

    rst $38                                       ; $7692: $ff
    jr nz, jr_0cb_7637                            ; $7693: $20 $a2

    add sp, $00                                   ; $7695: $e8 $00
    rst $38                                       ; $7697: $ff
    add h                                         ; $7698: $84
    nop                                           ; $7699: $00

jr_0cb_769a:
    pop hl                                        ; $769a: $e1
    rst $38                                       ; $769b: $ff
    ld a, a                                       ; $769c: $7f
    ldh a, [rP1]                                  ; $769d: $f0 $00
    inc de                                        ; $769f: $13
    ld sp, $3fff                                  ; $76a0: $31 $ff $3f
    ld [c], a                                     ; $76a3: $e2
    nop                                           ; $76a4: $00
    ld l, [hl]                                    ; $76a5: $6e
    ld e, b                                       ; $76a6: $58
    db $e3                                        ; $76a7: $e3
    rst $38                                       ; $76a8: $ff
    add e                                         ; $76a9: $83
    inc c                                         ; $76aa: $0c
    ld b, b                                       ; $76ab: $40
    inc d                                         ; $76ac: $14
    pop bc                                        ; $76ad: $c1
    rst $38                                       ; $76ae: $ff
    adc a                                         ; $76af: $8f
    ld d, $11                                     ; $76b0: $16 $11
    di                                            ; $76b2: $f3
    ld [bc], a                                    ; $76b3: $02
    nop                                           ; $76b4: $00
    rst $38                                       ; $76b5: $ff
    rst $38                                       ; $76b6: $ff
    ld b, $98                                     ; $76b7: $06 $98
    rst $38                                       ; $76b9: $ff
    sub b                                         ; $76ba: $90
    rst $38                                       ; $76bb: $ff
    ld sp, hl                                     ; $76bc: $f9
    ld [hl-], a                                   ; $76bd: $32
    ld bc, $0860                                  ; $76be: $01 $60 $08
    ld [bc], a                                    ; $76c1: $02
    adc d                                         ; $76c2: $8a
    adc $01                                       ; $76c3: $ce $01
    inc c                                         ; $76c5: $0c
    rst $38                                       ; $76c6: $ff
    adc h                                         ; $76c7: $8c
    call z, $c000                                 ; $76c8: $cc $00 $c0
    ld c, h                                       ; $76cb: $4c
    nop                                           ; $76cc: $00
    rra                                           ; $76cd: $1f
    ld a, [hl+]                                   ; $76ce: $2a
    rst $38                                       ; $76cf: $ff
    ld e, a                                       ; $76d0: $5f
    ld c, d                                       ; $76d1: $4a
    ld bc, $561f                                  ; $76d2: $01 $1f $56
    ld bc, $9027                                  ; $76d5: $01 $27 $90
    jr nc, @-$73                                  ; $76d8: $30 $8b

    xor d                                         ; $76da: $aa
    ld a, [de]                                    ; $76db: $1a
    ld bc, $0403                                  ; $76dc: $01 $03 $04
    db $10                                        ; $76df: $10
    ld c, e                                       ; $76e0: $4b

jr_0cb_76e1:
    ld l, [hl]                                    ; $76e1: $6e
    nop                                           ; $76e2: $00
    ld b, c                                       ; $76e3: $41
    ld d, [hl]                                    ; $76e4: $56
    ld bc, $aca1                                  ; $76e5: $01 $a1 $ac
    ld l, $11                                     ; $76e8: $2e $11
    and b                                         ; $76ea: $a0
    rst $18                                       ; $76eb: $df
    jr nz, jr_0cb_76e1                            ; $76ec: $20 $f3

    ld c, $01                                     ; $76ee: $0e $01
    ld [$7418], a                                 ; $76f0: $ea $18 $74
    rst $38                                       ; $76f3: $ff
    dec b                                         ; $76f4: $05
    db $fc                                        ; $76f5: $fc
    rst $38                                       ; $76f6: $ff
    and d                                         ; $76f7: $a2
    rst $38                                       ; $76f8: $ff
    ld b, d                                       ; $76f9: $42
    ld c, d                                       ; $76fa: $4a
    ld bc, $2881                                  ; $76fb: $01 $81 $28
    nop                                           ; $76fe: $00
    ld e, a                                       ; $76ff: $5f
    ld sp, $1194                                  ; $7700: $31 $94 $11
    ld sp, hl                                     ; $7703: $f9
    add b                                         ; $7704: $80
    ld bc, $2908                                  ; $7705: $01 $08 $29
    ret nc                                        ; $7708: $d0

    jr z, jr_0cb_7743                             ; $7709: $28 $38

    add hl, bc                                    ; $770b: $09
    ld [bc], a                                    ; $770c: $02
    ld [$00b0], sp                                ; $770d: $08 $b0 $00
    ld h, l                                       ; $7710: $65
    nop                                           ; $7711: $00
    ld b, b                                       ; $7712: $40
    nop                                           ; $7713: $00
    ld bc, $0480                                  ; $7714: $01 $80 $04
    nop                                           ; $7717: $00
    stop                                          ; $7718: $10 $00
    ld [$1800], sp                                ; $771a: $08 $00 $18
    and b                                         ; $771d: $a0
    nop                                           ; $771e: $00
    ld b, b                                       ; $771f: $40
    inc b                                         ; $7720: $04
    nop                                           ; $7721: $00
    jr nz, jr_0cb_776c                            ; $7722: $20 $48

    inc bc                                        ; $7724: $03
    nop                                           ; $7725: $00
    ld bc, $0480                                  ; $7726: $01 $80 $04
    nop                                           ; $7729: $00
    ld a, [bc]                                    ; $772a: $0a
    nop                                           ; $772b: $00
    inc h                                         ; $772c: $24
    nop                                           ; $772d: $00
    sbc d                                         ; $772e: $9a
    nop                                           ; $772f: $00
    ld h, h                                       ; $7730: $64
    nop                                           ; $7731: $00
    db $10                                        ; $7732: $10
    adc b                                         ; $7733: $88
    ld h, b                                       ; $7734: $60
    inc d                                         ; $7735: $14
    ldh [$a0], a                                  ; $7736: $e0 $a0
    ld b, b                                       ; $7738: $40
    nop                                           ; $7739: $00
    jr nz, jr_0cb_773c                            ; $773a: $20 $00

jr_0cb_773c:
    ld [bc], a                                    ; $773c: $02
    inc l                                         ; $773d: $2c
    nop                                           ; $773e: $00
    inc b                                         ; $773f: $04
    nop                                           ; $7740: $00
    ld d, b                                       ; $7741: $50
    nop                                           ; $7742: $00

jr_0cb_7743:
    jr nc, @+$09                                  ; $7743: $30 $07

    nop                                           ; $7745: $00
    add b                                         ; $7746: $80
    ld b, b                                       ; $7747: $40
    ld b, b                                       ; $7748: $40
    add b                                         ; $7749: $80
    ld d, b                                       ; $774a: $50
    jr c, @+$2e                                   ; $774b: $38 $2c

    ld [$084c], sp                                ; $774d: $08 $4c $08
    nop                                           ; $7750: $00
    ld bc, $1600                                  ; $7751: $01 $00 $16

jr_0cb_7754:
    nop                                           ; $7754: $00
    ld e, b                                       ; $7755: $58
    nop                                           ; $7756: $00
    inc [hl]                                      ; $7757: $34
    nop                                           ; $7758: $00
    db $10                                        ; $7759: $10
    ret z                                         ; $775a: $c8

    jr nz, jr_0cb_776d                            ; $775b: $20 $10

    jr nc, jr_0cb_775f                            ; $775d: $30 $00

jr_0cb_775f:
    inc e                                         ; $775f: $1c
    inc e                                         ; $7760: $1c
    ld [hl], $3e                                  ; $7761: $36 $3e
    nop                                           ; $7763: $00
    ld h, a                                       ; $7764: $67
    ld a, h                                       ; $7765: $7c
    ld e, l                                       ; $7766: $5d
    ld a, e                                       ; $7767: $7b
    ld a, e                                       ; $7768: $7b
    ld [hl], $3e                                  ; $7769: $36 $3e
    inc c                                         ; $776b: $0c

jr_0cb_776c:
    ld e, b                                       ; $776c: $58

jr_0cb_776d:
    inc e                                         ; $776d: $1c
    ld a, l                                       ; $776e: $7d
    nop                                           ; $776f: $00
    ldh [$66], a                                  ; $7770: $e0 $66
    nop                                           ; $7772: $00
    add h                                         ; $7773: $84
    ld c, b                                       ; $7774: $48
    ld b, $00                                     ; $7775: $06 $00
    rrca                                          ; $7777: $0f
    ld [$0b04], sp                                ; $7778: $08 $04 $0b
    ld b, $06                                     ; $777b: $06 $06
    sub a                                         ; $777d: $97
    jr nc, @+$1e                                  ; $777e: $30 $1c

    ld [$0036], sp                                ; $7780: $08 $36 $00
    inc l                                         ; $7783: $2c
    ld a, e                                       ; $7784: $7b
    halt                                          ; $7785: $76
    ld c, a                                       ; $7786: $4f
    ld a, d                                       ; $7787: $7a
    ld l, a                                       ; $7788: $6f
    ld a, h                                       ; $7789: $7c
    ld [hl], $00                                  ; $778a: $36 $00
    inc a                                         ; $778c: $3c
    inc e                                         ; $778d: $1c
    jr jr_0cb_7790                                ; $778e: $18 $00

jr_0cb_7790:
    nop                                           ; $7790: $00
    ld h, b                                       ; $7791: $60
    inc bc                                        ; $7792: $03
    xor d                                         ; $7793: $aa
    ld bc, $0020                                  ; $7794: $01 $20 $00
    rst $38                                       ; $7797: $ff
    ld [bc], a                                    ; $7798: $02
    ld l, b                                       ; $7799: $68
    dec b                                         ; $779a: $05
    ld a, [$d52a]                                 ; $779b: $fa $2a $d5
    ld d, a                                       ; $779e: $57
    nop                                           ; $779f: $00
    xor b                                         ; $77a0: $a8
    cp a                                          ; $77a1: $bf
    ld b, b                                       ; $77a2: $40
    ld e, a                                       ; $77a3: $5f
    and b                                         ; $77a4: $a0
    ld a, [hl+]                                   ; $77a5: $2a
    push de                                       ; $77a6: $d5
    dec b                                         ; $77a7: $05
    ld b, b                                       ; $77a8: $40
    ld a, [$0820]                                 ; $77a9: $fa $20 $08
    xor b                                         ; $77ac: $a8
    ld d, a                                       ; $77ad: $57
    push de                                       ; $77ae: $d5
    ld a, [hl+]                                   ; $77af: $2a
    cp $01                                        ; $77b0: $fe $01
    ld [bc], a                                    ; $77b2: $02
    push af                                       ; $77b3: $f5
    ld a, [bc]                                    ; $77b4: $0a
    xor b                                         ; $77b5: $a8
    ld d, a                                       ; $77b6: $57
    ld b, b                                       ; $77b7: $40
    cp a                                          ; $77b8: $bf
    jr nc, @+$5a                                  ; $77b9: $30 $58

    inc c                                         ; $77bb: $0c
    adc h                                         ; $77bc: $8c
    ld a, [bc]                                    ; $77bd: $0a
    ld b, b                                       ; $77be: $40
    ld c, $ff                                     ; $77bf: $0e $ff
    ld [$0002], sp                                ; $77c1: $08 $02 $00
    ld a, [bc]                                    ; $77c4: $0a
    ld b, b                                       ; $77c5: $40
    rst $20                                       ; $77c6: $e7
    jr jr_0cb_77d9                                ; $77c7: $18 $10

    db $d3                                        ; $77c9: $d3
    inc a                                         ; $77ca: $3c
    db $e3                                        ; $77cb: $e3
    inc c                                         ; $77cc: $0c
    ld c, b                                       ; $77cd: $48
    inc a                                         ; $77ce: $3c
    and c                                         ; $77cf: $a1
    inc a                                         ; $77d0: $3c
    jr nz, jr_0cb_7754                            ; $77d1: $20 $81

    ld a, [bc]                                    ; $77d3: $0a
    jr c, jr_0cb_7818                             ; $77d4: $38 $42

    ld [bc], a                                    ; $77d6: $02
    ld a, [hl]                                    ; $77d7: $7e
    ld b, [hl]                                    ; $77d8: $46

jr_0cb_77d9:
    ld a, b                                       ; $77d9: $78

jr_0cb_77da:
    ld b, b                                       ; $77da: $40
    ld a, [bc]                                    ; $77db: $0a
    jr c, @+$04                                   ; $77dc: $38 $02

    ld [hl], b                                    ; $77de: $70
    ld sp, $2360                                  ; $77df: $31 $60 $23
    ld b, b                                       ; $77e2: $40
    rlca                                          ; $77e3: $07
    sub b                                         ; $77e4: $90
    ld [$8922], sp                                ; $77e5: $08 $22 $89
    sub h                                         ; $77e8: $94
    nop                                           ; $77e9: $00
    xor d                                         ; $77ea: $aa
    rst $38                                       ; $77eb: $ff
    ld d, l                                       ; $77ec: $55
    inc b                                         ; $77ed: $04
    nop                                           ; $77ee: $00
    ld [hl], a                                    ; $77ef: $77
    rst $38                                       ; $77f0: $ff
    inc e                                         ; $77f1: $1c

jr_0cb_77f2:
    ld c, b                                       ; $77f2: $48
    ld [$0740], sp                                ; $77f3: $08 $40 $07
    ld h, b                                       ; $77f6: $60
    ld b, e                                       ; $77f7: $43
    ld a, [bc]                                    ; $77f8: $0a
    ld b, b                                       ; $77f9: $40
    ld b, c                                       ; $77fa: $41
    ld a, b                                       ; $77fb: $78
    ld b, b                                       ; $77fc: $40
    daa                                           ; $77fd: $27
    ld a, h                                       ; $77fe: $7c
    ld b, h                                       ; $77ff: $44
    ld a, [bc]                                    ; $7800: $0a
    jr c, jr_0cb_7881                             ; $7801: $38 $7e

    jr c, @+$04                                   ; $7803: $38 $02

    ld [$480c], sp                                ; $7805: $08 $0c $48
    ld [de], a                                    ; $7808: $12
    nop                                           ; $7809: $00
    ld a, [hl]                                    ; $780a: $7e
    ld b, [hl]                                    ; $780b: $46
    ld a, [bc]                                    ; $780c: $0a
    ld b, b                                       ; $780d: $40
    ld [bc], a                                    ; $780e: $02
    jr @+$0c                                      ; $780f: $18 $0a

    ld c, b                                       ; $7811: $48
    jr jr_0cb_784c                                ; $7812: $18 $38

    jr nc, jr_0cb_7846                            ; $7814: $30 $30

    db $10                                        ; $7816: $10
    ld d, c                                       ; $7817: $51

jr_0cb_7818:
    cp $22                                        ; $7818: $fe $22
    ld bc, $2001                                  ; $781a: $01 $01 $20
    ld d, c                                       ; $781d: $51
    nop                                           ; $781e: $00
    ld d, l                                       ; $781f: $55
    ld d, l                                       ; $7820: $55
    ld d, b                                       ; $7821: $50
    ld c, b                                       ; $7822: $48
    inc a                                         ; $7823: $3c
    db $10                                        ; $7824: $10
    inc h                                         ; $7825: $24
    ld b, c                                       ; $7826: $41
    ld b, c                                       ; $7827: $41
    ld b, b                                       ; $7828: $40
    ld sp, $15c0                                  ; $7829: $31 $c0 $15
    dec d                                         ; $782c: $15
    xor d                                         ; $782d: $aa
    jr jr_0cb_77da                                ; $782e: $18 $aa

    ld e, a                                       ; $7830: $5f
    ld e, a                                       ; $7831: $5f
    ld a, [hl-]                                   ; $7832: $3a

jr_0cb_7833:
    jr z, jr_0cb_7861                             ; $7833: $28 $2c

    ld [$aaaa], sp                                ; $7835: $08 $aa $aa
    rst $38                                       ; $7838: $ff
    ld b, b                                       ; $7839: $40
    rst $38                                       ; $783a: $ff
    ld a, [hl+]                                   ; $783b: $2a
    jr z, @-$7c                                   ; $783c: $28 $82

    add d                                         ; $783e: $82

jr_0cb_783f:
    ld d, l                                       ; $783f: $55
    ld d, l                                       ; $7840: $55
    xor e                                         ; $7841: $ab
    xor e                                         ; $7842: $ab
    ld b, c                                       ; $7843: $41
    rst $38                                       ; $7844: $ff
    ld e, b                                       ; $7845: $58

jr_0cb_7846:
    jr nc, jr_0cb_77f2                            ; $7846: $30 $aa

    xor d                                         ; $7848: $aa
    ld d, l                                       ; $7849: $55
    ld d, l                                       ; $784a: $55
    rst $38                                       ; $784b: $ff

jr_0cb_784c:
    ld bc, $e000                                  ; $784c: $01 $00 $e0
    ld e, b                                       ; $784f: $58
    jr jr_0cb_7860                                ; $7850: $18 $0e

    jr z, jr_0cb_7874                             ; $7852: $28 $20

    db $10                                        ; $7854: $10
    ldh a, [$0a]                                  ; $7855: $f0 $0a
    ld a, [bc]                                    ; $7857: $0a
    ld d, l                                       ; $7858: $55
    ld d, l                                       ; $7859: $55
    nop                                           ; $785a: $00
    xor a                                         ; $785b: $af
    xor a                                         ; $785c: $af
    rst $38                                       ; $785d: $ff
    rst $38                                       ; $785e: $ff
    db $fd                                        ; $785f: $fd

jr_0cb_7860:
    db $fd                                        ; $7860: $fd

jr_0cb_7861:
    xor b                                         ; $7861: $a8
    xor b                                         ; $7862: $a8
    ld [$467e], sp                                ; $7863: $08 $7e $46
    dec a                                         ; $7866: $3d
    dec h                                         ; $7867: $25
    inc a                                         ; $7868: $3c
    ld [$ffff], sp                                ; $7869: $08 $ff $ff
    cp $12                                        ; $786c: $fe $12
    cp $54                                        ; $786e: $fe $54
    ld d, h                                       ; $7870: $54
    ld a, [hl+]                                   ; $7871: $2a
    jr jr_0cb_7833                                ; $7872: $18 $bf

jr_0cb_7874:
    cp a                                          ; $7874: $bf
    ld a, [hl-]                                   ; $7875: $3a
    ld [$39aa], sp                                ; $7876: $08 $aa $39
    xor d                                         ; $7879: $aa
    nop                                           ; $787a: $00
    ld bc, $6400                                  ; $787b: $01 $00 $64
    ld [$0848], sp                                ; $787e: $08 $48 $08

jr_0cb_7881:
    ld d, l                                       ; $7881: $55
    ld d, l                                       ; $7882: $55
    ld c, $08                                     ; $7883: $0e $08
    add [hl]                                      ; $7885: $86
    db $10                                        ; $7886: $10
    jr z, jr_0cb_7833                             ; $7887: $28 $aa

    xor d                                         ; $7889: $aa
    ld b, b                                       ; $788a: $40
    ld b, b                                       ; $788b: $40
    db $10                                        ; $788c: $10
    jr jr_0cb_78f3                                ; $788d: $18 $64

    ld [$1fd5], sp                                ; $788f: $08 $d5 $1f
    push de                                       ; $7892: $d5
    add b                                         ; $7893: $80
    add b                                         ; $7894: $80
    ld e, $18                                     ; $7895: $1e $18
    db $10                                        ; $7897: $10
    ld [$1848], sp                                ; $7898: $08 $48 $18
    db $10                                        ; $789b: $10
    jr c, @+$4a                                   ; $789c: $38 $48

    jr @-$1e                                      ; $789e: $18 $e0

    jr nz, jr_0cb_78ca                            ; $78a0: $20 $28

    ld c, $58                                     ; $78a2: $0e $58
    inc c                                         ; $78a4: $0c
    ld a, b                                       ; $78a5: $78
    ld bc, $8700                                  ; $78a6: $01 $00 $87
    ld bc, $008f                                  ; $78a9: $01 $8f $00
    inc bc                                        ; $78ac: $03
    rst $08                                       ; $78ad: $cf
    add [hl]                                      ; $78ae: $86
    rst $38                                       ; $78af: $ff
    add $ff                                       ; $78b0: $c6 $ff
    ld h, h                                       ; $78b2: $64
    cp $01                                        ; $78b3: $fe $01
    ldh a, [$fe]                                  ; $78b5: $f0 $fe
    ld h, h                                       ; $78b7: $64
    add b                                         ; $78b8: $80
    nop                                           ; $78b9: $00
    ret nz                                        ; $78ba: $c0

    nop                                           ; $78bb: $00
    ld e, l                                       ; $78bc: $5d
    jr nc, jr_0cb_783f                            ; $78bd: $30 $80

    ld [hl], b                                    ; $78bf: $70
    ld [$ff86], sp                                ; $78c0: $08 $86 $ff
    ld sp, $56ff                                  ; $78c3: $31 $ff $56
    cp l                                          ; $78c6: $bd
    rst $28                                       ; $78c7: $ef
    nop                                           ; $78c8: $00
    rst $38                                       ; $78c9: $ff

jr_0cb_78ca:
    ld b, d                                       ; $78ca: $42
    rst $38                                       ; $78cb: $ff
    ld [de], a                                    ; $78cc: $12
    rst $38                                       ; $78cd: $ff
    ld b, l                                       ; $78ce: $45
    rst $38                                       ; $78cf: $ff
    jr nz, jr_0cb_78d2                            ; $78d0: $20 $00

jr_0cb_78d2:
    ld h, e                                       ; $78d2: $63
    nop                                           ; $78d3: $00
    ld h, a                                       ; $78d4: $67
    ld [bc], a                                    ; $78d5: $02
    rst $28                                       ; $78d6: $ef
    ld b, [hl]                                    ; $78d7: $46
    ei                                            ; $78d8: $fb
    ld l, [hl]                                    ; $78d9: $6e
    ld bc, $0efb                                  ; $78da: $01 $fb $0e
    cp $54                                        ; $78dd: $fe $54
    cp a                                          ; $78df: $bf
    and $ff                                       ; $78e0: $e6 $ff

jr_0cb_78e2:
    sub [hl]                                      ; $78e2: $96
    jr nz, jr_0cb_78e5                            ; $78e3: $20 $00

jr_0cb_78e5:
    jr jr_0cb_78e7                                ; $78e5: $18 $00

jr_0cb_78e7:
    ld a, h                                       ; $78e7: $7c
    jr c, jr_0cb_78e2                             ; $78e8: $38 $f8

    ld b, b                                       ; $78ea: $40
    pop bc                                        ; $78eb: $c1
    add b                                         ; $78ec: $80
    jr nz, @-$2f                                  ; $78ed: $20 $cf

    add e                                         ; $78ef: $83
    sbc b                                         ; $78f0: $98
    jr z, jr_0cb_796b                             ; $78f1: $28 $78

jr_0cb_78f3:
    nop                                           ; $78f3: $00
    inc a                                         ; $78f4: $3c
    jr jr_0cb_792b                                ; $78f5: $18 $34

    db $10                                        ; $78f7: $10
    jr jr_0cb_7916                                ; $78f8: $18 $1c

    ld [$488c], sp                                ; $78fa: $08 $8c $48
    ld b, $00                                     ; $78fd: $06 $00
    rlca                                          ; $78ff: $07
    ld [bc], a                                    ; $7900: $02
    add b                                         ; $7901: $80
    sub $18                                       ; $7902: $d6 $18
    ld [$1e00], sp                                ; $7904: $08 $00 $1e
    ld [$1038], sp                                ; $7907: $08 $38 $10
    ld [hl], b                                    ; $790a: $70
    nop                                           ; $790b: $00
    jr nz, @-$0e                                  ; $790c: $20 $f0

    ld h, b                                       ; $790e: $60
    ldh [rLCDC], a                                ; $790f: $e0 $40
    ldh [$80], a                                  ; $7911: $e0 $80
    add $00                                       ; $7913: $c6 $00
    add b                                         ; $7915: $80

jr_0cb_7916:
    db $ed                                        ; $7916: $ed
    ld b, [hl]                                    ; $7917: $46
    cp a                                          ; $7918: $bf
    ld [c], a                                     ; $7919: $e2
    rst $38                                       ; $791a: $ff
    ld c, l                                       ; $791b: $4d
    rst $38                                       ; $791c: $ff
    nop                                           ; $791d: $00
    jr nz, @+$01                                  ; $791e: $20 $ff

    ld b, $0e                                     ; $7920: $06 $0e
    nop                                           ; $7922: $00
    rrca                                          ; $7923: $0f
    inc b                                         ; $7924: $04
    rst $18                                       ; $7925: $df
    nop                                           ; $7926: $00
    inc c                                         ; $7927: $0c
    db $db                                        ; $7928: $db
    ld c, [hl]                                    ; $7929: $4e
    ei                                            ; $792a: $fb

jr_0cb_792b:
    add [hl]                                      ; $792b: $86
    ld a, a                                       ; $792c: $7f
    call z, $007f                                 ; $792d: $cc $7f $00
    push hl                                       ; $7930: $e5
    rst $38                                       ; $7931: $ff
    jr nz, @+$08                                  ; $7932: $20 $06

    inc bc                                        ; $7934: $03
    rlca                                          ; $7935: $07
    inc bc                                        ; $7936: $03
    ld h, e                                       ; $7937: $63
    nop                                           ; $7938: $00
    ld bc, $63f6                                  ; $7939: $01 $f6 $63
    rst $18                                       ; $793c: $df
    ld h, c                                       ; $793d: $61

jr_0cb_793e:
    rst $18                                       ; $793e: $df
    cp $ff                                        ; $793f: $fe $ff
    nop                                           ; $7941: $00
    dec h                                         ; $7942: $25
    rst $38                                       ; $7943: $ff
    jr nc, jr_0cb_793e                            ; $7944: $30 $f8

    ld b, b                                       ; $7946: $40
    rst $38                                       ; $7947: $ff
    sbc b                                         ; $7948: $98
    rst $28                                       ; $7949: $ef
    nop                                           ; $794a: $00
    cp e                                          ; $794b: $bb
    rst $38                                       ; $794c: $ff
    ld [hl], b                                    ; $794d: $70
    rst $18                                       ; $794e: $df
    ld [hl], e                                    ; $794f: $73
    rst $38                                       ; $7950: $ff
    cp b                                          ; $7951: $b8

jr_0cb_7952:
    rst $38                                       ; $7952: $ff
    nop                                           ; $7953: $00
    dec b                                         ; $7954: $05
    rst $38                                       ; $7955: $ff
    jr nc, @+$01                                  ; $7956: $30 $ff

    ld [hl+], a                                   ; $7958: $22
    db $fd                                        ; $7959: $fd
    rlca                                          ; $795a: $07
    rst $38                                       ; $795b: $ff
    nop                                           ; $795c: $00
    ld [hl+], a                                   ; $795d: $22
    rst $18                                       ; $795e: $df
    ld [hl], b                                    ; $795f: $70
    rst $38                                       ; $7960: $ff
    jr nc, jr_0cb_7952                            ; $7961: $30 $ef

    ld a, [hl-]                                   ; $7963: $3a
    rst $38                                       ; $7964: $ff
    ld b, b                                       ; $7965: $40
    sub b                                         ; $7966: $90
    db $fd                                        ; $7967: $fd
    ld [bc], a                                    ; $7968: $02
    jr nz, @+$01                                  ; $7969: $20 $ff

jr_0cb_796b:
    add hl, bc                                    ; $796b: $09
    cp $6b                                        ; $796c: $fe $6b
    adc a                                         ; $796e: $8f
    db $10                                        ; $796f: $10
    ld sp, hl                                     ; $7970: $f9
    rst $30                                       ; $7971: $f7
    inc a                                         ; $7972: $3c
    ld [$4300], sp                                ; $7973: $08 $00 $43
    rst $38                                       ; $7976: $ff
    add hl, bc                                    ; $7977: $09
    rst $38                                       ; $7978: $ff
    nop                                           ; $7979: $00
    db $10                                        ; $797a: $10
    rst $28                                       ; $797b: $ef
    jr c, @+$01                                   ; $797c: $38 $ff

    ld d, $f9                                     ; $797e: $16 $f9
    adc a                                         ; $7980: $8f
    rst $38                                       ; $7981: $ff
    ld d, b                                       ; $7982: $50
    ld h, $24                                     ; $7983: $26 $24
    nop                                           ; $7985: $00
    ld [hl+], a                                   ; $7986: $22
    db $d3                                        ; $7987: $d3
    ld [bc], a                                    ; $7988: $02
    inc c                                         ; $7989: $0c
    rst $38                                       ; $798a: $ff
    ld [bc], a                                    ; $798b: $02
    rst $38                                       ; $798c: $ff
    ld e, b                                       ; $798d: $58
    ld h, c                                       ; $798e: $61
    dec h                                         ; $798f: $25
    ld b, e                                       ; $7990: $43
    inc e                                         ; $7991: $1c
    push hl                                       ; $7992: $e5
    ld [de], a                                    ; $7993: $12
    scf                                           ; $7994: $37
    dec sp                                        ; $7995: $3b
    ld [hl+], a                                   ; $7996: $22
    rst $38                                       ; $7997: $ff
    adc b                                         ; $7998: $88
    nop                                           ; $7999: $00
    rst $30                                       ; $799a: $f7
    dec a                                         ; $799b: $3d
    rst $18                                       ; $799c: $df
    ld a, b                                       ; $799d: $78
    rst $38                                       ; $799e: $ff
    inc h                                         ; $799f: $24
    ei                                            ; $79a0: $fb
    adc [hl]                                      ; $79a1: $8e
    jr nz, @+$01                                  ; $79a2: $20 $ff

    ld d, h                                       ; $79a4: $54
    ld c, l                                       ; $79a5: $4d
    inc bc                                        ; $79a6: $03
    ld a, [bc]                                    ; $79a7: $0a
    rst $30                                       ; $79a8: $f7
    inc e                                         ; $79a9: $1c
    rst $38                                       ; $79aa: $ff
    ld c, b                                       ; $79ab: $48
    nop                                           ; $79ac: $00
    rst $38                                       ; $79ad: $ff
    ret nz                                        ; $79ae: $c0

    rst $38                                       ; $79af: $ff
    inc hl                                        ; $79b0: $23
    rst $38                                       ; $79b1: $ff
    ld [$9cf7], sp                                ; $79b2: $08 $f7 $9c
    nop                                           ; $79b5: $00
    rst $38                                       ; $79b6: $ff
    ld [$01f0], sp                                ; $79b7: $08 $f0 $01
    add h                                         ; $79ba: $84
    ld bc, $0040                                  ; $79bb: $01 $40 $00
    ld bc, $0280                                  ; $79be: $01 $80 $02
    inc bc                                        ; $79c1: $03
    inc b                                         ; $79c2: $04
    dec b                                         ; $79c3: $05
    ld a, [bc]                                    ; $79c4: $0a
    dec bc                                        ; $79c5: $0b
    ld [bc], a                                    ; $79c6: $02
    dec b                                         ; $79c7: $05
    ld b, $0d                                     ; $79c8: $06 $0d
    ld c, $15                                     ; $79ca: $0e $15
    ld d, $20                                     ; $79cc: $16 $20
    ld c, b                                       ; $79ce: $48
    ld bc, $0100                                  ; $79cf: $01 $00 $01
    nop                                           ; $79d2: $00

jr_0cb_79d3:
    nop                                           ; $79d3: $00
    dec hl                                        ; $79d4: $2b
    inc l                                         ; $79d5: $2c
    ld de, $3b1e                                  ; $79d6: $11 $1e $3b
    nop                                           ; $79d9: $00
    inc a                                         ; $79da: $3c
    ld d, a                                       ; $79db: $57
    ld e, b                                       ; $79dc: $58
    xor e                                         ; $79dd: $ab
    or h                                          ; $79de: $b4
    ld [hl], a                                    ; $79df: $77
    ld a, b                                       ; $79e0: $78
    ld l, e                                       ; $79e1: $6b
    nop                                           ; $79e2: $00
    ld [hl], h                                    ; $79e3: $74
    add a                                         ; $79e4: $87
    ld hl, sp-$2c                                 ; $79e5: $f8 $d4
    inc [hl]                                      ; $79e7: $34
    adc b                                         ; $79e8: $88
    ld a, b                                       ; $79e9: $78
    call c, Call_000_3c00                         ; $79ea: $dc $00 $3c
    ld [$c51a], a                                 ; $79ed: $ea $1a $c5
    dec a                                         ; $79f0: $3d
    xor $1e                                       ; $79f1: $ee $1e
    sub $00                                       ; $79f3: $d6 $00
    ld l, $e1                                     ; $79f5: $2e $e1
    rra                                           ; $79f7: $1f
    ld bc, $0201                                  ; $79f8: $01 $01 $02
    ld [bc], a                                    ; $79fb: $02
    ld bc, $0100                                  ; $79fc: $01 $00 $01
    ld b, $07                                     ; $79ff: $06 $07
    ld a, [bc]                                    ; $7a01: $0a
    dec bc                                        ; $7a02: $0b

jr_0cb_7a03:
    inc b                                         ; $7a03: $04
    rlca                                          ; $7a04: $07
    inc c                                         ; $7a05: $0c
    nop                                           ; $7a06: $00
    rrca                                          ; $7a07: $0f
    dec d                                         ; $7a08: $15
    ld d, $9d                                     ; $7a09: $16 $9d
    ldh [$ae], a                                  ; $7a0b: $e0 $ae
    ret nc                                        ; $7a0d: $d0

    ld d, l                                       ; $7a0e: $55
    nop                                           ; $7a0f: $00
    and b                                         ; $7a10: $a0
    jr c, jr_0cb_79d3                             ; $7a11: $38 $c0

    or l                                          ; $7a13: $b5
    ld b, b                                       ; $7a14: $40
    ld l, d                                       ; $7a15: $6a
    add b                                         ; $7a16: $80
    or h                                          ; $7a17: $b4
    nop                                           ; $7a18: $00
    ld b, b                                       ; $7a19: $40
    ld a, b                                       ; $7a1a: $78
    add b                                         ; $7a1b: $80
    ld a, c                                       ; $7a1c: $79
    rlca                                          ; $7a1d: $07
    add hl, sp                                    ; $7a1e: $39
    rlca                                          ; $7a1f: $07
    ld d, h                                       ; $7a20: $54
    nop                                           ; $7a21: $00
    dec bc                                        ; $7a22: $0b
    ld a, [hl+]                                   ; $7a23: $2a
    dec b                                         ; $7a24: $05
    ld e, h                                       ; $7a25: $5c
    inc bc                                        ; $7a26: $03
    ld l, $01                                     ; $7a27: $2e $01
    ld e, l                                       ; $7a29: $5d
    nop                                           ; $7a2a: $00
    ld [bc], a                                    ; $7a2b: $02
    ld l, $01                                     ; $7a2c: $2e $01
    add b                                         ; $7a2e: $80
    add b                                         ; $7a2f: $80
    ld b, b                                       ; $7a30: $40
    ld b, b                                       ; $7a31: $40
    add b                                         ; $7a32: $80
    nop                                           ; $7a33: $00
    add b                                         ; $7a34: $80
    ld h, b                                       ; $7a35: $60
    ldh [$50], a                                  ; $7a36: $e0 $50
    ret nc                                        ; $7a38: $d0

    and b                                         ; $7a39: $a0
    ld h, b                                       ; $7a3a: $60
    jr nc, jr_0cb_7a4d                            ; $7a3b: $30 $10

    ldh a, [$a8]                                  ; $7a3d: $f0 $a8
    ld l, b                                       ; $7a3f: $68
    sub b                                         ; $7a40: $90
    ld e, b                                       ; $7a41: $58
    ld bc, $2801                                  ; $7a42: $01 $01 $28
    cpl                                           ; $7a45: $2f
    nop                                           ; $7a46: $00
    ld de, $3a1e                                  ; $7a47: $11 $1e $3a
    dec a                                         ; $7a4a: $3d
    ld d, l                                       ; $7a4b: $55
    ld e, d                                       ; $7a4c: $5a

jr_0cb_7a4d:
    and e                                         ; $7a4d: $a3
    cp h                                          ; $7a4e: $bc
    nop                                           ; $7a4f: $00
    ld [hl], l                                    ; $7a50: $75
    ld a, d                                       ; $7a51: $7a
    db $eb                                        ; $7a52: $eb
    db $f4                                        ; $7a53: $f4
    ld b, l                                       ; $7a54: $45
    ld a, d                                       ; $7a55: $7a
    call nc, RST_00                               ; $7a56: $d4 $00 $00
    ld l, d                                       ; $7a59: $6a
    add b                                         ; $7a5a: $80
    call nc, $a800                                ; $7a5b: $d4 $00 $a8
    nop                                           ; $7a5e: $00
    db $f4                                        ; $7a5f: $f4
    nop                                           ; $7a60: $00
    jr nz, jr_0cb_7a03                            ; $7a61: $20 $a0

    nop                                           ; $7a63: $00
    ld [$5f08], sp                                ; $7a64: $08 $08 $5f
    nop                                           ; $7a67: $00
    adc d                                         ; $7a68: $8a
    ld bc, $0057                                  ; $7a69: $01 $57 $00
    nop                                           ; $7a6c: $00
    dec hl                                        ; $7a6d: $2b
    nop                                           ; $7a6e: $00
    ld d, a                                       ; $7a6f: $57
    nop                                           ; $7a70: $00
    ld a, [bc]                                    ; $7a71: $0a
    nop                                           ; $7a72: $00
    ld d, l                                       ; $7a73: $55
    nop                                           ; $7a74: $00
    nop                                           ; $7a75: $00
    xor d                                         ; $7a76: $aa
    nop                                           ; $7a77: $00
    ld d, h                                       ; $7a78: $54
    or h                                          ; $7a79: $b4
    adc b                                         ; $7a7a: $88
    ld a, b                                       ; $7a7b: $78
    ld e, h                                       ; $7a7c: $5c
    nop                                           ; $7a7d: $00
    cp h                                          ; $7a7e: $bc
    adc d                                         ; $7a7f: $8a
    ld a, d                                       ; $7a80: $7a
    ld b, l                                       ; $7a81: $45
    cp l                                          ; $7a82: $bd
    xor [hl]                                      ; $7a83: $ae
    ld e, [hl]                                    ; $7a84: $5e
    rst $10                                       ; $7a85: $d7
    nop                                           ; $7a86: $00
    cpl                                           ; $7a87: $2f
    and d                                         ; $7a88: $a2
    ld e, [hl]                                    ; $7a89: $5e
    ld [bc], a                                    ; $7a8a: $02
    ld [bc], a                                    ; $7a8b: $02
    dec b                                         ; $7a8c: $05
    dec b                                         ; $7a8d: $05
    inc bc                                        ; $7a8e: $03
    jr nz, jr_0cb_7a94                            ; $7a8f: $20 $03

    dec b                                         ; $7a91: $05
    ret nc                                        ; $7a92: $d0

    nop                                           ; $7a93: $00

jr_0cb_7a94:
    rlca                                          ; $7a94: $07
    rlca                                          ; $7a95: $07
    ld c, $0f                                     ; $7a96: $0e $0f
    inc d                                         ; $7a98: $14
    nop                                           ; $7a99: $00
    rla                                           ; $7a9a: $17
    xor e                                         ; $7a9b: $ab
    db $f4                                        ; $7a9c: $f4
    add $f8                                       ; $7a9d: $c6 $f8
    xor e                                         ; $7a9f: $ab
    call nc, $0017                                ; $7aa0: $d4 $17 $00
    add sp, -$73                                  ; $7aa3: $e8 $8d
    ldh a, [rRP]                                  ; $7aa5: $f0 $56
    xor b                                         ; $7aa7: $a8
    dec l                                         ; $7aa8: $2d
    ret nc                                        ; $7aa9: $d0

    ld d, [hl]                                    ; $7aaa: $56
    nop                                           ; $7aab: $00
    xor b                                         ; $7aac: $a8
    ld [hl], h                                    ; $7aad: $74
    nop                                           ; $7aae: $00
    and d                                         ; $7aaf: $a2
    nop                                           ; $7ab0: $00
    ld d, h                                       ; $7ab1: $54
    nop                                           ; $7ab2: $00
    adc b                                         ; $7ab3: $88
    ld [bc], a                                    ; $7ab4: $02
    nop                                           ; $7ab5: $00
    ld d, c                                       ; $7ab6: $51
    nop                                           ; $7ab7: $00
    add sp, $00                                   ; $7ab8: $e8 $00
    ld b, l                                       ; $7aba: $45
    ld b, b                                       ; $7abb: $40
    nop                                           ; $7abc: $00
    dec d                                         ; $7abd: $15
    jr z, jr_0cb_7ac0                             ; $7abe: $28 $00

jr_0cb_7ac0:
    adc e                                         ; $7ac0: $8b
    ld c, b                                       ; $7ac1: $48
    nop                                           ; $7ac2: $00
    ld [hl+], a                                   ; $7ac3: $22
    ld c, h                                       ; $7ac4: $4c
    nop                                           ; $7ac5: $00
    ld a, [hl+]                                   ; $7ac6: $2a
    nop                                           ; $7ac7: $00
    dec b                                         ; $7ac8: $05
    nop                                           ; $7ac9: $00
    nop                                           ; $7aca: $00
    xor e                                         ; $7acb: $ab
    nop                                           ; $7acc: $00
    push de                                       ; $7acd: $d5
    cpl                                           ; $7ace: $2f
    db $e3                                        ; $7acf: $e3
    rra                                           ; $7ad0: $1f
    ld d, l                                       ; $7ad1: $55
    nop                                           ; $7ad2: $00
    dec hl                                        ; $7ad3: $2b
    add sp, $17                                   ; $7ad4: $e8 $17
    pop af                                        ; $7ad6: $f1
    rrca                                          ; $7ad7: $0f
    xor d                                         ; $7ad8: $aa
    dec d                                         ; $7ad9: $15
    ld [hl], h                                    ; $7ada: $74
    nop                                           ; $7adb: $00
    dec bc                                        ; $7adc: $0b
    xor d                                         ; $7add: $aa
    dec d                                         ; $7ade: $15
    ld a, [hl+]                                   ; $7adf: $2a
    cpl                                           ; $7ae0: $2f
    inc e                                         ; $7ae1: $1c
    rra                                           ; $7ae2: $1f
    jr c, jr_0cb_7ae5                             ; $7ae3: $38 $00

jr_0cb_7ae5:
    ccf                                           ; $7ae5: $3f
    ld d, l                                       ; $7ae6: $55
    ld e, [hl]                                    ; $7ae7: $5e
    cp b                                          ; $7ae8: $b8
    cp a                                          ; $7ae9: $bf
    ld l, c                                       ; $7aea: $69
    ld a, [hl]                                    ; $7aeb: $7e
    jp nc, $fd00                                  ; $7aec: $d2 $00 $fd

    ld h, b                                       ; $7aef: $60
    ld a, a                                       ; $7af0: $7f
    xor a                                         ; $7af1: $af
    ld d, b                                       ; $7af2: $50
    ld e, d                                       ; $7af3: $5a
    and b                                         ; $7af4: $a0
    dec l                                         ; $7af5: $2d
    ld [bc], a                                    ; $7af6: $02
    ret nc                                        ; $7af7: $d0

jr_0cb_7af8:
    ld e, [hl]                                    ; $7af8: $5e
    and b                                         ; $7af9: $a0
    or l                                          ; $7afa: $b5
    ld b, b                                       ; $7afb: $40
    ld e, e                                       ; $7afc: $5b
    inc b                                         ; $7afd: $04
    nop                                           ; $7afe: $00
    ld e, [hl]                                    ; $7aff: $5e
    ld [hl+], a                                   ; $7b00: $22
    and b                                         ; $7b01: $a0
    ld d, h                                       ; $7b02: $54
    ld d, b                                       ; $7b03: $50
    nop                                           ; $7b04: $00
    dec d                                         ; $7b05: $15
    nop                                           ; $7b06: $00
    jr z, @+$56                                   ; $7b07: $28 $54

    nop                                           ; $7b09: $00
    xor c                                         ; $7b0a: $a9
    xor d                                         ; $7b0b: $aa
    and h                                         ; $7b0c: $a4
    nop                                           ; $7b0d: $00
    ei                                            ; $7b0e: $fb
    ld d, b                                       ; $7b0f: $50
    nop                                           ; $7b10: $00
    adc d                                         ; $7b11: $8a
    ld c, b                                       ; $7b12: $48
    nop                                           ; $7b13: $00
    adc d                                         ; $7b14: $8a
    ld e, h                                       ; $7b15: $5c
    nop                                           ; $7b16: $00
    xor c                                         ; $7b17: $a9
    nop                                           ; $7b18: $00
    nop                                           ; $7b19: $00
    or l                                          ; $7b1a: $b5
    nop                                           ; $7b1b: $00
    xor $00                                       ; $7b1c: $ee $00
    ld [hl], l                                    ; $7b1e: $75
    ld a, [bc]                                    ; $7b1f: $0a
    ld a, [$0500]                                 ; $7b20: $fa $00 $05
    ld d, h                                       ; $7b23: $54
    dec bc                                        ; $7b24: $0b
    cp d                                          ; $7b25: $ba
    dec b                                         ; $7b26: $05
    db $dd                                        ; $7b27: $dd
    ld [bc], a                                    ; $7b28: $02
    xor d                                         ; $7b29: $aa
    nop                                           ; $7b2a: $00
    dec b                                         ; $7b2b: $05
    ld a, l                                       ; $7b2c: $7d
    ld [bc], a                                    ; $7b2d: $02
    ld a, [$d005]                                 ; $7b2e: $fa $05 $d0
    rst $38                                       ; $7b31: $ff
    ld l, b                                       ; $7b32: $68
    nop                                           ; $7b33: $00
    ld a, a                                       ; $7b34: $7f
    cp h                                          ; $7b35: $bc
    cp a                                          ; $7b36: $bf
    ld d, l                                       ; $7b37: $55
    ld d, a                                       ; $7b38: $57
    ld a, [hl+]                                   ; $7b39: $2a
    ld a, [hl+]                                   ; $7b3a: $2a
    dec b                                         ; $7b3b: $05
    ld b, b                                       ; $7b3c: $40
    dec b                                         ; $7b3d: $05
    adc h                                         ; $7b3e: $8c
    add hl, bc                                    ; $7b3f: $09
    cp a                                          ; $7b40: $bf
    ld b, b                                       ; $7b41: $40
    ld d, l                                       ; $7b42: $55
    xor d                                         ; $7b43: $aa
    ld a, [bc]                                    ; $7b44: $0a
    push af                                       ; $7b45: $f5
    nop                                           ; $7b46: $00
    ld h, b                                       ; $7b47: $60
    rst $38                                       ; $7b48: $ff
    xor e                                         ; $7b49: $ab
    cp a                                          ; $7b4a: $bf
    ld d, l                                       ; $7b4b: $55
    ld d, l                                       ; $7b4c: $55
    adc d                                         ; $7b4d: $8a
    adc d                                         ; $7b4e: $8a
    dec b                                         ; $7b4f: $05
    inc b                                         ; $7b50: $04
    inc b                                         ; $7b51: $04
    rst $38                                       ; $7b52: $ff
    nop                                           ; $7b53: $00
    rst $38                                       ; $7b54: $ff
    inc d                                         ; $7b55: $14
    jr nz, jr_0cb_7af8                            ; $7b56: $20 $a0

    inc d                                         ; $7b58: $14
    db $10                                        ; $7b59: $10
    add b                                         ; $7b5a: $80
    db $10                                        ; $7b5b: $10
    ld [$02fd], sp                                ; $7b5c: $08 $fd $02
    xor d                                         ; $7b5f: $aa
    ld d, l                                       ; $7b60: $55
    ld d, b                                       ; $7b61: $50
    xor a                                         ; $7b62: $af
    ld [bc], a                                    ; $7b63: $02
    dec b                                         ; $7b64: $05
    rst $38                                       ; $7b65: $ff
    push de                                       ; $7b66: $d5
    db $fd                                        ; $7b67: $fd
    xor d                                         ; $7b68: $aa
    xor d                                         ; $7b69: $aa
    inc c                                         ; $7b6a: $0c
    jr z, @+$57                                   ; $7b6b: $28 $55

    inc c                                         ; $7b6d: $0c
    nop                                           ; $7b6e: $00
    nop                                           ; $7b6f: $00
    ld d, c                                       ; $7b70: $51
    ld d, c                                       ; $7b71: $51
    jr nz, @+$22                                  ; $7b72: $20 $20

    dec bc                                        ; $7b74: $0b
    rst $38                                       ; $7b75: $ff
    ld d, $fe                                     ; $7b76: $16 $fe
    nop                                           ; $7b78: $00
    dec a                                         ; $7b79: $3d
    db $fd                                        ; $7b7a: $fd
    ld [$54ea], a                                 ; $7b7b: $ea $ea $54
    ld d, h                                       ; $7b7e: $54
    and b                                         ; $7b7f: $a0
    and b                                         ; $7b80: $a0
    sub b                                         ; $7b81: $90
    call c, $0a09                                 ; $7b82: $dc $09 $0a
    ld a, [bc]                                    ; $7b85: $0a
    ld [c], a                                     ; $7b86: $e2
    ld e, c                                       ; $7b87: $59
    db $10                                        ; $7b88: $10
    ld bc, $009a                                  ; $7b89: $01 $9a $00
    ld b, b                                       ; $7b8c: $40
    rst $38                                       ; $7b8d: $ff
    ld bc, $fd90                                  ; $7b8e: $01 $90 $fd
    rst $38                                       ; $7b91: $ff
    rst $30                                       ; $7b92: $f7
    ld hl, sp-$02                                 ; $7b93: $f8 $fe
    db $f4                                        ; $7b95: $f4
    ld [$f0ec], sp                                ; $7b96: $08 $ec $f0
    cp $e4                                        ; $7b99: $fe $e4
    jr nz, @+$1a                                  ; $7b9b: $20 $18

    rst $18                                       ; $7b9d: $df
    ld a, a                                       ; $7b9e: $7f
    ld [hl], a                                    ; $7b9f: $77
    ld bc, $7f1f                                  ; $7ba0: $01 $1f $7f
    daa                                           ; $7ba3: $27
    xor e                                         ; $7ba4: $ab
    rlca                                          ; $7ba5: $07
    rra                                           ; $7ba6: $1f
    rlca                                          ; $7ba7: $07
    jr nc, jr_0cb_7bfa                            ; $7ba8: $30 $50

    db $10                                        ; $7baa: $10
    cp $fd                                        ; $7bab: $fe $fd
    cp $40                                        ; $7bad: $fe $40
    jr c, jr_0cb_7c30                             ; $7baf: $38 $7f

    rst $38                                       ; $7bb1: $ff
    rst $38                                       ; $7bb2: $ff
    ccf                                           ; $7bb3: $3f
    jr nz, jr_0cb_7bf5                            ; $7bb4: $20 $3f

    rra                                           ; $7bb6: $1f
    inc a                                         ; $7bb7: $3c
    ld [$fcf3], sp                                ; $7bb8: $08 $f3 $fc
    cp $f8                                        ; $7bbb: $fe $f8
    db $db                                        ; $7bbd: $db
    ld bc, $dde0                                  ; $7bbe: $01 $e0 $dd
    add sp, -$06                                  ; $7bc1: $e8 $fa
    ret nz                                        ; $7bc3: $c0

jr_0cb_7bc4:
    xor h                                         ; $7bc4: $ac
    ret nz                                        ; $7bc5: $c0

    dec d                                         ; $7bc6: $15
    nop                                           ; $7bc7: $00
    nop                                           ; $7bc8: $00
    rst $38                                       ; $7bc9: $ff
    rst $10                                       ; $7bca: $d7
    cp a                                          ; $7bcb: $bf
    db $db                                        ; $7bcc: $db
    rlca                                          ; $7bcd: $07
    ld e, a                                       ; $7bce: $5f
    add hl, bc                                    ; $7bcf: $09
    dec l                                         ; $7bd0: $2d

jr_0cb_7bd1:
    inc b                                         ; $7bd1: $04
    inc bc                                        ; $7bd2: $03
    rla                                           ; $7bd3: $17
    nop                                           ; $7bd4: $00
    ld l, $05                                     ; $7bd5: $2e $05
    ld [hl], b                                    ; $7bd7: $70
    jr nz, jr_0cb_7bd1                            ; $7bd8: $20 $f7

    rst $30                                       ; $7bda: $f7
    db $10                                        ; $7bdb: $10

jr_0cb_7bdc:
    db $e3                                        ; $7bdc: $e3
    rst $38                                       ; $7bdd: $ff
    rst $30                                       ; $7bde: $f7
    ld l, d                                       ; $7bdf: $6a
    db $10                                        ; $7be0: $10
    ldh a, [$ea]                                  ; $7be1: $f0 $ea
    ldh a, [rIE]                                  ; $7be3: $f0 $ff
    ld [$f7f2], sp                                ; $7be5: $08 $f2 $f7
    db $fc                                        ; $7be8: $fc
    db $fd                                        ; $7be9: $fd
    adc c                                         ; $7bea: $89
    jr nz, jr_0cb_7c2c                            ; $7beb: $20 $3f

    inc de                                        ; $7bed: $13
    ld e, e                                       ; $7bee: $5b
    inc bc                                        ; $7bef: $03
    rlca                                          ; $7bf0: $07
    ccf                                           ; $7bf1: $3f
    rla                                           ; $7bf2: $17
    ld [hl], a                                    ; $7bf3: $77
    rrca                                          ; $7bf4: $0f

jr_0cb_7bf5:
    rst $18                                       ; $7bf5: $df
    ld c, a                                       ; $7bf6: $4f
    nop                                           ; $7bf7: $00

jr_0cb_7bf8:
    ld h, e                                       ; $7bf8: $63
    db $10                                        ; $7bf9: $10

jr_0cb_7bfa:
    jr nz, jr_0cb_7bf8                            ; $7bfa: $20 $fc

    rst $38                                       ; $7bfc: $ff
    ld h, h                                       ; $7bfd: $64
    ld b, b                                       ; $7bfe: $40
    rst $38                                       ; $7bff: $ff
    rst $38                                       ; $7c00: $ff
    ld e, a                                       ; $7c01: $5f
    ccf                                           ; $7c02: $3f
    rst $38                                       ; $7c03: $ff
    ld h, b                                       ; $7c04: $60
    ccf                                           ; $7c05: $3f
    dec de                                        ; $7c06: $1b
    jr nz, jr_0cb_7bc4                            ; $7c07: $20 $bb

    db $10                                        ; $7c09: $10
    ld a, [$bcc0]                                 ; $7c0a: $fa $c0 $bc
    ret nc                                        ; $7c0d: $d0

jr_0cb_7c0e:
    reti                                          ; $7c0e: $d9


    ld bc, $fee0                                  ; $7c0f: $01 $e0 $fe
    ldh a, [$ef]                                  ; $7c12: $f0 $ef
    db $f4                                        ; $7c14: $f4
    ld sp, hl                                     ; $7c15: $f9
    or $b7                                        ; $7c16: $f6 $b7
    nop                                           ; $7c18: $00
    nop                                           ; $7c19: $00
    rst $38                                       ; $7c1a: $ff
    dec b                                         ; $7c1b: $05
    inc bc                                        ; $7c1c: $03
    ld a, [hl+]                                   ; $7c1d: $2a
    ld bc, $015f                                  ; $7c1e: $01 $5f $01
    reti                                          ; $7c21: $d9


    ld bc, $bf0f                                  ; $7c22: $01 $0f $bf
    rlca                                          ; $7c25: $07
    rst $30                                       ; $7c26: $f7
    ld c, a                                       ; $7c27: $4f
    ld e, a                                       ; $7c28: $5f
    cp a                                          ; $7c29: $bf
    sbc $18                                       ; $7c2a: $de $18

jr_0cb_7c2c:
    nop                                           ; $7c2c: $00
    ei                                            ; $7c2d: $fb
    rst $30                                       ; $7c2e: $f7
    rst $10                                       ; $7c2f: $d7

jr_0cb_7c30:
    pop hl                                        ; $7c30: $e1
    pop hl                                        ; $7c31: $e1

jr_0cb_7c32:
    jp $e1d7                                      ; $7c32: $c3 $d7 $e1


    jr nz, jr_0cb_7c32                            ; $7c35: $20 $fb

    rst $28                                       ; $7c37: $ef
    ld a, e                                       ; $7c38: $7b
    db $10                                        ; $7c39: $10
    ei                                            ; $7c3a: $fb
    db $fd                                        ; $7c3b: $fd
    db $d3                                        ; $7c3c: $d3
    xor e                                         ; $7c3d: $ab
    pop bc                                        ; $7c3e: $c1
    nop                                           ; $7c3f: $00
    ld a, [c]                                     ; $7c40: $f2
    pop bc                                        ; $7c41: $c1
    rst $20                                       ; $7c42: $e7
    and e                                         ; $7c43: $a3
    rst $18                                       ; $7c44: $df
    pop af                                        ; $7c45: $f1
    di                                            ; $7c46: $f3
    rst $28                                       ; $7c47: $ef
    ret nz                                        ; $7c48: $c0

    ld d, b                                       ; $7c49: $50
    jr nz, jr_0cb_7bdc                            ; $7c4a: $20 $90

    jr nc, jr_0cb_7c0e                            ; $7c4c: $30 $c0

    inc bc                                        ; $7c4e: $03
    sbc h                                         ; $7c4f: $9c
    ld [bc], a                                    ; $7c50: $02
    jr nz, jr_0cb_7c53                            ; $7c51: $20 $00

jr_0cb_7c53:
    rst $38                                       ; $7c53: $ff
    ld [bc], a                                    ; $7c54: $02
    ld [$f708], sp                                ; $7c55: $08 $08 $f7
    nop                                           ; $7c58: $00
    rst $38                                       ; $7c59: $ff
    ld b, d                                       ; $7c5a: $42
    inc b                                         ; $7c5b: $04
    cp l                                          ; $7c5c: $bd
    nop                                           ; $7c5d: $00
    rst $38                                       ; $7c5e: $ff
    ld h, $d9                                     ; $7c5f: $26 $d9
    db $10                                        ; $7c61: $10
    jr @+$03                                      ; $7c62: $18 $01

    cp $00                                        ; $7c64: $fe $00
    db $10                                        ; $7c66: $10
    rst $28                                       ; $7c67: $ef
    ld [bc], a                                    ; $7c68: $02
    db $fd                                        ; $7c69: $fd
    ld h, b                                       ; $7c6a: $60
    sbc a                                         ; $7c6b: $9f
    jr nz, @-$1f                                  ; $7c6c: $20 $df

    nop                                           ; $7c6e: $00
    or $f1                                        ; $7c6f: $f6 $f1
    db $ed                                        ; $7c71: $ed
    ld [c], a                                     ; $7c72: $e2
    add sp, -$19                                  ; $7c73: $e8 $e7
    db $f4                                        ; $7c75: $f4
    di                                            ; $7c76: $f3
    nop                                           ; $7c77: $00
    db $ec                                        ; $7c78: $ec
    db $e3                                        ; $7c79: $e3
    and $e1                                       ; $7c7a: $e6 $e1
    ld a, [c]                                     ; $7c7c: $f2
    pop af                                        ; $7c7d: $f1
    ld sp, hl                                     ; $7c7e: $f9
    ld hl, sp+$00                                 ; $7c7f: $f8 $00
    ccf                                           ; $7c81: $3f
    rst $08                                       ; $7c82: $cf
    ld a, a                                       ; $7c83: $7f
    adc a                                         ; $7c84: $8f
    ccf                                           ; $7c85: $3f
    rst $18                                       ; $7c86: $df
    ld e, a                                       ; $7c87: $5f
    xor a                                         ; $7c88: $af
    nop                                           ; $7c89: $00
    ccf                                           ; $7c8a: $3f
    rst $08                                       ; $7c8b: $cf
    cp a                                          ; $7c8c: $bf
    ld e, a                                       ; $7c8d: $5f
    ld a, a                                       ; $7c8e: $7f
    adc a                                         ; $7c8f: $8f
    rst $38                                       ; $7c90: $ff
    ld e, a                                       ; $7c91: $5f
    nop                                           ; $7c92: $00
    rst $10                                       ; $7c93: $d7
    set 4, a                                      ; $7c94: $cb $e7
    db $db                                        ; $7c96: $db
    rst $20                                       ; $7c97: $e7
    db $db                                        ; $7c98: $db
    rst $18                                       ; $7c99: $df
    jp $ff40                                      ; $7c9a: $c3 $40 $ff


    ld bc, $fe60                                  ; $7c9d: $01 $60 $fe
    cp $fc                                        ; $7ca0: $fe $fc
    db $fc                                        ; $7ca2: $fc
    db $fd                                        ; $7ca3: $fd

jr_0cb_7ca4:
    db $fc                                        ; $7ca4: $fc
    inc l                                         ; $7ca5: $2c
    rst $38                                       ; $7ca6: $ff
    cp $18                                        ; $7ca7: $fe $18
    ld b, b                                       ; $7ca9: $40
    ld a, a                                       ; $7caa: $7f
    inc b                                         ; $7cab: $04
    jr nz, jr_0cb_7cd9                            ; $7cac: $20 $2b

    nop                                           ; $7cae: $00
    rst $28                                       ; $7caf: $ef
    rst $28                                       ; $7cb0: $ef
    nop                                           ; $7cb1: $00
    rst $28                                       ; $7cb2: $ef
    rst $20                                       ; $7cb3: $e7
    rst $28                                       ; $7cb4: $ef
    rst $20                                       ; $7cb5: $e7
    rst $18                                       ; $7cb6: $df
    rst $00                                       ; $7cb7: $c7
    rst $38                                       ; $7cb8: $ff
    db $e3                                        ; $7cb9: $e3
    nop                                           ; $7cba: $00
    ld bc, $ccfe                                  ; $7cbb: $01 $fe $cc
    inc sp                                        ; $7cbe: $33

jr_0cb_7cbf:
    ld c, h                                       ; $7cbf: $4c
    or e                                          ; $7cc0: $b3
    and h                                         ; $7cc1: $a4
    ld e, e                                       ; $7cc2: $5b
    nop                                           ; $7cc3: $00
    ld e, b                                       ; $7cc4: $58
    and a                                         ; $7cc5: $a7
    ret z                                         ; $7cc6: $c8

    scf                                           ; $7cc7: $37
    ld [hl], $c9                                  ; $7cc8: $36 $c9
    add hl, bc                                    ; $7cca: $09
    or $00                                        ; $7ccb: $f6 $00
    db $10                                        ; $7ccd: $10
    rst $28                                       ; $7cce: $ef
    ld sp, $50ce                                  ; $7ccf: $31 $ce $50
    xor a                                         ; $7cd2: $af
    ld b, b                                       ; $7cd3: $40
    cp a                                          ; $7cd4: $bf
    nop                                           ; $7cd5: $00
    jr jr_0cb_7cbf                                ; $7cd6: $18 $e7

    ld b, e                                       ; $7cd8: $43

jr_0cb_7cd9:
    cp h                                          ; $7cd9: $bc
    ld c, e                                       ; $7cda: $4b
    or h                                          ; $7cdb: $b4
    add d                                         ; $7cdc: $82
    ld a, l                                       ; $7cdd: $7d
    nop                                           ; $7cde: $00
    db $fd                                        ; $7cdf: $fd
    db $fc                                        ; $7ce0: $fc
    inc sp                                        ; $7ce1: $33
    cp $b1                                        ; $7ce2: $fe $b1
    db $fc                                        ; $7ce4: $fc
    ld e, c                                       ; $7ce5: $59
    ld hl, sp+$00                                 ; $7ce6: $f8 $00
    and a                                         ; $7ce8: $a7
    ldh a, [$37]                                  ; $7ce9: $f0 $37
    ldh a, [$cb]                                  ; $7ceb: $f0 $cb
    ld hl, sp-$0d                                 ; $7ced: $f8 $f3
    ldh a, [rP1]                                  ; $7cef: $f0 $00
    ld l, a                                       ; $7cf1: $6f
    ld a, a                                       ; $7cf2: $7f
    adc [hl]                                      ; $7cf3: $8e
    cp a                                          ; $7cf4: $bf
    xor a                                         ; $7cf5: $af
    ccf                                           ; $7cf6: $3f
    cp a                                          ; $7cf7: $bf
    ccf                                           ; $7cf8: $3f
    nop                                           ; $7cf9: $00
    rst $20                                       ; $7cfa: $e7
    ld a, a                                       ; $7cfb: $7f
    cp h                                          ; $7cfc: $bc
    ccf                                           ; $7cfd: $3f
    db $f4                                        ; $7cfe: $f4
    rra                                           ; $7cff: $1f
    db $fd                                        ; $7d00: $fd
    rra                                           ; $7d01: $1f
    nop                                           ; $7d02: $00
    or c                                          ; $7d03: $b1
    ld c, [hl]                                    ; $7d04: $4e
    pop bc                                        ; $7d05: $c1
    ld a, $44                                     ; $7d06: $3e $44
    cp e                                          ; $7d08: $bb
    jp nz, $003d                                  ; $7d09: $c2 $3d $00

    add d                                         ; $7d0c: $82

jr_0cb_7d0d:
    ld a, l                                       ; $7d0d: $7d
    sub h                                         ; $7d0e: $94
    ld l, e                                       ; $7d0f: $6b
    dec d                                         ; $7d10: $15
    ld [$11ee], a                                 ; $7d11: $ea $ee $11
    nop                                           ; $7d14: $00
    jp nz, Jump_0cb_643d                          ; $7d15: $c2 $3d $64

    sbc e                                         ; $7d18: $9b
    ld b, b                                       ; $7d19: $40
    cp a                                          ; $7d1a: $bf
    adc l                                         ; $7d1b: $8d
    ld [hl], d                                    ; $7d1c: $72
    nop                                           ; $7d1d: $00
    rst $18                                       ; $7d1e: $df
    jr nz, jr_0cb_7ca4                            ; $7d1f: $20 $83

    ld a, h                                       ; $7d21: $7c
    ld [bc], a                                    ; $7d22: $02
    db $fd                                        ; $7d23: $fd
    add sp, $17                                   ; $7d24: $e8 $17
    nop                                           ; $7d26: $00
    ld c, [hl]                                    ; $7d27: $4e
    rst $38                                       ; $7d28: $ff
    ld a, $ff                                     ; $7d29: $3e $ff
    cp e                                          ; $7d2b: $bb
    rst $38                                       ; $7d2c: $ff
    dec a                                         ; $7d2d: $3d
    rst $38                                       ; $7d2e: $ff
    nop                                           ; $7d2f: $00
    ld a, h                                       ; $7d30: $7c
    cp $68                                        ; $7d31: $fe $68
    db $fc                                        ; $7d33: $fc
    jp hl                                         ; $7d34: $e9


    db $fc                                        ; $7d35: $fc
    ld de, $00fe                                  ; $7d36: $11 $fe $00
    dec a                                         ; $7d39: $3d
    rst $38                                       ; $7d3a: $ff
    sbc e                                         ; $7d3b: $9b
    rst $38                                       ; $7d3c: $ff
    cp a                                          ; $7d3d: $bf
    rst $38                                       ; $7d3e: $ff
    ld [hl], d                                    ; $7d3f: $72
    rst $38                                       ; $7d40: $ff
    nop                                           ; $7d41: $00
    jr nz, @+$01                                  ; $7d42: $20 $ff

    db $fc                                        ; $7d44: $fc
    ld a, a                                       ; $7d45: $7f
    db $fd                                        ; $7d46: $fd
    rst $38                                       ; $7d47: $ff
    sub a                                         ; $7d48: $97
    ld a, a                                       ; $7d49: $7f
    nop                                           ; $7d4a: $00
    ld [hl], d                                    ; $7d4b: $72
    rst $38                                       ; $7d4c: $ff
    ld a, h                                       ; $7d4d: $7c
    rst $38                                       ; $7d4e: $ff
    db $dd                                        ; $7d4f: $dd
    rst $38                                       ; $7d50: $ff
    xor h                                         ; $7d51: $ac
    rst $28                                       ; $7d52: $ef
    nop                                           ; $7d53: $00
    xor [hl]                                      ; $7d54: $ae
    rst $20                                       ; $7d55: $e7
    adc $e7                                       ; $7d56: $ce $e7
    ld e, a                                       ; $7d58: $5f
    rst $00                                       ; $7d59: $c7
    sbc h                                         ; $7d5a: $9c
    db $e3                                        ; $7d5b: $e3
    nop                                           ; $7d5c: $00
    reti                                          ; $7d5d: $d9


jr_0cb_7d5e:
    ld h, $ff                                     ; $7d5e: $26 $ff
    nop                                           ; $7d60: $00
    cp l                                          ; $7d61: $bd
    ld b, d                                       ; $7d62: $42
    rst $38                                       ; $7d63: $ff
    nop                                           ; $7d64: $00
    jr nz, jr_0cb_7d5e                            ; $7d65: $20 $f7

    ld [$1119], sp                                ; $7d67: $08 $19 $11
    nop                                           ; $7d6a: $00
    rst $18                                       ; $7d6b: $df
    jr nz, jr_0cb_7d0d                            ; $7d6c: $20 $9f

    ld h, b                                       ; $7d6e: $60
    ld [bc], a                                    ; $7d6f: $02
    db $fd                                        ; $7d70: $fd
    ld [bc], a                                    ; $7d71: $02
    rst $28                                       ; $7d72: $ef
    db $10                                        ; $7d73: $10
    cp $01                                        ; $7d74: $fe $01
    db $10                                        ; $7d76: $10
    jr jr_0cb_7dde                                ; $7d77: $18 $65

    nop                                           ; $7d79: $00
    db $fc                                        ; $7d7a: $fc
    ld bc, $41fe                                  ; $7d7b: $01 $fe $41
    db $fc                                        ; $7d7e: $fc
    ld bc, $17f8                                  ; $7d7f: $01 $f8 $17
    nop                                           ; $7d82: $00
    ldh a, [rTAC]                                 ; $7d83: $f0 $07
    ldh a, [$03]                                  ; $7d85: $f0 $03
    ld hl, sp+$03                                 ; $7d87: $f8 $03
    ldh a, [$84]                                  ; $7d89: $f0 $84
    nop                                           ; $7d8b: $00
    ld a, a                                       ; $7d8c: $7f
    ld b, [hl]                                    ; $7d8d: $46
    cp a                                          ; $7d8e: $bf
    ret nz                                        ; $7d8f: $c0

    ccf                                           ; $7d90: $3f
    ret z                                         ; $7d91: $c8

    ccf                                           ; $7d92: $3f
    add b                                         ; $7d93: $80
    ld bc, $c07f                                  ; $7d94: $01 $7f $c0
    ccf                                           ; $7d97: $3f
    ldh [$1f], a                                  ; $7d98: $e0 $1f
    ldh [$1f], a                                  ; $7d9a: $e0 $1f
    ld [hl], $18                                  ; $7d9c: $36 $18
    ret nz                                        ; $7d9e: $c0

    ld b, $38                                     ; $7d9f: $06 $38
    inc b                                         ; $7da1: $04
    add hl, bc                                    ; $7da2: $09
    db $fd                                        ; $7da3: $fd
    db $fc                                        ; $7da4: $fc
    ld sp, hl                                     ; $7da5: $f9
    ld hl, sp-$0a                                 ; $7da6: $f8 $f6
    pop af                                        ; $7da8: $f1
    ld [bc], a                                    ; $7da9: $02
    or $f1                                        ; $7daa: $f6 $f1
    ld a, [$f3f9]                                 ; $7dac: $fa $f9 $f3
    ldh a, [rTMA]                                 ; $7daf: $f0 $06
    ld bc, $08bf                                  ; $7db1: $01 $bf $08
    rst $38                                       ; $7db4: $ff
    ccf                                           ; $7db5: $3f
    ld a, a                                       ; $7db6: $7f
    cp a                                          ; $7db7: $bf
    ld c, $01                                     ; $7db8: $0e $01
    ccf                                           ; $7dba: $3f
    ld a, a                                       ; $7dbb: $7f
    sbc a                                         ; $7dbc: $9f
    dec [hl]                                      ; $7dbd: $35
    ccf                                           ; $7dbe: $3f
    rst $18                                       ; $7dbf: $df
    ld h, [hl]                                    ; $7dc0: $66
    jr @+$81                                      ; $7dc1: $18 $7f

    ld bc, $7f00                                  ; $7dc3: $01 $00 $7f
    ld bc, $7f00                                  ; $7dc6: $01 $00 $7f
    ld hl, $0000                                  ; $7dc9: $21 $00 $00
    cp $00                                        ; $7dcc: $fe $00
    rst $28                                       ; $7dce: $ef
    nop                                           ; $7dcf: $00
    db $fd                                        ; $7dd0: $fd
    nop                                           ; $7dd1: $00
    sbc a                                         ; $7dd2: $9f
    nop                                           ; $7dd3: $00
    nop                                           ; $7dd4: $00
    rst $18                                       ; $7dd5: $df
    nop                                           ; $7dd6: $00
    xor $00                                       ; $7dd7: $ee $00
    dec d                                         ; $7dd9: $15
    nop                                           ; $7dda: $00
    sub h                                         ; $7ddb: $94
    nop                                           ; $7ddc: $00
    nop                                           ; $7ddd: $00

jr_0cb_7dde:
    add d                                         ; $7dde: $82
    nop                                           ; $7ddf: $00
    jp nz, Jump_0cb_4400                          ; $7de0: $c2 $00 $44

    nop                                           ; $7de3: $00
    pop bc                                        ; $7de4: $c1
    nop                                           ; $7de5: $00
    nop                                           ; $7de6: $00
    or c                                          ; $7de7: $b1
    nop                                           ; $7de8: $00
    add sp, $00                                   ; $7de9: $e8 $00
    ld [bc], a                                    ; $7deb: $02
    nop                                           ; $7dec: $00
    add e                                         ; $7ded: $83
    add d                                         ; $7dee: $82
    jr jr_0cb_7df1                                ; $7def: $18 $00

jr_0cb_7df1:
    adc l                                         ; $7df1: $8d
    nop                                           ; $7df2: $00
    ld b, b                                       ; $7df3: $40
    nop                                           ; $7df4: $00
    ld h, h                                       ; $7df5: $64
    ld d, $00                                     ; $7df6: $16 $00
    db $ed                                        ; $7df8: $ed
    nop                                           ; $7df9: $00
    db $fc                                        ; $7dfa: $fc
    dec d                                         ; $7dfb: $15
    cp $95                                        ; $7dfc: $fe $95
    db $fc                                        ; $7dfe: $fc
    add c                                         ; $7dff: $81
    ld hl, sp-$39                                 ; $7e00: $f8 $c7
    nop                                           ; $7e02: $00
    ldh a, [rBGP]                                 ; $7e03: $f0 $47
    ldh a, [$c3]                                  ; $7e05: $f0 $c3
    ld hl, sp-$4d                                 ; $7e07: $f8 $b3
    ldh a, [$e8]                                  ; $7e09: $f0 $e8
    nop                                           ; $7e0b: $00
    ld a, a                                       ; $7e0c: $7f
    ld b, d                                       ; $7e0d: $42
    cp a                                          ; $7e0e: $bf
    jp $df3f                                      ; $7e0f: $c3 $3f $df


    ccf                                           ; $7e12: $3f
    adc l                                         ; $7e13: $8d
    add l                                         ; $7e14: $85
    sub b                                         ; $7e15: $90
    nop                                           ; $7e16: $00
    db $e4                                        ; $7e17: $e4
    rra                                           ; $7e18: $1f
    ld [c], a                                     ; $7e19: $e2
    rra                                           ; $7e1a: $1f
    ld b, b                                       ; $7e1b: $40
    ld b, b                                       ; $7e1c: $40
    add b                                         ; $7e1d: $80
    ld b, b                                       ; $7e1e: $40
    ld [$1700], sp                                ; $7e1f: $08 $00 $17
    rst $38                                       ; $7e22: $ff
    ld b, b                                       ; $7e23: $40
    rst $38                                       ; $7e24: $ff
    pop bc                                        ; $7e25: $c1
    rst $38                                       ; $7e26: $ff
    db $e3                                        ; $7e27: $e3
    rst $28                                       ; $7e28: $ef
    nop                                           ; $7e29: $00
    xor c                                         ; $7e2a: $a9
    rst $20                                       ; $7e2b: $e7
    ld a, [bc]                                    ; $7e2c: $0a
    rst $20                                       ; $7e2d: $e7
    ld a, [de]                                    ; $7e2e: $1a
    rst $00                                       ; $7e2f: $c7
    ld e, l                                       ; $7e30: $5d
    db $e3                                        ; $7e31: $e3
    nop                                           ; $7e32: $00
    db $dd                                        ; $7e33: $dd
    jp $c3be                                      ; $7e34: $c3 $be $c3


    ld a, l                                       ; $7e37: $7d
    jp $c75b                                      ; $7e38: $c3 $5b $c7


    ld e, b                                       ; $7e3b: $58
    db $e4                                        ; $7e3c: $e4
    pop bc                                        ; $7e3d: $c1
    ld bc, $1a9d                                  ; $7e3e: $01 $9d $1a
    ld bc, $5820                                  ; $7e41: $01 $20 $58
    ld e, a                                       ; $7e44: $5f
    db $e3                                        ; $7e45: $e3
    add d                                         ; $7e46: $82
    ld [bc], a                                    ; $7e47: $02
    nop                                           ; $7e48: $00
    ld c, e                                       ; $7e49: $4b
    nop                                           ; $7e4a: $00
    ld b, e                                       ; $7e4b: $43
    nop                                           ; $7e4c: $00
    jr @+$70                                      ; $7e4d: $18 $6e

    nop                                           ; $7e4f: $00
    ld d, b                                       ; $7e50: $50
    nop                                           ; $7e51: $00
    nop                                           ; $7e52: $00
    ld sp, $1000                                  ; $7e53: $31 $00 $10
    nop                                           ; $7e56: $00
    sub b                                         ; $7e57: $90
    nop                                           ; $7e58: $00
    ld l, h                                       ; $7e59: $6c
    nop                                           ; $7e5a: $00
    nop                                           ; $7e5b: $00
    inc de                                        ; $7e5c: $13
    nop                                           ; $7e5d: $00
    ld a, [de]                                    ; $7e5e: $1a
    nop                                           ; $7e5f: $00
    dec h                                         ; $7e60: $25
    nop                                           ; $7e61: $00
    ld [hl-], a                                   ; $7e62: $32
    nop                                           ; $7e63: $00
    nop                                           ; $7e64: $00
    inc sp                                        ; $7e65: $33
    nop                                           ; $7e66: $00
    add b                                         ; $7e67: $80
    nop                                           ; $7e68: $00
    ld [$07ff], a                                 ; $7e69: $ea $ff $07
    nop                                           ; $7e6c: $00
    rst $38                                       ; $7e6d: $ff
    cp c                                          ; $7e6e: $b9
    rst $38                                       ; $7e6f: $ff
    adc l                                         ; $7e70: $8d
    rst $38                                       ; $7e71: $ff
    ld d, [hl]                                    ; $7e72: $56
    cp $b4                                        ; $7e73: $fe $b4
    nop                                           ; $7e75: $00
    db $fc                                        ; $7e76: $fc
    and l                                         ; $7e77: $a5
    db $fc                                        ; $7e78: $fc
    adc e                                         ; $7e79: $8b
    cp $07                                        ; $7e7a: $fe $07
    rst $38                                       ; $7e7c: $ff
    or l                                          ; $7e7d: $b5
    ld [$6bff], sp                                ; $7e7e: $08 $ff $6b
    rst $38                                       ; $7e81: $ff
    xor d                                         ; $7e82: $aa
    ld h, h                                       ; $7e83: $64
    ld bc, $7fef                                  ; $7e84: $01 $ef $7f
    adc b                                         ; $7e87: $88
    db $10                                        ; $7e88: $10
    rst $38                                       ; $7e89: $ff
    db $dd                                        ; $7e8a: $dd
    ld a, a                                       ; $7e8b: $7f
    ld h, b                                       ; $7e8c: $60
    ld e, b                                       ; $7e8d: $58
    cp [hl]                                       ; $7e8e: $be
    rst $38                                       ; $7e8f: $ff
    ret c                                         ; $7e90: $d8

    rst $38                                       ; $7e91: $ff
    nop                                           ; $7e92: $00
    ld d, c                                       ; $7e93: $51
    rst $38                                       ; $7e94: $ff
    jr z, @+$01                                   ; $7e95: $28 $ff

    dec d                                         ; $7e97: $15
    rst $38                                       ; $7e98: $ff
    and b                                         ; $7e99: $a0
    cp $00                                        ; $7e9a: $fe $00
    db $10                                        ; $7e9c: $10
    db $fc                                        ; $7e9d: $fc
    sub l                                         ; $7e9e: $95
    db $fc                                        ; $7e9f: $fc
    ld b, c                                       ; $7ea0: $41
    cp $97                                        ; $7ea1: $fe $97
    rst $38                                       ; $7ea3: $ff
    nop                                           ; $7ea4: $00
    or e                                          ; $7ea5: $b3
    rst $38                                       ; $7ea6: $ff
    ld e, d                                       ; $7ea7: $5a
    rst $38                                       ; $7ea8: $ff
    rrca                                          ; $7ea9: $0f
    rst $38                                       ; $7eaa: $ff
    inc d                                         ; $7eab: $14
    rst $38                                       ; $7eac: $ff
    nop                                           ; $7ead: $00
    and e                                         ; $7eae: $a3
    ld a, a                                       ; $7eaf: $7f
    inc de                                        ; $7eb0: $13
    rst $38                                       ; $7eb1: $ff
    adc e                                         ; $7eb2: $8b
    ld a, a                                       ; $7eb3: $7f
    jr nz, jr_0cb_7eb6                            ; $7eb4: $20 $00

jr_0cb_7eb6:
    ld b, d                                       ; $7eb6: $42
    ld h, b                                       ; $7eb7: $60
    ld [c], a                                     ; $7eb8: $e2
    nop                                           ; $7eb9: $00
    stop                                          ; $7eba: $10 $00
    ld bc, $0100                                  ; $7ebc: $01 $00 $01
    jr jr_0cb_7f25                                ; $7ebf: $18 $64

    xor h                                         ; $7ec1: $ac
    ld [$4200], sp                                ; $7ec2: $08 $00 $42
    inc c                                         ; $7ec5: $0c
    nop                                           ; $7ec6: $00
    db $10                                        ; $7ec7: $10
    db $10                                        ; $7ec8: $10
    jr nz, @-$5e                                  ; $7ec9: $20 $a0

    ld [hl+], a                                   ; $7ecb: $22
    rst $38                                       ; $7ecc: $ff
    db $10                                        ; $7ecd: $10
    dec c                                         ; $7ece: $0d
    rst $38                                       ; $7ecf: $ff
    ld [bc], a                                    ; $7ed0: $02
    rst $38                                       ; $7ed1: $ff
    ld h, b                                       ; $7ed2: $60
    add $01                                       ; $7ed3: $c6 $01
    ret nz                                        ; $7ed5: $c0

    ld a, [de]                                    ; $7ed6: $1a
    db $10                                        ; $7ed7: $10
    add $02                                       ; $7ed8: $c6 $02
    sub b                                         ; $7eda: $90
    or l                                          ; $7edb: $b5
    ld bc, $64ff                                  ; $7edc: $01 $ff $64
    ld a, a                                       ; $7edf: $7f
    add hl, sp                                    ; $7ee0: $39
    cp $00                                        ; $7ee1: $fe $00
    db $fc                                        ; $7ee3: $fc
    add hl, bc                                    ; $7ee4: $09
    ret nz                                        ; $7ee5: $c0

    ld h, b                                       ; $7ee6: $60
    nop                                           ; $7ee7: $00
    adc a                                         ; $7ee8: $8f
    add hl, sp                                    ; $7ee9: $39
    add b                                         ; $7eea: $80
    ld a, a                                       ; $7eeb: $7f
    jr nz, @+$01                                  ; $7eec: $20 $ff

    and d                                         ; $7eee: $a2
    ld a, a                                       ; $7eef: $7f
    push bc                                       ; $7ef0: $c5
    ld b, a                                       ; $7ef1: $47
    jr z, jr_0cb_7f43                             ; $7ef2: $28 $4f

    jr z, @+$19                                   ; $7ef4: $28 $17

    rst $38                                       ; $7ef6: $ff
    db $fd                                        ; $7ef7: $fd
    ld [bc], a                                    ; $7ef8: $02
    ld [bc], a                                    ; $7ef9: $02
    jr nz, jr_0cb_7f0e                            ; $7efa: $20 $12

    ld [bc], a                                    ; $7efc: $02
    ld b, b                                       ; $7efd: $40
    cp a                                          ; $7efe: $bf
    ld a, [de]                                    ; $7eff: $1a
    ld [bc], a                                    ; $7f00: $02
    dec a                                         ; $7f01: $3d
    rst $38                                       ; $7f02: $ff
    adc b                                         ; $7f03: $88
    rst $38                                       ; $7f04: $ff
    ld d, a                                       ; $7f05: $57
    rst $38                                       ; $7f06: $ff
    ld d, a                                       ; $7f07: $57
    sub $a8                                       ; $7f08: $d6 $a8
    nop                                           ; $7f0a: $00
    cp h                                          ; $7f0b: $bc
    ld d, $02                                     ; $7f0c: $16 $02

jr_0cb_7f0e:
    ld a, h                                       ; $7f0e: $7c
    jr z, @+$04                                   ; $7f0f: $28 $02

    jp c, $0202                                   ; $7f11: $da $02 $02

    nop                                           ; $7f14: $00
    ld b, b                                       ; $7f15: $40
    ld e, [hl]                                    ; $7f16: $5e
    ldh [rSC], a                                  ; $7f17: $e0 $02
    sub d                                         ; $7f19: $92
    rst $38                                       ; $7f1a: $ff
    ld l, $ff                                     ; $7f1b: $2e $ff
    ld e, b                                       ; $7f1d: $58
    rst $38                                       ; $7f1e: $ff
    ld b, b                                       ; $7f1f: $40
    add hl, hl                                    ; $7f20: $29
    nop                                           ; $7f21: $00
    ld [bc], a                                    ; $7f22: $02
    and c                                         ; $7f23: $a1
    db $fc                                        ; $7f24: $fc

jr_0cb_7f25:
    pop hl                                        ; $7f25: $e1
    ld hl, sp+$07                                 ; $7f26: $f8 $07
    ldh a, [rP1]                                  ; $7f28: $f0 $00
    ld d, a                                       ; $7f2a: $57
    ldh a, [rHDMA3]                               ; $7f2b: $f0 $53
    ld hl, sp+$73                                 ; $7f2d: $f8 $73
    ldh a, [$90]                                  ; $7f2f: $f0 $90
    ld a, a                                       ; $7f31: $7f
    nop                                           ; $7f32: $00
    call nz, $ccbf                                ; $7f33: $c4 $bf $cc
    ccf                                           ; $7f36: $3f
    ret nc                                        ; $7f37: $d0

    ccf                                           ; $7f38: $3f
    sub l                                         ; $7f39: $95
    ld a, a                                       ; $7f3a: $7f
    ld bc, $3fc4                                  ; $7f3b: $01 $c4 $3f
    db $ec                                        ; $7f3e: $ec
    rra                                           ; $7f3f: $1f
    ld sp, hl                                     ; $7f40: $f9
    rra                                           ; $7f41: $1f
    and c                                         ; $7f42: $a1

jr_0cb_7f43:
    ld b, [hl]                                    ; $7f43: $46
    ld bc, $b401                                  ; $7f44: $01 $01 $b4
    rst $38                                       ; $7f47: $ff
    rst $08                                       ; $7f48: $cf
    rst $28                                       ; $7f49: $ef
    ret                                           ; $7f4a: $c9


    rst $20                                       ; $7f4b: $e7
    xor h                                         ; $7f4c: $ac
    ldh [rSC], a                                  ; $7f4d: $e0 $02

jr_0cb_7f4f:
    jr nz, jr_0cb_7f4f                            ; $7f4f: $20 $fe

    db $e3                                        ; $7f51: $e3
    jr @+$6d                                      ; $7f52: $18 $6b

    rst $30                                       ; $7f54: $f7
    ldh a, [$ef]                                  ; $7f55: $f0 $ef
    ldh [$ef], a                                  ; $7f57: $e0 $ef
    ld b, b                                       ; $7f59: $40
    ldh [rTMA], a                                 ; $7f5a: $e0 $06
    ld [$e0e7], sp                                ; $7f5c: $08 $e7 $e0
    di                                            ; $7f5f: $f3
    ldh a, [$f9]                                  ; $7f60: $f0 $f9
    ld hl, sp-$75                                 ; $7f62: $f8 $8b
    ei                                            ; $7f64: $fb
    nop                                           ; $7f65: $00
    rrca                                          ; $7f66: $0f
    rst $38                                       ; $7f67: $ff
    rra                                           ; $7f68: $1f
    ld b, $30                                     ; $7f69: $06 $30
    ld e, a                                       ; $7f6b: $5f
    ld [hl], b                                    ; $7f6c: $70
    jr @+$52                                      ; $7f6d: $18 $50

    dec sp                                        ; $7f6f: $3b
    add e                                         ; $7f70: $83
    ld b, b                                       ; $7f71: $40
    ld a, [hl+]                                   ; $7f72: $2a
    rst $30                                       ; $7f73: $f7
    ldh a, [$f7]                                  ; $7f74: $f0 $f7
    ldh a, [$fb]                                  ; $7f76: $f0 $fb
    nop                                           ; $7f78: $00
    inc bc                                        ; $7f79: $03
    ld b, b                                       ; $7f7a: $40
    ld a, [de]                                    ; $7f7b: $1a
    ldh [rSC], a                                  ; $7f7c: $e0 $02
    nop                                           ; $7f7e: $00
    ld b, b                                       ; $7f7f: $40
    ld [bc], a                                    ; $7f80: $02
    jr c, jr_0cb_7f83                             ; $7f81: $38 $00

jr_0cb_7f83:
    rra                                           ; $7f83: $1f
    add b                                         ; $7f84: $80
    nop                                           ; $7f85: $00
    ld b, c                                       ; $7f86: $41
    nop                                           ; $7f87: $00
    ld b, b                                       ; $7f88: $40
    nop                                           ; $7f89: $00
    ld bc, $0168                                  ; $7f8a: $01 $68 $01
    nop                                           ; $7f8d: $00
    inc bc                                        ; $7f8e: $03
    nop                                           ; $7f8f: $00
    rlca                                          ; $7f90: $07
    nop                                           ; $7f91: $00
    nop                                           ; $7f92: $00
    rrca                                          ; $7f93: $0f
    nop                                           ; $7f94: $00
    rra                                           ; $7f95: $1f
    nop                                           ; $7f96: $00
    ccf                                           ; $7f97: $3f
    nop                                           ; $7f98: $00
    ld a, a                                       ; $7f99: $7f
    nop                                           ; $7f9a: $00
    db $10                                        ; $7f9b: $10
    rst $38                                       ; $7f9c: $ff
    rst $38                                       ; $7f9d: $ff
    nop                                           ; $7f9e: $00
    ld [bc], a                                    ; $7f9f: $02
    ld e, b                                       ; $7fa0: $58
    cp $00                                        ; $7fa1: $fe $00
    db $fc                                        ; $7fa3: $fc
    nop                                           ; $7fa4: $00
    nop                                           ; $7fa5: $00
    ld hl, sp+$00                                 ; $7fa6: $f8 $00
    ldh a, [rP1]                                  ; $7fa8: $f0 $00
    ldh [rP1], a                                  ; $7faa: $e0 $00
    ret nz                                        ; $7fac: $c0

    nop                                           ; $7fad: $00
    ld h, b                                       ; $7fae: $60
    add b                                         ; $7faf: $80
    dec a                                         ; $7fb0: $3d
    ld [$6021], sp                                ; $7fb1: $08 $21 $60
    ld bc, $03fe                                  ; $7fb4: $01 $fe $03
    db $fc                                        ; $7fb7: $fc
    rlca                                          ; $7fb8: $07
    nop                                           ; $7fb9: $00
    ld hl, sp+$0f                                 ; $7fba: $f8 $0f
    ldh a, [$1f]                                  ; $7fbc: $f0 $1f
    ldh [$3f], a                                  ; $7fbe: $e0 $3f
    ret nz                                        ; $7fc0: $c0

    ld a, a                                       ; $7fc1: $7f
    ld b, b                                       ; $7fc2: $40
    add b                                         ; $7fc3: $80
    jr nc, jr_0cb_7fc6                            ; $7fc4: $30 $00

jr_0cb_7fc6:
    ld bc, $03fc                                  ; $7fc6: $01 $fc $03
    ld hl, sp+$07                                 ; $7fc9: $f8 $07
    ldh a, [$03]                                  ; $7fcb: $f0 $03
    rrca                                          ; $7fcd: $0f
    ldh [$1f], a                                  ; $7fce: $e0 $1f
    ret nz                                        ; $7fd0: $c0

    ccf                                           ; $7fd1: $3f
    add b                                         ; $7fd2: $80
    ld d, b                                       ; $7fd3: $50
    nop                                           ; $7fd4: $00
    ld e, a                                       ; $7fd5: $5f
    ld h, b                                       ; $7fd6: $60
    nop                                           ; $7fd7: $00
    nop                                           ; $7fd8: $00

    db $ff, $7f, $fd, $2a, $50, $11, $00, $0c

    rst $38                                       ; $7fe1: $ff
    ld a, a                                       ; $7fe2: $7f
    cp l                                          ; $7fe3: $bd
    ld a, [de]                                    ; $7fe4: $1a
    ld [hl], b                                    ; $7fe5: $70
    add hl, de                                    ; $7fe6: $19
    ld b, h                                       ; $7fe7: $44
    nop                                           ; $7fe8: $00
    rst $38                                       ; $7fe9: $ff
    ld a, a                                       ; $7fea: $7f
    sbc l                                         ; $7feb: $9d
    ld a, [de]                                    ; $7fec: $1a
    ld h, h                                       ; $7fed: $64
    ld d, l                                       ; $7fee: $55
    jr nz, @+$12                                  ; $7fef: $20 $10

    rst $38                                       ; $7ff1: $ff
    ld a, a                                       ; $7ff2: $7f
    or a                                          ; $7ff3: $b7
    ccf                                           ; $7ff4: $3f
    call nz, Call_0cb_4021                        ; $7ff5: $c4 $21 $40
    inc b                                         ; $7ff8: $04
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
