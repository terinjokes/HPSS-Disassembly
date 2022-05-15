; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $031", ROMX[$4000], BANK[$31]

    ld sp, $bd1d                                  ; $4000: $31 $1d $bd
    ld l, e                                       ; $4003: $6b
    ld e, d                                       ; $4004: $5a
    sbc l                                         ; $4005: $9d
    db $fd                                        ; $4006: $fd
    dec de                                        ; $4007: $1b
    db $eb                                        ; $4008: $eb
    ld e, l                                       ; $4009: $5d
    db $28, $af                                   ; $400a: $28 $af
    ld c, l                                       ; $400c: $4d
    ld l, h                                       ; $400d: $6c
    ld bc, $1387                                  ; $400e: $01 $87 $13
    jp hl                                         ; $4011: $e9


    sub e                                         ; $4012: $93
    add $ef                                       ; $4013: $c6 $ef
    ldh a, [$67]                                  ; $4015: $f0 $67
    ld b, b                                       ; $4017: $40
    xor [hl]                                      ; $4018: $ae
    ld h, l                                       ; $4019: $65
    ccf                                           ; $401a: $3f
    db $10                                        ; $401b: $10
    ld a, b                                       ; $401c: $78
    cp [hl]                                       ; $401d: $be
    jp Jump_000_069b                              ; $401e: $c3 $9b $06


    ld d, b                                       ; $4021: $50
    dec bc                                        ; $4022: $0b
    ldh a, [$15]                                  ; $4023: $f0 $15
    dec l                                         ; $4025: $2d
    push af                                       ; $4026: $f5
    add b                                         ; $4027: $80
    sbc $df                                       ; $4028: $de $df
    ld de, $1e6b                                  ; $402a: $11 $6b $1e
    ld hl, sp-$14                                 ; $402d: $f8 $ec
    ld a, a                                       ; $402f: $7f

jr_031_4030:
    jr z, @-$0c                                   ; $4030: $28 $f2

    dec d                                         ; $4032: $15
    dec de                                        ; $4033: $1b
    cp c                                          ; $4034: $b9
    db $fd                                        ; $4035: $fd
    or b                                          ; $4036: $b0
    adc e                                         ; $4037: $8b
    ldh a, [$fd]                                  ; $4038: $f0 $fd
    cp h                                          ; $403a: $bc
    dec b                                         ; $403b: $05
    sbc l                                         ; $403c: $9d
    call c, $d87e                                 ; $403d: $dc $7e $d8
    ld b, l                                       ; $4040: $45
    ld hl, sp-$02                                 ; $4041: $f8 $fe
    db $ec                                        ; $4043: $ec
    ld a, a                                       ; $4044: $7f
    jr z, jr_031_407e                             ; $4045: $28 $37

    push de                                       ; $4047: $d5
    ld h, $b6                                     ; $4048: $26 $b6
    sbc l                                         ; $404a: $9d
    call c, $d87e                                 ; $404b: $dc $7e $d8
    ld b, l                                       ; $404e: $45
    ld hl, sp-$02                                 ; $404f: $f8 $fe
    sub h                                         ; $4051: $94
    ld c, [hl]                                    ; $4052: $4e
    db $eb                                        ; $4053: $eb
    ld [hl+], a                                   ; $4054: $22
    cp b                                          ; $4055: $b8
    xor c                                         ; $4056: $a9
    ld [hl], $b1                                  ; $4057: $36 $b1
    dec b                                         ; $4059: $05
    sbc l                                         ; $405a: $9d
    ld h, b                                       ; $405b: $60
    ld e, a                                       ; $405c: $5f
    ld l, e                                       ; $405d: $6b
    inc b                                         ; $405e: $04
    sbc l                                         ; $405f: $9d
    rst $10                                       ; $4060: $d7
    ld e, b                                       ; $4061: $58
    xor h                                         ; $4062: $ac
    ld [hl], c                                    ; $4063: $71
    ld a, l                                       ; $4064: $7d
    xor $5a                                       ; $4065: $ee $5a
    ld d, e                                       ; $4067: $53
    jr nz, jr_031_4030                            ; $4068: $20 $c6

    or l                                          ; $406a: $b5
    res 3, h                                      ; $406b: $cb $9c
    inc d                                         ; $406d: $14
    ret                                           ; $406e: $c9


    pop de                                        ; $406f: $d1
    ei                                            ; $4070: $fb
    dec sp                                        ; $4071: $3b
    ld a, [$7c15]                                 ; $4072: $fa $15 $7c
    dec sp                                        ; $4075: $3b
    jp nz, Jump_031_60c5                          ; $4076: $c2 $c5 $60

    ld c, h                                       ; $4079: $4c
    ld b, c                                       ; $407a: $41
    ld [hl], e                                    ; $407b: $73
    ld d, l                                       ; $407c: $55
    ld c, l                                       ; $407d: $4d

jr_031_407e:
    pop bc                                        ; $407e: $c1
    jp c, $16c4                                   ; $407f: $da $c4 $16

    ld e, c                                       ; $4082: $59
    and $a4                                       ; $4083: $e6 $a4
    ld [hl], c                                    ; $4085: $71
    push bc                                       ; $4086: $c5
    ld [c], a                                     ; $4087: $e2
    ld sp, hl                                     ; $4088: $f9
    add l                                         ; $4089: $85
    ld [hl], l                                    ; $408a: $75
    ld e, l                                       ; $408b: $5d
    ld sp, $e2d1                                  ; $408c: $31 $d1 $e2
    ld sp, hl                                     ; $408f: $f9
    add l                                         ; $4090: $85
    ld a, [c]                                     ; $4091: $f2
    ret c                                         ; $4092: $d8

    ld [hl], l                                    ; $4093: $75
    dec hl                                        ; $4094: $2b
    ld [hl], l                                    ; $4095: $75
    ld d, e                                       ; $4096: $53
    xor [hl]                                      ; $4097: $ae
    xor b                                         ; $4098: $a8
    ld c, l                                       ; $4099: $4d
    ld l, h                                       ; $409a: $6c
    ld bc, $609d                                  ; $409b: $01 $9d $60
    adc h                                         ; $409e: $8c
    push bc                                       ; $409f: $c5
    adc h                                         ; $40a0: $8c
    ld a, c                                       ; $40a1: $79
    add sp, $2b                                   ; $40a2: $e8 $2b
    or [hl]                                       ; $40a4: $b6
    cp b                                          ; $40a5: $b8
    add hl, sp                                    ; $40a6: $39
    ld l, d                                       ; $40a7: $6a
    rst $00                                       ; $40a8: $c7
    ld a, b                                       ; $40a9: $78
    ld c, l                                       ; $40aa: $4d
    ld a, [hl-]                                   ; $40ab: $3a
    db $fd                                        ; $40ac: $fd
    ld a, $7f                                     ; $40ad: $3e $7f
    ld e, [hl]                                    ; $40af: $5e
    sbc e                                         ; $40b0: $9b
    ret c                                         ; $40b1: $d8

    ld [bc], a                                    ; $40b2: $02
    sbc l                                         ; $40b3: $9d
    ld h, b                                       ; $40b4: $60
    adc h                                         ; $40b5: $8c
    push bc                                       ; $40b6: $c5
    adc h                                         ; $40b7: $8c
    ld a, c                                       ; $40b8: $79
    add sp, $2b                                   ; $40b9: $e8 $2b

jr_031_40bb:
    or [hl]                                       ; $40bb: $b6
    cp b                                          ; $40bc: $b8
    add hl, sp                                    ; $40bd: $39
    ld l, d                                       ; $40be: $6a
    dec e                                         ; $40bf: $1d
    rra                                           ; $40c0: $1f
    and h                                         ; $40c1: $a4
    db $e3                                        ; $40c2: $e3
    ld b, c                                       ; $40c3: $41
    ld a, [hl-]                                   ; $40c4: $3a
    ld e, l                                       ; $40c5: $5d
    ld d, h                                       ; $40c6: $54
    sbc e                                         ; $40c7: $9b
    ret c                                         ; $40c8: $d8

    ld [bc], a                                    ; $40c9: $02
    sbc l                                         ; $40ca: $9d
    ld h, b                                       ; $40cb: $60
    adc h                                         ; $40cc: $8c
    push bc                                       ; $40cd: $c5
    adc h                                         ; $40ce: $8c
    ld a, c                                       ; $40cf: $79
    add sp, $2b                                   ; $40d0: $e8 $2b
    or [hl]                                       ; $40d2: $b6
    cp b                                          ; $40d3: $b8
    add hl, sp                                    ; $40d4: $39
    ld l, d                                       ; $40d5: $6a
    and a                                         ; $40d6: $a7
    jp z, $21b9                                   ; $40d7: $ca $b9 $21

    xor e                                         ; $40da: $ab
    xor b                                         ; $40db: $a8
    ld [hl], $b1                                  ; $40dc: $36 $b1
    dec b                                         ; $40de: $05
    sbc l                                         ; $40df: $9d
    ld h, b                                       ; $40e0: $60
    adc h                                         ; $40e1: $8c
    push bc                                       ; $40e2: $c5
    adc h                                         ; $40e3: $8c
    ld a, c                                       ; $40e4: $79
    add sp, $2b                                   ; $40e5: $e8 $2b
    or [hl]                                       ; $40e7: $b6
    cp b                                          ; $40e8: $b8
    add hl, sp                                    ; $40e9: $39
    ld l, d                                       ; $40ea: $6a
    and a                                         ; $40eb: $a7
    jp z, $7d1b                                   ; $40ec: $ca $1b $7d

    ld [hl-], a                                   ; $40ef: $32
    rst $20                                       ; $40f0: $e7
    or l                                          ; $40f1: $b5
    adc c                                         ; $40f2: $89
    dec l                                         ; $40f3: $2d
    sbc l                                         ; $40f4: $9d
    ld h, b                                       ; $40f5: $60
    rst $38                                       ; $40f6: $ff
    ld l, [hl]                                    ; $40f7: $6e
    or c                                          ; $40f8: $b1
    add $62                                       ; $40f9: $c6 $62
    ld a, [$73d7]                                 ; $40fb: $fa $d7 $73
    adc l                                         ; $40fe: $8d
    rst $18                                       ; $40ff: $df
    jr jr_031_40bb                                ; $4100: $18 $b9

    ccf                                           ; $4102: $3f
    ret nz                                        ; $4103: $c0

    ld d, d                                       ; $4104: $52
    ld l, [hl]                                    ; $4105: $6e
    cp e                                          ; $4106: $bb
    ld b, h                                       ; $4107: $44
    and h                                         ; $4108: $a4
    dec [hl]                                      ; $4109: $35
    and $84                                       ; $410a: $e6 $84
    xor d                                         ; $410c: $aa
    ld c, l                                       ; $410d: $4d
    ld l, h                                       ; $410e: $6c
    ld bc, $0f59                                  ; $410f: $01 $59 $0f
    inc a                                         ; $4112: $3c
    ld h, [hl]                                    ; $4113: $66
    adc l                                         ; $4114: $8d
    rst $10                                       ; $4115: $d7

jr_031_4116:
    adc l                                         ; $4116: $8d
    dec e                                         ; $4117: $1d
    jp hl                                         ; $4118: $e9


    add $7a                                       ; $4119: $c6 $7a
    ld l, e                                       ; $411b: $6b
    ld e, $f8                                     ; $411c: $1e $f8
    db $fc                                        ; $411e: $fc
    halt                                          ; $411f: $76
    ld b, c                                       ; $4120: $41
    ld [hl], e                                    ; $4121: $73
    ld [hl], e                                    ; $4122: $73
    ld sp, hl                                     ; $4123: $f9
    adc d                                         ; $4124: $8a
    halt                                          ; $4125: $76
    adc d                                         ; $4126: $8a
    dec [hl]                                      ; $4127: $35
    ld a, [hl+]                                   ; $4128: $2a
    db $f4                                        ; $4129: $f4
    add b                                         ; $412a: $80
    add $b5                                       ; $412b: $c6 $b5
    inc de                                        ; $412d: $13
    push bc                                       ; $412e: $c5
    ld h, b                                       ; $412f: $60
    add hl, hl                                    ; $4130: $29
    xor d                                         ; $4131: $aa
    ld c, l                                       ; $4132: $4d
    ld l, h                                       ; $4133: $6c
    ld bc, $3e27                                  ; $4134: $01 $27 $3e
    ld c, a                                       ; $4137: $4f
    ret                                           ; $4138: $c9


    ld l, c                                       ; $4139: $69
    ld [hl], c                                    ; $413a: $71
    ld d, a                                       ; $413b: $57
    ret nc                                        ; $413c: $d0

    ld l, [hl]                                    ; $413d: $6e
    rla                                           ; $413e: $17
    db $db                                        ; $413f: $db
    sbc d                                         ; $4140: $9a
    and $56                                       ; $4141: $e6 $56
    sbc e                                         ; $4143: $9b
    cp b                                          ; $4144: $b8
    dec e                                         ; $4145: $1d

jr_031_4146:
    db $fd                                        ; $4146: $fd
    cp $a5                                        ; $4147: $fe $a5
    push de                                       ; $4149: $d5
    ld e, c                                       ; $414a: $59
    ret c                                         ; $414b: $d8

    ld e, h                                       ; $414c: $5c
    rla                                           ; $414d: $17
    ld e, e                                       ; $414e: $5b
    ld a, [hl]                                    ; $414f: $7e
    or c                                          ; $4150: $b1
    ld d, l                                       ; $4151: $55
    sbc e                                         ; $4152: $9b
    ret c                                         ; $4153: $d8

    ld [bc], a                                    ; $4154: $02
    sbc l                                         ; $4155: $9d
    db $fc                                        ; $4156: $fc
    ld bc, $15a3                                  ; $4157: $01 $a3 $15
    ld e, e                                       ; $415a: $5b
    ld [$affd], a                                 ; $415b: $ea $fd $af
    ld e, l                                       ; $415e: $5d
    push hl                                       ; $415f: $e5
    or [hl]                                       ; $4160: $b6
    and $81                                       ; $4161: $e6 $81
    rst $28                                       ; $4163: $ef
    ld bc, $e8e3                                  ; $4164: $01 $e3 $e8
    dec hl                                        ; $4167: $2b
    or [hl]                                       ; $4168: $b6
    and $39                                       ; $4169: $e6 $39
    xor c                                         ; $416b: $a9
    ld [hl], $b1                                  ; $416c: $36 $b1
    dec b                                         ; $416e: $05
    ld b, a                                       ; $416f: $47
    ld b, l                                       ; $4170: $45
    jr jr_031_41dd                                ; $4171: $18 $6a

    db $fc                                        ; $4173: $fc
    ld l, [hl]                                    ; $4174: $6e
    ld b, h                                       ; $4175: $44
    ld l, [hl]                                    ; $4176: $6e
    adc l                                         ; $4177: $8d
    ld a, h                                       ; $4178: $7c
    ld b, l                                       ; $4179: $45
    ld h, e                                       ; $417a: $63
    ld h, e                                       ; $417b: $63
    ld [$6d41], a                                 ; $417c: $ea $41 $6d
    ld h, d                                       ; $417f: $62
    dec bc                                        ; $4180: $0b
    and a                                         ; $4181: $a7
    ld [bc], a                                    ; $4182: $02
    add $8a                                       ; $4183: $c6 $8a
    xor l                                         ; $4185: $ad
    pop bc                                        ; $4186: $c1
    jr nz, jr_031_4116                            ; $4187: $20 $8d

    ld l, e                                       ; $4189: $6b
    ld b, a                                       ; $418a: $47
    rla                                           ; $418b: $17
    and h                                         ; $418c: $a4
    di                                            ; $418d: $f3
    ldh a, [$3a]                                  ; $418e: $f0 $3a
    or a                                          ; $4190: $b7
    ld [hl], $b1                                  ; $4191: $36 $b1
    dec b                                         ; $4193: $05
    ld b, a                                       ; $4194: $47
    ld e, e                                       ; $4195: $5b
    jp z, Jump_000_0331                           ; $4196: $ca $31 $03

    ld e, d                                       ; $4199: $5a
    or c                                          ; $419a: $b1
    and l                                         ; $419b: $a5
    sbc $ff                                       ; $419c: $de $ff
    ld e, d                                       ; $419e: $5a
    di                                            ; $419f: $f3
    ld [$afdf], sp                                ; $41a0: $08 $df $af
    ld c, l                                       ; $41a3: $4d
    ld l, h                                       ; $41a4: $6c
    ld bc, $af59                                  ; $41a5: $01 $59 $af
    inc d                                         ; $41a8: $14
    ld e, l                                       ; $41a9: $5d
    add h                                         ; $41aa: $84
    rst $28                                       ; $41ab: $ef
    ld a, a                                       ; $41ac: $7f
    xor l                                         ; $41ad: $ad
    jr z, jr_031_4146                             ; $41ae: $28 $96

    ld h, l                                       ; $41b0: $65
    ld c, [hl]                                    ; $41b1: $4e
    adc d                                         ; $41b2: $8a
    ld [hl], c                                    ; $41b3: $71
    push bc                                       ; $41b4: $c5
    ld [c], a                                     ; $41b5: $e2
    ld sp, hl                                     ; $41b6: $f9
    add l                                         ; $41b7: $85
    ld [hl], l                                    ; $41b8: $75
    ld e, l                                       ; $41b9: $5d
    ld sp, $e2d1                                  ; $41ba: $31 $d1 $e2
    ld sp, hl                                     ; $41bd: $f9
    add l                                         ; $41be: $85
    ld a, [c]                                     ; $41bf: $f2
    ret c                                         ; $41c0: $d8

    ld [hl], l                                    ; $41c1: $75
    dec hl                                        ; $41c2: $2b
    ld [hl], l                                    ; $41c3: $75
    ld d, e                                       ; $41c4: $53
    xor [hl]                                      ; $41c5: $ae
    xor b                                         ; $41c6: $a8
    ld c, l                                       ; $41c7: $4d
    ld l, h                                       ; $41c8: $6c
    ld bc, $609d                                  ; $41c9: $01 $9d $60
    adc d                                         ; $41cc: $8a
    ld d, l                                       ; $41cd: $55
    rst $28                                       ; $41ce: $ef
    db $d3                                        ; $41cf: $d3
    ld l, l                                       ; $41d0: $6d
    db $fc                                        ; $41d1: $fc
    ld c, $7f                                     ; $41d2: $0e $7f
    rra                                           ; $41d4: $1f
    add hl, de                                    ; $41d5: $19
    add hl, de                                    ; $41d6: $19
    call nc, $b626                                ; $41d7: $d4 $26 $b6
    sbc l                                         ; $41da: $9d
    ld h, b                                       ; $41db: $60
    adc d                                         ; $41dc: $8a

jr_031_41dd:
    ld d, l                                       ; $41dd: $55
    rst $28                                       ; $41de: $ef
    db $d3                                        ; $41df: $d3
    ld l, l                                       ; $41e0: $6d
    db $fc                                        ; $41e1: $fc
    ld c, $7f                                     ; $41e2: $0e $7f
    rra                                           ; $41e4: $1f
    add hl, de                                    ; $41e5: $19
    add hl, de                                    ; $41e6: $19
    adc h                                         ; $41e7: $8c
    ld l, e                                       ; $41e8: $6b
    pop af                                        ; $41e9: $f1
    sbc h                                         ; $41ea: $9c
    and d                                         ; $41eb: $a2
    ld [hl], $b1                                  ; $41ec: $36 $b1
    dec b                                         ; $41ee: $05
    ld b, a                                       ; $41ef: $47
    ccf                                           ; $41f0: $3f
    cp a                                          ; $41f1: $bf
    or h                                          ; $41f2: $b4
    sbc $0f                                       ; $41f3: $de $0f
    db $eb                                        ; $41f5: $eb
    ld l, e                                       ; $41f6: $6b
    dec l                                         ; $41f7: $2d
    ld b, a                                       ; $41f8: $47
    sbc $d2                                       ; $41f9: $de $d2
    ld a, [$f5a1]                                 ; $41fb: $fa $a1 $f5

jr_031_41fe:
    ld a, [hl]                                    ; $41fe: $7e
    ld e, b                                       ; $41ff: $58
    ld e, a                                       ; $4200: $5f
    ld l, e                                       ; $4201: $6b
    ld bc, $3f47                                  ; $4202: $01 $47 $3f
    cp a                                          ; $4205: $bf
    or h                                          ; $4206: $b4
    jp z, $f958                                   ; $4207: $ca $58 $f9

    ld a, d                                       ; $420a: $7a
    ccf                                           ; $420b: $3f
    xor h                                         ; $420c: $ac
    xor a                                         ; $420d: $af
    or l                                          ; $420e: $b5
    ld b, a                                       ; $420f: $47
    sbc $d2                                       ; $4210: $de $d2
    ld sp, hl                                     ; $4212: $f9
    ld a, [hl+]                                   ; $4213: $2a
    ld h, e                                       ; $4214: $63
    push hl                                       ; $4215: $e5
    db $eb                                        ; $4216: $eb
    db $fd                                        ; $4217: $fd
    or b                                          ; $4218: $b0
    cp [hl]                                       ; $4219: $be
    sub $02                                       ; $421a: $d6 $02
    add a                                         ; $421c: $87
    or e                                          ; $421d: $b3
    or b                                          ; $421e: $b0
    jr nz, jr_031_41fe                            ; $421f: $20 $dd

    sub $fb                                       ; $4221: $d6 $fb
    ld h, c                                       ; $4223: $61

jr_031_4224:
    ld a, l                                       ; $4224: $7d
    xor l                                         ; $4225: $ad
    dec b                                         ; $4226: $05
    and a                                         ; $4227: $a7
    call c, $8302                                 ; $4228: $dc $02 $83
    db $ec                                        ; $422b: $ec
    ld e, a                                       ; $422c: $5f
    ld e, d                                       ; $422d: $5a
    rst $28                                       ; $422e: $ef
    add a                                         ; $422f: $87
    push af                                       ; $4230: $f5
    or l                                          ; $4231: $b5
    ld d, $59                                     ; $4232: $16 $59
    ld [hl], a                                    ; $4234: $77
    dec b                                         ; $4235: $05
    adc l                                         ; $4236: $8d
    rst $18                                       ; $4237: $df
    ld a, [bc]                                    ; $4238: $0a
    ld e, [hl]                                    ; $4239: $5e
    jr z, jr_031_4224                             ; $423a: $28 $e8

    inc a                                         ; $423c: $3c
    pop de                                        ; $423d: $d1
    db $f4                                        ; $423e: $f4
    rst $10                                       ; $423f: $d7
    inc d                                         ; $4240: $14
    adc b                                         ; $4241: $88
    ld h, c                                       ; $4242: $61
    ld e, c                                       ; $4243: $59
    call $f06c                                    ; $4244: $cd $6c $f0
    or l                                          ; $4247: $b5
    res 3, h                                      ; $4248: $cb $9c
    inc [hl]                                      ; $424a: $34
    ld l, $6e                                     ; $424b: $2e $6e
    ccf                                           ; $424d: $3f
    ld l, d                                       ; $424e: $6a
    inc de                                        ; $424f: $13
    ld e, e                                       ; $4250: $5b
    sbc l                                         ; $4251: $9d
    ld d, b                                       ; $4252: $50
    ccf                                           ; $4253: $3f
    sub d                                         ; $4254: $92
    ld h, e                                       ; $4255: $63
    ld e, $96                                     ; $4256: $1e $96
    ld a, [hl-]                                   ; $4258: $3a
    and e                                         ; $4259: $a3
    rst $30                                       ; $425a: $f7
    ld [hl], a                                    ; $425b: $77
    adc d                                         ; $425c: $8a
    dec [hl]                                      ; $425d: $35
    ld a, [hl+]                                   ; $425e: $2a
    db $f4                                        ; $425f: $f4
    add b                                         ; $4260: $80
    sub d                                         ; $4261: $92
    dec sp                                        ; $4262: $3b
    ld d, c                                       ; $4263: $51
    inc c                                         ; $4264: $0c
    sub [hl]                                      ; $4265: $96
    and d                                         ; $4266: $a2
    cp h                                          ; $4267: $bc
    dec b                                         ; $4268: $05
    rst $00                                       ; $4269: $c7
    sbc b                                         ; $426a: $98
    ld [hl], e                                    ; $426b: $73
    push de                                       ; $426c: $d5
    dec hl                                        ; $426d: $2b
    ld c, d                                       ; $426e: $4a
    xor $58                                       ; $426f: $ee $58
    ld [hl], e                                    ; $4271: $73
    xor a                                         ; $4272: $af
    ld c, c                                       ; $4273: $49
    adc [hl]                                      ; $4274: $8e
    ld h, b                                       ; $4275: $60
    push hl                                       ; $4276: $e5
    ld l, [hl]                                    ; $4277: $6e
    or c                                          ; $4278: $b1
    inc d                                         ; $4279: $14
    ld [$baaf], a                                 ; $427a: $ea $af $ba
    add hl, sp                                    ; $427d: $39
    jp nc, Jump_000_36ad                          ; $427e: $d2 $ad $36

    or c                                          ; $4281: $b1
    dec b                                         ; $4282: $05
    and a                                         ; $4283: $a7
    ld [c], a                                     ; $4284: $e2
    ld [$eff6], sp                                ; $4285: $08 $f6 $ef
    halt                                          ; $4288: $76
    or c                                          ; $4289: $b1
    db $eb                                        ; $428a: $eb
    sub d                                         ; $428b: $92
    ld h, d                                       ; $428c: $62
    adc l                                         ; $428d: $8d
    push bc                                       ; $428e: $c5
    cp b                                          ; $428f: $b8
    halt                                          ; $4290: $76
    sbc c                                         ; $4291: $99
    sub e                                         ; $4292: $93
    ld h, d                                       ; $4293: $62
    ld e, h                                       ; $4294: $5c
    adc e                                         ; $4295: $8b
    rst $20                                       ; $4296: $e7
    rla                                           ; $4297: $17
    jp z, $7b93                                   ; $4298: $ca $93 $7b

    ld a, a                                       ; $429b: $7f
    rst $38                                       ; $429c: $ff
    ld l, [hl]                                    ; $429d: $6e
    ld [hl], e                                    ; $429e: $73
    call nc, $9d5f                                ; $429f: $d4 $5f $9d
    add l                                         ; $42a2: $85
    add $d1                                       ; $42a3: $c6 $d1
    sub l                                         ; $42a5: $95
    or a                                          ; $42a6: $b7
    daa                                           ; $42a7: $27
    db $fd                                        ; $42a8: $fd
    ld [hl], c                                    ; $42a9: $71
    ld [hl], h                                    ; $42aa: $74
    ld b, e                                       ; $42ab: $43
    ld e, d                                       ; $42ac: $5a
    ld b, $34                                     ; $42ad: $06 $34
    add d                                         ; $42af: $82
    ld sp, $1fa8                                  ; $42b0: $31 $a8 $1f
    db $e3                                        ; $42b3: $e3
    ld e, d                                       ; $42b4: $5a
    ld h, e                                       ; $42b5: $63
    ld de, $c1f2                                  ; $42b6: $11 $f2 $c1
    ld e, a                                       ; $42b9: $5f
    ld e, b                                       ; $42ba: $58
    pop de                                        ; $42bb: $d1
    ld [hl-], a                                   ; $42bc: $32
    ld h, b                                       ; $42bd: $60
    ld c, [hl]                                    ; $42be: $4e
    db $e3                                        ; $42bf: $e3
    ld [hl], a                                    ; $42c0: $77
    or [hl]                                       ; $42c1: $b6
    ret nz                                        ; $42c2: $c0

    sub l                                         ; $42c3: $95
    call c, $e6b1                                 ; $42c4: $dc $b1 $e6
    ld e, [hl]                                    ; $42c7: $5e
    sub e                                         ; $42c8: $93
    ld l, a                                       ; $42c9: $6f
    and a                                         ; $42ca: $a7
    dec bc                                        ; $42cb: $0b
    ld a, [hl-]                                   ; $42cc: $3a
    rst $10                                       ; $42cd: $d7
    inc hl                                        ; $42ce: $23
    ld e, b                                       ; $42cf: $58
    ld b, $b4                                     ; $42d0: $06 $b4
    ld l, h                                       ; $42d2: $6c
    adc l                                         ; $42d3: $8d
    xor $86                                       ; $42d4: $ee $86
    ld e, h                                       ; $42d6: $5c
    or l                                          ; $42d7: $b5
    add a                                         ; $42d8: $87
    or [hl]                                       ; $42d9: $b6
    ld b, a                                       ; $42da: $47
    pop de                                        ; $42db: $d1
    ld a, [hl+]                                   ; $42dc: $2a
    jp $fa4f                                      ; $42dd: $c3 $4f $fa


    or $29                                        ; $42e0: $f6 $29
    add hl, sp                                    ; $42e2: $39
    sub [hl]                                      ; $42e3: $96
    ld h, e                                       ; $42e4: $63
    push de                                       ; $42e5: $d5
    ld l, b                                       ; $42e6: $68
    call c, $ac7e                                 ; $42e7: $dc $7e $ac
    ld l, b                                       ; $42ea: $68
    add hl, hl                                    ; $42eb: $29
    inc hl                                        ; $42ec: $23
    add hl, de                                    ; $42ed: $19
    inc h                                         ; $42ee: $24
    ld [hl], a                                    ; $42ef: $77
    xor h                                         ; $42f0: $ac
    cp c                                          ; $42f1: $b9
    rst $10                                       ; $42f2: $d7
    db $e4                                        ; $42f3: $e4
    dec l                                         ; $42f4: $2d
    sbc l                                         ; $42f5: $9d
    rrca                                          ; $42f6: $0f
    db $eb                                        ; $42f7: $eb
    ld l, e                                       ; $42f8: $6b
    cp l                                          ; $42f9: $bd
    ret nc                                        ; $42fa: $d0

    inc hl                                        ; $42fb: $23
    dec hl                                        ; $42fc: $2b
    dec sp                                        ; $42fd: $3b
    xor h                                         ; $42fe: $ac
    rst $28                                       ; $42ff: $ef
    ld [hl], l                                    ; $4300: $75
    ld a, b                                       ; $4301: $78
    cp $7b                                        ; $4302: $fe $7b
    ld l, l                                       ; $4304: $6d
    ld bc, $0f59                                  ; $4305: $01 $59 $0f
    inc a                                         ; $4308: $3c
    add $35                                       ; $4309: $c6 $35
    ld [hl], d                                    ; $430b: $72
    ei                                            ; $430c: $fb
    sub c                                         ; $430d: $91
    ld b, [hl]                                    ; $430e: $46
    ld d, $b8                                     ; $430f: $16 $b8
    ld de, $dfbe                                  ; $4311: $11 $be $df
    ld [bc], a                                    ; $4314: $02
    ld e, c                                       ; $4315: $59
    rrca                                          ; $4316: $0f
    inc a                                         ; $4317: $3c
    add $b5                                       ; $4318: $c6 $b5
    call nc, $fb23                                ; $431a: $d4 $23 $fb
    sbc b                                         ; $431d: $98
    ld bc, $59b5                                  ; $431e: $01 $b5 $59
    rrca                                          ; $4321: $0f
    inc a                                         ; $4322: $3c
    add $35                                       ; $4323: $c6 $35
    ld a, [hl]                                    ; $4325: $7e
    ld c, e                                       ; $4326: $4b
    db $eb                                        ; $4327: $eb
    add a                                         ; $4328: $87
    ld e, d                                       ; $4329: $5a
    ld e, c                                       ; $432a: $59
    rrca                                          ; $432b: $0f
    inc a                                         ; $432c: $3c
    add $35                                       ; $432d: $c6 $35
    and $95                                       ; $432f: $e6 $95
    dec b                                         ; $4331: $05
    ld hl, sp+$52                                 ; $4332: $f8 $52
    ld d, [hl]                                    ; $4334: $56
    inc c                                         ; $4335: $0c
    ld e, e                                       ; $4336: $5b
    ld e, c                                       ; $4337: $59
    rrca                                          ; $4338: $0f
    inc a                                         ; $4339: $3c
    add $ef                                       ; $433a: $c6 $ef
    ld a, [$db17]                                 ; $433c: $fa $17 $db
    ld a, $a9                                     ; $433f: $3e $a9
    jp nc, Jump_031_68a7                          ; $4341: $d2 $a7 $68

    ld bc, $0f59                                  ; $4344: $01 $59 $0f
    inc a                                         ; $4347: $3c
    add $ef                                       ; $4348: $c6 $ef
    ld l, h                                       ; $434a: $6c
    inc c                                         ; $434b: $0c
    ld a, d                                       ; $434c: $7a
    add sp, $1a                                   ; $434d: $e8 $1a
    rst $10                                       ; $434f: $d7
    adc d                                         ; $4350: $8a
    xor l                                         ; $4351: $ad
    ld [hl-], a                                   ; $4352: $32
    ld d, $aa                                     ; $4353: $16 $aa
    dec b                                         ; $4355: $05
    push af                                       ; $4356: $f5
    or l                                          ; $4357: $b5
    or h                                          ; $4358: $b4
    call c, Call_031_5630                         ; $4359: $dc $30 $56
    and c                                         ; $435c: $a1
    and b                                         ; $435d: $a0
    di                                            ; $435e: $f3
    cp b                                          ; $435f: $b8
    or $b5                                        ; $4360: $f6 $b5
    add $62                                       ; $4362: $c6 $62
    adc l                                         ; $4364: $8d
    ld b, l                                       ; $4365: $45
    ret z                                         ; $4366: $c8

    rst $10                                       ; $4367: $d7
    sbc b                                         ; $4368: $98
    rrca                                          ; $4369: $0f
    cpl                                           ; $436a: $2f
    call z, Call_031_53b7                         ; $436b: $cc $b7 $53
    ld e, $0b                                     ; $436e: $1e $0b
    inc [hl]                                      ; $4370: $34
    rst $00                                       ; $4371: $c7
    ret z                                         ; $4372: $c8

    add b                                         ; $4373: $80
    add $35                                       ; $4374: $c6 $35
    rst $28                                       ; $4376: $ef
    adc [hl]                                      ; $4377: $8e
    set 2, a                                      ; $4378: $cb $d7
    sbc b                                         ; $437a: $98
    xor a                                         ; $437b: $af

jr_031_437c:
    call nc, Call_031_5bc9                        ; $437c: $d4 $c9 $5b
    and a                                         ; $437f: $a7
    jr z, jr_031_43ca                             ; $4380: $28 $48

    db $d3                                        ; $4382: $d3
    ld e, a                                       ; $4383: $5f
    jp z, $b922                                   ; $4384: $ca $22 $b9

    ld h, e                                       ; $4387: $63
    call Call_000_26bd                            ; $4388: $cd $bd $26
    rst $18                                       ; $438b: $df
    ld c, [hl]                                    ; $438c: $4e
    or b                                          ; $438d: $b0
    ld h, l                                       ; $438e: $65
    db $dd                                        ; $438f: $dd
    db $fc                                        ; $4390: $fc
    ld d, [hl]                                    ; $4391: $56
    cp l                                          ; $4392: $bd
    adc a                                         ; $4393: $8f
    ld a, [de]                                    ; $4394: $1a
    rst $10                                       ; $4395: $d7
    adc d                                         ; $4396: $8a
    db $ed                                        ; $4397: $ed
    sub h                                         ; $4398: $94
    ld e, e                                       ; $4399: $5b
    ld h, e                                       ; $439a: $63
    ld c, [hl]                                    ; $439b: $4e
    ld c, b                                       ; $439c: $48
    ld hl, sp-$02                                 ; $439d: $f8 $fe
    jr jr_031_437c                                ; $439f: $18 $db

    push af                                       ; $43a1: $f5
    xor d                                         ; $43a2: $aa
    ld c, d                                       ; $43a3: $4a
    rst $38                                       ; $43a4: $ff
    sub d                                         ; $43a5: $92
    rst $20                                       ; $43a6: $e7
    dec l                                         ; $43a7: $2d
    daa                                           ; $43a8: $27
    db $fd                                        ; $43a9: $fd
    ld a, l                                       ; $43aa: $7d
    adc l                                         ; $43ab: $8d
    adc e                                         ; $43ac: $8b
    ld [hl], c                                    ; $43ad: $71
    ld b, e                                       ; $43ae: $43
    ld e, d                                       ; $43af: $5a
    ld h, e                                       ; $43b0: $63

Jump_031_43b1:
    ld sp, $b8ae                                  ; $43b1: $31 $ae $b8
    db $f4                                        ; $43b4: $f4
    cp c                                          ; $43b5: $b9
    ld l, e                                       ; $43b6: $6b
    and l                                         ; $43b7: $a5
    ld c, [hl]                                    ; $43b8: $4e
    ld [hl], d                                    ; $43b9: $72
    rst $00                                       ; $43ba: $c7
    sbc d                                         ; $43bb: $9a
    ld a, e                                       ; $43bc: $7b
    ld c, l                                       ; $43bd: $4d
    cp [hl]                                       ; $43be: $be
    dec e                                         ; $43bf: $1d
    ld d, a                                       ; $43c0: $57
    sub [hl]                                      ; $43c1: $96
    ld [hl], $a0                                  ; $43c2: $36 $a0
    ld h, l                                       ; $43c4: $65
    ldh [$fe], a                                  ; $43c5: $e0 $fe
    cp $5c                                        ; $43c7: $fe $5c
    db $f4                                        ; $43c9: $f4

jr_031_43ca:
    ret nz                                        ; $43ca: $c0

    cp a                                          ; $43cb: $bf
    ld h, [hl]                                    ; $43cc: $66

jr_031_43cd:
    jr nc, jr_031_43cd                            ; $43cd: $30 $fe

    sbc h                                         ; $43cf: $9c
    ld e, $7a                                     ; $43d0: $1e $7a
    sbc $02                                       ; $43d2: $de $02
    push af                                       ; $43d4: $f5
    rst $28                                       ; $43d5: $ef
    add [hl]                                      ; $43d6: $86
    dec hl                                        ; $43d7: $2b
    ld [hl], a                                    ; $43d8: $77
    xor h                                         ; $43d9: $ac

Jump_031_43da:
    ld a, [de]                                    ; $43da: $1a
    ld d, a                                       ; $43db: $57
    inc b                                         ; $43dc: $04
    cp [hl]                                       ; $43dd: $be
    ccf                                           ; $43de: $3f
    ld a, [hl]                                    ; $43df: $7e
    scf                                           ; $43e0: $37
    and $a1                                       ; $43e1: $e6 $a1
    ld c, a                                       ; $43e3: $4f
    sbc a                                         ; $43e4: $9f
    db $f4                                        ; $43e5: $f4
    add hl, sp                                    ; $43e6: $39
    adc h                                         ; $43e7: $8c
    jp Jump_000_0e52                              ; $43e8: $c3 $52 $0e


    ld c, b                                       ; $43eb: $48
    db $d3                                        ; $43ec: $d3
    ld e, a                                       ; $43ed: $5f
    jp z, $df22                                   ; $43ee: $ca $22 $df

    adc [hl]                                      ; $43f1: $8e
    dec hl                                        ; $43f2: $2b
    ld h, e                                       ; $43f3: $63
    inc c                                         ; $43f4: $0c

Call_031_43f5:
    ld l, b                                       ; $43f5: $68
    dec d                                         ; $43f6: $15
    ld a, [bc]                                    ; $43f7: $0a
    ld a, [hl-]                                   ; $43f8: $3a
    rst $28                                       ; $43f9: $ef
    ld l, e                                       ; $43fa: $6b
    adc l                                         ; $43fb: $8d
    push bc                                       ; $43fc: $c5
    cp b                                          ; $43fd: $b8
    ld [c], a                                     ; $43fe: $e2
    jp nc, $aee7                                  ; $43ff: $d2 $e7 $ae

    cp h                                          ; $4402: $bc
    dec b                                         ; $4403: $05
    sbc l                                         ; $4404: $9d
    ld e, $a4                                     ; $4405: $1e $a4
    db $d3                                        ; $4407: $d3
    or b                                          ; $4408: $b0
    ret nc                                        ; $4409: $d0

    ret z                                         ; $440a: $c8

    rra                                           ; $440b: $1f
    jr nc, @+$1c                                  ; $440c: $30 $1a

    ld e, [hl]                                    ; $440e: $5e
    sbc b                                         ; $440f: $98
    ld l, a                                       ; $4410: $6f
    rst $00                                       ; $4411: $c7
    sub l                                         ; $4412: $95
    and l                                         ; $4413: $a5
    dec c                                         ; $4414: $0d
    cp b                                          ; $4415: $b8
    dec de                                        ; $4416: $1b
    jp nc, $e68a                                  ; $4417: $d2 $8a $e6

    ld [hl+], a                                   ; $441a: $22
    ld a, a                                       ; $441b: $7f
    ret nz                                        ; $441c: $c0

    ret z                                         ; $441d: $c8

    ld h, a                                       ; $441e: $67
    db $10                                        ; $441f: $10
    add c                                         ; $4420: $81
    ld h, e                                       ; $4421: $63
    sub b                                         ; $4422: $90
    or h                                          ; $4423: $b4
    inc c                                         ; $4424: $0c
    ld l, b                                       ; $4425: $68
    call $c08b                                    ; $4426: $cd $8b $c0
    ld d, h                                       ; $4429: $54
    ld d, c                                       ; $442a: $51
    sbc $02                                       ; $442b: $de $02
    sbc l                                         ; $442d: $9d
    ld d, b                                       ; $442e: $50
    ccf                                           ; $442f: $3f
    sub d                                         ; $4430: $92
    db $eb                                        ; $4431: $eb
    sub b                                         ; $4432: $90
    xor a                                         ; $4433: $af
    db $e3                                        ; $4434: $e3
    inc hl                                        ; $4435: $23
    sub d                                         ; $4436: $92
    daa                                           ; $4437: $27
    rst $30                                       ; $4438: $f7
    cp $42                                        ; $4439: $fe $42
    ld l, e                                       ; $443b: $6b
    db $fc                                        ; $443c: $fc
    ld d, l                                       ; $443d: $55
    ld [hl], l                                    ; $443e: $75
    cp a                                          ; $443f: $bf
    ld d, [hl]                                    ; $4440: $56
    ld l, h                                       ; $4441: $6c
    rra                                           ; $4442: $1f
    sub b                                         ; $4443: $90
    ld l, d                                       ; $4444: $6a
    rrca                                          ; $4445: $0f
    db $dd                                        ; $4446: $dd
    add hl, hl                                    ; $4447: $29
    and d                                         ; $4448: $a2
    rlca                                          ; $4449: $07
    cp $75                                        ; $444a: $fe $75
    cp $98                                        ; $444c: $fe $98
    rlca                                          ; $444e: $07
    or c                                          ; $444f: $b1
    db $eb                                        ; $4450: $eb
    pop bc                                        ; $4451: $c1
    push bc                                       ; $4452: $c5
    sub [hl]                                      ; $4453: $96
    daa                                           ; $4454: $27
    sub a                                         ; $4455: $97
    xor l                                         ; $4456: $ad
    ld a, l                                       ; $4457: $7d
    xor l                                         ; $4458: $ad
    ld l, b                                       ; $4459: $68
    ld a, [hl]                                    ; $445a: $7e
    ld l, e                                       ; $445b: $6b
    ld l, [hl]                                    ; $445c: $6e
    inc h                                         ; $445d: $24
    scf                                           ; $445e: $37
    ld e, h                                       ; $445f: $5c
    ld h, e                                       ; $4460: $63
    sub c                                         ; $4461: $91
    or a                                          ; $4462: $b7
    push af                                       ; $4463: $f5
    dec [hl]                                      ; $4464: $35
    and $41                                       ; $4465: $e6 $41
    call z, $c318                                 ; $4467: $cc $18 $c3
    sbc b                                         ; $446a: $98
    ld sp, $c272                                  ; $446b: $31 $72 $c2
    ld a, h                                       ; $446e: $7c
    ld a, l                                       ; $446f: $7d
    xor l                                         ; $4470: $ad
    ld a, c                                       ; $4471: $79
    ld hl, sp+$69                                 ; $4472: $f8 $69
    ld e, h                                       ; $4474: $5c
    xor e                                         ; $4475: $ab
    ld e, $fe                                     ; $4476: $1e $fe
    ld e, b                                       ; $4478: $58
    di                                            ; $4479: $f3
    ret nz                                        ; $447a: $c0

    ld [hl], a                                    ; $447b: $77
    adc h                                         ; $447c: $8c
    rst $10                                       ; $447d: $d7
    and h                                         ; $447e: $a4
    db $d3                                        ; $447f: $d3
    rst $28                                       ; $4480: $ef
    di                                            ; $4481: $f3
    rst $20                                       ; $4482: $e7
    ld sp, hl                                     ; $4483: $f9
    adc [hl]                                      ; $4484: $8e
    and d                                         ; $4485: $a2
    ld d, l                                       ; $4486: $55
    add [hl]                                      ; $4487: $86
    sbc a                                         ; $4488: $9f
    db $f4                                        ; $4489: $f4
    db $ed                                        ; $448a: $ed
    ld d, e                                       ; $448b: $53
    ld [hl], d                                    ; $448c: $72
    ld d, [hl]                                    ; $448d: $56
    adc d                                         ; $448e: $8a
    adc $9f                                       ; $448f: $ce $9f
    pop bc                                        ; $4491: $c1
    ld a, [bc]                                    ; $4492: $0a
    ld d, d                                       ; $4493: $52
    sbc $02                                       ; $4494: $de $02
    rst $00                                       ; $4496: $c7
    sbc d                                         ; $4497: $9a
    ld a, e                                       ; $4498: $7b
    ld c, l                                       ; $4499: $4d
    ld [hl], d                                    ; $449a: $72
    ld l, $7a                                     ; $449b: $2e $7a
    ldh [$5f], a                                  ; $449d: $e0 $5f
    inc hl                                        ; $449f: $23
    db $ed                                        ; $44a0: $ed
    ld a, d                                       ; $44a1: $7a
    ld [hl], b                                    ; $44a2: $70
    or c                                          ; $44a3: $b1
    push hl                                       ; $44a4: $e5
    or l                                          ; $44a5: $b5
    adc c                                         ; $44a6: $89
    res 7, d                                      ; $44a7: $cb $ba
    dec hl                                        ; $44a9: $2b
    ld l, b                                       ; $44aa: $68
    call c, $4b3e                                 ; $44ab: $dc $3e $4b
    ld l, $e8                                     ; $44ae: $2e $e8
    cp h                                          ; $44b0: $bc
    add $7c                                       ; $44b1: $c6 $7c
    ld a, b                                       ; $44b3: $78
    ld h, c                                       ; $44b4: $61
    ld [hl], d                                    ; $44b5: $72
    ld b, l                                       ; $44b6: $45
    or c                                          ; $44b7: $b1
    add $5f                                       ; $44b8: $c6 $5f
    ld e, d                                       ; $44ba: $5a
    ld de, $8f02                                  ; $44bb: $11 $02 $8f
    ld a, l                                       ; $44be: $7d
    dec l                                         ; $44bf: $2d
    sbc $a7                                       ; $44c0: $de $a7
    dec [hl]                                      ; $44c2: $35
    ld d, $2b                                     ; $44c3: $16 $2b
    rrca                                          ; $44c5: $0f
    ld a, a                                       ; $44c6: $7f
    sbc $02                                       ; $44c7: $de $02
    push af                                       ; $44c9: $f5
    dec [hl]                                      ; $44ca: $35
    cp d                                          ; $44cb: $ba
    dec de                                        ; $44cc: $1b
    ld h, e                                       ; $44cd: $63
    jr jr_031_453b                                ; $44ce: $18 $6b

    db $fc                                        ; $44d0: $fc
    add $e8                                       ; $44d1: $c6 $e8
    ld b, e                                       ; $44d3: $43
    ld l, l                                       ; $44d4: $6d
    ld [c], a                                     ; $44d5: $e2
    ld c, [hl]                                    ; $44d6: $4e
    pop de                                        ; $44d7: $d1
    daa                                           ; $44d8: $27
    rst $10                                       ; $44d9: $d7
    ld [$18ec], a                                 ; $44da: $ea $ec $18
    xor a                                         ; $44dd: $af
    ld c, c                                       ; $44de: $49
    and a                                         ; $44df: $a7
    rst $18                                       ; $44e0: $df
    rst $20                                       ; $44e1: $e7
    rst $08                                       ; $44e2: $cf
    rla                                           ; $44e3: $17
    jr c, @-$7c                                   ; $44e4: $38 $82

    ld a, l                                       ; $44e6: $7d
    adc l                                         ; $44e7: $8d
    ld de, $5e74                                  ; $44e8: $11 $74 $5e
    ld h, e                                       ; $44eb: $63
    or c                                          ; $44ec: $b1
    ld b, [hl]                                    ; $44ed: $46
    adc $5d                                       ; $44ee: $ce $5d
    db $e3                                        ; $44f0: $e3
    ld e, d                                       ; $44f1: $5a
    di                                            ; $44f2: $f3
    ldh a, [rHDMA3]                               ; $44f3: $f0 $53
    call nc, $b626                                ; $44f5: $d4 $26 $b6
    ld b, a                                       ; $44f8: $47
    or c                                          ; $44f9: $b1
    sub a                                         ; $44fa: $97
    ld b, d                                       ; $44fb: $42
    db $fd                                        ; $44fc: $fd
    db $e4                                        ; $44fd: $e4
    adc [hl]                                      ; $44fe: $8e
    dec [hl]                                      ; $44ff: $35
    rst $30                                       ; $4500: $f7
    sbc d                                         ; $4501: $9a
    db $e4                                        ; $4502: $e4
    or d                                          ; $4503: $b2
    or l                                          ; $4504: $b5
    xor a                                         ; $4505: $af
    ld d, l                                       ; $4506: $55
    ld a, [de]                                    ; $4507: $1a
    ld a, a                                       ; $4508: $7f
    ld b, b                                       ; $4509: $40
    add [hl]                                      ; $450a: $86
    or c                                          ; $450b: $b1
    add $62                                       ; $450c: $c6 $62
    add hl, de                                    ; $450e: $19
    ret nc                                        ; $450f: $d0

    sbc b                                         ; $4510: $98
    rlca                                          ; $4511: $07
    or c                                          ; $4512: $b1
    dec de                                        ; $4513: $1b
    and c                                         ; $4514: $a1
    adc $1f                                       ; $4515: $ce $1f
    db $fc                                        ; $4517: $fc
    dec a                                         ; $4518: $3d
    inc c                                         ; $4519: $0c
    add hl, de                                    ; $451a: $19
    adc h                                         ; $451b: $8c
    ld l, e                                       ; $451c: $6b
    rra                                           ; $451d: $1f
    sub b                                         ; $451e: $90
    ld a, [c]                                     ; $451f: $f2
    ld [hl], l                                    ; $4520: $75
    ld a, h                                       ; $4521: $7c
    ldh [$83], a                                  ; $4522: $e0 $83
    xor a                                         ; $4524: $af
    and l                                         ; $4525: $a5
    rra                                           ; $4526: $1f
    ld b, [hl]                                    ; $4527: $46
    ld [hl], d                                    ; $4528: $72
    reti                                          ; $4529: $d9


    jp c, $38d7                                   ; $452a: $da $d7 $38

    cp d                                          ; $452d: $ba
    pop hl                                        ; $452e: $e1
    inc e                                         ; $452f: $1c
    push af                                       ; $4530: $f5
    sub e                                         ; $4531: $93
    xor e                                         ; $4532: $ab
    inc c                                         ; $4533: $0c
    ld h, e                                       ; $4534: $63
    call z, Call_031_5883                         ; $4535: $cc $83 $58
    ld e, d                                       ; $4538: $5a
    adc [hl]                                      ; $4539: $8e
    ld a, [hl-]                                   ; $453a: $3a

jr_031_453b:
    ld a, a                                       ; $453b: $7f
    dec d                                         ; $453c: $15
    ld a, [bc]                                    ; $453d: $0a
    ld a, [hl-]                                   ; $453e: $3a
    adc a                                         ; $453f: $8f
    rst $18                                       ; $4540: $df
    xor l                                         ; $4541: $ad
    inc d                                         ; $4542: $14
    ld sp, hl                                     ; $4543: $f9
    sbc b                                         ; $4544: $98
    rlca                                          ; $4545: $07
    or c                                          ; $4546: $b1
    db $eb                                        ; $4547: $eb
    pop bc                                        ; $4548: $c1
    push bc                                       ; $4549: $c5
    sub [hl]                                      ; $454a: $96
    rst $20                                       ; $454b: $e7
    dec l                                         ; $454c: $2d
    sbc l                                         ; $454d: $9d
    ld e, $64                                     ; $454e: $1e $64
    ccf                                           ; $4550: $3f
    ldh a, [rNR23]                                ; $4551: $f0 $18
    rla                                           ; $4553: $17
    ei                                            ; $4554: $fb
    ld a, c                                       ; $4555: $79
    inc h                                         ; $4556: $24
    sub a                                         ; $4557: $97
    xor l                                         ; $4558: $ad
    ld sp, $230f                                  ; $4559: $31 $0f $23
    ld e, a                                       ; $455c: $5f
    ld a, l                                       ; $455d: $7d
    adc l                                         ; $455e: $8d
    ld sp, $718c                                  ; $455f: $31 $8c $71
    ld sp, $7d0f                                  ; $4562: $31 $0f $7d
    ld l, $42                                     ; $4565: $2e $42
    sub a                                         ; $4567: $97
    xor a                                         ; $4568: $af
    xor a                                         ; $4569: $af
    dec [hl]                                      ; $456a: $35
    rrca                                          ; $456b: $0f
    ccf                                           ; $456c: $3f
    xor l                                         ; $456d: $ad
    adc $8e                                       ; $456e: $ce $8e
    pop af                                        ; $4570: $f1
    sbc d                                         ; $4571: $9a
    ld [hl], h                                    ; $4572: $74
    ld a, [$fe7d]                                 ; $4573: $fa $7d $fe
    inc a                                         ; $4576: $3c
    cp c                                          ; $4577: $b9
    ld l, h                                       ; $4578: $6c
    xor l                                         ; $4579: $ad
    ld l, b                                       ; $457a: $68
    sub a                                         ; $457b: $97
    dec de                                        ; $457c: $1b
    cp $c8                                        ; $457d: $fe $c8
    ld [hl], a                                    ; $457f: $77
    inc d                                         ; $4580: $14
    xor l                                         ; $4581: $ad
    ld [hl-], a                                   ; $4582: $32
    db $fc                                        ; $4583: $fc
    and h                                         ; $4584: $a4
    ld l, a                                       ; $4585: $6f
    sbc a                                         ; $4586: $9f
    sub d                                         ; $4587: $92
    inc sp                                        ; $4588: $33
    ld e, b                                       ; $4589: $58
    ld b, c                                       ; $458a: $41
    jp z, $a75b                                   ; $458b: $ca $5b $a7

    ccf                                           ; $458e: $3f
    adc b                                         ; $458f: $88
    db $fd                                        ; $4590: $fd
    cp e                                          ; $4591: $bb
    ld sp, $7f3a                                  ; $4592: $31 $3a $7f
    adc l                                         ; $4595: $8d
    push bc                                       ; $4596: $c5
    cp b                                          ; $4597: $b8

Jump_031_4598:
    ld d, $ba                                     ; $4598: $16 $ba
    ld e, h                                       ; $459a: $5c
    inc d                                         ; $459b: $14
    ld l, e                                       ; $459c: $6b
    ld e, $f8                                     ; $459d: $1e $f8
    xor d                                         ; $459f: $aa
    add a                                         ; $45a0: $87
    ret                                           ; $45a1: $c9


    dec e                                         ; $45a2: $1d
    ld l, e                                       ; $45a3: $6b
    xor $35                                       ; $45a4: $ee $35
    db $eb                                        ; $45a6: $eb
    ld hl, sp-$78                                 ; $45a7: $f8 $88
    db $e4                                        ; $45a9: $e4
    or l                                          ; $45aa: $b5
    adc c                                         ; $45ab: $89
    dec sp                                        ; $45ac: $3b
    ld b, l                                       ; $45ad: $45
    db $f4                                        ; $45ae: $f4
    ret nz                                        ; $45af: $c0

    cp a                                          ; $45b0: $bf
    adc $1f                                       ; $45b1: $ce $1f
    ld d, [hl]                                    ; $45b3: $56
    push de                                       ; $45b4: $d5
    adc l                                         ; $45b5: $8d
    and e                                         ; $45b6: $a3
    sub c                                         ; $45b7: $91
    ld a, [hl+]                                   ; $45b8: $2a
    ld a, l                                       ; $45b9: $7d
    ld a, [de]                                    ; $45ba: $1a
    di                                            ; $45bb: $f3
    jr nz, jr_031_4634                            ; $45bc: $20 $76

    dec a                                         ; $45be: $3d
    cp b                                          ; $45bf: $b8
    ret c                                         ; $45c0: $d8

    ld a, [c]                                     ; $45c1: $f2
    jp c, $16c4                                   ; $45c2: $da $c4 $16

    ld b, a                                       ; $45c5: $47
    sbc $2e                                       ; $45c6: $de $2e
    db $e4                                        ; $45c8: $e4
    or a                                          ; $45c9: $b7
    ld c, d                                       ; $45ca: $4a
    sbc a                                         ; $45cb: $9f
    sub d                                         ; $45cc: $92
    ei                                            ; $45cd: $fb
    cpl                                           ; $45ce: $2f
    ld d, $cf                                     ; $45cf: $16 $cf
    add hl, hl                                    ; $45d1: $29
    ld d, $ef                                     ; $45d2: $16 $ef
    db $d3                                        ; $45d4: $d3
    ld a, [bc]                                    ; $45d5: $0a
    sbc $a2                                       ; $45d6: $de $a2
    ld [hl], $71                                  ; $45d8: $36 $71
    push af                                       ; $45da: $f5
    dec [hl]                                      ; $45db: $35
    rla                                           ; $45dc: $17
    and c                                         ; $45dd: $a1
    ld l, e                                       ; $45de: $6b
    ld a, l                                       ; $45df: $7d
    xor l                                         ; $45e0: $ad
    ld a, c                                       ; $45e1: $79
    ld hl, sp+$69                                 ; $45e2: $f8 $69
    ld [hl], l                                    ; $45e4: $75
    halt                                          ; $45e5: $76
    adc h                                         ; $45e6: $8c
    rst $10                                       ; $45e7: $d7
    and h                                         ; $45e8: $a4
    db $d3                                        ; $45e9: $d3
    rst $28                                       ; $45ea: $ef
    di                                            ; $45eb: $f3
    rst $20                                       ; $45ec: $e7
    ld sp, hl                                     ; $45ed: $f9
    adc [hl]                                      ; $45ee: $8e
    and d                                         ; $45ef: $a2
    ld d, l                                       ; $45f0: $55
    add [hl]                                      ; $45f1: $86
    sbc a                                         ; $45f2: $9f
    db $f4                                        ; $45f3: $f4
    db $ed                                        ; $45f4: $ed
    ld d, e                                       ; $45f5: $53
    ld [hl], d                                    ; $45f6: $72
    ld l, $7a                                     ; $45f7: $2e $7a
    ldh [$5f], a                                  ; $45f9: $e0 $5f
    rst $20                                       ; $45fb: $e7
    adc a                                         ; $45fc: $8f
    ld a, c                                       ; $45fd: $79
    db $10                                        ; $45fe: $10
    cp e                                          ; $45ff: $bb
    ld e, $5c                                     ; $4600: $1e $5c
    ld l, h                                       ; $4602: $6c
    ld a, c                                       ; $4603: $79
    ld l, l                                       ; $4604: $6d
    ld h, d                                       ; $4605: $62
    dec bc                                        ; $4606: $0b
    add a                                         ; $4607: $87
    inc sp                                        ; $4608: $33
    or $69                                        ; $4609: $f6 $69
    ld e, h                                       ; $460b: $5c
    ld l, e                                       ; $460c: $6b
    call z, Call_000_3d09                         ; $460d: $cc $09 $3d
    cp c                                          ; $4610: $b9
    ld l, h                                       ; $4611: $6c
    adc l                                         ; $4612: $8d
    ld a, c                                       ; $4613: $79
    ld d, b                                       ; $4614: $50
    inc c                                         ; $4615: $0c
    ld h, e                                       ; $4616: $63
    ld [hl], h                                    ; $4617: $74
    ld a, a                                       ; $4618: $7f
    jp hl                                         ; $4619: $e9


    or h                                          ; $461a: $b4
    and e                                         ; $461b: $a3
    rst $28                                       ; $461c: $ef

jr_031_461d:
    ld d, d                                       ; $461d: $52
    inc l                                         ; $461e: $2c
    res 3, h                                      ; $461f: $cb $9c
    inc d                                         ; $4621: $14
    ld sp, hl                                     ; $4622: $f9
    ld a, [hl-]                                   ; $4623: $3a
    and c                                         ; $4624: $a1
    ld a, [hl]                                    ; $4625: $7e
    inc h                                         ; $4626: $24
    rst $10                                       ; $4627: $d7
    cp b                                          ; $4628: $b8
    ld a, $8f                                     ; $4629: $3e $8f
    ld a, d                                       ; $462b: $7a
    ld b, l                                       ; $462c: $45
    ld d, c                                       ; $462d: $51
    sbc e                                         ; $462e: $9b
    cp b                                          ; $462f: $b8
    ld c, [hl]                                    ; $4630: $4e
    rrca                                          ; $4631: $0f
    ld h, d                                       ; $4632: $62
    ld b, l                                       ; $4633: $45

jr_031_4634:
    or c                                          ; $4634: $b1
    ld e, e                                       ; $4635: $5b
    xor c                                         ; $4636: $a9
    sra b                                         ; $4637: $cb $28
    add $b5                                       ; $4639: $c6 $b5
    adc [hl]                                      ; $463b: $8e
    rrca                                          ; $463c: $0f
    ld a, b                                       ; $463d: $78
    ld sp, $33e7                                  ; $463e: $31 $e7 $33
    cp $5c                                        ; $4641: $fe $5c
    sbc a                                         ; $4643: $9f
    ld d, [hl]                                    ; $4644: $56
    inc d                                         ; $4645: $14
    swap d                                        ; $4646: $cb $32
    daa                                           ; $4648: $27
    push bc                                       ; $4649: $c5
    cp b                                          ; $464a: $b8
    ld h, d                                       ; $464b: $62
    pop af                                        ; $464c: $f1
    db $fc                                        ; $464d: $fc
    jp nz, $aeba                                  ; $464e: $c2 $ba $ae

    sbc b                                         ; $4651: $98
    ld l, b                                       ; $4652: $68
    pop af                                        ; $4653: $f1
    db $fc                                        ; $4654: $fc
    ld b, d                                       ; $4655: $42
    ld a, c                                       ; $4656: $79
    db $ec                                        ; $4657: $ec
    cp d                                          ; $4658: $ba
    sub l                                         ; $4659: $95
    cp d                                          ; $465a: $ba
    add hl, hl                                    ; $465b: $29
    ld d, a                                       ; $465c: $57
    db $e4                                        ; $465d: $e4
    dec sp                                        ; $465e: $3b
    xor [hl]                                      ; $465f: $ae
    call nz, Call_031_628a                        ; $4660: $c4 $8a $62
    ld d, a                                       ; $4663: $57
    or c                                          ; $4664: $b1
    ld [$1a7d], sp                                ; $4665: $08 $7d $1a
    or a                                          ; $4668: $b7
    rra                                           ; $4669: $1f
    cp e                                          ; $466a: $bb
    inc d                                         ; $466b: $14
    dec sp                                        ; $466c: $3b
    ld a, [$7c15]                                 ; $466d: $fa $15 $7c
    sub c                                         ; $4670: $91
    rst $28                                       ; $4671: $ef
    inc b                                         ; $4672: $04
    db $ed                                        ; $4673: $ed
    add sp, $57                                   ; $4674: $e8 $57
    ldh a, [$ed]                                  ; $4676: $f0 $ed
    ld [$8317], sp                                ; $4678: $08 $17 $83
    ld sp, $2d05                                  ; $467b: $31 $05 $2d
    jr nz, jr_031_461d                            ; $467e: $20 $9d

    add $b0                                       ; $4680: $c6 $b0
    xor d                                         ; $4682: $aa
    jp nc, $95a7                                  ; $4683: $d2 $a7 $95

    dec de                                        ; $4686: $1b
    ld c, e                                       ; $4687: $4b
    cp [hl]                                       ; $4688: $be
    and $81                                       ; $4689: $e6 $81
    cpl                                           ; $468b: $2f
    inc bc                                        ; $468c: $03
    ld a, [de]                                    ; $468d: $1a
    pop bc                                        ; $468e: $c1
    adc d                                         ; $468f: $8a
    sub $3c                                       ; $4690: $d6 $3c
    daa                                           ; $4692: $27
    push bc                                       ; $4693: $c5
    ld [bc], a                                    ; $4694: $02
    ld a, h                                       ; $4695: $7c
    db $f4                                        ; $4696: $f4
    ld [hl], b                                    ; $4697: $70
    sub l                                         ; $4698: $95
    ld h, c                                       ; $4699: $61
    xor h                                         ; $469a: $ac
    or c                                          ; $469b: $b1
    ld e, b                                       ; $469c: $58
    pop de                                        ; $469d: $d1
    adc [hl]                                      ; $469e: $8e
    ld a, [hl]                                    ; $469f: $7e
    dec b                                         ; $46a0: $05
    rst $18                                       ; $46a1: $df
    ld a, [hl-]                                   ; $46a2: $3a
    jr jr_031_46b0                                ; $46a3: $18 $0b

    di                                            ; $46a5: $f3
    ld h, l                                       ; $46a6: $65
    db $dd                                        ; $46a7: $dd
    dec d                                         ; $46a8: $15
    or h                                          ; $46a9: $b4
    and d                                         ; $46aa: $a2
    dec [hl]                                      ; $46ab: $35
    dec b                                         ; $46ac: $05
    ld h, d                                       ; $46ad: $62
    inc l                                         ; $46ae: $2c
    ld a, a                                       ; $46af: $7f

jr_031_46b0:
    ld sp, $91ae                                  ; $46b0: $31 $ae $91
    ld h, d                                       ; $46b3: $62
    ld d, [hl]                                    ; $46b4: $56
    ld d, d                                       ; $46b5: $52
    ld d, b                                       ; $46b6: $50
    push bc                                       ; $46b7: $c5
    ld b, h                                       ; $46b8: $44
    jp Jump_000_0532                              ; $46b9: $c3 $32 $05


    dec l                                         ; $46bc: $2d
    add l                                         ; $46bd: $85
    ld a, [$7f23]                                 ; $46be: $fa $23 $7f
    call Call_000_03ca                            ; $46c1: $cd $ca $03
    rst $20                                       ; $46c4: $e7
    ld sp, hl                                     ; $46c5: $f9
    ld c, [hl]                                    ; $46c6: $4e
    ret nc                                        ; $46c7: $d0

    ld [$47f5], sp                                ; $46c8: $08 $f5 $47
    ld [hl], a                                    ; $46cb: $77
    inc hl                                        ; $46cc: $23
    jp nc, $e3e7                                  ; $46cd: $d2 $e7 $e3

    or a                                          ; $46d0: $b7
    db $ec                                        ; $46d1: $ec
    ld a, [hl-]                                   ; $46d2: $3a
    xor e                                         ; $46d3: $ab
    or e                                          ; $46d4: $b3
    adc [hl]                                      ; $46d5: $8e
    rrca                                          ; $46d6: $0f
    ld a, b                                       ; $46d7: $78
    ld sp, $c9e7                                  ; $46d8: $31 $e7 $c9
    ld d, l                                       ; $46db: $55
    add [hl]                                      ; $46dc: $86
    ld sp, $3582                                  ; $46dd: $31 $82 $35
    add d                                         ; $46e0: $82
    adc $a3                                       ; $46e1: $ce $a3
    rlca                                          ; $46e3: $07
    inc [hl]                                      ; $46e4: $34
    xor [hl]                                      ; $46e5: $ae
    ld d, l                                       ; $46e6: $55
    ld e, l                                       ; $46e7: $5d
    ld d, a                                       ; $46e8: $57
    ld e, d                                       ; $46e9: $5a
    pop de                                        ; $46ea: $d1
    xor [hl]                                      ; $46eb: $ae
    rst $30                                       ; $46ec: $f7
    inc bc                                        ; $46ed: $03
    ld a, [bc]                                    ; $46ee: $0a
    ret                                           ; $46ef: $c9


    rst $00                                       ; $46f0: $c7
    db $eb                                        ; $46f1: $eb
    add $2a                                       ; $46f2: $c6 $2a
    jp $fa4f                                      ; $46f4: $c3 $4f $fa


    or $29                                        ; $46f7: $f6 $29
    rst $18                                       ; $46f9: $df
    ld d, c                                       ; $46fa: $51
    ld a, a                                       ; $46fb: $7f
    ld l, $c6                                     ; $46fc: $2e $c6
    cp $c5                                        ; $46fe: $fe $c5
    ld d, [hl]                                    ; $4700: $56
    ld [hl], d                                    ; $4701: $72
    inc b                                         ; $4702: $04
    ei                                            ; $4703: $fb
    ld e, d                                       ; $4704: $5a
    inc hl                                        ; $4705: $23
    add sp, -$44                                  ; $4706: $e8 $bc
    add $62                                       ; $4708: $c6 $62
    dec [hl]                                      ; $470a: $35
    ld l, e                                       ; $470b: $6b
    adc d                                         ; $470c: $8a
    ld e, l                                       ; $470d: $5d
    ld a, [c]                                     ; $470e: $f2
    sub c                                         ; $470f: $91
    ld h, d                                       ; $4710: $62
    ld e, c                                       ; $4711: $59
    and $a4                                       ; $4712: $e6 $a4
    ld e, b                                       ; $4714: $58
    di                                            ; $4715: $f3
    ret nz                                        ; $4716: $c0

    ld d, a                                       ; $4717: $57
    or h                                          ; $4718: $b4
    ld [$fa55], a                                 ; $4719: $ea $55 $fa
    sub h                                         ; $471c: $94
    or a                                          ; $471d: $b7
    ld e, c                                       ; $471e: $59
    ld a, [hl]                                    ; $471f: $7e
    sub e                                         ; $4720: $93
    xor a                                         ; $4721: $af
    ld a, c                                       ; $4722: $79
    add h                                         ; $4723: $84
    rst $28                                       ; $4724: $ef

jr_031_4725:
    or a                                          ; $4725: $b7
    ld b, a                                       ; $4726: $47
    ccf                                           ; $4727: $3f
    daa                                           ; $4728: $27
    ld c, h                                       ; $4729: $4c
    and e                                         ; $472a: $a3
    ld a, l                                       ; $472b: $7d
    ld e, d                                       ; $472c: $5a
    ret c                                         ; $472d: $d8

    and a                                         ; $472e: $a7
    ld e, e                                       ; $472f: $5b
    dec bc                                        ; $4730: $0b
    daa                                           ; $4731: $27
    ld a, [de]                                    ; $4732: $1a
    call nz, Call_000_2d4d                        ; $4733: $c4 $4d $2d
    and a                                         ; $4736: $a7
    call c, $b758                                 ; $4737: $dc $58 $b7
    ld a, a                                       ; $473a: $7f
    ld [hl], e                                    ; $473b: $73
    inc hl                                        ; $473c: $23
    ld a, h                                       ; $473d: $7c
    cp a                                          ; $473e: $bf
    dec b                                         ; $473f: $05
    dec e                                         ; $4740: $1d
    dec bc                                        ; $4741: $0b
    and b                                         ; $4742: $a0
    add $b5                                       ; $4743: $c6 $b5
    xor h                                         ; $4745: $ac
    rst $00                                       ; $4746: $c7
    ld a, [$3ce6]                                 ; $4747: $fa $e6 $3c
    ld e, d                                       ; $474a: $5a
    ld e, c                                       ; $474b: $59
    rrca                                          ; $474c: $0f
    sbc d                                         ; $474d: $9a
    ld [hl], c                                    ; $474e: $71
    db $ed                                        ; $474f: $ed
    ld [hl], h                                    ; $4750: $74
    ld c, h                                       ; $4751: $4c
    or a                                          ; $4752: $b7
    sbc l                                         ; $4753: $9d
    ld e, $f8                                     ; $4754: $1e $f8
    cp b                                          ; $4756: $b8
    halt                                          ; $4757: $76
    ld a, [hl-]                                   ; $4758: $3a
    and [hl]                                      ; $4759: $a6
    ld e, e                                       ; $475a: $5b

Jump_031_475b:
    rst $00                                       ; $475b: $c7
    ld a, l                                       ; $475c: $7d
    and $65                                       ; $475d: $e6 $65
    ld b, b                                       ; $475f: $40
    cp [hl]                                       ; $4760: $be
    or h                                          ; $4761: $b4
    and e                                         ; $4762: $a3
    ld a, l                                       ; $4763: $7d
    adc [hl]                                      ; $4764: $8e
    and c                                         ; $4765: $a1
    ld d, $59                                     ; $4766: $16 $59
    ld a, [hl]                                    ; $4768: $7e
    db $e3                                        ; $4769: $e3
    ld c, b                                       ; $476a: $48
    dec bc                                        ; $476b: $0b
    ld l, b                                       ; $476c: $68
    sbc d                                         ; $476d: $9a
    ld [hl], d                                    ; $476e: $72
    xor e                                         ; $476f: $ab
    db $f4                                        ; $4770: $f4
    ret                                           ; $4771: $c9


    ret nc                                        ; $4772: $d0

    push de                                       ; $4773: $d5
    ld [bc], a                                    ; $4774: $02
    rst $00                                       ; $4775: $c7
    ret nz                                        ; $4776: $c0

    call $d7d1                                    ; $4777: $cd $d1 $d7
    inc a                                         ; $477a: $3c
    adc h                                         ; $477b: $8c
    rst $30                                       ; $477c: $f7
    ld e, e                                       ; $477d: $5b
    and a                                         ; $477e: $a7
    adc b                                         ; $477f: $88
    ret nc                                        ; $4780: $d0

    push hl                                       ; $4781: $e5
    adc e                                         ; $4782: $8b
    rst $20                                       ; $4783: $e7
    call nc, $1d02                                ; $4784: $d4 $02 $1d
    db $fd                                        ; $4787: $fd
    pop de                                        ; $4788: $d1
    adc l                                         ; $4789: $8d
    dec h                                         ; $478a: $25
    ld l, a                                       ; $478b: $6f
    ld bc, $de47                                  ; $478c: $01 $47 $de
    jr jr_031_4725                                ; $478f: $18 $94

    or a                                          ; $4791: $b7
    ld b, a                                       ; $4792: $47
    ccf                                           ; $4793: $3f
    cp a                                          ; $4794: $bf
    call nc, $5902                                ; $4795: $d4 $02 $59
    xor a                                         ; $4798: $af
    ld b, c                                       ; $4799: $41
    db $ed                                        ; $479a: $ed
    ld a, d                                       ; $479b: $7a
    ccf                                           ; $479c: $3f
    db $fd                                        ; $479d: $fd
    cp h                                          ; $479e: $bc
    ld d, d                                       ; $479f: $52
    dec bc                                        ; $47a0: $0b
    ld b, a                                       ; $47a1: $47
    ccf                                           ; $47a2: $3f
    cp a                                          ; $47a3: $bf
    inc [hl]                                      ; $47a4: $34
    adc [hl]                                      ; $47a5: $8e
    dec d                                         ; $47a6: $15
    ld a, [hl]                                    ; $47a7: $7e
    cp b                                          ; $47a8: $b8
    xor c                                         ; $47a9: $a9
    dec b                                         ; $47aa: $05
    and a                                         ; $47ab: $a7
    cp [hl]                                       ; $47ac: $be
    xor d                                         ; $47ad: $aa
    ld [de], a                                    ; $47ae: $12
    sub [hl]                                      ; $47af: $96
    ld d, $27                                     ; $47b0: $16 $27
    and l                                         ; $47b2: $a5
    or d                                          ; $47b3: $b2
    ld b, l                                       ; $47b4: $45
    db $e3                                        ; $47b5: $e3
    ld h, d                                       ; $47b6: $62
    ld d, b                                       ; $47b7: $50
    sbc a                                         ; $47b8: $9f
    sub $14                                       ; $47b9: $d6 $14
    xor b                                         ; $47bb: $a8
    call nc, $1d02                                ; $47bc: $d4 $02 $1d
    adc h                                         ; $47bf: $8c
    add l                                         ; $47c0: $85
    sbc d                                         ; $47c1: $9a
    ld d, l                                       ; $47c2: $55
    or a                                          ; $47c3: $b7
    add d                                         ; $47c4: $82
    rst $08                                       ; $47c5: $cf
    ld l, a                                       ; $47c6: $6f
    ld l, d                                       ; $47c7: $6a
    ld bc, $55c7                                  ; $47c8: $01 $c7 $55
    dec d                                         ; $47cb: $15
    ld a, h                                       ; $47cc: $7c
    and h                                         ; $47cd: $a4
    db $db                                        ; $47ce: $db
    sbc d                                         ; $47cf: $9a
    add a                                         ; $47d0: $87
    pop af                                        ; $47d1: $f1
    ld a, [hl]                                    ; $47d2: $7e
    dec bc                                        ; $47d3: $0b
    sbc l                                         ; $47d4: $9d
    xor h                                         ; $47d5: $ac
    ld sp, $5a96                                  ; $47d6: $31 $96 $5a
    rst $00                                       ; $47d9: $c7
    ld a, l                                       ; $47da: $7d
    inc hl                                        ; $47db: $23
    jp nc, Jump_031_7c27                          ; $47dc: $d2 $27 $7c

    cp a                                          ; $47df: $bf
    dec b                                         ; $47e0: $05
    ld b, a                                       ; $47e1: $47
    ret z                                         ; $47e2: $c8

    cpl                                           ; $47e3: $2f
    ld b, c                                       ; $47e4: $41
    xor b                                         ; $47e5: $a8
    dec b                                         ; $47e6: $05
    dec e                                         ; $47e7: $1d
    adc e                                         ; $47e8: $8b
    ld a, l                                       ; $47e9: $7d
    jp nc, $b01a                                  ; $47ea: $d2 $1a $b0

    ld c, a                                       ; $47ed: $4f
    ld l, d                                       ; $47ee: $6a
    ld bc, $e827                                  ; $47ef: $01 $27 $e8
    ld d, e                                       ; $47f2: $53
    dec bc                                        ; $47f3: $0b
    and a                                         ; $47f4: $a7
    ld e, b                                       ; $47f5: $58
    push af                                       ; $47f6: $f5
    ld c, d                                       ; $47f7: $4a
    pop bc                                        ; $47f8: $c1
    ld d, $9d                                     ; $47f9: $16 $9d
    ld d, h                                       ; $47fb: $54
    dec [hl]                                      ; $47fc: $35
    ld e, l                                       ; $47fd: $5d
    sub e                                         ; $47fe: $93
    ld e, d                                       ; $47ff: $5a
    dec e                                         ; $4800: $1d
    ld e, $c7                                     ; $4801: $1e $c7
    inc [hl]                                      ; $4803: $34
    jp z, $ffa7                                   ; $4804: $ca $a7 $ff

    ld d, l                                       ; $4807: $55
    ld h, c                                       ; $4808: $61
    dec bc                                        ; $4809: $0b
    dec e                                         ; $480a: $1d
    ld c, a                                       ; $480b: $4f
    add hl, de                                    ; $480c: $19
    ld a, a                                       ; $480d: $7f
    sub b                                         ; $480e: $90
    ld a, [hl+]                                   ; $480f: $2a
    adc d                                         ; $4810: $8a
    ld d, $87                                     ; $4811: $16 $87
    rst $38                                       ; $4813: $ff
    rrca                                          ; $4814: $0f
    push bc                                       ; $4815: $c5
    ld [$6fdf], sp                                ; $4816: $08 $df $6f
    ld bc, $e8a7                                  ; $4819: $01 $a7 $e8
    ld h, d                                       ; $481c: $62
    sra a                                         ; $481d: $cb $2f
    or [hl]                                       ; $481f: $b6
    ld a, h                                       ; $4820: $7c
    dec e                                         ; $4821: $1d
    sbc [hl]                                      ; $4822: $9e
    ld a, a                                       ; $4823: $7f
    inc l                                         ; $4824: $2c
    ld b, l                                       ; $4825: $45
    dec l                                         ; $4826: $2d
    and a                                         ; $4827: $a7
    add sp, $5f                                   ; $4828: $e8 $5f
    rst $28                                       ; $482a: $ef
    sub e                                         ; $482b: $93
    dec hl                                        ; $482c: $2b
    ld e, d                                       ; $482d: $5a
    sbc l                                         ; $482e: $9d
    ld l, [hl]                                    ; $482f: $6e
    push hl                                       ; $4830: $e5
    sub $b0                                       ; $4831: $d6 $b0
    rst $18                                       ; $4833: $df
    ld d, a                                       ; $4834: $57
    dec bc                                        ; $4835: $0b
    dec e                                         ; $4836: $1d
    rra                                           ; $4837: $1f
    ld a, [hl]                                    ; $4838: $7e
    ld e, d                                       ; $4839: $5a
    jp c, $5530                                   ; $483a: $da $30 $55

    call nc, $1d02                                ; $483d: $d4 $02 $1d
    xor h                                         ; $4840: $ac
    inc sp                                        ; $4841: $33
    ld d, [hl]                                    ; $4842: $56
    ld d, b                                       ; $4843: $50
    xor l                                         ; $4844: $ad
    ld [hl-], a                                   ; $4845: $32
    ld d, $aa                                     ; $4846: $16 $aa
    dec b                                         ; $4848: $05
    add a                                         ; $4849: $87
    rst $38                                       ; $484a: $ff
    rrca                                          ; $484b: $0f
    push bc                                       ; $484c: $c5
    ld [$5fdf], sp                                ; $484d: $08 $df $5f
    ld h, l                                       ; $4850: $65
    inc l                                         ; $4851: $2c
    ld d, h                                       ; $4852: $54
    dec bc                                        ; $4853: $0b
    dec e                                         ; $4854: $1d
    xor h                                         ; $4855: $ac
    inc sp                                        ; $4856: $33
    ld d, [hl]                                    ; $4857: $56
    ld d, b                                       ; $4858: $50
    call $816f                                    ; $4859: $cd $6f $81
    ld b, c                                       ; $485c: $41
    or $2f                                        ; $485d: $f6 $2f
    or l                                          ; $485f: $b5
    rst $00                                       ; $4860: $c7
    ld a, l                                       ; $4861: $7d
    and $65                                       ; $4862: $e6 $65
    ld b, b                                       ; $4864: $40
    cp [hl]                                       ; $4865: $be
    add $dc                                       ; $4866: $c6 $dc
    sbc d                                         ; $4868: $9a
    ld [bc], a                                    ; $4869: $02
    xor b                                         ; $486a: $a8
    ld d, $c7                                     ; $486b: $16 $c7
    ld a, l                                       ; $486d: $7d
    ld d, d                                       ; $486e: $52
    add hl, hl                                    ; $486f: $29
    ret z                                         ; $4870: $c8

    jp nc, $d4bf                                  ; $4871: $d2 $bf $d4

    ld [bc], a                                    ; $4874: $02
    rst $00                                       ; $4875: $c7
    ret nz                                        ; $4876: $c0

    call Call_031_67d1                            ; $4877: $cd $d1 $67
    ld b, h                                       ; $487a: $44
    sub [hl]                                      ; $487b: $96
    ld bc, $27b5                                  ; $487c: $01 $b5 $27
    ld [hl+], a                                   ; $487f: $22
    inc hl                                        ; $4880: $23
    add e                                         ; $4881: $83
    dec b                                         ; $4882: $05
    inc [hl]                                      ; $4883: $34
    dec l                                         ; $4884: $2d
    rst $00                                       ; $4885: $c7

jr_031_4886:
    jr jr_031_4886                                ; $4886: $18 $fe

    ld [hl], l                                    ; $4888: $75
    inc a                                         ; $4889: $3c
    and l                                         ; $488a: $a5
    dec b                                         ; $488b: $05
    rst $00                                       ; $488c: $c7

jr_031_488d:
    jr jr_031_488d                                ; $488d: $18 $fe

    ld [hl], l                                    ; $488f: $75
    db $ec                                        ; $4890: $ec
    ret nc                                        ; $4891: $d0

    ld [bc], a                                    ; $4892: $02
    ld b, a                                       ; $4893: $47
    and l                                         ; $4894: $a5
    db $d3                                        ; $4895: $d3
    halt                                          ; $4896: $76
    ret                                           ; $4897: $c9


    rst $10                                       ; $4898: $d7
    or c                                          ; $4899: $b1
    ld b, e                                       ; $489a: $43
    dec bc                                        ; $489b: $0b
    dec e                                         ; $489c: $1d
    xor h                                         ; $489d: $ac
    inc sp                                        ; $489e: $33
    ld d, [hl]                                    ; $489f: $56
    ld d, b                                       ; $48a0: $50
    xor l                                         ; $48a1: $ad
    ld sp, $07a7                                  ; $48a2: $31 $a7 $07
    call nc, $c702                                ; $48a5: $d4 $02 $c7
    ld d, l                                       ; $48a8: $55
    dec d                                         ; $48a9: $15
    ld a, h                                       ; $48aa: $7c
    and h                                         ; $48ab: $a4
    db $db                                        ; $48ac: $db
    ld a, [hl+]                                   ; $48ad: $2a
    ld h, e                                       ; $48ae: $63
    ld h, c                                       ; $48af: $61
    ld b, $d4                                     ; $48b0: $06 $d4
    ld [bc], a                                    ; $48b2: $02
    rst $00                                       ; $48b3: $c7
    ld d, l                                       ; $48b4: $55
    dec d                                         ; $48b5: $15
    ld a, h                                       ; $48b6: $7c
    and h                                         ; $48b7: $a4
    ld e, e                                       ; $48b8: $5b
    dec bc                                        ; $48b9: $0b
    ld b, a                                       ; $48ba: $47
    dec [hl]                                      ; $48bb: $35
    add b                                         ; $48bc: $80
    ld hl, $016f                                  ; $48bd: $21 $6f $01
    and a                                         ; $48c0: $a7
    ld a, $a7                                     ; $48c1: $3e $a7
    dec [hl]                                      ; $48c3: $35
    add b                                         ; $48c4: $80
    ld de, $a9f6                                  ; $48c5: $11 $f6 $a9
    dec b                                         ; $48c8: $05
    ld b, a                                       ; $48c9: $47
    ccf                                           ; $48ca: $3f
    cp a                                          ; $48cb: $bf
    inc [hl]                                      ; $48cc: $34
    or $cd                                        ; $48cd: $f6 $cd
    ld e, a                                       ; $48cf: $5f
    scf                                           ; $48d0: $37
    add hl, de                                    ; $48d1: $19
    ld d, b                                       ; $48d2: $50
    dec bc                                        ; $48d3: $0b
    ld b, a                                       ; $48d4: $47
    db $fd                                        ; $48d5: $fd
    adc e                                         ; $48d6: $8b
    ld l, l                                       ; $48d7: $6d
    sbc a                                         ; $48d8: $9f
    ld d, h                                       ; $48d9: $54
    jp hl                                         ; $48da: $e9


    db $d3                                        ; $48db: $d3
    xor [hl]                                      ; $48dc: $ae
    ld d, a                                       ; $48dd: $57
    dec [hl]                                      ; $48de: $35
    ld b, l                                       ; $48df: $45
    call nc, Call_000_2702                        ; $48e0: $d4 $02 $27
    jr z, jr_031_495b                             ; $48e3: $28 $76

    sbc c                                         ; $48e5: $99
    sub e                                         ; $48e6: $93
    ld h, d                                       ; $48e7: $62
    rst $28                                       ; $48e8: $ef
    db $d3                                        ; $48e9: $d3
    ld l, $bf                                     ; $48ea: $2e $bf
    db $dd                                        ; $48ec: $dd
    ld b, $5f                                     ; $48ed: $06 $5f
    ld l, e                                       ; $48ef: $6b
    ld e, $e1                                     ; $48f0: $1e $e1
    ei                                            ; $48f2: $fb
    or e                                          ; $48f3: $b3
    ld [hl], d                                    ; $48f4: $72
    inc sp                                        ; $48f5: $33
    ld a, d                                       ; $48f6: $7a
    add sp, -$56                                  ; $48f7: $e8 $aa
    ld c, l                                       ; $48f9: $4d
    ld l, h                                       ; $48fa: $6c
    ld bc, $2827                                  ; $48fb: $01 $27 $28

Call_031_48fe:
    halt                                          ; $48fe: $76
    sbc c                                         ; $48ff: $99
    sub e                                         ; $4900: $93
    ld h, d                                       ; $4901: $62
    rst $28                                       ; $4902: $ef
    db $d3                                        ; $4903: $d3
    ld e, h                                       ; $4904: $5c
    ld b, c                                       ; $4905: $41
    ld b, $7e                                     ; $4906: $06 $7e
    dec de                                        ; $4908: $1b
    ld a, h                                       ; $4909: $7c
    xor l                                         ; $490a: $ad
    ld de, $6921                                  ; $490b: $11 $21 $69
    adc l                                         ; $490e: $8d
    add hl, sp                                    ; $490f: $39
    and c                                         ; $4910: $a1
    add $35                                       ; $4911: $c6 $35
    ld d, d                                       ; $4913: $52
    xor h                                         ; $4914: $ac
    db $e3                                        ; $4915: $e3
    add hl, hl                                    ; $4916: $29
    ld a, c                                       ; $4917: $79
    dec bc                                        ; $4918: $0b
    ld e, c                                       ; $4919: $59
    ld [hl+], a                                   ; $491a: $22
    jp nc, $0fd2                                  ; $491b: $d2 $d2 $0f

    inc hl                                        ; $491e: $23
    cp c                                          ; $491f: $b9
    and d                                         ; $4920: $a2
    ret c                                         ; $4921: $d8

    ld h, l                                       ; $4922: $65
    ld c, [hl]                                    ; $4923: $4e
    adc d                                         ; $4924: $8a
    db $fd                                        ; $4925: $fd
    ei                                            ; $4926: $fb
    ei                                            ; $4927: $fb
    or h                                          ; $4928: $b4
    sub b                                         ; $4929: $90
    inc sp                                        ; $492a: $33
    cp b                                          ; $492b: $b8
    ld a, [hl-]                                   ; $492c: $3a
    ld [hl], e                                    ; $492d: $73
    call nc, $d7cf                                ; $492e: $d4 $cf $d7
    add hl, bc                                    ; $4931: $09
    ld h, [hl]                                    ; $4932: $66
    or c                                          ; $4933: $b1
    jp z, Jump_000_0cca                           ; $4934: $ca $ca $0c

    add $e8                                       ; $4937: $c6 $e8
    sub e                                         ; $4939: $93
    ld l, e                                       ; $493a: $6b
    and d                                         ; $493b: $a2
    ld de, $b48c                                  ; $493c: $11 $8c $b4
    ret nc                                        ; $493f: $d0

    adc a                                         ; $4940: $8f
    and l                                         ; $4941: $a5
    dec c                                         ; $4942: $0d
    ld d, e                                       ; $4943: $53
    ld b, l                                       ; $4944: $45
    ld sp, hl                                     ; $4945: $f9
    ld a, [hl-]                                   ; $4946: $3a
    pop bc                                        ; $4947: $c1
    ld a, [de]                                    ; $4948: $1a
    db $fd                                        ; $4949: $fd
    ld d, b                                       ; $494a: $50
    call z, $8798                                 ; $494b: $cc $98 $87
    cp [hl]                                       ; $494e: $be
    ld b, [hl]                                    ; $494f: $46
    adc $61                                       ; $4950: $ce $61
    add hl, de                                    ; $4952: $19
    ld d, b                                       ; $4953: $50
    ret                                           ; $4954: $c9


    add b                                         ; $4955: $80
    ld h, d                                       ; $4956: $62
    dec e                                         ; $4957: $1d
    ld c, a                                       ; $4958: $4f
    ret                                           ; $4959: $c9


    ld e, e                                       ; $495a: $5b

jr_031_495b:
    daa                                           ; $495b: $27
    jr z, jr_031_49d4                             ; $495c: $28 $76

    sbc c                                         ; $495e: $99
    sub e                                         ; $495f: $93
    ld h, d                                       ; $4960: $62
    rst $28                                       ; $4961: $ef
    db $d3                                        ; $4962: $d3
    inc c                                         ; $4963: $0c
    ld e, b                                       ; $4964: $58
    sub l                                         ; $4965: $95
    ld a, $dd                                     ; $4966: $3e $dd
    ld b, [hl]                                    ; $4968: $46
    adc d                                         ; $4969: $8a
    ld [hl], l                                    ; $496a: $75
    inc a                                         ; $496b: $3c
    dec h                                         ; $496c: $25
    rst $18                                       ; $496d: $df
    ld d, c                                       ; $496e: $51
    ld a, a                                       ; $496f: $7f
    ld l, c                                       ; $4970: $69
    ld b, e                                       ; $4971: $43
    ld c, d                                       ; $4972: $4a
    adc [hl]                                      ; $4973: $8e
    ld h, b                                       ; $4974: $60
    ld d, $2b                                     ; $4975: $16 $2b
    ld [hl], a                                    ; $4977: $77
    xor h                                         ; $4978: $ac
    ld a, [de]                                    ; $4979: $1a
    ld d, a                                       ; $497a: $57
    inc b                                         ; $497b: $04
    cp [hl]                                       ; $497c: $be
    ccf                                           ; $497d: $3f
    ld a, [hl]                                    ; $497e: $7e
    scf                                           ; $497f: $37
    and $a1                                       ; $4980: $e6 $a1
    adc a                                         ; $4982: $8f
    ld l, e                                       ; $4983: $6b
    ld c, l                                       ; $4984: $4d
    add c                                         ; $4985: $81
    sbc b                                         ; $4986: $98
    cp $9a                                        ; $4987: $fe $9a
    ld [bc], a                                    ; $4989: $02
    ld sp, $75ae                                  ; $498a: $31 $ae $75
    inc a                                         ; $498d: $3c
    and l                                         ; $498e: $a5
    ld [hl], $b1                                  ; $498f: $36 $b1
    dec b                                         ; $4991: $05
    daa                                           ; $4992: $27
    jr z, jr_031_4a0b                             ; $4993: $28 $76

    sbc c                                         ; $4995: $99
    sub e                                         ; $4996: $93
    ld h, d                                       ; $4997: $62
    sub a                                         ; $4998: $97
    rst $18                                       ; $4999: $df
    db $f4                                        ; $499a: $f4
    ld l, c                                       ; $499b: $69
    ldh a, [$b5]                                  ; $499c: $f0 $b5
    and [hl]                                      ; $499e: $a6
    nop                                           ; $499f: $00
    ld l, d                                       ; $49a0: $6a
    ld e, h                                       ; $49a1: $5c
    bit 7, d                                      ; $49a2: $cb $7a
    xor h                                         ; $49a4: $ac
    ld l, a                                       ; $49a5: $6f
    adc $63                                       ; $49a6: $ce $63
    add hl, de                                    ; $49a8: $19
    ret nz                                        ; $49a9: $c0

    push bc                                       ; $49aa: $c5
    db $dd                                        ; $49ab: $dd
    ld d, d                                       ; $49ac: $52
    ld b, [hl]                                    ; $49ad: $46
    and h                                         ; $49ae: $a4
    ld c, a                                       ; $49af: $4f
    dec bc                                        ; $49b0: $0b
    ldh a, [$95]                                  ; $49b1: $f0 $95
    cp e                                          ; $49b3: $bb
    ld [hl], c                                    ; $49b4: $71
    ld b, [hl]                                    ; $49b5: $46
    ld e, $86                                     ; $49b6: $1e $86
    xor [hl]                                      ; $49b8: $ae
    cp h                                          ; $49b9: $bc
    dec b                                         ; $49ba: $05
    daa                                           ; $49bb: $27
    jr z, @+$78                                   ; $49bc: $28 $76

    sbc c                                         ; $49be: $99
    sub e                                         ; $49bf: $93
    ld h, d                                       ; $49c0: $62
    sub a                                         ; $49c1: $97
    rst $18                                       ; $49c2: $df
    db $f4                                        ; $49c3: $f4
    ld l, c                                       ; $49c4: $69
    ldh a, [rPCM34]                               ; $49c5: $f0 $77
    ld a, [hl-]                                   ; $49c7: $3a
    and [hl]                                      ; $49c8: $a6
    rst $00                                       ; $49c9: $c7
    rst $28                                       ; $49ca: $ef
    rst $08                                       ; $49cb: $cf
    sub a                                         ; $49cc: $97
    ld [hl], $0c                                  ; $49cd: $36 $0c
    ei                                            ; $49cf: $fb
    or h                                          ; $49d0: $b4
    inc [hl]                                      ; $49d1: $34
    and b                                         ; $49d2: $a0
    rrca                                          ; $49d3: $0f

jr_031_49d4:
    cp $8c                                        ; $49d4: $fe $8c
    inc sp                                        ; $49d6: $33
    ld a, [c]                                     ; $49d7: $f2
    jr nc, jr_031_4a4e                            ; $49d8: $30 $74

    push hl                                       ; $49da: $e5
    dec l                                         ; $49db: $2d
    daa                                           ; $49dc: $27
    jr z, jr_031_4a55                             ; $49dd: $28 $76

    sbc c                                         ; $49df: $99
    sub e                                         ; $49e0: $93
    ld h, d                                       ; $49e1: $62
    sub a                                         ; $49e2: $97
    rst $18                                       ; $49e3: $df
    db $f4                                        ; $49e4: $f4
    ld l, c                                       ; $49e5: $69
    ldh a, [rPCM34]                               ; $49e6: $f0 $77
    ld a, [hl-]                                   ; $49e8: $3a
    and [hl]                                      ; $49e9: $a6
    rst $00                                       ; $49ea: $c7
    rst $28                                       ; $49eb: $ef
    rst $08                                       ; $49ec: $cf
    ld b, a                                       ; $49ed: $47
    rrca                                          ; $49ee: $0f
    db $fc                                        ; $49ef: $fc
    db $db                                        ; $49f0: $db
    and a                                         ; $49f1: $a7
    add hl, de                                    ; $49f2: $19
    ret nc                                        ; $49f3: $d0

jr_031_49f4:
    inc bc                                        ; $49f4: $03
    rra                                           ; $49f5: $1f
    rst $10                                       ; $49f6: $d7
    adc d                                         ; $49f7: $8a
    adc l                                         ; $49f8: $8d
    cp d                                          ; $49f9: $ba
    ld h, $8d                                     ; $49fa: $26 $8d
    ld l, e                                       ; $49fc: $6b
    push hl                                       ; $49fd: $e5
    xor [hl]                                      ; $49fe: $ae
    rst $38                                       ; $49ff: $ff
    ld d, l                                       ; $4a00: $55
    pop hl                                        ; $4a01: $e1
    ld l, $2d                                     ; $4a02: $2e $2d
    inc bc                                        ; $4a04: $03
    cp b                                          ; $4a05: $b8
    and d                                         ; $4a06: $a2
    dec [hl]                                      ; $4a07: $35
    ld [hl], d                                    ; $4a08: $72
    ld [bc], a                                    ; $4a09: $02
    ld c, a                                       ; $4a0a: $4f

jr_031_4a0b:
    add hl, hl                                    ; $4a0b: $29
    ld l, a                                       ; $4a0c: $6f
    ld bc, $8a59                                  ; $4a0d: $01 $59 $8a
    ld e, l                                       ; $4a10: $5d
    and $a4                                       ; $4a11: $e6 $a4

jr_031_4a13:
    jr @+$6b                                      ; $4a13: $18 $69

    db $fc                                        ; $4a15: $fc
    db $fd                                        ; $4a16: $fd
    xor a                                         ; $4a17: $af
    ld c, a                                       ; $4a18: $4f
    add e                                         ; $4a19: $83
    cp a                                          ; $4a1a: $bf
    call nc, $a9fb                                ; $4a1b: $d4 $fb $a9
    rst $30                                       ; $4a1e: $f7
    ld l, e                                       ; $4a1f: $6b
    inc de                                        ; $4a20: $13
    ld e, e                                       ; $4a21: $5b
    daa                                           ; $4a22: $27
    jr z, jr_031_4a9b                             ; $4a23: $28 $76

    sbc c                                         ; $4a25: $99
    sub e                                         ; $4a26: $93
    ld h, d                                       ; $4a27: $62
    ld b, $ac                                     ; $4a28: $06 $ac
    ld c, d                                       ; $4a2a: $4a
    sbc a                                         ; $4a2b: $9f
    db $f4                                        ; $4a2c: $f4

jr_031_4a2d:
    ld l, c                                       ; $4a2d: $69
    ld b, l                                       ; $4a2e: $45
    or c                                          ; $4a2f: $b1
    and $e1                                       ; $4a30: $e6 $e1
    and a                                         ; $4a32: $a7
    jr jr_031_49f4                                ; $4a33: $18 $bf

    xor e                                         ; $4a35: $ab
    ld [hl], e                                    ; $4a36: $73
    ld [hl], e                                    ; $4a37: $73
    ld [hl], e                                    ; $4a38: $73
    call nc, $b4bf                                ; $4a39: $d4 $bf $b4
    inc c                                         ; $4a3c: $0c
    ld l, b                                       ; $4a3d: $68
    inc b                                         ; $4a3e: $04
    ld [hl], e                                    ; $4a3f: $73
    ld e, l                                       ; $4a40: $5d
    ld h, d                                       ; $4a41: $62
    call c, $8162                                 ; $4a42: $dc $62 $81
    inc hl                                        ; $4a45: $23
    jr jr_031_4a13                                ; $4a46: $18 $cb

    ld e, b                                       ; $4a48: $58
    ld e, a                                       ; $4a49: $5f

jr_031_4a4a:
    or c                                          ; $4a4a: $b1
    ld c, e                                       ; $4a4b: $4b
    ld b, h                                       ; $4a4c: $44
    sbc d                                         ; $4a4d: $9a

jr_031_4a4e:
    db $eb                                        ; $4a4e: $eb
    ld e, a                                       ; $4a4f: $5f
    rst $28                                       ; $4a50: $ef
    sub e                                         ; $4a51: $93
    xor e                                         ; $4a52: $ab
    ld [hl], $b1                                  ; $4a53: $36 $b1

jr_031_4a55:
    dec b                                         ; $4a55: $05
    daa                                           ; $4a56: $27
    jr z, @+$78                                   ; $4a57: $28 $76

    sbc c                                         ; $4a59: $99
    sub e                                         ; $4a5a: $93
    ld h, d                                       ; $4a5b: $62
    or $3f                                        ; $4a5c: $f6 $3f
    inc d                                         ; $4a5e: $14
    ld a, l                                       ; $4a5f: $7d
    ld e, d                                       ; $4a60: $5a
    ld d, c                                       ; $4a61: $51
    ld c, h                                       ; $4a62: $4c
    jp hl                                         ; $4a63: $e9


    or h                                          ; $4a64: $b4
    jr z, jr_031_4a2d                             ; $4a65: $28 $c6

    dec [hl]                                      ; $4a67: $35
    ld a, d                                       ; $4a68: $7a
    ld b, b                                       ; $4a69: $40
    adc d                                         ; $4a6a: $8a
    dec d                                         ; $4a6b: $15
    push bc                                       ; $4a6c: $c5
    adc h                                         ; $4a6d: $8c
    ret z                                         ; $4a6e: $c8

    ld [hl-], a                                   ; $4a6f: $32
    and b                                         ; $4a70: $a0
    jr jr_031_4a4a                                ; $4a71: $18 $d7

    sbc d                                         ; $4a73: $9a
    add a                                         ; $4a74: $87
    pop af                                        ; $4a75: $f1
    cp $0c                                        ; $4a76: $fe $0c
    halt                                          ; $4a78: $76
    dec a                                         ; $4a79: $3d
    ldh a, [rNR23]                                ; $4a7a: $f0 $18
    rst $10                                       ; $4a7c: $d7
    ld l, $11                                     ; $4a7d: $2e $11
    ld l, c                                       ; $4a7f: $69
    xor [hl]                                      ; $4a80: $ae
    ld a, a                                       ; $4a81: $7f
    cp l                                          ; $4a82: $bd
    ld c, a                                       ; $4a83: $4f
    xor [hl]                                      ; $4a84: $ae
    jp c, $16c4                                   ; $4a85: $da $c4 $16

    daa                                           ; $4a88: $27
    jr z, jr_031_4b01                             ; $4a89: $28 $76

    sbc c                                         ; $4a8b: $99
    sub e                                         ; $4a8c: $93
    ld h, d                                       ; $4a8d: $62
    or $3f                                        ; $4a8e: $f6 $3f
    inc d                                         ; $4a90: $14
    ld a, l                                       ; $4a91: $7d
    ld a, [de]                                    ; $4a92: $1a
    dec a                                         ; $4a93: $3d
    adc b                                         ; $4a94: $88
    dec d                                         ; $4a95: $15
    push bc                                       ; $4a96: $c5
    ld [c], a                                     ; $4a97: $e2
    add hl, sp                                    ; $4a98: $39
    push bc                                       ; $4a99: $c5
    ld [hl-], a                                   ; $4a9a: $32

jr_031_4a9b:
    and b                                         ; $4a9b: $a0
    ld de, $62cc                                  ; $4a9c: $11 $cc $62
    xor [hl]                                      ; $4a9f: $ae
    ld e, $21                                     ; $4aa0: $1e $21
    ld l, d                                       ; $4aa2: $6a
    inc de                                        ; $4aa3: $13
    ld e, e                                       ; $4aa4: $5b
    daa                                           ; $4aa5: $27
    jr z, @+$78                                   ; $4aa6: $28 $76

    sbc c                                         ; $4aa8: $99
    sub e                                         ; $4aa9: $93
    ld h, d                                       ; $4aaa: $62
    and h                                         ; $4aab: $a4
    cp c                                          ; $4aac: $b9
    ld a, $d7                                     ; $4aad: $3e $d7
    and a                                         ; $4aaf: $a7
    dec [hl]                                      ; $4ab0: $35
    dec b                                         ; $4ab1: $05
    ld h, d                                       ; $4ab2: $62
    inc e                                         ; $4ab3: $1c
    db $d3                                        ; $4ab4: $d3
    ld l, c                                       ; $4ab5: $69
    cp h                                          ; $4ab6: $bc
    or b                                          ; $4ab7: $b0
    ld l, b                                       ; $4ab8: $68
    ld [hl], l                                    ; $4ab9: $75
    ld h, [hl]                                    ; $4aba: $66
    ld b, h                                       ; $4abb: $44
    sub [hl]                                      ; $4abc: $96
    ld bc, $6d79                                  ; $4abd: $01 $79 $6d
    ld h, d                                       ; $4ac0: $62
    dec bc                                        ; $4ac1: $0b
    daa                                           ; $4ac2: $27
    jr z, jr_031_4b3b                             ; $4ac3: $28 $76

    sbc c                                         ; $4ac5: $99
    sub e                                         ; $4ac6: $93
    ld h, d                                       ; $4ac7: $62
    call z, $34fb                                 ; $4ac8: $cc $fb $34
    ld a, [hl]                                    ; $4acb: $7e
    ld h, e                                       ; $4acc: $63
    ld d, b                                       ; $4acd: $50
    ld a, $f8                                     ; $4ace: $3e $f8
    ld e, d                                       ; $4ad0: $5a
    ld h, e                                       ; $4ad1: $63
    ld c, [hl]                                    ; $4ad2: $4e
    xor b                                         ; $4ad3: $a8
    ld [hl], c                                    ; $4ad4: $71
    push bc                                       ; $4ad5: $c5
    ld hl, sp-$73                                 ; $4ad6: $f8 $8d
    push de                                       ; $4ad8: $d5
    dec h                                         ; $4ad9: $25
    push bc                                       ; $4ada: $c5
    ldh a, [$a7]                                  ; $4adb: $f0 $a7
    dec bc                                        ; $4add: $0b
    or d                                          ; $4ade: $b2
    ld l, [hl]                                    ; $4adf: $6e
    or c                                          ; $4ae0: $b1
    add $7c                                       ; $4ae1: $c6 $7c
    ldh a, [$35]                                  ; $4ae3: $f0 $35
    inc hl                                        ; $4ae5: $23
    or d                                          ; $4ae6: $b2
    inc c                                         ; $4ae7: $0c
    ld l, b                                       ; $4ae8: $68
    dec c                                         ; $4ae9: $0d
    cp e                                          ; $4aea: $bb
    ld h, $30                                     ; $4aeb: $26 $30
    inc bc                                        ; $4aed: $03
    jp c, Jump_031_5583                           ; $4aee: $da $83 $55

    add $c2                                       ; $4af1: $c6 $c2
    inc c                                         ; $4af3: $0c
    xor b                                         ; $4af4: $a8
    ld [hl], $b1                                  ; $4af5: $36 $b1
    dec b                                         ; $4af7: $05
    sbc l                                         ; $4af8: $9d
    ld h, b                                       ; $4af9: $60
    and h                                         ; $4afa: $a4
    add l                                         ; $4afb: $85
    ld a, [hl]                                    ; $4afc: $7e
    xor h                                         ; $4afd: $ac
    add hl, hl                                    ; $4afe: $29
    db $10                                        ; $4aff: $10
    ld c, e                                       ; $4b00: $4b

jr_031_4b01:
    ccf                                           ; $4b01: $3f
    and a                                         ; $4b02: $a7
    ld a, h                                       ; $4b03: $7c
    sbc l                                         ; $4b04: $9d
    sbc $5f                                       ; $4b05: $de $5f
    inc a                                         ; $4b07: $3c
    daa                                           ; $4b08: $27
    inc l                                         ; $4b09: $2c
    ld [hl], l                                    ; $4b0a: $75
    ld e, c                                       ; $4b0b: $59
    jp c, Jump_000_05d1                           ; $4b0c: $da $d1 $05

    dec de                                        ; $4b0f: $1b
    ld a, l                                       ; $4b10: $7d
    cp $c6                                        ; $4b11: $fe $c6
    rra                                           ; $4b13: $1f
    jp nc, Jump_000_26ba                          ; $4b14: $d2 $ba $26

    rst $10                                       ; $4b17: $d7
    sbc d                                         ; $4b18: $9a
    ld [bc], a                                    ; $4b19: $02
    or c                                          ; $4b1a: $b1
    ld b, $30                                     ; $4b1b: $06 $30
    jp nz, $ad3e                                  ; $4b1d: $c2 $3e $ad

    ld [hl-], a                                   ; $4b20: $32

jr_031_4b21:
    db $fc                                        ; $4b21: $fc
    and h                                         ; $4b22: $a4
    ld l, a                                       ; $4b23: $6f
    sbc a                                         ; $4b24: $9f
    ld a, [c]                                     ; $4b25: $f2
    ld d, $27                                     ; $4b26: $16 $27
    jr z, jr_031_4ba0                             ; $4b28: $28 $76

    sbc c                                         ; $4b2a: $99
    sub e                                         ; $4b2b: $93
    ld h, d                                       ; $4b2c: $62
    rst $28                                       ; $4b2d: $ef
    db $d3                                        ; $4b2e: $d3
    ld l, $bf                                     ; $4b2f: $2e $bf
    db $dd                                        ; $4b31: $dd
    add $05                                       ; $4b32: $c6 $05
    sbc l                                         ; $4b34: $9d
    ld [hl], a                                    ; $4b35: $77
    cp l                                          ; $4b36: $bd
    ld b, $15                                     ; $4b37: $06 $15
    db $e3                                        ; $4b39: $e3
    ld a, [de]                                    ; $4b3a: $1a

jr_031_4b3b:
    dec a                                         ; $4b3b: $3d
    ld c, h                                       ; $4b3c: $4c
    xor $fd                                       ; $4b3d: $ee $fd
    ld [hl], c                                    ; $4b3f: $71
    ld [hl], h                                    ; $4b40: $74
    ld b, e                                       ; $4b41: $43
    ld a, [de]                                    ; $4b42: $1a
    ld d, a                                       ; $4b43: $57
    inc l                                         ; $4b44: $2c
    ld l, l                                       ; $4b45: $6d
    sbc a                                         ; $4b46: $9f
    cp d                                          ; $4b47: $ba
    xor e                                         ; $4b48: $ab
    inc d                                         ; $4b49: $14
    or l                                          ; $4b4a: $b5
    adc c                                         ; $4b4b: $89
    ld e, e                                       ; $4b4c: $5b
    and a                                         ; $4b4d: $a7
    rst $30                                       ; $4b4e: $f7
    and a                                         ; $4b4f: $a7
    rst $38                                       ; $4b50: $ff
    ld d, l                                       ; $4b51: $55
    pop hl                                        ; $4b52: $e1
    ld b, d                                       ; $4b53: $42
    ld d, l                                       ; $4b54: $55
    xor d                                         ; $4b55: $aa
    ld l, b                                       ; $4b56: $68
    adc l                                         ; $4b57: $8d
    sbc h                                         ; $4b58: $9c
    ret nz                                        ; $4b59: $c0

    ld d, e                                       ; $4b5a: $53
    or a                                          ; $4b5b: $b7
    dec [hl]                                      ; $4b5c: $35
    and $13                                       ; $4b5d: $e6 $13
    ld [hl], h                                    ; $4b5f: $74
    adc $5b                                       ; $4b60: $ce $5b
    daa                                           ; $4b62: $27
    jr z, jr_031_4bdb                             ; $4b63: $28 $76

    sbc c                                         ; $4b65: $99
    sub e                                         ; $4b66: $93
    ld h, d                                       ; $4b67: $62
    and c                                         ; $4b68: $a1
    ld a, [hl+]                                   ; $4b69: $2a
    ld d, l                                       ; $4b6a: $55
    db $f4                                        ; $4b6b: $f4
    ld l, c                                       ; $4b6c: $69
    rst $38                                       ; $4b6d: $ff
    ld l, [hl]                                    ; $4b6e: $6e
    call z, $9f43                                 ; $4b6f: $cc $43 $9f
    ld h, b                                       ; $4b72: $60
    ld b, $17                                     ; $4b73: $06 $17
    db $fc                                        ; $4b75: $fc
    add hl, hl                                    ; $4b76: $29
    sbc l                                         ; $4b77: $9d
    ld d, $e5                                     ; $4b78: $16 $e5
    db $eb                                        ; $4b7a: $eb
    ld h, b                                       ; $4b7b: $60
    jr jr_031_4b21                                ; $4b7c: $18 $a3

    rst $30                                       ; $4b7e: $f7
    and a                                         ; $4b7f: $a7
    rst $38                                       ; $4b80: $ff
    ld d, l                                       ; $4b81: $55
    pop hl                                        ; $4b82: $e1
    ld l, h                                       ; $4b83: $6c
    push hl                                       ; $4b84: $e5
    ld l, [hl]                                    ; $4b85: $6e
    add sp, -$7d                                  ; $4b86: $e8 $83
    cp a                                          ; $4b88: $bf
    ld b, [hl]                                    ; $4b89: $46
    or b                                          ; $4b8a: $b0
    and [hl]                                      ; $4b8b: $a6
    ld b, b                                       ; $4b8c: $40
    inc l                                         ; $4b8d: $2c
    db $fd                                        ; $4b8e: $fd
    sbc h                                         ; $4b8f: $9c
    ld a, [c]                                     ; $4b90: $f2
    ld d, $27                                     ; $4b91: $16 $27
    jr z, jr_031_4c0b                             ; $4b93: $28 $76

    sbc c                                         ; $4b95: $99
    sub e                                         ; $4b96: $93
    ld h, d                                       ; $4b97: $62
    rst $28                                       ; $4b98: $ef
    db $d3                                        ; $4b99: $d3
    db $f4                                        ; $4b9a: $f4
    ld sp, hl                                     ; $4b9b: $f9
    di                                            ; $4b9c: $f3
    ld a, [bc]                                    ; $4b9d: $0a
    ld b, a                                       ; $4b9e: $47
    adc d                                         ; $4b9f: $8a

jr_031_4ba0:
    add hl, de                                    ; $4ba0: $19
    ld h, a                                       ; $4ba1: $67
    db $e4                                        ; $4ba2: $e4
    ld h, c                                       ; $4ba3: $61
    add sp, -$76                                  ; $4ba4: $e8 $8a
    jp c, Jump_000_1dc4                           ; $4ba6: $da $c4 $1d

    add c                                         ; $4ba9: $81
    ld a, [$1e8b]                                 ; $4baa: $fa $8b $1e
    inc a                                         ; $4bad: $3c
    add hl, sp                                    ; $4bae: $39
    inc l                                         ; $4baf: $2c
    or c                                          ; $4bb0: $b1
    ld a, a                                       ; $4bb1: $7f
    scf                                           ; $4bb2: $37
    ld [hl+], a                                   ; $4bb3: $22
    res 0, b                                      ; $4bb4: $cb $80
    db $fc                                        ; $4bb6: $fc
    ld a, l                                       ; $4bb7: $7d
    ld e, d                                       ; $4bb8: $5a
    ld h, e                                       ; $4bb9: $63
    or c                                          ; $4bba: $b1
    ld a, [c]                                     ; $4bbb: $f2
    inc a                                         ; $4bbc: $3c
    ld [hl-], a                                   ; $4bbd: $32
    ld [hl], b                                    ; $4bbe: $70
    rst $00                                       ; $4bbf: $c7
    ld [de], a                                    ; $4bc0: $12
    db $e3                                        ; $4bc1: $e3
    rst $08                                       ; $4bc2: $cf
    dec hl                                        ; $4bc3: $2b
    ld a, l                                       ; $4bc4: $7d
    jp z, Jump_000_275b                           ; $4bc5: $ca $5b $27

    jr z, jr_031_4c40                             ; $4bc8: $28 $76

    sbc c                                         ; $4bca: $99
    sub e                                         ; $4bcb: $93
    ld h, d                                       ; $4bcc: $62
    rst $28                                       ; $4bcd: $ef
    db $d3                                        ; $4bce: $d3
    ret z                                         ; $4bcf: $c8

    db $ed                                        ; $4bd0: $ed
    ld b, a                                       ; $4bd1: $47
    ld a, [$7579]                                 ; $4bd2: $fa $79 $75
    dec de                                        ; $4bd5: $1b
    db $fc                                        ; $4bd6: $fc
    cp l                                          ; $4bd7: $bd
    ld d, h                                       ; $4bd8: $54
    or [hl]                                       ; $4bd9: $b6
    ld l, b                                       ; $4bda: $68

jr_031_4bdb:
    ld e, h                                       ; $4bdb: $5c
    and e                                         ; $4bdc: $a3
    rst $30                                       ; $4bdd: $f7
    add a                                         ; $4bde: $87
    sbc a                                         ; $4bdf: $9f
    pop de                                        ; $4be0: $d1
    daa                                           ; $4be1: $27
    ld b, e                                       ; $4be2: $43
    rst $10                                       ; $4be3: $d7
    db $f4                                        ; $4be4: $f4
    di                                            ; $4be5: $f3
    inc a                                         ; $4be6: $3c
    ld e, a                                       ; $4be7: $5f
    ld d, e                                       ; $4be8: $53
    and b                                         ; $4be9: $a0
    jp nc, $ddf8                                  ; $4bea: $d2 $f8 $dd

    add b                                         ; $4bed: $80
    inc e                                         ; $4bee: $1c
    ld l, $b6                                     ; $4bef: $2e $b6
    ld l, d                                       ; $4bf1: $6a
    rrca                                          ; $4bf2: $0f
    ld l, l                                       ; $4bf3: $6d
    ld bc, $2827                                  ; $4bf4: $01 $27 $28
    halt                                          ; $4bf7: $76
    sbc c                                         ; $4bf8: $99
    sub e                                         ; $4bf9: $93
    ld h, d                                       ; $4bfa: $62
    ld b, $ac                                     ; $4bfb: $06 $ac
    ld c, d                                       ; $4bfd: $4a
    sbc a                                         ; $4bfe: $9f
    db $f4                                        ; $4bff: $f4
    ld l, c                                       ; $4c00: $69
    ld b, l                                       ; $4c01: $45
    ld sp, $637e                                  ; $4c02: $31 $7e $63
    ld [hl], l                                    ; $4c05: $75
    ld c, c                                       ; $4c06: $49
    or c                                          ; $4c07: $b1
    sla b                                         ; $4c08: $cb $20
    ld l, [hl]                                    ; $4c0a: $6e

jr_031_4c0b:
    or c                                          ; $4c0b: $b1
    add $7c                                       ; $4c0c: $c6 $7c
    and h                                         ; $4c0e: $a4
    ld e, b                                       ; $4c0f: $58
    inc a                                         ; $4c10: $3c
    and a                                         ; $4c11: $a7
    ld e, b                                       ; $4c12: $58
    di                                            ; $4c13: $f3
    ret nz                                        ; $4c14: $c0

    ld [hl], a                                    ; $4c15: $77
    adc c                                         ; $4c16: $89
    ld c, b                                       ; $4c17: $48
    ld [hl], e                                    ; $4c18: $73
    db $fd                                        ; $4c19: $fd
    db $eb                                        ; $4c1a: $eb
    ld a, l                                       ; $4c1b: $7d
    ld [hl], d                                    ; $4c1c: $72
    push de                                       ; $4c1d: $d5
    ld h, $b6                                     ; $4c1e: $26 $b6
    daa                                           ; $4c20: $27
    jr z, jr_031_4c99                             ; $4c21: $28 $76

    sbc c                                         ; $4c23: $99
    sub e                                         ; $4c24: $93
    ld h, d                                       ; $4c25: $62
    ld [hl], h                                    ; $4c26: $74
    rst $00                                       ; $4c27: $c7
    xor d                                         ; $4c28: $aa
    add d                                         ; $4c29: $82
    adc a                                         ; $4c2a: $8f
    and c                                         ; $4c2b: $a1
    ld c, a                                       ; $4c2c: $4f
    cp e                                          ; $4c2d: $bb
    sbc $27                                       ; $4c2e: $de $27
    rst $10                                       ; $4c30: $d7
    adc d                                         ; $4c31: $8a
    sub $3c                                       ; $4c32: $d6 $3c
    adc h                                         ; $4c34: $8c
    rst $30                                       ; $4c35: $f7
    sub e                                         ; $4c36: $93
    xor e                                         ; $4c37: $ab
    inc c                                         ; $4c38: $0c
    ld h, e                                       ; $4c39: $63
    reti                                          ; $4c3a: $d9


    db $10                                        ; $4c3b: $10
    and h                                         ; $4c3c: $a4
    dec [hl]                                      ; $4c3d: $35
    rrca                                          ; $4c3e: $0f
    ld a, h                                       ; $4c3f: $7c

jr_031_4c40:
    sub a                                         ; $4c40: $97
    adc b                                         ; $4c41: $88
    inc [hl]                                      ; $4c42: $34
    rst $10                                       ; $4c43: $d7
    cp a                                          ; $4c44: $bf
    sbc $27                                       ; $4c45: $de $27
    ld d, a                                       ; $4c47: $57
    sbc $02                                       ; $4c48: $de $02
    daa                                           ; $4c4a: $27
    jr z, jr_031_4cc3                             ; $4c4b: $28 $76

    sbc c                                         ; $4c4d: $99
    sub e                                         ; $4c4e: $93
    ld h, d                                       ; $4c4f: $62
    sub a                                         ; $4c50: $97
    rst $18                                       ; $4c51: $df
    db $f4                                        ; $4c52: $f4
    ld l, c                                       ; $4c53: $69
    ldh a, [$97]                                  ; $4c54: $f0 $97
    ld [hl], d                                    ; $4c56: $72
    ld b, b                                       ; $4c57: $40
    ld a, [de]                                    ; $4c58: $1a
    ret                                           ; $4c59: $c9


    dec e                                         ; $4c5a: $1d
    db $d3                                        ; $4c5b: $d3
    ld l, b                                       ; $4c5c: $68
    sbc a                                         ; $4c5d: $9f
    sub $f8                                       ; $4c5e: $d6 $f8
    ld h, e                                       ; $4c60: $63
    ld e, [hl]                                    ; $4c61: $5e
    ld b, $ec                                     ; $4c62: $06 $ec
    db $d3                                        ; $4c64: $d3
    adc d                                         ; $4c65: $8a
    dec l                                         ; $4c66: $2d
    dec c                                         ; $4c67: $0d
    ld c, b                                       ; $4c68: $48
    ld a, [de]                                    ; $4c69: $1a
    rst $10                                       ; $4c6a: $d7
    jp z, Jump_000_38dd                           ; $4c6b: $ca $dd $38

    inc hl                                        ; $4c6e: $23
    rrca                                          ; $4c6f: $0f
    ld b, e                                       ; $4c70: $43
    ld d, a                                       ; $4c71: $57
    sbc $02                                       ; $4c72: $de $02
    daa                                           ; $4c74: $27
    jr z, jr_031_4ced                             ; $4c75: $28 $76

    sbc c                                         ; $4c77: $99
    sub e                                         ; $4c78: $93
    ld h, d                                       ; $4c79: $62
    sub a                                         ; $4c7a: $97
    rst $18                                       ; $4c7b: $df
    db $f4                                        ; $4c7c: $f4
    ld l, c                                       ; $4c7d: $69
    ldh a, [$b5]                                  ; $4c7e: $f0 $b5
    ld a, [bc]                                    ; $4c80: $0a
    ld [bc], a                                    ; $4c81: $02
    inc sp                                        ; $4c82: $33
    and b                                         ; $4c83: $a0
    ld h, l                                       ; $4c84: $65
    nop                                           ; $4c85: $00
    rst $00                                       ; $4c86: $c7
    ld sp, $0dc8                                  ; $4c87: $31 $c8 $0d
    ld l, c                                       ; $4c8a: $69
    push hl                                       ; $4c8b: $e5
    ld l, [hl]                                    ; $4c8c: $6e
    sbc h                                         ; $4c8d: $9c
    sub c                                         ; $4c8e: $91
    add a                                         ; $4c8f: $87
    and c                                         ; $4c90: $a1
    ld l, e                                       ; $4c91: $6b
    and d                                         ; $4c92: $a2
    ld h, c                                       ; $4c93: $61
    ld e, c                                       ; $4c94: $59
    inc hl                                        ; $4c95: $23
    rst $20                                       ; $4c96: $e7
    add e                                         ; $4c97: $83
    ccf                                           ; $4c98: $3f

jr_031_4c99:
    ld a, d                                       ; $4c99: $7a
    ldh [$79], a                                  ; $4c9a: $e0 $79
    dec bc                                        ; $4c9c: $0b
    daa                                           ; $4c9d: $27
    jr z, jr_031_4d16                             ; $4c9e: $28 $76

    sbc c                                         ; $4ca0: $99
    sub e                                         ; $4ca1: $93
    ld h, d                                       ; $4ca2: $62
    sub a                                         ; $4ca3: $97
    rst $18                                       ; $4ca4: $df
    db $f4                                        ; $4ca5: $f4
    ld l, c                                       ; $4ca6: $69
    ldh a, [$b5]                                  ; $4ca7: $f0 $b5
    ld a, [bc]                                    ; $4ca9: $0a
    ld [bc], a                                    ; $4caa: $02
    inc sp                                        ; $4cab: $33
    and b                                         ; $4cac: $a0
    pop af                                        ; $4cad: $f1
    rlca                                          ; $4cae: $07
    sub a                                         ; $4caf: $97
    sub [hl]                                      ; $4cb0: $96
    ld bc, $3e9c                                  ; $4cb1: $01 $9c $3e
    ld a, a                                       ; $4cb4: $7f
    ld c, [hl]                                    ; $4cb5: $4e
    dec hl                                        ; $4cb6: $2b

jr_031_4cb7:
    ld [hl], a                                    ; $4cb7: $77
    db $fd                                        ; $4cb8: $fd
    xor a                                         ; $4cb9: $af
    ld a, [bc]                                    ; $4cba: $0a
    di                                            ; $4cbb: $f3
    ld d, $27                                     ; $4cbc: $16 $27
    jr z, jr_031_4d36                             ; $4cbe: $28 $76

    sbc c                                         ; $4cc0: $99
    sub e                                         ; $4cc1: $93
    ld h, d                                       ; $4cc2: $62

jr_031_4cc3:
    rst $28                                       ; $4cc3: $ef
    db $d3                                        ; $4cc4: $d3
    ld l, $bf                                     ; $4cc5: $2e $bf
    db $dd                                        ; $4cc7: $dd
    add $15                                       ; $4cc8: $c6 $15
    ld c, e                                       ; $4cca: $4b
    rla                                           ; $4ccb: $17
    add c                                         ; $4ccc: $81
    rst $00                                       ; $4ccd: $c7
    ld a, [hl+]                                   ; $4cce: $2a
    ld h, e                                       ; $4ccf: $63
    ld h, c                                       ; $4cd0: $61
    ld b, $14                                     ; $4cd1: $06 $14
    or l                                          ; $4cd3: $b5
    adc c                                         ; $4cd4: $89
    dec sp                                        ; $4cd5: $3b
    ld [$29af], a                                 ; $4cd6: $ea $af $29
    db $10                                        ; $4cd9: $10
    ret                                           ; $4cda: $c9


    xor c                                         ; $4cdb: $a9

jr_031_4cdc:
    inc d                                         ; $4cdc: $14
    push bc                                       ; $4cdd: $c5
    ld b, d                                       ; $4cde: $42
    sbc a                                         ; $4cdf: $9f
    db $f4                                        ; $4ce0: $f4
    ld l, c                                       ; $4ce1: $69
    sub l                                         ; $4ce2: $95
    ld bc, $1863                                  ; $4ce3: $01 $63 $18
    or l                                          ; $4ce6: $b5
    adc c                                         ; $4ce7: $89
    db $eb                                        ; $4ce8: $eb
    db $f4                                        ; $4ce9: $f4
    ld [hl], b                                    ; $4cea: $70
    inc b                                         ; $4ceb: $04
    inc hl                                        ; $4cec: $23

jr_031_4ced:
    dec l                                         ; $4ced: $2d
    db $f4                                        ; $4cee: $f4
    ld h, e                                       ; $4cef: $63
    add hl, hl                                    ; $4cf0: $29
    call nc, $ae4f                                ; $4cf1: $d4 $4f $ae
    ld [hl-], a                                   ; $4cf4: $32
    adc h                                         ; $4cf5: $8c
    sub c                                         ; $4cf6: $91
    ld h, d                                       ; $4cf7: $62
    add $19                                       ; $4cf8: $c6 $19
    ld a, c                                       ; $4cfa: $79
    jr jr_031_4cb7                                ; $4cfb: $18 $ba

    ld h, d                                       ; $4cfd: $62
    rst $28                                       ; $4cfe: $ef
    db $d3                                        ; $4cff: $d3
    jp z, $d0dd                                   ; $4d00: $ca $dd $d0

    ld d, a                                       ; $4d03: $57
    ld e, c                                       ; $4d04: $59
    ld sp, $bcae                                  ; $4d05: $31 $ae $bc
    dec b                                         ; $4d08: $05
    daa                                           ; $4d09: $27
    jr z, jr_031_4d82                             ; $4d0a: $28 $76

    sbc c                                         ; $4d0c: $99
    sub e                                         ; $4d0d: $93
    ld h, d                                       ; $4d0e: $62
    and c                                         ; $4d0f: $a1
    ld a, [hl+]                                   ; $4d10: $2a
    ld d, l                                       ; $4d11: $55
    db $f4                                        ; $4d12: $f4
    ld l, c                                       ; $4d13: $69
    add $3c                                       ; $4d14: $c6 $3c

jr_031_4d16:
    db $f4                                        ; $4d16: $f4
    cp c                                          ; $4d17: $b9
    dec d                                         ; $4d18: $15
    ld a, l                                       ; $4d19: $7d
    jp nz, Jump_031_6291                          ; $4d1a: $c2 $91 $62

    add $19                                       ; $4d1d: $c6 $19
    ld a, c                                       ; $4d1f: $79
    jr jr_031_4cdc                                ; $4d20: $18 $ba

    and d                                         ; $4d22: $a2
    ld [hl], $b1                                  ; $4d23: $36 $b1
    dec b                                         ; $4d25: $05
    sbc l                                         ; $4d26: $9d
    ld h, b                                       ; $4d27: $60
    and h                                         ; $4d28: $a4
    pop af                                        ; $4d29: $f1
    ld e, e                                       ; $4d2a: $5b
    ld d, e                                       ; $4d2b: $53
    db $ec                                        ; $4d2c: $ec
    ld d, d                                       ; $4d2d: $52
    adc h                                         ; $4d2e: $8c

jr_031_4d2f:
    cp h                                          ; $4d2f: $bc
    ld l, [hl]                                    ; $4d30: $6e
    xor h                                         ; $4d31: $ac
    add sp, -$6d                                  ; $4d32: $e8 $93
    ld a, [hl+]                                   ; $4d34: $2a
    ld a, l                                       ; $4d35: $7d

jr_031_4d36:
    jp z, Jump_031_7597                           ; $4d36: $ca $97 $75

    ld d, a                                       ; $4d39: $57
    ret nc                                        ; $4d3a: $d0

    and d                                         ; $4d3b: $a2
    rlca                                          ; $4d3c: $07
    ld d, a                                       ; $4d3d: $57
    and l                                         ; $4d3e: $a5
    ld c, a                                       ; $4d3f: $4f
    dec hl                                        ; $4d40: $2b
    ld [hl], a                                    ; $4d41: $77
    and l                                         ; $4d42: $a5
    db $d3                                        ; $4d43: $d3
    and d                                         ; $4d44: $a2
    ld [hl], c                                    ; $4d45: $71
    push bc                                       ; $4d46: $c5
    ld l, $73                                     ; $4d47: $2e $73
    ld d, d                                       ; $4d49: $52
    call nc, $b626                                ; $4d4a: $d4 $26 $b6
    daa                                           ; $4d4d: $27
    jr z, jr_031_4dc6                             ; $4d4e: $28 $76

    sbc c                                         ; $4d50: $99
    sub e                                         ; $4d51: $93
    ld h, d                                       ; $4d52: $62
    rst $28                                       ; $4d53: $ef
    db $d3                                        ; $4d54: $d3
    ld l, $bf                                     ; $4d55: $2e $bf
    db $dd                                        ; $4d57: $dd
    ld b, $5f                                     ; $4d58: $06 $5f
    inc hl                                        ; $4d5a: $23
    ld d, l                                       ; $4d5b: $55
    ld c, l                                       ; $4d5c: $4d
    rst $10                                       ; $4d5d: $d7
    and h                                         ; $4d5e: $a4
    and l                                         ; $4d5f: $a5
    xor h                                         ; $4d60: $ac
    ld e, b                                       ; $4d61: $58
    adc l                                         ; $4d62: $8d
    ld a, l                                       ; $4d63: $7d
    ld e, d                                       ; $4d64: $5a
    cp c                                          ; $4d65: $b9
    dec de                                        ; $4d66: $1b
    ld h, a                                       ; $4d67: $67
    db $e4                                        ; $4d68: $e4
    ld h, c                                       ; $4d69: $61
    add sp, -$56                                  ; $4d6a: $e8 $aa
    ld c, l                                       ; $4d6c: $4d
    ld l, h                                       ; $4d6d: $6c
    ld bc, $8a59                                  ; $4d6e: $01 $59 $8a
    ld e, l                                       ; $4d71: $5d
    and $a4                                       ; $4d72: $e6 $a4
    jr jr_031_4d2f                                ; $4d74: $18 $b9

    db $fd                                        ; $4d76: $fd
    ld c, b                                       ; $4d77: $48
    ccf                                           ; $4d78: $3f
    xor a                                         ; $4d79: $af
    db $f4                                        ; $4d7a: $f4
    ld l, c                                       ; $4d7b: $69
    ldh a, [$67]                                  ; $4d7c: $f0 $67
    sbc h                                         ; $4d7e: $9c
    sub c                                         ; $4d7f: $91
    add a                                         ; $4d80: $87
    and c                                         ; $4d81: $a1

jr_031_4d82:
    ld l, e                                       ; $4d82: $6b
    ld a, [$9e79]                                 ; $4d83: $fa $79 $9e
    cpl                                           ; $4d86: $2f
    inc bc                                        ; $4d87: $03
    ld a, [hl+]                                   ; $4d88: $2a
    add hl, de                                    ; $4d89: $19
    ret nc                                        ; $4d8a: $d0

    ld l, $f6                                     ; $4d8b: $2e $f6
    dec bc                                        ; $4d8d: $0b
    adc l                                         ; $4d8e: $8d
    rst $18                                       ; $4d8f: $df
    dec c                                         ; $4d90: $0d
    ret z                                         ; $4d91: $c8

    sub l                                         ; $4d92: $95
    or a                                          ; $4d93: $b7
    daa                                           ; $4d94: $27
    jr z, jr_031_4e0d                             ; $4d95: $28 $76

    sbc c                                         ; $4d97: $99
    sub e                                         ; $4d98: $93
    ld h, d                                       ; $4d99: $62
    db $fc                                        ; $4d9a: $fc
    ld b, c                                       ; $4d9b: $41
    xor d                                         ; $4d9c: $aa
    add sp, -$2d                                  ; $4d9d: $e8 $d3
    ld c, b                                       ; $4d9f: $48
    or c                                          ; $4da0: $b1
    adc [hl]                                      ; $4da1: $8e
    and a                                         ; $4da2: $a7
    call z, $d760                                 ; $4da3: $cc $60 $d7
    inc bc                                        ; $4da6: $03
    adc a                                         ; $4da7: $8f

Jump_031_4da8:
    ld [hl], c                                    ; $4da8: $71
    db $ed                                        ; $4da9: $ed
    ld [de], a                                    ; $4daa: $12
    sub c                                         ; $4dab: $91
    and $fa                                       ; $4dac: $e6 $fa
    rst $10                                       ; $4dae: $d7

Call_031_4daf:
    ei                                            ; $4daf: $fb
    db $e4                                        ; $4db0: $e4
    xor d                                         ; $4db1: $aa
    ld c, l                                       ; $4db2: $4d
    ld l, h                                       ; $4db3: $6c
    ld bc, $2827                                  ; $4db4: $01 $27 $28
    halt                                          ; $4db7: $76
    sbc c                                         ; $4db8: $99
    sub e                                         ; $4db9: $93
    ld h, d                                       ; $4dba: $62
    ld e, a                                       ; $4dbb: $5f
    ld b, b                                       ; $4dbc: $40
    ld l, [hl]                                    ; $4dbd: $6e
    dec b                                         ; $4dbe: $05
    ld b, e                                       ; $4dbf: $43
    sbc a                                         ; $4dc0: $9f
    ld b, [hl]                                    ; $4dc1: $46
    rrca                                          ; $4dc2: $0f
    ld h, d                                       ; $4dc3: $62
    ld b, l                                       ; $4dc4: $45
    or c                                          ; $4dc5: $b1

jr_031_4dc6:
    and $61                                       ; $4dc6: $e6 $61
    cp h                                          ; $4dc8: $bc
    rra                                           ; $4dc9: $1f
    ld a, e                                       ; $4dca: $7b
    or b                                          ; $4dcb: $b0
    jp z, $3180                                   ; $4dcc: $ca $80 $31

    adc h                                         ; $4dcf: $8c
    push bc                                       ; $4dd0: $c5
    ld [hl], e                                    ; $4dd1: $73

jr_031_4dd2:
    adc d                                         ; $4dd2: $8a
    ld h, l                                       ; $4dd3: $65
    ld b, b                                       ; $4dd4: $40
    inc hl                                        ; $4dd5: $23
    sbc b                                         ; $4dd6: $98
    push bc                                       ; $4dd7: $c5
    ld e, h                                       ; $4dd8: $5c
    dec a                                         ; $4dd9: $3d
    ld b, d                                       ; $4dda: $42
    call nc, $b626                                ; $4ddb: $d4 $26 $b6
    daa                                           ; $4dde: $27
    jr z, jr_031_4e57                             ; $4ddf: $28 $76

    sbc c                                         ; $4de1: $99
    sub e                                         ; $4de2: $93
    ld h, d                                       ; $4de3: $62
    and h                                         ; $4de4: $a4
    pop af                                        ; $4de5: $f1
    rst $30                                       ; $4de6: $f7
    cp a                                          ; $4de7: $bf
    ld a, $0d                                     ; $4de8: $3e $0d
    cp $02                                        ; $4dea: $fe $02
    dec sp                                        ; $4dec: $3b
    ld h, e                                       ; $4ded: $63
    db $dd                                        ; $4dee: $dd
    ld c, d                                       ; $4def: $4a
    dec bc                                        ; $4df0: $0b
    db $fd                                        ; $4df1: $fd
    ld e, b                                       ; $4df2: $58
    di                                            ; $4df3: $f3
    ret nz                                        ; $4df4: $c0

    ld b, a                                       ; $4df5: $47
    cp $80                                        ; $4df6: $fe $80
    sub c                                         ; $4df8: $91
    xor a                                         ; $4df9: $af
    jr z, jr_031_4dd2                             ; $4dfa: $28 $d6

    pop hl                                        ; $4dfc: $e1
    ld sp, hl                                     ; $4dfd: $f9
    rst $00                                       ; $4dfe: $c7
    ld d, d                                       ; $4dff: $52
    inc d                                         ; $4e00: $14
    or l                                          ; $4e01: $b5
    adc c                                         ; $4e02: $89
    dec l                                         ; $4e03: $2d
    daa                                           ; $4e04: $27
    jr z, jr_031_4e7d                             ; $4e05: $28 $76

    sbc c                                         ; $4e07: $99
    sub e                                         ; $4e08: $93
    ld h, d                                       ; $4e09: $62
    sub a                                         ; $4e0a: $97
    rst $18                                       ; $4e0b: $df
    db $f4                                        ; $4e0c: $f4

jr_031_4e0d:
    ld l, c                                       ; $4e0d: $69
    ldh a, [$d7]                                  ; $4e0e: $f0 $d7
    ld h, b                                       ; $4e10: $60
    ld e, l                                       ; $4e11: $5d
    sub [hl]                                      ; $4e12: $96
    ld d, [hl]                                    ; $4e13: $56
    ld h, a                                       ; $4e14: $67
    push de                                       ; $4e15: $d5
    ei                                            ; $4e16: $fb
    ld b, c                                       ; $4e17: $41
    xor [hl]                                      ; $4e18: $ae
    ret z                                         ; $4e19: $c8

    rst $10                                       ; $4e1a: $d7
    add hl, bc                                    ; $4e1b: $09
    and $fa                                       ; $4e1c: $e6 $fa
    rst $10                                       ; $4e1e: $d7
    ei                                            ; $4e1f: $fb
    db $e4                                        ; $4e20: $e4
    ld [hl], d                                    ; $4e21: $72
    adc e                                         ; $4e22: $8b
    dec [hl]                                      ; $4e23: $35
    dec b                                         ; $4e24: $05
    ld h, d                                       ; $4e25: $62
    ld e, h                                       ; $4e26: $5c
    cp e                                          ; $4e27: $bb
    db $fc                                        ; $4e28: $fc
    ld h, [hl]                                    ; $4e29: $66
    inc b                                         ; $4e2a: $04
    xor [hl]                                      ; $4e2b: $ae
    ld e, b                                       ; $4e2c: $58
    and e                                         ; $4e2d: $a3
    rst $08                                       ; $4e2e: $cf
    db $ed                                        ; $4e2f: $ed
    db $d3                                        ; $4e30: $d3
    ldh [$ef], a                                  ; $4e31: $e0 $ef
    sub d                                         ; $4e33: $92
    sub e                                         ; $4e34: $93
    pop hl                                        ; $4e35: $e1
    rra                                           ; $4e36: $1f
    xor c                                         ; $4e37: $a9
    ld l, d                                       ; $4e38: $6a
    ld [hl+], a                                   ; $4e39: $22
    ld l, a                                       ; $4e3a: $6f
    ld bc, $2827                                  ; $4e3b: $01 $27 $28
    halt                                          ; $4e3e: $76
    sbc c                                         ; $4e3f: $99
    sub e                                         ; $4e40: $93
    ld h, d                                       ; $4e41: $62
    db $fc                                        ; $4e42: $fc
    db $fd                                        ; $4e43: $fd
    xor a                                         ; $4e44: $af
    ld c, a                                       ; $4e45: $4f
    db $e3                                        ; $4e46: $e3
    adc d                                         ; $4e47: $8a
    pop hl                                        ; $4e48: $e1
    rst $20                                       ; $4e49: $e7
    ld a, b                                       ; $4e4a: $78
    add hl, de                                    ; $4e4b: $19
    pop hl                                        ; $4e4c: $e1
    ei                                            ; $4e4d: $fb
    or c                                          ; $4e4e: $b1
    ld a, [hl-]                                   ; $4e4f: $3a
    dec hl                                        ; $4e50: $2b
    ld [hl], a                                    ; $4e51: $77
    db $e3                                        ; $4e52: $e3
    adc h                                         ; $4e53: $8c
    inc a                                         ; $4e54: $3c
    inc c                                         ; $4e55: $0c
    ld e, l                                       ; $4e56: $5d

jr_031_4e57:
    dec bc                                        ; $4e57: $0b
    ldh a, [$5d]                                  ; $4e58: $f0 $5d
    ld e, d                                       ; $4e5a: $5a
    ld b, $34                                     ; $4e5b: $06 $34
    add d                                         ; $4e5d: $82
    ld sp, $4b16                                  ; $4e5e: $31 $16 $4b
    dec de                                        ; $4e61: $1b
    cp d                                          ; $4e62: $ba
    sub d                                         ; $4e63: $92
    jp $d0b2                                      ; $4e64: $c3 $b2 $d0


    ld hl, sp+$2d                                 ; $4e67: $f8 $2d
    xor l                                         ; $4e69: $ad
    rst $08                                       ; $4e6a: $cf
    db $dd                                        ; $4e6b: $dd
    add $df                                       ; $4e6c: $c6 $df
    cp a                                          ; $4e6e: $bf
    ld d, [hl]                                    ; $4e6f: $56
    and c                                         ; $4e70: $a1
    and b                                         ; $4e71: $a0
    ld [hl], e                                    ; $4e72: $73
    sbc $02                                       ; $4e73: $de $02
    daa                                           ; $4e75: $27
    jr z, jr_031_4eee                             ; $4e76: $28 $76

    sbc c                                         ; $4e78: $99
    sub e                                         ; $4e79: $93
    ld h, d                                       ; $4e7a: $62
    ld a, [hl]                                    ; $4e7b: $7e
    ld h, e                                       ; $4e7c: $63

jr_031_4e7d:
    ld [$7d16], a                                 ; $4e7d: $ea $16 $7d
    ld e, d                                       ; $4e80: $5a
    pop de                                        ; $4e81: $d1
    sbc d                                         ; $4e82: $9a
    add a                                         ; $4e83: $87
    sbc a                                         ; $4e84: $9f
    sub [hl]                                      ; $4e85: $96
    ld [hl], $4c                                  ; $4e86: $36 $4c
    dec d                                         ; $4e88: $15
    adc l                                         ; $4e89: $8d
    ld l, e                                       ; $4e8a: $6b
    db $f4                                        ; $4e8b: $f4
    cp $8c                                        ; $4e8c: $fe $8c
    inc sp                                        ; $4e8e: $33
    ld a, [c]                                     ; $4e8f: $f2
    jr nc, jr_031_4f06                            ; $4e90: $30 $74

    ld c, l                                       ; $4e92: $4d
    inc [hl]                                      ; $4e93: $34
    add d                                         ; $4e94: $82
    dec [hl]                                      ; $4e95: $35
    rrca                                          ; $4e96: $0f
    call c, $562d                                 ; $4e97: $dc $2d $56
    and c                                         ; $4e9a: $a1
    and b                                         ; $4e9b: $a0
    di                                            ; $4e9c: $f3
    ld a, [bc]                                    ; $4e9d: $0a
    ldh [$f4], a                                  ; $4e9e: $e0 $f4
    sbc c                                         ; $4ea0: $99
    ld d, a                                       ; $4ea1: $57
    inc hl                                        ; $4ea2: $23
    rra                                           ; $4ea3: $1f
    ld d, a                                       ; $4ea4: $57
    inc l                                         ; $4ea5: $2c
    sbc [hl]                                      ; $4ea6: $9e
    ld d, e                                       ; $4ea7: $53
    db $e4                                        ; $4ea8: $e4
    dec l                                         ; $4ea9: $2d
    daa                                           ; $4eaa: $27
    jr z, jr_031_4f23                             ; $4eab: $28 $76

    sbc c                                         ; $4ead: $99
    sub e                                         ; $4eae: $93
    ld h, d                                       ; $4eaf: $62
    xor [hl]                                      ; $4eb0: $ae
    ld c, d                                       ; $4eb1: $4a
    ld b, h                                       ; $4eb2: $44
    ld a, [$5234]                                 ; $4eb3: $fa $34 $52
    xor h                                         ; $4eb6: $ac
    ld h, e                                       ; $4eb7: $63
    add a                                         ; $4eb8: $87
    add hl, de                                    ; $4eb9: $19
    xor h                                         ; $4eba: $ac
    or d                                          ; $4ebb: $b2
    adc $58                                       ; $4ebc: $ce $58
    ld b, c                                       ; $4ebe: $41
    ld d, l                                       ; $4ebf: $55
    sbc e                                         ; $4ec0: $9b
    ret c                                         ; $4ec1: $d8

    ld [bc], a                                    ; $4ec2: $02
    daa                                           ; $4ec3: $27
    jr z, jr_031_4f3c                             ; $4ec4: $28 $76

    sbc c                                         ; $4ec6: $99
    sub e                                         ; $4ec7: $93
    ld h, d                                       ; $4ec8: $62
    or $3f                                        ; $4ec9: $f6 $3f
    inc d                                         ; $4ecb: $14
    ld a, l                                       ; $4ecc: $7d
    ld e, d                                       ; $4ecd: $5a
    ld d, c                                       ; $4ece: $51
    ld c, h                                       ; $4ecf: $4c
    jp hl                                         ; $4ed0: $e9


    or h                                          ; $4ed1: $b4
    jr z, jr_031_4f2a                             ; $4ed2: $28 $56

    add hl, de                                    ; $4ed4: $19
    dec bc                                        ; $4ed5: $0b
    inc sp                                        ; $4ed6: $33
    and b                                         ; $4ed7: $a0
    ld c, b                                       ; $4ed8: $48
    ld l, $f5                                     ; $4ed9: $2e $f5
    ld a, [hl]                                    ; $4edb: $7e
    db $ec                                        ; $4edc: $ec
    pop bc                                        ; $4edd: $c1
    ld a, [hl+]                                   ; $4ede: $2a
    inc bc                                        ; $4edf: $03
    add $30                                       ; $4ee0: $c6 $30
    sub d                                         ; $4ee2: $92
    db $e3                                        ; $4ee3: $e3
    ld a, [de]                                    ; $4ee4: $1a
    dec a                                         ; $4ee5: $3d
    adc b                                         ; $4ee6: $88
    dec d                                         ; $4ee7: $15
    push bc                                       ; $4ee8: $c5
    ld [c], a                                     ; $4ee9: $e2
    add hl, sp                                    ; $4eea: $39
    push bc                                       ; $4eeb: $c5
    ld e, h                                       ; $4eec: $5c
    dec a                                         ; $4eed: $3d

jr_031_4eee:
    ld b, d                                       ; $4eee: $42
    db $e4                                        ; $4eef: $e4
    dec l                                         ; $4ef0: $2d
    daa                                           ; $4ef1: $27
    jr z, jr_031_4f6a                             ; $4ef2: $28 $76

    sbc c                                         ; $4ef4: $99
    sub e                                         ; $4ef5: $93
    ld h, d                                       ; $4ef6: $62
    inc l                                         ; $4ef7: $2c
    cp b                                          ; $4ef8: $b8
    add hl, sp                                    ; $4ef9: $39
    ld b, [hl]                                    ; $4efa: $46
    add sp, -$2d                                  ; $4efb: $e8 $d3
    ld c, b                                       ; $4efd: $48
    or c                                          ; $4efe: $b1
    ld d, h                                       ; $4eff: $54
    ld d, c                                       ; $4f00: $51
    inc b                                         ; $4f01: $04
    cp b                                          ; $4f02: $b8
    ld h, d                                       ; $4f03: $62
    and d                                         ; $4f04: $a2
    cp c                                          ; $4f05: $b9

jr_031_4f06:
    ld a, [hl+]                                   ; $4f06: $2a
    ld de, $d3e9                                  ; $4f07: $11 $e9 $d3
    ld c, b                                       ; $4f0a: $48
    or c                                          ; $4f0b: $b1
    adc [hl]                                      ; $4f0c: $8e
    and a                                         ; $4f0d: $a7
    call z, $9560                                 ; $4f0e: $cc $60 $95
    ld [hl], l                                    ; $4f11: $75
    add $0a                                       ; $4f12: $c6 $0a
    xor d                                         ; $4f14: $aa
    jp c, $16c4                                   ; $4f15: $da $c4 $16

    daa                                           ; $4f18: $27
    jr z, jr_031_4f91                             ; $4f19: $28 $76

    sbc c                                         ; $4f1b: $99
    sub e                                         ; $4f1c: $93
    ld h, d                                       ; $4f1d: $62
    ld [hl], h                                    ; $4f1e: $74
    ld a, a                                       ; $4f1f: $7f
    sbc a                                         ; $4f20: $9f
    add $df                                       ; $4f21: $c6 $df

jr_031_4f23:
    rst $38                                       ; $4f23: $ff
    or a                                          ; $4f24: $b7
    inc a                                         ; $4f25: $3c
    rst $08                                       ; $4f26: $cf
    rlca                                          ; $4f27: $07
    ld a, a                                       ; $4f28: $7f
    adc l                                         ; $4f29: $8d

jr_031_4f2a:
    cp c                                          ; $4f2a: $b9
    dec [hl]                                      ; $4f2b: $35
    dec b                                         ; $4f2c: $05
    ld d, b                                       ; $4f2d: $50
    or l                                          ; $4f2e: $b5
    add a                                         ; $4f2f: $87
    ld h, $b6                                     ; $4f30: $26 $b6
    daa                                           ; $4f32: $27
    jr z, jr_031_4fab                             ; $4f33: $28 $76

    sbc c                                         ; $4f35: $99
    sub e                                         ; $4f36: $93
    ld h, d                                       ; $4f37: $62
    and h                                         ; $4f38: $a4
    pop af                                        ; $4f39: $f1
    rst $30                                       ; $4f3a: $f7
    cp a                                          ; $4f3b: $bf

jr_031_4f3c:
    ld a, $8d                                     ; $4f3c: $3e $8d
    ld l, e                                       ; $4f3e: $6b
    push hl                                       ; $4f3f: $e5
    adc [hl]                                      ; $4f40: $8e
    sbc a                                         ; $4f41: $9f
    ld d, h                                       ; $4f42: $54
    ld a, [bc]                                    ; $4f43: $0a
    or d                                          ; $4f44: $b2
    db $f4                                        ; $4f45: $f4
    cpl                                           ; $4f46: $2f
    push de                                       ; $4f47: $d5
    ld h, $ee                                     ; $4f48: $26 $ee
    inc b                                         ; $4f4a: $04
    db $ed                                        ; $4f4b: $ed
    cp a                                          ; $4f4c: $bf
    ld a, [hl+]                                   ; $4f4d: $2a
    push hl                                       ; $4f4e: $e5
    ld a, [de]                                    ; $4f4f: $1a
    rst $10                                       ; $4f50: $d7
    ld a, [hl-]                                   ; $4f51: $3a
    halt                                          ; $4f52: $76
    ret c                                         ; $4f53: $d8

    cp a                                          ; $4f54: $bf
    ld e, l                                       ; $4f55: $5d
    adc d                                         ; $4f56: $8a
    jr nc, @+$76                                  ; $4f57: $30 $74

    push bc                                       ; $4f59: $c5
    sbc d                                         ; $4f5a: $9a
    rlca                                          ; $4f5b: $07
    cp [hl]                                       ; $4f5c: $be
    ld l, h                                       ; $4f5d: $6c
    sub c                                         ; $4f5e: $91
    ld a, h                                       ; $4f5f: $7c
    ld e, h                                       ; $4f60: $5c
    or c                                          ; $4f61: $b1
    ld a, b                                       ; $4f62: $78
    ld c, [hl]                                    ; $4f63: $4e
    ld sp, $8d05                                  ; $4f64: $31 $05 $8d
    inc hl                                        ; $4f67: $23
    add e                                         ; $4f68: $83
    ld [hl], c                                    ; $4f69: $71

jr_031_4f6a:
    ld e, e                                       ; $4f6a: $5b
    ld h, e                                       ; $4f6b: $63
    ld a, $2e                                     ; $4f6c: $3e $2e
    add sp, $5c                                   ; $4f6e: $e8 $5c
    sbc e                                         ; $4f70: $9b
    ret c                                         ; $4f71: $d8

    ld [bc], a                                    ; $4f72: $02
    daa                                           ; $4f73: $27
    jr z, jr_031_4fec                             ; $4f74: $28 $76

    sbc c                                         ; $4f76: $99
    sub e                                         ; $4f77: $93
    ld h, d                                       ; $4f78: $62
    ld a, [$db17]                                 ; $4f79: $fa $17 $db
    ld a, $e9                                     ; $4f7c: $3e $e9
    db $d3                                        ; $4f7e: $d3
    jp z, Jump_000_38dd                           ; $4f7f: $ca $dd $38

    inc hl                                        ; $4f82: $23
    rrca                                          ; $4f83: $0f
    ld b, e                                       ; $4f84: $43
    rst $10                                       ; $4f85: $d7
    sbc d                                         ; $4f86: $9a
    rlca                                          ; $4f87: $07
    cp [hl]                                       ; $4f88: $be
    inc c                                         ; $4f89: $0c
    ld l, b                                       ; $4f8a: $68
    and c                                         ; $4f8b: $a1
    sbc b                                         ; $4f8c: $98
    ld de, $0659                                  ; $4f8d: $11 $59 $06
    inc d                                         ; $4f90: $14

jr_031_4f91:
    inc hl                                        ; $4f91: $23
    adc l                                         ; $4f92: $8d
    dec b                                         ; $4f93: $05
    scf                                           ; $4f94: $37
    rst $00                                       ; $4f95: $c7
    ld [$aa7d], sp                                ; $4f96: $08 $7d $aa
    ld c, l                                       ; $4f99: $4d
    ld l, h                                       ; $4f9a: $6c
    ld bc, $2827                                  ; $4f9b: $01 $27 $28
    halt                                          ; $4f9e: $76
    sbc c                                         ; $4f9f: $99
    sub e                                         ; $4fa0: $93
    ld h, d                                       ; $4fa1: $62
    rst $28                                       ; $4fa2: $ef
    db $d3                                        ; $4fa3: $d3
    inc c                                         ; $4fa4: $0c
    ld e, b                                       ; $4fa5: $58
    sub l                                         ; $4fa6: $95
    ld a, $dd                                     ; $4fa7: $3e $dd
    ld b, [hl]                                    ; $4fa9: $46
    rst $28                                       ; $4faa: $ef

jr_031_4fab:
    rst $28                                       ; $4fab: $ef
    inc hl                                        ; $4fac: $23
    inc hl                                        ; $4fad: $23
    add e                                         ; $4fae: $83
    jp c, Jump_031_65c4                           ; $4faf: $da $c4 $65

    jp hl                                         ; $4fb2: $e9


    jp nz, $ad7d                                  ; $4fb3: $c2 $7d $ad

    ld [hl-], a                                   ; $4fb6: $32

Jump_031_4fb7:
    cp a                                          ; $4fb7: $bf
    ret c                                         ; $4fb8: $d8

    ld e, d                                       ; $4fb9: $5a
    ld b, $ee                                     ; $4fba: $06 $ee
    ldh a, [$b5]                                  ; $4fbc: $f0 $b5
    db $f4                                        ; $4fbe: $f4
    jp Jump_031_5bc8                              ; $4fbf: $c3 $c8 $5b


    daa                                           ; $4fc2: $27
    jr z, @+$78                                   ; $4fc3: $28 $76

    sbc c                                         ; $4fc5: $99
    sub e                                         ; $4fc6: $93
    ld h, d                                       ; $4fc7: $62
    and h                                         ; $4fc8: $a4
    pop af                                        ; $4fc9: $f1
    rst $30                                       ; $4fca: $f7
    cp a                                          ; $4fcb: $bf
    ld a, $0d                                     ; $4fcc: $3e $0d
    cp [hl]                                       ; $4fce: $be
    ld h, [hl]                                    ; $4fcf: $66
    ret nz                                        ; $4fd0: $c0

    xor d                                         ; $4fd1: $aa
    db $f4                                        ; $4fd2: $f4
    ret                                           ; $4fd3: $c9


    ld [$5fdf], sp                                ; $4fd4: $08 $df $5f
    inc hl                                        ; $4fd7: $23
    xor a                                         ; $4fd8: $af
    db $ec                                        ; $4fd9: $ec
    db $eb                                        ; $4fda: $eb
    sub e                                         ; $4fdb: $93
    add $b5                                       ; $4fdc: $c6 $b5
    adc [hl]                                      ; $4fde: $8e
    and a                                         ; $4fdf: $a7
    call nc, $2e26                                ; $4fe0: $d4 $26 $2e
    ld c, e                                       ; $4fe3: $4b
    rla                                           ; $4fe4: $17
    xor $6b                                       ; $4fe5: $ee $6b
    sub l                                         ; $4fe7: $95
    ld sp, hl                                     ; $4fe8: $f9
    push bc                                       ; $4fe9: $c5
    sub $32                                       ; $4fea: $d6 $32

jr_031_4fec:
    ld [hl], b                                    ; $4fec: $70
    add a                                         ; $4fed: $87
    xor a                                         ; $4fee: $af
    and l                                         ; $4fef: $a5
    rra                                           ; $4ff0: $1f
    ld b, [hl]                                    ; $4ff1: $46
    sbc $02                                       ; $4ff2: $de $02
    daa                                           ; $4ff4: $27
    jr z, jr_031_506d                             ; $4ff5: $28 $76

    sbc c                                         ; $4ff7: $99
    sub e                                         ; $4ff8: $93
    ld h, d                                       ; $4ff9: $62
    and h                                         ; $4ffa: $a4
    pop af                                        ; $4ffb: $f1
    rst $30                                       ; $4ffc: $f7
    cp a                                          ; $4ffd: $bf
    ld a, $0d                                     ; $4ffe: $3e $0d
    cp [hl]                                       ; $5000: $be
    ld h, [hl]                                    ; $5001: $66
    ret nz                                        ; $5002: $c0

    xor d                                         ; $5003: $aa
    db $f4                                        ; $5004: $f4
    ret                                           ; $5005: $c9


    ld [$5fdf], sp                                ; $5006: $08 $df $5f
    inc hl                                        ; $5009: $23
    xor a                                         ; $500a: $af
    db $ec                                        ; $500b: $ec
    db $eb                                        ; $500c: $eb
    sub e                                         ; $500d: $93
    add $b5                                       ; $500e: $c6 $b5
    adc [hl]                                      ; $5010: $8e
    dec e                                         ; $5011: $1d
    ld l, d                                       ; $5012: $6a
    inc de                                        ; $5013: $13
    sub a                                         ; $5014: $97
    and l                                         ; $5015: $a5
    dec bc                                        ; $5016: $0b
    rst $30                                       ; $5017: $f7
    or l                                          ; $5018: $b5
    jp z, Jump_031_62fc                           ; $5019: $ca $fc $62

    ld l, e                                       ; $501c: $6b
    add hl, de                                    ; $501d: $19
    cp b                                          ; $501e: $b8
    jp $d2d7                                      ; $501f: $c3 $d7 $d2


    rrca                                          ; $5022: $0f
    inc hl                                        ; $5023: $23
    ld l, a                                       ; $5024: $6f
    ld bc, $1e9d                                  ; $5025: $01 $9d $1e
    call nz, $b148                                ; $5028: $c4 $48 $b1
    adc [hl]                                      ; $502b: $8e
    dec e                                         ; $502c: $1d
    ld d, $ef                                     ; $502d: $16 $ef
    db $d3                                        ; $502f: $d3
    ld a, [de]                                    ; $5030: $1a
    ld [hl], e                                    ; $5031: $73
    jp nz, Jump_031_4da8                          ; $5032: $c2 $a8 $4d

    call c, $a0c9                                 ; $5035: $dc $c9 $a0
    ld d, d                                       ; $5038: $52
    inc [hl]                                      ; $5039: $34
    or $73                                        ; $503a: $f6 $73
    rla                                           ; $503c: $17
    ld a, b                                       ; $503d: $78
    ld l, l                                       ; $503e: $6d
    ld [c], a                                     ; $503f: $e2
    ld c, [hl]                                    ; $5040: $4e
    ld b, $95                                     ; $5041: $06 $95
    and d                                         ; $5043: $a2
    or c                                          ; $5044: $b1

jr_031_5045:
    sbc a                                         ; $5045: $9f
    cp e                                          ; $5046: $bb
    ret nz                                        ; $5047: $c0

    ld l, e                                       ; $5048: $6b
    inc de                                        ; $5049: $13
    ld e, e                                       ; $504a: $5b
    sbc l                                         ; $504b: $9d
    ld h, b                                       ; $504c: $60
    and c                                         ; $504d: $a1
    rra                                           ; $504e: $1f
    inc sp                                        ; $504f: $33
    ld b, [hl]                                    ; $5050: $46
    rst $10                                       ; $5051: $d7
    ld [c], a                                     ; $5052: $e2
    ld b, c                                       ; $5053: $41
    ld sp, $2a96                                  ; $5054: $31 $96 $2a
    ld a, l                                       ; $5057: $7d
    ld e, d                                       ; $5058: $5a
    ld b, $34                                     ; $5059: $06 $34
    ld d, d                                       ; $505b: $52
    xor h                                         ; $505c: $ac
    db $e3                                        ; $505d: $e3
    add hl, hl                                    ; $505e: $29
    inc de                                        ; $505f: $13
    adc l                                         ; $5060: $8d
    inc d                                         ; $5061: $14
    db $eb                                        ; $5062: $eb
    ret c                                         ; $5063: $d8

    ld h, c                                       ; $5064: $61
    ld l, $06                                     ; $5065: $2e $06
    push af                                       ; $5067: $f5
    cp a                                          ; $5068: $bf
    ld a, $cd                                     ; $5069: $3e $cd
    ld h, b                                       ; $506b: $60
    sub l                                         ; $506c: $95

jr_031_506d:
    ld [hl], l                                    ; $506d: $75
    add $0a                                       ; $506e: $c6 $0a
    xor d                                         ; $5070: $aa
    jp c, $16c4                                   ; $5071: $da $c4 $16

    sbc l                                         ; $5074: $9d
    ld h, b                                       ; $5075: $60
    ld d, $2b                                     ; $5076: $16 $2b
    ld [hl], a                                    ; $5078: $77
    xor h                                         ; $5079: $ac
    ld a, [de]                                    ; $507a: $1a
    ld d, a                                       ; $507b: $57
    inc b                                         ; $507c: $04
    cp [hl]                                       ; $507d: $be
    ccf                                           ; $507e: $3f
    ld a, [hl]                                    ; $507f: $7e
    rst $28                                       ; $5080: $ef
    sbc d                                         ; $5081: $9a
    ld e, h                                       ; $5082: $5c
    xor e                                         ; $5083: $ab
    ld e, [hl]                                    ; $5084: $5e
    and l                                         ; $5085: $a5
    ld c, a                                       ; $5086: $4f
    or $6f                                        ; $5087: $f6 $6f
    sub l                                         ; $5089: $95
    ld a, $0d                                     ; $508a: $3e $0d
    xor e                                         ; $508c: $ab
    ld a, [bc]                                    ; $508d: $0a
    ld a, $c6                                     ; $508e: $3e $c6
    ld l, l                                       ; $5090: $6d
    rst $10                                       ; $5091: $d7
    ei                                            ; $5092: $fb
    db $e4                                        ; $5093: $e4
    ld a, [de]                                    ; $5094: $1a
    dec a                                         ; $5095: $3d
    jr nz, jr_031_5045                            ; $5096: $20 $ad

    ld [hl-], a                                   ; $5098: $32
    ld d, $aa                                     ; $5099: $16 $aa
    ld [hl], $b1                                  ; $509b: $36 $b1
    dec b                                         ; $509d: $05
    ld e, c                                       ; $509e: $59
    ld [hl+], a                                   ; $509f: $22
    jp nc, Jump_031_57ae                          ; $50a0: $d2 $ae $57

    and l                                         ; $50a3: $a5
    ldh a, [rNR31]                                ; $50a4: $f0 $1b
    add $fb                                       ; $50a6: $c6 $fb
    db $e3                                        ; $50a8: $e3
    jp c, $4e65                                   ; $50a9: $da $65 $4e

    adc d                                         ; $50ac: $8a
    pop de                                        ; $50ad: $d1
    dec e                                         ; $50ae: $1d
    xor e                                         ; $50af: $ab
    ld a, [bc]                                    ; $50b0: $0a
    ld a, $86                                     ; $50b1: $3e $86
    halt                                          ; $50b3: $76
    cp l                                          ; $50b4: $bd
    ld c, a                                       ; $50b5: $4f
    xor [hl]                                      ; $50b6: $ae
    pop de                                        ; $50b7: $d1
    inc bc                                        ; $50b8: $03
    ld d, d                                       ; $50b9: $52
    xor h                                         ; $50ba: $ac
    jr z, jr_031_5123                             ; $50bb: $28 $66

    ld b, h                                       ; $50bd: $44
    sub [hl]                                      ; $50be: $96
    ld bc, $fec5                                  ; $50bf: $01 $c5 $fe
    ei                                            ; $50c2: $fb
    push af                                       ; $50c3: $f5
    ld a, [hl+]                                   ; $50c4: $2a
    ld h, e                                       ; $50c5: $63
    ld h, c                                       ; $50c6: $61
    ld b, $14                                     ; $50c7: $06 $14
    dec hl                                        ; $50c9: $2b
    rst $08                                       ; $50ca: $cf
    ld h, e                                       ; $50cb: $63
    db $fc                                        ; $50cc: $fc
    ld c, $5f                                     ; $50cd: $0e $5f
    ld [hl], e                                    ; $50cf: $73
    db $fd                                        ; $50d0: $fd
    db $eb                                        ; $50d1: $eb
    ld a, l                                       ; $50d2: $7d
    ld [hl], d                                    ; $50d3: $72
    push hl                                       ; $50d4: $e5
    dec l                                         ; $50d5: $2d
    add a                                         ; $50d6: $87
    scf                                           ; $50d7: $37
    ld e, [hl]                                    ; $50d8: $5e
    scf                                           ; $50d9: $37
    ld h, [hl]                                    ; $50da: $66
    call z, $df43                                 ; $50db: $cc $43 $df
    push af                                       ; $50de: $f5
    xor d                                         ; $50df: $aa
    inc d                                         ; $50e0: $14
    cp $db                                        ; $50e1: $fe $db
    ld l, $c5                                     ; $50e3: $2e $c5
    ld l, $73                                     ; $50e5: $2e $73
    ld d, d                                       ; $50e7: $52
    inc h                                         ; $50e8: $24
    ld b, a                                       ; $50e9: $47
    adc d                                         ; $50ea: $8a
    add hl, de                                    ; $50eb: $19
    ld h, a                                       ; $50ec: $67
    db $e4                                        ; $50ed: $e4
    ld h, c                                       ; $50ee: $61
    add sp, -$76                                  ; $50ef: $e8 $8a
    cp l                                          ; $50f1: $bd
    ld c, a                                       ; $50f2: $4f
    dec hl                                        ; $50f3: $2b
    ld [hl], a                                    ; $50f4: $77
    ld b, e                                       ; $50f5: $43
    rra                                           ; $50f6: $1f
    ld a, c                                       ; $50f7: $79
    db $dd                                        ; $50f8: $dd
    ld c, b                                       ; $50f9: $48
    adc [hl]                                      ; $50fa: $8e
    cp h                                          ; $50fb: $bc
    ld l, [hl]                                    ; $50fc: $6e
    inc l                                         ; $50fd: $2c
    ld l, l                                       ; $50fe: $6d
    sbc b                                         ; $50ff: $98
    ld a, [hl+]                                   ; $5100: $2a
    jp z, $bcf3                                   ; $5101: $ca $f3 $bc

    dec b                                         ; $5104: $05
    add a                                         ; $5105: $87
    scf                                           ; $5106: $37
    ld e, [hl]                                    ; $5107: $5e
    scf                                           ; $5108: $37
    ld h, [hl]                                    ; $5109: $66
    call z, $df43                                 ; $510a: $cc $43 $df
    push af                                       ; $510d: $f5
    xor d                                         ; $510e: $aa
    inc d                                         ; $510f: $14
    cp $db                                        ; $5110: $fe $db
    ld l, $c5                                     ; $5112: $2e $c5
    ld l, $73                                     ; $5114: $2e $73
    ld d, d                                       ; $5116: $52
    inc h                                         ; $5117: $24
    ld b, a                                       ; $5118: $47
    or b                                          ; $5119: $b0
    ret nc                                        ; $511a: $d0

    adc a                                         ; $511b: $8f
    ld h, l                                       ; $511c: $65
    ld b, b                                       ; $511d: $40
    dec hl                                        ; $511e: $2b
    adc d                                         ; $511f: $8a
    push bc                                       ; $5120: $c5
    ld [hl], e                                    ; $5121: $73
    adc d                                         ; $5122: $8a

jr_031_5123:
    ld h, l                                       ; $5123: $65
    ld b, b                                       ; $5124: $40
    inc hl                                        ; $5125: $23
    ld e, b                                       ; $5126: $58
    or [hl]                                       ; $5127: $b6
    adc b                                         ; $5128: $88
    inc d                                         ; $5129: $14
    dec bc                                        ; $512a: $0b
    ld sp, hl                                     ; $512b: $f9
    ei                                            ; $512c: $fb
    or h                                          ; $512d: $b4
    inc d                                         ; $512e: $14
    ld [$29af], a                                 ; $512f: $ea $af $29
    db $10                                        ; $5132: $10
    ld l, e                                       ; $5133: $6b
    nop                                           ; $5134: $00
    inc hl                                        ; $5135: $23
    db $ec                                        ; $5136: $ec
    ld d, e                                       ; $5137: $53
    call nc, $b626                                ; $5138: $d4 $26 $b6
    daa                                           ; $513b: $27
    jr z, jr_031_51b4                             ; $513c: $28 $76

    sbc c                                         ; $513e: $99
    sub e                                         ; $513f: $93
    ld h, d                                       ; $5140: $62
    ld b, $ac                                     ; $5141: $06 $ac
    ld c, d                                       ; $5143: $4a
    sbc a                                         ; $5144: $9f
    db $f4                                        ; $5145: $f4
    ld l, c                                       ; $5146: $69
    ld b, l                                       ; $5147: $45
    ld sp, $637e                                  ; $5148: $31 $7e $63
    ld [hl], l                                    ; $514b: $75
    ld c, c                                       ; $514c: $49
    or c                                          ; $514d: $b1
    inc c                                         ; $514e: $0c
    ld l, b                                       ; $514f: $68
    inc b                                         ; $5150: $04
    cp e                                          ; $5151: $bb
    inc c                                         ; $5152: $0c
    ld b, d                                       ; $5153: $42
    or c                                          ; $5154: $b1
    ld a, [c]                                     ; $5155: $f2
    inc a                                         ; $5156: $3c
    add $ef                                       ; $5157: $c6 $ef
    ldh a, [$35]                                  ; $5159: $f0 $35
    rst $10                                       ; $515b: $d7
    cp a                                          ; $515c: $bf
    sbc $27                                       ; $515d: $de $27
    ld d, a                                       ; $515f: $57
    ld l, l                                       ; $5160: $6d
    ld h, d                                       ; $5161: $62
    dec bc                                        ; $5162: $0b
    daa                                           ; $5163: $27
    ret c                                         ; $5164: $d8

    ld a, [de]                                    ; $5165: $1a
    ret nz                                        ; $5166: $c0

    ld [$97fb], sp                                ; $5167: $08 $fb $97
    ld d, [hl]                                    ; $516a: $56
    add hl, de                                    ; $516b: $19
    dec bc                                        ; $516c: $0b
    inc sp                                        ; $516d: $33
    and b                                         ; $516e: $a0
    ld [hl], c                                    ; $516f: $71
    xor l                                         ; $5170: $ad
    ret c                                         ; $5171: $d8

    or d                                          ; $5172: $b2
    call z, $e349                                 ; $5173: $cc $49 $e3
    jp c, $e6b1                                   ; $5176: $da $b1 $e6

    ld e, [hl]                                    ; $5179: $5e
    or e                                          ; $517a: $b3
    adc [hl]                                      ; $517b: $8e
    adc a                                         ; $517c: $8f
    ld c, b                                       ; $517d: $48
    ld a, $d2                                     ; $517e: $3e $d2
    jp nc, $b486                                  ; $5180: $d2 $86 $b4

    call nc, $dfed                                ; $5183: $d4 $ed $df
    jp nc, $a178                                  ; $5186: $d2 $78 $a1

    ld a, h                                       ; $5189: $7c
    ld e, h                                       ; $518a: $5c
    and e                                         ; $518b: $a3
    rlca                                          ; $518c: $07
    or c                                          ; $518d: $b1
    and d                                         ; $518e: $a2
    ld e, b                                       ; $518f: $58
    inc a                                         ; $5190: $3c
    and a                                         ; $5191: $a7
    sbc b                                         ; $5192: $98
    pop bc                                        ; $5193: $c1
    ld a, $32                                     ; $5194: $3e $32
    ld [hl-], a                                   ; $5196: $32
    ld e, b                                       ; $5197: $58
    ld h, l                                       ; $5198: $65
    sbc l                                         ; $5199: $9d
    or c                                          ; $519a: $b1
    or d                                          ; $519b: $b2
    ld [hl-], a                                   ; $519c: $32
    pop de                                        ; $519d: $d1
    xor [hl]                                      ; $519e: $ae
    ld h, d                                       ; $519f: $62
    ld de, $515a                                  ; $51a0: $11 $5a $51
    inc l                                         ; $51a3: $2c
    res 3, h                                      ; $51a4: $cb $9c
    inc d                                         ; $51a6: $14
    db $e3                                        ; $51a7: $e3
    ld a, [de]                                    ; $51a8: $1a
    cp l                                          ; $51a9: $bd
    cp a                                          ; $51aa: $bf
    and e                                         ; $51ab: $a3
    ld e, a                                       ; $51ac: $5f
    pop bc                                        ; $51ad: $c1
    or a                                          ; $51ae: $b7
    ld c, $c6                                     ; $51af: $0e $c6
    jp nz, $e635                                  ; $51b1: $c2 $35 $e6

jr_031_51b4:
    cp e                                          ; $51b4: $bb
    ld e, $14                                     ; $51b5: $1e $14
    add c                                         ; $51b7: $81
    daa                                           ; $51b8: $27
    rla                                           ; $51b9: $17
    ld a, [hl+]                                   ; $51ba: $2a
    rst $28                                       ; $51bb: $ef
    xor a                                         ; $51bc: $af
    ld [$717c], sp                                ; $51bd: $08 $7c $71
    ld [hl], e                                    ; $51c0: $73
    ld d, h                                       ; $51c1: $54
    ld l, l                                       ; $51c2: $6d
    ld h, d                                       ; $51c3: $62
    dec bc                                        ; $51c4: $0b
    sbc l                                         ; $51c5: $9d
    ld h, b                                       ; $51c6: $60
    inc c                                         ; $51c7: $0c
    ld [$b8c7], a                                 ; $51c8: $ea $c7 $b8
    ld b, [hl]                                    ; $51cb: $46
    cp $80                                        ; $51cc: $fe $80
    sub c                                         ; $51ce: $91
    rrca                                          ; $51cf: $0f
    cp $5e                                        ; $51d0: $fe $5e
    ld a, [hl+]                                   ; $51d2: $2a
    ld e, e                                       ; $51d3: $5b
    inc [hl]                                      ; $51d4: $34
    ld h, e                                       ; $51d5: $63
    ld [hl], h                                    ; $51d6: $74
    xor l                                         ; $51d7: $ad
    jr z, jr_031_51dd                             ; $51d8: $28 $03

    ld a, [hl+]                                   ; $51da: $2a
    inc hl                                        ; $51db: $23
    ld e, b                                       ; $51dc: $58

jr_031_51dd:
    inc hl                                        ; $51dd: $23
    add sp, $3c                                   ; $51de: $e8 $3c
    cp d                                          ; $51e0: $ba
    rst $18                                       ; $51e1: $df
    ld [hl-], a                                   ; $51e2: $32
    add b                                         ; $51e3: $80
    adc l                                         ; $51e4: $8d
    inc a                                         ; $51e5: $3c
    ld e, a                                       ; $51e6: $5f
    rst $00                                       ; $51e7: $c7
    rlca                                          ; $51e8: $07
    cp [hl]                                       ; $51e9: $be

Call_031_51ea:
    ld c, e                                       ; $51ea: $4b
    push bc                                       ; $51eb: $c5
    sub d                                         ; $51ec: $92
    or e                                          ; $51ed: $b3
    ld [hl], h                                    ; $51ee: $74
    ld a, [de]                                    ; $51ef: $1a
    cpl                                           ; $51f0: $2f
    or [hl]                                       ; $51f1: $b6
    ld d, [hl]                                    ; $51f2: $56
    or h                                          ; $51f3: $b4
    ld c, d                                       ; $51f4: $4a
    rra                                           ; $51f5: $1f
    sub $38                                       ; $51f6: $d6 $38
    cp $0b                                        ; $51f8: $fe $0b
    dec de                                        ; $51fa: $1b
    dec hl                                        ; $51fb: $2b
    db $d3                                        ; $51fc: $d3
    sbc a                                         ; $51fd: $9f
    dec [hl]                                      ; $51fe: $35
    dec c                                         ; $51ff: $0d
    call nc, $a7d8                                ; $5200: $d4 $d8 $a7
    dec b                                         ; $5203: $05
    ld hl, sp+$4e                                 ; $5204: $f8 $4e
    dec h                                         ; $5206: $25
    ld [hl], e                                    ; $5207: $73
    sbc d                                         ; $5208: $9a
    ld l, b                                       ; $5209: $68
    ld [hl], c                                    ; $520a: $71
    dec hl                                        ; $520b: $2b
    cp d                                          ; $520c: $ba
    ld [$ffdf], sp                                ; $520d: $08 $df $ff
    jp c, Jump_031_64a9                           ; $5210: $da $a9 $64

    inc b                                         ; $5213: $04
    or h                                          ; $5214: $b4
    ld a, $76                                     ; $5215: $3e $76
    ld d, h                                       ; $5217: $54
    ld b, $b0                                     ; $5218: $06 $b0
    ld d, c                                       ; $521a: $51
    and l                                         ; $521b: $a5
    ld c, a                                       ; $521c: $4f
    ld sp, hl                                     ; $521d: $f9
    ld a, [hl-]                                   ; $521e: $3a
    ld a, $f0                                     ; $521f: $3e $f0
    pop de                                        ; $5221: $d1
    db $fd                                        ; $5222: $fd
    sub [hl]                                      ; $5223: $96
    ld bc, $e46c                                  ; $5224: $01 $6c $e4
    inc sp                                        ; $5227: $33
    ld b, [hl]                                    ; $5228: $46
    rst $10                                       ; $5229: $d7
    ldh [$ef], a                                  ; $522a: $e0 $ef
    and l                                         ; $522c: $a5
    or d                                          ; $522d: $b2
    ld b, l                                       ; $522e: $45
    ret                                           ; $522f: $c9


    ld e, l                                       ; $5230: $5d
    db $ec                                        ; $5231: $ec
    add a                                         ; $5232: $87
    add c                                         ; $5233: $81
    sub c                                         ; $5234: $91
    ld e, h                                       ; $5235: $5c
    add b                                         ; $5236: $80
    xor a                                         ; $5237: $af
    ret c                                         ; $5238: $d8

    ld a, [de]                                    ; $5239: $1a
    or $a3                                        ; $523a: $f6 $a3
    scf                                           ; $523c: $37
    xor [hl]                                      ; $523d: $ae
    dec e                                         ; $523e: $1d
    ld l, e                                       ; $523f: $6b
    xor $35                                       ; $5240: $ee $35
    ret                                           ; $5242: $c9


    sub l                                         ; $5243: $95
    cp e                                          ; $5244: $bb
    ld a, $f7                                     ; $5245: $3e $f7
    add a                                         ; $5247: $87
    or h                                          ; $5248: $b4
    rst $10                                       ; $5249: $d7
    db $fd                                        ; $524a: $fd
    ld [$0f16], sp                                ; $524b: $08 $16 $0f
    ret c                                         ; $524e: $d8

    add [hl]                                      ; $524f: $86
    and h                                         ; $5250: $a4
    ld e, b                                       ; $5251: $58
    ld d, e                                       ; $5252: $53
    db $ec                                        ; $5253: $ec
    sub d                                         ; $5254: $92
    rst $28                                       ; $5255: $ef
    ld [de], a                                    ; $5256: $12
    db $ed                                        ; $5257: $ed
    and l                                         ; $5258: $a5
    or d                                          ; $5259: $b2
    ld b, l                                       ; $525a: $45
    inc de                                        ; $525b: $13
    call $069a                                    ; $525c: $cd $9a $06
    ld d, b                                       ; $525f: $50
    dec bc                                        ; $5260: $0b
    ldh a, [$a5]                                  ; $5261: $f0 $a5
    ld e, $d0                                     ; $5263: $1e $d0
    ei                                            ; $5265: $fb
    dec sp                                        ; $5266: $3b
    inc a                                         ; $5267: $3c
    ld e, a                                       ; $5268: $5f
    sub [hl]                                      ; $5269: $96
    ld l, b                                       ; $526a: $68
    or a                                          ; $526b: $b7
    set 5, l                                      ; $526c: $cb $ed
    adc a                                         ; $526e: $8f
    rst $18                                       ; $526f: $df
    ret z                                         ; $5270: $c8

    or b                                          ; $5271: $b0
    inc d                                         ; $5272: $14
    db $ed                                        ; $5273: $ed
    add $b2                                       ; $5274: $c6 $b2
    and d                                         ; $5276: $a2
    ld c, d                                       ; $5277: $4a
    sbc a                                         ; $5278: $9f
    ld b, [hl]                                    ; $5279: $46
    adc d                                         ; $527a: $8a
    dec b                                         ; $527b: $05
    add hl, de                                    ; $527c: $19
    ld h, c                                       ; $527d: $61
    db $10                                        ; $527e: $10
    ld h, [hl]                                    ; $527f: $66
    ld b, b                                       ; $5280: $40
    sub c                                         ; $5281: $91
    inc e                                         ; $5282: $1c
    cp l                                          ; $5283: $bd
    cp a                                          ; $5284: $bf
    adc a                                         ; $5285: $8f
    adc h                                         ; $5286: $8c
    inc c                                         ; $5287: $0c
    sub d                                         ; $5288: $92
    inc hl                                        ; $5289: $23
    push bc                                       ; $528a: $c5
    sbc d                                         ; $528b: $9a
    add a                                         ; $528c: $87
    sbc a                                         ; $528d: $9f
    ld h, d                                       ; $528e: $62
    db $fc                                        ; $528f: $fc
    xor [hl]                                      ; $5290: $ae
    adc $cd                                       ; $5291: $ce $cd
    call $ff51                                    ; $5293: $cd $51 $ff
    jp nc, $2344                                  ; $5296: $d2 $44 $23

    ld e, e                                       ; $5299: $5b
    ld a, [$c139]                                 ; $529a: $fa $39 $c1
    rst $10                                       ; $529d: $d7
    db $f4                                        ; $529e: $f4
    rst $10                                       ; $529f: $d7
    pop hl                                        ; $52a0: $e1
    ld sp, hl                                     ; $52a1: $f9
    rst $00                                       ; $52a2: $c7
    ld d, d                                       ; $52a3: $52
    inc d                                         ; $52a4: $14
    ld a, c                                       ; $52a5: $79
    dec bc                                        ; $52a6: $0b
    dec e                                         ; $52a7: $1d
    rra                                           ; $52a8: $1f
    ld hl, sp-$80                                 ; $52a9: $f8 $80
    or b                                          ; $52ab: $b0
    ld h, b                                       ; $52ac: $60
    ret z                                         ; $52ad: $c8

    rlca                                          ; $52ae: $07
    ld a, a                                       ; $52af: $7f
    cpl                                           ; $52b0: $2f
    sub l                                         ; $52b1: $95
    dec l                                         ; $52b2: $2d
    ld c, d                                       ; $52b3: $4a
    adc $d2                                       ; $52b4: $ce $d2
    ld l, c                                       ; $52b6: $69
    cp h                                          ; $52b7: $bc
    ret c                                         ; $52b8: $d8

    ld e, d                                       ; $52b9: $5a
    pop de                                        ; $52ba: $d1
    ld a, [hl+]                                   ; $52bb: $2a
    ld a, l                                       ; $52bc: $7d
    ld e, b                                       ; $52bd: $58
    db $e3                                        ; $52be: $e3
    ld hl, sp+$2f                                 ; $52bf: $f8 $2f
    ld l, h                                       ; $52c1: $6c
    xor h                                         ; $52c2: $ac

Call_031_52c3:
    ld c, h                                       ; $52c3: $4c
    ld a, a                                       ; $52c4: $7f
    sub $34                                       ; $52c5: $d6 $34
    ld d, b                                       ; $52c7: $50
    ld h, e                                       ; $52c8: $63
    sbc a                                         ; $52c9: $9f
    ld d, $e0                                     ; $52ca: $16 $e0
    dec sp                                        ; $52cc: $3b
    sub l                                         ; $52cd: $95
    call z, $b929                                 ; $52ce: $cc $29 $b9
    ld b, $30                                     ; $52d1: $06 $30
    ld d, $b7                                     ; $52d3: $16 $b7
    and d                                         ; $52d5: $a2
    adc e                                         ; $52d6: $8b
    ldh a, [$fd]                                  ; $52d7: $f0 $fd
    xor a                                         ; $52d9: $af
    sbc l                                         ; $52da: $9d
    sub h                                         ; $52db: $94
    jp z, $ad16                                   ; $52dc: $ca $16 $ad

    ld a, c                                       ; $52df: $79
    ldh [$bb], a                                  ; $52e0: $e0 $bb
    sbc $0f                                       ; $52e2: $de $0f
    jr z, jr_031_530a                             ; $52e4: $28 $24

    ld e, a                                       ; $52e6: $5f
    or c                                          ; $52e7: $b1
    dec d                                         ; $52e8: $15
    inc c                                         ; $52e9: $0c
    jp nc, Jump_031_62b8                          ; $52ea: $d2 $b8 $62

    cpl                                           ; $52ed: $2f
    sub l                                         ; $52ee: $95
    dec l                                         ; $52ef: $2d
    adc d                                         ; $52f0: $8a
    ld h, l                                       ; $52f1: $65
    ld b, b                                       ; $52f2: $40

jr_031_52f3:
    inc hl                                        ; $52f3: $23
    ld e, b                                       ; $52f4: $58
    di                                            ; $52f5: $f3
    ld [hl+], a                                   ; $52f6: $22
    ld [$4572], a                                 ; $52f7: $ea $72 $45
    cp [hl]                                       ; $52fa: $be
    ld d, e                                       ; $52fb: $53
    ld l, a                                       ; $52fc: $6f
    ld b, l                                       ; $52fd: $45
    rla                                           ; $52fe: $17
    pop hl                                        ; $52ff: $e1
    ei                                            ; $5300: $fb
    ld e, a                                       ; $5301: $5f
    db $d3                                        ; $5302: $d3
    rrca                                          ; $5303: $0f
    ld b, b                                       ; $5304: $40
    jp nc, $fdca                                  ; $5305: $d2 $ca $fd

    and l                                         ; $5308: $a5
    or d                                          ; $5309: $b2

jr_031_530a:
    ld b, l                                       ; $530a: $45
    res 0, b                                      ; $530b: $cb $80
    ld b, [hl]                                    ; $530d: $46
    or b                                          ; $530e: $b0
    ld a, b                                       ; $530f: $78
    ret nz                                        ; $5310: $c0

    ld [hl], $24                                  ; $5311: $36 $24
    push bc                                       ; $5313: $c5
    add b                                         ; $5314: $80
    or b                                          ; $5315: $b0
    ld h, b                                       ; $5316: $60
    ret z                                         ; $5317: $c8

    daa                                           ; $5318: $27
    sbc d                                         ; $5319: $9a
    dec [hl]                                      ; $531a: $35
    dec c                                         ; $531b: $0d
    and b                                         ; $531c: $a0
    ld d, $e0                                     ; $531d: $16 $e0
    ld c, e                                       ; $531f: $4b
    dec a                                         ; $5320: $3d
    and b                                         ; $5321: $a0
    rst $30                                       ; $5322: $f7
    ld [hl], a                                    ; $5323: $77
    ld a, b                                       ; $5324: $78
    sbc $02                                       ; $5325: $de $02
    sbc l                                         ; $5327: $9d
    ld e, $90                                     ; $5328: $1e $90
    ld h, d                                       ; $532a: $62
    ld b, l                                       ; $532b: $45
    or c                                          ; $532c: $b1
    and $11                                       ; $532d: $e6 $11
    cp [hl]                                       ; $532f: $be
    rra                                           ; $5330: $1f
    adc e                                         ; $5331: $8b
    rst $30                                       ; $5332: $f7
    ld l, c                                       ; $5333: $69
    ld l, c                                       ; $5334: $69
    ld c, e                                       ; $5335: $4b
    add hl, sp                                    ; $5336: $39
    ld h, [hl]                                    ; $5337: $66
    ldh [$a6], a                                  ; $5338: $e0 $a6
    jr jr_031_52f3                                ; $533a: $18 $b7

    rra                                           ; $533c: $1f
    db $e3                                        ; $533d: $e3
    adc d                                         ; $533e: $8a
    ld e, l                                       ; $533f: $5d
    ld l, h                                       ; $5340: $6c
    inc bc                                        ; $5341: $03
    xor $ef                                       ; $5342: $ee $ef
    ld b, a                                       ; $5344: $47
    cp [hl]                                       ; $5345: $be
    ld d, e                                       ; $5346: $53
    ld [hl], c                                    ; $5347: $71
    inc b                                         ; $5348: $04
    adc e                                         ; $5349: $8b
    ld e, e                                       ; $534a: $5b
    pop de                                        ; $534b: $d1
    ld b, l                                       ; $534c: $45
    ld hl, sp-$02                                 ; $534d: $f8 $fe
    ld d, a                                       ; $534f: $57
    inc c                                         ; $5350: $0c
    cp $2e                                        ; $5351: $fe $2e
    or [hl]                                       ; $5353: $b6
    ld bc, $f7f7                                  ; $5354: $01 $f7 $f7
    daa                                           ; $5357: $27
    ld e, d                                       ; $5358: $5a
    ld b, $34                                     ; $5359: $06 $34
    add d                                         ; $535b: $82
    sub l                                         ; $535c: $95
    dec sp                                        ; $535d: $3b
    db $10                                        ; $535e: $10
    ld d, $0c                                     ; $535f: $16 $0c
    ld b, l                                       ; $5361: $45
    ld [hl], d                                    ; $5362: $72
    ldh a, [rPCM34]                               ; $5363: $f0 $77
    cp e                                          ; $5365: $bb
    call c, Call_031_48fe                         ; $5366: $dc $fe $48
    xor e                                         ; $5369: $ab
    sbc $27                                       ; $536a: $de $27
    sub a                                         ; $536c: $97
    db $db                                        ; $536d: $db
    adc d                                         ; $536e: $8a
    ld h, d                                       ; $536f: $62
    ld hl, sp+$59                                 ; $5370: $f8 $59
    ld a, [hl]                                    ; $5372: $7e
    db $e3                                        ; $5373: $e3
    xor b                                         ; $5374: $a8
    ld c, a                                       ; $5375: $4f
    or c                                          ; $5376: $b1
    inc c                                         ; $5377: $0c
    ld l, b                                       ; $5378: $68
    inc b                                         ; $5379: $04
    or e                                          ; $537a: $b3
    ret z                                         ; $537b: $c8

    ld [hl], a                                    ; $537c: $77
    ld [$e8ad], a                                 ; $537d: $ea $ad $e8
    ld [hl+], a                                   ; $5380: $22
    ld a, h                                       ; $5381: $7c
    rst $38                                       ; $5382: $ff
    ld l, e                                       ; $5383: $6b
    sub a                                         ; $5384: $97
    and b                                         ; $5385: $a0
    di                                            ; $5386: $f3
    ld [hl-], a                                   ; $5387: $32
    and b                                         ; $5388: $a0
    ld de, $118c                                  ; $5389: $11 $8c $11
    ld [hl], h                                    ; $538c: $74
    sbc [hl]                                      ; $538d: $9e
    ld l, b                                       ; $538e: $68
    sub $34                                       ; $538f: $d6 $34
    add b                                         ; $5391: $80
    ld e, d                                       ; $5392: $5a
    add b                                         ; $5393: $80
    rst $28                                       ; $5394: $ef
    ld d, h                                       ; $5395: $54
    ld [hl-], a                                   ; $5396: $32
    and a                                         ; $5397: $a7
    dec [hl]                                      ; $5398: $35
    rrca                                          ; $5399: $0f
    ld a, h                                       ; $539a: $7c
    ld b, l                                       ; $539b: $45
    or c                                          ; $539c: $b1
    ld [$ec56], a                                 ; $539d: $ea $56 $ec
    or e                                          ; $53a0: $b3
    db $e4                                        ; $53a1: $e4
    ld a, c                                       ; $53a2: $79
    dec bc                                        ; $53a3: $0b
    sbc l                                         ; $53a4: $9d
    ld h, b                                       ; $53a5: $60
    ld d, $2b                                     ; $53a6: $16 $2b
    rst $30                                       ; $53a8: $f7
    and e                                         ; $53a9: $a3
    cp $55                                        ; $53aa: $fe $55
    ld [hl], e                                    ; $53ac: $73
    sub l                                         ; $53ad: $95
    rst $10                                       ; $53ae: $d7
    call c, Call_031_6a38                         ; $53af: $dc $38 $6a
    ld e, h                                       ; $53b2: $5c
    ld sp, $2cfc                                  ; $53b3: $31 $fc $2c
    cp a                                          ; $53b6: $bf

Call_031_53b7:
    ld [hl], c                                    ; $53b7: $71
    call nc, $c8a7                                ; $53b8: $d4 $a7 $c8
    rst $10                                       ; $53bb: $d7
    add hl, bc                                    ; $53bc: $09
    sub $08                                       ; $53bd: $d6 $08
    ld a, [hl-]                                   ; $53bf: $3a
    xor a                                         ; $53c0: $af
    ld [hl-], a                                   ; $53c1: $32
    db $fc                                        ; $53c2: $fc
    and h                                         ; $53c3: $a4
    ld l, a                                       ; $53c4: $6f
    sbc a                                         ; $53c5: $9f
    and $16                                       ; $53c6: $e6 $16
    and c                                         ; $53c8: $a1
    ld a, [hl+]                                   ; $53c9: $2a
    ld d, l                                       ; $53ca: $55
    db $e4                                        ; $53cb: $e4
    db $e3                                        ; $53cc: $e3
    adc d                                         ; $53cd: $8a
    pop hl                                        ; $53ce: $e1
    ld h, a                                       ; $53cf: $67
    ld sp, hl                                     ; $53d0: $f9
    adc l                                         ; $53d1: $8d
    and e                                         ; $53d2: $a3
    ld a, $c5                                     ; $53d3: $3e $c5
    ld b, h                                       ; $53d5: $44
    ld h, e                                       ; $53d6: $63
    sbc c                                         ; $53d7: $99
    ld [hl], e                                    ; $53d8: $73
    ld sp, hl                                     ; $53d9: $f9
    cp b                                          ; $53da: $b8
    ld h, d                                       ; $53db: $62
    xor [hl]                                      ; $53dc: $ae
    ld c, e                                       ; $53dd: $4b
    ld b, h                                       ; $53de: $44
    adc d                                         ; $53df: $8a
    ld [hl], c                                    ; $53e0: $71
    xor l                                         ; $53e1: $ad
    ld a, c                                       ; $53e2: $79
    add h                                         ; $53e3: $84
    rst $28                                       ; $53e4: $ef
    ld b, a                                       ; $53e5: $47

jr_031_53e6:
    cp [hl]                                       ; $53e6: $be
    jp Jump_000_069b                              ; $53e7: $c3 $9b $06


    ld d, b                                       ; $53ea: $50
    dec bc                                        ; $53eb: $0b
    ldh a, [$9d]                                  ; $53ec: $f0 $9d
    ld c, d                                       ; $53ee: $4a
    and $94                                       ; $53ef: $e6 $94
    ld e, h                                       ; $53f1: $5c
    call c, Call_000_2e8a                         ; $53f2: $dc $8a $2e
    jp nz, $bff7                                  ; $53f5: $c2 $f7 $bf

    ld d, [hl]                                    ; $53f8: $56
    xor $47                                       ; $53f9: $ee $47
    db $fd                                        ; $53fb: $fd
    xor e                                         ; $53fc: $ab
    and $2a                                       ; $53fd: $e6 $2a
    xor a                                         ; $53ff: $af
    cp c                                          ; $5400: $b9
    ld [hl], c                                    ; $5401: $71
    call nc, Call_031_62b8                        ; $5402: $d4 $b8 $62
    ld hl, sp+$59                                 ; $5405: $f8 $59
    ld a, [hl]                                    ; $5407: $7e
    db $e3                                        ; $5408: $e3
    xor b                                         ; $5409: $a8
    ld c, a                                       ; $540a: $4f
    ld sp, $3f6e                                  ; $540b: $31 $6e $3f
    ld d, [hl]                                    ; $540e: $56
    or h                                          ; $540f: $b4
    ld c, d                                       ; $5410: $4a
    rra                                           ; $5411: $1f
    sub $38                                       ; $5412: $d6 $38
    cp $0b                                        ; $5414: $fe $0b
    dec de                                        ; $5416: $1b
    dec hl                                        ; $5417: $2b
    ld l, e                                       ; $5418: $6b
    ld e, $f8                                     ; $5419: $1e $f8
    sbc b                                         ; $541b: $98
    add a                                         ; $541c: $87
    ld a, $52                                     ; $541d: $3e $52
    inc c                                         ; $541f: $0c
    ccf                                           ; $5420: $3f
    bit 5, a                                      ; $5421: $cb $6f
    inc e                                         ; $5423: $1c
    push af                                       ; $5424: $f5
    add hl, hl                                    ; $5425: $29
    ld h, $1a                                     ; $5426: $26 $1a
    cp l                                          ; $5428: $bd
    cp a                                          ; $5429: $bf
    add d                                         ; $542a: $82
    adc h                                         ; $542b: $8c
    ld l, e                                       ; $542c: $6b
    ld e, h                                       ; $542d: $5c
    ld [hl], e                                    ; $542e: $73
    ld e, l                                       ; $542f: $5d
    ld [hl+], a                                   ; $5430: $22
    ld d, d                                       ; $5431: $52
    db $e4                                        ; $5432: $e4
    dec l                                         ; $5433: $2d
    dec e                                         ; $5434: $1d
    rra                                           ; $5435: $1f
    ld hl, sp-$52                                 ; $5436: $f8 $ae
    rst $30                                       ; $5438: $f7
    inc bc                                        ; $5439: $03
    ld a, [bc]                                    ; $543a: $0a
    ret                                           ; $543b: $c9


    ld b, a                                       ; $543c: $47
    rst $28                                       ; $543d: $ef
    rst $28                                       ; $543e: $ef
    add sp, $57                                   ; $543f: $e8 $57
    ldh a, [$ad]                                  ; $5441: $f0 $ad
    add e                                         ; $5443: $83
    or c                                          ; $5444: $b1
    ld [hl], b                                    ; $5445: $70
    and d                                         ; $5446: $a2
    pop de                                        ; $5447: $d1
    ei                                            ; $5448: $fb
    dec sp                                        ; $5449: $3b
    ld a, [$7c15]                                 ; $544a: $fa $15 $7c
    db $eb                                        ; $544d: $eb
    db $e4                                        ; $544e: $e4
    ret c                                         ; $544f: $d8

    inc d                                         ; $5450: $14
    cp h                                          ; $5451: $bc
    jr nz, jr_031_53e6                            ; $5452: $20 $92

    or e                                          ; $5454: $b3
    ld [hl], h                                    ; $5455: $74
    ld a, [de]                                    ; $5456: $1a
    cpl                                           ; $5457: $2f
    or [hl]                                       ; $5458: $b6
    ld d, [hl]                                    ; $5459: $56
    or h                                          ; $545a: $b4
    ld c, d                                       ; $545b: $4a
    rra                                           ; $545c: $1f
    sub $38                                       ; $545d: $d6 $38
    cp $0b                                        ; $545f: $fe $0b
    dec de                                        ; $5461: $1b
    dec hl                                        ; $5462: $2b
    db $d3                                        ; $5463: $d3
    sbc a                                         ; $5464: $9f
    dec [hl]                                      ; $5465: $35
    dec c                                         ; $5466: $0d
    call nc, $a7d8                                ; $5467: $d4 $d8 $a7
    dec b                                         ; $546a: $05
    ld hl, sp+$4e                                 ; $546b: $f8 $4e
    dec h                                         ; $546d: $25
    ld [hl], e                                    ; $546e: $73
    ld c, d                                       ; $546f: $4a
    xor [hl]                                      ; $5470: $ae
    ld bc, $5d8c                                  ; $5471: $01 $8c $5d
    db $ec                                        ; $5474: $ec
    add a                                         ; $5475: $87
    add c                                         ; $5476: $81
    or c                                          ; $5477: $b1
    and e                                         ; $5478: $a3
    ld e, a                                       ; $5479: $5f
    pop bc                                        ; $547a: $c1
    or a                                          ; $547b: $b7
    ld c, $c6                                     ; $547c: $0e $c6
    jp nz, $d83d                                  ; $547e: $c2 $3d $d8

    pop de                                        ; $5481: $d1
    xor a                                         ; $5482: $af
    ldh [$5b], a                                  ; $5483: $e0 $5b
    daa                                           ; $5485: $27
    rst $00                                       ; $5486: $c7
    and [hl]                                      ; $5487: $a6
    ldh [rTIMA], a                                ; $5488: $e0 $05
    sub c                                         ; $548a: $91
    or a                                          ; $548b: $b7
    sbc l                                         ; $548c: $9d
    ld h, b                                       ; $548d: $60

Jump_031_548e:
    adc h                                         ; $548e: $8c
    push bc                                       ; $548f: $c5
    jr jr_031_54f6                                ; $5490: $18 $64

    ld e, h                                       ; $5492: $5c
    inc hl                                        ; $5493: $23
    ld e, e                                       ; $5494: $5b
    db $e3                                        ; $5495: $e3
    xor d                                         ; $5496: $aa
    or b                                          ; $5497: $b0
    xor [hl]                                      ; $5498: $ae
    ld l, e                                       ; $5499: $6b
    and a                                         ; $549a: $a7
    add sp, $5f                                   ; $549b: $e8 $5f
    rst $28                                       ; $549d: $ef
    sub e                                         ; $549e: $93
    ld l, e                                       ; $549f: $6b
    sub l                                         ; $54a0: $95
    or c                                          ; $54a1: $b1
    jr nc, jr_031_54a7                            ; $54a2: $30 $03

    jp c, Jump_000_2321                           ; $54a4: $da $21 $23

jr_031_54a7:
    sbc b                                         ; $54a7: $98
    add c                                         ; $54a8: $81
    ld e, e                                       ; $54a9: $5b
    xor h                                         ; $54aa: $ac
    ld l, b                                       ; $54ab: $68
    rla                                           ; $54ac: $17
    ei                                            ; $54ad: $fb
    ld h, c                                       ; $54ae: $61
    rst $20                                       ; $54af: $e7
    jp hl                                         ; $54b0: $e9


    sub e                                         ; $54b1: $93
    ld l, e                                       ; $54b2: $6b
    ld c, l                                       ; $54b3: $4d
    add c                                         ; $54b4: $81
    ld b, b                                       ; $54b5: $40
    add c                                         ; $54b6: $81
    rst $00                                       ; $54b7: $c7
    ld e, [hl]                                    ; $54b8: $5e
    ld b, e                                       ; $54b9: $43
    ld hl, sp+$7e                                 ; $54ba: $f8 $7e
    db $ec                                        ; $54bc: $ec
    ldh [rSB], a                                  ; $54bd: $e0 $01
    ld h, c                                       ; $54bf: $61
    pop bc                                        ; $54c0: $c1
    ret nc                                        ; $54c1: $d0

    ld c, [hl]                                    ; $54c2: $4e
    ld a, l                                       ; $54c3: $7d
    ld c, [hl]                                    ; $54c4: $4e
    ld l, e                                       ; $54c5: $6b
    ld e, $f8                                     ; $54c6: $1e $f8
    or d                                          ; $54c8: $b2
    ld b, l                                       ; $54c9: $45
    ld a, [c]                                     ; $54ca: $f2
    pop bc                                        ; $54cb: $c1
    ld e, a                                       ; $54cc: $5f
    inc a                                         ; $54cd: $3c
    and a                                         ; $54ce: $a7
    db $e4                                        ; $54cf: $e4
    ld c, [hl]                                    ; $54d0: $4e
    ld c, d                                       ; $54d1: $4a
    ld h, l                                       ; $54d2: $65
    adc e                                         ; $54d3: $8b
    sub $3c                                       ; $54d4: $d6 $3c
    ldh a, [rSB]                                  ; $54d6: $f0 $01
    ld h, c                                       ; $54d8: $61
    pop bc                                        ; $54d9: $c1
    sub b                                         ; $54da: $90
    rrca                                          ; $54db: $0f
    cp $5e                                        ; $54dc: $fe $5e
    ld a, [hl+]                                   ; $54de: $2a
    ld e, e                                       ; $54df: $5b
    sub h                                         ; $54e0: $94
    ld e, h                                       ; $54e1: $5c
    sub [hl]                                      ; $54e2: $96
    add hl, sp                                    ; $54e3: $39
    ld l, c                                       ; $54e4: $69
    call Call_031_5f03                            ; $54e5: $cd $03 $5f
    jp c, $35d0                                   ; $54e8: $da $d0 $35

    xor [hl]                                      ; $54eb: $ae
    dec d                                         ; $54ec: $15
    ld e, e                                       ; $54ed: $5b
    ld h, l                                       ; $54ee: $65
    inc l                                         ; $54ef: $2c
    call nc, $de58                                ; $54f0: $d4 $58 $de
    push hl                                       ; $54f3: $e5
    and l                                         ; $54f4: $a5
    add hl, de                                    ; $54f5: $19

jr_031_54f6:
    ld [hl], h                                    ; $54f6: $74
    ld e, [hl]                                    ; $54f7: $5e
    sub [hl]                                      ; $54f8: $96
    add hl, sp                                    ; $54f9: $39
    add hl, hl                                    ; $54fa: $29
    add $15                                       ; $54fb: $c6 $15
    adc e                                         ; $54fd: $8b
    rst $20                                       ; $54fe: $e7
    rla                                           ; $54ff: $17
    sub $75                                       ; $5500: $d6 $75
    push bc                                       ; $5502: $c5
    ld b, h                                       ; $5503: $44
    adc e                                         ; $5504: $8b
    rst $20                                       ; $5505: $e7
    rla                                           ; $5506: $17
    jp z, $d763                                   ; $5507: $ca $63 $d7

    xor l                                         ; $550a: $ad
    call nc, $b94d                                ; $550b: $d4 $4d $b9
    ld h, d                                       ; $550e: $62
    and d                                         ; $550f: $a2
    dec e                                         ; $5510: $1d
    dec c                                         ; $5511: $0d
    add sp, $6b                                   ; $5512: $e8 $6b
    ld e, $f8                                     ; $5514: $1e $f8
    inc d                                         ; $5516: $14
    ld h, c                                       ; $5517: $61
    dec [hl]                                      ; $5518: $35
    ld a, [c]                                     ; $5519: $f2
    pop af                                        ; $551a: $f1
    ei                                            ; $551b: $fb
    db $ed                                        ; $551c: $ed
    ld h, d                                       ; $551d: $62
    ld e, e                                       ; $551e: $5b
    db $d3                                        ; $551f: $d3
    ret z                                         ; $5520: $c8

    ld d, a                                       ; $5521: $57
    ld h, a                                       ; $5522: $67
    db $f4                                        ; $5523: $f4
    cp $8c                                        ; $5524: $fe $8c
    inc sp                                        ; $5526: $33
    ld a, [c]                                     ; $5527: $f2
    jr nc, jr_031_559e                            ; $5528: $30 $74

    push hl                                       ; $552a: $e5
    db $eb                                        ; $552b: $eb
    and h                                         ; $552c: $a4
    ld e, b                                       ; $552d: $58
    di                                            ; $552e: $f3
    ldh a, [rHDMA3]                               ; $552f: $f0 $53
    adc h                                         ; $5531: $8c
    ld l, e                                       ; $5532: $6b
    ld a, [hl]                                    ; $5533: $7e
    dec bc                                        ; $5534: $0b
    inc c                                         ; $5535: $0c
    or d                                          ; $5536: $b2
    ld a, a                                       ; $5537: $7f
    ld l, c                                       ; $5538: $69
    cp l                                          ; $5539: $bd
    ld [hl], h                                    ; $553a: $74
    inc a                                         ; $553b: $3c
    and l                                         ; $553c: $a5
    rst $10                                       ; $553d: $d7
    adc c                                         ; $553e: $89
    add $b5                                       ; $553f: $c6 $b5
    jp z, $a858                                   ; $5541: $ca $58 $a8

    push af                                       ; $5544: $f5
    jp nc, Jump_031_43b1                          ; $5545: $d2 $b1 $43

    xor a                                         ; $5548: $af
    adc e                                         ; $5549: $8b
    cp e                                          ; $554a: $bb
    and l                                         ; $554b: $a5
    db $d3                                        ; $554c: $d3
    ld a, b                                       ; $554d: $78
    or c                                          ; $554e: $b1
    push af                                       ; $554f: $f5
    ld l, c                                       ; $5550: $69
    ld bc, $62be                                  ; $5551: $01 $be $62
    ld l, e                                       ; $5554: $6b
    call z, Call_000_3509                         ; $5555: $cc $09 $35
    xor $0f                                       ; $5558: $ee $0f
    ld c, c                                       ; $555a: $49
    db $e3                                        ; $555b: $e3
    ld e, d                                       ; $555c: $5a
    cp c                                          ; $555d: $b9
    rst $18                                       ; $555e: $df
    ld l, $b7                                     ; $555f: $2e $b7
    sbc a                                         ; $5561: $9f
    or a                                          ; $5562: $b7
    ld b, a                                       ; $5563: $47
    and b                                         ; $5564: $a0
    ld a, $a3                                     ; $5565: $3e $a3
    rrca                                          ; $5567: $0f
    ld a, [de]                                    ; $5568: $1a
    or a                                          ; $5569: $b7
    rra                                           ; $556a: $1f
    dec hl                                        ; $556b: $2b
    jp c, $c0f5                                   ; $556c: $da $f5 $c0

    ld h, e                                       ; $556f: $63
    db $fc                                        ; $5570: $fc
    xor [hl]                                      ; $5571: $ae
    ld a, a                                       ; $5572: $7f
    or c                                          ; $5573: $b1
    db $ed                                        ; $5574: $ed
    sub e                                         ; $5575: $93
    ld a, [hl+]                                   ; $5576: $2a
    ld a, l                                       ; $5577: $7d
    adc d                                         ; $5578: $8a
    ld a, h                                       ; $5579: $7c
    rst $00                                       ; $557a: $c7
    ld d, l                                       ; $557b: $55
    ld c, b                                       ; $557c: $48
    ld e, d                                       ; $557d: $5a
    and l                                         ; $557e: $a5
    ld e, b                                       ; $557f: $58
    push af                                       ; $5580: $f5
    add b                                         ; $5581: $80
    ld d, c                                       ; $5582: $51

Jump_031_5583:
    and l                                         ; $5583: $a5
    ld c, a                                       ; $5584: $4f
    or c                                          ; $5585: $b1
    and $81                                       ; $5586: $e6 $81
    cpl                                           ; $5588: $2f
    ld l, l                                       ; $5589: $6d
    add sp, $1a                                   ; $558a: $e8 $1a
    di                                            ; $558c: $f3
    adc d                                         ; $558d: $8a
    ld a, h                                       ; $558e: $7c
    ld e, h                                       ; $558f: $5c
    or c                                          ; $5590: $b1
    sub a                                         ; $5591: $97
    jp z, $4516                                   ; $5592: $ca $16 $45

    cp [hl]                                       ; $5595: $be
    ld d, e                                       ; $5596: $53
    ld [hl], c                                    ; $5597: $71
    inc b                                         ; $5598: $04
    di                                            ; $5599: $f3
    dec de                                        ; $559a: $1b
    ld b, h                                       ; $559b: $44
    ld h, b                                       ; $559c: $60
    xor h                                         ; $559d: $ac

jr_031_559e:
    adc $6e                                       ; $559e: $ce $6e
    ld b, l                                       ; $55a0: $45
    adc h                                         ; $55a1: $8c
    ld a, h                                       ; $55a2: $7c
    push hl                                       ; $55a3: $e5
    cp $52                                        ; $55a4: $fe $52
    reti                                          ; $55a6: $d9


    and d                                         ; $55a7: $a2
    push de                                       ; $55a8: $d5
    ld e, c                                       ; $55a9: $59
    or c                                          ; $55aa: $b1
    and l                                         ; $55ab: $a5
    sbc $ff                                       ; $55ac: $de $ff
    ld a, [de]                                    ; $55ae: $1a
    db $db                                        ; $55af: $db
    add b                                         ; $55b0: $80
    inc b                                         ; $55b1: $04
    sbc [hl]                                      ; $55b2: $9e
    inc e                                         ; $55b3: $1c
    pop bc                                        ; $55b4: $c1
    ld a, [de]                                    ; $55b5: $1a
    ld b, c                                       ; $55b6: $41
    rst $20                                       ; $55b7: $e7
    ld e, l                                       ; $55b8: $5d
    rst $28                                       ; $55b9: $ef
    inc de                                        ; $55ba: $13
    ld a, [hl]                                    ; $55bb: $7e
    sub b                                         ; $55bc: $90
    rst $08                                       ; $55bd: $cf
    jr @+$5f                                      ; $55be: $18 $5d

    add e                                         ; $55c0: $83
    cp a                                          ; $55c1: $bf
    sub a                                         ; $55c2: $97
    jp z, $ad16                                   ; $55c3: $ca $16 $ad

    add hl, hl                                    ; $55c6: $29
    db $10                                        ; $55c7: $10
    dec hl                                        ; $55c8: $2b
    rrca                                          ; $55c9: $0f
    sbc h                                         ; $55ca: $9c
    rst $20                                       ; $55cb: $e7
    dec sp                                        ; $55cc: $3b
    dec d                                         ; $55cd: $15
    ld b, a                                       ; $55ce: $47
    or b                                          ; $55cf: $b0
    or h                                          ; $55d0: $b4
    ld h, c                                       ; $55d1: $61
    adc h                                         ; $55d2: $8c
    db $fc                                        ; $55d3: $fc
    dec [hl]                                      ; $55d4: $35
    db $e3                                        ; $55d5: $e3
    ld [hl], a                                    ; $55d6: $77
    cp c                                          ; $55d7: $b9
    dec bc                                        ; $55d8: $0b
    inc a                                         ; $55d9: $3c
    sub d                                         ; $55da: $92
    jp $b4b2                                      ; $55db: $c3 $b2 $b4


    ld bc, $9b77                                  ; $55de: $01 $77 $9b
    db $eb                                        ; $55e1: $eb
    ld a, d                                       ; $55e2: $7a
    ld d, l                                       ; $55e3: $55
    and l                                         ; $55e4: $a5
    ld a, a                                       ; $55e5: $7f
    ret                                           ; $55e6: $c9


    di                                            ; $55e7: $f3
    ld d, $59                                     ; $55e8: $16 $59
    db $ec                                        ; $55ea: $ec
    add a                                         ; $55eb: $87
    add c                                         ; $55ec: $81
    or c                                          ; $55ed: $b1
    ld h, d                                       ; $55ee: $62
    ld c, e                                       ; $55ef: $4b
    cp l                                          ; $55f0: $bd
    rst $38                                       ; $55f1: $ff
    or l                                          ; $55f2: $b5
    db $eb                                        ; $55f3: $eb
    ld d, l                                       ; $55f4: $55
    add hl, hl                                    ; $55f5: $29
    db $fc                                        ; $55f6: $fc
    add [hl]                                      ; $55f7: $86
    pop af                                        ; $55f8: $f1
    cp $b8                                        ; $55f9: $fe $b8
    halt                                          ; $55fb: $76
    or c                                          ; $55fc: $b1
    dec c                                         ; $55fd: $0d
    cp b                                          ; $55fe: $b8
    cp a                                          ; $55ff: $bf
    ccf                                           ; $5600: $3f
    pop de                                        ; $5601: $d1
    ld hl, sp+$1d                                 ; $5602: $f8 $1d
    ccf                                           ; $5604: $3f
    bit 5, a                                      ; $5605: $cb $6f
    inc e                                         ; $5607: $1c
    push af                                       ; $5608: $f5
    add hl, hl                                    ; $5609: $29
    sub $3c                                       ; $560a: $d6 $3c
    ldh a, [$f9]                                  ; $560c: $f0 $f9
    dec l                                         ; $560e: $2d
    ld e, $70                                     ; $560f: $1e $70
    rst $10                                       ; $5611: $d7
    jp z, $9d5d                                   ; $5612: $ca $5d $9d

    push hl                                       ; $5615: $e5
    rla                                           ; $5616: $17
    ld e, [hl]                                    ; $5617: $5e
    ld a, [de]                                    ; $5618: $1a
    rst $10                                       ; $5619: $d7
    sbc d                                         ; $561a: $9a
    ld b, a                                       ; $561b: $47
    ld hl, sp+$7e                                 ; $561c: $f8 $7e
    db $e4                                        ; $561e: $e4
    dec sp                                        ; $561f: $3b
    cp h                                          ; $5620: $bc
    ld l, c                                       ; $5621: $69
    nop                                           ; $5622: $00
    or l                                          ; $5623: $b5
    nop                                           ; $5624: $00
    rst $18                                       ; $5625: $df
    or c                                          ; $5626: $b1
    ld b, $b4                                     ; $5627: $06 $b4
    rlca                                          ; $5629: $07
    dec sp                                        ; $562a: $3b
    jp nz, $cd62                                  ; $562b: $c2 $62 $cd

    inc bc                                        ; $562e: $03
    sbc a                                         ; $562f: $9f

Call_031_5630:
    jp nc, $5d69                                  ; $5630: $d2 $69 $5d

    inc b                                         ; $5633: $04
    ld a, [c]                                     ; $5634: $f2
    pop de                                        ; $5635: $d1
    ei                                            ; $5636: $fb
    cp e                                          ; $5637: $bb
    ret c                                         ; $5638: $d8

    rrca                                          ; $5639: $0f
    dec sp                                        ; $563a: $3b
    rst $20                                       ; $563b: $e7
    dec sp                                        ; $563c: $3b
    cp h                                          ; $563d: $bc
    ld l, c                                       ; $563e: $69
    nop                                           ; $563f: $00
    or l                                          ; $5640: $b5
    nop                                           ; $5641: $00
    rst $18                                       ; $5642: $df
    sub c                                         ; $5643: $91
    cp $90                                        ; $5644: $fe $90
    or h                                          ; $5646: $b4
    and $81                                       ; $5647: $e6 $81
    xor a                                         ; $5649: $af
    or c                                          ; $564a: $b1
    ld [$eaf9], sp                                ; $564b: $08 $f9 $ea
    xor h                                         ; $564e: $ac
    call c, $e56f                                 ; $564f: $dc $6f $e5
    ld d, [hl]                                    ; $5652: $56
    jp hl                                         ; $5653: $e9


    db $d3                                        ; $5654: $d3
    ld [bc], a                                    ; $5655: $02
    sub b                                         ; $5656: $90
    or c                                          ; $5657: $b1
    ld c, a                                       ; $5658: $4f
    ld a, e                                       ; $5659: $7b
    or b                                          ; $565a: $b0
    nop                                           ; $565b: $00
    rst $18                                       ; $565c: $df
    ld sp, $1706                                  ; $565d: $31 $06 $17
    ld e, e                                       ; $5660: $5b
    ld l, e                                       ; $5661: $6b
    ld e, $f8                                     ; $5662: $1e $f8
    ld e, h                                       ; $5664: $5c
    adc h                                         ; $5665: $8c
    ld a, $fa                                     ; $5666: $3e $fa
    ld [bc], a                                    ; $5668: $02
    ld a, h                                       ; $5669: $7c
    db $f4                                        ; $566a: $f4
    cp $2e                                        ; $566b: $fe $2e
    or $c3                                        ; $566d: $f6 $c3
    adc $c9                                       ; $566f: $ce $c9
    dec b                                         ; $5671: $05
    adc [hl]                                      ; $5672: $8e
    ld h, b                                       ; $5673: $60
    ld d, $bb                                     ; $5674: $16 $bb
    ret c                                         ; $5676: $d8

    or $59                                        ; $5677: $f6 $59
    or a                                          ; $5679: $b7
    pop af                                        ; $567a: $f1
    cp e                                          ; $567b: $bb
    ld sp, $f918                                  ; $567c: $31 $18 $f9
    ld c, [hl]                                    ; $567f: $4e
    ld a, b                                       ; $5680: $78
    ld e, $19                                     ; $5681: $1e $19
    ret nc                                        ; $5683: $d0

    ld c, b                                       ; $5684: $48
    or c                                          ; $5685: $b1
    adc e                                         ; $5686: $8b
    db $fd                                        ; $5687: $fd
    or b                                          ; $5688: $b0
    di                                            ; $5689: $f3
    ld [c], a                                     ; $568a: $e2
    ld a, l                                       ; $568b: $7d
    ld e, d                                       ; $568c: $5a
    jp c, $2290                                   ; $568d: $da $90 $22

    add hl, sp                                    ; $5690: $39
    ld l, e                                       ; $5691: $6b
    ld a, [de]                                    ; $5692: $1a
    ld b, b                                       ; $5693: $40
    dec l                                         ; $5694: $2d
    ret nz                                        ; $5695: $c0

    sub a                                         ; $5696: $97
    ld a, d                                       ; $5697: $7a
    ld b, b                                       ; $5698: $40
    rst $28                                       ; $5699: $ef
    rst $28                                       ; $569a: $ef
    ldh a, [$35]                                  ; $569b: $f0 $35
    rrca                                          ; $569d: $0f
    ld a, h                                       ; $569e: $7c
    rst $10                                       ; $569f: $d7
    ei                                            ; $56a0: $fb
    ld l, c                                       ; $56a1: $69
    db $f4                                        ; $56a2: $f4
    ld c, d                                       ; $56a3: $4a
    sbc [hl]                                      ; $56a4: $9e
    rst $28                                       ; $56a5: $ef
    inc b                                         ; $56a6: $04
    push bc                                       ; $56a7: $c5
    and d                                         ; $56a8: $a2

Jump_031_56a9:
    and [hl]                                      ; $56a9: $a6
    ld c, d                                       ; $56aa: $4a

jr_031_56ab:
    cp l                                          ; $56ab: $bd
    and d                                         ; $56ac: $a2
    ret c                                         ; $56ad: $d8

    ld a, a                                       ; $56ae: $7f
    add sp, -$4f                                  ; $56af: $e8 $b1
    ld b, b                                       ; $56b1: $40
    add d                                         ; $56b2: $82
    ld e, e                                       ; $56b3: $5b
    xor h                                         ; $56b4: $ac
    adc $ae                                       ; $56b5: $ce $ae
    xor $e8                                       ; $56b7: $ee $e8
    ld [hl], $ae                                  ; $56b9: $36 $ae
    sub c                                         ; $56bb: $91
    ld h, d                                       ; $56bc: $62
    rla                                           ; $56bd: $17
    ei                                            ; $56be: $fb
    ld h, c                                       ; $56bf: $61
    rst $20                                       ; $56c0: $e7
    pop hl                                        ; $56c1: $e1
    rst $20                                       ; $56c2: $e7
    sbc b                                         ; $56c3: $98
    ld bc, $5a7d                                  ; $56c4: $01 $7d $5a
    ld d, c                                       ; $56c7: $51
    inc l                                         ; $56c8: $2c

jr_031_56c9:
    push af                                       ; $56c9: $f5
    cp $57                                        ; $56ca: $fe $57
    call z, $cd6f                                 ; $56cc: $cc $6f $cd
    ei                                            ; $56cf: $fb
    and c                                         ; $56d0: $a1
    ret c                                         ; $56d1: $d8

    pop bc                                        ; $56d2: $c1
    ld l, e                                       ; $56d3: $6b
    ld a, [bc]                                    ; $56d4: $0a
    call nz, $a608                                ; $56d5: $c4 $08 $a6
    ccf                                           ; $56d8: $3f
    adc e                                         ; $56d9: $8b
    db $e4                                        ; $56da: $e4
    ld a, [hl+]                                   ; $56db: $2a
    inc d                                         ; $56dc: $14
    ld [hl], h                                    ; $56dd: $74
    sbc $75                                       ; $56de: $de $75
    ld d, a                                       ; $56e0: $57
    ld d, b                                       ; $56e1: $50
    ld l, l                                       ; $56e2: $6d
    ld [c], a                                     ; $56e3: $e2
    ld c, [hl]                                    ; $56e4: $4e
    push bc                                       ; $56e5: $c5
    ld de, $6e2c                                  ; $56e6: $11 $2c $6e
    ld b, l                                       ; $56e9: $45
    rla                                           ; $56ea: $17
    pop hl                                        ; $56eb: $e1
    ei                                            ; $56ec: $fb
    ld e, a                                       ; $56ed: $5f
    or c                                          ; $56ee: $b1

jr_031_56ef:
    and d                                         ; $56ef: $a2
    and l                                         ; $56f0: $a5
    sbc $df                                       ; $56f1: $de $df
    push bc                                       ; $56f3: $c5
    ld [hl], $e0                                  ; $56f4: $36 $e0
    cp $fe                                        ; $56f6: $fe $fe
    adc h                                         ; $56f8: $8c
    pop de                                        ; $56f9: $d1
    or l                                          ; $56fa: $b5
    and d                                         ; $56fb: $a2
    ld e, b                                       ; $56fc: $58
    ld [$18fd], a                                 ; $56fd: $ea $fd $18
    ld a, [hl]                                    ; $5700: $7e
    sub [hl]                                      ; $5701: $96
    rst $18                                       ; $5702: $df
    jr c, jr_031_56ef                             ; $5703: $38 $ea

    ld d, e                                       ; $5705: $53
    inc h                                         ; $5706: $24
    ld b, a                                       ; $5707: $47
    jr nc, jr_031_56c9                            ; $5708: $30 $bf

    ld b, c                                       ; $570a: $41
    inc b                                         ; $570b: $04
    add $ca                                       ; $570c: $c6 $ca
    ld e, l                                       ; $570e: $5d
    sbc l                                         ; $570f: $9d
    push hl                                       ; $5710: $e5
    rla                                           ; $5711: $17
    ld e, [hl]                                    ; $5712: $5e
    xor d                                         ; $5713: $aa
    ld c, l                                       ; $5714: $4d
    ld e, h                                       ; $5715: $5c
    daa                                           ; $5716: $27
    sbc b                                         ; $5717: $98
    push bc                                       ; $5718: $c5
    ld a, [$7bea]                                 ; $5719: $fa $ea $7b
    adc d                                         ; $571c: $8a

jr_031_571d:
    jr nc, jr_031_56ab                            ; $571d: $30 $8c

jr_031_571f:
    dec [hl]                                      ; $571f: $35
    rrca                                          ; $5720: $0f
    ld a, h                                       ; $5721: $7c
    db $e4                                        ; $5722: $e4
    rrca                                          ; $5723: $0f
    jr jr_031_571f                                ; $5724: $18 $f9

    adc d                                         ; $5726: $8a
    db $ed                                        ; $5727: $ed
    ld a, d                                       ; $5728: $7a
    ld d, l                                       ; $5729: $55
    ld a, [bc]                                    ; $572a: $0a
    cp a                                          ; $572b: $bf
    ld h, c                                       ; $572c: $61
    cp h                                          ; $572d: $bc
    cp a                                          ; $572e: $bf
    db $eb                                        ; $572f: $eb
    cp c                                          ; $5730: $b9
    db $eb                                        ; $5731: $eb
    ld [hl+], a                                   ; $5732: $22
    push hl                                       ; $5733: $e5
    dec l                                         ; $5734: $2d
    ld b, a                                       ; $5735: $47
    ld b, l                                       ; $5736: $45
    jr jr_031_57a3                                ; $5737: $18 $6a

    ld e, h                                       ; $5739: $5c
    ld [hl], e                                    ; $573a: $73
    sub c                                         ; $573b: $91
    ccf                                           ; $573c: $3f
    ld h, b                                       ; $573d: $60
    db $e4                                        ; $573e: $e4
    dec hl                                        ; $573f: $2b
    adc d                                         ; $5740: $8a
    dec [hl]                                      ; $5741: $35
    add [hl]                                      ; $5742: $86
    xor [hl]                                      ; $5743: $ae
    jr jr_031_571d                                ; $5744: $18 $d7

    or d                                          ; $5746: $b2
    call z, $9149                                 ; $5747: $cc $49 $91
    xor a                                         ; $574a: $af
    db $d3                                        ; $574b: $d3
    inc bc                                        ; $574c: $03
    ld a, [de]                                    ; $574d: $1a
    cp a                                          ; $574e: $bf
    ld e, e                                       ; $574f: $5b
    ld [$4f39], a                                 ; $5750: $ea $39 $4f
    adc [hl]                                      ; $5753: $8e
    rst $18                                       ; $5754: $df
    sbc d                                         ; $5755: $9a
    ld h, d                                       ; $5756: $62
    sub a                                         ; $5757: $97
    ld d, [hl]                                    ; $5758: $56
    or h                                          ; $5759: $b4
    dec bc                                        ; $575a: $0b
    inc a                                         ; $575b: $3c
    inc b                                         ; $575c: $04
    ld a, $d1                                     ; $575d: $3e $d1
    xor h                                         ; $575f: $ac
    ld l, c                                       ; $5760: $69
    nop                                           ; $5761: $00
    or l                                          ; $5762: $b5
    nop                                           ; $5763: $00
    ld e, a                                       ; $5764: $5f
    ld [$bd01], a                                 ; $5765: $ea $01 $bd
    cp a                                          ; $5768: $bf
    jp $3cd7                                      ; $5769: $c3 $d7 $3c


    ldh a, [$b9]                                  ; $576c: $f0 $b9
    add sp, -$7f                                  ; $576e: $e8 $81
    ld a, a                                       ; $5770: $7f
    ld sp, hl                                     ; $5771: $f9
    ldh [rOCPD], a                                ; $5772: $e0 $6b
    ld e, c                                       ; $5774: $59
    and $a4                                       ; $5775: $e6 $a4
    dec e                                         ; $5777: $1d
    ld [hl-], a                                   ; $5778: $32
    rla                                           ; $5779: $17
    dec a                                         ; $577a: $3d
    ldh a, [$af]                                  ; $577b: $f0 $af
    pop bc                                        ; $577d: $c1
    rst $10                                       ; $577e: $d7
    ld b, d                                       ; $577f: $42
    rst $10                                       ; $5780: $d7
    ei                                            ; $5781: $fb
    ld e, h                                       ; $5782: $5c
    swap d                                        ; $5783: $cb $32
    daa                                           ; $5785: $27
    ld c, l                                       ; $5786: $4d
    ld a, a                                       ; $5787: $7f
    adc l                                         ; $5788: $8d
    cp a                                          ; $5789: $bf
    db $eb                                        ; $578a: $eb
    add $ed                                       ; $578b: $c6 $ed
    db $d3                                        ; $578d: $d3
    cp b                                          ; $578e: $b8
    ld d, [hl]                                    ; $578f: $56
    ld l, h                                       ; $5790: $6c
    ld d, l                                       ; $5791: $55
    rst $10                                       ; $5792: $d7
    sub l                                         ; $5793: $95
    sub [hl]                                      ; $5794: $96
    or [hl]                                       ; $5795: $b6
    ld e, $df                                     ; $5796: $1e $df
    rst $08                                       ; $5798: $cf
    ld [hl], a                                    ; $5799: $77
    ld a, [hl+]                                   ; $579a: $2a
    adc [hl]                                      ; $579b: $8e
    ld h, b                                       ; $579c: $60
    xor [hl]                                      ; $579d: $ae
    db $eb                                        ; $579e: $eb
    db $fd                                        ; $579f: $fd
    jr nz, jr_031_57c6                            ; $57a0: $20 $24

    ld d, b                                       ; $57a2: $50

jr_031_57a3:
    inc c                                         ; $57a3: $0c
    cp [hl]                                       ; $57a4: $be
    sub $18                                       ; $57a5: $d6 $18
    cp d                                          ; $57a7: $ba
    sub d                                         ; $57a8: $92
    dec hl                                        ; $57a9: $2b
    adc d                                         ; $57aa: $8a
    ld [hl], c                                    ; $57ab: $71
    ld b, c                                       ; $57ac: $41
    rst $20                                       ; $57ad: $e7

Jump_031_57ae:
    ld h, l                                       ; $57ae: $65
    sbc c                                         ; $57af: $99
    sub e                                         ; $57b0: $93
    ld h, d                                       ; $57b1: $62
    pop af                                        ; $57b2: $f1
    ld a, $cd                                     ; $57b3: $3e $cd
    ld b, l                                       ; $57b5: $45
    add sp, $37                                   ; $57b6: $e8 $37
    push bc                                       ; $57b8: $c5
    jr c, jr_031_57e7                             ; $57b9: $38 $2c

    ld e, e                                       ; $57bb: $5b
    sub b                                         ; $57bc: $90
    xor a                                         ; $57bd: $af
    db $e3                                        ; $57be: $e3
    inc bc                                        ; $57bf: $03
    rra                                           ; $57c0: $1f
    bit 3, b                                      ; $57c1: $cb $58
    ld e, a                                       ; $57c3: $5f
    sbc [hl]                                      ; $57c4: $9e
    inc e                                         ; $57c5: $1c

jr_031_57c6:
    pop bc                                        ; $57c6: $c1
    ld hl, sp-$3d                                 ; $57c7: $f8 $c3
    sbc b                                         ; $57c9: $98
    adc e                                         ; $57ca: $8b
    ret nc                                        ; $57cb: $d0

    push hl                                       ; $57cc: $e5
    db $e3                                        ; $57cd: $e3
    or b                                          ; $57ce: $b0
    ld l, h                                       ; $57cf: $6c
    pop bc                                        ; $57d0: $c1
    add sp, $01                                   ; $57d1: $e8 $01
    add hl, hl                                    ; $57d3: $29
    ld d, [hl]                                    ; $57d4: $56
    inc d                                         ; $57d5: $14
    ld l, e                                       ; $57d6: $6b
    inc c                                         ; $57d7: $0c
    ld e, l                                       ; $57d8: $5d
    ld sp, $65ae                                  ; $57d9: $31 $ae $65
    sbc c                                         ; $57dc: $99
    sub e                                         ; $57dd: $93
    ld [hl+], a                                   ; $57de: $22
    ld l, a                                       ; $57df: $6f
    ld bc, $e2a7                                  ; $57e0: $01 $a7 $e2
    ld [$5a46], sp                                ; $57e3: $08 $46 $5a
    inc hl                                        ; $57e6: $23

jr_031_57e7:
    rst $20                                       ; $57e7: $e7
    sub c                                         ; $57e8: $91
    sbc h                                         ; $57e9: $9c
    dec [hl]                                      ; $57ea: $35
    dec c                                         ; $57eb: $0d
    and b                                         ; $57ec: $a0
    ld d, $e0                                     ; $57ed: $16 $e0
    dec sp                                        ; $57ef: $3b
    ld d, l                                       ; $57f0: $55
    ld b, l                                       ; $57f1: $45
    rla                                           ; $57f2: $17
    xor l                                         ; $57f3: $ad
    ld a, c                                       ; $57f4: $79
    ldh [$b3], a                                  ; $57f5: $e0 $b3
    ld [hl], h                                    ; $57f7: $74

Call_031_57f8:
    ld a, [de]                                    ; $57f8: $1a
    cpl                                           ; $57f9: $2f
    or [hl]                                       ; $57fa: $b6
    ld a, h                                       ; $57fb: $7c
    ldh a, [$57]                                  ; $57fc: $f0 $57
    add hl, hl                                    ; $57fe: $29
    jp nz, Jump_000_1a58                          ; $57ff: $c2 $58 $1a

    db $dd                                        ; $5802: $dd
    pop af                                        ; $5803: $f1
    ld [hl], e                                    ; $5804: $73
    call z, Call_031_7d80                         ; $5805: $cc $80 $7d
    ld a, [de]                                    ; $5808: $1a
    cp l                                          ; $5809: $bd
    ccf                                           ; $580a: $3f
    ld d, l                                       ; $580b: $55
    ld c, l                                       ; $580c: $4d
    or c                                          ; $580d: $b1
    ld c, e                                       ; $580e: $4b
    sub l                                         ; $580f: $95
    ld a, $cd                                     ; $5810: $3e $cd
    ld l, $02                                     ; $5812: $2e $02
    sub l                                         ; $5814: $95
    cp h                                          ; $5815: $bc
    dec b                                         ; $5816: $05
    add a                                         ; $5817: $87
    scf                                           ; $5818: $37
    dec c                                         ; $5819: $0d
    and b                                         ; $581a: $a0
    ld d, $e0                                     ; $581b: $16 $e0
    ld c, e                                       ; $581d: $4b
    dec a                                         ; $581e: $3d
    and b                                         ; $581f: $a0
    rst $30                                       ; $5820: $f7
    ld [hl], a                                    ; $5821: $77
    ld hl, sp-$66                                 ; $5822: $f8 $9a
    rlca                                          ; $5824: $07
    cp [hl]                                       ; $5825: $be
    adc e                                         ; $5826: $8b
    dec l                                         ; $5827: $2d
    cp a                                          ; $5828: $bf
    ret c                                         ; $5829: $d8

    ld a, [c]                                     ; $582a: $f2
    dec d                                         ; $582b: $15
    push bc                                       ; $582c: $c5
    ld e, [hl]                                    ; $582d: $5e
    ld a, [hl+]                                   ; $582e: $2a
    ld e, e                                       ; $582f: $5b
    inc d                                         ; $5830: $14
    cp e                                          ; $5831: $bb
    db $ec                                        ; $5832: $ec
    ld h, d                                       ; $5833: $62
    rst $18                                       ; $5834: $df
    ld h, d                                       ; $5835: $62
    adc l                                         ; $5836: $8d
    push bc                                       ; $5837: $c5

jr_031_5838:
    jp z, Jump_000_3fc3                           ; $5838: $ca $c3 $3f

    ld l, $c6                                     ; $583b: $2e $c6
    ld a, $8d                                     ; $583d: $3e $8d
    ld e, $e6                                     ; $583f: $1e $e6
    dec sp                                        ; $5841: $3b
    dec d                                         ; $5842: $15
    ld b, a                                       ; $5843: $47
    jr nc, jr_031_5838                            ; $5844: $30 $f2

    rlca                                          ; $5846: $07
    adc h                                         ; $5847: $8c
    ld h, d                                       ; $5848: $62
    ldh a, [$f7]                                  ; $5849: $f0 $f7
    ld d, d                                       ; $584b: $52
    reti                                          ; $584c: $d9


    and d                                         ; $584d: $a2
    db $e4                                        ; $584e: $e4
    ldh [$af], a                                  ; $584f: $e0 $af
    ld d, d                                       ; $5851: $52
    add h                                         ; $5852: $84
    or c                                          ; $5853: $b1
    or h                                          ; $5854: $b4
    cp b                                          ; $5855: $b8
    ld e, e                                       ; $5856: $5b
    ld a, [hl-]                                   ; $5857: $3a
    adc l                                         ; $5858: $8d
    rla                                           ; $5859: $17
    ld e, e                                       ; $585a: $5b
    ld l, e                                       ; $585b: $6b
    ld e, $f8                                     ; $585c: $1e $f8
    add sp, -$72                                  ; $585e: $e8 $8e
    sbc a                                         ; $5860: $9f
    ld h, e                                       ; $5861: $63
    ld b, $e4                                     ; $5862: $06 $e4
    db $e3                                        ; $5864: $e3
    ld e, d                                       ; $5865: $5a
    ld b, $1e                                     ; $5866: $06 $1e
    ld c, $cb                                     ; $5868: $0e $cb
    ld [c], a                                     ; $586a: $e2
    ld l, [hl]                                    ; $586b: $6e
    inc l                                         ; $586c: $2c
    and h                                         ; $586d: $a4

jr_031_586e:
    cp h                                          ; $586e: $bc
    dec b                                         ; $586f: $05
    and a                                         ; $5870: $a7
    dec bc                                        ; $5871: $0b
    or b                                          ; $5872: $b0
    inc d                                         ; $5873: $14
    sbc l                                         ; $5874: $9d
    ccf                                           ; $5875: $3f
    and $41                                       ; $5876: $e6 $41
    call z, Call_000_2bb8                         ; $5878: $cc $b8 $2b
    ld b, d                                       ; $587b: $42
    ld a, $83                                     ; $587c: $3e $83
    dec [hl]                                      ; $587e: $35
    cp $d2                                        ; $587f: $fe $d2
    adc d                                         ; $5881: $8a
    db $10                                        ; $5882: $10

Call_031_5883:
    ld hl, sp+$4e                                 ; $5883: $f8 $4e
    ld a, c                                       ; $5885: $79
    inc l                                         ; $5886: $2c
    ret nc                                        ; $5887: $d0

    sbc d                                         ; $5888: $9a
    rlca                                          ; $5889: $07
    cp [hl]                                       ; $588a: $be
    sub a                                         ; $588b: $97
    ld [hl+], a                                   ; $588c: $22
    ld a, l                                       ; $588d: $7d
    db $f4                                        ; $588e: $f4
    ld sp, $e62f                                  ; $588f: $31 $2f $e6
    cp d                                          ; $5892: $ba
    ld b, h                                       ; $5893: $44
    and h                                         ; $5894: $a4
    jr jr_031_586e                                ; $5895: $18 $d7

    sbc d                                         ; $5897: $9a
    ld b, a                                       ; $5898: $47
    ld hl, sp+$7e                                 ; $5899: $f8 $7e
    inc h                                         ; $589b: $24
    ld [hl], a                                    ; $589c: $77
    xor h                                         ; $589d: $ac
    cp c                                          ; $589e: $b9
    rst $10                                       ; $589f: $d7
    db $e4                                        ; $58a0: $e4
    dec l                                         ; $58a1: $2d
    daa                                           ; $58a2: $27
    sbc $d9                                       ; $58a3: $de $d9
    or a                                          ; $58a5: $b7
    ld b, b                                       ; $58a6: $40

Jump_031_58a7:
jr_031_58a7:
    jp nc, Jump_031_6bf9                          ; $58a7: $d2 $f9 $6b

    inc l                                         ; $58aa: $2c
    ld d, [hl]                                    ; $58ab: $56
    ld h, a                                       ; $58ac: $67
    ld [$156c], a                                 ; $58ad: $ea $6c $15
    ld a, [hl]                                    ; $58b0: $7e
    ld sp, hl                                     ; $58b1: $f9
    adc d                                         ; $58b2: $8a
    halt                                          ; $58b3: $76
    cp l                                          ; $58b4: $bd
    ld c, a                                       ; $58b5: $4f
    ld a, [$ae30]                                 ; $58b6: $fa $30 $ae
    ld e, l                                       ; $58b9: $5d
    adc d                                         ; $58ba: $8a
    db $dd                                        ; $58bb: $dd
    ret z                                         ; $58bc: $c8

    ld e, b                                       ; $58bd: $58
    ld [hl], l                                    ; $58be: $75
    ld e, l                                       ; $58bf: $5d
    sub c                                         ; $58c0: $91
    rst $28                                       ; $58c1: $ef
    db $f4                                        ; $58c2: $f4
    rlca                                          ; $58c3: $07
    or c                                          ; $58c4: $b1
    and $81                                       ; $58c5: $e6 $81
    dec sp                                        ; $58c7: $3b
    ld [$d5fc], a                                 ; $58c8: $ea $fc $d5
    inc l                                         ; $58cb: $2c
    ld l, l                                       ; $58cc: $6d
    add sp, $1a                                   ; $58cd: $e8 $1a
    cp a                                          ; $58cf: $bf
    db $e3                                        ; $58d0: $e3
    and a                                         ; $58d1: $a7
    sbc e                                         ; $58d2: $9b
    dec hl                                        ; $58d3: $2b
    jp nz, $293e                                  ; $58d4: $c2 $3e $29

    ld b, [hl]                                    ; $58d7: $46
    cp $80                                        ; $58d8: $fe $80
    ld sp, $452c                                  ; $58da: $31 $2c $45
    sub c                                         ; $58dd: $91
    rst $20                                       ; $58de: $e7
    ld a, c                                       ; $58df: $79
    dec bc                                        ; $58e0: $0b
    daa                                           ; $58e1: $27
    call c, $baed                                 ; $58e2: $dc $ed $ba
    ld [$b8c6], a                                 ; $58e5: $ea $c6 $b8
    ld d, [hl]                                    ; $58e8: $56
    ld l, h                                       ; $58e9: $6c
    and a                                         ; $58ea: $a7
    call c, $ce42                                 ; $58eb: $dc $42 $ce
    ld l, b                                       ; $58ee: $68
    ld a, [bc]                                    ; $58ef: $0a
    ld a, [de]                                    ; $58f0: $1a
    ld a, [hl]                                    ; $58f1: $7e
    sub d                                         ; $58f2: $92
    ld [hl], e                                    ; $58f3: $73
    and h                                         ; $58f4: $a4
    push de                                       ; $58f5: $d5
    add hl, de                                    ; $58f6: $19
    dec a                                         ; $58f7: $3d
    jr nz, jr_031_58a7                            ; $58f8: $20 $ad

    sub c                                         ; $58fa: $91
    rst $00                                       ; $58fb: $c7
    ei                                            ; $58fc: $fb
    ld e, a                                       ; $58fd: $5f
    dec bc                                        ; $58fe: $0b
    ei                                            ; $58ff: $fb
    ld sp, $7a03                                  ; $5900: $31 $03 $7a
    adc [hl]                                      ; $5903: $8e
    ld h, c                                       ; $5904: $61
    add h                                         ; $5905: $84
    rst $28                                       ; $5906: $ef
    rst $20                                       ; $5907: $e7
    dec l                                         ; $5908: $2d
    and a                                         ; $5909: $a7
    ccf                                           ; $590a: $3f
    adc b                                         ; $590b: $88
    ld [hl], c                                    ; $590c: $71
    ld sp, $3a8e                                  ; $590d: $31 $8e $3a
    ld a, a                                       ; $5910: $7f
    ld d, [hl]                                    ; $5911: $56
    adc d                                         ; $5912: $8a
    ld a, h                                       ; $5913: $7c
    inc e                                         ; $5914: $1c
    ld e, l                                       ; $5915: $5d
    inc sp                                        ; $5916: $33
    ld e, b                                       ; $5917: $58
    db $e3                                        ; $5918: $e3
    cpl                                           ; $5919: $2f
    xor l                                         ; $591a: $ad
    ld [$ef81], sp                                ; $591b: $08 $81 $ef
    ld h, h                                       ; $591e: $64
    ld b, b                                       ; $591f: $40
    ld [hl], a                                    ; $5920: $77
    sub l                                         ; $5921: $95
    or d                                          ; $5922: $b2
    inc c                                         ; $5923: $0c
    ld l, b                                       ; $5924: $68
    call z, $9883                                 ; $5925: $cc $83 $98
    ld sp, $7f3a                                  ; $5928: $31 $3a $7f
    db $e4                                        ; $592b: $e4
    rrca                                          ; $592c: $0f
    sbc b                                         ; $592d: $98
    db $db                                        ; $592e: $db
    adc d                                         ; $592f: $8a
    and $aa                                       ; $5930: $e6 $aa
    ld [$ed72], a                                 ; $5932: $ea $72 $ed
    ld a, d                                       ; $5935: $7a
    sbc a                                         ; $5936: $9f
    ld e, h                                       ; $5937: $5c
    ld h, e                                       ; $5938: $63
    ld e, $b9                                     ; $5939: $1e $b9
    ld d, [hl]                                    ; $593b: $56
    ld e, c                                       ; $593c: $59
    ld sp, $ca8e                                  ; $593d: $31 $8e $ca
    ld e, e                                       ; $5940: $5b
    and a                                         ; $5941: $a7
    ld [c], a                                     ; $5942: $e2
    ld b, d                                       ; $5943: $42
    ld d, b                                       ; $5944: $50
    ld d, h                                       ; $5945: $54
    jp hl                                         ; $5946: $e9


    db $d3                                        ; $5947: $d3
    or b                                          ; $5948: $b0
    xor h                                         ; $5949: $ac
    ld h, [hl]                                    ; $594a: $66
    add $18                                       ; $594b: $c6 $18
    jp nc, $afe0                                  ; $594d: $d2 $e0 $af

    ld de, $7aac                                  ; $5950: $11 $ac $7a
    ld hl, sp+$63                                 ; $5953: $f8 $63
    ld e, h                                       ; $5955: $5c
    ld l, e                                       ; $5956: $6b
    ld e, $14                                     ; $5957: $1e $14
    ld d, c                                       ; $5959: $51
    adc h                                         ; $595a: $8c
    db $db                                        ; $595b: $db
    adc a                                         ; $595c: $8f
    dec d                                         ; $595d: $15
    xor l                                         ; $595e: $ad
    ld sp, $f2bf                                  ; $595f: $31 $bf $f2
    ld d, $87                                     ; $5962: $16 $87
    inc sp                                        ; $5964: $33
    cp d                                          ; $5965: $ba
    ld b, [hl]                                    ; $5966: $46
    rrca                                          ; $5967: $0f
    ld h, d                                       ; $5968: $62
    sub a                                         ; $5969: $97
    ld h, d                                       ; $596a: $62
    call Call_000_2283                            ; $596b: $cd $83 $22
    adc d                                         ; $596e: $8a
    ld [hl], c                                    ; $596f: $71
    or c                                          ; $5970: $b1
    sbc a                                         ; $5971: $9f
    ld b, a                                       ; $5972: $47
    ld [hl], d                                    ; $5973: $72
    ldh a, [$b5]                                  ; $5974: $f0 $b5
    adc e                                         ; $5976: $8b
    ld l, l                                       ; $5977: $6d
    ld e, [hl]                                    ; $5978: $5e
    reti                                          ; $5979: $d9


    daa                                           ; $597a: $27
    xor l                                         ; $597b: $ad
    pop af                                        ; $597c: $f1
    ld d, a                                       ; $597d: $57
    jp hl                                         ; $597e: $e9


    dec de                                        ; $597f: $1b
    rst $10                                       ; $5980: $d7
    ld b, d                                       ; $5981: $42
    inc hl                                        ; $5982: $23
    or a                                          ; $5983: $b7
    rra                                           ; $5984: $1f
    jp hl                                         ; $5985: $e9


    rst $20                                       ; $5986: $e7
    sub l                                         ; $5987: $95
    add $20                                       ; $5988: $c6 $20
    ld l, c                                       ; $598a: $69
    ld a, [$af83]                                 ; $598b: $fa $83 $af
    xor c                                         ; $598e: $a9
    ld [hl], e                                    ; $598f: $73
    ld [hl], e                                    ; $5990: $73
    ld [hl], e                                    ; $5991: $73
    call nc, $34bf                                ; $5992: $d4 $bf $34
    ld a, [hl]                                    ; $5995: $7e
    ld l, e                                       ; $5996: $6b
    adc d                                         ; $5997: $8a
    ld h, c                                       ; $5998: $61
    ret c                                         ; $5999: $d8

    daa                                           ; $599a: $27
    push hl                                       ; $599b: $e5
    dec l                                         ; $599c: $2d
    push af                                       ; $599d: $f5
    rst $28                                       ; $599e: $ef
    add [hl]                                      ; $599f: $86
    or e                                          ; $59a0: $b3
    ld d, h                                       ; $59a1: $54
    or a                                          ; $59a2: $b7
    push de                                       ; $59a3: $d5
    ld l, l                                       ; $59a4: $6d
    sub l                                         ; $59a5: $95
    ld h, d                                       ; $59a6: $62
    rst $38                                       ; $59a7: $ff
    ld bc, $52a3                                  ; $59a8: $01 $a3 $52
    inc d                                         ; $59ab: $14
    cp e                                          ; $59ac: $bb
    ret c                                         ; $59ad: $d8

    ld b, $11                                     ; $59ae: $06 $11
    ldh [$8a], a                                  ; $59b0: $e0 $8a
    jp hl                                         ; $59b2: $e9


    adc a                                         ; $59b3: $8f
    dec de                                        ; $59b4: $1b
    ld d, [hl]                                    ; $59b5: $56
    db $d3                                        ; $59b6: $d3
    ld e, a                                       ; $59b7: $5f
    ld h, l                                       ; $59b8: $65
    ld a, [hl]                                    ; $59b9: $7e
    or c                                          ; $59ba: $b1
    db $ed                                        ; $59bb: $ed
    db $d3                                        ; $59bc: $d3
    ld [bc], a                                    ; $59bd: $02
    ld a, h                                       ; $59be: $7c
    ld b, l                                       ; $59bf: $45
    or c                                          ; $59c0: $b1
    sbc [hl]                                      ; $59c1: $9e
    jr nz, jr_031_59e1                            ; $59c2: $20 $1d

    ret                                           ; $59c4: $c9


jr_031_59c5:
    ld [hl], c                                    ; $59c5: $71
    or c                                          ; $59c6: $b1
    sbc a                                         ; $59c7: $9f
    ld b, a                                       ; $59c8: $47
    ld l, l                                       ; $59c9: $6d
    ld h, d                                       ; $59ca: $62
    dec bc                                        ; $59cb: $0b
    push af                                       ; $59cc: $f5
    dec [hl]                                      ; $59cd: $35
    ld a, [c]                                     ; $59ce: $f2
    rlca                                          ; $59cf: $07
    adc h                                         ; $59d0: $8c
    sub [hl]                                      ; $59d1: $96
    add c                                         ; $59d2: $81
    ei                                            ; $59d3: $fb
    ei                                            ; $59d4: $fb
    ei                                            ; $59d5: $fb
    ld e, d                                       ; $59d6: $5a
    ld h, l                                       ; $59d7: $65
    sbc a                                         ; $59d8: $9f
    and l                                         ; $59d9: $a5
    dec [hl]                                      ; $59da: $35
    ld d, $b3                                     ; $59db: $16 $b3
    ld [$3f9d], sp                                ; $59dd: $08 $9d $3f
    xor [hl]                                      ; $59e0: $ae

jr_031_59e1:
    dec [hl]                                      ; $59e1: $35
    rrca                                          ; $59e2: $0f
    adc d                                         ; $59e3: $8a
    ld l, b                                       ; $59e4: $68
    ld a, b                                       ; $59e5: $78
    ld h, c                                       ; $59e6: $61
    ld l, l                                       ; $59e7: $6d
    ld h, d                                       ; $59e8: $62
    dec bc                                        ; $59e9: $0b
    ld e, c                                       ; $59ea: $59
    ld [hl], a                                    ; $59eb: $77
    dec b                                         ; $59ec: $05
    dec l                                         ; $59ed: $2d
    db $fd                                        ; $59ee: $fd
    ld h, b                                       ; $59ef: $60
    sub a                                         ; $59f0: $97
    sub [hl]                                      ; $59f1: $96
    ld bc, $fb2d                                  ; $59f2: $01 $2d $fb
    ld l, [hl]                                    ; $59f5: $6e
    jr c, @+$7f                                   ; $59f6: $38 $7d

    ld b, $35                                     ; $59f8: $06 $35
    ld a, [hl]                                    ; $59fa: $7e

jr_031_59fb:
    add a                                         ; $59fb: $87
    cp a                                          ; $59fc: $bf
    call nc, Call_031_6bfb                        ; $59fd: $d4 $fb $6b
    ld e, $14                                     ; $5a00: $1e $14
    pop de                                        ; $5a02: $d1
    ld e, b                                       ; $5a03: $58
    adc [hl]                                      ; $5a04: $8e
    and l                                         ; $5a05: $a5
    call c, $ea56                                 ; $5a06: $dc $56 $ea
    inc h                                         ; $5a09: $24
    ld d, a                                       ; $5a0a: $57
    add hl, de                                    ; $5a0b: $19
    ld a, [hl]                                    ; $5a0c: $7e
    jp nc, Jump_031_4fb7                          ; $5a0d: $d2 $b7 $4f

    ld a, c                                       ; $5a10: $79
    dec bc                                        ; $5a11: $0b
    sbc l                                         ; $5a12: $9d
    ld h, b                                       ; $5a13: $60
    ld d, $e3                                     ; $5a14: $16 $e3
    or a                                          ; $5a16: $b7
    db $ec                                        ; $5a17: $ec
    ld a, [hl-]                                   ; $5a18: $3a
    ld [hl], e                                    ; $5a19: $73

jr_031_5a1a:
    or c                                          ; $5a1a: $b1
    call z, $6df9                                 ; $5a1b: $cc $f9 $6d
    ldh a, [$d7]                                  ; $5a1e: $f0 $d7
    inc a                                         ; $5a20: $3c
    jr z, jr_031_59c5                             ; $5a21: $28 $a2

    ld [hl], c                                    ; $5a23: $71
    ei                                            ; $5a24: $fb
    or c                                          ; $5a25: $b1
    and d                                         ; $5a26: $a2
    ld e, b                                       ; $5a27: $58
    adc l                                         ; $5a28: $8d
    and b                                         ; $5a29: $a0
    ld [hl], e                                    ; $5a2a: $73
    db $ed                                        ; $5a2b: $ed
    and c                                         ; $5a2c: $a1
    res 6, d                                      ; $5a2d: $cb $b2
    and l                                         ; $5a2f: $a5
    pop af                                        ; $5a30: $f1
    ld h, d                                       ; $5a31: $62
    ld l, e                                       ; $5a32: $6b
    push bc                                       ; $5a33: $c5
    halt                                          ; $5a34: $76
    or c                                          ; $5a35: $b1
    dec c                                         ; $5a36: $0d
    ld a, l                                       ; $5a37: $7d
    ld e, h                                       ; $5a38: $5c
    ld l, e                                       ; $5a39: $6b
    ld e, $14                                     ; $5a3a: $1e $14
    push hl                                       ; $5a3c: $e5
    dec l                                         ; $5a3d: $2d

Call_031_5a3e:
    dec e                                         ; $5a3e: $1d
    rra                                           ; $5a3f: $1f
    ld a, b                                       ; $5a40: $78
    ld b, $1e                                     ; $5a41: $06 $1e
    ld c, [hl]                                    ; $5a43: $4e
    ld b, c                                       ; $5a44: $41
    push af                                       ; $5a45: $f5
    ld l, $2d                                     ; $5a46: $2e $2d
    inc bc                                        ; $5a48: $03
    ld a, [de]                                    ; $5a49: $1a

jr_031_5a4a:
    dec a                                         ; $5a4a: $3d
    and b                                         ; $5a4b: $a0
    dec d                                         ; $5a4c: $15
    xor l                                         ; $5a4d: $ad
    ld a, d                                       ; $5a4e: $7a
    sbc a                                         ; $5a4f: $9f
    ld l, e                                       ; $5a50: $6b
    adc l                                         ; $5a51: $8d
    ld a, c                                       ; $5a52: $79
    pop de                                        ; $5a53: $d1
    cp b                                          ; $5a54: $b8
    sub $3c                                       ; $5a55: $d6 $3c
    jr z, jr_031_59fb                             ; $5a57: $28 $a2

    xor b                                         ; $5a59: $a8
    dec a                                         ; $5a5a: $3d
    or h                                          ; $5a5b: $b4
    dec b                                         ; $5a5c: $05
    push af                                       ; $5a5d: $f5
    rst $28                                       ; $5a5e: $ef
    add [hl]                                      ; $5a5f: $86
    sub l                                         ; $5a60: $95
    call c, $9630                                 ; $5a61: $dc $30 $96
    ld b, d                                       ; $5a64: $42
    db $fd                                        ; $5a65: $fd
    ld d, l                                       ; $5a66: $55
    or $59                                        ; $5a67: $f6 $59
    ld a, [c]                                     ; $5a69: $f2
    pop bc                                        ; $5a6a: $c1
    rst $10                                       ; $5a6b: $d7
    ld d, d                                       ; $5a6c: $52
    rst $28                                       ; $5a6d: $ef
    ld a, a                                       ; $5a6e: $7f
    dec l                                         ; $5a6f: $2d
    xor h                                         ; $5a70: $ac
    jr jr_031_5a4a                                ; $5a71: $18 $d7

    inc c                                         ; $5a73: $0c
    sub $3c                                       ; $5a74: $d6 $3c
    jr z, jr_031_5a1a                             ; $5a76: $28 $a2

    ld e, l                                       ; $5a78: $5d
    xor a                                         ; $5a79: $af
    xor d                                         ; $5a7a: $aa
    or h                                          ; $5a7b: $b4
    ld h, d                                       ; $5a7c: $62
    ld l, e                                       ; $5a7d: $6b
    db $fc                                        ; $5a7e: $fc
    sub $98                                       ; $5a7f: $d6 $98
    ld l, e                                       ; $5a81: $6b
    sub l                                         ; $5a82: $95
    xor l                                         ; $5a83: $ad
    or d                                          ; $5a84: $b2
    jp z, Jump_031_6d7e                           ; $5a85: $ca $7e $6d

    ld h, d                                       ; $5a88: $62
    dec bc                                        ; $5a89: $0b
    daa                                           ; $5a8a: $27
    ret c                                         ; $5a8b: $d8

    ld a, [de]                                    ; $5a8c: $1a
    ld a, a                                       ; $5a8d: $7f
    rla                                           ; $5a8e: $17
    db $db                                        ; $5a8f: $db
    ldh a, [rOCPD]                                ; $5a90: $f0 $6b
    jp hl                                         ; $5a92: $e9


    add a                                         ; $5a93: $87
    or c                                          ; $5a94: $b1
    inc c                                         ; $5a95: $0c
    ld l, b                                       ; $5a96: $68
    reti                                          ; $5a97: $d9


    ld e, d                                       ; $5a98: $5a
    and l                                         ; $5a99: $a5
    and l                                         ; $5a9a: $a5
    dec c                                         ; $5a9b: $0d
    ld h, e                                       ; $5a9c: $63
    rst $10                                       ; $5a9d: $d7
    add e                                         ; $5a9e: $83
    ld b, [hl]                                    ; $5a9f: $46
    cp [hl]                                       ; $5aa0: $be
    and d                                         ; $5aa1: $a2
    ret c                                         ; $5aa2: $d8

    push bc                                       ; $5aa3: $c5
    ld d, $23                                     ; $5aa4: $16 $23
    add sp, -$64                                  ; $5aa6: $e8 $9c
    ld e, h                                       ; $5aa8: $5c
    or [hl]                                       ; $5aa9: $b6
    add $08                                       ; $5aaa: $c6 $08
    ld a, [hl-]                                   ; $5aac: $3a
    rrca                                          ; $5aad: $0f
    cp [hl]                                       ; $5aae: $be
    halt                                          ; $5aaf: $76
    ld a, c                                       ; $5ab0: $79
    rst $10                                       ; $5ab1: $d7
    and h                                         ; $5ab2: $a4
    db $e4                                        ; $5ab3: $e4
    xor [hl]                                      ; $5ab4: $ae
    ld d, a                                       ; $5ab5: $57
    ld d, l                                       ; $5ab6: $55
    ld e, d                                       ; $5ab7: $5a
    ld d, c                                       ; $5ab8: $51
    db $ec                                        ; $5ab9: $ec
    ld a, d                                       ; $5aba: $7a
    sbc c                                         ; $5abb: $99
    ret z                                         ; $5abc: $c8

    ld e, e                                       ; $5abd: $5b
    daa                                           ; $5abe: $27
    add e                                         ; $5abf: $83
    ld c, d                                       ; $5ac0: $4a
    xor h                                         ; $5ac1: $ac
    ld de, $c521                                  ; $5ac2: $11 $21 $c5
    ld a, [de]                                    ; $5ac5: $1a
    cp a                                          ; $5ac6: $bf
    sub c                                         ; $5ac7: $91
    ld a, $a1                                     ; $5ac8: $3e $a1
    and b                                         ; $5aca: $a0
    ld [hl], e                                    ; $5acb: $73
    ld [hl], d                                    ; $5acc: $72
    sub a                                         ; $5acd: $97
    ld h, d                                       ; $5ace: $62
    and a                                         ; $5acf: $a7
    jp z, $7d1b                                   ; $5ad0: $ca $1b $7d

    ld [hl-], a                                   ; $5ad3: $32
    rst $20                                       ; $5ad4: $e7
    or l                                          ; $5ad5: $b5
    adc c                                         ; $5ad6: $89
    dec sp                                        ; $5ad7: $3b
    xor [hl]                                      ; $5ad8: $ae
    call nz, Call_031_6b42                        ; $5ad9: $c4 $42 $6b
    adc h                                         ; $5adc: $8c
    or c                                          ; $5add: $b1
    xor a                                         ; $5ade: $af
    ld c, a                                       ; $5adf: $4f
    cp e                                          ; $5ae0: $bb
    ld e, [hl]                                    ; $5ae1: $5e
    ld d, l                                       ; $5ae2: $55
    ld l, c                                       ; $5ae3: $69
    ld e, h                                       ; $5ae4: $5c
    or c                                          ; $5ae5: $b1
    db $eb                                        ; $5ae6: $eb
    ld h, l                                       ; $5ae7: $65
    and d                                         ; $5ae8: $a2
    ld [hl], $b1                                  ; $5ae9: $36 $b1
    dec b                                         ; $5aeb: $05

jr_031_5aec:
    dec e                                         ; $5aec: $1d

jr_031_5aed:
    xor h                                         ; $5aed: $ac
    jr z, jr_031_5aed                             ; $5aee: $28 $fd

    ld l, d                                       ; $5af0: $6a
    ld d, [hl]                                    ; $5af1: $56
    db $dd                                        ; $5af2: $dd
    ld l, l                                       ; $5af3: $6d
    db $fc                                        ; $5af4: $fc
    sub [hl]                                      ; $5af5: $96
    add $db                                       ; $5af6: $c6 $db
    ld [$fe0c], a                                 ; $5af8: $ea $0c $fe
    or d                                          ; $5afb: $b2
    dec b                                         ; $5afc: $05
    db $e3                                        ; $5afd: $e3
    or $59                                        ; $5afe: $f6 $59
    ld [hl], d                                    ; $5b00: $72
    ld b, c                                       ; $5b01: $41
    rst $20                                       ; $5b02: $e7
    dec b                                         ; $5b03: $05
    ld hl, sp-$76                                 ; $5b04: $f8 $8a
    ld h, d                                       ; $5b06: $62
    add hl, hl                                    ; $5b07: $29
    dec hl                                        ; $5b08: $2b
    add [hl]                                      ; $5b09: $86
    sub c                                         ; $5b0a: $91
    xor a                                         ; $5b0b: $af
    cp [hl]                                       ; $5b0c: $be
    or $b5                                        ; $5b0d: $f6 $b5
    nop                                           ; $5b0f: $00
    adc h                                         ; $5b10: $8c
    dec [hl]                                      ; $5b11: $35
    ld d, $83                                     ; $5b12: $16 $83
    xor a                                         ; $5b14: $af
    dec [hl]                                      ; $5b15: $35
    rrca                                          ; $5b16: $0f
    adc d                                         ; $5b17: $8a
    ld d, [hl]                                    ; $5b18: $56
    dec a                                         ; $5b19: $3d
    ret nz                                        ; $5b1a: $c0

    ld d, d                                       ; $5b1b: $52
    ld l, [hl]                                    ; $5b1c: $6e
    ld e, d                                       ; $5b1d: $5a
    ld h, l                                       ; $5b1e: $65
    jr jr_031_5aec                                ; $5b1f: $18 $cb

    sub $0a                                       ; $5b21: $d6 $0a
    ldh [$0c], a                                  ; $5b23: $e0 $0c
    rst $00                                       ; $5b25: $c7
    sub c                                         ; $5b26: $91
    or $df                                        ; $5b27: $f6 $df
    xor a                                         ; $5b29: $af
    ld c, l                                       ; $5b2a: $4d
    ld l, h                                       ; $5b2b: $6c
    ld bc, $6c1d                                  ; $5b2c: $01 $1d $6c
    inc l                                         ; $5b2f: $2c
    or a                                          ; $5b30: $b7
    rst $08                                       ; $5b31: $cf
    db $eb                                        ; $5b32: $eb
    ld d, l                                       ; $5b33: $55
    ld [hl], l                                    ; $5b34: $75
    ld e, l                                       ; $5b35: $5d
    cp e                                          ; $5b36: $bb
    nop                                           ; $5b37: $00
    inc bc                                        ; $5b38: $03
    cp a                                          ; $5b39: $bf
    sub $98                                       ; $5b3a: $d6 $98
    inc de                                        ; $5b3c: $13
    ld e, [hl]                                    ; $5b3d: $5e
    ld d, b                                       ; $5b3e: $50
    or b                                          ; $5b3f: $b0
    xor [hl]                                      ; $5b40: $ae
    xor e                                         ; $5b41: $ab
    jp nc, $a5a7                                  ; $5b42: $d2 $a7 $a5

    ld d, b                                       ; $5b45: $50
    ld a, a                                       ; $5b46: $7f
    push bc                                       ; $5b47: $c5
    sub [hl]                                      ; $5b48: $96
    halt                                          ; $5b49: $76
    cp h                                          ; $5b4a: $bc
    inc l                                         ; $5b4b: $2c
    ld [c], a                                     ; $5b4c: $e2
    and [hl]                                      ; $5b4d: $a6
    ld [hl], c                                    ; $5b4e: $71
    xor l                                         ; $5b4f: $ad
    ld a, c                                       ; $5b50: $79
    ld d, b                                       ; $5b51: $50
    ld b, h                                       ; $5b52: $44
    ld a, c                                       ; $5b53: $79
    dec bc                                        ; $5b54: $0b
    daa                                           ; $5b55: $27
    db $fd                                        ; $5b56: $fd
    ld a, l                                       ; $5b57: $7d
    adc l                                         ; $5b58: $8d
    ld a, c                                       ; $5b59: $79
    ld c, b                                       ; $5b5a: $48
    ld l, e                                       ; $5b5b: $6b
    inc l                                         ; $5b5c: $2c
    sub [hl]                                      ; $5b5d: $96
    sub d                                         ; $5b5e: $92
    pop bc                                        ; $5b5f: $c1
    push af                                       ; $5b60: $f5
    and b                                         ; $5b61: $a0
    add hl, de                                    ; $5b62: $19
    rst $10                                       ; $5b63: $d7
    sbc d                                         ; $5b64: $9a
    rlca                                          ; $5b65: $07
    ld b, l                                       ; $5b66: $45
    inc d                                         ; $5b67: $14
    db $e3                                        ; $5b68: $e3
    or $63                                        ; $5b69: $f6 $63
    ld b, l                                       ; $5b6b: $45
    or c                                          ; $5b6c: $b1
    dec de                                        ; $5b6d: $1b
    add hl, de                                    ; $5b6e: $19
    ld c, e                                       ; $5b6f: $4b
    sub c                                         ; $5b70: $91
    rst $28                                       ; $5b71: $ef
    cp b                                          ; $5b72: $b8
    ld [de], a                                    ; $5b73: $12
    ld a, e                                       ; $5b74: $7b
    sbc a                                         ; $5b75: $9f
    sub $08                                       ; $5b76: $d6 $08
    ld a, h                                       ; $5b78: $7c
    ld e, h                                       ; $5b79: $5c
    ld sp, $65c5                                  ; $5b7a: $31 $c5 $65
    dec b                                         ; $5b7d: $05
    push hl                                       ; $5b7e: $e5
    ld d, c                                       ; $5b7f: $51
    sbc e                                         ; $5b80: $9b
    ret c                                         ; $5b81: $d8

    ld [bc], a                                    ; $5b82: $02
    dec e                                         ; $5b83: $1d
    sbc $5f                                       ; $5b84: $de $5f
    ld h, e                                       ; $5b86: $63
    adc l                                         ; $5b87: $8d
    adc l                                         ; $5b88: $8d
    inc hl                                        ; $5b89: $23
    dec l                                         ; $5b8a: $2d
    inc bc                                        ; $5b8b: $03
    ld [hl], a                                    ; $5b8c: $77
    inc l                                         ; $5b8d: $2c
    inc hl                                        ; $5b8e: $23
    scf                                           ; $5b8f: $37
    add $b0                                       ; $5b90: $c6 $b0
    inc d                                         ; $5b92: $14
    adc l                                         ; $5b93: $8d
    ld e, $90                                     ; $5b94: $1e $90
    ld d, [hl]                                    ; $5b96: $56
    ld l, h                                       ; $5b97: $6c
    and c                                         ; $5b98: $a1
    jp z, Jump_031_6bf0                           ; $5b99: $ca $f0 $6b

    call Call_031_5f03                            ; $5b9c: $cd $03 $5f
    jp c, $35d0                                   ; $5b9f: $da $d0 $35

    xor [hl]                                      ; $5ba2: $ae
    db $fd                                        ; $5ba3: $fd
    ld b, a                                       ; $5ba4: $47
    xor [hl]                                      ; $5ba5: $ae
    ld d, l                                       ; $5ba6: $55
    add [hl]                                      ; $5ba7: $86
    pop af                                        ; $5ba8: $f1
    cp $e0                                        ; $5ba9: $fe $e0
    xor a                                         ; $5bab: $af
    ld de, $ed21                                  ; $5bac: $11 $21 $ed
    inc hl                                        ; $5baf: $23
    rra                                           ; $5bb0: $1f
    ld a, a                                       ; $5bb1: $7f
    add b                                         ; $5bb2: $80
    and l                                         ; $5bb3: $a5
    adc b                                         ; $5bb4: $88
    ld a, [c]                                     ; $5bb5: $f2
    ld d, $59                                     ; $5bb6: $16 $59
    or [hl]                                       ; $5bb8: $b6
    ld c, d                                       ; $5bb9: $4a
    xor e                                         ; $5bba: $ab
    db $ec                                        ; $5bbb: $ec
    ld h, a                                       ; $5bbc: $67
    ld b, b                                       ; $5bbd: $40
    db $e3                                        ; $5bbe: $e3
    jp c, $9ad7                                   ; $5bbf: $da $d7 $9a

    ld [bc], a                                    ; $5bc2: $02
    ld sp, $452b                                  ; $5bc3: $31 $2b $45
    cp [hl]                                       ; $5bc6: $be
    db $ec                                        ; $5bc7: $ec

Jump_031_5bc8:
    rlca                                          ; $5bc8: $07

Call_031_5bc9:
    ld a, [c]                                     ; $5bc9: $f2
    add hl, de                                    ; $5bca: $19
    adc h                                         ; $5bcb: $8c
    push af                                       ; $5bcc: $f5
    ld c, d                                       ; $5bcd: $4a
    ld a, d                                       ; $5bce: $7a
    add $e8                                       ; $5bcf: $c6 $e8
    ld e, d                                       ; $5bd1: $5a
    push af                                       ; $5bd2: $f5
    cp $1a                                        ; $5bd3: $fe $1a
    ld l, e                                       ; $5bd5: $6b
    inc l                                         ; $5bd6: $2c
    ld e, a                                       ; $5bd7: $5f
    sub $5d                                       ; $5bd8: $d6 $5d
    ld b, c                                       ; $5bda: $41
    add e                                         ; $5bdb: $83
    ccf                                           ; $5bdc: $3f
    sub $2b                                       ; $5bdd: $d6 $2b
    ld l, c                                       ; $5bdf: $69
    add c                                         ; $5be0: $81
    ld c, a                                       ; $5be1: $4f
    sbc l                                         ; $5be2: $9d
    cpl                                           ; $5be3: $2f
    dec [hl]                                      ; $5be4: $35
    add h                                         ; $5be5: $84
    rst $28                                       ; $5be6: $ef
    ld a, a                                       ; $5be7: $7f
    sub l                                         ; $5be8: $95
    db $e4                                        ; $5be9: $e4
    ld [$8616], sp                                ; $5bea: $08 $16 $86
    sub c                                         ; $5bed: $91
    or a                                          ; $5bee: $b7
    and a                                         ; $5bef: $a7
    ld [c], a                                     ; $5bf0: $e2
    ld a, [hl-]                                   ; $5bf1: $3a
    ld h, b                                       ; $5bf2: $60
    call nz, $093a                                ; $5bf3: $c4 $3a $09
    ld e, c                                       ; $5bf6: $59
    ld e, a                                       ; $5bf7: $5f
    adc e                                         ; $5bf8: $8b
    cp e                                          ; $5bf9: $bb
    ld de, $0659                                  ; $5bfa: $11 $59 $06
    inc c                                         ; $5bfd: $0c
    ld l, c                                       ; $5bfe: $69
    ld [hl], l                                    ; $5bff: $75
    ld b, $7f                                     ; $5c00: $06 $7f
    call Call_000_2283                            ; $5c02: $cd $83 $22
    ld c, d                                       ; $5c05: $4a
    ld l, $5b                                     ; $5c06: $2e $5b
    xor e                                         ; $5c08: $ab
    inc [hl]                                      ; $5c09: $34
    xor [hl]                                      ; $5c0a: $ae
    jp z, $d73e                                   ; $5c0b: $ca $3e $d7

    ld [hl-], a                                   ; $5c0e: $32
    add b                                         ; $5c0f: $80
    ld h, e                                       ; $5c10: $63
    add hl, de                                    ; $5c11: $19
    db $eb                                        ; $5c12: $eb
    rrc l                                         ; $5c13: $cb $0d
    add hl, hl                                    ; $5c15: $29
    ld l, a                                       ; $5c16: $6f
    ld bc, $7759                                  ; $5c17: $01 $59 $77
    dec b                                         ; $5c1a: $05
    adc l                                         ; $5c1b: $8d
    sbc $9f                                       ; $5c1c: $de $9f
    ld d, l                                       ; $5c1e: $55
    xor b                                         ; $5c1f: $a8
    dec e                                         ; $5c20: $1d
    dec hl                                        ; $5c21: $2b
    xor a                                         ; $5c22: $af
    ldh a, [$7d]                                  ; $5c23: $f0 $7d
    dec l                                         ; $5c25: $2d
    inc bc                                        ; $5c26: $03
    jr c, jr_031_5c44                             ; $5c27: $38 $1b

    cp a                                          ; $5c29: $bf
    ld e, l                                       ; $5c2a: $5d
    rrca                                          ; $5c2b: $0f
    jr jr_031_5c67                                ; $5c2c: $18 $39

    xor l                                         ; $5c2e: $ad
    call c, $c27b                                 ; $5c2f: $dc $7b $c2
    ld [hl-], a                                   ; $5c32: $32
    xor [hl]                                      ; $5c33: $ae
    ld h, l                                       ; $5c34: $65
    or c                                          ; $5c35: $b1
    dec e                                         ; $5c36: $1d
    add e                                         ; $5c37: $83
    ld e, [hl]                                    ; $5c38: $5e
    jp $b2d6                                      ; $5c39: $c3 $d6 $b2


    ld e, [hl]                                    ; $5c3c: $5e
    ld a, c                                       ; $5c3d: $79
    ld d, l                                       ; $5c3e: $55
    ld a, [hl+]                                   ; $5c3f: $2a
    cp c                                          ; $5c40: $b9
    rst $38                                       ; $5c41: $ff
    ld a, [hl]                                    ; $5c42: $7e
    db $ed                                        ; $5c43: $ed

jr_031_5c44:
    and c                                         ; $5c44: $a1
    dec l                                         ; $5c45: $2d
    sbc l                                         ; $5c46: $9d
    ld e, $d0                                     ; $5c47: $1e $d0
    adc d                                         ; $5c49: $8a
    ld d, [hl]                                    ; $5c4a: $56
    cp l                                          ; $5c4b: $bd
    rst $08                                       ; $5c4c: $cf
    dec [hl]                                      ; $5c4d: $35
    adc [hl]                                      ; $5c4e: $8e
    or h                                          ; $5c4f: $b4
    inc c                                         ; $5c50: $0c
    ld l, b                                       ; $5c51: $68
    reti                                          ; $5c52: $d9


    ld e, d                                       ; $5c53: $5a
    nop                                           ; $5c54: $00
    add $e2                                       ; $5c55: $c6 $e2
    add hl, sp                                    ; $5c57: $39
    pop hl                                        ; $5c58: $e1
    cp b                                          ; $5c59: $b8
    ld d, [hl]                                    ; $5c5a: $56
    reti                                          ; $5c5b: $d9


    xor [hl]                                      ; $5c5c: $ae
    sub a                                         ; $5c5d: $97
    ld bc, $452c                                  ; $5c5e: $01 $2c $45
    db $e3                                        ; $5c61: $e3
    ld l, d                                       ; $5c62: $6a
    nop                                           ; $5c63: $00
    ld h, e                                       ; $5c64: $63
    add hl, de                                    ; $5c65: $19
    ret nc                                        ; $5c66: $d0

jr_031_5c67:
    or d                                          ; $5c67: $b2
    or l                                          ; $5c68: $b5
    nop                                           ; $5c69: $00
    adc h                                         ; $5c6a: $8c
    jp hl                                         ; $5c6b: $e9


    sub e                                         ; $5c6c: $93
    rst $18                                       ; $5c6d: $df
    ld d, [hl]                                    ; $5c6e: $56
    ld h, a                                       ; $5c6f: $67
    dec e                                         ; $5c70: $1d
    rra                                           ; $5c71: $1f
    ldh a, [$62]                                  ; $5c72: $f0 $62
    adc $6b                                       ; $5c74: $ce $6b
    rrca                                          ; $5c76: $0f
    ld l, l                                       ; $5c77: $6d
    ld bc, $dec7                                  ; $5c78: $01 $c7 $de
    ld l, d                                       ; $5c7b: $6a
    inc de                                        ; $5c7c: $13
    ld [hl], a                                    ; $5c7d: $77
    ld [hl-], a                                   ; $5c7e: $32
    ldh [$6c], a                                  ; $5c7f: $e0 $6c
    ld l, c                                       ; $5c81: $69

jr_031_5c82:
    ld b, e                                       ; $5c82: $43
    ld a, [de]                                    ; $5c83: $1a
    ld a, h                                       ; $5c84: $7c
    db $ed                                        ; $5c85: $ed
    ld d, l                                       ; $5c86: $55
    ld a, [hl+]                                   ; $5c87: $2a
    ld [hl+], a                                   ; $5c88: $22
    jp nc, $d18c                                  ; $5c89: $d2 $8c $d1

    or l                                          ; $5c8c: $b5
    ld c, d                                       ; $5c8d: $4a
    or c                                          ; $5c8e: $b1
    db $f4                                        ; $5c8f: $f4
    ei                                            ; $5c90: $fb
    call c, $c53e                                 ; $5c91: $dc $3e $c5
    jr c, jr_031_5c82                             ; $5c94: $38 $ec

    ld h, d                                       ; $5c96: $62
    dec de                                        ; $5c97: $1b
    ld [hl], b                                    ; $5c98: $70
    ld a, a                                       ; $5c99: $7f
    cp a                                          ; $5c9a: $bf
    or $d0                                        ; $5c9b: $f6 $d0
    ld d, $1d                                     ; $5c9d: $16 $1d
    ld e, $26                                     ; $5c9f: $1e $26
    rst $00                                       ; $5ca1: $c7
    db $ed                                        ; $5ca2: $ed
    rst $00                                       ; $5ca3: $c7
    adc d                                         ; $5ca4: $8a
    db $ed                                        ; $5ca5: $ed
    ld a, [hl+]                                   ; $5ca6: $2a
    ld d, $a1                                     ; $5ca7: $16 $a1
    ld [hl], c                                    ; $5ca9: $71
    db $ed                                        ; $5caa: $ed
    sub h                                         ; $5cab: $94
    rst $00                                       ; $5cac: $c7
    ld [bc], a                                    ; $5cad: $02
    dec h                                         ; $5cae: $25
    sub a                                         ; $5caf: $97
    xor l                                         ; $5cb0: $ad
    ld d, l                                       ; $5cb1: $55
    and $17                                       ; $5cb2: $e6 $17
    ld e, e                                       ; $5cb4: $5b
    dec bc                                        ; $5cb5: $0b
    ldh a, [$71]                                  ; $5cb6: $f0 $71
    push bc                                       ; $5cb8: $c5
    sbc [hl]                                      ; $5cb9: $9e
    jr nz, @+$1f                                  ; $5cba: $20 $1d

    ld a, c                                       ; $5cbc: $79
    dec bc                                        ; $5cbd: $0b
    sbc l                                         ; $5cbe: $9d

jr_031_5cbf:
    ld e, $d0                                     ; $5cbf: $1e $d0
    ld l, $2d                                     ; $5cc1: $2e $2d
    inc bc                                        ; $5cc3: $03
    ld e, d                                       ; $5cc4: $5a
    or [hl]                                       ; $5cc5: $b6
    add $3c                                       ; $5cc6: $c6 $3c
    ldh [$6e], a                                  ; $5cc8: $e0 $6e
    jr @-$35                                      ; $5cca: $18 $c9

    ld e, l                                       ; $5ccc: $5d
    ld [hl], a                                    ; $5ccd: $77
    dec b                                         ; $5cce: $05
    xor l                                         ; $5ccf: $ad
    cp d                                          ; $5cd0: $ba
    ld e, e                                       ; $5cd1: $5b
    add hl, hl                                    ; $5cd2: $29
    rst $28                                       ; $5cd3: $ef
    or e                                          ; $5cd4: $b3
    db $e4                                        ; $5cd5: $e4
    adc e                                         ; $5cd6: $8b
    rlca                                          ; $5cd7: $07
    ld sp, $daf8                                  ; $5cd8: $31 $f8 $da
    push af                                       ; $5cdb: $f5
    ld b, b                                       ; $5cdc: $40
    ld b, h                                       ; $5cdd: $44
    sbc d                                         ; $5cde: $9a
    cp $9a                                        ; $5cdf: $fe $9a
    ld [bc], a                                    ; $5ce1: $02
    sub l                                         ; $5ce2: $95
    ld h, d                                       ; $5ce3: $62
    ld e, h                                       ; $5ce4: $5c
    ld l, e                                       ; $5ce5: $6b
    ld e, $14                                     ; $5ce6: $1e $14
    ld d, c                                       ; $5ce8: $51
    sbc $02                                       ; $5ce9: $de $02
    ld e, c                                       ; $5ceb: $59
    ld [hl+], a                                   ; $5cec: $22
    jp nc, Jump_000_18d8                          ; $5ced: $d2 $d8 $18

    db $f4                                        ; $5cf0: $f4
    ret nc                                        ; $5cf1: $d0

    dec [hl]                                      ; $5cf2: $35
    xor [hl]                                      ; $5cf3: $ae
    dec [hl]                                      ; $5cf4: $35
    rrca                                          ; $5cf5: $0f
    adc d                                         ; $5cf6: $8a
    jr z, jr_031_5cbf                             ; $5cf7: $28 $c6

    push bc                                       ; $5cf9: $c5
    and b                                         ; $5cfa: $a0
    ld a, $8d                                     ; $5cfb: $3e $8d
    cp h                                          ; $5cfd: $bc
    ld l, [hl]                                    ; $5cfe: $6e
    inc l                                         ; $5cff: $2c
    ld l, [hl]                                    ; $5d00: $6e
    adc [hl]                                      ; $5d01: $8e
    add d                                         ; $5d02: $82
    ld d, b                                       ; $5d03: $50
    ld l, l                                       ; $5d04: $6d
    ld h, d                                       ; $5d05: $62
    dec bc                                        ; $5d06: $0b
    push af                                       ; $5d07: $f5
    rst $28                                       ; $5d08: $ef
    add [hl]                                      ; $5d09: $86
    ld l, e                                       ; $5d0a: $6b
    inc l                                         ; $5d0b: $2c
    and [hl]                                      ; $5d0c: $a6
    rst $08                                       ; $5d0d: $cf
    and b                                         ; $5d0e: $a0
    add $b5                                       ; $5d0f: $c6 $b5
    add $bc                                       ; $5d11: $c6 $bc
    ret z                                         ; $5d13: $c8

    di                                            ; $5d14: $f3
    ld h, l                                       ; $5d15: $65
    db $dd                                        ; $5d16: $dd
    dec d                                         ; $5d17: $15
    or h                                          ; $5d18: $b4

Jump_031_5d19:
    add $62                                       ; $5d19: $c6 $62
    push bc                                       ; $5d1b: $c5
    add $72                                       ; $5d1c: $c6 $72
    ei                                            ; $5d1e: $fb
    ld e, h                                       ; $5d1f: $5c
    ld c, e                                       ; $5d20: $4b
    ccf                                           ; $5d21: $3f
    xor a                                         ; $5d22: $af
    inc [hl]                                      ; $5d23: $34
    add e                                         ; $5d24: $83
    db $ec                                        ; $5d25: $ec
    rlca                                          ; $5d26: $07
    adc $ef                                       ; $5d27: $ce $ef
    ld l, h                                       ; $5d29: $6c
    ret nz                                        ; $5d2a: $c0

    cp h                                          ; $5d2b: $bc
    dec b                                         ; $5d2c: $05
    add a                                         ; $5d2d: $87
    xor a                                         ; $5d2e: $af
    ld a, d                                       ; $5d2f: $7a
    ld a, a                                       ; $5d30: $7f
    add $60                                       ; $5d31: $c6 $60
    inc h                                         ; $5d33: $24
    ld [hl], a                                    ; $5d34: $77
    jp z, $8163                                   ; $5d35: $ca $63 $81

    and [hl]                                      ; $5d38: $a6
    ld [$8d43], sp                                ; $5d39: $08 $43 $8d
    ld l, e                                       ; $5d3c: $6b
    db $fc                                        ; $5d3d: $fc
    sub $14                                       ; $5d3e: $d6 $14
    xor b                                         ; $5d40: $a8
    db $e4                                        ; $5d41: $e4
    dec sp                                        ; $5d42: $3b
    add $6b                                       ; $5d43: $c6 $6b
    jp nc, $f7e9                                  ; $5d45: $d2 $e9 $f7

    ld sp, hl                                     ; $5d48: $f9
    di                                            ; $5d49: $f3
    inc a                                         ; $5d4a: $3c
    rst $08                                       ; $5d4b: $cf
    ld e, e                                       ; $5d4c: $5b
    push af                                       ; $5d4d: $f5
    dec [hl]                                      ; $5d4e: $35
    add $30                                       ; $5d4f: $c6 $30
    add $ed                                       ; $5d51: $c6 $ed
    rst $00                                       ; $5d53: $c7
    adc d                                         ; $5d54: $8a
    dec l                                         ; $5d55: $2d
    xor h                                         ; $5d56: $ac
    inc d                                         ; $5d57: $14
    adc l                                         ; $5d58: $8d
    ld l, e                                       ; $5d59: $6b
    dec d                                         ; $5d5a: $15
    inc b                                         ; $5d5b: $04
    ld h, [hl]                                    ; $5d5c: $66
    ld b, b                                       ; $5d5d: $40
    xor e                                         ; $5d5e: $ab
    xor $fa                                       ; $5d5f: $ee $fa
    db $e4                                        ; $5d61: $e4
    sub $ed                                       ; $5d62: $d6 $ed
    sub a                                         ; $5d64: $97
    daa                                           ; $5d65: $27
    ld d, a                                       ; $5d66: $57
    or h                                          ; $5d67: $b4
    add $5f                                       ; $5d68: $c6 $5f
    ld e, d                                       ; $5d6a: $5a
    ld de, $1f02                                  ; $5d6b: $11 $02 $1f
    ld b, a                                       ; $5d6e: $47
    ld e, d                                       ; $5d6f: $5a
    ld b, $b4                                     ; $5d70: $06 $b4
    ld l, h                                       ; $5d72: $6c
    db $ed                                        ; $5d73: $ed
    ld h, d                                       ; $5d74: $62
    db $db                                        ; $5d75: $db
    daa                                           ; $5d76: $27
    db $ed                                        ; $5d77: $ed
    ld a, d                                       ; $5d78: $7a
    ld d, l                                       ; $5d79: $55
    and l                                         ; $5d7a: $a5
    pop bc                                        ; $5d7b: $c1
    ld e, a                                       ; $5d7c: $5f
    di                                            ; $5d7d: $f3
    and b                                         ; $5d7e: $a0
    adc b                                         ; $5d7f: $88
    ld a, [c]                                     ; $5d80: $f2
    ld d, $f5                                     ; $5d81: $16 $f5
    or l                                          ; $5d83: $b5
    ld a, a                                       ; $5d84: $7f
    scf                                           ; $5d85: $37
    ld e, h                                       ; $5d86: $5c
    ld h, e                                       ; $5d87: $63
    ld sp, $d08b                                  ; $5d88: $31 $8b $d0
    ld sp, hl                                     ; $5d8b: $f9
    di                                            ; $5d8c: $f3
    dec de                                        ; $5d8d: $1b
    add e                                         ; $5d8e: $83
    ld [hl], c                                    ; $5d8f: $71
    ld e, e                                       ; $5d90: $5b
    di                                            ; $5d91: $f3
    ret nz                                        ; $5d92: $c0

    ld d, a                                       ; $5d93: $57
    cp l                                          ; $5d94: $bd
    ccf                                           ; $5d95: $3f
    ld [hl], l                                    ; $5d96: $75
    or [hl]                                       ; $5d97: $b6
    ld c, d                                       ; $5d98: $4a
    ccf                                           ; $5d99: $3f
    rst $18                                       ; $5d9a: $df
    ld [hl], c                                    ; $5d9b: $71
    ld h, l                                       ; $5d9c: $65
    adc h                                         ; $5d9d: $8c
    xor l                                         ; $5d9e: $ad
    ld a, c                                       ; $5d9f: $79
    ldh [$64], a                                  ; $5da0: $e0 $64
    sbc a                                         ; $5da2: $9f
    sub [hl]                                      ; $5da3: $96
    ld b, d                                       ; $5da4: $42
    db $fd                                        ; $5da5: $fd
    and l                                         ; $5da6: $a5
    xor l                                         ; $5da7: $ad
    sub h                                         ; $5da8: $94
    add a                                         ; $5da9: $87
    cp [hl]                                       ; $5daa: $be
    inc c                                         ; $5dab: $0c
    ld l, b                                       ; $5dac: $68
    reti                                          ; $5dad: $d9


    ld e, d                                       ; $5dae: $5a
    di                                            ; $5daf: $f3
    ld a, $d7                                     ; $5db0: $3e $d7
    ld [hl-], a                                   ; $5db2: $32
    and b                                         ; $5db3: $a0
    sub d                                         ; $5db4: $92
    ld bc, $62ed                                  ; $5db5: $01 $ed $62
    cp a                                          ; $5db8: $bf
    ld d, b                                       ; $5db9: $50
    sbc $02                                       ; $5dba: $de $02
    push af                                       ; $5dbc: $f5
    rst $28                                       ; $5dbd: $ef
    add [hl]                                      ; $5dbe: $86
    db $d3                                        ; $5dbf: $d3
    daa                                           ; $5dc0: $27
    ld a, l                                       ; $5dc1: $7d
    ld c, $e3                                     ; $5dc2: $0e $e3
    add sp, $5a                                   ; $5dc4: $e8 $5a
    ld b, $b4                                     ; $5dc6: $06 $b4
    cp b                                          ; $5dc8: $b8
    ld h, e                                       ; $5dc9: $63
    reti                                          ; $5dca: $d9


    cp a                                          ; $5dcb: $bf
    ld e, e                                       ; $5dcc: $5b
    ld [hl], l                                    ; $5dcd: $75
    dec hl                                        ; $5dce: $2b
    ld hl, sp+$5c                                 ; $5dcf: $f8 $5c
    ld l, e                                       ; $5dd1: $6b
    inc l                                         ; $5dd2: $2c
    ld d, $8a                                     ; $5dd3: $16 $8a
    ld e, l                                       ; $5dd5: $5d
    rrca                                          ; $5dd6: $0f
    inc a                                         ; $5dd7: $3c
    sub d                                         ; $5dd8: $92
    dec sp                                        ; $5dd9: $3b
    add hl, de                                    ; $5dda: $19
    ret nc                                        ; $5ddb: $d0

    ld e, l                                       ; $5ddc: $5d
    and l                                         ; $5ddd: $a5
    adc h                                         ; $5dde: $8c
    or c                                          ; $5ddf: $b1
    push de                                       ; $5de0: $d5
    xor h                                         ; $5de1: $ac
    jr jr_031_5e2a                                ; $5de2: $18 $46

    ret z                                         ; $5de4: $c8

    rst $00                                       ; $5de5: $c7
    dec d                                         ; $5de6: $15
    ld l, e                                       ; $5de7: $6b
    ld a, [bc]                                    ; $5de8: $0a
    ld d, h                                       ; $5de9: $54
    adc d                                         ; $5dea: $8a
    cp h                                          ; $5deb: $bc
    dec b                                         ; $5dec: $05
    daa                                           ; $5ded: $27
    ld l, b                                       ; $5dee: $68
    adc l                                         ; $5def: $8d
    cp a                                          ; $5df0: $bf
    or h                                          ; $5df1: $b4
    ld [hl+], a                                   ; $5df2: $22
    inc b                                         ; $5df3: $04
    cp [hl]                                       ; $5df4: $be
    ld c, $d7                                     ; $5df5: $0e $d7
    ld sp, $1bef                                  ; $5df7: $31 $ef $1b
    bit 1, d                                      ; $5dfa: $cb $4a
    sbc c                                         ; $5dfc: $99
    add d                                         ; $5dfd: $82
    ld b, $5f                                     ; $5dfe: $06 $5f
    ld h, e                                       ; $5e00: $63
    ld l, [hl]                                    ; $5e01: $6e
    adc [hl]                                      ; $5e02: $8e
    ld h, h                                       ; $5e03: $64
    xor c                                         ; $5e04: $a9
    and d                                         ; $5e05: $a2
    ld d, l                                       ; $5e06: $55
    ld [hl], l                                    ; $5e07: $75
    ld e, l                                       ; $5e08: $5d
    ld l, e                                       ; $5e09: $6b
    ld e, $14                                     ; $5e0a: $1e $14
    xor l                                         ; $5e0c: $ad
    ld a, c                                       ; $5e0d: $79
    ldh [$a3], a                                  ; $5e0e: $e0 $a3
    rlca                                          ; $5e10: $07
    or c                                          ; $5e11: $b1
    and d                                         ; $5e12: $a2
    ret c                                         ; $5e13: $d8

    ld sp, $935e                                  ; $5e14: $31 $5e $93
    ld c, [hl]                                    ; $5e17: $4e
    cp a                                          ; $5e18: $bf
    rst $08                                       ; $5e19: $cf
    sbc a                                         ; $5e1a: $9f
    rst $20                                       ; $5e1b: $e7
    dec l                                         ; $5e1c: $2d
    dec e                                         ; $5e1d: $1d
    xor d                                         ; $5e1e: $aa
    xor d                                         ; $5e1f: $aa
    ld [hl], $71                                  ; $5e20: $36 $71
    daa                                           ; $5e22: $27
    ret c                                         ; $5e23: $d8

    ld [c], a                                     ; $5e24: $e2
    ld b, c                                       ; $5e25: $41
    and e                                         ; $5e26: $a3
    add hl, de                                    ; $5e27: $19
    xor h                                         ; $5e28: $ac
    ld a, c                                       ; $5e29: $79

jr_031_5e2a:
    ld d, b                                       ; $5e2a: $50
    ld b, h                                       ; $5e2b: $44
    set 0, b                                      ; $5e2c: $cb $c0
    db $fd                                        ; $5e2e: $fd
    db $fd                                        ; $5e2f: $fd
    reti                                          ; $5e30: $d9


    ld a, [hl+]                                   ; $5e31: $2a
    ei                                            ; $5e32: $fb
    xor h                                         ; $5e33: $ac
    db $db                                        ; $5e34: $db
    inc c                                         ; $5e35: $0c
    add $6f                                       ; $5e36: $c6 $6f

Jump_031_5e38:
    reti                                          ; $5e38: $d9


    add d                                         ; $5e39: $82
    cpl                                           ; $5e3a: $2f
    xor a                                         ; $5e3b: $af
    ld c, l                                       ; $5e3c: $4d
    call c, Call_031_70c9                         ; $5e3d: $dc $c9 $70
    ld d, a                                       ; $5e40: $57
    ld d, b                                       ; $5e41: $50
    cp l                                          ; $5e42: $bd
    ld c, e                                       ; $5e43: $4b
    set 0, b                                      ; $5e44: $cb $c0
    ld e, l                                       ; $5e46: $5d
    and l                                         ; $5e47: $a5
    ld l, b                                       ; $5e48: $68
    scf                                           ; $5e49: $37
    ld [hl-], a                                   ; $5e4a: $32
    and h                                         ; $5e4b: $a4
    and l                                         ; $5e4c: $a5
    sbc $ff                                       ; $5e4d: $de $ff
    xor d                                         ; $5e4f: $aa
    ld c, l                                       ; $5e50: $4d
    ld l, h                                       ; $5e51: $6c
    ld bc, $b5f5                                  ; $5e52: $01 $f5 $b5
    db $eb                                        ; $5e55: $eb
    ld d, l                                       ; $5e56: $55
    sub l                                         ; $5e57: $95
    cp $a5                                        ; $5e58: $fe $a5
    push de                                       ; $5e5a: $d5
    add hl, de                                    ; $5e5b: $19
    db $e3                                        ; $5e5c: $e3
    add [hl]                                      ; $5e5d: $86
    sub l                                         ; $5e5e: $95
    ld a, $cd                                     ; $5e5f: $3e $cd
    sbc d                                         ; $5e61: $9a
    add $6f                                       ; $5e62: $c6 $6f
    rla                                           ; $5e64: $17
    jp z, $efc7                                   ; $5e65: $ca $c7 $ef

    or a                                          ; $5e68: $b7
    set 2, c                                      ; $5e69: $cb $d1
    dec [hl]                                      ; $5e6b: $35
    ld h, e                                       ; $5e6c: $63
    ld [hl], h                                    ; $5e6d: $74
    dec c                                         ; $5e6e: $0d
    cp [hl]                                       ; $5e6f: $be
    sub $14                                       ; $5e70: $d6 $14
    xor b                                         ; $5e72: $a8
    sub h                                         ; $5e73: $94
    or a                                          ; $5e74: $b7
    ld b, a                                       ; $5e75: $47
    cp h                                          ; $5e76: $bc
    ccf                                           ; $5e77: $3f
    ld [hl], d                                    ; $5e78: $72
    ld h, e                                       ; $5e79: $63
    inc c                                         ; $5e7a: $0c
    ld c, e                                       ; $5e7b: $4b
    ld [hl], d                                    ; $5e7c: $72
    rst $00                                       ; $5e7d: $c7
    sbc d                                         ; $5e7e: $9a
    ld a, e                                       ; $5e7f: $7b
    ld c, l                                       ; $5e80: $4d
    ld l, l                                       ; $5e81: $6d
    ld h, d                                       ; $5e82: $62
    dec bc                                        ; $5e83: $0b
    push af                                       ; $5e84: $f5
    rst $28                                       ; $5e85: $ef
    add [hl]                                      ; $5e86: $86
    ld h, e                                       ; $5e87: $63
    ld [hl], a                                    ; $5e88: $77
    ld c, c                                       ; $5e89: $49
    ld e, d                                       ; $5e8a: $5a
    ld b, $b4                                     ; $5e8b: $06 $b4
    and d                                         ; $5e8d: $a2
    ret c                                         ; $5e8e: $d8

    push af                                       ; $5e8f: $f5
    ret nz                                        ; $5e90: $c0

    ld h, e                                       ; $5e91: $63
    rst $10                                       ; $5e92: $d7
    xor e                                         ; $5e93: $ab
    ld a, [hl+]                                   ; $5e94: $2a
    db $fd                                        ; $5e95: $fd
    ld c, e                                       ; $5e96: $4b
    sbc a                                         ; $5e97: $9f
    ld l, d                                       ; $5e98: $6a
    inc de                                        ; $5e99: $13
    rst $10                                       ; $5e9a: $d7
    jp hl                                         ; $5e9b: $e9


    ld b, c                                       ; $5e9c: $41
    xor h                                         ; $5e9d: $ac
    jr z, jr_031_5f16                             ; $5e9e: $28 $76

    add [hl]                                      ; $5ea0: $86
    inc l                                         ; $5ea1: $2c
    adc d                                         ; $5ea2: $8a
    ld l, d                                       ; $5ea3: $6a
    sub [hl]                                      ; $5ea4: $96
    ld a, [hl]                                    ; $5ea5: $7e
    sbc a                                         ; $5ea6: $9f
    ld d, [hl]                                    ; $5ea7: $56
    inc b                                         ; $5ea8: $04
    ld e, $bb                                     ; $5ea9: $1e $bb
    ld de, $c570                                  ; $5eab: $11 $70 $c5
    ld [$e3ac], a                                 ; $5eae: $ea $ac $e3
    inc bc                                        ; $5eb1: $03
    ld e, [hl]                                    ; $5eb2: $5e
    call z, $de79                                 ; $5eb3: $cc $79 $de
    ld [bc], a                                    ; $5eb6: $02
    ld b, a                                       ; $5eb7: $47
    and b                                         ; $5eb8: $a0
    cp $b2                                        ; $5eb9: $fe $b2
    rra                                           ; $5ebb: $1f
    call c, Call_000_136a                         ; $5ebc: $dc $6a $13
    ld d, a                                       ; $5ebf: $57
    rst $38                                       ; $5ec0: $ff
    xor [hl]                                      ; $5ec1: $ae
    ld l, b                                       ; $5ec2: $68
    ld [$96ba], a                                 ; $5ec3: $ea $ba $96
    ld bc, $7aad                                  ; $5ec6: $01 $ad $7a
    jr c, @-$7b                                   ; $5ec9: $38 $83

    ld [$2e4c], sp                                ; $5ecb: $08 $4c $2e
    ei                                            ; $5ece: $fb
    adc [hl]                                      ; $5ecf: $8e
    ld l, [hl]                                    ; $5ed0: $6e
    cp b                                          ; $5ed1: $b8
    ld a, [hl-]                                   ; $5ed2: $3a
    dec sp                                        ; $5ed3: $3b
    add $6b                                       ; $5ed4: $c6 $6b
    jp nc, $f7e9                                  ; $5ed6: $d2 $e9 $f7

    ld sp, hl                                     ; $5ed9: $f9
    di                                            ; $5eda: $f3

jr_031_5edb:
    jp c, $16c4                                   ; $5edb: $da $c4 $16

    ld b, a                                       ; $5ede: $47
    db $fd                                        ; $5edf: $fd
    dec [hl]                                      ; $5ee0: $35
    dec b                                         ; $5ee1: $05
    ld h, d                                       ; $5ee2: $62
    ld e, h                                       ; $5ee3: $5c
    dec hl                                        ; $5ee4: $2b
    ld [bc], a                                    ; $5ee5: $02
    ld e, a                                       ; $5ee6: $5f
    ld c, d                                       ; $5ee7: $4a
    ld d, a                                       ; $5ee8: $57
    ld [hl], d                                    ; $5ee9: $72
    sub a                                         ; $5eea: $97
    sbc h                                         ; $5eeb: $9c
    inc c                                         ; $5eec: $0c

jr_031_5eed:
    ld a, a                                       ; $5eed: $7f
    adc h                                         ; $5eee: $8c
    push hl                                       ; $5eef: $e5
    sbc b                                         ; $5ef0: $98
    ld c, [hl]                                    ; $5ef1: $4e
    cp a                                          ; $5ef2: $bf
    rra                                           ; $5ef3: $1f
    ld a, e                                       ; $5ef4: $7b
    sbc a                                         ; $5ef5: $9f
    add $15                                       ; $5ef6: $c6 $15
    db $e3                                        ; $5ef8: $e3
    ld a, [$b314]                                 ; $5ef9: $fa $14 $b3
    db $eb                                        ; $5efc: $eb
    and $37                                       ; $5efd: $e6 $37
    ld b, l                                       ; $5eff: $45
    sbc $02                                       ; $5f00: $de $02
    daa                                           ; $5f02: $27

Call_031_5f03:
    jr z, jr_031_5edb                             ; $5f03: $28 $d6

    inc a                                         ; $5f05: $3c
    jr z, @-$5c                                   ; $5f06: $28 $a2

    ret c                                         ; $5f08: $d8

    cp a                                          ; $5f09: $bf
    cp a                                          ; $5f0a: $bf
    ld c, a                                       ; $5f0b: $4f
    ld l, e                                       ; $5f0c: $6b
    inc b                                         ; $5f0d: $04
    ld d, h                                       ; $5f0e: $54
    xor a                                         ; $5f0f: $af
    ld l, e                                       ; $5f10: $6b
    ld [hl], d                                    ; $5f11: $72
    xor l                                         ; $5f12: $ad
    or c                                          ; $5f13: $b1
    jr jr_031_5eed                                ; $5f14: $18 $d7

jr_031_5f16:
    ld c, d                                       ; $5f16: $4a
    ld e, l                                       ; $5f17: $5d
    add $15                                       ; $5f18: $c6 $15
    xor e                                         ; $5f1a: $ab
    inc c                                         ; $5f1b: $0c
    ld h, e                                       ; $5f1c: $63
    sub a                                         ; $5f1d: $97
    sbc h                                         ; $5f1e: $9c
    inc c                                         ; $5f1f: $0c
    ld a, a                                       ; $5f20: $7f
    adc h                                         ; $5f21: $8c
    push hl                                       ; $5f22: $e5
    sbc b                                         ; $5f23: $98
    ld c, [hl]                                    ; $5f24: $4e
    cp a                                          ; $5f25: $bf
    rra                                           ; $5f26: $1f
    ld a, e                                       ; $5f27: $7b
    sbc a                                         ; $5f28: $9f
    add $15                                       ; $5f29: $c6 $15
    db $e3                                        ; $5f2b: $e3
    ld a, [$7914]                                 ; $5f2c: $fa $14 $79
    dec bc                                        ; $5f2f: $0b
    push af                                       ; $5f30: $f5
    or l                                          ; $5f31: $b5
    nop                                           ; $5f32: $00
    adc h                                         ; $5f33: $8c
    sub c                                         ; $5f34: $91
    ld c, d                                       ; $5f35: $4a
    ld d, c                                       ; $5f36: $51
    and l                                         ; $5f37: $a5
    ld c, a                                       ; $5f38: $4f
    cp e                                          ; $5f39: $bb
    sbc $27                                       ; $5f3a: $de $27
    ld a, l                                       ; $5f3c: $7d
    jp nc, $bdf8                                  ; $5f3d: $d2 $f8 $bd

    ld l, e                                       ; $5f40: $6b
    ld [hl], d                                    ; $5f41: $72
    dec c                                         ; $5f42: $0d
    cpl                                           ; $5f43: $2f
    xor h                                         ; $5f44: $ac
    ld c, l                                       ; $5f45: $4d
    ld e, h                                       ; $5f46: $5c
    ld a, l                                       ; $5f47: $7d
    adc l                                         ; $5f48: $8d
    ld sp, $598c                                  ; $5f49: $31 $8c $59
    db $d3                                        ; $5f4c: $d3
    cp b                                          ; $5f4d: $b8
    ld a, $77                                     ; $5f4e: $3e $77
    adc l                                         ; $5f50: $8d
    ld d, h                                       ; $5f51: $54
    adc d                                         ; $5f52: $8a
    ld a, [hl+]                                   ; $5f53: $2a
    ld a, l                                       ; $5f54: $7d
    ld a, [de]                                    ; $5f55: $1a
    rst $10                                       ; $5f56: $d7
    ld l, $f6                                     ; $5f57: $2e $f6
    dec bc                                        ; $5f59: $0b
    ld b, l                                       ; $5f5a: $45
    ld l, l                                       ; $5f5b: $6d
    ld [c], a                                     ; $5f5c: $e2

jr_031_5f5d:
    or d                                          ; $5f5d: $b2
    xor $0a                                       ; $5f5e: $ee $0a
    ld e, d                                       ; $5f60: $5a
    ld a, [$8579]                                 ; $5f61: $fa $79 $85
    call c, $4552                                 ; $5f64: $dc $52 $45
    or l                                          ; $5f67: $b5
    adc c                                         ; $5f68: $89
    dec l                                         ; $5f69: $2d
    daa                                           ; $5f6a: $27
    or c                                          ; $5f6b: $b1
    rst $30                                       ; $5f6c: $f7
    rst $18                                       ; $5f6d: $df
    xor a                                         ; $5f6e: $af
    ld c, l                                       ; $5f6f: $4d
    ld e, h                                       ; $5f70: $5c
    ld b, a                                       ; $5f71: $47
    adc e                                         ; $5f72: $8b
    pop af                                        ; $5f73: $f1
    ld e, e                                       ; $5f74: $5b
    halt                                          ; $5f75: $76
    sbc l                                         ; $5f76: $9d
    dec d                                         ; $5f77: $15
    xor l                                         ; $5f78: $ad
    ld [hl-], a                                   ; $5f79: $32
    jp nz, $9b5f                                  ; $5f7a: $c2 $5f $9b

    ret c                                         ; $5f7d: $d8

    ld [bc], a                                    ; $5f7e: $02
    dec e                                         ; $5f7f: $1d
    ld e, $26                                     ; $5f80: $1e $26
    sub a                                         ; $5f82: $97
    ld a, l                                       ; $5f83: $7d
    scf                                           ; $5f84: $37
    xor h                                         ; $5f85: $ac
    or h                                          ; $5f86: $b4
    inc d                                         ; $5f87: $14
    ld [$28af], a                                 ; $5f88: $ea $af $28
    halt                                          ; $5f8b: $76
    dec a                                         ; $5f8c: $3d
    ldh a, [$58]                                  ; $5f8d: $f0 $58
    ld h, l                                       ; $5f8f: $65
    jr jr_031_5f5d                                ; $5f90: $18 $cb

    sub $1a                                       ; $5f92: $d6 $1a
    cp a                                          ; $5f94: $bf

jr_031_5f95:
    and l                                         ; $5f95: $a5
    db $eb                                        ; $5f96: $eb
    cp d                                          ; $5f97: $ba
    ld d, [hl]                                    ; $5f98: $56
    ld l, h                                       ; $5f99: $6c
    inc l                                         ; $5f9a: $2c
    or a                                          ; $5f9b: $b7
    ld [$32ad], sp                                ; $5f9c: $08 $ad $32
    jp nz, $537f                                  ; $5f9f: $c2 $7f $53

    ld l, l                                       ; $5fa2: $6d
    ld h, d                                       ; $5fa3: $62
    dec bc                                        ; $5fa4: $0b
    sbc l                                         ; $5fa5: $9d
    ld h, b                                       ; $5fa6: $60
    ld e, a                                       ; $5fa7: $5f
    cp e                                          ; $5fa8: $bb
    sbc $ff                                       ; $5fa9: $de $ff
    add [hl]                                      ; $5fab: $86
    ld sp, $0b83                                  ; $5fac: $31 $83 $0b
    cp [hl]                                       ; $5faf: $be
    halt                                          ; $5fb0: $76
    cp l                                          ; $5fb1: $bd
    ld a, [hl+]                                   ; $5fb2: $2a
    add l                                         ; $5fb3: $85
    rst $18                                       ; $5fb4: $df
    jr nc, jr_031_5f95                            ; $5fb5: $30 $de

    rra                                           ; $5fb7: $1f
    rst $10                                       ; $5fb8: $d7
    or d                                          ; $5fb9: $b2
    call z, $5149                                 ; $5fba: $cc $49 $51
    sbc e                                         ; $5fbd: $9b
    ret c                                         ; $5fbe: $d8

    ld [bc], a                                    ; $5fbf: $02
    sbc l                                         ; $5fc0: $9d
    ld d, b                                       ; $5fc1: $50
    ccf                                           ; $5fc2: $3f
    sub d                                         ; $5fc3: $92
    ld h, e                                       ; $5fc4: $63
    ld e, $c4                                     ; $5fc5: $1e $c4
    ld e, h                                       ; $5fc7: $5c
    call z, Call_031_52c3                         ; $5fc8: $cc $c3 $52
    daa                                           ; $5fcb: $27
    cp c                                          ; $5fcc: $b9
    ld h, e                                       ; $5fcd: $63
    call Call_000_26bd                            ; $5fce: $cd $bd $26
    rst $18                                       ; $5fd1: $df
    jp hl                                         ; $5fd2: $e9


    rrca                                          ; $5fd3: $0f
    ld h, d                                       ; $5fd4: $62
    add $e8                                       ; $5fd5: $c6 $e8
    db $fc                                        ; $5fd7: $fc
    sub c                                         ; $5fd8: $91
    ld c, d                                       ; $5fd9: $4a
    ld d, c                                       ; $5fda: $51
    and l                                         ; $5fdb: $a5
    ld c, a                                       ; $5fdc: $4f
    ld c, e                                       ; $5fdd: $4b
    and c                                         ; $5fde: $a1
    cp $98                                        ; $5fdf: $fe $98
    ld d, a                                       ; $5fe1: $57
    ld l, [hl]                                    ; $5fe2: $6e
    dec bc                                        ; $5fe3: $0b
    ldh a, [$31]                                  ; $5fe4: $f0 $31
    adc a                                         ; $5fe6: $8f
    ld e, h                                       ; $5fe7: $5c
    ld c, e                                       ; $5fe8: $4b
    ld e, c                                       ; $5fe9: $59
    ld sp, $3d1c                                  ; $5fea: $31 $1c $3d
    and b                                         ; $5fed: $a0
    push de                                       ; $5fee: $d5
    ld e, c                                       ; $5fef: $59
    cp c                                          ; $5ff0: $b9
    or e                                          ; $5ff1: $b3
    dec b                                         ; $5ff2: $05
    xor [hl]                                      ; $5ff3: $ae
    ld h, l                                       ; $5ff4: $65
    ld b, b                                       ; $5ff5: $40
    ret                                           ; $5ff6: $c9


    dec [hl]                                      ; $5ff7: $35
    rrca                                          ; $5ff8: $0f
    ld a, h                                       ; $5ff9: $7c
    call z, $9883                                 ; $5ffa: $cc $83 $98
    rst $18                                       ; $5ffd: $df
    xor [hl]                                      ; $5ffe: $ae
    ld d, a                                       ; $5fff: $57
    dec [hl]                                      ; $6000: $35
    ld a, [$4f21]                                 ; $6001: $fa $21 $4f
    ld l, $5b                                     ; $6004: $2e $5b
    ld h, e                                       ; $6006: $63
    ld e, $c4                                     ; $6007: $1e $c4
    inc c                                         ; $6009: $0c
    add sp, $39                                   ; $600a: $e8 $39
    add [hl]                                      ; $600c: $86
    ld d, [hl]                                    ; $600d: $56
    ld h, a                                       ; $600e: $67
    call z, $9883                                 ; $600f: $cc $83 $98
    ld a, $b9                                     ; $6012: $3e $b9
    ld [hl], l                                    ; $6014: $75
    ei                                            ; $6015: $fb
    push hl                                       ; $6016: $e5
    xor e                                         ; $6017: $ab
    or e                                          ; $6018: $b3
    ld h, d                                       ; $6019: $62
    ld l, e                                       ; $601a: $6b
    ld e, $78                                     ; $601b: $1e $78
    nop                                           ; $601d: $00
    sub d                                         ; $601e: $92
    add $35                                       ; $601f: $c6 $35
    ld [hl], $a6                                  ; $6021: $36 $a6
    ld e, $e4                                     ; $6023: $1e $e4
    dec l                                         ; $6025: $2d
    ld b, a                                       ; $6026: $47
    cp h                                          ; $6027: $bc
    ccf                                           ; $6028: $3f
    ld [hl], d                                    ; $6029: $72
    ld h, e                                       ; $602a: $63
    inc c                                         ; $602b: $0c
    ld c, e                                       ; $602c: $4b
    ld [hl], d                                    ; $602d: $72
    rst $00                                       ; $602e: $c7
    sbc d                                         ; $602f: $9a
    ld a, e                                       ; $6030: $7b
    ld c, l                                       ; $6031: $4d
    cp [hl]                                       ; $6032: $be
    sbc l                                         ; $6033: $9d
    ld [hl+], a                                   ; $6034: $22
    ld b, [hl]                                    ; $6035: $46
    ld e, a                                       ; $6036: $5f
    rst $20                                       ; $6037: $e7
    adc a                                         ; $6038: $8f
    ld a, c                                       ; $6039: $79

Call_031_603a:
    ld b, l                                       ; $603a: $45
    ld a, $63                                     ; $603b: $3e $63
    ld [hl], h                                    ; $603d: $74
    adc l                                         ; $603e: $8d
    ld a, c                                       ; $603f: $79
    db $e4                                        ; $6040: $e4
    ld e, d                                       ; $6041: $5a
    jp z, $e18a                                   ; $6042: $ca $8a $e1

    ld [hl-], a                                   ; $6045: $32
    ld h, b                                       ; $6046: $60
    sbc a                                         ; $6047: $9f
    adc a                                         ; $6048: $8f
    ld a, c                                       ; $6049: $79
    db $10                                        ; $604a: $10
    ld h, e                                       ; $604b: $63
    ld e, $14                                     ; $604c: $1e $14
    sbc l                                         ; $604e: $9d
    ld e, a                                       ; $604f: $5f
    sbc e                                         ; $6050: $9b
    ret c                                         ; $6051: $d8

    ld [bc], a                                    ; $6052: $02
    daa                                           ; $6053: $27
    add e                                         ; $6054: $83
    ld c, d                                       ; $6055: $4a
    ld b, $ee                                     ; $6056: $06 $ee
    ldh a, [$f7]                                  ; $6058: $f0 $f7
    rra                                           ; $605a: $1f
    call nz, Call_000_1c6c                        ; $605b: $c4 $6c $1c
    ld l, c                                       ; $605e: $69
    ld e, h                                       ; $605f: $5c
    inc hl                                        ; $6060: $23
    ld a, a                                       ; $6061: $7f
    ret nz                                        ; $6062: $c0

    ret z                                         ; $6063: $c8

    ld d, a                                       ; $6064: $57
    or h                                          ; $6065: $b4
    or h                                          ; $6066: $b4
    ld a, l                                       ; $6067: $7d
    ld [$d2ae], a                                 ; $6068: $ea $ae $d2
    cp b                                          ; $606b: $b8

jr_031_606c:
    ld d, [hl]                                    ; $606c: $56
    ld l, h                                       ; $606d: $6c
    sub l                                         ; $606e: $95
    ld h, c                                       ; $606f: $61
    cp h                                          ; $6070: $bc
    ccf                                           ; $6071: $3f
    xor [hl]                                      ; $6072: $ae
    ret c                                         ; $6073: $d8

    ld sp, $935e                                  ; $6074: $31 $5e $93
    ld c, [hl]                                    ; $6077: $4e
    cp a                                          ; $6078: $bf
    rst $08                                       ; $6079: $cf
    sbc a                                         ; $607a: $9f
    rst $20                                       ; $607b: $e7
    dec sp                                        ; $607c: $3b
    ld [$1e8f], a                                 ; $607d: $ea $8f $1e
    ret nc                                        ; $6080: $d0

    ld l, $8b                                     ; $6081: $2e $8b
    db $e4                                        ; $6083: $e4
    xor d                                         ; $6084: $aa
    add a                                         ; $6085: $87
    ret                                           ; $6086: $c9


    ld h, l                                       ; $6087: $65
    ld l, e                                       ; $6088: $6b
    ld e, a                                       ; $6089: $5f
    dec hl                                        ; $608a: $2b
    ld [hl], a                                    ; $608b: $77
    jp $1635                                      ; $608c: $c3 $35 $16


    ld h, e                                       ; $608f: $63
    ld h, b                                       ; $6090: $60
    ld [hl], l                                    ; $6091: $75
    halt                                          ; $6092: $76
    adc c                                         ; $6093: $89
    halt                                          ; $6094: $76
    inc hl                                        ; $6095: $23
    ld h, e                                       ; $6096: $63
    add hl, hl                                    ; $6097: $29
    ld l, a                                       ; $6098: $6f
    ld bc, $6c59                                  ; $6099: $01 $59 $6c
    res 0, b                                      ; $609c: $cb $80
    sub [hl]                                      ; $609e: $96
    or [hl]                                       ; $609f: $b6
    ld c, a                                       ; $60a0: $4f
    db $dd                                        ; $60a1: $dd
    ld d, l                                       ; $60a2: $55
    jp c, $fef5                                   ; $60a3: $da $f5 $fe

jr_031_60a6:
    or a                                          ; $60a6: $b7
    ld l, [hl]                                    ; $60a7: $6e
    ld l, c                                       ; $60a8: $69
    ld b, l                                       ; $60a9: $45
    xor e                                         ; $60aa: $ab
    ld e, $8d                                     ; $60ab: $1e $8d
    ld l, e                                       ; $60ad: $6b
    adc l                                         ; $60ae: $8d
    ld b, l                                       ; $60af: $45
    ld l, b                                       ; $60b0: $68
    ld e, h                                       ; $60b1: $5c
    dec bc                                        ; $60b2: $0b
    ld e, e                                       ; $60b3: $5b

jr_031_60b4:
    ld h, l                                       ; $60b4: $65
    jr jr_031_60a6                                ; $60b5: $18 $ef

    daa                                           ; $60b7: $27
    ld d, a                                       ; $60b8: $57
    add hl, de                                    ; $60b9: $19
    add $b2                                       ; $60ba: $c6 $b2
    rst $28                                       ; $60bc: $ef
    add [hl]                                      ; $60bd: $86
    ld c, e                                       ; $60be: $4b
    and c                                         ; $60bf: $a1
    cp $c8                                        ; $60c0: $fe $c8
    ld e, a                                       ; $60c2: $5f
    or e                                          ; $60c3: $b3
    ld b, [hl]                                    ; $60c4: $46

Jump_031_60c5:
    ldh [rOCPD], a                                ; $60c5: $e0 $6b
    ld e, $f8                                     ; $60c7: $1e $f8
    adc d                                         ; $60c9: $8a
    ld d, [hl]                                    ; $60ca: $56
    inc b                                         ; $60cb: $04
    ld a, $ae                                     ; $60cc: $3e $ae
    jp z, $973e                                   ; $60ce: $ca $3e $97

    rst $20                                       ; $60d1: $e7
    dec l                                         ; $60d2: $2d
    daa                                           ; $60d3: $27
    jr z, jr_031_606c                             ; $60d4: $28 $96

    or [hl]                                       ; $60d6: $b6
    ld c, a                                       ; $60d7: $4f
    db $dd                                        ; $60d8: $dd

jr_031_60d9:
    ld d, l                                       ; $60d9: $55
    adc d                                         ; $60da: $8a
    ld [hl], c                                    ; $60db: $71
    push bc                                       ; $60dc: $c5
    ld a, [hl+]                                   ; $60dd: $2a
    jp Jump_000_3f78                              ; $60de: $c3 $78 $3f


    halt                                          ; $60e1: $76
    cp l                                          ; $60e2: $bd
    rst $38                                       ; $60e3: $ff
    dec c                                         ; $60e4: $0d
    inc hl                                        ; $60e5: $23
    db $f4                                        ; $60e6: $f4
    ld l, c                                       ; $60e7: $69
    ld b, l                                       ; $60e8: $45
    or c                                          ; $60e9: $b1
    ld [$8c51], a                                 ; $60ea: $ea $51 $8c
    ld l, e                                       ; $60ed: $6b
    adc l                                         ; $60ee: $8d
    ld b, l                                       ; $60ef: $45
    jr z, jr_031_6151                             ; $60f0: $28 $5f

    daa                                           ; $60f2: $27
    jr jr_031_610c                                ; $60f3: $18 $17

    db $e3                                        ; $60f5: $e3
    add [hl]                                      ; $60f6: $86
    ld sp, $5dfd                                  ; $60f7: $31 $fd $5d
    ld l, h                                       ; $60fa: $6c
    ld sp, hl                                     ; $60fb: $f9
    push bc                                       ; $60fc: $c5
    sub [hl]                                      ; $60fd: $96
    rrca                                          ; $60fe: $0f
    cp $9a                                        ; $60ff: $fe $9a
    rlca                                          ; $6101: $07
    cp [hl]                                       ; $6102: $be
    ld [bc], a                                    ; $6103: $02
    jr c, jr_031_60b4                             ; $6104: $38 $ae

    jp z, $973e                                   ; $6106: $ca $3e $97

    rst $10                                       ; $6109: $d7
    ld h, $b6                                     ; $610a: $26 $b6

jr_031_610c:
    daa                                           ; $610c: $27
    jr z, @-$68                                   ; $610d: $28 $96

    or [hl]                                       ; $610f: $b6
    ld c, a                                       ; $6110: $4f
    db $dd                                        ; $6111: $dd
    ld d, l                                       ; $6112: $55
    adc d                                         ; $6113: $8a
    add hl, de                                    ; $6114: $19
    ld a, a                                       ; $6115: $7f
    xor [hl]                                      ; $6116: $ae
    ld c, a                                       ; $6117: $4f
    dec bc                                        ; $6118: $0b
    xor l                                         ; $6119: $ad
    pop af                                        ; $611a: $f1
    ld d, a                                       ; $611b: $57
    jp hl                                         ; $611c: $e9


    bit 2, a                                      ; $611d: $cb $57
    ld l, h                                       ; $611f: $6c
    rra                                           ; $6120: $1f
    sub b                                         ; $6121: $90
    sub d                                         ; $6122: $92
    jp $bb12                                      ; $6123: $c3 $12 $bb


    sbc $ff                                       ; $6126: $de $ff
    add [hl]                                      ; $6128: $86
    ld de, $b4fa                                  ; $6129: $11 $fa $b4
    inc d                                         ; $612c: $14
    ld [$2b8f], a                                 ; $612d: $ea $8f $2b
    ld d, $ba                                     ; $6130: $16 $ba
    ld e, h                                       ; $6132: $5c
    inc d                                         ; $6133: $14
    or l                                          ; $6134: $b5
    adc c                                         ; $6135: $89
    db $eb                                        ; $6136: $eb
    jr z, jr_031_60d9                             ; $6137: $28 $a0

    ld a, d                                       ; $6139: $7a
    ld e, l                                       ; $613a: $5d
    sub e                                         ; $613b: $93
    ld l, e                                       ; $613c: $6b

jr_031_613d:
    ld d, l                                       ; $613d: $55
    rst $10                                       ; $613e: $d7
    sub l                                         ; $613f: $95
    add $15                                       ; $6140: $c6 $15
    xor e                                         ; $6142: $ab
    ld e, $c5                                     ; $6143: $1e $c5
    cp b                                          ; $6145: $b8
    sub $58                                       ; $6146: $d6 $58
    add h                                         ; $6148: $84
    ld l, d                                       ; $6149: $6a
    inc de                                        ; $614a: $13
    ld e, e                                       ; $614b: $5b
    and a                                         ; $614c: $a7
    db $db                                        ; $614d: $db
    inc c                                         ; $614e: $0c
    sub $bf                                       ; $614f: $d6 $bf

jr_031_6151:
    halt                                          ; $6151: $76
    inc hl                                        ; $6152: $23
    ld h, e                                       ; $6153: $63
    ld l, c                                       ; $6154: $69
    and d                                         ; $6155: $a2
    pop hl                                        ; $6156: $e1
    daa                                           ; $6157: $27
    cp c                                          ; $6158: $b9
    ccf                                           ; $6159: $3f
    sub [hl]                                      ; $615a: $96
    ld d, [hl]                                    ; $615b: $56
    or h                                          ; $615c: $b4
    add $55                                       ; $615d: $c6 $55
    and c                                         ; $615f: $a1
    ld a, h                                       ; $6160: $7c
    ld l, c                                       ; $6161: $69
    ei                                            ; $6162: $fb
    call nc, $a55d                                ; $6163: $d4 $5d $a5
    ld h, l                                       ; $6166: $65
    ld b, b                                       ; $6167: $40
    inc hl                                        ; $6168: $23
    sbc b                                         ; $6169: $98
    db $eb                                        ; $616a: $eb
    ld e, a                                       ; $616b: $5f
    rst $28                                       ; $616c: $ef
    sub e                                         ; $616d: $93
    dec hl                                        ; $616e: $2b
    ld a, [c]                                     ; $616f: $f2
    ld d, $27                                     ; $6170: $16 $27
    ld [c], a                                     ; $6172: $e2
    ld [hl], l                                    ; $6173: $75
    xor $4e                                       ; $6174: $ee $4e
    ld b, $0b                                     ; $6176: $06 $0b
    xor h                                         ; $6178: $ac
    ld [hl], a                                    ; $6179: $77
    xor d                                         ; $617a: $aa
    db $fd                                        ; $617b: $fd
    xor b                                         ; $617c: $a8
    rst $10                                       ; $617d: $d7
    xor c                                         ; $617e: $a9
    ld l, e                                       ; $617f: $6b
    jp nc, $f6d8                                  ; $6180: $d2 $d8 $f6

    ld c, c                                       ; $6183: $49
    dec hl                                        ; $6184: $2b
    or [hl]                                       ; $6185: $b6
    jp z, $de30                                   ; $6186: $ca $30 $de

    rra                                           ; $6189: $1f
    ld d, a                                       ; $618a: $57
    db $ec                                        ; $618b: $ec
    jr jr_031_613d                                ; $618c: $18 $af

    ld c, c                                       ; $618e: $49
    and a                                         ; $618f: $a7
    rst $18                                       ; $6190: $df
    rst $20                                       ; $6191: $e7
    rst $08                                       ; $6192: $cf
    rst $00                                       ; $6193: $c7
    push de                                       ; $6194: $d5
    nop                                           ; $6195: $00
    add $9a                                       ; $6196: $c6 $9a
    ld [bc], a                                    ; $6198: $02
    or c                                          ; $6199: $b1
    ld a, [c]                                     ; $619a: $f2
    ld a, $8b                                     ; $619b: $3e $8b
    ld d, h                                       ; $619d: $54
    dec [hl]                                      ; $619e: $35
    or c                                          ; $619f: $b1
    inc c                                         ; $61a0: $0c
    ld l, b                                       ; $61a1: $68
    rst $38                                       ; $61a2: $ff
    adc [hl]                                      ; $61a3: $8e
    ld d, l                                       ; $61a4: $55
    di                                            ; $61a5: $f3
    sbc h                                         ; $61a6: $9c
    or h                                          ; $61a7: $b4
    inc c                                         ; $61a8: $0c
    ldh [$f8], a                                  ; $61a9: $e0 $f8
    db $dd                                        ; $61ab: $dd
    add b                                         ; $61ac: $80
    ld e, h                                       ; $61ad: $5c
    ld sp, hl                                     ; $61ae: $f9
    adc [hl]                                      ; $61af: $8e
    dec hl                                        ; $61b0: $2b
    ld l, e                                       ; $61b1: $6b
    ld e, $b8                                     ; $61b2: $1e $b8
    db $db                                        ; $61b4: $db
    and d                                         ; $61b5: $a2
    rlca                                          ; $61b6: $07
    ld d, a                                       ; $61b7: $57
    and l                                         ; $61b8: $a5
    ld c, a                                       ; $61b9: $4f
    inc hl                                        ; $61ba: $23
    call Call_031_43f5                            ; $61bb: $cd $f5 $43
    ret z                                         ; $61be: $c8

    ld a, [$bcf2]                                 ; $61bf: $fa $f2 $bc
    dec b                                         ; $61c2: $05
    and a                                         ; $61c3: $a7
    db $db                                        ; $61c4: $db
    sbc b                                         ; $61c5: $98
    add a                                         ; $61c6: $87
    cp [hl]                                       ; $61c7: $be
    and d                                         ; $61c8: $a2
    and l                                         ; $61c9: $a5
    db $ed                                        ; $61ca: $ed
    ld d, e                                       ; $61cb: $53
    ld [hl], a                                    ; $61cc: $77
    sub l                                         ; $61cd: $95
    add $b5                                       ; $61ce: $c6 $b5
    ld h, d                                       ; $61d0: $62
    xor e                                         ; $61d1: $ab
    inc c                                         ; $61d2: $0c
    db $e3                                        ; $61d3: $e3
    db $fd                                        ; $61d4: $fd
    ld [hl], c                                    ; $61d5: $71
    push bc                                       ; $61d6: $c5
    adc [hl]                                      ; $61d7: $8e
    pop af                                        ; $61d8: $f1
    sbc d                                         ; $61d9: $9a
    ld [hl], h                                    ; $61da: $74
    ld a, [$fe7d]                                 ; $61db: $fa $7d $fe
    inc a                                         ; $61de: $3c
    add hl, sp                                    ; $61df: $39
    ld a, [c]                                     ; $61e0: $f2
    add a                                         ; $61e1: $87
    or c                                          ; $61e2: $b1
    dec de                                        ; $61e3: $1b
    add hl, de                                    ; $61e4: $19
    ld c, e                                       ; $61e5: $4b
    or c                                          ; $61e6: $b1
    and [hl]                                      ; $61e7: $a6
    ld b, b                                       ; $61e8: $40
    adc h                                         ; $61e9: $8c
    ld l, l                                       ; $61ea: $6d
    ld b, b                                       ; $61eb: $40
    ld a, c                                       ; $61ec: $79

jr_031_61ed:
    dec bc                                        ; $61ed: $0b
    and a                                         ; $61ee: $a7
    ld e, b                                       ; $61ef: $58
    db $d3                                        ; $61f0: $d3
    ld hl, sp-$45                                 ; $61f1: $f8 $bb
    ret c                                         ; $61f3: $d8

    xor d                                         ; $61f4: $aa
    ld b, a                                       ; $61f5: $47
    rrca                                          ; $61f6: $0f
    rlca                                          ; $61f7: $07
    ld a, a                                       ; $61f8: $7f
    adc l                                         ; $61f9: $8d
    ld h, b                                       ; $61fa: $60
    ld e, h                                       ; $61fb: $5c
    dec sp                                        ; $61fc: $3b
    add $6b                                       ; $61fd: $c6 $6b
    jp nc, $f7e9                                  ; $61ff: $d2 $e9 $f7

    ld sp, hl                                     ; $6202: $f9
    di                                            ; $6203: $f3
    dec [hl]                                      ; $6204: $35
    rrca                                          ; $6205: $0f
    ld a, h                                       ; $6206: $7c
    ld e, h                                       ; $6207: $5c
    sub l                                         ; $6208: $95
    ld a, l                                       ; $6209: $7d
    ld l, $1f                                     ; $620a: $2e $1f
    ld d, a                                       ; $620c: $57
    inc c                                         ; $620d: $0c
    ld a, a                                       ; $620e: $7f
    ld a, [$6579]                                 ; $620f: $fa $79 $65
    add h                                         ; $6212: $84
    rst $28                                       ; $6213: $ef
    ld b, a                                       ; $6214: $47
    ld [hl], d                                    ; $6215: $72
    adc d                                         ; $6216: $8a
    jr nc, jr_031_61ed                            ; $6217: $30 $d4

    adc d                                         ; $6219: $8a
    sub $bf                                       ; $621a: $d6 $bf
    halt                                          ; $621c: $76
    inc hl                                        ; $621d: $23

jr_031_621e:
    ld h, e                                       ; $621e: $63
    add hl, hl                                    ; $621f: $29
    rst $08                                       ; $6220: $cf
    di                                            ; $6221: $f3
    ld d, $9d                                     ; $6222: $16 $9d
    ld h, b                                       ; $6224: $60
    ld e, h                                       ; $6225: $5c
    adc h                                         ; $6226: $8c
    dec de                                        ; $6227: $1b
    add $f0                                       ; $6228: $c6 $f0
    sub e                                         ; $622a: $93
    call c, $4b1f                                 ; $622b: $dc $1f $4b
    cp [hl]                                       ; $622e: $be
    inc de                                        ; $622f: $13
    pop af                                        ; $6230: $f1
    ld a, [hl-]                                   ; $6231: $3a
    ld [hl], a                                    ; $6232: $77
    daa                                           ; $6233: $27
    add e                                         ; $6234: $83
    dec b                                         ; $6235: $05
    sub $3b                                       ; $6236: $d6 $3b
    push de                                       ; $6238: $d5
    ld a, [hl]                                    ; $6239: $7e
    call nc, $d4eb                                ; $623a: $d4 $eb $d4
    dec [hl]                                      ; $623d: $35
    add hl, hl                                    ; $623e: $29
    cp c                                          ; $623f: $b9
    ld a, [hl-]                                   ; $6240: $3a
    dec hl                                        ; $6241: $2b
    rst $30                                       ; $6242: $f7
    dec de                                        ; $6243: $1b
    add hl, de                                    ; $6244: $19
    ld c, e                                       ; $6245: $4b
    ld a, c                                       ; $6246: $79
    dec bc                                        ; $6247: $0b
    ld b, a                                       ; $6248: $47
    xor d                                         ; $6249: $aa
    or d                                          ; $624a: $b2
    rst $08                                       ; $624b: $cf
    or l                                          ; $624c: $b5
    ld a, [hl-]                                   ; $624d: $3a
    ld a, c                                       ; $624e: $79
    sbc [hl]                                      ; $624f: $9e
    adc a                                         ; $6250: $8f
    ld h, b                                       ; $6251: $60
    ld h, c                                       ; $6252: $61
    jr jr_031_621e                                ; $6253: $18 $c9

    ld e, l                                       ; $6255: $5d
    ld e, d                                       ; $6256: $5a
    jp c, Jump_031_753e                           ; $6257: $da $3e $75

    ld d, a                                       ; $625a: $57
    add hl, hl                                    ; $625b: $29
    cp c                                          ; $625c: $b9
    ld d, d                                       ; $625d: $52
    daa                                           ; $625e: $27
    rst $08                                       ; $625f: $cf
    di                                            ; $6260: $f3
    add hl, bc                                    ; $6261: $09
    ret c                                         ; $6262: $d8

    ld a, c                                       ; $6263: $79
    sbc [hl]                                      ; $6264: $9e
    rst $28                                       ; $6265: $ef
    ld b, h                                       ; $6266: $44
    cp h                                          ; $6267: $bc
    adc $dd                                       ; $6268: $ce $dd
    ret                                           ; $626a: $c9


    ld h, b                                       ; $626b: $60
    add c                                         ; $626c: $81
    push af                                       ; $626d: $f5
    ld c, [hl]                                    ; $626e: $4e
    or l                                          ; $626f: $b5
    rra                                           ; $6270: $1f
    push af                                       ; $6271: $f5
    ld a, [hl-]                                   ; $6272: $3a
    ld [hl], l                                    ; $6273: $75
    ld c, l                                       ; $6274: $4d
    xor d                                         ; $6275: $aa
    dec a                                         ; $6276: $3d
    ld [hl], h                                    ; $6277: $74
    ld b, a                                       ; $6278: $47
    db $fd                                        ; $6279: $fd
    inc [hl]                                      ; $627a: $34
    cp $e4                                        ; $627b: $fe $e4
    ld [hl-], a                                   ; $627d: $32
    and b                                         ; $627e: $a0
    sub d                                         ; $627f: $92
    ld bc, $62ed                                  ; $6280: $01 $ed $62
    cp a                                          ; $6283: $bf
    ret nc                                        ; $6284: $d0

    xor [hl]                                      ; $6285: $ae
    ld d, a                                       ; $6286: $57
    ld d, l                                       ; $6287: $55
    ld e, d                                       ; $6288: $5a
    adc a                                         ; $6289: $8f

Call_031_628a:
    sub [hl]                                      ; $628a: $96
    or a                                          ; $628b: $b7
    dec e                                         ; $628c: $1d
    rra                                           ; $628d: $1f
    ld a, b                                       ; $628e: $78
    ld b, $1e                                     ; $628f: $06 $1e

Jump_031_6291:
    xor $62                                       ; $6291: $ee $62
    sra a                                         ; $6293: $cb $2f
    or [hl]                                       ; $6295: $b6
    ld a, h                                       ; $6296: $7c
    adc l                                         ; $6297: $8d
    ld sp, hl                                     ; $6298: $f9
    ldh a, [$c2]                                  ; $6299: $f0 $c2
    jp c, Jump_031_7743                           ; $629b: $da $43 $77

    cp d                                          ; $629e: $ba
    adc l                                         ; $629f: $8d
    xor e                                         ; $62a0: $ab
    or d                                          ; $62a1: $b2
    rst $08                                       ; $62a2: $cf
    push hl                                       ; $62a3: $e5
    xor e                                         ; $62a4: $ab
    or e                                          ; $62a5: $b3
    inc de                                        ; $62a6: $13
    pop af                                        ; $62a7: $f1
    ld a, [hl-]                                   ; $62a8: $3a
    ld [hl], a                                    ; $62a9: $77
    daa                                           ; $62aa: $27
    add e                                         ; $62ab: $83
    dec b                                         ; $62ac: $05
    sub $3b                                       ; $62ad: $d6 $3b
    push de                                       ; $62af: $d5
    ld a, [hl]                                    ; $62b0: $7e
    call nc, $d4eb                                ; $62b1: $d4 $eb $d4
    dec [hl]                                      ; $62b4: $35

Call_031_62b5:
    add hl, hl                                    ; $62b5: $29
    add hl, sp                                    ; $62b6: $39
    add e                                         ; $62b7: $83

Call_031_62b8:
Jump_031_62b8:
    push af                                       ; $62b8: $f5
    xor a                                         ; $62b9: $af
    db $dd                                        ; $62ba: $dd
    ret z                                         ; $62bb: $c8

    ld e, b                                       ; $62bc: $58

jr_031_62bd:
    jp z, Jump_000_275b                           ; $62bd: $ca $5b $27

    jr z, @-$68                                   ; $62c0: $28 $96

    or [hl]                                       ; $62c2: $b6
    ld c, a                                       ; $62c3: $4f
    db $dd                                        ; $62c4: $dd
    ld d, l                                       ; $62c5: $55
    adc d                                         ; $62c6: $8a
    ld [hl], c                                    ; $62c7: $71
    push bc                                       ; $62c8: $c5
    ld a, [hl+]                                   ; $62c9: $2a
    jp Jump_000_3f78                              ; $62ca: $c3 $78 $3f


    halt                                          ; $62cd: $76
    cp l                                          ; $62ce: $bd
    rst $38                                       ; $62cf: $ff
    dec c                                         ; $62d0: $0d
    inc hl                                        ; $62d1: $23
    db $f4                                        ; $62d2: $f4
    ld l, c                                       ; $62d3: $69
    ld b, l                                       ; $62d4: $45
    or c                                          ; $62d5: $b1
    ld [$8c51], a                                 ; $62d6: $ea $51 $8c
    ld l, e                                       ; $62d9: $6b
    adc l                                         ; $62da: $8d
    ld b, l                                       ; $62db: $45
    jr z, jr_031_62bd                             ; $62dc: $28 $df

    or c                                          ; $62de: $b1
    ld [bc], a                                    ; $62df: $02
    rla                                           ; $62e0: $17
    add h                                         ; $62e1: $84
    ld a, [hl+]                                   ; $62e2: $2a
    ld a, l                                       ; $62e3: $7d
    ld e, d                                       ; $62e4: $5a
    di                                            ; $62e5: $f3
    ret nz                                        ; $62e6: $c0

    ld b, a                                       ; $62e7: $47
    rrca                                          ; $62e8: $0f
    sub e                                         ; $62e9: $93
    dec hl                                        ; $62ea: $2b
    ld a, [de]                                    ; $62eb: $1a
    and c                                         ; $62ec: $a1
    cp $1a                                        ; $62ed: $fe $1a
    ld bc, $31ad                                  ; $62ef: $01 $ad $31
    cpl                                           ; $62f2: $2f
    ld a, [c]                                     ; $62f3: $f2
    jp c, $9dc4                                   ; $62f4: $da $c4 $9d

    ld l, [hl]                                    ; $62f7: $6e
    dec hl                                        ; $62f8: $2b
    ld a, [de]                                    ; $62f9: $1a
    di                                            ; $62fa: $f3
    ret nc                                        ; $62fb: $d0

Jump_031_62fc:
    ld [hl], a                                    ; $62fc: $77
    ret z                                         ; $62fd: $c8

    db $f4                                        ; $62fe: $f4
    rst $00                                       ; $62ff: $c7
    cp d                                          ; $6300: $ba
    db $fd                                        ; $6301: $fd
    sbc e                                         ; $6302: $9b
    ld e, e                                       ; $6303: $5b
    add hl, de                                    ; $6304: $19
    sub [hl]                                      ; $6305: $96
    add l                                         ; $6306: $85
    sub $f8                                       ; $6307: $d6 $f8
    xor e                                         ; $6309: $ab
    ld [$cd7e], a                                 ; $630a: $ea $7e $cd
    ld h, b                                       ; $630d: $60
    db $fd                                        ; $630e: $fd
    ld l, e                                       ; $630f: $6b
    scf                                           ; $6310: $37
    ld [hl-], a                                   ; $6311: $32
    sub [hl]                                      ; $6312: $96
    ld a, [c]                                     ; $6313: $f2
    ld d, $a7                                     ; $6314: $16 $a7
    and d                                         ; $6316: $a2
    rst $28                                       ; $6317: $ef
    ld b, h                                       ; $6318: $44
    cp h                                          ; $6319: $bc
    ret c                                         ; $631a: $d8

    xor a                                         ; $631b: $af
    ld e, b                                       ; $631c: $58
    adc h                                         ; $631d: $8c
    ld l, e                                       ; $631e: $6b
    dec e                                         ; $631f: $1d
    or b                                          ; $6320: $b0
    adc d                                         ; $6321: $8a
    sbc d                                         ; $6322: $9a
    add hl, hl                                    ; $6323: $29
    ld l, b                                       ; $6324: $68
    ld b, l                                       ; $6325: $45
    ld c, e                                       ; $6326: $4b
    db $db                                        ; $6327: $db
    and a                                         ; $6328: $a7
    xor $2a                                       ; $6329: $ee $2a
    dec l                                         ; $632b: $2d
    inc bc                                        ; $632c: $03
    ld [hl], a                                    ; $632d: $77
    inc l                                         ; $632e: $2c
    inc hl                                        ; $632f: $23
    dec l                                         ; $6330: $2d
    ld l, l                                       ; $6331: $6d
    ld b, b                                       ; $6332: $40
    ld sp, hl                                     ; $6333: $f9
    ld a, [hl-]                                   ; $6334: $3a
    pop bc                                        ; $6335: $c1
    adc d                                         ; $6336: $8a
    ld b, [hl]                                    ; $6337: $46
    cp $80                                        ; $6338: $fe $80
    sub c                                         ; $633a: $91
    ld e, e                                       ; $633b: $5b
    call z, $fd60                                 ; $633c: $cc $60 $fd
    ld l, e                                       ; $633f: $6b
    scf                                           ; $6340: $37
    ld [hl-], a                                   ; $6341: $32
    sub [hl]                                      ; $6342: $96
    ld a, [c]                                     ; $6343: $f2
    ld d, $a7                                     ; $6344: $16 $a7
    db $db                                        ; $6346: $db
    sbc b                                         ; $6347: $98
    add a                                         ; $6348: $87
    cp [hl]                                       ; $6349: $be
    and d                                         ; $634a: $a2
    and l                                         ; $634b: $a5
    db $ed                                        ; $634c: $ed
    ld d, e                                       ; $634d: $53
    ld [hl], a                                    ; $634e: $77
    sub l                                         ; $634f: $95
    sub [hl]                                      ; $6350: $96
    ld bc, $bfdc                                  ; $6351: $01 $dc $bf
    db $db                                        ; $6354: $db
    ld a, [de]                                    ; $6355: $1a
    adc e                                         ; $6356: $8b
    ld sp, $586e                                  ; $6357: $31 $6e $58
    jp hl                                         ; $635a: $e9


    db $d3                                        ; $635b: $d3
    adc d                                         ; $635c: $8a
    adc l                                         ; $635d: $8d
    cp d                                          ; $635e: $ba
    ld h, $2d                                     ; $635f: $26 $2d
    ret nz                                        ; $6361: $c0

    ld d, a                                       ; $6362: $57
    inc d                                         ; $6363: $14
    cp e                                          ; $6364: $bb
    dec [hl]                                      ; $6365: $35
    ld b, $45                                     ; $6366: $06 $45
    sub c                                         ; $6368: $91
    sbc h                                         ; $6369: $9c
    pop bc                                        ; $636a: $c1
    ld a, [$6ed7]                                 ; $636b: $fa $d7 $6e
    ld h, h                                       ; $636e: $64
    inc l                                         ; $636f: $2c
    push hl                                       ; $6370: $e5
    res 7, d                                      ; $6371: $cb $ba
    dec hl                                        ; $6373: $2b
    ld l, b                                       ; $6374: $68
    ld [hl], l                                    ; $6375: $75
    ld d, [hl]                                    ; $6376: $56
    nop                                           ; $6377: $00
    sub a                                         ; $6378: $97
    ld bc, $608d                                  ; $6379: $01 $8d $60
    db $fc                                        ; $637c: $fc
    ld h, c                                       ; $637d: $61
    adc h                                         ; $637e: $8c
    xor e                                         ; $637f: $ab
    or d                                          ; $6380: $b2
    rst $08                                       ; $6381: $cf
    push hl                                       ; $6382: $e5
    db $eb                                        ; $6383: $eb
    pop de                                        ; $6384: $d1
    ld a, [c]                                     ; $6385: $f2
    ld d, $1d                                     ; $6386: $16 $1d
    db $e4                                        ; $6388: $e4
    rla                                           ; $6389: $17
    adc [hl]                                      ; $638a: $8e
    rst $18                                       ; $638b: $df
    adc l                                         ; $638c: $8d
    ld a, c                                       ; $638d: $79
    add sp, $4b                                   ; $638e: $e8 $4b
    dec de                                        ; $6390: $1b
    jp nc, Jump_031_6be0                          ; $6391: $d2 $e0 $6b

    db $fc                                        ; $6394: $fc
    ld d, [hl]                                    ; $6395: $56
    cp l                                          ; $6396: $bd
    rra                                           ; $6397: $1f
    db $e4                                        ; $6398: $e4
    ld b, [hl]                                    ; $6399: $46

jr_031_639a:
    ld hl, sp-$02                                 ; $639a: $f8 $fe
    cp b                                          ; $639c: $b8
    jr jr_031_639a                                ; $639d: $18 $fb

    inc [hl]                                      ; $639f: $34
    ld a, d                                       ; $63a0: $7a
    ld b, b                                       ; $63a1: $40
    ld e, d                                       ; $63a2: $5a
    or c                                          ; $63a3: $b1
    ld e, l                                       ; $63a4: $5d
    push bc                                       ; $63a5: $c5
    ld [hl+], a                                   ; $63a6: $22
    sub h                                         ; $63a7: $94
    call c, $e6b1                                 ; $63a8: $dc $b1 $e6
    ld e, [hl]                                    ; $63ab: $5e
    sub e                                         ; $63ac: $93
    rst $28                                       ; $63ad: $ef
    db $f4                                        ; $63ae: $f4
    add a                                         ; $63af: $87
    rla                                           ; $63b0: $17
    ld c, $fe                                     ; $63b1: $0e $fe
    cp $03                                        ; $63b3: $fe $03
    ld b, [hl]                                    ; $63b5: $46
    ld b, $8b                                     ; $63b6: $06 $8b
    rst $20                                       ; $63b8: $e7
    or h                                          ; $63b9: $b4
    and $81                                       ; $63ba: $e6 $81
    adc a                                         ; $63bc: $8f
    inc [hl]                                      ; $63bd: $34
    cp a                                          ; $63be: $bf
    ld e, l                                       ; $63bf: $5d
    xor a                                         ; $63c0: $af
    ld l, d                                       ; $63c1: $6a
    db $f4                                        ; $63c2: $f4
    ld b, e                                       ; $63c3: $43
    sbc [hl]                                      ; $63c4: $9e

jr_031_63c5:
    or a                                          ; $63c5: $b7
    rst $00                                       ; $63c6: $c7
    sbc h                                         ; $63c7: $9c
    ld [hl], d                                    ; $63c8: $72
    ld e, h                                       ; $63c9: $5c
    rst $00                                       ; $63ca: $c7
    ld c, [hl]                                    ; $63cb: $4e
    daa                                           ; $63cc: $27
    sbc l                                         ; $63cd: $9d
    ld a, b                                       ; $63ce: $78
    ld e, h                                       ; $63cf: $5c
    and a                                         ; $63d0: $a7
    and e                                         ; $63d1: $a3
    halt                                          ; $63d2: $76
    call z, Call_000_1de1                         ; $63d3: $cc $e1 $1d
    adc [hl]                                      ; $63d6: $8e
    ld a, [hl-]                                   ; $63d7: $3a
    or l                                          ; $63d8: $b5
    dec b                                         ; $63d9: $05

jr_031_63da:
    ld l, e                                       ; $63da: $6b
    ld bc, $fd1d                                  ; $63db: $01 $1d $fd
    ld [hl], c                                    ; $63de: $71
    cp b                                          ; $63df: $b8
    ld c, b                                       ; $63e0: $48
    ldh [rHDMA3], a                               ; $63e1: $e0 $53
    rst $20                                       ; $63e3: $e7
    db $db                                        ; $63e4: $db
    dec b                                         ; $63e5: $05
    add h                                         ; $63e6: $84
    jp hl                                         ; $63e7: $e9


    ld d, $a7                                     ; $63e8: $16 $a7
    sub d                                         ; $63ea: $92
    jr jr_031_63da                                ; $63eb: $18 $ed

    jr z, jr_031_6411                             ; $63ed: $28 $22

    db $fc                                        ; $63ef: $fc
    inc l                                         ; $63f0: $2c
    ld a, c                                       ; $63f1: $79
    dec bc                                        ; $63f2: $0b
    ld l, e                                       ; $63f3: $6b
    ld bc, $28a7                                  ; $63f4: $01 $a7 $28
    sbc d                                         ; $63f7: $9a
    rst $30                                       ; $63f8: $f7
    jp $4552                                      ; $63f9: $c3 $52 $45


    db $e3                                        ; $63fc: $e3
    scf                                           ; $63fd: $37
    ld b, [hl]                                    ; $63fe: $46
    push hl                                       ; $63ff: $e5
    dec [hl]                                      ; $6400: $35
    adc l                                         ; $6401: $8d
    ld a, [hl+]                                   ; $6402: $2a
    ld a, l                                       ; $6403: $7d
    ld l, d                                       ; $6404: $6a
    ld bc, $f01d                                  ; $6405: $01 $1d $f0
    ld h, d                                       ; $6408: $62
    sbc e                                         ; $6409: $9b
    jp z, Jump_031_7c8e                           ; $640a: $ca $8e $7c

    adc $b2                                       ; $640d: $ce $b2
    rst $18                                       ; $640f: $df
    ld [bc], a                                    ; $6410: $02

jr_031_6411:
    ld l, e                                       ; $6411: $6b
    ld bc, $b8c7                                  ; $6412: $01 $c7 $b8
    dec [hl]                                      ; $6415: $35
    ld l, h                                       ; $6416: $6c
    inc c                                         ; $6417: $0c
    jp nc, $c71a                                  ; $6418: $d2 $1a $c7

    ld a, a                                       ; $641b: $7f
    ld h, c                                       ; $641c: $61
    ld h, e                                       ; $641d: $63
    and l                                         ; $641e: $a5
    dec b                                         ; $641f: $05
    dec e                                         ; $6420: $1d
    ldh a, [$5c]                                  ; $6421: $f0 $5c
    xor l                                         ; $6423: $ad
    ld h, e                                       ; $6424: $63
    ld sp, $9122                                  ; $6425: $31 $22 $91
    cp h                                          ; $6428: $bc
    dec b                                         ; $6429: $05
    ld l, e                                       ; $642a: $6b
    ld bc, $de47                                  ; $642b: $01 $47 $de
    jr jr_031_63c5                                ; $642e: $18 $95

    rst $10                                       ; $6430: $d7
    inc [hl]                                      ; $6431: $34
    ld [bc], a                                    ; $6432: $02
    adc a                                         ; $6433: $8f
    ld d, $f5                                     ; $6434: $16 $f5
    ld e, a                                       ; $6436: $5f
    or b                                          ; $6437: $b0
    pop bc                                        ; $6438: $c1
    sub $41                                       ; $6439: $d6 $41
    ld [c], a                                     ; $643b: $e2
    pop de                                        ; $643c: $d1
    ld [bc], a                                    ; $643d: $02
    and a                                         ; $643e: $a7
    sub d                                         ; $643f: $92
    jr @-$11                                      ; $6440: $18 $ed

    ld [hl], h                                    ; $6442: $74

jr_031_6443:
    dec hl                                        ; $6443: $2b
    push hl                                       ; $6444: $e5
    and [hl]                                      ; $6445: $a6
    ld d, $47                                     ; $6446: $16 $47
    ld a, $60                                     ; $6448: $3e $60
    db $ed                                        ; $644a: $ed
    call nc, $8d8b                                ; $644b: $d4 $8b $8d
    and l                                         ; $644e: $a5
    ldh [$67], a                                  ; $644f: $e0 $67
    or l                                          ; $6451: $b5
    and a                                         ; $6452: $a7
    sub d                                         ; $6453: $92
    jr jr_031_6443                                ; $6454: $18 $ed

    jr z, jr_031_647a                             ; $6456: $28 $22

    db $fc                                        ; $6458: $fc
    inc l                                         ; $6459: $2c
    ld a, c                                       ; $645a: $79
    dec bc                                        ; $645b: $0b
    ld l, e                                       ; $645c: $6b
    ld bc, $b8c7                                  ; $645d: $01 $c7 $b8
    dec [hl]                                      ; $6460: $35
    ld l, h                                       ; $6461: $6c
    adc h                                         ; $6462: $8c
    ld c, d                                       ; $6463: $4a
    ld sp, $ecd1                                  ; $6464: $31 $d1 $ec
    ld h, e                                       ; $6467: $63
    ld h, l                                       ; $6468: $65
    add h                                         ; $6469: $84
    rst $28                                       ; $646a: $ef
    or a                                          ; $646b: $b7
    ld b, a                                       ; $646c: $47
    add hl, sp                                    ; $646d: $39
    ld e, [hl]                                    ; $646e: $5e
    dec sp                                        ; $646f: $3b
    ld d, [hl]                                    ; $6470: $56
    ld c, b                                       ; $6471: $48
    sub l                                         ; $6472: $95
    db $fd                                        ; $6473: $fd
    ld d, $a7                                     ; $6474: $16 $a7
    cp h                                          ; $6476: $bc
    ld d, h                                       ; $6477: $54
    ld l, d                                       ; $6478: $6a
    and a                                         ; $6479: $a7

jr_031_647a:
    dec hl                                        ; $647a: $2b
    xor b                                         ; $647b: $a8
    dec b                                         ; $647c: $05
    push af                                       ; $647d: $f5
    push hl                                       ; $647e: $e5
    ld e, [hl]                                    ; $647f: $5e
    or e                                          ; $6480: $b3
    db $d3                                        ; $6481: $d3
    sbc a                                         ; $6482: $9f
    or e                                          ; $6483: $b3
    ld d, c                                       ; $6484: $51
    pop de                                        ; $6485: $d1
    ld [bc], a                                    ; $6486: $02
    ld l, e                                       ; $6487: $6b
    ld bc, $28a7                                  ; $6488: $01 $a7 $28
    sbc d                                         ; $648b: $9a
    rst $30                                       ; $648c: $f7
    jp $4552                                      ; $648d: $c3 $52 $45


    jp $7e9f                                      ; $6490: $c3 $9f $7e


    inc l                                         ; $6493: $2c
    or a                                          ; $6494: $b7
    add [hl]                                      ; $6495: $86
    adc l                                         ; $6496: $8d
    ld e, d                                       ; $6497: $5a
    rra                                           ; $6498: $1f
    cp e                                          ; $6499: $bb
    ld e, l                                       ; $649a: $5d
    adc [hl]                                      ; $649b: $8e
    inc b                                         ; $649c: $04
    xor [hl]                                      ; $649d: $ae
    ld d, $1d                                     ; $649e: $16 $1d
    ldh a, [$62]                                  ; $64a0: $f0 $62
    sbc e                                         ; $64a2: $9b
    jp z, $858e                                   ; $64a3: $ca $8e $85

    ld c, d                                       ; $64a6: $4a
    pop de                                        ; $64a7: $d1
    ld [bc], a                                    ; $64a8: $02

Jump_031_64a9:
    ld l, e                                       ; $64a9: $6b
    ld bc, $fd1d                                  ; $64aa: $01 $1d $fd
    ld [hl], c                                    ; $64ad: $71
    cp b                                          ; $64ae: $b8
    ld c, b                                       ; $64af: $48
    ldh [$b3], a                                  ; $64b0: $e0 $b3
    adc b                                         ; $64b2: $88
    ld [hl], a                                    ; $64b3: $77
    pop hl                                        ; $64b4: $e1
    xor l                                         ; $64b5: $ad
    dec b                                         ; $64b6: $05
    ld e, c                                       ; $64b7: $59
    and $b6                                       ; $64b8: $e6 $b6
    inc hl                                        ; $64ba: $23
    ld d, c                                       ; $64bb: $51
    db $ec                                        ; $64bc: $ec
    xor d                                         ; $64bd: $aa
    dec b                                         ; $64be: $05
    ld l, e                                       ; $64bf: $6b
    ld bc, $201d                                  ; $64c0: $01 $1d $20
    jr nc, jr_031_64c8                            ; $64c3: $30 $03

    sbc d                                         ; $64c5: $9a
    ld l, b                                       ; $64c6: $68
    ld c, d                                       ; $64c7: $4a

jr_031_64c8:
    and a                                         ; $64c8: $a7
    ld b, l                                       ; $64c9: $45
    or c                                          ; $64ca: $b1
    ld a, b                                       ; $64cb: $78
    rst $38                                       ; $64cc: $ff
    cp c                                          ; $64cd: $b9
    and d                                         ; $64ce: $a2
    dec b                                         ; $64cf: $05
    dec e                                         ; $64d0: $1d
    call z, $ddcf                                 ; $64d1: $cc $cf $dd

jr_031_64d4:
    ld e, c                                       ; $64d4: $59
    jp nc, Jump_000_2de7                          ; $64d5: $d2 $e7 $2d

    ld b, a                                       ; $64d8: $47
    cp d                                          ; $64d9: $ba
    adc $5b                                       ; $64da: $ce $5b
    sub [hl]                                      ; $64dc: $96
    pop af                                        ; $64dd: $f1
    sbc d                                         ; $64de: $9a
    ld d, $c7                                     ; $64df: $16 $c7
    reti                                          ; $64e1: $d9


    rst $18                                       ; $64e2: $df
    add hl, hl                                    ; $64e3: $29
    adc a                                         ; $64e4: $8f
    and e                                         ; $64e5: $a3
    or l                                          ; $64e6: $b5
    ld l, e                                       ; $64e7: $6b
    ld bc, $149d                                  ; $64e8: $01 $9d $14
    inc d                                         ; $64eb: $14
    dec l                                         ; $64ec: $2d
    daa                                           ; $64ed: $27
    ldh [$f9], a                                  ; $64ee: $e0 $f9
    rst $20                                       ; $64f0: $e7
    cpl                                           ; $64f1: $2f
    dec bc                                        ; $64f2: $0b
    xor d                                         ; $64f3: $aa
    ld a, [bc]                                    ; $64f4: $0a
    ld a, a                                       ; $64f5: $7f
    or h                                          ; $64f6: $b4
    ld b, a                                       ; $64f7: $47
    jr c, jr_031_64d4                             ; $64f8: $38 $da

    rst $18                                       ; $64fa: $df
    pop af                                        ; $64fb: $f1
    add sp, -$19                                  ; $64fc: $e8 $e7
    ld a, [hl]                                    ; $64fe: $7e
    ld b, l                                       ; $64ff: $45
    or h                                          ; $6500: $b4
    ld e, c                                       ; $6501: $59
    ld l, h                                       ; $6502: $6c
    ld a, c                                       ; $6503: $79
    ld c, l                                       ; $6504: $4d
    ld e, c                                       ; $6505: $59
    ld b, a                                       ; $6506: $47
    ld a, l                                       ; $6507: $7d
    cp h                                          ; $6508: $bc
    adc $6d                                       ; $6509: $ce $6d
    ld bc, $7f87                                  ; $650b: $01 $87 $7f
    inc l                                         ; $650e: $2c
    xor e                                         ; $650f: $ab
    rst $38                                       ; $6510: $ff
    add d                                         ; $6511: $82
    adc l                                         ; $6512: $8d
    dec l                                         ; $6513: $2d
    ld l, e                                       ; $6514: $6b
    ld bc, $016b                                  ; $6515: $01 $6b $01

jr_031_6518:
    add a                                         ; $6518: $87
    ld [hl], a                                    ; $6519: $77
    jr c, jr_031_6518                             ; $651a: $38 $fc

    db $ec                                        ; $651c: $ec
    and e                                         ; $651d: $a3
    halt                                          ; $651e: $76
    call nc, $9d89                                ; $651f: $d4 $89 $9d
    adc [hl]                                      ; $6522: $8e
    ld a, [hl-]                                   ; $6523: $3a
    and l                                         ; $6524: $a5
    db $d3                                        ; $6525: $d3
    pop hl                                        ; $6526: $e1
    rst $00                                       ; $6527: $c7
    sbc l                                         ; $6528: $9d
    ret c                                         ; $6529: $d8

    pop hl                                        ; $652a: $e1
    xor b                                         ; $652b: $a8
    inc de                                        ; $652c: $13
    dec sp                                        ; $652d: $3b
    or l                                          ; $652e: $b5
    ld l, e                                       ; $652f: $6b
    ld bc, $fd1d                                  ; $6530: $01 $1d $fd
    ld [hl], c                                    ; $6533: $71
    cp b                                          ; $6534: $b8
    ld c, b                                       ; $6535: $48
    ldh [$31], a                                  ; $6536: $e0 $31
    ld [hl], l                                    ; $6538: $75
    cp [hl]                                       ; $6539: $be
    ld e, l                                       ; $653a: $5d
    ld b, b                                       ; $653b: $40
    sbc b                                         ; $653c: $98
    adc [hl]                                      ; $653d: $8e
    ld d, $47                                     ; $653e: $16 $47
    jp c, $51df                                   ; $6540: $da $df $51

    ld b, l                                       ; $6543: $45
    ccf                                           ; $6544: $3f
    ld h, l                                       ; $6545: $65
    ld d, $2d                                     ; $6546: $16 $2d
    ld b, a                                       ; $6548: $47
    ld a, [de]                                    ; $6549: $1a
    add e                                         ; $654a: $83
    ld a, h                                       ; $654b: $7c
    dec e                                         ; $654c: $1d
    db $ec                                        ; $654d: $ec
    rst $38                                       ; $654e: $ff
    ld d, $6b                                     ; $654f: $16 $6b
    ld bc, $a247                                  ; $6551: $01 $47 $a2
    db $eb                                        ; $6554: $eb
    ld [hl+], a                                   ; $6555: $22
    add c                                         ; $6556: $81
    adc a                                         ; $6557: $8f
    dec hl                                        ; $6558: $2b
    ld b, [hl]                                    ; $6559: $46
    ld a, [bc]                                    ; $655a: $0a
    adc d                                         ; $655b: $8a
    ld d, $f5                                     ; $655c: $16 $f5
    db $ed                                        ; $655e: $ed
    ld a, [hl-]                                   ; $655f: $3a
    ld [hl], a                                    ; $6560: $77
    ld b, a                                       ; $6561: $47
    jr c, jr_031_65b8                             ; $6562: $38 $54

    sub l                                         ; $6564: $95
    xor b                                         ; $6565: $a8
    dec b                                         ; $6566: $05
    ld l, e                                       ; $6567: $6b
    ld bc, $a247                                  ; $6568: $01 $47 $a2
    db $eb                                        ; $656b: $eb
    ld [hl+], a                                   ; $656c: $22
    add c                                         ; $656d: $81
    rst $28                                       ; $656e: $ef
    ld a, [c]                                     ; $656f: $f2
    sbc e                                         ; $6570: $9b
    ld de, $dfbe                                  ; $6571: $11 $be $df
    ld [bc], a                                    ; $6574: $02
    dec e                                         ; $6575: $1d
    reti                                          ; $6576: $d9


    ld e, b                                       ; $6577: $58
    sub $c9                                       ; $6578: $d6 $c9
    and c                                         ; $657a: $a1
    ld c, d                                       ; $657b: $4a
    cp l                                          ; $657c: $bd
    ld d, $6b                                     ; $657d: $16 $6b
    ld bc, $9e27                                  ; $657f: $01 $27 $9e
    ld [hl], h                                    ; $6582: $74
    jp c, Jump_000_3ba9                           ; $6583: $da $a9 $3b

    push hl                                       ; $6586: $e5
    xor b                                         ; $6587: $a8
    ld c, $47                                     ; $6588: $0e $47
    sbc l                                         ; $658a: $9d
    sub d                                         ; $658b: $92
    ld [hl], l                                    ; $658c: $75
    call c, $2749                                 ; $658d: $dc $49 $27
    sbc [hl]                                      ; $6590: $9e
    sbc d                                         ; $6591: $9a
    rst $20                                       ; $6592: $e7
    ld a, c                                       ; $6593: $79
    dec bc                                        ; $6594: $0b
    and a                                         ; $6595: $a7
    sub d                                         ; $6596: $92
    ld a, [de]                                    ; $6597: $1a
    or [hl]                                       ; $6598: $b6
    ld a, l                                       ; $6599: $7d
    call nc, $958e                                ; $659a: $d4 $8e $95
    sub e                                         ; $659d: $93
    or c                                          ; $659e: $b1
    db $e4                                        ; $659f: $e4
    dec l                                         ; $65a0: $2d
    and a                                         ; $65a1: $a7
    ld b, d                                       ; $65a2: $42
    ret c                                         ; $65a3: $d8

    rst $18                                       ; $65a4: $df
    sub c                                         ; $65a5: $91
    ld [$4720], a                                 ; $65a6: $ea $20 $47
    ld l, d                                       ; $65a9: $6a
    ld bc, $f01d                                  ; $65aa: $01 $1d $f0
    ld e, h                                       ; $65ad: $5c
    db $ed                                        ; $65ae: $ed
    ld c, b                                       ; $65af: $48
    reti                                          ; $65b0: $d9


    ld l, a                                       ; $65b1: $6f
    ld bc, $9b87                                  ; $65b2: $01 $87 $9b
    cp a                                          ; $65b5: $bf
    cp a                                          ; $65b6: $bf
    ld d, e                                       ; $65b7: $53

jr_031_65b8:
    ldh a, [rHDMA2]                               ; $65b8: $f0 $52
    dec bc                                        ; $65ba: $0b
    rst $00                                       ; $65bb: $c7
    adc e                                         ; $65bc: $8b
    pop bc                                        ; $65bd: $c1
    cp a                                          ; $65be: $bf
    inc hl                                        ; $65bf: $23
    ret nz                                        ; $65c0: $c0

    add hl, sp                                    ; $65c1: $39
    ld e, [hl]                                    ; $65c2: $5e
    rst $20                                       ; $65c3: $e7

Jump_031_65c4:
    or [hl]                                       ; $65c4: $b6
    rst $00                                       ; $65c5: $c7
    dec sp                                        ; $65c6: $3b
    add $4e                                       ; $65c7: $c6 $4e
    add l                                         ; $65c9: $85
    xor d                                         ; $65ca: $aa
    sub d                                         ; $65cb: $92
    ld b, a                                       ; $65cc: $47
    dec bc                                        ; $65cd: $0b
    ld l, e                                       ; $65ce: $6b
    ld bc, $016b                                  ; $65cf: $01 $6b $01
    ld l, e                                       ; $65d2: $6b
    ld bc, $9d47                                  ; $65d3: $01 $47 $9d
    ld [hl], b                                    ; $65d6: $70
    ld d, h                                       ; $65d7: $54
    ld d, [hl]                                    ; $65d8: $56
    and a                                         ; $65d9: $a7
    ld d, e                                       ; $65da: $53
    ld c, [hl]                                    ; $65db: $4e
    ld a, [hl-]                                   ; $65dc: $3a
    pop af                                        ; $65dd: $f1
    cp b                                          ; $65de: $b8
    xor h                                         ; $65df: $ac
    dec e                                         ; $65e0: $1d
    ld a, [hl]                                    ; $65e1: $7e
    ld c, d                                       ; $65e2: $4a
    and a                                         ; $65e3: $a7
    ld d, e                                       ; $65e4: $53
    ld e, e                                       ; $65e5: $5b
    ld l, e                                       ; $65e6: $6b
    ld bc, $fd1d                                  ; $65e7: $01 $1d $fd
    ld [hl], c                                    ; $65ea: $71
    cp b                                          ; $65eb: $b8
    ld [$6fdf], sp                                ; $65ec: $08 $df $6f
    ld bc, $6c59                                  ; $65ef: $01 $59 $6c
    rst $00                                       ; $65f2: $c7
    ret c                                         ; $65f3: $d8

    ld sp, $356e                                  ; $65f4: $31 $6e $35
    dec l                                         ; $65f7: $2d
    ld e, c                                       ; $65f8: $59
    xor a                                         ; $65f9: $af
    ldh [$df], a                                  ; $65fa: $e0 $df
    add hl, hl                                    ; $65fc: $29
    cpl                                           ; $65fd: $2f
    add l                                         ; $65fe: $85

jr_031_65ff:
    ccf                                           ; $65ff: $3f
    sbc $6f                                       ; $6600: $de $6f
    ld bc, $95f5                                  ; $6602: $01 $f5 $95
    ld c, [hl]                                    ; $6605: $4e
    rst $28                                       ; $6606: $ef
    jr @-$53                                      ; $6607: $18 $ab

    sbc $6f                                       ; $6609: $de $6f
    ld bc, $9d27                                  ; $660b: $01 $27 $9d
    and a                                         ; $660e: $a7
    cp a                                          ; $660f: $bf
    sub e                                         ; $6610: $93
    xor $47                                       ; $6611: $ee $47
    jr c, jr_031_65ff                             ; $6613: $38 $ea

    or a                                          ; $6615: $b7
    and a                                         ; $6616: $a7
    cp h                                          ; $6617: $bc
    call nc, $ba4e                                ; $6618: $d4 $4e $ba
    rra                                           ; $661b: $1f
    ld l, l                                       ; $661c: $6d
    xor $2a                                       ; $661d: $ee $2a
    and l                                         ; $661f: $a5
    dec b                                         ; $6620: $05
    and a                                         ; $6621: $a7
    ld h, d                                       ; $6622: $62
    push af                                       ; $6623: $f5
    cp $8e                                        ; $6624: $fe $8e
    dec [hl]                                      ; $6626: $35
    ld [hl], a                                    ; $6627: $77
    adc h                                         ; $6628: $8c
    ld d, $67                                     ; $6629: $16 $67
    ld e, b                                       ; $662b: $58
    call $8ed7                                    ; $662c: $cd $d7 $8e
    or $17                                        ; $662f: $f6 $17
    call nc, Call_031_6b02                        ; $6631: $d4 $02 $6b
    ld bc, $fd1d                                  ; $6634: $01 $1d $fd
    or c                                          ; $6637: $b1
    call c, $caaa                                 ; $6638: $dc $aa $ca
    ld [$5fdf], sp                                ; $663b: $08 $df $5f
    ld b, b                                       ; $663e: $40
    db $d3                                        ; $663f: $d3
    sub h                                         ; $6640: $94
    ld e, e                                       ; $6641: $5b
    and l                                         ; $6642: $a5
    ld c, a                                       ; $6643: $4f
    add [hl]                                      ; $6644: $86
    xor [hl]                                      ; $6645: $ae
    ld d, $47                                     ; $6646: $16 $47
    add sp, -$11                                  ; $6648: $e8 $ef
    ld c, b                                       ; $664a: $48
    reti                                          ; $664b: $d9


    ld d, a                                       ; $664c: $57
    dec bc                                        ; $664d: $0b
    ld l, e                                       ; $664e: $6b
    ld bc, $6547                                  ; $664f: $01 $47 $65
    nop                                           ; $6652: $00
    dec bc                                        ; $6653: $0b
    and [hl]                                      ; $6654: $a6
    call c, Call_000_1a58                         ; $6655: $dc $58 $1a
    add a                                         ; $6658: $87
    ld h, l                                       ; $6659: $65
    dec bc                                        ; $665a: $0b
    ld e, d                                       ; $665b: $5a
    ld b, a                                       ; $665c: $47
    jp c, Jump_000_29df                           ; $665d: $da $df $29

    ld e, b                                       ; $6660: $58
    ld d, h                                       ; $6661: $54
    db $d3                                        ; $6662: $d3
    ld [bc], a                                    ; $6663: $02
    ld l, e                                       ; $6664: $6b
    ld bc, $bea7                                  ; $6665: $01 $a7 $be
    rst $38                                       ; $6668: $ff
    inc e                                         ; $6669: $1c
    jp $df08                                      ; $666a: $c3 $08 $df


    ld l, a                                       ; $666d: $6f
    ld bc, $7387                                  ; $666e: $01 $87 $73
    dec d                                         ; $6671: $15
    db $ed                                        ; $6672: $ed
    ld a, b                                       ; $6673: $78
    sub l                                         ; $6674: $95
    ld [hl+], a                                   ; $6675: $22
    and d                                         ; $6676: $a2
    ld d, $47                                     ; $6677: $16 $47
    ld h, b                                       ; $6679: $60
    add hl, hl                                    ; $667a: $29
    dec sp                                        ; $667b: $3b
    ld bc, $6a82                                  ; $667c: $01 $82 $6a
    ld e, d                                       ; $667f: $5a
    push af                                       ; $6680: $f5
    push hl                                       ; $6681: $e5
    xor d                                         ; $6682: $aa
    ld l, d                                       ; $6683: $6a
    halt                                          ; $6684: $76
    ld [$a283], a                                 ; $6685: $ea $83 $a2
    ld d, $27                                     ; $6688: $16 $27
    ld [c], a                                     ; $668a: $e2
    ld [hl], l                                    ; $668b: $75
    xor $4e                                       ; $668c: $ee $4e
    jr nc, @+$08                                  ; $668e: $30 $06

    push hl                                       ; $6690: $e5
    pop de                                        ; $6691: $d1
    ld [bc], a                                    ; $6692: $02
    ld l, e                                       ; $6693: $6b
    ld bc, $de47                                  ; $6694: $01 $47 $de
    ld a, [de]                                    ; $6697: $1a
    ld [hl], e                                    ; $6698: $73
    ld d, d                                       ; $6699: $52
    and l                                         ; $669a: $a5
    ld c, a                                       ; $669b: $4f
    dec sp                                        ; $669c: $3b
    db $fc                                        ; $669d: $fc
    db $e4                                        ; $669e: $e4
    ld d, $87                                     ; $669f: $16 $87
    ld a, a                                       ; $66a1: $7f
    ld e, [hl]                                    ; $66a2: $5e
    or e                                          ; $66a3: $b3
    ld c, $58                                     ; $66a4: $0e $58
    adc d                                         ; $66a6: $8a
    cp h                                          ; $66a7: $bc
    dec b                                         ; $66a8: $05
    ld b, a                                       ; $66a9: $47
    sbc d                                         ; $66aa: $9a
    cp e                                          ; $66ab: $bb
    cp $3a                                        ; $66ac: $fe $3a
    pop bc                                        ; $66ae: $c1
    ld [hl], l                                    ; $66af: $75
    xor [hl]                                      ; $66b0: $ae
    ld l, d                                       ; $66b1: $6a
    ld e, d                                       ; $66b2: $5a
    push af                                       ; $66b3: $f5
    sbc a                                         ; $66b4: $9f
    halt                                          ; $66b5: $76
    ld [hl+], a                                   ; $66b6: $22
    db $fc                                        ; $66b7: $fc
    rst $18                                       ; $66b8: $df
    ld [bc], a                                    ; $66b9: $02
    daa                                           ; $66ba: $27
    ld c, b                                       ; $66bb: $48
    db $eb                                        ; $66bc: $eb

Call_031_66bd:
    ld h, b                                       ; $66bd: $60
    sbc a                                         ; $66be: $9f
    adc e                                         ; $66bf: $8b
    pop bc                                        ; $66c0: $c1
    ld d, d                                       ; $66c1: $52
    call nc, $1d02                                ; $66c2: $d4 $02 $1d
    adc h                                         ; $66c5: $8c
    ld l, b                                       ; $66c6: $68
    ld b, a                                       ; $66c7: $47
    add sp, $7f                                   ; $66c8: $e8 $7f
    ld de, $1db5                                  ; $66ca: $11 $b5 $1d
    ld b, l                                       ; $66cd: $45
    jp c, Jump_031_56a9                           ; $66ce: $da $a9 $56

    add c                                         ; $66d1: $81
    ld c, d                                       ; $66d2: $4a
    or h                                          ; $66d3: $b4
    dec e                                         ; $66d4: $1d
    ld d, c                                       ; $66d5: $51
    ld e, $3b                                     ; $66d6: $1e $3b
    pop bc                                        ; $66d8: $c1
    ld a, $cb                                     ; $66d9: $3e $cb
    sub c                                         ; $66db: $91
    or e                                          ; $66dc: $b3
    call nc, $a702                                ; $66dd: $d4 $02 $a7
    ldh [$c5], a                                  ; $66e0: $e0 $c5
    ld [hl], $e7                                  ; $66e2: $36 $e7
    dec sp                                        ; $66e4: $3b
    inc bc                                        ; $66e5: $03
    dec bc                                        ; $66e6: $0b
    sub a                                         ; $66e7: $97
    ld b, a                                       ; $66e8: $47
    add e                                         ; $66e9: $83
    cp a                                          ; $66ea: $bf
    dec b                                         ; $66eb: $05
    and a                                         ; $66ec: $a7
    cp h                                          ; $66ed: $bc
    adc b                                         ; $66ee: $88
    dec e                                         ; $66ef: $1d
    ld sp, hl                                     ; $66f0: $f9
    add b                                         ; $66f1: $80
    ld d, l                                       ; $66f2: $55
    inc l                                         ; $66f3: $2c
    ld e, d                                       ; $66f4: $5a
    and a                                         ; $66f5: $a7
    ld [de], a                                    ; $66f6: $12
    db $ec                                        ; $66f7: $ec
    inc c                                         ; $66f8: $0c
    inc l                                         ; $66f9: $2c
    dec b                                         ; $66fa: $05
    xor l                                         ; $66fb: $ad
    adc d                                         ; $66fc: $8a
    ld d, $6b                                     ; $66fd: $16 $6b
    ld bc, $9f87                                  ; $66ff: $01 $87 $9f
    inc a                                         ; $6702: $3c
    jp nc, $fec5                                  ; $6703: $d2 $c5 $fe

    sbc b                                         ; $6706: $98
    ld bc, $f5b5                                  ; $6707: $01 $b5 $f5
    sbc a                                         ; $670a: $9f
    halt                                          ; $670b: $76
    adc h                                         ; $670c: $8c
    db $db                                        ; $670d: $db
    and a                                         ; $670e: $a7
    ld d, $1d                                     ; $670f: $16 $1d
    call z, $882f                                 ; $6711: $cc $2f $88
    ld [hl], l                                    ; $6714: $75
    inc b                                         ; $6715: $04
    ld h, a                                       ; $6716: $67
    jr nc, @+$5c                                  ; $6717: $30 $5a

    ld h, a                                       ; $6719: $67
    ld e, b                                       ; $671a: $58
    call $8ed7                                    ; $671b: $cd $d7 $8e
    ld a, b                                       ; $671e: $78
    dec [hl]                                      ; $671f: $35
    sub a                                         ; $6720: $97
    ld e, d                                       ; $6721: $5a
    ld b, a                                       ; $6722: $47
    cp [hl]                                       ; $6723: $be
    rst $38                                       ; $6724: $ff
    ld l, l                                       ; $6725: $6d
    rst $00                                       ; $6726: $c7
    ld [c], a                                     ; $6727: $e2
    ld [hl], l                                    ; $6728: $75

Jump_031_6729:
    ld l, [hl]                                    ; $6729: $6e
    or h                                          ; $672a: $b4
    ld l, e                                       ; $672b: $6b
    ld bc, $1547                                  ; $672c: $01 $47 $15
    ld e, l                                       ; $672f: $5d
    db $e4                                        ; $6730: $e4
    rst $28                                       ; $6731: $ef
    db $e3                                        ; $6732: $e3
    or l                                          ; $6733: $b5
    jp $629d                                      ; $6734: $c3 $9d $62


    push af                                       ; $6737: $f5
    halt                                          ; $6738: $76
    adc d                                         ; $6739: $8a
    ld a, [hl+]                                   ; $673a: $2a
    ld sp, hl                                     ; $673b: $f9
    add l                                         ; $673c: $85
    xor d                                         ; $673d: $aa
    db $f4                                        ; $673e: $f4
    add hl, hl                                    ; $673f: $29
    ld d, $cd                                     ; $6740: $16 $cd
    db $ed                                        ; $6742: $ed
    ld b, d                                       ; $6743: $42
    add e                                         ; $6744: $83
    adc $2d                                       ; $6745: $ce $2d
    ld b, a                                       ; $6747: $47
    jr c, jr_031_67a6                             ; $6748: $38 $5c

    ld e, d                                       ; $674a: $5a
    add a                                         ; $674b: $87
    xor e                                         ; $674c: $ab
    inc bc                                        ; $674d: $03
    sub [hl]                                      ; $674e: $96
    ld h, d                                       ; $674f: $62
    cp a                                          ; $6750: $bf
    dec b                                         ; $6751: $05
    ld e, c                                       ; $6752: $59
    ld l, h                                       ; $6753: $6c
    cp b                                          ; $6754: $b8
    adc $5d                                       ; $6755: $ce $5d
    ld d, [hl]                                    ; $6757: $56
    or c                                          ; $6758: $b1
    ld c, a                                       ; $6759: $4f
    rst $28                                       ; $675a: $ef
    or a                                          ; $675b: $b7
    ld b, a                                       ; $675c: $47
    jp c, $35ff                                   ; $675d: $da $ff $35

    dec sp                                        ; $6760: $3b
    ld [bc], a                                    ; $6761: $02
    ld c, e                                       ; $6762: $4b
    cp h                                          ; $6763: $bc
    rst $18                                       ; $6764: $df
    ld [bc], a                                    ; $6765: $02
    ld b, a                                       ; $6766: $47
    ld a, [de]                                    ; $6767: $1a
    add e                                         ; $6768: $83
    ld a, h                                       ; $6769: $7c
    ld b, a                                       ; $676a: $47
    call nc, Call_031_57f8                        ; $676b: $d4 $f8 $57
    dec bc                                        ; $676e: $0b
    rst $00                                       ; $676f: $c7
    ld b, b                                       ; $6770: $40
    call Call_031_603a                            ; $6771: $cd $3a $60
    add hl, hl                                    ; $6774: $29
    ld a, [c]                                     ; $6775: $f2
    ld d, $c7                                     ; $6776: $16 $c7
    reti                                          ; $6778: $d9


    rst $18                                       ; $6779: $df
    xor c                                         ; $677a: $a9
    ld l, h                                       ; $677b: $6c
    dec sp                                        ; $677c: $3b
    xor a                                         ; $677d: $af
    dec b                                         ; $677e: $05
    push af                                       ; $677f: $f5
    rra                                           ; $6780: $1f
    ei                                            ; $6781: $fb
    rst $28                                       ; $6782: $ef
    inc b                                         ; $6783: $04
    dec sp                                        ; $6784: $3b
    rst $08                                       ; $6785: $cf
    push af                                       ; $6786: $f5
    cpl                                           ; $6787: $2f
    or l                                          ; $6788: $b5
    daa                                           ; $6789: $27
    ld h, b                                       ; $678a: $60
    ret c                                         ; $678b: $d8

    ld c, [hl]                                    ; $678c: $4e
    and l                                         ; $678d: $a5
    ld [hl], a                                    ; $678e: $77
    xor [hl]                                      ; $678f: $ae
    and d                                         ; $6790: $a2
    dec b                                         ; $6791: $05
    daa                                           ; $6792: $27
    ld h, b                                       ; $6793: $60
    ret c                                         ; $6794: $d8

    adc $30                                       ; $6795: $ce $30
    and d                                         ; $6797: $a2
    ld d, $1d                                     ; $6798: $16 $1d
    dec c                                         ; $679a: $0d
    jp z, Jump_031_548e                           ; $679b: $ca $8e $54

    rlca                                          ; $679e: $07
    cp l                                          ; $679f: $bd
    ld d, $1d                                     ; $67a0: $16 $1d
    dec c                                         ; $67a2: $0d
    jp z, $983a                                   ; $67a3: $ca $3a $98

jr_031_67a6:
    rlca                                          ; $67a6: $07
    rst $10                                       ; $67a7: $d7
    ld l, a                                       ; $67a8: $6f
    ld bc, $62a7                                  ; $67a9: $01 $a7 $62
    push af                                       ; $67ac: $f5
    cp $3a                                        ; $67ad: $fe $3a
    or d                                          ; $67af: $b2
    or c                                          ; $67b0: $b1
    ld l, c                                       ; $67b1: $69
    and d                                         ; $67b2: $a2
    dec b                                         ; $67b3: $05
    ld l, e                                       ; $67b4: $6b
    ld bc, $016b                                  ; $67b5: $01 $6b $01
    ld l, e                                       ; $67b8: $6b
    ld bc, $016b                                  ; $67b9: $01 $6b $01
    ld l, e                                       ; $67bc: $6b
    ld bc, $016b                                  ; $67bd: $01 $6b $01
    ld l, e                                       ; $67c0: $6b
    ld bc, $016b                                  ; $67c1: $01 $6b $01
    ld l, e                                       ; $67c4: $6b
    ld bc, $016b                                  ; $67c5: $01 $6b $01
    ld l, e                                       ; $67c8: $6b
    ld bc, $016b                                  ; $67c9: $01 $6b $01
    ld l, e                                       ; $67cc: $6b
    ld bc, $016b                                  ; $67cd: $01 $6b $01
    ld l, e                                       ; $67d0: $6b

Call_031_67d1:
    ld bc, $016b                                  ; $67d1: $01 $6b $01
    ld l, e                                       ; $67d4: $6b
    ld bc, $016b                                  ; $67d5: $01 $6b $01
    ld l, e                                       ; $67d8: $6b
    ld bc, $016b                                  ; $67d9: $01 $6b $01
    ld l, e                                       ; $67dc: $6b
    ld bc, $016b                                  ; $67dd: $01 $6b $01
    ld l, e                                       ; $67e0: $6b
    ld bc, $016b                                  ; $67e1: $01 $6b $01
    ld l, e                                       ; $67e4: $6b
    ld bc, $016b                                  ; $67e5: $01 $6b $01
    ld l, e                                       ; $67e8: $6b
    ld bc, $016b                                  ; $67e9: $01 $6b $01

jr_031_67ec:
    ld l, e                                       ; $67ec: $6b
    ld bc, $016b                                  ; $67ed: $01 $6b $01
    ld l, e                                       ; $67f0: $6b
    ld bc, $016b                                  ; $67f1: $01 $6b $01
    ld l, e                                       ; $67f4: $6b
    ld bc, $016b                                  ; $67f5: $01 $6b $01
    rst $00                                       ; $67f8: $c7
    sbc $92                                       ; $67f9: $de $92
    cp e                                          ; $67fb: $bb
    xor $0a                                       ; $67fc: $ee $0a
    ld a, [de]                                    ; $67fe: $1a
    dec a                                         ; $67ff: $3d
    call z, Call_031_7cf3                         ; $6800: $cc $f3 $7c
    rst $00                                       ; $6803: $c7
    sbc d                                         ; $6804: $9a
    ld a, e                                       ; $6805: $7b
    call Call_000_3e3a                            ; $6806: $cd $3a $3e
    ld [hl+], a                                   ; $6809: $22
    ld a, c                                       ; $680a: $79
    db $ed                                        ; $680b: $ed
    and c                                         ; $680c: $a1
    dec l                                         ; $680d: $2d
    ld b, a                                       ; $680e: $47
    or c                                          ; $680f: $b1
    sub a                                         ; $6810: $97
    ld b, d                                       ; $6811: $42
    db $fd                                        ; $6812: $fd
    inc a                                         ; $6813: $3c
    rst $08                                       ; $6814: $cf
    ld e, e                                       ; $6815: $5b
    ld e, c                                       ; $6816: $59
    ld [hl], a                                    ; $6817: $77
    dec b                                         ; $6818: $05
    adc l                                         ; $6819: $8d
    ld e, $26                                     ; $681a: $1e $26
    rst $30                                       ; $681c: $f7
    rst $18                                       ; $681d: $df
    xor a                                         ; $681e: $af
    dec a                                         ; $681f: $3d
    ld [hl], h                                    ; $6820: $74
    ld b, a                                       ; $6821: $47
    pop de                                        ; $6822: $d1
    ld [bc], a                                    ; $6823: $02
    ld b, a                                       ; $6824: $47
    jr nc, jr_031_67ec                            ; $6825: $30 $c5

    ldh a, [$c2]                                  ; $6827: $f0 $c2
    db $e4                                        ; $6829: $e4
    xor [hl]                                      ; $682a: $ae
    cp e                                          ; $682b: $bb
    add d                                         ; $682c: $82
    sub [hl]                                      ; $682d: $96
    ld bc, $608d                                  ; $682e: $01 $8d $60
    adc d                                         ; $6831: $8a
    jp hl                                         ; $6832: $e9


    and a                                         ; $6833: $a7
    pop af                                        ; $6834: $f1
    xor a                                         ; $6835: $af
    adc $3a                                       ; $6836: $ce $3a

jr_031_6838:
    ld a, $e0                                     ; $6838: $3e $e0
    push bc                                       ; $683a: $c5
    sbc h                                         ; $683b: $9c
    rst $10                                       ; $683c: $d7
    ld h, $b6                                     ; $683d: $26 $b6
    ld b, a                                       ; $683f: $47
    dec b                                         ; $6840: $05
    push de                                       ; $6841: $d5
    cp e                                          ; $6842: $bb
    or h                                          ; $6843: $b4
    inc c                                         ; $6844: $0c
    ld l, b                                       ; $6845: $68
    db $f4                                        ; $6846: $f4
    add b                                         ; $6847: $80
    ld d, [hl]                                    ; $6848: $56
    or h                                          ; $6849: $b4
    ld [$ae7d], a                                 ; $684a: $ea $7d $ae
    add l                                         ; $684d: $85
    ld hl, $1e8d                                  ; $684e: $21 $8d $1e
    ret nc                                        ; $6851: $d0

    ld [bc], a                                    ; $6852: $02
    ld a, h                                       ; $6853: $7c
    push de                                       ; $6854: $d5
    jp Jump_031_43da                              ; $6855: $c3 $da $43


    ld e, e                                       ; $6858: $5b
    daa                                           ; $6859: $27
    db $fd                                        ; $685a: $fd
    ld sp, $14b6                                  ; $685b: $31 $b6 $14
    ld [$ee2f], a                                 ; $685e: $ea $2f $ee
    ld d, [hl]                                    ; $6861: $56
    ld b, c                                       ; $6862: $41
    ret z                                         ; $6863: $c8

    ld l, e                                       ; $6864: $6b
    inc de                                        ; $6865: $13
    ld [hl], a                                    ; $6866: $77
    xor h                                         ; $6867: $ac
    cp c                                          ; $6868: $b9
    rst $10                                       ; $6869: $d7
    xor h                                         ; $686a: $ac
    db $e3                                        ; $686b: $e3
    inc hl                                        ; $686c: $23
    sub d                                         ; $686d: $92
    xor a                                         ; $686e: $af
    adc $3a                                       ; $686f: $ce $3a
    ld a, $e0                                     ; $6871: $3e $e0
    push bc                                       ; $6873: $c5
    sbc h                                         ; $6874: $9c
    rst $10                                       ; $6875: $d7
    ld h, $ae                                     ; $6876: $26 $ae
    cp [hl]                                       ; $6878: $be
    sub $08                                       ; $6879: $d6 $08
    ld a, [hl-]                                   ; $687b: $3a
    cpl                                           ; $687c: $2f
    ld l, l                                       ; $687d: $6d
    add sp, $5a                                   ; $687e: $e8 $5a
    ld b, $54                                     ; $6880: $06 $54
    ld [hl-], a                                   ; $6882: $32
    and b                                         ; $6883: $a0
    ld e, l                                       ; $6884: $5d
    db $ec                                        ; $6885: $ec
    rla                                           ; $6886: $17
    ld e, d                                       ; $6887: $5a
    di                                            ; $6888: $f3
    ret nz                                        ; $6889: $c0

    ld b, a                                       ; $688a: $47
    rrca                                          ; $688b: $0f
    ld l, e                                       ; $688c: $6b
    rrca                                          ; $688d: $0f
    ld e, l                                       ; $688e: $5d
    daa                                           ; $688f: $27
    ret c                                         ; $6890: $d8

    push bc                                       ; $6891: $c5
    sub [hl]                                      ; $6892: $96
    ld e, a                                       ; $6893: $5f
    ld l, h                                       ; $6894: $6c
    push bc                                       ; $6895: $c5
    cp b                                          ; $6896: $b8
    ld h, d                                       ; $6897: $62
    ld e, c                                       ; $6898: $59
    and $a4                                       ; $6899: $e6 $a4
    jr jr_031_68f4                                ; $689b: $18 $57

    inc l                                         ; $689d: $2c
    sbc [hl]                                      ; $689e: $9e
    ld e, a                                       ; $689f: $5f
    ld e, b                                       ; $68a0: $58
    rst $10                                       ; $68a1: $d7
    dec d                                         ; $68a2: $15
    inc de                                        ; $68a3: $13
    dec l                                         ; $68a4: $2d
    sbc [hl]                                      ; $68a5: $9e
    ld e, a                                       ; $68a6: $5f

Jump_031_68a7:
    jr z, jr_031_6838                             ; $68a7: $28 $8f

    ld e, l                                       ; $68a9: $5d
    or a                                          ; $68aa: $b7
    ld d, d                                       ; $68ab: $52
    scf                                           ; $68ac: $37
    push hl                                       ; $68ad: $e5
    adc d                                         ; $68ae: $8a
    jp c, $5b43                                   ; $68af: $da $43 $5b

    push af                                       ; $68b2: $f5
    sub l                                         ; $68b3: $95
    rst $20                                       ; $68b4: $e7
    ld sp, hl                                     ; $68b5: $f9
    ld [$5f6b], a                                 ; $68b6: $ea $6b $5f
    dec bc                                        ; $68b9: $0b
    jp $6358                                      ; $68ba: $c3 $58 $63


    sub c                                         ; $68bd: $91
    rst $20                                       ; $68be: $e7
    ld sp, hl                                     ; $68bf: $f9
    or d                                          ; $68c0: $b2
    xor $0a                                       ; $68c1: $ee $0a
    ld e, d                                       ; $68c3: $5a
    ld b, $1e                                     ; $68c4: $06 $1e
    sub $1e                                       ; $68c6: $d6 $1e
    jp c, Jump_000_2702                           ; $68c8: $da $02 $27

    or c                                          ; $68cb: $b1
    sub e                                         ; $68cc: $93
    cp e                                          ; $68cd: $bb
    xor $0a                                       ; $68ce: $ee $0a
    ld a, [de]                                    ; $68d0: $1a
    db $fc                                        ; $68d1: $fc
    sub c                                         ; $68d2: $91
    jp $b4b5                                      ; $68d3: $c3 $b5 $b4


    and l                                         ; $68d6: $a5
    and b                                         ; $68d7: $a0
    ld [$d73a], sp                                ; $68d8: $08 $3a $d7
    ld h, $2e                                     ; $68db: $26 $2e
    ld c, e                                       ; $68dd: $4b
    adc e                                         ; $68de: $8b
    rst $30                                       ; $68df: $f7
    ld l, c                                       ; $68e0: $69
    ld e, h                                       ; $68e1: $5c
    or c                                          ; $68e2: $b1
    inc l                                         ; $68e3: $2c
    ld [hl], e                                    ; $68e4: $73
    ld d, d                                       ; $68e5: $52
    inc l                                         ; $68e6: $2c
    inc bc                                        ; $68e7: $03
    ld a, [de]                                    ; $68e8: $1a
    pop bc                                        ; $68e9: $c1
    xor [hl]                                      ; $68ea: $ae
    ld d, a                                       ; $68eb: $57
    adc d                                         ; $68ec: $8a
    ld l, $c2                                     ; $68ed: $2e $c2
    rst $30                                       ; $68ef: $f7
    cp a                                          ; $68f0: $bf
    ld h, d                                       ; $68f1: $62
    and d                                         ; $68f2: $a2
    ld h, l                                       ; $68f3: $65

jr_031_68f4:
    ld b, b                                       ; $68f4: $40
    inc hl                                        ; $68f5: $23
    ret c                                         ; $68f6: $d8

    db $ed                                        ; $68f7: $ed
    ld h, d                                       ; $68f8: $62
    db $db                                        ; $68f9: $db
    ld h, a                                       ; $68fa: $67
    add hl, hl                                    ; $68fb: $29
    ld h, [hl]                                    ; $68fc: $66
    adc h                                         ; $68fd: $8c
    xor [hl]                                      ; $68fe: $ae
    pop af                                        ; $68ff: $f1
    cp e                                          ; $6900: $bb
    ld bc, $62b9                                  ; $6901: $01 $b9 $62
    or a                                          ; $6904: $b7
    ld d, d                                       ; $6905: $52
    sub a                                         ; $6906: $97
    ld d, c                                       ; $6907: $51
    db $e4                                        ; $6908: $e4
    dec sp                                        ; $6909: $3b
    adc d                                         ; $690a: $8a
    ld b, [hl]                                    ; $690b: $46
    or b                                          ; $690c: $b0
    ld b, [hl]                                    ; $690d: $46
    ret nc                                        ; $690e: $d0

    ld a, c                                       ; $690f: $79
    ld d, l                                       ; $6910: $55
    rst $10                                       ; $6911: $d7
    sub l                                         ; $6912: $95
    and [hl]                                      ; $6913: $a6
    ld [hl], h                                    ; $6914: $74
    ld e, d                                       ; $6915: $5a
    rla                                           ; $6916: $17
    add c                                         ; $6917: $81
    ld a, h                                       ; $6918: $7c
    ld e, h                                       ; $6919: $5c
    or c                                          ; $691a: $b1
    db $eb                                        ; $691b: $eb
    ld d, l                                       ; $691c: $55
    add hl, hl                                    ; $691d: $29
    db $fc                                        ; $691e: $fc
    add [hl]                                      ; $691f: $86
    pop af                                        ; $6920: $f1
    ld a, [hl]                                    ; $6921: $7e
    adc h                                         ; $6922: $8c
    ld l, e                                       ; $6923: $6b
    ld e, c                                       ; $6924: $59
    and $a4                                       ; $6925: $e6 $a4
    ld e, b                                       ; $6927: $58
    di                                            ; $6928: $f3
    ret nz                                        ; $6929: $c0

    sub a                                         ; $692a: $97
    ld [hl], $74                                  ; $692b: $36 $74
    adc l                                         ; $692d: $8d
    ld l, e                                       ; $692e: $6b
    push bc                                       ; $692f: $c5
    ld d, [hl]                                    ; $6930: $56
    add hl, de                                    ; $6931: $19
    dec bc                                        ; $6932: $0b
    ld d, l                                       ; $6933: $55
    sbc e                                         ; $6934: $9b
    ret c                                         ; $6935: $d8

    ld [bc], a                                    ; $6936: $02
    ld e, c                                       ; $6937: $59
    ld [hl], $5b                                  ; $6938: $36 $5b
    cp c                                          ; $693a: $b9

jr_031_693b:
    dec de                                        ; $693b: $1b
    ld a, [$029a]                                 ; $693c: $fa $9a $02
    or c                                          ; $693f: $b1
    xor b                                         ; $6940: $a8
    xor c                                         ; $6941: $a9
    ld a, [de]                                    ; $6942: $1a
    ld e, e                                       ; $6943: $5b
    ld b, $34                                     ; $6944: $06 $34
    xor [hl]                                      ; $6946: $ae
    ld h, l                                       ; $6947: $65
    ccf                                           ; $6948: $3f
    sub b                                         ; $6949: $90
    rst $08                                       ; $694a: $cf
    ld h, b                                       ; $694b: $60
    pop af                                        ; $694c: $f1
    ld a, [bc]                                    ; $694d: $0a
    sub d                                         ; $694e: $92
    and c                                         ; $694f: $a1
    ld l, e                                       ; $6950: $6b
    ld a, [$07a3]                                 ; $6951: $fa $a3 $07
    or h                                          ; $6954: $b4
    sla d                                         ; $6955: $cb $22
    rst $18                                       ; $6957: $df
    add hl, bc                                    ; $6958: $09
    ld e, d                                       ; $6959: $5a
    cp h                                          ; $695a: $bc
    add d                                         ; $695b: $82
    ld h, h                                       ; $695c: $64
    add sp, $4a                                   ; $695d: $e8 $4a
    xor $ba                                       ; $695f: $ee $ba
    dec hl                                        ; $6961: $2b
    ld l, b                                       ; $6962: $68
    ld b, l                                       ; $6963: $45
    dec bc                                        ; $6964: $0b
    ld b, c                                       ; $6965: $41
    ld e, c                                       ; $6966: $59
    or [hl]                                       ; $6967: $b6
    ld h, b                                       ; $6968: $60
    add hl, de                                    ; $6969: $19
    ret nc                                        ; $696a: $d0

    or d                                          ; $696b: $b2
    or l                                          ; $696c: $b5
    db $eb                                        ; $696d: $eb
    db $fd                                        ; $696e: $fd
    ld l, a                                       ; $696f: $6f
    jr jr_031_693b                                ; $6970: $18 $c9

    ld d, l                                       ; $6972: $55
    rrca                                          ; $6973: $0f
    di                                            ; $6974: $f3
    ld d, $f5                                     ; $6975: $16 $f5
    rst $28                                       ; $6977: $ef
    add [hl]                                      ; $6978: $86
    ld l, e                                       ; $6979: $6b
    adc d                                         ; $697a: $8a

jr_031_697b:
    ldh a, [$8f]                                  ; $697b: $f0 $8f
    ld l, e                                       ; $697d: $6b
    ld e, c                                       ; $697e: $59
    and $a4                                       ; $697f: $e6 $a4
    sbc b                                         ; $6981: $98
    cp $f8                                        ; $6982: $fe $f8
    add e                                         ; $6984: $83
    ld d, h                                       ; $6985: $54
    ld d, c                                       ; $6986: $51
    cp [hl]                                       ; $6987: $be

jr_031_6988:
    inc l                                         ; $6988: $2c

jr_031_6989:
    dec l                                         ; $6989: $2d
    db $e4                                        ; $698a: $e4
    add [hl]                                      ; $698b: $86
    inc [hl]                                      ; $698c: $34
    ld hl, sp+$63                                 ; $698d: $f8 $63
    cp a                                          ; $698f: $bf
    rst $38                                       ; $6990: $ff
    dec b                                         ; $6991: $05
    ld a, $7e                                     ; $6992: $3e $7e
    rst $10                                       ; $6994: $d7
    rra                                           ; $6995: $1f
    ld a, a                                       ; $6996: $7f
    rst $38                                       ; $6997: $ff
    res 2, a                                      ; $6998: $cb $97
    ld bc, $0c95                                  ; $699a: $01 $95 $0c
    jr z, jr_031_6989                             ; $699d: $28 $ea

    pop bc                                        ; $699f: $c1
    ld d, a                                       ; $69a0: $57
    call z, $d760                                 ; $69a1: $cc $60 $d7
    xor l                                         ; $69a4: $ad
    call nc, $b94d                                ; $69a5: $d4 $4d $b9
    halt                                          ; $69a8: $76
    xor h                                         ; $69a9: $ac
    cp c                                          ; $69aa: $b9
    rst $10                                       ; $69ab: $d7
    xor h                                         ; $69ac: $ac
    db $e3                                        ; $69ad: $e3
    inc hl                                        ; $69ae: $23
    sub d                                         ; $69af: $92
    rst $10                                       ; $69b0: $d7
    ld h, $ee                                     ; $69b1: $26 $ee
    xor b                                         ; $69b3: $a8
    cp a                                          ; $69b4: $bf
    or h                                          ; $69b5: $b4
    ld hl, $4725                                  ; $69b6: $21 $25 $47
    or b                                          ; $69b9: $b0
    ld b, [hl]                                    ; $69ba: $46
    ret nc                                        ; $69bb: $d0

    ld a, c                                       ; $69bc: $79
    rst $10                                       ; $69bd: $d7
    dec hl                                        ; $69be: $2b
    ld b, l                                       ; $69bf: $45
    rla                                           ; $69c0: $17
    pop hl                                        ; $69c1: $e1
    ei                                            ; $69c2: $fb
    ld e, a                                       ; $69c3: $5f
    ld a, $ae                                     ; $69c4: $3e $ae
    ld e, b                                       ; $69c6: $58
    sub [hl]                                      ; $69c7: $96
    add hl, sp                                    ; $69c8: $39
    add hl, hl                                    ; $69c9: $29
    add $b5                                       ; $69ca: $c6 $b5
    inc c                                         ; $69cc: $0c
    jr jr_031_6988                                ; $69cd: $18 $b9

    ld d, $37                                     ; $69cf: $16 $37
    ld b, a                                       ; $69d1: $47
    push bc                                       ; $69d2: $c5
    jr c, jr_031_697b                             ; $69d3: $38 $a6

    db $d3                                        ; $69d5: $d3
    scf                                           ; $69d6: $37
    rst $10                                       ; $69d7: $d7
    daa                                           ; $69d8: $27
    ld b, l                                       ; $69d9: $45
    cp [hl]                                       ; $69da: $be
    ld c, [hl]                                    ; $69db: $4e
    xor b                                         ; $69dc: $a8
    rra                                           ; $69dd: $1f
    ret                                           ; $69de: $c9


    ld e, l                                       ; $69df: $5d
    db $ec                                        ; $69e0: $ec
    add a                                         ; $69e1: $87
    add c                                         ; $69e2: $81
    ld d, c                                       ; $69e3: $51
    ld c, a                                       ; $69e4: $4f
    ld a, a                                       ; $69e5: $7f
    ldh a, [$b5]                                  ; $69e6: $f0 $b5
    and $81                                       ; $69e8: $e6 $81
    rst $28                                       ; $69ea: $ef
    ld a, d                                       ; $69eb: $7a
    ld d, l                                       ; $69ec: $55
    and l                                         ; $69ed: $a5
    ld a, a                                       ; $69ee: $7f
    ret                                           ; $69ef: $c9


    di                                            ; $69f0: $f3
    ld d, $59                                     ; $69f1: $16 $59
    ld [hl+], a                                   ; $69f3: $22
    jp nc, $e6e2                                  ; $69f4: $d2 $e2 $e6

    xor b                                         ; $69f7: $a8
    ld d, l                                       ; $69f8: $55
    ld e, d                                       ; $69f9: $5a
    ld d, e                                       ; $69fa: $53
    xor h                                         ; $69fb: $ac
    ld e, e                                       ; $69fc: $5b
    ld e, d                                       ; $69fd: $5a
    ld a, [bc]                                    ; $69fe: $0a
    push af                                       ; $69ff: $f5
    di                                            ; $6a00: $f3
    inc a                                         ; $6a01: $3c
    ld l, a                                       ; $6a02: $6f
    ld bc, $95c7                                  ; $6a03: $01 $c7 $95
    sub c                                         ; $6a06: $91
    sub [hl]                                      ; $6a07: $96
    ld [hl], $a0                                  ; $6a08: $36 $a0
    jp hl                                         ; $6a0a: $e9


    ld e, a                                       ; $6a0b: $5f
    rst $08                                       ; $6a0c: $cf
    dec [hl]                                      ; $6a0d: $35
    ld l, $e8                                     ; $6a0e: $2e $e8
    inc a                                         ; $6a10: $3c
    inc bc                                        ; $6a11: $03
    ld [hl], d                                    ; $6a12: $72
    push bc                                       ; $6a13: $c5
    ld l, $f6                                     ; $6a14: $2e $f6
    dec bc                                        ; $6a16: $0b
    ld b, l                                       ; $6a17: $45
    cp [hl]                                       ; $6a18: $be
    inc hl                                        ; $6a19: $23
    rst $28                                       ; $6a1a: $ef
    sub [hl]                                      ; $6a1b: $96
    ld a, d                                       ; $6a1c: $7a
    adc $93                                       ; $6a1d: $ce $93
    inc hl                                        ; $6a1f: $23
    sbc b                                         ; $6a20: $98
    push bc                                       ; $6a21: $c5
    ld d, d                                       ; $6a22: $52
    adc d                                         ; $6a23: $8a
    add a                                         ; $6a24: $87
    ld a, a                                       ; $6a25: $7f
    db $fc                                        ; $6a26: $fc
    ld c, $7f                                     ; $6a27: $0e $7f
    ld b, a                                       ; $6a29: $47
    cp a                                          ; $6a2a: $bf
    add d                                         ; $6a2b: $82
    ld l, a                                       ; $6a2c: $6f
    dec e                                         ; $6a2d: $1d
    adc h                                         ; $6a2e: $8c
    add l                                         ; $6a2f: $85
    ld l, e                                       ; $6a30: $6b
    ld e, $f8                                     ; $6a31: $1e $f8
    call c, $4b3e                                 ; $6a33: $dc $3e $4b
    ld a, $b2                                     ; $6a36: $3e $b2

Call_031_6a38:
    ld e, l                                       ; $6a38: $5d
    xor a                                         ; $6a39: $af
    inc d                                         ; $6a3a: $14
    ld e, l                                       ; $6a3b: $5d
    add h                                         ; $6a3c: $84
    rst $28                                       ; $6a3d: $ef
    adc a                                         ; $6a3e: $8f
    ld l, e                                       ; $6a3f: $6b
    ld e, c                                       ; $6a40: $59
    and $a4                                       ; $6a41: $e6 $a4
    ret z                                         ; $6a43: $c8

    ld e, e                                       ; $6a44: $5b
    ld b, a                                       ; $6a45: $47
    pop de                                        ; $6a46: $d1
    or b                                          ; $6a47: $b0
    adc h                                         ; $6a48: $8c
    or h                                          ; $6a49: $b4
    or h                                          ; $6a4a: $b4
    ld bc, $20cd                                  ; $6a4b: $01 $cd $20
    ld [bc], a                                    ; $6a4e: $02
    rlca                                          ; $6a4f: $07
    ld a, a                                       ; $6a50: $7f
    ld b, a                                       ; $6a51: $47
    cp a                                          ; $6a52: $bf
    add d                                         ; $6a53: $82

jr_031_6a54:
    ld l, a                                       ; $6a54: $6f
    sbc l                                         ; $6a55: $9d
    inc e                                         ; $6a56: $1c
    sbc e                                         ; $6a57: $9b
    add d                                         ; $6a58: $82
    rla                                           ; $6a59: $17
    ld b, h                                       ; $6a5a: $44
    cp [hl]                                       ; $6a5b: $be
    xor h                                         ; $6a5c: $ac
    cp e                                          ; $6a5d: $bb
    add d                                         ; $6a5e: $82
    ld d, [hl]                                    ; $6a5f: $56
    ld [$032c], a                                 ; $6a60: $ea $2c $03
    ld a, [de]                                    ; $6a63: $1a
    pop bc                                        ; $6a64: $c1
    sbc d                                         ; $6a65: $9a
    ld h, d                                       ; $6a66: $62
    sub a                                         ; $6a67: $97
    ld h, d                                       ; $6a68: $62
    and h                                         ; $6a69: $a4
    ret c                                         ; $6a6a: $d8

    push af                                       ; $6a6b: $f5
    xor d                                         ; $6a6c: $aa
    inc d                                         ; $6a6d: $14
    ld a, [hl]                                    ; $6a6e: $7e
    jp Jump_000_3f78                              ; $6a6f: $c3 $78 $3f


    add $b5                                       ; $6a72: $c6 $b5
    inc l                                         ; $6a74: $2c
    ld [hl], e                                    ; $6a75: $73
    ld d, d                                       ; $6a76: $52
    db $e4                                        ; $6a77: $e4
    xor e                                         ; $6a78: $ab
    xor a                                         ; $6a79: $af
    ld sp, $b186                                  ; $6a7a: $31 $86 $b1
    xor d                                         ; $6a7d: $aa
    db $eb                                        ; $6a7e: $eb
    ld c, d                                       ; $6a7f: $4a

Call_031_6a80:
    and e                                         ; $6a80: $a3
    cp e                                          ; $6a81: $bb
    cp $f8                                        ; $6a82: $fe $f8
    ei                                            ; $6a84: $fb
    ld e, a                                       ; $6a85: $5f
    cp [hl]                                       ; $6a86: $be
    inc c                                         ; $6a87: $0c
    xor b                                         ; $6a88: $a8
    ld h, h                                       ; $6a89: $64
    ld b, b                                       ; $6a8a: $40
    ld d, c                                       ; $6a8b: $51
    rrca                                          ; $6a8c: $0f
    cp [hl]                                       ; $6a8d: $be

jr_031_6a8e:
    and d                                         ; $6a8e: $a2
    ld [hl], $b1                                  ; $6a8f: $36 $b1
    dec b                                         ; $6a91: $05
    dec e                                         ; $6a92: $1d
    db $e4                                        ; $6a93: $e4
    rla                                           ; $6a94: $17
    sub $26                                       ; $6a95: $d6 $26
    ld l, $eb                                     ; $6a97: $2e $eb
    xor [hl]                                      ; $6a99: $ae
    and b                                         ; $6a9a: $a0
    ld sp, $586e                                  ; $6a9b: $31 $6e $58
    jp hl                                         ; $6a9e: $e9


    db $d3                                        ; $6a9f: $d3
    ld e, b                                       ; $6aa0: $58
    ld a, [$6584]                                 ; $6aa1: $fa $84 $65
    ld e, h                                       ; $6aa4: $5c
    inc hl                                        ; $6aa5: $23
    ld e, e                                       ; $6aa6: $5b
    ld h, e                                       ; $6aa7: $63
    ld c, [hl]                                    ; $6aa8: $4e
    or l                                          ; $6aa9: $b5
    adc c                                         ; $6aaa: $89
    dec l                                         ; $6aab: $2d
    ld e, c                                       ; $6aac: $59
    ld [hl], a                                    ; $6aad: $77
    dec b                                         ; $6aae: $05
    call Call_000_3f51                            ; $6aaf: $cd $51 $3f
    cp c                                          ; $6ab2: $b9
    ld e, $6d                                     ; $6ab3: $1e $6d
    push de                                       ; $6ab5: $d5
    db $dd                                        ; $6ab6: $dd
    sub [hl]                                      ; $6ab7: $96
    ld [hl], $a4                                  ; $6ab8: $36 $a4
    dec [hl]                                      ; $6aba: $35
    push bc                                       ; $6abb: $c5
    jr nc, jr_031_6a8e                            ; $6abc: $30 $d0

    ld l, e                                       ; $6abe: $6b
    inc de                                        ; $6abf: $13
    ld [hl], a                                    ; $6ac0: $77
    jr c, jr_031_6a54                             ; $6ac1: $38 $91

    ld a, $8f                                     ; $6ac3: $3e $8f
    pop bc                                        ; $6ac5: $c1

jr_031_6ac6:
    ld e, a                                       ; $6ac6: $5f
    inc hl                                        ; $6ac7: $23
    ld e, b                                       ; $6ac8: $58
    ld b, $b4                                     ; $6ac9: $06 $b4
    ld l, h                                       ; $6acb: $6c
    adc l                                         ; $6acc: $8d
    ld h, e                                       ; $6acd: $63
    ld l, b                                       ; $6ace: $68
    ld b, $9d                                     ; $6acf: $06 $9d
    ld h, a                                       ; $6ad1: $67
    ld b, b                                       ; $6ad2: $40
    xor [hl]                                      ; $6ad3: $ae
    ld e, b                                       ; $6ad4: $58
    ld b, $b4                                     ; $6ad5: $06 $b4
    ld [$7261], a                                 ; $6ad7: $ea $61 $72
    reti                                          ; $6ada: $d9


    ld [hl], a                                    ; $6adb: $77
    jp $f219                                      ; $6adc: $c3 $19 $f2


    db $db                                        ; $6adf: $db
    adc [hl]                                      ; $6ae0: $8e
    dec [hl]                                      ; $6ae1: $35
    rst $30                                       ; $6ae2: $f7
    sbc d                                         ; $6ae3: $9a
    ld [hl], l                                    ; $6ae4: $75
    ld a, h                                       ; $6ae5: $7c
    ld b, h                                       ; $6ae6: $44
    ld a, [c]                                     ; $6ae7: $f2
    jp c, $16c4                                   ; $6ae8: $da $c4 $16

    push af                                       ; $6aeb: $f5
    rst $28                                       ; $6aec: $ef
    adc d                                         ; $6aed: $8a
    and [hl]                                      ; $6aee: $a6
    xor [hl]                                      ; $6aef: $ae
    ld l, e                                       ; $6af0: $6b
    add hl, de                                    ; $6af1: $19
    ret nc                                        ; $6af2: $d0

    ld [$7746], sp                                ; $6af3: $08 $46 $77
    xor e                                         ; $6af6: $ab
    jr nz, @-$1a                                  ; $6af7: $20 $e4

    ld d, $4b                                     ; $6af9: $16 $4b
    and c                                         ; $6afb: $a1
    cp $8c                                        ; $6afc: $fe $8c
    pop de                                        ; $6afe: $d1
    or l                                          ; $6aff: $b5
    ld c, e                                       ; $6b00: $4b
    or c                                          ; $6b01: $b1

Call_031_6b02:
    inc l                                         ; $6b02: $2c
    ld [hl], e                                    ; $6b03: $73
    ld d, d                                       ; $6b04: $52
    call nc, $ee26                                ; $6b05: $d4 $26 $ee
    and h                                         ; $6b08: $a4
    cp a                                          ; $6b09: $bf
    ret nc                                        ; $6b0a: $d0

    jr jr_031_6ac6                                ; $6b0b: $18 $b9

    db $db                                        ; $6b0d: $db
    ld [$e3ac], a                                 ; $6b0e: $ea $ac $e3
    inc bc                                        ; $6b11: $03
    ld e, [hl]                                    ; $6b12: $5e
    call z, Call_031_6d79                         ; $6b13: $cc $79 $6d
    ld h, d                                       ; $6b16: $62
    dec bc                                        ; $6b17: $0b
    push af                                       ; $6b18: $f5
    or l                                          ; $6b19: $b5
    or h                                          ; $6b1a: $b4
    call c, Call_000_1570                         ; $6b1b: $dc $70 $15
    ld a, [bc]                                    ; $6b1e: $0a
    ld a, [hl-]                                   ; $6b1f: $3a
    adc a                                         ; $6b20: $8f
    ld l, e                                       ; $6b21: $6b
    ld e, a                                       ; $6b22: $5f
    ld l, e                                       ; $6b23: $6b
    inc l                                         ; $6b24: $2c
    ld d, [hl]                                    ; $6b25: $56
    cp l                                          ; $6b26: $bd
    ld c, a                                       ; $6b27: $4f
    ld a, [c]                                     ; $6b28: $f2
    dec [hl]                                      ; $6b29: $35
    and $f5                                       ; $6b2a: $e6 $f5
    ld c, d                                       ; $6b2c: $4a
    sbc l                                         ; $6b2d: $9d
    ld a, h                                       ; $6b2e: $7c
    rst $00                                       ; $6b2f: $c7
    jp z, Jump_031_7c2b                           ; $6b30: $ca $2b $7c

    ld e, a                                       ; $6b33: $5f
    dec bc                                        ; $6b34: $0b
    cp c                                          ; $6b35: $b9
    ld hl, $fd2d                                  ; $6b36: $21 $2d $fd
    ld c, d                                       ; $6b39: $4a
    pop de                                        ; $6b3a: $d1
    cp b                                          ; $6b3b: $b8
    and $c6                                       ; $6b3c: $e6 $c6
    ld d, d                                       ; $6b3e: $52
    ld l, l                                       ; $6b3f: $6d
    ld h, d                                       ; $6b40: $62
    dec bc                                        ; $6b41: $0b

Call_031_6b42:
    rst $30                                       ; $6b42: $f7
    db $d3                                        ; $6b43: $d3
    push af                                       ; $6b44: $f5
    ld c, c                                       ; $6b45: $49
    db $e3                                        ; $6b46: $e3
    rst $30                                       ; $6b47: $f7
    sub a                                         ; $6b48: $97
    jp z, $c516                                   ; $6b49: $ca $16 $c5

    ld [$2b8c], a                                 ; $6b4c: $ea $8c $2b
    sub $38                                       ; $6b4f: $d6 $38
    add $f8                                       ; $6b51: $c6 $f8
    dec l                                         ; $6b53: $2d
    adc l                                         ; $6b54: $8d
    or $69                                        ; $6b55: $f6 $69
    db $f4                                        ; $6b57: $f4
    add b                                         ; $6b58: $80
    or h                                          ; $6b59: $b4
    db $eb                                        ; $6b5a: $eb
    db $fd                                        ; $6b5b: $fd
    dec bc                                        ; $6b5c: $0b
    call c, Call_000_2ff5                         ; $6b5d: $dc $f5 $2f
    dec h                                         ; $6b60: $25
    ld h, a                                       ; $6b61: $67
    or b                                          ; $6b62: $b0
    xor h                                         ; $6b63: $ac
    ld [bc], a                                    ; $6b64: $02
    xor c                                         ; $6b65: $a9
    ld [hl], c                                    ; $6b66: $71
    push bc                                       ; $6b67: $c5
    xor [hl]                                      ; $6b68: $ae
    ld d, a                                       ; $6b69: $57
    adc d                                         ; $6b6a: $8a
    ld l, $c2                                     ; $6b6b: $2e $c2
    rst $30                                       ; $6b6d: $f7
    cp a                                          ; $6b6e: $bf
    ret nz                                        ; $6b6f: $c0

    ld h, e                                       ; $6b70: $63
    ld e, h                                       ; $6b71: $5c
    swap d                                        ; $6b72: $cb $32
    daa                                           ; $6b74: $27
    ld b, l                                       ; $6b75: $45
    cp [hl]                                       ; $6b76: $be
    db $e3                                        ; $6b77: $e3
    jp z, $bdfe                                   ; $6b78: $ca $fe $bd

    ld h, [hl]                                    ; $6b7b: $66
    ld a, [$7033]                                 ; $6b7c: $fa $33 $70
    ld e, e                                       ; $6b7f: $5b
    ld h, e                                       ; $6b80: $63
    or c                                          ; $6b81: $b1
    and $81                                       ; $6b82: $e6 $81
    adc a                                         ; $6b84: $8f
    ld e, $d0                                     ; $6b85: $1e $d0
    adc d                                         ; $6b87: $8a
    ld d, [hl]                                    ; $6b88: $56
    cp l                                          ; $6b89: $bd
    rst $08                                       ; $6b8a: $cf
    ld d, l                                       ; $6b8b: $55
    sbc e                                         ; $6b8c: $9b
    cp b                                          ; $6b8d: $b8
    ld d, e                                       ; $6b8e: $53
    sub c                                         ; $6b8f: $91
    push af                                       ; $6b90: $f5
    ld l, a                                       ; $6b91: $6f
    ret                                           ; $6b92: $c9


    dec e                                         ; $6b93: $1d
    db $ed                                        ; $6b94: $ed
    ld [c], a                                     ; $6b95: $e2
    inc de                                        ; $6b96: $13
    db $ed                                        ; $6b97: $ed
    jr jr_031_6bd7                                ; $6b98: $18 $3d

    ld h, a                                       ; $6b9a: $67
    jp hl                                         ; $6b9b: $e9


    sbc $02                                       ; $6b9c: $de $02
    ld e, c                                       ; $6b9e: $59

Call_031_6b9f:
    db $ec                                        ; $6b9f: $ec
    add a                                         ; $6ba0: $87

jr_031_6ba1:
    add c                                         ; $6ba1: $81
    ld sp, $c5b2                                  ; $6ba2: $31 $b2 $c5
    call Call_031_7951                            ; $6ba5: $cd $51 $79
    dec bc                                        ; $6ba8: $0b
    and a                                         ; $6ba9: $a7
    sbc $1c                                       ; $6baa: $de $1c
    or l                                          ; $6bac: $b5
    ld a, e                                       ; $6bad: $7b
    ld a, l                                       ; $6bae: $7d
    ld [$5882], sp                                ; $6baf: $08 $82 $58
    ld b, a                                       ; $6bb2: $47

jr_031_6bb3:
    inc l                                         ; $6bb3: $2c
    dec b                                         ; $6bb4: $05
    rst $08                                       ; $6bb5: $cf
    jp $dceb                                      ; $6bb6: $c3 $eb $dc


    and d                                         ; $6bb9: $a2
    ld a, e                                       ; $6bba: $7b
    dec bc                                        ; $6bbb: $0b
    and a                                         ; $6bbc: $a7
    sbc $1c                                       ; $6bbd: $de $1c
    or l                                          ; $6bbf: $b5
    ei                                            ; $6bc0: $fb
    ld sp, $0a50                                  ; $6bc1: $31 $50 $0a
    ld [hl-], a                                   ; $6bc4: $32
    ld a, [c]                                     ; $6bc5: $f2
    ld [hl], l                                    ; $6bc6: $75
    ld a, h                                       ; $6bc7: $7c
    rst $20                                       ; $6bc8: $e7
    ld a, [hl+]                                   ; $6bc9: $2a
    ld d, l                                       ; $6bca: $55
    ld [hl], e                                    ; $6bcb: $73
    ld l, a                                       ; $6bcc: $6f
    ld bc, $dea7                                  ; $6bcd: $01 $a7 $de
    inc e                                         ; $6bd0: $1c
    or l                                          ; $6bd1: $b5
    ei                                            ; $6bd2: $fb
    ld sp, $637e                                  ; $6bd3: $31 $7e $63
    dec a                                         ; $6bd6: $3d

jr_031_6bd7:
    xor a                                         ; $6bd7: $af
    ld e, c                                       ; $6bd8: $59
    pop de                                        ; $6bd9: $d1
    adc [hl]                                      ; $6bda: $8e
    dec [hl]                                      ; $6bdb: $35
    jr nz, jr_031_6ba1                            ; $6bdc: $20 $c3

    ld a, a                                       ; $6bde: $7f
    ld l, a                                       ; $6bdf: $6f

Jump_031_6be0:
    ld bc, $dea7                                  ; $6be0: $01 $a7 $de
    inc e                                         ; $6be3: $1c
    or l                                          ; $6be4: $b5
    ld a, e                                       ; $6be5: $7b
    rlca                                          ; $6be6: $07
    ld sp, hl                                     ; $6be7: $f9
    ld a, c                                       ; $6be8: $79
    dec [hl]                                      ; $6be9: $35
    ld a, a                                       ; $6bea: $7f
    ld b, l                                       ; $6beb: $45
    db $eb                                        ; $6bec: $eb
    ld h, b                                       ; $6bed: $60
    dec b                                         ; $6bee: $05
    cpl                                           ; $6bef: $2f

Jump_031_6bf0:
    inc d                                         ; $6bf0: $14
    ld [hl], h                                    ; $6bf1: $74
    cp [hl]                                       ; $6bf2: $be
    or a                                          ; $6bf3: $b7
    ld b, a                                       ; $6bf4: $47
    pop de                                        ; $6bf5: $d1
    adc d                                         ; $6bf6: $8a
    ld h, d                                       ; $6bf7: $62
    sub a                                         ; $6bf8: $97

Jump_031_6bf9:
    cp a                                          ; $6bf9: $bf
    adc e                                         ; $6bfa: $8b

Call_031_6bfb:
    dec l                                         ; $6bfb: $2d
    adc d                                         ; $6bfc: $8a
    ld [hl], c                                    ; $6bfd: $71
    dec l                                         ; $6bfe: $2d
    db $e4                                        ; $6bff: $e4
    adc l                                         ; $6c00: $8d
    ld a, $d5                                     ; $6c01: $3e $d5
    ld e, $ba                                     ; $6c03: $1e $ba
    db $d3                                        ; $6c05: $d3
    rra                                           ; $6c06: $1f
    call nz, Call_000_18c2                        ; $6c07: $c4 $c2 $18
    sbc l                                         ; $6c0a: $9d
    cp a                                          ; $6c0b: $bf
    inc c                                         ; $6c0c: $0c
    xor b                                         ; $6c0d: $a8
    ld h, h                                       ; $6c0e: $64
    ld b, b                                       ; $6c0f: $40
    cp e                                          ; $6c10: $bb
    ret c                                         ; $6c11: $d8

    cpl                                           ; $6c12: $2f
    or h                                          ; $6c13: $b4
    ld a, [hl-]                                   ; $6c14: $3a
    cp e                                          ; $6c15: $bb
    or h                                          ; $6c16: $b4
    add b                                         ; $6c17: $80
    ld l, h                                       ; $6c18: $6c
    ld d, c                                       ; $6c19: $51
    db $ed                                        ; $6c1a: $ed
    and c                                         ; $6c1b: $a1
    dec l                                         ; $6c1c: $2d
    ld b, a                                       ; $6c1d: $47
    or c                                          ; $6c1e: $b1
    sub a                                         ; $6c1f: $97
    ld b, d                                       ; $6c20: $42
    db $fd                                        ; $6c21: $fd
    db $e4                                        ; $6c22: $e4
    or d                                          ; $6c23: $b2
    or l                                          ; $6c24: $b5
    jr nc, jr_031_6bb3                            ; $6c25: $30 $8c

    ld h, l                                       ; $6c27: $65
    ld b, b                                       ; $6c28: $40
    dec hl                                        ; $6c29: $2b
    ld e, d                                       ; $6c2a: $5a
    db $e3                                        ; $6c2b: $e3
    cpl                                           ; $6c2c: $2f
    xor l                                         ; $6c2d: $ad
    ld [$2f81], sp                                ; $6c2e: $08 $81 $2f
    adc e                                         ; $6c31: $8b
    db $fd                                        ; $6c32: $fd
    ret nz                                        ; $6c33: $c0

    adc l                                         ; $6c34: $8d
    pop de                                        ; $6c35: $d1
    inc d                                         ; $6c36: $14
    ld h, c                                       ; $6c37: $61
    dec [hl]                                      ; $6c38: $35
    add [hl]                                      ; $6c39: $86
    inc [hl]                                      ; $6c3a: $34
    xor [hl]                                      ; $6c3b: $ae
    add l                                         ; $6c3c: $85
    add $6f                                       ; $6c3d: $c6 $6f
    add hl, hl                                    ; $6c3f: $29
    ld [hl], e                                    ; $6c40: $73
    or a                                          ; $6c41: $b7
    ld [$b8f9], sp                                ; $6c42: $08 $f9 $b8
    ld d, $f2                                     ; $6c45: $16 $f2
    ld b, [hl]                                    ; $6c47: $46
    sbc a                                         ; $6c48: $9f
    ld [hl+], a                                   ; $6c49: $22
    cp c                                          ; $6c4a: $b9
    add $eb                                       ; $6c4b: $c6 $eb
    add $b8                                       ; $6c4d: $c6 $b8
    ld h, d                                       ; $6c4f: $62
    ld hl, $4577                                  ; $6c50: $21 $77 $45
    ld [hl], d                                    ; $6c53: $72
    db $f4                                        ; $6c54: $f4
    add b                                         ; $6c55: $80
    ld d, [hl]                                    ; $6c56: $56
    ld h, a                                       ; $6c57: $67
    push hl                                       ; $6c58: $e5
    adc $16                                       ; $6c59: $ce $16
    cp b                                          ; $6c5b: $b8
    ld a, [c]                                     ; $6c5c: $f2
    ld [hl], l                                    ; $6c5d: $75
    inc d                                         ; $6c5e: $14
    ld d, b                                       ; $6c5f: $50
    cp l                                          ; $6c60: $bd
    xor [hl]                                      ; $6c61: $ae
    ret                                           ; $6c62: $c9


    or l                                          ; $6c63: $b5
    inc c                                         ; $6c64: $0c
    ld l, b                                       ; $6c65: $68
    inc b                                         ; $6c66: $04
    ld l, e                                       ; $6c67: $6b
    ld e, $b8                                     ; $6c68: $1e $b8
    dec de                                        ; $6c6a: $1b
    add $6a                                       ; $6c6b: $c6 $6a
    ld b, [hl]                                    ; $6c6d: $46
    cp $80                                        ; $6c6e: $fe $80
    sub c                                         ; $6c70: $91
    adc a                                         ; $6c71: $8f
    dec hl                                        ; $6c72: $2b
    halt                                          ; $6c73: $76
    ld sp, hl                                     ; $6c74: $f9
    cp e                                          ; $6c75: $bb
    ret c                                         ; $6c76: $d8

    and d                                         ; $6c77: $a2
    jr @-$27                                      ; $6c78: $18 $d7

    ld b, d                                       ; $6c7a: $42
    sbc $e8                                       ; $6c7b: $de $e8
    ld d, e                                       ; $6c7d: $53
    sbc $02                                       ; $6c7e: $de $02
    dec e                                         ; $6c80: $1d
    db $e4                                        ; $6c81: $e4
    rla                                           ; $6c82: $17
    ld h, $77                                     ; $6c83: $26 $77
    xor h                                         ; $6c85: $ac
    or c                                          ; $6c86: $b1
    inc e                                         ; $6c87: $1c
    ld a, c                                       ; $6c88: $79
    sbc $02                                       ; $6c89: $de $02
    dec e                                         ; $6c8b: $1d
    inc c                                         ; $6c8c: $0c
    ld h, e                                       ; $6c8d: $63
    reti                                          ; $6c8e: $d9


    ld a, [de]                                    ; $6c8f: $1a
    db $dd                                        ; $6c90: $dd
    push af                                       ; $6c91: $f5
    rst $10                                       ; $6c92: $d7
    jr c, jr_031_6cbf                             ; $6c93: $38 $2a

    ld e, a                                       ; $6c95: $5f
    ld a, l                                       ; $6c96: $7d
    adc l                                         ; $6c97: $8d
    xor $86                                       ; $6c98: $ee $86
    ld e, h                                       ; $6c9a: $5c
    ld l, [hl]                                    ; $6c9b: $6e
    jr jr_031_6ce9                                ; $6c9c: $18 $4b

    and c                                         ; $6c9e: $a1
    ld a, [hl]                                    ; $6c9f: $7e
    ld [hl], d                                    ; $6ca0: $72
    sub l                                         ; $6ca1: $95
    ld h, c                                       ; $6ca2: $61
    inc l                                         ; $6ca3: $2c
    ei                                            ; $6ca4: $fb
    ld l, [hl]                                    ; $6ca5: $6e
    cp b                                          ; $6ca6: $b8
    add $22                                       ; $6ca7: $c6 $22
    ld l, [hl]                                    ; $6ca9: $6e
    xor e                                         ; $6caa: $ab
    sbc $1f                                       ; $6cab: $de $1f
    xor c                                         ; $6cad: $a9
    ld l, d                                       ; $6cae: $6a
    ld h, d                                       ; $6caf: $62
    ld [hl], l                                    ; $6cb0: $75
    sub $40                                       ; $6cb1: $d6 $40
    ld h, c                                       ; $6cb3: $61
    ld l, [hl]                                    ; $6cb4: $6e
    adc [hl]                                      ; $6cb5: $8e
    ld hl, $d71f                                  ; $6cb6: $21 $1f $d7
    jp z, Jump_031_7f1d                           ; $6cb9: $ca $1d $7f

    add sp, $22                                   ; $6cbc: $e8 $22
    cp h                                          ; $6cbe: $bc

jr_031_6cbf:
    sub b                                         ; $6cbf: $90
    ld l, e                                       ; $6cc0: $6b
    ld bc, $a2be                                  ; $6cc1: $01 $be $a2
    ld e, b                                       ; $6cc4: $58
    ld e, h                                       ; $6cc5: $5c
    and $96                                       ; $6cc6: $e6 $96
    cp d                                          ; $6cc8: $ba
    add hl, hl                                    ; $6cc9: $29
    ld d, [hl]                                    ; $6cca: $56
    ld [$cb8c], a                                 ; $6ccb: $ea $8c $cb
    dec e                                         ; $6cce: $1d
    db $eb                                        ; $6ccf: $eb
    cp d                                          ; $6cd0: $ba
    ld h, $5a                                     ; $6cd1: $26 $5a
    or $dd                                        ; $6cd3: $f6 $dd
    ld [hl], b                                    ; $6cd5: $70
    add hl, hl                                    ; $6cd6: $29
    push bc                                       ; $6cd7: $c5
    jp Jump_031_7e3f                              ; $6cd8: $c3 $3f $7e


    add a                                         ; $6cdb: $87
    xor a                                         ; $6cdc: $af
    dec [hl]                                      ; $6cdd: $35
    ld [hl+], a                                   ; $6cde: $22
    inc h                                         ; $6cdf: $24
    dec l                                         ; $6ce0: $2d
    ld d, b                                       ; $6ce1: $50
    ld b, c                                       ; $6ce2: $41
    jp z, Jump_031_475b                           ; $6ce3: $ca $5b $47

    cp h                                          ; $6ce6: $bc
    sbc a                                         ; $6ce7: $9f
    db $fd                                        ; $6ce8: $fd

jr_031_6ce9:
    ret nz                                        ; $6ce9: $c0

    sub e                                         ; $6cea: $93
    ld l, e                                       ; $6ceb: $6b
    db $fc                                        ; $6cec: $fc
    and l                                         ; $6ced: $a5
    dec d                                         ; $6cee: $15
    ld hl, $65f0                                  ; $6cef: $21 $f0 $65
    or c                                          ; $6cf2: $b1

jr_031_6cf3:
    rra                                           ; $6cf3: $1f
    cp b                                          ; $6cf4: $b8
    ld sp, $5bca                                  ; $6cf5: $31 $ca $5b
    ld b, a                                       ; $6cf8: $47
    cp h                                          ; $6cf9: $bc
    sbc a                                         ; $6cfa: $9f
    db $fd                                        ; $6cfb: $fd
    ret nz                                        ; $6cfc: $c0

    sub e                                         ; $6cfd: $93
    dec sp                                        ; $6cfe: $3b
    sub $dc                                       ; $6cff: $d6 $dc
    ld l, e                                       ; $6d01: $6b
    sub d                                         ; $6d02: $92
    set 0, b                                      ; $6d03: $cb $c0
    ld e, l                                       ; $6d05: $5d
    ld b, c                                       ; $6d06: $41
    push af                                       ; $6d07: $f5
    ld l, $2d                                     ; $6d08: $2e $2d
    inc bc                                        ; $6d0a: $03
    jr c, jr_031_6cf3                             ; $6d0b: $38 $e6

    ld b, c                                       ; $6d0d: $41
    call z, $baaa                                 ; $6d0e: $cc $aa $ba
    ld e, a                                       ; $6d11: $5f

jr_031_6d12:
    ld l, e                                       ; $6d12: $6b
    call z, Call_000_1787                         ; $6d13: $cc $87 $17
    sub $1e                                       ; $6d16: $d6 $1e
    jp c, Jump_000_2702                           ; $6d18: $da $02 $27

    ld l, b                                       ; $6d1b: $68
    adc l                                         ; $6d1c: $8d
    cp a                                          ; $6d1d: $bf
    or h                                          ; $6d1e: $b4
    ld [hl+], a                                   ; $6d1f: $22
    inc b                                         ; $6d20: $04
    cp [hl]                                       ; $6d21: $be
    ld d, e                                       ; $6d22: $53
    ld e, $0b                                     ; $6d23: $1e $0b
    or h                                          ; $6d25: $b4
    ld [$e36e], a                                 ; $6d26: $ea $6e $e3
    xor d                                         ; $6d29: $aa
    db $ec                                        ; $6d2a: $ec
    di                                            ; $6d2b: $f3
    db $db                                        ; $6d2c: $db
    cp b                                          ; $6d2d: $b8
    ld b, [hl]                                    ; $6d2e: $46
    cp $80                                        ; $6d2f: $fe $80
    sub c                                         ; $6d31: $91
    adc a                                         ; $6d32: $8f
    dec hl                                        ; $6d33: $2b
    halt                                          ; $6d34: $76
    ld sp, hl                                     ; $6d35: $f9
    cp e                                          ; $6d36: $bb
    ret c                                         ; $6d37: $d8

    and d                                         ; $6d38: $a2
    jr jr_031_6d12                                ; $6d39: $18 $d7

    ld b, d                                       ; $6d3b: $42
    sbc $e8                                       ; $6d3c: $de $e8
    db $d3                                        ; $6d3e: $d3
    ld b, h                                       ; $6d3f: $44
    dec sp                                        ; $6d40: $3b
    sub $58                                       ; $6d41: $d6 $58
    adc [hl]                                      ; $6d43: $8e
    ld a, h                                       ; $6d44: $7c
    push de                                       ; $6d45: $d5
    db $dd                                        ; $6d46: $dd
    add $91                                       ; $6d47: $c6 $91
    sub [hl]                                      ; $6d49: $96
    ld bc, $fb2d                                  ; $6d4a: $01 $2d $fb
    xor [hl]                                      ; $6d4d: $ae
    ccf                                           ; $6d4e: $3f
    ld a, [c]                                     ; $6d4f: $f2
    rlca                                          ; $6d50: $07
    adc h                                         ; $6d51: $8c
    call c, $d630                                 ; $6d52: $dc $30 $d6
    ld [$5ea8], sp                                ; $6d55: $08 $a8 $5e
    rst $10                                       ; $6d58: $d7
    db $e4                                        ; $6d59: $e4
    ld e, d                                       ; $6d5a: $5a
    ld h, e                                       ; $6d5b: $63
    ld a, $bc                                     ; $6d5c: $3e $bc
    jr nc, jr_031_6dcf                            ; $6d5e: $30 $6f

    ld bc, $0c1d                                  ; $6d60: $01 $1d $0c
    ld h, e                                       ; $6d63: $63
    rrca                                          ; $6d64: $0f
    jr nc, @+$3b                                  ; $6d65: $30 $39

    and $41                                       ; $6d67: $e6 $41

jr_031_6d69:
    adc h                                         ; $6d69: $8c
    db $fc                                        ; $6d6a: $fc
    ld bc, $d723                                  ; $6d6b: $01 $23 $d7
    ld sp, hl                                     ; $6d6e: $f9
    db $e3                                        ; $6d6f: $e3
    adc d                                         ; $6d70: $8a
    ld e, l                                       ; $6d71: $5d
    cp $2e                                        ; $6d72: $fe $2e
    or [hl]                                       ; $6d74: $b6
    jr z, jr_031_6d69                             ; $6d75: $28 $f2

    inc a                                         ; $6d77: $3c
    sbc a                                         ; $6d78: $9f

Call_031_6d79:
    ld l, b                                       ; $6d79: $68
    ld b, l                                       ; $6d7a: $45
    or c                                          ; $6d7b: $b1
    sub b                                         ; $6d7c: $90
    scf                                           ; $6d7d: $37

Jump_031_6d7e:
    ld a, [$cb14]                                 ; $6d7e: $fa $14 $cb
    nop                                           ; $6d81: $00
    adc [hl]                                      ; $6d82: $8e
    ld a, c                                       ; $6d83: $79
    sbc a                                         ; $6d84: $9f
    ld h, [hl]                                    ; $6d85: $66
    adc h                                         ; $6d86: $8c
    xor [hl]                                      ; $6d87: $ae
    jp c, $16c4                                   ; $6d88: $da $c4 $16

    ld e, c                                       ; $6d8b: $59
    or [hl]                                       ; $6d8c: $b6
    xor a                                         ; $6d8d: $af
    ld sp, $620f                                  ; $6d8e: $31 $0f $62
    db $fc                                        ; $6d91: $fc
    and $f6                                       ; $6d92: $e6 $f6
    ld e, c                                       ; $6d94: $59
    ld e, d                                       ; $6d95: $5a
    ld h, e                                       ; $6d96: $63
    ld sp, $d7f2                                  ; $6d97: $31 $f2 $d7
    inc l                                         ; $6d9a: $2c
    ld [hl], b                                    ; $6d9b: $70
    reti                                          ; $6d9c: $d9


    ld e, d                                       ; $6d9d: $5a
    ld a, [$9601]                                 ; $6d9e: $fa $01 $96
    and d                                         ; $6da1: $a2
    pop bc                                        ; $6da2: $c1
    ld e, a                                       ; $6da3: $5f
    inc hl                                        ; $6da4: $23
    xor b                                         ; $6da5: $a8
    dec a                                         ; $6da6: $3d
    or h                                          ; $6da7: $b4
    dec b                                         ; $6da8: $05
    dec e                                         ; $6da9: $1d
    dec l                                         ; $6daa: $2d
    add $61                                       ; $6dab: $c6 $61
    db $f4                                        ; $6dad: $f4
    add b                                         ; $6dae: $80
    ld l, d                                       ; $6daf: $6a
    inc de                                        ; $6db0: $13
    rst $10                                       ; $6db1: $d7
    pop bc                                        ; $6db2: $c1
    jr nc, jr_031_6dcb                            ; $6db3: $30 $16

    xor a                                         ; $6db5: $af
    ld b, [hl]                                    ; $6db6: $46
    rst $20                                       ; $6db7: $e7
    xor a                                         ; $6db8: $af
    ld [hl], c                                    ; $6db9: $71
    ldh [$fa], a                                  ; $6dba: $e0 $fa
    ld d, h                                       ; $6dbc: $54
    sbc e                                         ; $6dbd: $9b
    ret c                                         ; $6dbe: $d8

    ld [bc], a                                    ; $6dbf: $02
    ld b, a                                       ; $6dc0: $47
    ld [hl], l                                    ; $6dc1: $75
    cp [hl]                                       ; $6dc2: $be
    ld d, h                                       ; $6dc3: $54
    adc d                                         ; $6dc4: $8a
    ld a, $8d                                     ; $6dc5: $3e $8d
    call c, $c318                                 ; $6dc7: $dc $18 $c3
    sub d                                         ; $6dca: $92

jr_031_6dcb:
    call c, $e6b1                                 ; $6dcb: $dc $b1 $e6
    ld e, [hl]                                    ; $6dce: $5e

jr_031_6dcf:
    sub e                                         ; $6dcf: $93
    xor a                                         ; $6dd0: $af
    cp $dd                                        ; $6dd1: $fe $dd

jr_031_6dd3:
    xor [hl]                                      ; $6dd3: $ae
    db $eb                                        ; $6dd4: $eb
    add hl, sp                                    ; $6dd5: $39
    rst $10                                       ; $6dd6: $d7
    ld a, [$f35a]                                 ; $6dd7: $fa $5a $f3
    ldh a, [$d3]                                  ; $6dda: $f0 $d3
    ld [$798c], a                                 ; $6ddc: $ea $8c $79
    db $e4                                        ; $6ddf: $e4
    ld e, d                                       ; $6de0: $5a
    ld h, l                                       ; $6de1: $65
    jr jr_031_6dd3                                ; $6de2: $18 $ef

    xor a                                         ; $6de4: $af
    ld a, c                                       ; $6de5: $79
    ldh [$ab], a                                  ; $6de6: $e0 $ab
    xor $c6                                       ; $6de8: $ee $c6
    inc a                                         ; $6dea: $3c
    db $f4                                        ; $6deb: $f4
    pop af                                        ; $6dec: $f1
    ld e, e                                       ; $6ded: $5b
    jp z, $2ddc                                   ; $6dee: $ca $dc $2d

    ld [c], a                                     ; $6df1: $e2
    ld [hl], $ae                                  ; $6df2: $36 $ae
    ld e, l                                       ; $6df4: $5d
    adc d                                         ; $6df5: $8a
    cp c                                          ; $6df6: $b9
    ld a, [de]                                    ; $6df7: $1a
    jp nz, $c8a2                                  ; $6df8: $c2 $a2 $c8

    ld e, e                                       ; $6dfb: $5b
    dec e                                         ; $6dfc: $1d
    call $86d3                                    ; $6dfd: $cd $d3 $86
    ld d, h                                       ; $6e00: $54
    sbc e                                         ; $6e01: $9b
    cp b                                          ; $6e02: $b8
    db $d3                                        ; $6e03: $d3
    rra                                           ; $6e04: $1f
    ld e, [hl]                                    ; $6e05: $5e
    cp b                                          ; $6e06: $b8
    and d                                         ; $6e07: $a2
    ret c                                         ; $6e08: $d8

    push hl                                       ; $6e09: $e5
    rst $28                                       ; $6e0a: $ef
    ld h, d                                       ; $6e0b: $62
    adc e                                         ; $6e0c: $8b
    ld h, d                                       ; $6e0d: $62
    ld e, h                                       ; $6e0e: $5c
    dec bc                                        ; $6e0f: $0b
    ld a, c                                       ; $6e10: $79
    and e                                         ; $6e11: $a3
    ld c, a                                       ; $6e12: $4f
    db $e3                                        ; $6e13: $e3
    rst $28                                       ; $6e14: $ef
    db $d3                                        ; $6e15: $d3
    or d                                          ; $6e16: $b2
    rst $28                                       ; $6e17: $ef
    add [hl]                                      ; $6e18: $86
    ld c, e                                       ; $6e19: $4b
    add hl, hl                                    ; $6e1a: $29
    ld e, $fe                                     ; $6e1b: $1e $fe
    cp h                                          ; $6e1d: $bc
    dec b                                         ; $6e1e: $05
    ld e, c                                       ; $6e1f: $59
    ld [hl], a                                    ; $6e20: $77
    dec b                                         ; $6e21: $05
    adc l                                         ; $6e22: $8d
    jp Jump_031_5e38                              ; $6e23: $c3 $38 $5e


    ld h, h                                       ; $6e26: $64
    sub l                                         ; $6e27: $95
    ld a, [c]                                     ; $6e28: $f2
    ld d, $47                                     ; $6e29: $16 $47
    and b                                         ; $6e2b: $a0
    ld a, [hl]                                    ; $6e2c: $7e
    ld [hl], d                                    ; $6e2d: $72
    ld a, [$73d7]                                 ; $6e2e: $fa $d7 $73
    adc l                                         ; $6e31: $8d
    jp Jump_031_5e38                              ; $6e32: $c3 $38 $5e


    ld h, h                                       ; $6e35: $64
    sub l                                         ; $6e36: $95
    ld a, [c]                                     ; $6e37: $f2
    ld d, $27                                     ; $6e38: $16 $27
    db $fd                                        ; $6e3a: $fd
    db $fd                                        ; $6e3b: $fd
    cp e                                          ; $6e3c: $bb
    dec l                                         ; $6e3d: $2d
    db $db                                        ; $6e3e: $db
    ld a, [hl+]                                   ; $6e3f: $2a
    jp $f918                                      ; $6e40: $c3 $18 $f9


    ld l, e                                       ; $6e43: $6b
    add $35                                       ; $6e44: $c6 $35
    adc [hl]                                      ; $6e46: $8e
    rla                                           ; $6e47: $17
    ld e, c                                       ; $6e48: $59
    and l                                         ; $6e49: $a5
    cp h                                          ; $6e4a: $bc
    dec b                                         ; $6e4b: $05
    push af                                       ; $6e4c: $f5
    rst $28                                       ; $6e4d: $ef
    add [hl]                                      ; $6e4e: $86
    ld l, e                                       ; $6e4f: $6b
    adc d                                         ; $6e50: $8a
    ldh a, [$8f]                                  ; $6e51: $f0 $8f
    ld l, e                                       ; $6e53: $6b
    inc e                                         ; $6e54: $1c
    cpl                                           ; $6e55: $2f
    or d                                          ; $6e56: $b2
    ld c, d                                       ; $6e57: $4a
    xor e                                         ; $6e58: $ab
    inc c                                         ; $6e59: $0c
    ccf                                           ; $6e5a: $3f
    jp hl                                         ; $6e5b: $e9


    db $db                                        ; $6e5c: $db
    and a                                         ; $6e5d: $a7
    jp c, $16c4                                   ; $6e5e: $da $c4 $16

    ld e, c                                       ; $6e61: $59
    ld [hl], a                                    ; $6e62: $77
    dec b                                         ; $6e63: $05
    adc l                                         ; $6e64: $8d
    ld l, e                                       ; $6e65: $6b
    push hl                                       ; $6e66: $e5
    ld l, [hl]                                    ; $6e67: $6e
    rst $10                                       ; $6e68: $d7
    ei                                            ; $6e69: $fb
    ld c, b                                       ; $6e6a: $48
    ld a, c                                       ; $6e6b: $79
    dec bc                                        ; $6e6c: $0b
    ld b, a                                       ; $6e6d: $47
    pop de                                        ; $6e6e: $d1
    sbc b                                         ; $6e6f: $98
    add a                                         ; $6e70: $87
    and l                                         ; $6e71: $a5
    adc $b8                                       ; $6e72: $ce $b8
    ld d, [hl]                                    ; $6e74: $56
    xor $76                                       ; $6e75: $ee $76
    cp l                                          ; $6e77: $bd
    adc a                                         ; $6e78: $8f
    or h                                          ; $6e79: $b4
    ld a, [hl-]                                   ; $6e7a: $3a
    ei                                            ; $6e7b: $fb
    rrca                                          ; $6e7c: $0f
    jr @+$1b                                      ; $6e7d: $18 $19

    call nc, $b626                                ; $6e7f: $d4 $26 $b6
    ld b, a                                       ; $6e82: $47
    ld l, d                                       ; $6e83: $6a
    push hl                                       ; $6e84: $e5
    ld l, [hl]                                    ; $6e85: $6e
    rst $10                                       ; $6e86: $d7
    ei                                            ; $6e87: $fb
    ld c, b                                       ; $6e88: $48
    ret                                           ; $6e89: $c9


    ld e, l                                       ; $6e8a: $5d
    ld [hl], a                                    ; $6e8b: $77
    dec b                                         ; $6e8c: $05
    adc l                                         ; $6e8d: $8d
    ld e, $64                                     ; $6e8e: $1e $64
    ccf                                           ; $6e90: $3f
    ldh a, [rNR23]                                ; $6e91: $f0 $18
    ld a, c                                       ; $6e93: $79
    db $dd                                        ; $6e94: $dd
    jr jr_031_6ea7                                ; $6e95: $18 $10

    ld d, $d5                                     ; $6e97: $16 $d5
    ld h, $b6                                     ; $6e99: $26 $b6
    push af                                       ; $6e9b: $f5
    or l                                          ; $6e9c: $b5
    rr a                                          ; $6e9d: $cb $1f
    add $32                                       ; $6e9f: $c6 $32
    and b                                         ; $6ea1: $a0
    ld h, l                                       ; $6ea2: $65
    rst $18                                       ; $6ea3: $df
    dec c                                         ; $6ea4: $0d
    rla                                           ; $6ea5: $17
    sub b                                         ; $6ea6: $90

jr_031_6ea7:
    ld c, [hl]                                    ; $6ea7: $4e
    ld h, e                                       ; $6ea8: $63
    ld e, b                                       ; $6ea9: $58
    ld d, l                                       ; $6eaa: $55
    jp hl                                         ; $6eab: $e9


    db $d3                                        ; $6eac: $d3
    ld hl, sp-$23                                 ; $6ead: $f8 $dd
    xor [hl]                                      ; $6eaf: $ae
    rst $30                                       ; $6eb0: $f7
    sub c                                         ; $6eb1: $91
    ld d, [hl]                                    ; $6eb2: $56
    add hl, de                                    ; $6eb3: $19
    ld a, [hl]                                    ; $6eb4: $7e
    jp nc, Jump_031_4fb7                          ; $6eb5: $d2 $b7 $4f

    ld a, c                                       ; $6eb8: $79
    dec bc                                        ; $6eb9: $0b
    daa                                           ; $6eba: $27
    db $fd                                        ; $6ebb: $fd
    db $fd                                        ; $6ebc: $fd
    cp e                                          ; $6ebd: $bb
    dec l                                         ; $6ebe: $2d
    db $db                                        ; $6ebf: $db
    ld a, [hl+]                                   ; $6ec0: $2a
    jp $f918                                      ; $6ec1: $c3 $18 $f9


    ld l, e                                       ; $6ec4: $6b
    add $35                                       ; $6ec5: $c6 $35
    ld [bc], a                                    ; $6ec7: $02
    push de                                       ; $6ec8: $d5
    dec hl                                        ; $6ec9: $2b
    rrca                                          ; $6eca: $0f
    sbc d                                         ; $6ecb: $9a
    cp h                                          ; $6ecc: $bc
    dec b                                         ; $6ecd: $05
    ld b, a                                       ; $6ece: $47
    db $fd                                        ; $6ecf: $fd
    db $eb                                        ; $6ed0: $eb
    cp c                                          ; $6ed1: $b9
    add $61                                       ; $6ed2: $c6 $61
    inc b                                         ; $6ed4: $04
    xor d                                         ; $6ed5: $aa
    ld d, a                                       ; $6ed6: $57
    ld e, $34                                     ; $6ed7: $1e $34
    or l                                          ; $6ed9: $b5
    adc c                                         ; $6eda: $89
    res 7, d                                      ; $6edb: $cb $ba
    dec hl                                        ; $6edd: $2b
    ld l, b                                       ; $6ede: $68
    add hl, hl                                    ; $6edf: $29
    call nc, Call_031_4daf                        ; $6ee0: $d4 $af $4d
    ld l, h                                       ; $6ee3: $6c
    ld bc, $eff5                                  ; $6ee4: $01 $f5 $ef
    add [hl]                                      ; $6ee7: $86

Call_031_6ee8:
    ld c, e                                       ; $6ee8: $4b
    ret                                           ; $6ee9: $c9


    ldh [$7a], a                                  ; $6eea: $e0 $7a
    ret nc                                        ; $6eec: $d0

    adc h                                         ; $6eed: $8c
    ld l, e                                       ; $6eee: $6b
    inc b                                         ; $6eef: $04
    xor d                                         ; $6ef0: $aa
    ld d, a                                       ; $6ef1: $57
    ld e, $34                                     ; $6ef2: $1e $34
    xor e                                         ; $6ef4: $ab
    inc c                                         ; $6ef5: $0c
    ccf                                           ; $6ef6: $3f
    jp hl                                         ; $6ef7: $e9


    db $db                                        ; $6ef8: $db
    and a                                         ; $6ef9: $a7
    cp h                                          ; $6efa: $bc
    dec b                                         ; $6efb: $05
    ld b, a                                       ; $6efc: $47
    ld a, [hl+]                                   ; $6efd: $2a
    or $9c                                        ; $6efe: $f6 $9c
    ld d, b                                       ; $6f00: $50
    sub c                                         ; $6f01: $91
    rst $28                                       ; $6f02: $ef
    cp b                                          ; $6f03: $b8
    or d                                          ; $6f04: $b2
    sbc d                                         ; $6f05: $9a
    jp hl                                         ; $6f06: $e9


jr_031_6f07:
    rst $08                                       ; $6f07: $cf
    jr jr_031_6f4d                                ; $6f08: $18 $43

    ld e, d                                       ; $6f0a: $5a
    ld d, e                                       ; $6f0b: $53
    add h                                         ; $6f0c: $84
    ld a, a                                       ; $6f0d: $7f
    call c, $ac7e                                 ; $6f0e: $dc $7e $ac
    ld l, b                                       ; $6f11: $68
    reti                                          ; $6f12: $d9


    and $1c                                       ; $6f13: $e6 $1c
    rst $38                                       ; $6f15: $ff
    cp b                                          ; $6f16: $b8
    ld h, d                                       ; $6f17: $62
    ld b, a                                       ; $6f18: $47
    add d                                         ; $6f19: $82
    ld b, a                                       ; $6f1a: $47
    ld d, c                                       ; $6f1b: $51
    ld c, l                                       ; $6f1c: $4d
    sbc $02                                       ; $6f1d: $de $02
    and a                                         ; $6f1f: $a7
    ld b, d                                       ; $6f20: $42
    inc hl                                        ; $6f21: $23
    ld c, a                                       ; $6f22: $4f
    ld c, [hl]                                    ; $6f23: $4e
    rst $38                                       ; $6f24: $ff
    ld a, d                                       ; $6f25: $7a
    xor [hl]                                      ; $6f26: $ae
    ld [hl], c                                    ; $6f27: $71
    push bc                                       ; $6f28: $c5
    sbc [hl]                                      ; $6f29: $9e
    inc de                                        ; $6f2a: $13
    ld a, [hl+]                                   ; $6f2b: $2a
    ld a, [c]                                     ; $6f2c: $f2
    ld d, $27                                     ; $6f2d: $16 $27
    ld l, b                                       ; $6f2f: $68
    dec b                                         ; $6f30: $05
    add hl, de                                    ; $6f31: $19
    rst $10                                       ; $6f32: $d7
    jr c, jr_031_6f07                             ; $6f33: $38 $d2

    ld [hl-], a                                   ; $6f35: $32
    and b                                         ; $6f36: $a0
    ld e, l                                       ; $6f37: $5d
    ld [hl], a                                    ; $6f38: $77
    dec b                                         ; $6f39: $05
    adc l                                         ; $6f3a: $8d
    ld l, e                                       ; $6f3b: $6b
    push bc                                       ; $6f3c: $c5
    and $76                                       ; $6f3d: $e6 $76
    pop hl                                        ; $6f3f: $e1
    rst $10                                       ; $6f40: $d7
    cp b                                          ; $6f41: $b8
    ld d, [hl]                                    ; $6f42: $56
    reti                                          ; $6f43: $d9


    rst $20                                       ; $6f44: $e7
    ld l, [hl]                                    ; $6f45: $6e
    xor h                                         ; $6f46: $ac
    rst $20                                       ; $6f47: $e7
    jp z, $a75b                                   ; $6f48: $ca $5b $a7

    ccf                                           ; $6f4b: $3f
    inc l                                         ; $6f4c: $2c

jr_031_6f4d:
    ld [hl], l                                    ; $6f4d: $75
    and [hl]                                      ; $6f4e: $a6
    ld a, a                                       ; $6f4f: $7f
    dec a                                         ; $6f50: $3d
    rst $10                                       ; $6f51: $d7
    ldh [rOCPD], a                                ; $6f52: $e0 $6b
    ld l, [hl]                                    ; $6f54: $6e
    rla                                           ; $6f55: $17
    ld a, [hl]                                    ; $6f56: $7e
    adc l                                         ; $6f57: $8d
    ld l, e                                       ; $6f58: $6b

jr_031_6f59:
    sub l                                         ; $6f59: $95
    ld a, l                                       ; $6f5a: $7d
    xor $c6                                       ; $6f5b: $ee $c6
    ld a, d                                       ; $6f5d: $7a
    xor [hl]                                      ; $6f5e: $ae
    cp h                                          ; $6f5f: $bc
    dec b                                         ; $6f60: $05
    daa                                           ; $6f61: $27

jr_031_6f62:
    db $fd                                        ; $6f62: $fd
    reti                                          ; $6f63: $d9


    add sp, $41                                   ; $6f64: $e8 $41
    or $03                                        ; $6f66: $f6 $03
    adc a                                         ; $6f68: $8f
    and l                                         ; $6f69: $a5
    inc d                                         ; $6f6a: $14
    rrca                                          ; $6f6b: $0f
    rst $38                                       ; $6f6c: $ff
    cp b                                          ; $6f6d: $b8
    and $76                                       ; $6f6e: $e6 $76
    pop hl                                        ; $6f70: $e1
    ld d, a                                       ; $6f71: $57
    adc h                                         ; $6f72: $8c
    ld l, e                                       ; $6f73: $6b
    sub l                                         ; $6f74: $95
    ld a, l                                       ; $6f75: $7d
    xor $c6                                       ; $6f76: $ee $c6
    ld a, d                                       ; $6f78: $7a
    xor [hl]                                      ; $6f79: $ae
    jp c, $16c4                                   ; $6f7a: $da $c4 $16

    push af                                       ; $6f7d: $f5
    rst $28                                       ; $6f7e: $ef
    add [hl]                                      ; $6f7f: $86
    and e                                         ; $6f80: $a3
    rlca                                          ; $6f81: $07
    and h                                         ; $6f82: $a4
    ld e, b                                       ; $6f83: $58
    ld d, c                                       ; $6f84: $51
    call z, $c2ed                                 ; $6f85: $cc $ed $c2
    xor a                                         ; $6f88: $af
    jr jr_031_6f62                                ; $6f89: $18 $d7

    ld a, [hl+]                                   ; $6f8b: $2a
    ei                                            ; $6f8c: $fb
    call c, $f58d                                 ; $6f8d: $dc $8d $f5
    ld e, h                                       ; $6f90: $5c
    set 0, b                                      ; $6f91: $cb $c0
    dec e                                         ; $6f93: $1d
    sra d                                         ; $6f94: $cb $2a
    dec l                                         ; $6f96: $2d
    ld l, l                                       ; $6f97: $6d
    ld b, b                                       ; $6f98: $40
    xor e                                         ; $6f99: $ab
    or e                                          ; $6f9a: $b3
    add $6f                                       ; $6f9b: $c6 $6f
    and c                                         ; $6f9d: $a1
    ld c, a                                       ; $6f9e: $4f
    ld a, c                                       ; $6f9f: $79
    dec bc                                        ; $6fa0: $0b
    ld b, a                                       ; $6fa1: $47
    jp nz, Jump_000_35be                          ; $6fa2: $c2 $be $35

    ld a, [hl+]                                   ; $6fa5: $2a
    ld sp, hl                                     ; $6fa6: $f9
    or d                                          ; $6fa7: $b2
    xor $0a                                       ; $6fa8: $ee $0a
    ld a, [de]                                    ; $6faa: $1a
    dec a                                         ; $6fab: $3d
    ret z                                         ; $6fac: $c8

    ld a, [hl]                                    ; $6fad: $7e
    ldh [$b1], a                                  ; $6fae: $e0 $b1
    ld e, $6d                                     ; $6fb0: $1e $6d
    ld e, h                                       ; $6fb2: $5c
    xor e                                         ; $6fb3: $ab
    ld e, $fe                                     ; $6fb4: $1e $fe
    ld e, b                                       ; $6fb6: $58
    sbc l                                         ; $6fb7: $9d
    ld e, l                                       ; $6fb8: $5d
    ld l, h                                       ; $6fb9: $6c
    ld sp, hl                                     ; $6fba: $f9
    push bc                                       ; $6fbb: $c5
    sub [hl]                                      ; $6fbc: $96
    rst $10                                       ; $6fbd: $d7
    ld h, $b6                                     ; $6fbe: $26 $b6
    add a                                         ; $6fc0: $87
    ld a, e                                       ; $6fc1: $7b
    push af                                       ; $6fc2: $f5
    jr nc, jr_031_6f59                            ; $6fc3: $30 $94

    rst $28                                       ; $6fc5: $ef
    ld [$df3c], sp                                ; $6fc6: $08 $3c $df
    call c, $dc95                                 ; $6fc9: $dc $95 $dc
    and l                                         ; $6fcc: $a5

Call_031_6fcd:
    db $fd                                        ; $6fcd: $fd
    ld d, a                                       ; $6fce: $57
    push hl                                       ; $6fcf: $e5
    dec l                                         ; $6fd0: $2d
    dec e                                         ; $6fd1: $1d
    call $86d3                                    ; $6fd2: $cd $d3 $86
    ld d, h                                       ; $6fd5: $54
    sbc e                                         ; $6fd6: $9b
    cp b                                          ; $6fd7: $b8
    and e                                         ; $6fd8: $a3
    cp $f5                                        ; $6fd9: $fe $f5
    ld e, h                                       ; $6fdb: $5c
    db $e3                                        ; $6fdc: $e3
    ld e, d                                       ; $6fdd: $5a
    cp c                                          ; $6fde: $b9
    sbc e                                         ; $6fdf: $9b
    ld d, a                                       ; $6fe0: $57
    rrca                                          ; $6fe1: $0f
    ld b, e                                       ; $6fe2: $43
    ld a, c                                       ; $6fe3: $79
    dec bc                                        ; $6fe4: $0b
    ld b, a                                       ; $6fe5: $47
    ld l, d                                       ; $6fe6: $6a
    push hl                                       ; $6fe7: $e5
    ld l, [hl]                                    ; $6fe8: $6e
    ld e, [hl]                                    ; $6fe9: $5e
    dec a                                         ; $6fea: $3d
    inc c                                         ; $6feb: $0c
    dec h                                         ; $6fec: $25
    and a                                         ; $6fed: $a7
    ld a, a                                       ; $6fee: $7f
    dec a                                         ; $6fef: $3d
    rst $10                                       ; $6ff0: $d7
    ld b, h                                       ; $6ff1: $44
    and e                                         ; $6ff2: $a3
    rlca                                          ; $6ff3: $07
    reti                                          ; $6ff4: $d9


    rrca                                          ; $6ff5: $0f
    inc a                                         ; $6ff6: $3c
    ld l, d                                       ; $6ff7: $6a
    inc de                                        ; $6ff8: $13
    rst $10                                       ; $6ff9: $d7
    ret                                           ; $6ffa: $c9


    ld a, $ad                                     ; $6ffb: $3e $ad
    ld b, d                                       ; $6ffd: $42
    ld b, c                                       ; $6ffe: $41
    rst $20                                       ; $6fff: $e7
    jp c, Jump_000_1dc4                           ; $7000: $da $c4 $1d

    push af                                       ; $7003: $f5
    db $d3                                        ; $7004: $d3
    ld hl, sp-$6d                                 ; $7005: $f8 $93
    cp e                                          ; $7007: $bb
    ld e, [hl]                                    ; $7008: $5e
    ld d, l                                       ; $7009: $55
    ld l, c                                       ; $700a: $69
    inc e                                         ; $700b: $1c
    ld l, c                                       ; $700c: $69
    ld b, l                                       ; $700d: $45
    ld l, e                                       ; $700e: $6b
    db $fc                                        ; $700f: $fc
    ld sp, $94f2                                  ; $7010: $31 $f2 $94
    sub d                                         ; $7013: $92
    ld l, e                                       ; $7014: $6b
    ld a, [bc]                                    ; $7015: $0a
    call nz, Call_031_6ee8                        ; $7016: $c4 $e8 $6e
    ld sp, $377e                                  ; $7019: $31 $7e $37
    xor a                                         ; $701c: $af
    ld e, $86                                     ; $701d: $1e $86
    sub d                                         ; $701f: $92
    xor e                                         ; $7020: $ab
    ld e, $fe                                     ; $7021: $1e $fe
    jr @-$21                                      ; $7023: $18 $dd

    dec l                                         ; $7025: $2d
    add $b5                                       ; $7026: $c6 $b5
    rst $38                                       ; $7028: $ff
    jr nc, jr_031_703f                            ; $7029: $30 $14

    ld a, c                                       ; $702b: $79
    sbc [hl]                                      ; $702c: $9e
    or a                                          ; $702d: $b7
    add a                                         ; $702e: $87
    or e                                          ; $702f: $b3
    sub a                                         ; $7030: $97
    jp nc, Jump_000_2e4f                          ; $7031: $d2 $4f $2e

    ld e, e                                       ; $7034: $5b
    ld h, e                                       ; $7035: $63
    inc c                                         ; $7036: $0c
    ld h, e                                       ; $7037: $63
    adc l                                         ; $7038: $8d
    push bc                                       ; $7039: $c5
    ld a, [hl+]                                   ; $703a: $2a
    ei                                            ; $703b: $fb
    add hl, de                                    ; $703c: $19
    sub b                                         ; $703d: $90
    adc a                                         ; $703e: $8f

jr_031_703f:
    rst $18                                       ; $703f: $df
    call $87ab                                    ; $7040: $cd $ab $87
    and c                                         ; $7043: $a1
    jp c, $16c4                                   ; $7044: $da $c4 $16

    dec e                                         ; $7047: $1d
    inc c                                         ; $7048: $0c
    ccf                                           ; $7049: $3f
    jp hl                                         ; $704a: $e9


    db $db                                        ; $704b: $db
    and a                                         ; $704c: $a7
    db $e4                                        ; $704d: $e4
    or d                                          ; $704e: $b2
    rst $28                                       ; $704f: $ef
    add [hl]                                      ; $7050: $86
    db $e3                                        ; $7051: $e3
    ld e, d                                       ; $7052: $5a
    or c                                          ; $7053: $b1
    cp c                                          ; $7054: $b9
    ld e, l                                       ; $7055: $5d
    ld hl, sp+$35                                 ; $7056: $f8 $35
    ld a, [hl]                                    ; $7058: $7e
    or a                                          ; $7059: $b7
    ld l, b                                       ; $705a: $68
    ret c                                         ; $705b: $d8

    adc a                                         ; $705c: $8f
    rst $10                                       ; $705d: $d7
    dec l                                         ; $705e: $2d
    jp z, Jump_000_1d5b                           ; $705f: $ca $5b $1d

    ld d, b                                       ; $7062: $50
    ret nc                                        ; $7063: $d0

    ld a, c                                       ; $7064: $79
    adc h                                         ; $7065: $8c
    ld bc, $98cd                                  ; $7066: $01 $cd $98
    add a                                         ; $7069: $87
    ld a, $f2                                     ; $706a: $3e $f2
    rst $10                                       ; $706c: $d7
    adc h                                         ; $706d: $8c
    ld l, e                                       ; $706e: $6b
    ld l, [hl]                                    ; $706f: $6e
    rla                                           ; $7070: $17
    ld a, [hl]                                    ; $7071: $7e
    push bc                                       ; $7072: $c5
    ld hl, sp-$23                                 ; $7073: $f8 $dd
    and d                                         ; $7075: $a2
    ld h, c                                       ; $7076: $61
    ccf                                           ; $7077: $3f
    ld e, [hl]                                    ; $7078: $5e
    or a                                          ; $7079: $b7
    ld l, b                                       ; $707a: $68
    add hl, de                                    ; $707b: $19
    ret nc                                        ; $707c: $d0

    ld a, [de]                                    ; $707d: $1a
    adc e                                         ; $707e: $8b
    ld e, c                                       ; $707f: $59
    add h                                         ; $7080: $84
    adc $cf                                       ; $7081: $ce $cf
    ld e, e                                       ; $7083: $5b
    push af                                       ; $7084: $f5
    or l                                          ; $7085: $b5
    ld b, [hl]                                    ; $7086: $46
    ccf                                           ; $7087: $3f
    or h                                          ; $7088: $b4
    inc c                                         ; $7089: $0c
    ld l, b                                       ; $708a: $68
    reti                                          ; $708b: $d9


    ld [hl], a                                    ; $708c: $77
    jp $a405                                      ; $708d: $c3 $05 $a4


    db $d3                                        ; $7090: $d3
    jr jr_031_70e9                                ; $7091: $18 $56

    ld d, l                                       ; $7093: $55
    ld a, [$ae34]                                 ; $7094: $fa $34 $ae
    cp c                                          ; $7097: $b9
    ld e, l                                       ; $7098: $5d
    ld hl, sp+$15                                 ; $7099: $f8 $15
    db $e3                                        ; $709b: $e3
    ld [hl], a                                    ; $709c: $77
    adc e                                         ; $709d: $8b
    add [hl]                                      ; $709e: $86
    db $fd                                        ; $709f: $fd
    ld a, b                                       ; $70a0: $78
    db $dd                                        ; $70a1: $dd
    and d                                         ; $70a2: $a2
    ld d, l                                       ; $70a3: $55
    add [hl]                                      ; $70a4: $86
    sbc a                                         ; $70a5: $9f
    db $f4                                        ; $70a6: $f4
    db $ed                                        ; $70a7: $ed
    ld d, e                                       ; $70a8: $53
    sbc $02                                       ; $70a9: $de $02
    push af                                       ; $70ab: $f5
    or l                                          ; $70ac: $b5
    nop                                           ; $70ad: $00
    adc h                                         ; $70ae: $8c
    and l                                         ; $70af: $a5
    ld d, b                                       ; $70b0: $50
    ld a, a                                       ; $70b1: $7f
    rst $10                                       ; $70b2: $d7
    ei                                            ; $70b3: $fb
    and h                                         ; $70b4: $a4
    ld c, a                                       ; $70b5: $4f
    db $e3                                        ; $70b6: $e3
    ld [hl], a                                    ; $70b7: $77

jr_031_70b8:
    ld h, e                                       ; $70b8: $63
    ld e, $fa                                     ; $70b9: $1e $fa
    cp b                                          ; $70bb: $b8
    ld h, d                                       ; $70bc: $62
    sub a                                         ; $70bd: $97
    cp a                                          ; $70be: $bf
    adc e                                         ; $70bf: $8b
    dec l                                         ; $70c0: $2d
    adc d                                         ; $70c1: $8a
    ld [hl], c                                    ; $70c2: $71
    dec l                                         ; $70c3: $2d
    db $e4                                        ; $70c4: $e4
    adc l                                         ; $70c5: $8d
    ld a, $25                                     ; $70c6: $3e $25
    sub a                                         ; $70c8: $97

Call_031_70c9:
    xor l                                         ; $70c9: $ad
    ld sp, $b186                                  ; $70ca: $31 $86 $b1
    and $01                                       ; $70cd: $e6 $01
    di                                            ; $70cf: $f3
    ret nc                                        ; $70d0: $d0

    ld b, a                                       ; $70d1: $47
    adc [hl]                                      ; $70d2: $8e
    rst $10                                       ; $70d3: $d7
    inc hl                                        ; $70d4: $23
    ld sp, hl                                     ; $70d5: $f9
    ldh [$cf], a                                  ; $70d6: $e0 $cf
    push de                                       ; $70d8: $d5
    db $10                                        ; $70d9: $10
    ld d, $d5                                     ; $70da: $16 $d5
    ld h, $b6                                     ; $70dc: $26 $b6
    ld b, a                                       ; $70de: $47
    sbc $0d                                       ; $70df: $de $0d
    ret z                                         ; $70e1: $c8

    dec d                                         ; $70e2: $15
    cp e                                          ; $70e3: $bb
    db $fc                                        ; $70e4: $fc
    ld e, l                                       ; $70e5: $5d
    ld l, h                                       ; $70e6: $6c
    ld d, c                                       ; $70e7: $51
    adc h                                         ; $70e8: $8c

jr_031_70e9:
    ld l, e                                       ; $70e9: $6b
    ld hl, $f46f                                  ; $70ea: $21 $6f $f4
    xor c                                         ; $70ed: $a9
    ld [hl], $71                                  ; $70ee: $36 $71
    rst $00                                       ; $70f0: $c7
    call c, Call_031_5a3e                         ; $70f1: $dc $3e $5a
    xor c                                         ; $70f4: $a9
    ld c, l                                       ; $70f5: $4d
    ld l, h                                       ; $70f6: $6c
    ld bc, $fd27                                  ; $70f7: $01 $27 $fd
    db $fd                                        ; $70fa: $fd
    cp e                                          ; $70fb: $bb
    dec l                                         ; $70fc: $2d
    db $db                                        ; $70fd: $db
    ld a, [hl+]                                   ; $70fe: $2a
    jp $f918                                      ; $70ff: $c3 $18 $f9


    ld l, e                                       ; $7102: $6b
    add $b5                                       ; $7103: $c6 $b5
    set 3, a                                      ; $7105: $cb $df
    push bc                                       ; $7107: $c5
    ld d, $c5                                     ; $7108: $16 $c5
    cp b                                          ; $710a: $b8
    ld d, $f2                                     ; $710b: $16 $f2
    ld b, [hl]                                    ; $710d: $46
    sbc a                                         ; $710e: $9f
    ld a, [c]                                     ; $710f: $f2
    inc a                                         ; $7110: $3c
    ld e, a                                       ; $7111: $5f
    jr jr_031_70b8                                ; $7112: $18 $a4

    sub a                                         ; $7114: $97
    ld bc, $7cfb                                  ; $7115: $01 $fb $7c
    ld e, b                                       ; $7118: $58
    ld h, d                                       ; $7119: $62
    pop af                                        ; $711a: $f1
    ld a, $8d                                     ; $711b: $3e $8d
    ld e, $64                                     ; $711d: $1e $64
    ccf                                           ; $711f: $3f
    ldh a, [$98]                                  ; $7120: $f0 $98

jr_031_7122:
    ld e, l                                       ; $7122: $5d
    sub a                                         ; $7123: $97
    cp a                                          ; $7124: $bf
    adc e                                         ; $7125: $8b
    ld a, l                                       ; $7126: $7d
    ld d, e                                       ; $7127: $53
    call z, Call_000_2160                         ; $7128: $cc $60 $21
    ld l, a                                       ; $712b: $6f
    db $f4                                        ; $712c: $f4
    add hl, hl                                    ; $712d: $29
    rst $08                                       ; $712e: $cf
    di                                            ; $712f: $f3
    ld d, $f5                                     ; $7130: $16 $f5
    or l                                          ; $7132: $b5
    rr a                                          ; $7133: $cb $1f
    add $32                                       ; $7135: $c6 $32
    and b                                         ; $7137: $a0
    ld h, l                                       ; $7138: $65
    rst $18                                       ; $7139: $df
    dec c                                         ; $713a: $0d
    rla                                           ; $713b: $17
    sub b                                         ; $713c: $90
    ld c, [hl]                                    ; $713d: $4e
    ld h, e                                       ; $713e: $63
    ld e, b                                       ; $713f: $58
    ld d, l                                       ; $7140: $55
    jp hl                                         ; $7141: $e9


    db $d3                                        ; $7142: $d3
    cp b                                          ; $7143: $b8
    halt                                          ; $7144: $76
    ld sp, hl                                     ; $7145: $f9
    cp e                                          ; $7146: $bb
    ret c                                         ; $7147: $d8

    and d                                         ; $7148: $a2
    jr jr_031_7122                                ; $7149: $18 $d7

    ld b, d                                       ; $714b: $42
    sbc $e8                                       ; $714c: $de $e8
    ld d, e                                       ; $714e: $53
    sbc [hl]                                      ; $714f: $9e
    rst $20                                       ; $7150: $e7

jr_031_7151:
    dec l                                         ; $7151: $2d
    and a                                         ; $7152: $a7
    ccf                                           ; $7153: $3f
    cp h                                          ; $7154: $bc
    ld [hl], b                                    ; $7155: $70
    ld e, h                                       ; $7156: $5c
    dec hl                                        ; $7157: $2b
    or [hl]                                       ; $7158: $b6
    ld b, [hl]                                    ; $7159: $46
    ld b, $e3                                     ; $715a: $06 $e3
    rst $30                                       ; $715c: $f7
    rst $10                                       ; $715d: $d7
    or b                                          ; $715e: $b0
    sub c                                         ; $715f: $91
    and e                                         ; $7160: $a3
    ld a, [hl]                                    ; $7161: $7e
    sbc $02                                       ; $7162: $de $02
    ld b, a                                       ; $7164: $47
    ld a, [hl+]                                   ; $7165: $2a
    halt                                          ; $7166: $76
    ld l, e                                       ; $7167: $6b
    ldh a, [$2b]                                  ; $7168: $f0 $2b
    add $b5                                       ; $716a: $c6 $b5
    and $f9                                       ; $716c: $e6 $f9
    ld d, l                                       ; $716e: $55
    rst $28                                       ; $716f: $ef
    sub $e0                                       ; $7170: $d6 $e0
    sub l                                         ; $7172: $95
    ld e, h                                       ; $7173: $5c
    add l                                         ; $7174: $85
    add d                                         ; $7175: $82
    adc $63                                       ; $7176: $ce $63
    inc c                                         ; $7178: $0c
    ld l, b                                       ; $7179: $68
    ld e, l                                       ; $717a: $5d
    sub e                                         ; $717b: $93
    ld l, e                                       ; $717c: $6b
    adc l                                         ; $717d: $8d
    inc bc                                        ; $717e: $03
    rst $10                                       ; $717f: $d7
    and a                                         ; $7180: $a7
    add hl, de                                    ; $7181: $19
    and e                                         ; $7182: $a3
    ld l, e                                       ; $7183: $6b
    dec a                                         ; $7184: $3d
    ld e, d                                       ; $7185: $5a
    sbc $02                                       ; $7186: $de $02
    push af                                       ; $7188: $f5
    or l                                          ; $7189: $b5
    ld c, d                                       ; $718a: $4a
    db $e3                                        ; $718b: $e3
    xor d                                         ; $718c: $aa
    db $ec                                        ; $718d: $ec
    ld [hl], e                                    ; $718e: $73
    dec l                                         ; $718f: $2d
    add l                                         ; $7190: $85
    ld a, [$5ebb]                                 ; $7191: $fa $bb $5e
    ld d, l                                       ; $7194: $55
    jp hl                                         ; $7195: $e9


    db $d3                                        ; $7196: $d3
    ld l, $11                                     ; $7197: $2e $11
    ld l, c                                       ; $7199: $69
    call $ee03                                    ; $719a: $cd $03 $ee
    ld a, [de]                                    ; $719d: $1a
    rst $10                                       ; $719e: $d7
    ld a, [de]                                    ; $719f: $1a
    inc d                                         ; $71a0: $14
    jr nc, jr_031_7151                            ; $71a1: $30 $ae

    add hl, hl                                    ; $71a3: $29
    ld l, b                                       ; $71a4: $68
    and $8e                                       ; $71a5: $e6 $8e
    call z, $cb4d                                 ; $71a7: $cc $4d $cb
    add [hl]                                      ; $71aa: $86
    ret z                                         ; $71ab: $c8

    ret nz                                        ; $71ac: $c0

    dec e                                         ; $71ad: $1d
    cpl                                           ; $71ae: $2f
    xor h                                         ; $71af: $ac
    dec a                                         ; $71b0: $3d
    or h                                          ; $71b1: $b4
    dec b                                         ; $71b2: $05
    ld b, a                                       ; $71b3: $47
    ld a, [hl+]                                   ; $71b4: $2a
    ld d, [hl]                                    ; $71b5: $56
    inc hl                                        ; $71b6: $23
    add sp, $3c                                   ; $71b7: $e8 $3c
    xor [hl]                                      ; $71b9: $ae
    push bc                                       ; $71ba: $c5
    ld h, l                                       ; $71bb: $65
    ld l, [hl]                                    ; $71bc: $6e
    xor c                                         ; $71bd: $a9
    sbc e                                         ; $71be: $9b
    ld a, [c]                                     ; $71bf: $f2
    inc a                                         ; $71c0: $3c
    ld e, a                                       ; $71c1: $5f
    sub [hl]                                      ; $71c2: $96
    xor l                                         ; $71c3: $ad
    jp nc, $9adc                                  ; $71c4: $d2 $dc $9a

    ld b, [hl]                                    ; $71c7: $46
    and l                                         ; $71c8: $a5
    ld l, b                                       ; $71c9: $68
    add hl, de                                    ; $71ca: $19
    ld d, b                                       ; $71cb: $50
    ret                                           ; $71cc: $c9


    add b                                         ; $71cd: $80
    halt                                          ; $71ce: $76
    or c                                          ; $71cf: $b1
    ld e, a                                       ; $71d0: $5f
    jr z, @-$2f                                   ; $71d1: $28 $cf

    di                                            ; $71d3: $f3
    ld d, $1d                                     ; $71d4: $16 $1d
    call $86d3                                    ; $71d6: $cd $d3 $86
    sub h                                         ; $71d9: $94
    sbc h                                         ; $71da: $9c
    cp $f5                                        ; $71db: $fe $f5
    ld e, h                                       ; $71dd: $5c
    db $e3                                        ; $71de: $e3
    adc d                                         ; $71df: $8a
    push de                                       ; $71e0: $d5
    ld [$8f3a], sp                                ; $71e1: $08 $3a $8f
    ld l, e                                       ; $71e4: $6b
    ld [hl], c                                    ; $71e5: $71
    sbc c                                         ; $71e6: $99
    ld e, e                                       ; $71e7: $5b
    ld [$bca6], a                                 ; $71e8: $ea $a6 $bc
    dec b                                         ; $71eb: $05
    daa                                           ; $71ec: $27
    db $fd                                        ; $71ed: $fd
    db $fd                                        ; $71ee: $fd
    cp e                                          ; $71ef: $bb
    dec l                                         ; $71f0: $2d
    db $db                                        ; $71f1: $db
    ld a, [hl+]                                   ; $71f2: $2a
    jp Jump_031_4598                              ; $71f3: $c3 $98 $45


    add sp, -$04                                  ; $71f6: $e8 $fc
    pop af                                        ; $71f8: $f1
    ld a, e                                       ; $71f9: $7b
    adc l                                         ; $71fa: $8d
    and b                                         ; $71fb: $a0
    di                                            ; $71fc: $f3
    cp b                                          ; $71fd: $b8
    ld d, $97                                     ; $71fe: $16 $97
    cp c                                          ; $7200: $b9
    and l                                         ; $7201: $a5
    ld l, [hl]                                    ; $7202: $6e
    jp z, Jump_031_475b                           ; $7203: $ca $5b $47

    db $fd                                        ; $7206: $fd
    ld e, l                                       ; $7207: $5d
    ld e, d                                       ; $7208: $5a
    ld b, $70                                     ; $7209: $06 $70
    rst $10                                       ; $720b: $d7
    ei                                            ; $720c: $fb
    sub a                                         ; $720d: $97
    db $fc                                        ; $720e: $fc
    ld l, e                                       ; $720f: $6b
    ld b, l                                       ; $7210: $45
    or c                                          ; $7211: $b1
    ld a, [de]                                    ; $7212: $1a
    ld b, c                                       ; $7213: $41
    rst $20                                       ; $7214: $e7
    ld [hl], c                                    ; $7215: $71
    dec l                                         ; $7216: $2d
    ld l, $73                                     ; $7217: $2e $73
    ld c, e                                       ; $7219: $4b
    db $dd                                        ; $721a: $dd
    sub h                                         ; $721b: $94
    ld e, h                                       ; $721c: $5c
    or [hl]                                       ; $721d: $b6
    ld d, $80                                     ; $721e: $16 $80
    or c                                          ; $7220: $b1
    sub b                                         ; $7221: $90
    inc sp                                        ; $7222: $33
    cp b                                          ; $7223: $b8
    jp z, $93f0                                   ; $7224: $ca $f0 $93

    cp [hl]                                       ; $7227: $be
    ld a, l                                       ; $7228: $7d
    jp z, Jump_031_475b                           ; $7229: $ca $5b $47

    pop de                                        ; $722c: $d1

jr_031_722d:
    sbc b                                         ; $722d: $98
    add a                                         ; $722e: $87
    and l                                         ; $722f: $a5
    adc $e0                                       ; $7230: $ce $e0
    ld l, e                                       ; $7232: $6b
    rst $10                                       ; $7233: $d7
    di                                            ; $7234: $f3
    xor a                                         ; $7235: $af
    ld [hl], c                                    ; $7236: $71
    dec l                                         ; $7237: $2d
    add l                                         ; $7238: $85
    rst $10                                       ; $7239: $d7
    di                                            ; $723a: $f3
    xor a                                         ; $723b: $af
    cp h                                          ; $723c: $bc
    dec b                                         ; $723d: $05
    rst $00                                       ; $723e: $c7
    call c, Call_031_5a3e                         ; $723f: $dc $3e $5a
    ld c, c                                       ; $7242: $49
    ld c, $be                                     ; $7243: $0e $be
    ld h, [hl]                                    ; $7245: $66
    ld b, b                                       ; $7246: $40
    xor [hl]                                      ; $7247: $ae
    ld e, l                                       ; $7248: $5d
    rst $08                                       ; $7249: $cf
    cp a                                          ; $724a: $bf
    add $b5                                       ; $724b: $c6 $b5
    inc d                                         ; $724d: $14
    ld e, [hl]                                    ; $724e: $5e
    rst $08                                       ; $724f: $cf
    cp a                                          ; $7250: $bf
    ld l, d                                       ; $7251: $6a
    inc de                                        ; $7252: $13
    ld e, e                                       ; $7253: $5b
    rst $00                                       ; $7254: $c7
    sub l                                         ; $7255: $95
    and l                                         ; $7256: $a5

jr_031_7257:
    dec c                                         ; $7257: $0d

jr_031_7258:
    ld l, b                                       ; $7258: $68
    db $f4                                        ; $7259: $f4
    jr nz, jr_031_7257                            ; $725a: $20 $fb

    add c                                         ; $725c: $81
    rst $00                                       ; $725d: $c7
    adc h                                         ; $725e: $8c
    ld a, c                                       ; $725f: $79
    add sp, -$1d                                  ; $7260: $e8 $e3
    adc d                                         ; $7262: $8a
    ld e, l                                       ; $7263: $5d
    rst $08                                       ; $7264: $cf
    cp a                                          ; $7265: $bf
    ld h, d                                       ; $7266: $62
    ld e, h                                       ; $7267: $5c
    ld c, e                                       ; $7268: $4b
    pop hl                                        ; $7269: $e1
    push af                                       ; $726a: $f5
    db $fc                                        ; $726b: $fc
    ld l, e                                       ; $726c: $6b
    ld bc, $78be                                  ; $726d: $01 $be $78
    sbc b                                         ; $7270: $98
    or a                                          ; $7271: $b7
    push af                                       ; $7272: $f5
    rst $28                                       ; $7273: $ef
    add [hl]                                      ; $7274: $86
    ld c, e                                       ; $7275: $4b
    ret                                           ; $7276: $c9


    ldh [$7a], a                                  ; $7277: $e0 $7a
    ret nc                                        ; $7279: $d0

    adc h                                         ; $727a: $8c
    ld l, e                                       ; $727b: $6b
    rst $10                                       ; $727c: $d7
    di                                            ; $727d: $f3
    xor a                                         ; $727e: $af
    jr jr_031_7258                                ; $727f: $18 $d7

    ld d, d                                       ; $7281: $52
    ld a, b                                       ; $7282: $78
    dec a                                         ; $7283: $3d
    rst $38                                       ; $7284: $ff
    ld c, d                                       ; $7285: $4a
    xor [hl]                                      ; $7286: $ae
    ld [hl-], a                                   ; $7287: $32
    db $fc                                        ; $7288: $fc
    and h                                         ; $7289: $a4
    ld l, a                                       ; $728a: $6f
    sbc a                                         ; $728b: $9f
    ld a, [c]                                     ; $728c: $f2
    ld d, $a7                                     ; $728d: $16 $a7
    db $fd                                        ; $728f: $fd
    and l                                         ; $7290: $a5
    ld l, [hl]                                    ; $7291: $6e
    rst $20                                       ; $7292: $e7
    ccf                                           ; $7293: $3f
    ld [hl], e                                    ; $7294: $73
    sbc [hl]                                      ; $7295: $9e
    rst $20                                       ; $7296: $e7
    ld sp, hl                                     ; $7297: $f9
    ld c, [hl]                                    ; $7298: $4e
    ld a, c                                       ; $7299: $79
    inc l                                         ; $729a: $2c
    ret nc                                        ; $729b: $d0

    ld l, h                                       ; $729c: $6c
    inc e                                         ; $729d: $1c
    ld l, c                                       ; $729e: $69
    add hl, de                                    ; $729f: $19
    cp b                                          ; $72a0: $b8
    cp a                                          ; $72a1: $bf
    ccf                                           ; $72a2: $3f
    jr nz, jr_031_72d1                            ; $72a3: $20 $2c

    jr jr_031_722d                                ; $72a5: $18 $86

    or h                                          ; $72a7: $b4
    ld c, e                                       ; $72a8: $4b
    ld b, h                                       ; $72a9: $44
    ld e, d                                       ; $72aa: $5a
    add e                                         ; $72ab: $83
    ld [hl], d                                    ; $72ac: $72
    rst $10                                       ; $72ad: $d7
    cp b                                          ; $72ae: $b8
    db $fd                                        ; $72af: $fd
    ld e, b                                       ; $72b0: $58
    ld d, c                                       ; $72b1: $51
    call z, $213e                                 ; $72b2: $cc $3e $21
    ld a, a                                       ; $72b5: $7f
    and h                                         ; $72b6: $a4
    ret z                                         ; $72b7: $c8

    ld e, e                                       ; $72b8: $5b
    ld b, a                                       ; $72b9: $47
    db $fd                                        ; $72ba: $fd
    db $eb                                        ; $72bb: $eb
    cp c                                          ; $72bc: $b9
    ld b, $7f                                     ; $72bd: $06 $7f
    xor c                                         ; $72bf: $a9
    db $db                                        ; $72c0: $db
    ld sp, hl                                     ; $72c1: $f9
    rst $08                                       ; $72c2: $cf
    sbc h                                         ; $72c3: $9c
    daa                                           ; $72c4: $27
    rst $10                                       ; $72c5: $d7
    sbc b                                         ; $72c6: $98
    and a                                         ; $72c7: $a7
    dec c                                         ; $72c8: $0d
    xor c                                         ; $72c9: $a9
    ld [hl], $b1                                  ; $72ca: $36 $b1
    dec b                                         ; $72cc: $05
    sbc l                                         ; $72cd: $9d
    db $fc                                        ; $72ce: $fc
    dec [hl]                                      ; $72cf: $35
    db $e3                                        ; $72d0: $e3

jr_031_72d1:
    ld e, d                                       ; $72d1: $5a
    ld [$fe76], a                                 ; $72d2: $ea $76 $fe
    inc sp                                        ; $72d5: $33
    rst $20                                       ; $72d6: $e7
    or c                                          ; $72d7: $b1
    xor a                                         ; $72d8: $af
    dec [hl]                                      ; $72d9: $35
    ld [bc], a                                    ; $72da: $02
    ld b, [hl]                                    ; $72db: $46
    sbc a                                         ; $72dc: $9f
    sub $58                                       ; $72dd: $d6 $58
    db $ec                                        ; $72df: $ec
    inc bc                                        ; $72e0: $03
    cp d                                          ; $72e1: $ba
    ld a, [c]                                     ; $72e2: $f2
    inc a                                         ; $72e3: $3c
    ld l, a                                       ; $72e4: $6f
    ld bc, $eff5                                  ; $72e5: $01 $f5 $ef
    add [hl]                                      ; $72e8: $86
    ld l, e                                       ; $72e9: $6b
    adc d                                         ; $72ea: $8a
    ldh a, [$8f]                                  ; $72eb: $f0 $8f
    ld l, e                                       ; $72ed: $6b
    xor c                                         ; $72ee: $a9
    db $db                                        ; $72ef: $db
    ld sp, hl                                     ; $72f0: $f9
    rst $08                                       ; $72f1: $cf
    sbc h                                         ; $72f2: $9c
    rst $00                                       ; $72f3: $c7
    ld a, [hl+]                                   ; $72f4: $2a
    jp $fa4f                                      ; $72f5: $c3 $4f $fa


    or $29                                        ; $72f8: $f6 $29
    ld l, a                                       ; $72fa: $6f
    ld bc, $7da7                                  ; $72fb: $01 $a7 $7d
    db $ed                                        ; $72fe: $ed
    ld a, d                                       ; $72ff: $7a
    cp $35                                        ; $7300: $fe $35
    xor [hl]                                      ; $7302: $ae
    dec d                                         ; $7303: $15
    cp h                                          ; $7304: $bc
    sbc [hl]                                      ; $7305: $9e
    ld a, a                                       ; $7306: $7f
    ld c, l                                       ; $7307: $4d
    ld a, a                                       ; $7308: $7f
    and $2c                                       ; $7309: $e6 $2c
    ld a, l                                       ; $730b: $7d
    xor d                                         ; $730c: $aa
    ld c, l                                       ; $730d: $4d
    call c, $8ce1                                 ; $730e: $dc $e1 $8c
    xor [hl]                                      ; $7311: $ae
    push af                                       ; $7312: $f5
    ld l, b                                       ; $7313: $68
    ret                                           ; $7314: $c9


    ld h, l                                       ; $7315: $65
    ld l, e                                       ; $7316: $6b
    call Call_031_7703                            ; $7317: $cd $03 $77
    jp Jump_031_7558                              ; $731a: $c3 $58 $75


    or a                                          ; $731d: $b7
    adc e                                         ; $731e: $8b
    dec l                                         ; $731f: $2d
    sub d                                         ; $7320: $92
    xor a                                         ; $7321: $af
    ld l, b                                       ; $7322: $68
    sub l                                         ; $7323: $95
    or b                                          ; $7324: $b0
    inc d                                         ; $7325: $14
    add c                                         ; $7326: $81
    cpl                                           ; $7327: $2f
    ld h, l                                       ; $7328: $65
    push bc                                       ; $7329: $c5
    ld [hl], b                                    ; $732a: $70
    call z, $f62b                                 ; $732b: $cc $2b $f6
    xor c                                         ; $732e: $a9
    ld [hl], $b1                                  ; $732f: $36 $b1
    dec b                                         ; $7331: $05
    daa                                           ; $7332: $27
    or c                                          ; $7333: $b1
    ld l, e                                       ; $7334: $6b
    inc de                                        ; $7335: $13
    ld [hl], a                                    ; $7336: $77
    jp c, $0cd7                                   ; $7337: $da $d7 $0c

    ret z                                         ; $733a: $c8

    or l                                          ; $733b: $b5
    db $eb                                        ; $733c: $eb
    ld sp, hl                                     ; $733d: $f9
    rst $10                                       ; $733e: $d7
    cp b                                          ; $733f: $b8
    ld d, [hl]                                    ; $7340: $56
    ldh a, [$7a]                                  ; $7341: $f0 $7a
    cp $35                                        ; $7343: $fe $35
    db $fd                                        ; $7345: $fd
    sbc c                                         ; $7346: $99
    or e                                          ; $7347: $b3
    db $f4                                        ; $7348: $f4
    xor c                                         ; $7349: $a9
    ld [hl], $b1                                  ; $734a: $36 $b1
    dec b                                         ; $734c: $05
    daa                                           ; $734d: $27
    jr z, jr_031_73c6                             ; $734e: $28 $76

    dec a                                         ; $7350: $3d
    rst $38                                       ; $7351: $ff
    adc d                                         ; $7352: $8a
    ld [hl], c                                    ; $7353: $71
    xor l                                         ; $7354: $ad
    ldh [$f5], a                                  ; $7355: $e0 $f5
    db $fc                                        ; $7357: $fc
    ld l, e                                       ; $7358: $6b
    ld a, [$6733]                                 ; $7359: $fa $33 $67
    jp hl                                         ; $735c: $e9


    ld d, e                                       ; $735d: $53
    ld [hl], d                                    ; $735e: $72
    rst $10                                       ; $735f: $d7
    ld e, l                                       ; $7360: $5d
    ld b, c                                       ; $7361: $41
    and e                                         ; $7362: $a3
    rlca                                          ; $7363: $07
    reti                                          ; $7364: $d9


    rrca                                          ; $7365: $0f
    inc a                                         ; $7366: $3c
    ld b, [hl]                                    ; $7367: $46
    ld e, [hl]                                    ; $7368: $5e
    scf                                           ; $7369: $37
    ld b, $84                                     ; $736a: $06 $84
    ld b, l                                       ; $736c: $45
    ld a, c                                       ; $736d: $79
    dec bc                                        ; $736e: $0b
    push af                                       ; $736f: $f5
    rst $28                                       ; $7370: $ef
    add [hl]                                      ; $7371: $86
    dec bc                                        ; $7372: $0b
    ld c, b                                       ; $7373: $48
    and a                                         ; $7374: $a7
    ld sp, $aaac                                  ; $7375: $31 $ac $aa
    db $f4                                        ; $7378: $f4
    ld l, c                                       ; $7379: $69
    ld e, h                                       ; $737a: $5c
    cp e                                          ; $737b: $bb
    sbc [hl]                                      ; $737c: $9e
    ld a, a                                       ; $737d: $7f
    push bc                                       ; $737e: $c5
    cp b                                          ; $737f: $b8
    ld d, [hl]                                    ; $7380: $56
    ldh a, [$7a]                                  ; $7381: $f0 $7a
    cp $35                                        ; $7383: $fe $35
    db $fd                                        ; $7385: $fd
    sbc c                                         ; $7386: $99
    or e                                          ; $7387: $b3
    db $f4                                        ; $7388: $f4
    ld l, c                                       ; $7389: $69
    sub l                                         ; $738a: $95
    pop hl                                        ; $738b: $e1
    daa                                           ; $738c: $27
    ld a, l                                       ; $738d: $7d
    ei                                            ; $738e: $fb
    sub h                                         ; $738f: $94
    or a                                          ; $7390: $b7
    ld b, a                                       ; $7391: $47
    sbc $9a                                       ; $7392: $de $9a
    xor [hl]                                      ; $7394: $ae
    cpl                                           ; $7395: $2f
    or [hl]                                       ; $7396: $b6
    adc $af                                       ; $7397: $ce $af
    rst $00                                       ; $7399: $c7
    inc a                                         ; $739a: $3c
    adc b                                         ; $739b: $88
    ld [hl], c                                    ; $739c: $71
    adc l                                         ; $739d: $8d
    db $fc                                        ; $739e: $fc
    ld bc, $1f23                                  ; $739f: $01 $23 $1f
    di                                            ; $73a2: $f3
    ret z                                         ; $73a3: $c8

    dec [hl]                                      ; $73a4: $35
    or d                                          ; $73a5: $b2
    ld d, h                                       ; $73a6: $54
    ld d, c                                       ; $73a7: $51
    ld [hl], d                                    ; $73a8: $72
    rst $00                                       ; $73a9: $c7
    sbc d                                         ; $73aa: $9a
    ld a, e                                       ; $73ab: $7b
    ld c, l                                       ; $73ac: $4d
    sbc $02                                       ; $73ad: $de $02
    sbc l                                         ; $73af: $9d
    ld h, b                                       ; $73b0: $60
    adc d                                         ; $73b1: $8a
    dec [hl]                                      ; $73b2: $35
    dec b                                         ; $73b3: $05
    ld h, d                                       ; $73b4: $62
    jp hl                                         ; $73b5: $e9


    rst $20                                       ; $73b6: $e7
    or h                                          ; $73b7: $b4
    inc c                                         ; $73b8: $0c
    ld l, b                                       ; $73b9: $68
    inc b                                         ; $73ba: $04
    db $d3                                        ; $73bb: $d3
    sbc a                                         ; $73bc: $9f
    push bc                                       ; $73bd: $c5
    jp z, $d0dd                                   ; $73be: $ca $dd $d0

    sub e                                         ; $73c1: $93
    db $eb                                        ; $73c2: $eb
    ld hl, sp-$78                                 ; $73c3: $f8 $88
    db $e4                                        ; $73c5: $e4

jr_031_73c6:
    ld sp, hl                                     ; $73c6: $f9
    adc [hl]                                      ; $73c7: $8e
    and d                                         ; $73c8: $a2
    ld e, l                                       ; $73c9: $5d
    xor a                                         ; $73ca: $af
    xor d                                         ; $73cb: $aa
    or h                                          ; $73cc: $b4
    ld l, h                                       ; $73cd: $6c
    db $ed                                        ; $73ce: $ed
    ld l, e                                       ; $73cf: $6b
    ld bc, $6b18                                  ; $73d0: $01 $18 $6b
    inc l                                         ; $73d3: $2c
    and $f6                                       ; $73d4: $e6 $f6
    cpl                                           ; $73d6: $2f
    ld hl, sp+$28                                 ; $73d7: $f8 $28
    ld c, a                                       ; $73d9: $4f
    ld l, $5b                                     ; $73da: $2e $5b
    and e                                         ; $73dc: $a3
    ei                                            ; $73dd: $fb
    ld c, e                                       ; $73de: $4b
    and a                                         ; $73df: $a7
    ld e, l                                       ; $73e0: $5d
    add e                                         ; $73e1: $83
    xor a                                         ; $73e2: $af
    ld e, l                                       ; $73e3: $5d
    xor a                                         ; $73e4: $af
    ld c, d                                       ; $73e5: $4a
    pop hl                                        ; $73e6: $e1
    scf                                           ; $73e7: $37
    adc h                                         ; $73e8: $8c
    rst $30                                       ; $73e9: $f7
    rst $00                                       ; $73ea: $c7
    or l                                          ; $73eb: $b5
    inc l                                         ; $73ec: $2c
    ld [hl], e                                    ; $73ed: $73
    ld d, d                                       ; $73ee: $52
    xor h                                         ; $73ef: $ac
    ld a, c                                       ; $73f0: $79
    ldh [$a3], a                                  ; $73f1: $e0 $a3
    rst $30                                       ; $73f3: $f7
    ld [hl], a                                    ; $73f4: $77
    db $f4                                        ; $73f5: $f4
    dec hl                                        ; $73f6: $2b

jr_031_73f7:
    ld hl, sp-$2a                                 ; $73f7: $f8 $d6
    ret                                           ; $73f9: $c9


    or c                                          ; $73fa: $b1
    add hl, hl                                    ; $73fb: $29
    ld a, b                                       ; $73fc: $78
    ld b, c                                       ; $73fd: $41
    db $e4                                        ; $73fe: $e4
    dec sp                                        ; $73ff: $3b
    ld d, l                                       ; $7400: $55
    ld e, $f5                                     ; $7401: $1e $f5
    add sp, -$52                                  ; $7403: $e8 $ae
    cp a                                          ; $7405: $bf
    ret nz                                        ; $7406: $c0

    ld de, $314c                                  ; $7407: $11 $4c $31
    db $fd                                        ; $740a: $fd
    or c                                          ; $740b: $b1
    call c, $1f3e                                 ; $740c: $dc $3e $1f
    or a                                          ; $740f: $b7
    rst $08                                       ; $7410: $cf
    sub d                                         ; $7411: $92

jr_031_7412:
    rst $20                                       ; $7412: $e7
    dec l                                         ; $7413: $2d
    push af                                       ; $7414: $f5
    or l                                          ; $7415: $b5
    ld b, [hl]                                    ; $7416: $46
    ccf                                           ; $7417: $3f
    inc c                                         ; $7418: $0c
    ld h, e                                       ; $7419: $63
    add hl, de                                    ; $741a: $19
    ret nc                                        ; $741b: $d0

    ld [$1a46], sp                                ; $741c: $08 $46 $1a

jr_031_741f:
    cp a                                          ; $741f: $bf
    and l                                         ; $7420: $a5
    db $fc                                        ; $7421: $fc
    ld bc, $2296                                  ; $7422: $01 $96 $22
    scf                                           ; $7425: $37
    adc h                                         ; $7426: $8c
    ld d, l                                       ; $7427: $55
    jr z, jr_031_7412                             ; $7428: $28 $e8

    cp h                                          ; $742a: $bc
    inc c                                         ; $742b: $0c
    ld l, b                                       ; $742c: $68
    dec a                                         ; $742d: $3d
    ld e, d                                       ; $742e: $5a
    ld [hl], d                                    ; $742f: $72
    dec e                                         ; $7430: $1d
    rra                                           ; $7431: $1f
    sub c                                         ; $7432: $91
    inc a                                         ; $7433: $3c
    ld e, a                                       ; $7434: $5f
    daa                                           ; $7435: $27
    ld e, e                                       ; $7436: $5b
    ld [hl], l                                    ; $7437: $75
    db $e3                                        ; $7438: $e3
    ld hl, sp+$2e                                 ; $7439: $f8 $2e
    ld b, a                                       ; $743b: $47
    cp d                                          ; $743c: $ba
    xor l                                         ; $743d: $ad
    jp nc, $86d2                                  ; $743e: $d2 $d2 $86

    or h                                          ; $7441: $b4
    ld b, $09                                     ; $7442: $06 $09
    ld l, a                                       ; $7444: $6f
    ld sp, hl                                     ; $7445: $f9
    ld a, [hl-]                                   ; $7446: $3a
    and c                                         ; $7447: $a1
    ld a, [hl]                                    ; $7448: $7e
    inc h                                         ; $7449: $24
    rst $00                                       ; $744a: $c7
    inc a                                         ; $744b: $3c
    cp h                                          ; $744c: $bc
    ld [hl], b                                    ; $744d: $70
    ldh a, [$b5]                                  ; $744e: $f0 $b5

jr_031_7450:
    db $eb                                        ; $7450: $eb
    ld d, l                                       ; $7451: $55
    add hl, hl                                    ; $7452: $29
    db $fc                                        ; $7453: $fc
    add [hl]                                      ; $7454: $86
    pop af                                        ; $7455: $f1
    cp $b8                                        ; $7456: $fe $b8
    sub [hl]                                      ; $7458: $96
    ld h, l                                       ; $7459: $65
    ld c, [hl]                                    ; $745a: $4e
    adc d                                         ; $745b: $8a
    dec [hl]                                      ; $745c: $35
    rrca                                          ; $745d: $0f
    ld a, h                                       ; $745e: $7c
    db $f4                                        ; $745f: $f4
    cp $8e                                        ; $7460: $fe $8e
    ld a, [hl]                                    ; $7462: $7e
    dec b                                         ; $7463: $05
    rst $18                                       ; $7464: $df
    ld a, [hl-]                                   ; $7465: $3a
    add hl, sp                                    ; $7466: $39
    ld [hl], $05                                  ; $7467: $36 $05
    cpl                                           ; $7469: $2f
    adc b                                         ; $746a: $88
    ld a, h                                       ; $746b: $7c
    and a                                         ; $746c: $a7
    jp z, Jump_000_1ea3                           ; $746d: $ca $a3 $1e

    db $dd                                        ; $7470: $dd
    push af                                       ; $7471: $f5
    rla                                           ; $7472: $17
    jr c, jr_031_73f7                             ; $7473: $38 $82

    add hl, hl                                    ; $7475: $29
    and [hl]                                      ; $7476: $a6
    ccf                                           ; $7477: $3f
    sub [hl]                                      ; $7478: $96
    db $db                                        ; $7479: $db
    rst $20                                       ; $747a: $e7
    db $e3                                        ; $747b: $e3
    or $59                                        ; $747c: $f6 $59
    ld a, [c]                                     ; $747e: $f2
    cp h                                          ; $747f: $bc
    dec b                                         ; $7480: $05
    and a                                         ; $7481: $a7
    ccf                                           ; $7482: $3f
    cp h                                          ; $7483: $bc
    ld [hl], b                                    ; $7484: $70
    ld h, h                                       ; $7485: $64
    ei                                            ; $7486: $fb
    rrca                                          ; $7487: $0f
    jr jr_031_741f                                ; $7488: $18 $95

    and d                                         ; $748a: $a2
    ld e, l                                       ; $748b: $5d
    xor a                                         ; $748c: $af
    ld c, d                                       ; $748d: $4a
    pop hl                                        ; $748e: $e1
    scf                                           ; $748f: $37
    adc h                                         ; $7490: $8c
    rst $30                                       ; $7491: $f7
    rst $00                                       ; $7492: $c7
    or l                                          ; $7493: $b5
    inc l                                         ; $7494: $2c
    ld [hl], e                                    ; $7495: $73
    ld d, d                                       ; $7496: $52
    inc h                                         ; $7497: $24
    ld [hl], a                                    ; $7498: $77
    xor h                                         ; $7499: $ac
    cp c                                          ; $749a: $b9
    rst $10                                       ; $749b: $d7
    db $e4                                        ; $749c: $e4
    dec l                                         ; $749d: $2d
    sbc l                                         ; $749e: $9d

jr_031_749f:
    ld d, b                                       ; $749f: $50
    ccf                                           ; $74a0: $3f
    sub d                                         ; $74a1: $92
    ld h, e                                       ; $74a2: $63
    ld e, $5e                                     ; $74a3: $1e $5e
    jr c, jr_031_749f                             ; $74a5: $38 $f8

    jp c, $c07f                                   ; $74a7: $da $7f $c0

    xor b                                         ; $74aa: $a8
    inc d                                         ; $74ab: $14
    db $ed                                        ; $74ac: $ed
    ld a, d                                       ; $74ad: $7a
    ld d, l                                       ; $74ae: $55
    ld a, [bc]                                    ; $74af: $0a
    cp a                                          ; $74b0: $bf
    ld h, c                                       ; $74b1: $61
    cp h                                          ; $74b2: $bc
    ccf                                           ; $74b3: $3f
    xor [hl]                                      ; $74b4: $ae
    ld h, l                                       ; $74b5: $65
    sbc c                                         ; $74b6: $99
    sub e                                         ; $74b7: $93
    ld [hl+], a                                   ; $74b8: $22
    add hl, sp                                    ; $74b9: $39
    sub l                                         ; $74ba: $95
    and d                                         ; $74bb: $a2
    ld sp, $4fa8                                  ; $74bc: $31 $a8 $4f
    res 0, [hl]                                   ; $74bf: $cb $86
    jr nz, jr_031_7450                            ; $74c1: $20 $8d

    rst $18                                       ; $74c3: $df
    call Call_000_191d                            ; $74c4: $cd $1d $19
    ld sp, hl                                     ; $74c7: $f9
    ld a, [de]                                    ; $74c8: $1a
    di                                            ; $74c9: $f3
    or c                                          ; $74ca: $b1
    ld sp, $60f5                                  ; $74cb: $31 $f5 $60
    ld [$b8dc], a                                 ; $74ce: $ea $dc $b8
    ld [hl+], a                                   ; $74d1: $22
    ld a, [c]                                     ; $74d2: $f2
    ld d, $a7                                     ; $74d3: $16 $a7
    ld a, l                                       ; $74d5: $7d
    adc l                                         ; $74d6: $8d
    ld e, $90                                     ; $74d7: $1e $90
    or $1f                                        ; $74d9: $f6 $1f
    jr nc, jr_031_7507                            ; $74db: $30 $2a

    ld b, l                                       ; $74dd: $45
    cp e                                          ; $74de: $bb
    ld e, [hl]                                    ; $74df: $5e
    sub l                                         ; $74e0: $95
    jp nz, $186f                                  ; $74e1: $c2 $6f $18

    rst $28                                       ; $74e4: $ef
    adc a                                         ; $74e5: $8f
    ld l, e                                       ; $74e6: $6b
    ld e, c                                       ; $74e7: $59
    and $a4                                       ; $74e8: $e6 $a4
    ld c, b                                       ; $74ea: $48
    xor $58                                       ; $74eb: $ee $58
    ld [hl], e                                    ; $74ed: $73
    xor a                                         ; $74ee: $af
    ret                                           ; $74ef: $c9


    ld d, a                                       ; $74f0: $57
    rst $38                                       ; $74f1: $ff
    xor [hl]                                      ; $74f2: $ae
    ld l, b                                       ; $74f3: $68
    ld [$96ba], a                                 ; $74f4: $ea $ba $96
    add c                                         ; $74f7: $81
    cp e                                          ; $74f8: $bb
    ld c, d                                       ; $74f9: $4a
    pop de                                        ; $74fa: $d1
    ld c, b                                       ; $74fb: $48
    ld l, e                                       ; $74fc: $6b
    adc d                                         ; $74fd: $8a

jr_031_74fe:
    and c                                         ; $74fe: $a1
    ld e, e                                       ; $74ff: $5b
    sbc $02                                       ; $7500: $de $02
    sbc l                                         ; $7502: $9d
    ld h, b                                       ; $7503: $60
    and $8e                                       ; $7504: $e6 $8e
    adc h                                         ; $7506: $8c

jr_031_7507:
    ld h, d                                       ; $7507: $62
    reti                                          ; $7508: $d9


    db $10                                        ; $7509: $10
    and h                                         ; $750a: $a4
    push de                                       ; $750b: $d5
    add hl, de                                    ; $750c: $19

jr_031_750d:
    xor c                                         ; $750d: $a9
    ld l, d                                       ; $750e: $6a
    ld h, d                                       ; $750f: $62
    call $1f03                                    ; $7510: $cd $03 $1f
    ld a, h                                       ; $7513: $7c
    db $ed                                        ; $7514: $ed
    ccf                                           ; $7515: $3f
    ld h, b                                       ; $7516: $60
    ld d, h                                       ; $7517: $54
    adc d                                         ; $7518: $8a
    halt                                          ; $7519: $76
    cp l                                          ; $751a: $bd
    ld a, [hl+]                                   ; $751b: $2a
    add l                                         ; $751c: $85
    rst $18                                       ; $751d: $df
    jr nc, jr_031_74fe                            ; $751e: $30 $de

    rra                                           ; $7520: $1f
    rst $10                                       ; $7521: $d7
    or d                                          ; $7522: $b2
    call z, $9149                                 ; $7523: $cc $49 $91
    call c, $e6b1                                 ; $7526: $dc $b1 $e6
    ld e, [hl]                                    ; $7529: $5e
    sub e                                         ; $752a: $93
    xor a                                         ; $752b: $af
    cp $5d                                        ; $752c: $fe $5d
    pop de                                        ; $752e: $d1
    call nc, $2d75                                ; $752f: $d4 $75 $2d
    inc bc                                        ; $7532: $03
    ld a, [de]                                    ; $7533: $1a
    pop bc                                        ; $7534: $c1
    jp nz, Jump_000_2dc0                          ; $7535: $c2 $c0 $2d

    and [hl]                                      ; $7538: $a6
    cp a                                          ; $7539: $bf
    or h                                          ; $753a: $b4

jr_031_753b:
    and c                                         ; $753b: $a1
    ld l, e                                       ; $753c: $6b
    xor c                                         ; $753d: $a9

Jump_031_753e:
    rst $30                                       ; $753e: $f7
    rlca                                          ; $753f: $07
    ld h, c                                       ; $7540: $61
    inc l                                         ; $7541: $2c
    push hl                                       ; $7542: $e5
    dec l                                         ; $7543: $2d
    and a                                         ; $7544: $a7
    ccf                                           ; $7545: $3f
    cp h                                          ; $7546: $bc
    ld [hl], b                                    ; $7547: $70
    ldh a, [$35]                                  ; $7548: $f0 $35
    inc bc                                        ; $754a: $03
    ld [hl], d                                    ; $754b: $72
    db $ed                                        ; $754c: $ed
    ld a, d                                       ; $754d: $7a
    ld d, l                                       ; $754e: $55
    ld a, [bc]                                    ; $754f: $0a
    cp a                                          ; $7550: $bf
    ld h, c                                       ; $7551: $61
    cp h                                          ; $7552: $bc
    ccf                                           ; $7553: $3f
    xor [hl]                                      ; $7554: $ae
    ld h, l                                       ; $7555: $65
    sbc c                                         ; $7556: $99
    sub e                                         ; $7557: $93

Jump_031_7558:
    ld [hl+], a                                   ; $7558: $22
    cp c                                          ; $7559: $b9
    ld h, e                                       ; $755a: $63
    call Call_000_26bd                            ; $755b: $cd $bd $26
    ld e, a                                       ; $755e: $5f
    db $fd                                        ; $755f: $fd
    cp e                                          ; $7560: $bb
    and d                                         ; $7561: $a2
    xor c                                         ; $7562: $a9
    db $eb                                        ; $7563: $eb
    ld e, d                                       ; $7564: $5a
    ld b, $ee                                     ; $7565: $06 $ee
    ld a, [hl+]                                   ; $7567: $2a
    ld b, l                                       ; $7568: $45
    inc hl                                        ; $7569: $23
    db $ed                                        ; $756a: $ed
    ld a, d                                       ; $756b: $7a
    sbc a                                         ; $756c: $9f
    ld b, c                                       ; $756d: $41
    ld a, l                                       ; $756e: $7d
    jp z, $f55b                                   ; $756f: $ca $5b $f5

    or l                                          ; $7572: $b5
    jr nc, jr_031_753b                            ; $7573: $30 $c6

    jr nc, jr_031_750d                            ; $7575: $30 $96

    ld b, d                                       ; $7577: $42
    db $fd                                        ; $7578: $fd
    ld h, l                                       ; $7579: $65
    ld b, b                                       ; $757a: $40
    inc hl                                        ; $757b: $23
    jr @-$7b                                      ; $757c: $18 $83

    ld a, [$0ddc]                                 ; $757e: $fa $dc $0d
    ld h, e                                       ; $7581: $63
    rla                                           ; $7582: $17
    ld e, e                                       ; $7583: $5b
    ld a, [hl]                                    ; $7584: $7e
    or c                                          ; $7585: $b1
    push hl                                       ; $7586: $e5
    add e                                         ; $7587: $83
    xor a                                         ; $7588: $af
    db $fd                                        ; $7589: $fd
    rlca                                          ; $758a: $07

jr_031_758b:
    adc h                                         ; $758b: $8c
    ld c, d                                       ; $758c: $4a
    pop de                                        ; $758d: $d1
    xor [hl]                                      ; $758e: $ae
    ld d, a                                       ; $758f: $57
    and l                                         ; $7590: $a5
    ldh a, [rNR31]                                ; $7591: $f0 $1b
    add $fb                                       ; $7593: $c6 $fb
    db $e3                                        ; $7595: $e3
    ld e, d                                       ; $7596: $5a

Jump_031_7597:
    sub [hl]                                      ; $7597: $96
    add hl, sp                                    ; $7598: $39
    add hl, hl                                    ; $7599: $29
    sub d                                         ; $759a: $92
    dec sp                                        ; $759b: $3b
    sub $dc                                       ; $759c: $d6 $dc
    ld l, e                                       ; $759e: $6b
    ld a, [c]                                     ; $759f: $f2
    ld d, $27                                     ; $75a0: $16 $27
    ld a, $60                                     ; $75a2: $3e $60
    ld d, h                                       ; $75a4: $54
    adc d                                         ; $75a5: $8a
    halt                                          ; $75a6: $76
    cp l                                          ; $75a7: $bd
    ld a, [hl+]                                   ; $75a8: $2a
    add l                                         ; $75a9: $85
    rst $18                                       ; $75aa: $df
    jr nc, jr_031_758b                            ; $75ab: $30 $de

    rra                                           ; $75ad: $1f
    rst $10                                       ; $75ae: $d7
    or d                                          ; $75af: $b2
    call z, $5149                                 ; $75b0: $cc $49 $51
    sbc e                                         ; $75b3: $9b
    cp b                                          ; $75b4: $b8
    jp Jump_031_5d19                              ; $75b5: $c3 $19 $5d


    ld d, e                                       ; $75b8: $53
    add hl, hl                                    ; $75b9: $29
    ld a, [de]                                    ; $75ba: $1a
    or a                                          ; $75bb: $b7
    rra                                           ; $75bc: $1f
    inc hl                                        ; $75bd: $23
    ld e, e                                       ; $75be: $5b
    ld h, l                                       ; $75bf: $65
    ld hl, sp-$6d                                 ; $75c0: $f8 $93
    inc hl                                        ; $75c2: $23
    ret c                                         ; $75c3: $d8

    rst $10                                       ; $75c4: $d7
    ld l, $37                                     ; $75c5: $2e $37
    db $fc                                        ; $75c7: $fc
    or c                                          ; $75c8: $b1
    ld b, [hl]                                    ; $75c9: $46
    ld e, $ef                                     ; $75ca: $1e $ef
    ld a, a                                       ; $75cc: $7f
    push de                                       ; $75cd: $d5
    ld h, $b6                                     ; $75ce: $26 $b6
    daa                                           ; $75d0: $27
    ret c                                         ; $75d1: $d8

    cp $03                                        ; $75d2: $fe $03
    ld b, [hl]                                    ; $75d4: $46
    and l                                         ; $75d5: $a5
    ld l, b                                       ; $75d6: $68
    rst $10                                       ; $75d7: $d7
    xor e                                         ; $75d8: $ab
    ld d, d                                       ; $75d9: $52
    ld hl, sp+$0d                                 ; $75da: $f8 $0d
    db $e3                                        ; $75dc: $e3
    db $fd                                        ; $75dd: $fd
    ld [hl], c                                    ; $75de: $71
    dec l                                         ; $75df: $2d
    res 3, h                                      ; $75e0: $cb $9c
    inc d                                         ; $75e2: $14
    ld d, e                                       ; $75e3: $53
    ret nc                                        ; $75e4: $d0

    call z, $991d                                 ; $75e5: $cc $1d $99
    sbc e                                         ; $75e8: $9b
    ld l, d                                       ; $75e9: $6a
    inc de                                        ; $75ea: $13
    ld [hl], a                                    ; $75eb: $77
    and d                                         ; $75ec: $a2
    ld b, [hl]                                    ; $75ed: $46
    ld [hl], a                                    ; $75ee: $77
    ld d, l                                       ; $75ef: $55
    ld d, l                                       ; $75f0: $55
    rst $10                                       ; $75f1: $d7
    ld b, l                                       ; $75f2: $45
    ld l, e                                       ; $75f3: $6b
    inc l                                         ; $75f4: $2c
    ld d, [hl]                                    ; $75f5: $56
    inc d                                         ; $75f6: $14
    ld l, e                                       ; $75f7: $6b
    ld l, [hl]                                    ; $75f8: $6e
    call c, $a28a                                 ; $75f9: $dc $8a $a2
    ld [hl], $b1                                  ; $75fc: $36 $b1
    dec b                                         ; $75fe: $05
    push af                                       ; $75ff: $f5
    rst $28                                       ; $7600: $ef
    adc d                                         ; $7601: $8a
    and [hl]                                      ; $7602: $a6
    xor [hl]                                      ; $7603: $ae
    ld l, e                                       ; $7604: $6b
    add hl, de                                    ; $7605: $19
    ret nc                                        ; $7606: $d0

    ret z                                         ; $7607: $c8

    ld d, $37                                     ; $7608: $16 $37
    ld b, a                                       ; $760a: $47
    db $ed                                        ; $760b: $ed
    ld a, d                                       ; $760c: $7a
    xor $8a                                       ; $760d: $ee $8a
    and $7d                                       ; $760f: $e6 $7d
    cp [hl]                                       ; $7611: $be
    ld a, [hl-]                                   ; $7612: $3a
    cp e                                          ; $7613: $bb
    ld b, h                                       ; $7614: $44
    and h                                         ; $7615: $a4
    db $fd                                        ; $7616: $fd
    rlca                                          ; $7617: $07
    adc h                                         ; $7618: $8c
    ld c, d                                       ; $7619: $4a
    pop de                                        ; $761a: $d1
    xor [hl]                                      ; $761b: $ae
    ld d, a                                       ; $761c: $57
    and l                                         ; $761d: $a5
    ldh a, [rNR31]                                ; $761e: $f0 $1b
    add $fb                                       ; $7620: $c6 $fb
    db $e3                                        ; $7622: $e3
    ld e, d                                       ; $7623: $5a
    sub [hl]                                      ; $7624: $96
    add hl, sp                                    ; $7625: $39
    add hl, hl                                    ; $7626: $29
    sub d                                         ; $7627: $92
    dec sp                                        ; $7628: $3b
    sub $dc                                       ; $7629: $d6 $dc
    ld l, e                                       ; $762b: $6b
    ld a, [c]                                     ; $762c: $f2
    ld d, $f5                                     ; $762d: $16 $f5
    or l                                          ; $762f: $b5
    xor a                                         ; $7630: $af
    dec b                                         ; $7631: $05
    ld h, b                                       ; $7632: $60
    xor h                                         ; $7633: $ac
    or c                                          ; $7634: $b1
    ld e, b                                       ; $7635: $58
    or $03                                        ; $7636: $f6 $03
    add c                                         ; $7638: $81
    xor a                                         ; $7639: $af
    ld [hl-], a                                   ; $763a: $32
    adc h                                         ; $763b: $8c
    ld h, l                                       ; $763c: $65
    ld l, e                                       ; $763d: $6b
    and h                                         ; $763e: $a4
    dec [hl]                                      ; $763f: $35
    and $a8                                       ; $7640: $e6 $a8
    ld h, l                                       ; $7642: $65
    ld b, b                                       ; $7643: $40
    cp e                                          ; $7644: $bb
    xor $0a                                       ; $7645: $ee $0a
    ld a, [de]                                    ; $7647: $1a
    ld a, h                                       ; $7648: $7c
    ld c, l                                       ; $7649: $4d
    sbc l                                         ; $764a: $9d
    cpl                                           ; $764b: $2f
    sub l                                         ; $764c: $95
    and d                                         ; $764d: $a2
    ld c, a                                       ; $764e: $4f
    jp c, $aaf5                                   ; $764f: $da $f5 $aa

    inc d                                         ; $7652: $14
    ld a, [hl]                                    ; $7653: $7e
    jp Jump_031_7f78                              ; $7654: $c3 $78 $7f


    ld e, h                                       ; $7657: $5c
    swap d                                        ; $7658: $cb $32
    daa                                           ; $765a: $27
    ld b, l                                       ; $765b: $45
    ld [hl], d                                    ; $765c: $72

jr_031_765d:
    rst $00                                       ; $765d: $c7
    sbc d                                         ; $765e: $9a
    ld a, e                                       ; $765f: $7b
    ld c, l                                       ; $7660: $4d
    sbc $02                                       ; $7661: $de $02
    daa                                           ; $7663: $27
    ld a, $88                                     ; $7664: $3e $88
    sub c                                         ; $7666: $91
    sub $f8                                       ; $7667: $d6 $f8
    adc l                                         ; $7669: $8d
    ld b, c                                       ; $766a: $41
    ld a, l                                       ; $766b: $7d
    xor $ef                                       ; $766c: $ee $ef
    rst $00                                       ; $766e: $c7
    ld a, b                                       ; $766f: $78
    db $dd                                        ; $7670: $dd
    ld e, b                                       ; $7671: $58
    ld b, $b4                                     ; $7672: $06 $b4
    rst $38                                       ; $7674: $ff
    jr nz, jr_031_765d                            ; $7675: $20 $e6

    cp d                                          ; $7677: $ba
    call nz, $fbf8                                ; $7678: $c4 $f8 $fb
    ld sp, $daf8                                  ; $767b: $31 $f8 $da
    ld a, a                                       ; $767e: $7f
    ret nz                                        ; $767f: $c0

    xor b                                         ; $7680: $a8
    inc d                                         ; $7681: $14
    db $ed                                        ; $7682: $ed
    ld a, d                                       ; $7683: $7a
    ld d, l                                       ; $7684: $55
    ld a, [bc]                                    ; $7685: $0a
    cp a                                          ; $7686: $bf
    ld h, c                                       ; $7687: $61
    cp h                                          ; $7688: $bc
    ccf                                           ; $7689: $3f
    xor [hl]                                      ; $768a: $ae
    ld h, l                                       ; $768b: $65
    sbc c                                         ; $768c: $99
    sub e                                         ; $768d: $93
    ld [hl+], a                                   ; $768e: $22
    ld l, a                                       ; $768f: $6f
    ld bc, $7759                                  ; $7690: $01 $59 $77
    dec b                                         ; $7693: $05
    adc l                                         ; $7694: $8d
    ld e, $d0                                     ; $7695: $1e $d0
    ld l, $2d                                     ; $7697: $2e $2d
    inc bc                                        ; $7699: $03
    ld e, d                                       ; $769a: $5a
    or $dd                                        ; $769b: $f6 $dd
    ld [hl], b                                    ; $769d: $70
    call Call_031_5f03                            ; $769e: $cd $03 $5f
    pop de                                        ; $76a1: $d1
    xor d                                         ; $76a2: $aa
    ld d, a                                       ; $76a3: $57
    jp hl                                         ; $76a4: $e9


    ld d, e                                       ; $76a5: $53
    ld [hl], d                                    ; $76a6: $72
    rst $00                                       ; $76a7: $c7
    sbc d                                         ; $76a8: $9a
    ld a, e                                       ; $76a9: $7b
    ld c, l                                       ; $76aa: $4d
    sbc $02                                       ; $76ab: $de $02
    dec e                                         ; $76ad: $1d
    dec bc                                        ; $76ae: $0b
    call nz, Call_031_76b8                        ; $76af: $c4 $b8 $76
    cp l                                          ; $76b2: $bd
    ld a, [hl+]                                   ; $76b3: $2a
    add l                                         ; $76b4: $85
    rst $18                                       ; $76b5: $df
    jr nc, @-$20                                  ; $76b6: $30 $de

Call_031_76b8:
    adc a                                         ; $76b8: $8f
    ld [hl], c                                    ; $76b9: $71
    dec l                                         ; $76ba: $2d
    res 3, h                                      ; $76bb: $cb $9c
    inc d                                         ; $76bd: $14
    ld l, e                                       ; $76be: $6b
    ld e, $f8                                     ; $76bf: $1e $f8
    adc d                                         ; $76c1: $8a
    ld d, [hl]                                    ; $76c2: $56
    cp l                                          ; $76c3: $bd
    ld c, d                                       ; $76c4: $4a
    sbc a                                         ; $76c5: $9f
    sub d                                         ; $76c6: $92
    dec sp                                        ; $76c7: $3b
    sub $dc                                       ; $76c8: $d6 $dc
    ld l, e                                       ; $76ca: $6b
    ld a, [c]                                     ; $76cb: $f2
    ld d, $a7                                     ; $76cc: $16 $a7
    xor b                                         ; $76ce: $a8
    or c                                          ; $76cf: $b1
    ld [$fe0d], sp                                ; $76d0: $08 $0d $fe
    ld a, [de]                                    ; $76d3: $1a
    pop bc                                        ; $76d4: $c1
    sbc d                                         ; $76d5: $9a
    ld [bc], a                                    ; $76d6: $02
    ld sp, $e732                                  ; $76d7: $31 $32 $e7
    ret                                           ; $76da: $c9


    dec e                                         ; $76db: $1d
    ld l, e                                       ; $76dc: $6b
    xor $35                                       ; $76dd: $ee $35
    ld sp, hl                                     ; $76df: $f9
    ld c, [hl]                                    ; $76e0: $4e
    ld a, h                                       ; $76e1: $7c
    db $10                                        ; $76e2: $10
    ld [hl], e                                    ; $76e3: $73
    ld e, l                                       ; $76e4: $5d
    ld h, d                                       ; $76e5: $62
    sbc $8f                                       ; $76e6: $de $8f
    add l                                         ; $76e8: $85
    db $fd                                        ; $76e9: $fd
    sbc b                                         ; $76ea: $98
    cp c                                          ; $76eb: $b9
    ld [hl], a                                    ; $76ec: $77
    ld c, l                                       ; $76ed: $4d
    db $e3                                        ; $76ee: $e3
    jp c, $c07f                                   ; $76ef: $da $7f $c0

    xor b                                         ; $76f2: $a8
    inc d                                         ; $76f3: $14
    push bc                                       ; $76f4: $c5
    xor [hl]                                      ; $76f5: $ae
    ld d, a                                       ; $76f6: $57
    and l                                         ; $76f7: $a5
    ldh a, [rNR31]                                ; $76f8: $f0 $1b
    add $fb                                       ; $76fa: $c6 $fb
    ld sp, $65ae                                  ; $76fc: $31 $ae $65
    sbc c                                         ; $76ff: $99
    sub e                                         ; $7700: $93
    ld [hl+], a                                   ; $7701: $22
    ld l, a                                       ; $7702: $6f

Call_031_7703:
    ld bc, $1ec7                                  ; $7703: $01 $c7 $1e
    ld a, [hl]                                    ; $7706: $7e
    jp z, Jump_031_6729                           ; $7707: $ca $29 $67

    xor l                                         ; $770a: $ad
    db $e3                                        ; $770b: $e3
    ld c, c                                       ; $770c: $49
    sbc l                                         ; $770d: $9d
    ld a, [hl-]                                   ; $770e: $3a
    dec e                                         ; $770f: $1d
    ld [hl], l                                    ; $7710: $75
    ld c, d                                       ; $7711: $4a
    ld [hl], d                                    ; $7712: $72
    rla                                           ; $7713: $17
    db $db                                        ; $7714: $db
    call c, $922e                                 ; $7715: $dc $2e $92
    ld b, a                                       ; $7718: $47
    ld [hl], d                                    ; $7719: $72
    rst $18                                       ; $771a: $df
    ld a, [hl+]                                   ; $771b: $2a
    push bc                                       ; $771c: $c5
    db $ec                                        ; $771d: $ec
    di                                            ; $771e: $f3
    cp c                                          ; $771f: $b9
    adc d                                         ; $7720: $8a
    sub c                                         ; $7721: $91
    ld hl, sp-$10                                 ; $7722: $f8 $f0
    ld [hl], e                                    ; $7724: $73
    cp h                                          ; $7725: $bc
    ret nc                                        ; $7726: $d0

    ld h, [hl]                                    ; $7727: $66
    xor [hl]                                      ; $7728: $ae
    sub c                                         ; $7729: $91
    dec de                                        ; $772a: $1b
    ld d, a                                       ; $772b: $57
    ld h, l                                       ; $772c: $65
    ld a, [hl]                                    ; $772d: $7e
    ld l, [hl]                                    ; $772e: $6e
    db $ec                                        ; $772f: $ec
    and l                                         ; $7730: $a5
    ld h, a                                       ; $7731: $67
    sbc a                                         ; $7732: $9f
    cpl                                           ; $7733: $2f
    pop bc                                        ; $7734: $c1
    adc $30                                       ; $7735: $ce $30
    rst $38                                       ; $7737: $ff
    ld a, [c]                                     ; $7738: $f2
    dec e                                         ; $7739: $1d
    pop hl                                        ; $773a: $e1
    cpl                                           ; $773b: $2f
    ld a, [c]                                     ; $773c: $f2
    sbc l                                         ; $773d: $9d
    db $d3                                        ; $773e: $d3
    ld c, e                                       ; $773f: $4b
    db $f4                                        ; $7740: $f4
    reti                                          ; $7741: $d9


    ld d, a                                       ; $7742: $57

Jump_031_7743:
    xor a                                         ; $7743: $af
    dec l                                         ; $7744: $2d
    and a                                         ; $7745: $a7
    ccf                                           ; $7746: $3f
    cp h                                          ; $7747: $bc
    ld [hl], b                                    ; $7748: $70
    ldh a, [$b5]                                  ; $7749: $f0 $b5
    sub h                                         ; $774b: $94
    or c                                          ; $774c: $b1
    ld b, b                                       ; $774d: $40
    ld b, h                                       ; $774e: $44
    ld c, d                                       ; $774f: $4a
    xor [hl]                                      ; $7750: $ae

jr_031_7751:
    call c, $196f                                 ; $7751: $dc $6f $19
    ret nz                                        ; $7754: $c0

    ld b, [hl]                                    ; $7755: $46
    sub l                                         ; $7756: $95
    ld a, $0d                                     ; $7757: $3e $0d
    ccf                                           ; $7759: $3f
    rst $00                                       ; $775a: $c7
    ld l, b                                       ; $775b: $68
    db $f4                                        ; $775c: $f4
    jp $4552                                      ; $775d: $c3 $52 $45


    db $e3                                        ; $7760: $e3
    ld a, [de]                                    ; $7761: $1a
    dec a                                         ; $7762: $3d
    and b                                         ; $7763: $a0
    push bc                                       ; $7764: $c5
    di                                            ; $7765: $f3
    dec bc                                        ; $7766: $0b
    push hl                                       ; $7767: $e5
    ld a, e                                       ; $7768: $7b
    or b                                          ; $7769: $b0
    ld a, b                                       ; $776a: $78
    ld a, [hl]                                    ; $776b: $7e
    ld h, c                                       ; $776c: $61
    ld e, l                                       ; $776d: $5d
    rst $10                                       ; $776e: $d7
    ld [hl-], a                                   ; $776f: $32
    add b                                         ; $7770: $80
    dec bc                                        ; $7771: $0b
    call $8d15                                    ; $7772: $cd $15 $8d
    ld l, $52                                     ; $7775: $2e $52
    ld l, l                                       ; $7777: $6d
    ld [c], a                                     ; $7778: $e2
    adc [hl]                                      ; $7779: $8e
    adc d                                         ; $777a: $8a
    jr nc, jr_031_7751                            ; $777b: $30 $d4

    cp b                                          ; $777d: $b8
    ld d, [hl]                                    ; $777e: $56
    db $ec                                        ; $777f: $ec
    ld e, a                                       ; $7780: $5f
    ld a, [c]                                     ; $7781: $f2
    pop de                                        ; $7782: $d1
    ei                                            ; $7783: $fb
    ld l, e                                       ; $7784: $6b
    ld e, h                                       ; $7785: $5c
    dec d                                         ; $7786: $15
    jp z, $cf17                                   ; $7787: $ca $17 $cf

    add hl, hl                                    ; $778a: $29
    add hl, sp                                    ; $778b: $39
    add d                                         ; $778c: $82
    jp hl                                         ; $778d: $e9


    rst $08                                       ; $778e: $cf
    sbc d                                         ; $778f: $9a
    add $f5                                       ; $7790: $c6 $f5
    cp c                                          ; $7792: $b9
    ld e, e                                       ; $7793: $5b
    inc l                                         ; $7794: $2c
    dec h                                         ; $7795: $25
    add e                                         ; $7796: $83
    db $eb                                        ; $7797: $eb
    ld b, c                                       ; $7798: $41
    inc sp                                        ; $7799: $33
    ld a, [hl]                                    ; $779a: $7e
    scf                                           ; $779b: $37
    jr nz, jr_031_77f5                            ; $779c: $20 $57

    xor h                                         ; $779e: $ac
    add hl, hl                                    ; $779f: $29
    db $10                                        ; $77a0: $10
    inc hl                                        ; $77a1: $23
    ld [hl], e                                    ; $77a2: $73
    sbc [hl]                                      ; $77a3: $9e
    or a                                          ; $77a4: $b7
    sbc l                                         ; $77a5: $9d
    ld h, b                                       ; $77a6: $60
    adc d                                         ; $77a7: $8a
    jp hl                                         ; $77a8: $e9


    and a                                         ; $77a9: $a7
    pop af                                        ; $77aa: $f1
    adc a                                         ; $77ab: $8f
    db $db                                        ; $77ac: $db
    adc a                                         ; $77ad: $8f
    dec d                                         ; $77ae: $15
    db $db                                        ; $77af: $db
    push bc                                       ; $77b0: $c5
    or [hl]                                       ; $77b1: $b6
    ld a, [hl+]                                   ; $77b2: $2a
    push hl                                       ; $77b3: $e5

jr_031_77b4:
    ld e, d                                       ; $77b4: $5a
    ld a, [$6939]                                 ; $77b5: $fa $39 $69
    ld e, h                                       ; $77b8: $5c
    inc hl                                        ; $77b9: $23
    ld e, e                                       ; $77ba: $5b
    jp c, Jump_000_2c2a                           ; $77bb: $da $2a $2c

    ld b, l                                       ; $77be: $45
    or l                                          ; $77bf: $b5
    adc c                                         ; $77c0: $89
    res 7, d                                      ; $77c1: $cb $ba
    dec hl                                        ; $77c3: $2b
    ld l, b                                       ; $77c4: $68
    inc e                                         ; $77c5: $1c
    db $d3                                        ; $77c6: $d3
    ld l, c                                       ; $77c7: $69
    cp h                                          ; $77c8: $bc
    or b                                          ; $77c9: $b0
    ld l, b                                       ; $77ca: $68
    ld e, h                                       ; $77cb: $5c
    adc e                                         ; $77cc: $8b
    dec sp                                        ; $77cd: $3b
    ld d, [hl]                                    ; $77ce: $56
    add $c2                                       ; $77cf: $c6 $c2
    cpl                                           ; $77d1: $2f
    ld e, a                                       ; $77d2: $5f
    ld b, $34                                     ; $77d3: $06 $34
    add d                                         ; $77d5: $82
    db $fd                                        ; $77d6: $fd
    cp e                                          ; $77d7: $bb
    cp $8c                                        ; $77d8: $fe $8c
    ld sp, $658c                                  ; $77da: $31 $8c $65
    ld e, e                                       ; $77dd: $5b
    ld h, l                                       ; $77de: $65
    jr jr_031_77b4                                ; $77df: $18 $d3

    daa                                           ; $77e1: $27
    ld a, l                                       ; $77e2: $7d
    ld c, $6b                                     ; $77e3: $0e $6b
    call z, Call_031_7c8b                         ; $77e5: $cc $8b $7c
    add $d8                                       ; $77e8: $c6 $d8
    and a                                         ; $77ea: $a7
    jp c, $16c4                                   ; $77eb: $da $c4 $16

    sbc l                                         ; $77ee: $9d
    ld h, b                                       ; $77ef: $60
    ld d, $b3                                     ; $77f0: $16 $b3
    adc e                                         ; $77f2: $8b
    dec l                                         ; $77f3: $2d
    cp d                                          ; $77f4: $ba

jr_031_77f5:
    adc l                                         ; $77f5: $8d
    ld e, $90                                     ; $77f6: $1e $90
    ld h, d                                       ; $77f8: $62
    ld b, l                                       ; $77f9: $45
    or c                                          ; $77fa: $b1
    db $f4                                        ; $77fb: $f4
    inc bc                                        ; $77fc: $03
    rst $38                                       ; $77fd: $ff
    ld c, b                                       ; $77fe: $48
    ldh [$8a], a                                  ; $77ff: $e0 $8a
    push bc                                       ; $7801: $c5
    push af                                       ; $7802: $f5
    adc d                                         ; $7803: $8a
    and c                                         ; $7804: $a1
    dec hl                                        ; $7805: $2b
    sub [hl]                                      ; $7806: $96
    ld bc, $1a5c                                  ; $7807: $01 $5c $1a
    ld e, c                                       ; $780a: $59
    ldh [$86], a                                  ; $780b: $e0 $86
    ld a, [$00b4]                                 ; $780d: $fa $b4 $00
    rra                                           ; $7810: $1f
    reti                                          ; $7811: $d9


    ld a, [bc]                                    ; $7812: $0a
    ld b, $a9                                     ; $7813: $06 $a9
    ld [hl], $71                                  ; $7815: $36 $71
    sbc l                                         ; $7817: $9d
    ld h, b                                       ; $7818: $60
    adc l                                         ; $7819: $8d
    and b                                         ; $781a: $a0
    di                                            ; $781b: $f3
    ld a, [de]                                    ; $781c: $1a
    ld [hl], e                                    ; $781d: $73
    ld b, d                                       ; $781e: $42
    ld e, a                                       ; $781f: $5f
    di                                            ; $7820: $f3
    ret nz                                        ; $7821: $c0

    rst $10                                       ; $7822: $d7
    pop af                                        ; $7823: $f1
    ld bc, $e62f                                  ; $7824: $01 $2f $e6
    ld a, h                                       ; $7827: $7c
    sub l                                         ; $7828: $95
    pop hl                                        ; $7829: $e1
    daa                                           ; $782a: $27
    ld a, l                                       ; $782b: $7d
    ei                                            ; $782c: $fb
    ld d, h                                       ; $782d: $54
    sbc e                                         ; $782e: $9b
    ret c                                         ; $782f: $d8

    ld [bc], a                                    ; $7830: $02
    sbc l                                         ; $7831: $9d
    ld h, b                                       ; $7832: $60
    ld d, $63                                     ; $7833: $16 $63
    inc c                                         ; $7835: $0c
    rst $38                                       ; $7836: $ff
    dec b                                         ; $7837: $05
    cp e                                          ; $7838: $bb
    or h                                          ; $7839: $b4
    ld b, [hl]                                    ; $783a: $46
    add h                                         ; $783b: $84
    or h                                          ; $783c: $b4
    bit 5, a                                      ; $783d: $cb $6f
    add h                                         ; $783f: $84
    ld a, a                                       ; $7840: $7f
    pop af                                        ; $7841: $f1
    ld e, a                                       ; $7842: $5f
    ld a, [bc]                                    ; $7843: $0a
    cp a                                          ; $7844: $bf
    add hl, sp                                    ; $7845: $39
    rra                                           ; $7846: $1f
    rst $10                                       ; $7847: $d7
    adc [hl]                                      ; $7848: $8e
    ld [hl], h                                    ; $7849: $74
    ld h, e                                       ; $784a: $63
    cp l                                          ; $784b: $bd
    jp hl                                         ; $784c: $e9


    xor a                                         ; $784d: $af
    nop                                           ; $784e: $00
    ld l, $5b                                     ; $784f: $2e $5b
    ld h, h                                       ; $7851: $64
    sbc a                                         ; $7852: $9f
    add $15                                       ; $7853: $c6 $15
    adc e                                         ; $7855: $8b
    rst $20                                       ; $7856: $e7
    inc d                                         ; $7857: $14
    or l                                          ; $7858: $b5
    adc c                                         ; $7859: $89
    res 6, d                                      ; $785a: $cb $b2
    dec d                                         ; $785c: $15
    ret nz                                        ; $785d: $c0

    ld e, c                                       ; $785e: $59
    db $d3                                        ; $785f: $d3
    cp b                                          ; $7860: $b8
    ld a, $77                                     ; $7861: $3e $77
    ld e, e                                       ; $7863: $5b
    sbc l                                         ; $7864: $9d
    dec [hl]                                      ; $7865: $35
    and $45                                       ; $7866: $e6 $45
    cp [hl]                                       ; $7868: $be
    ld a, [hl-]                                   ; $7869: $3a
    inc hl                                        ; $786a: $23
    push bc                                       ; $786b: $c5
    cp $03                                        ; $786c: $fe $03
    ld b, [hl]                                    ; $786e: $46
    ld b, $9d                                     ; $786f: $06 $9d
    ld h, a                                       ; $7871: $67
    dec d                                         ; $7872: $15
    add $b8                                       ; $7873: $c6 $b8
    halt                                          ; $7875: $76
    adc c                                         ; $7876: $89
    ld c, b                                       ; $7877: $48
    ld c, e                                       ; $7878: $4b
    ld e, e                                       ; $7879: $5b
    adc a                                         ; $787a: $8f
    rst $28                                       ; $787b: $ef
    rst $10                                       ; $787c: $d7
    ld h, $b6                                     ; $787d: $26 $b6
    sbc l                                         ; $787f: $9d
    ld h, b                                       ; $7880: $60
    ld d, $f3                                     ; $7881: $16 $f3
    dec de                                        ; $7883: $1b
    ld b, h                                       ; $7884: $44
    ldh [$ea], a                                  ; $7885: $e0 $ea
    adc h                                         ; $7887: $8c
    call c, Call_031_7918                         ; $7888: $dc $18 $79
    ret z                                         ; $788b: $c8

    ld d, a                                       ; $788c: $57
    or h                                          ; $788d: $b4
    ld h, d                                       ; $788e: $62
    rst $10                                       ; $788f: $d7
    ld b, h                                       ; $7890: $44
    dec hl                                        ; $7891: $2b
    adc d                                         ; $7892: $8a
    ld e, l                                       ; $7893: $5d
    halt                                          ; $7894: $76
    or c                                          ; $7895: $b1
    rra                                           ; $7896: $1f
    ld b, l                                       ; $7897: $45
    cp [hl]                                       ; $7898: $be
    and e                                         ; $7899: $a3
    ld l, b                                       ; $789a: $68
    inc b                                         ; $789b: $04
    ld d, e                                       ; $789c: $53
    ld c, h                                       ; $789d: $4c
    ccf                                           ; $789e: $3f
    adc l                                         ; $789f: $8d
    ld a, a                                       ; $78a0: $7f
    and $8e                                       ; $78a1: $e6 $8e
    call z, $cf2d                                 ; $78a3: $cc $2d $cf
    di                                            ; $78a6: $f3
    push de                                       ; $78a7: $d5
    ld e, c                                       ; $78a8: $59
    rst $00                                       ; $78a9: $c7
    rlca                                          ; $78aa: $07
    cp h                                          ; $78ab: $bc
    sbc b                                         ; $78ac: $98
    di                                            ; $78ad: $f3
    jp c, $16c4                                   ; $78ae: $da $c4 $16

    sbc l                                         ; $78b1: $9d
    ld h, b                                       ; $78b2: $60
    ld d, $13                                     ; $78b3: $16 $13
    db $ec                                        ; $78b5: $ec
    jp nc, $a032                                  ; $78b6: $d2 $32 $a0

    ld de, $798c                                  ; $78b9: $11 $8c $79
    ld d, b                                       ; $78bc: $50
    inc c                                         ; $78bd: $0c
    inc hl                                        ; $78be: $23
    add hl, sp                                    ; $78bf: $39
    add d                                         ; $78c0: $82
    and l                                         ; $78c1: $a5
    push hl                                       ; $78c2: $e5
    ld d, $23                                     ; $78c3: $16 $23
    push bc                                       ; $78c5: $c5
    ld l, [hl]                                    ; $78c6: $6e
    inc b                                         ; $78c7: $04
    ld e, h                                       ; $78c8: $5c
    or c                                          ; $78c9: $b1
    ld a, [hl-]                                   ; $78ca: $3a
    dec sp                                        ; $78cb: $3b
    add $6b                                       ; $78cc: $c6 $6b
    jp nc, $f7e9                                  ; $78ce: $d2 $e9 $f7

    ld sp, hl                                     ; $78d1: $f9
    di                                            ; $78d2: $f3
    ld a, h                                       ; $78d3: $7c
    rst $00                                       ; $78d4: $c7
    sub l                                         ; $78d5: $95
    dec [hl]                                      ; $78d6: $35
    and $d6                                       ; $78d7: $e6 $d6
    dec l                                         ; $78d9: $2d
    dec l                                         ; $78da: $2d
    inc bc                                        ; $78db: $03
    ld [hl], a                                    ; $78dc: $77
    ld hl, sp-$26                                 ; $78dd: $f8 $da
    ld a, a                                       ; $78df: $7f
    ret nz                                        ; $78e0: $c0

    xor b                                         ; $78e1: $a8
    inc d                                         ; $78e2: $14
    db $ed                                        ; $78e3: $ed
    ld a, d                                       ; $78e4: $7a
    ld d, l                                       ; $78e5: $55
    ld a, [bc]                                    ; $78e6: $0a
    cp a                                          ; $78e7: $bf
    ld h, c                                       ; $78e8: $61
    cp h                                          ; $78e9: $bc
    ccf                                           ; $78ea: $3f
    xor [hl]                                      ; $78eb: $ae
    ld h, l                                       ; $78ec: $65
    sbc c                                         ; $78ed: $99
    sub e                                         ; $78ee: $93
    ld h, d                                       ; $78ef: $62
    ld a, [bc]                                    ; $78f0: $0a
    ld a, [de]                                    ; $78f1: $1a
    rst $00                                       ; $78f2: $c7
    ld l, b                                       ; $78f3: $68
    sbc $c7                                       ; $78f4: $de $c7
    ld d, h                                       ; $78f6: $54
    pop de                                        ; $78f7: $d1
    inc c                                         ; $78f8: $0c
    sub [hl]                                      ; $78f9: $96
    ld d, l                                       ; $78fa: $55
    jr nz, jr_031_7932                            ; $78fb: $20 $35

    xor [hl]                                      ; $78fd: $ae
    ret c                                         ; $78fe: $d8

    push af                                       ; $78ff: $f5
    ld c, d                                       ; $7900: $4a
    pop de                                        ; $7901: $d1
    ld b, l                                       ; $7902: $45
    ld hl, sp-$02                                 ; $7903: $f8 $fe
    rla                                           ; $7905: $17
    ld a, b                                       ; $7906: $78
    adc h                                         ; $7907: $8c
    ld l, e                                       ; $7908: $6b
    ld e, c                                       ; $7909: $59
    and $a4                                       ; $790a: $e6 $a4
    ret z                                         ; $790c: $c8

    ld e, e                                       ; $790d: $5b
    sbc l                                         ; $790e: $9d
    ld h, b                                       ; $790f: $60
    ld d, $e3                                     ; $7910: $16 $e3
    or a                                          ; $7912: $b7
    ld a, b                                       ; $7913: $78
    ld e, [hl]                                    ; $7914: $5e
    add hl, de                                    ; $7915: $19
    add $e8                                       ; $7916: $c6 $e8

Call_031_7918:
    ld b, c                                       ; $7918: $41
    xor h                                         ; $7919: $ac
    jr z, @-$78                                   ; $791a: $28 $86

    sbc a                                         ; $791c: $9f
    push hl                                       ; $791d: $e5
    scf                                           ; $791e: $37
    adc [hl]                                      ; $791f: $8e
    ld a, [$cb14]                                 ; $7920: $fa $14 $cb
    add b                                         ; $7923: $80
    halt                                          ; $7924: $76
    jp z, $8163                                   ; $7925: $ca $63 $81

    ld b, [hl]                                    ; $7928: $46
    ld [hl], a                                    ; $7929: $77
    ld h, e                                       ; $792a: $63
    inc c                                         ; $792b: $0c
    ld l, c                                       ; $792c: $69
    ld e, h                                       ; $792d: $5c
    sub l                                         ; $792e: $95
    ld a, l                                       ; $792f: $7d
    ld a, [hl]                                    ; $7930: $7e
    adc e                                         ; $7931: $8b

jr_031_7932:
    jp c, Jump_000_1dc4                           ; $7932: $da $c4 $1d

    sbc $34                                       ; $7935: $de $34
    and $aa                                       ; $7937: $e6 $aa
    ld a, [hl+]                                   ; $7939: $2a
    ld a, l                                       ; $793a: $7d
    ld c, d                                       ; $793b: $4a
    ld c, $cb                                     ; $793c: $0e $cb
    ld l, d                                       ; $793e: $6a
    ld h, [hl]                                    ; $793f: $66
    ldh [$86], a                                  ; $7940: $e0 $86
    inc [hl]                                      ; $7942: $34
    ld hl, sp-$26                                 ; $7943: $f8 $da
    ld a, a                                       ; $7945: $7f
    ret nz                                        ; $7946: $c0

    xor b                                         ; $7947: $a8
    inc d                                         ; $7948: $14
    db $ed                                        ; $7949: $ed
    ld a, d                                       ; $794a: $7a
    ld d, l                                       ; $794b: $55
    ld a, [bc]                                    ; $794c: $0a
    cp a                                          ; $794d: $bf
    ld h, c                                       ; $794e: $61
    cp h                                          ; $794f: $bc
    ccf                                           ; $7950: $3f

Call_031_7951:
    xor [hl]                                      ; $7951: $ae
    ld h, l                                       ; $7952: $65
    sbc c                                         ; $7953: $99
    sub e                                         ; $7954: $93
    ld h, d                                       ; $7955: $62
    inc e                                         ; $7956: $1c
    and e                                         ; $7957: $a3
    ld a, c                                       ; $7958: $79
    rra                                           ; $7959: $1f
    ld d, e                                       ; $795a: $53
    ld b, l                                       ; $795b: $45
    inc sp                                        ; $795c: $33
    ld e, b                                       ; $795d: $58
    ld d, [hl]                                    ; $795e: $56
    add c                                         ; $795f: $81
    call nc, Call_031_62b8                        ; $7960: $d4 $b8 $62
    rst $10                                       ; $7963: $d7
    dec hl                                        ; $7964: $2b
    ld b, l                                       ; $7965: $45
    rla                                           ; $7966: $17
    pop hl                                        ; $7967: $e1
    ei                                            ; $7968: $fb
    ld e, a                                       ; $7969: $5f
    ldh [$31], a                                  ; $796a: $e0 $31
    xor [hl]                                      ; $796c: $ae
    ld h, l                                       ; $796d: $65
    sbc c                                         ; $796e: $99
    sub e                                         ; $796f: $93
    ld [hl+], a                                   ; $7970: $22
    ld l, a                                       ; $7971: $6f
    ld bc, $609d                                  ; $7972: $01 $9d $60
    ld d, $0b                                     ; $7975: $16 $0b
    inc bc                                        ; $7977: $03
    and $b6                                       ; $7978: $e6 $b6
    adc [hl]                                      ; $797a: $8e
    rrca                                          ; $797b: $0f
    ld a, b                                       ; $797c: $78
    ld sp, $e3e7                                  ; $797d: $31 $e7 $e3
    ld e, d                                       ; $7980: $5a
    or c                                          ; $7981: $b1
    ld d, l                                       ; $7982: $55
    ld a, [$6976]                                 ; $7983: $fa $76 $69
    db $fc                                        ; $7986: $fc
    ld c, $7f                                     ; $7987: $0e $7f
    push bc                                       ; $7989: $c5
    ld a, [de]                                    ; $798a: $1a
    db $fc                                        ; $798b: $fc
    ld h, e                                       ; $798c: $63
    ldh a, [$15]                                  ; $798d: $f0 $15
    pop de                                        ; $798f: $d1
    ld l, $b7                                     ; $7990: $2e $b7
    adc e                                         ; $7992: $8b
    dec l                                         ; $7993: $2d
    ldh a, [$71]                                  ; $7994: $f0 $71
    dec l                                         ; $7996: $2d
    dec l                                         ; $7997: $2d
    xor b                                         ; $7998: $a8
    ld c, l                                       ; $7999: $4d
    call c, $3609                                 ; $799a: $dc $09 $36
    add a                                         ; $799d: $87
    ld c, d                                       ; $799e: $4a
    ldh [$0b], a                                  ; $799f: $e0 $0b
    sub l                                         ; $79a1: $95
    rst $30                                       ; $79a2: $f7
    ld d, a                                       ; $79a3: $57
    inc l                                         ; $79a4: $2c
    inc bc                                        ; $79a5: $03
    ld a, [hl+]                                   ; $79a6: $2a
    ld b, l                                       ; $79a7: $45
    add e                                         ; $79a8: $83
    xor a                                         ; $79a9: $af
    db $fd                                        ; $79aa: $fd
    rlca                                          ; $79ab: $07
    adc h                                         ; $79ac: $8c
    ld c, d                                       ; $79ad: $4a
    pop de                                        ; $79ae: $d1
    xor [hl]                                      ; $79af: $ae
    ld d, a                                       ; $79b0: $57

jr_031_79b1:
    and l                                         ; $79b1: $a5
    ldh a, [rNR31]                                ; $79b2: $f0 $1b
    add $fb                                       ; $79b4: $c6 $fb
    db $e3                                        ; $79b6: $e3
    ld e, d                                       ; $79b7: $5a
    sub [hl]                                      ; $79b8: $96
    add hl, sp                                    ; $79b9: $39
    add hl, hl                                    ; $79ba: $29
    ld d, $72                                     ; $79bb: $16 $72
    ld b, e                                       ; $79bd: $43
    ld a, [de]                                    ; $79be: $1a
    rst $00                                       ; $79bf: $c7
    ld l, b                                       ; $79c0: $68
    sbc $c7                                       ; $79c1: $de $c7
    ld d, h                                       ; $79c3: $54
    pop de                                        ; $79c4: $d1
    inc c                                         ; $79c5: $0c
    sub [hl]                                      ; $79c6: $96
    ld d, l                                       ; $79c7: $55
    jr nz, jr_031_79ff                            ; $79c8: $20 $35

    xor [hl]                                      ; $79ca: $ae
    ret c                                         ; $79cb: $d8

    push af                                       ; $79cc: $f5
    ld c, d                                       ; $79cd: $4a
    pop de                                        ; $79ce: $d1
    ld b, l                                       ; $79cf: $45
    ld hl, sp-$02                                 ; $79d0: $f8 $fe
    rla                                           ; $79d2: $17
    ld a, b                                       ; $79d3: $78
    adc h                                         ; $79d4: $8c
    ld l, e                                       ; $79d5: $6b
    ld e, c                                       ; $79d6: $59
    and $a4                                       ; $79d7: $e6 $a4
    ld e, b                                       ; $79d9: $58
    ld l, b                                       ; $79da: $68
    ld a, [hl]                                    ; $79db: $7e
    ld l, e                                       ; $79dc: $6b
    db $ec                                        ; $79dd: $ec
    di                                            ; $79de: $f3
    push de                                       ; $79df: $d5
    add hl, de                                    ; $79e0: $19
    dec a                                         ; $79e1: $3d
    jr nz, jr_031_79b1                            ; $79e2: $20 $cd

    ld c, d                                       ; $79e4: $4a
    ld bc, $b8d7                                  ; $79e5: $01 $d7 $b8
    db $fd                                        ; $79e8: $fd
    ld e, b                                       ; $79e9: $58
    ld d, c                                       ; $79ea: $51
    db $ec                                        ; $79eb: $ec
    ld a, d                                       ; $79ec: $7a
    ld d, b                                       ; $79ed: $50
    ld e, $7a                                     ; $79ee: $1e $7a
    adc h                                         ; $79f0: $8c
    ld l, e                                       ; $79f1: $6b
    push hl                                       ; $79f2: $e5
    ld a, [hl]                                    ; $79f3: $7e
    cp e                                          ; $79f4: $bb
    ld e, [hl]                                    ; $79f5: $5e
    ld d, c                                       ; $79f6: $51
    sbc $02                                       ; $79f7: $de $02
    sbc l                                         ; $79f9: $9d
    ld h, b                                       ; $79fa: $60
    adc l                                         ; $79fb: $8d
    and b                                         ; $79fc: $a0
    di                                            ; $79fd: $f3
    cp d                                          ; $79fe: $ba

jr_031_79ff:
    ld h, $d7                                     ; $79ff: $26 $d7
    jp nc, $1f28                                  ; $7a01: $d2 $28 $1f

    cp a                                          ; $7a04: $bf
    dec de                                        ; $7a05: $1b
    di                                            ; $7a06: $f3
    ret nc                                        ; $7a07: $d0

    ld b, a                                       ; $7a08: $47
    ld a, [c]                                     ; $7a09: $f2
    ld a, [bc]                                    ; $7a0a: $0a
    rst $38                                       ; $7a0b: $ff
    ld l, l                                       ; $7a0c: $6d
    ld b, l                                       ; $7a0d: $45
    or c                                          ; $7a0e: $b1
    db $eb                                        ; $7a0f: $eb
    add c                                         ; $7a10: $81
    rst $00                                       ; $7a11: $c7
    cp b                                          ; $7a12: $b8
    sub [hl]                                      ; $7a13: $96
    ld a, d                                       ; $7a14: $7a
    ld h, h                                       ; $7a15: $64
    rra                                           ; $7a16: $1f
    inc sp                                        ; $7a17: $33
    and b                                         ; $7a18: $a0
    adc c                                         ; $7a19: $89
    or $52                                        ; $7a1a: $f6 $52
    and h                                         ; $7a1c: $a4
    rrca                                          ; $7a1d: $0f

jr_031_7a1e:
    dec hl                                        ; $7a1e: $2b
    adc d                                         ; $7a1f: $8a
    cp c                                          ; $7a20: $b9
    ld l, $11                                     ; $7a21: $2e $11
    add hl, hl                                    ; $7a23: $29
    add $15                                       ; $7a24: $c6 $15
    ld l, e                                       ; $7a26: $6b
    ld e, $e1                                     ; $7a27: $1e $e1
    ei                                            ; $7a29: $fb
    ld d, c                                       ; $7a2a: $51
    sbc e                                         ; $7a2b: $9b
    cp b                                          ; $7a2c: $b8
    and e                                         ; $7a2d: $a3
    cp $9a                                        ; $7a2e: $fe $9a
    ld [bc], a                                    ; $7a30: $02
    sub c                                         ; $7a31: $91
    inc e                                         ; $7a32: $1c
    ld a, h                                       ; $7a33: $7c
    db $ed                                        ; $7a34: $ed
    ccf                                           ; $7a35: $3f
    ld h, b                                       ; $7a36: $60
    ld d, h                                       ; $7a37: $54
    adc d                                         ; $7a38: $8a
    halt                                          ; $7a39: $76
    cp l                                          ; $7a3a: $bd
    ld a, [hl+]                                   ; $7a3b: $2a
    add l                                         ; $7a3c: $85
    rst $18                                       ; $7a3d: $df
    jr nc, jr_031_7a1e                            ; $7a3e: $30 $de

    rra                                           ; $7a40: $1f
    rst $10                                       ; $7a41: $d7
    or d                                          ; $7a42: $b2
    call z, $3149                                 ; $7a43: $cc $49 $31
    dec b                                         ; $7a46: $05
    adc l                                         ; $7a47: $8d
    ld h, e                                       ; $7a48: $63
    inc [hl]                                      ; $7a49: $34
    rst $28                                       ; $7a4a: $ef
    ld h, e                                       ; $7a4b: $63
    xor d                                         ; $7a4c: $aa
    ld l, b                                       ; $7a4d: $68
    ld b, $cb                                     ; $7a4e: $06 $cb
    ld a, [hl+]                                   ; $7a50: $2a
    sub b                                         ; $7a51: $90
    ld a, [de]                                    ; $7a52: $1a
    ld d, a                                       ; $7a53: $57
    db $ec                                        ; $7a54: $ec
    ld a, d                                       ; $7a55: $7a
    and l                                         ; $7a56: $a5
    add sp, $22                                   ; $7a57: $e8 $22
    ld a, h                                       ; $7a59: $7c
    rst $38                                       ; $7a5a: $ff
    dec bc                                        ; $7a5b: $0b
    inc a                                         ; $7a5c: $3c
    add $b5                                       ; $7a5d: $c6 $b5
    inc l                                         ; $7a5f: $2c
    ld [hl], e                                    ; $7a60: $73
    ld d, d                                       ; $7a61: $52
    db $e4                                        ; $7a62: $e4
    dec l                                         ; $7a63: $2d
    sbc l                                         ; $7a64: $9d
    ld h, b                                       ; $7a65: $60
    ld d, $bb                                     ; $7a66: $16 $bb
    sbc $27                                       ; $7a68: $de $27
    scf                                           ; $7a6a: $37
    rst $00                                       ; $7a6b: $c7
    db $db                                        ; $7a6c: $db
    ld a, [hl-]                                   ; $7a6d: $3a
    ld c, d                                       ; $7a6e: $4a
    adc h                                         ; $7a6f: $8c
    ld h, d                                       ; $7a70: $62
    and d                                         ; $7a71: $a2
    cp c                                          ; $7a72: $b9
    sbc d                                         ; $7a73: $9a
    ld h, d                                       ; $7a74: $62
    rst $10                                       ; $7a75: $d7
    ld l, l                                       ; $7a76: $6d
    ld b, l                                       ; $7a77: $45
    dec hl                                        ; $7a78: $2b
    ret z                                         ; $7a79: $c8

    cp b                                          ; $7a7a: $b8
    add $bc                                       ; $7a7b: $c6 $bc
    ld [hl], d                                    ; $7a7d: $72
    dec de                                        ; $7a7e: $1b
    or a                                          ; $7a7f: $b7
    rra                                           ; $7a80: $1f
    dec hl                                        ; $7a81: $2b
    or [hl]                                       ; $7a82: $b6
    inc d                                         ; $7a83: $14
    and [hl]                                      ; $7a84: $a6
    ld a, [bc]                                    ; $7a85: $0a
    ld a, $62                                     ; $7a86: $3e $62
    rst $10                                       ; $7a88: $d7
    call Call_031_6a80                            ; $7a89: $cd $80 $6a
    inc de                                        ; $7a8c: $13
    ld [hl], a                                    ; $7a8d: $77
    jr c, jr_031_7abc                             ; $7a8e: $38 $2c

    ld l, l                                       ; $7a90: $6d
    ld c, b                                       ; $7a91: $48
    ret                                           ; $7a92: $c9


    ld h, c                                       ; $7a93: $61
    ld e, c                                       ; $7a94: $59
    ld h, e                                       ; $7a95: $63
    ld l, [hl]                                    ; $7a96: $6e
    db $dd                                        ; $7a97: $dd
    jp nc, $7032                                  ; $7a98: $d2 $32 $70

    add a                                         ; $7a9b: $87
    xor a                                         ; $7a9c: $af
    db $fd                                        ; $7a9d: $fd
    rlca                                          ; $7a9e: $07
    adc h                                         ; $7a9f: $8c
    ld c, d                                       ; $7aa0: $4a
    pop de                                        ; $7aa1: $d1
    xor [hl]                                      ; $7aa2: $ae
    ld d, a                                       ; $7aa3: $57
    and l                                         ; $7aa4: $a5
    ldh a, [rNR31]                                ; $7aa5: $f0 $1b
    add $fb                                       ; $7aa7: $c6 $fb
    db $e3                                        ; $7aa9: $e3
    ld e, d                                       ; $7aaa: $5a
    sub [hl]                                      ; $7aab: $96
    add hl, sp                                    ; $7aac: $39
    add hl, hl                                    ; $7aad: $29
    and [hl]                                      ; $7aae: $a6
    and b                                         ; $7aaf: $a0
    pop af                                        ; $7ab0: $f1
    ld e, e                                       ; $7ab1: $5b
    inc a                                         ; $7ab2: $3c
    xor a                                         ; $7ab3: $af
    inc c                                         ; $7ab4: $0c
    ld h, e                                       ; $7ab5: $63
    inc e                                         ; $7ab6: $1c
    and e                                         ; $7ab7: $a3
    ld a, c                                       ; $7ab8: $79
    rra                                           ; $7ab9: $1f
    ld d, e                                       ; $7aba: $53
    ld b, l                                       ; $7abb: $45

jr_031_7abc:
    inc sp                                        ; $7abc: $33
    ld e, b                                       ; $7abd: $58
    ld d, [hl]                                    ; $7abe: $56
    add c                                         ; $7abf: $81
    call nc, Call_031_62b8                        ; $7ac0: $d4 $b8 $62
    rst $10                                       ; $7ac3: $d7
    dec hl                                        ; $7ac4: $2b
    ld b, l                                       ; $7ac5: $45
    rla                                           ; $7ac6: $17
    pop hl                                        ; $7ac7: $e1
    ei                                            ; $7ac8: $fb
    ld e, a                                       ; $7ac9: $5f
    ldh [$31], a                                  ; $7aca: $e0 $31
    xor [hl]                                      ; $7acc: $ae
    ld h, l                                       ; $7acd: $65
    sbc c                                         ; $7ace: $99
    sub e                                         ; $7acf: $93
    ld [hl+], a                                   ; $7ad0: $22
    ld l, a                                       ; $7ad1: $6f
    ld bc, $609d                                  ; $7ad2: $01 $9d $60
    ld d, $b3                                     ; $7ad5: $16 $b3
    db $eb                                        ; $7ad7: $eb
    ld a, d                                       ; $7ad8: $7a
    ld d, l                                       ; $7ad9: $55
    ld d, e                                       ; $7ada: $53
    ld [hl], b                                    ; $7adb: $70
    push bc                                       ; $7adc: $c5
    sub [hl]                                      ; $7add: $96
    add c                                         ; $7ade: $81
    xor [hl]                                      ; $7adf: $ae
    ld c, c                                       ; $7ae0: $49
    res 0, b                                      ; $7ae1: $cb $80
    ld b, [hl]                                    ; $7ae3: $46
    ld [hl], a                                    ; $7ae4: $77
    ld h, e                                       ; $7ae5: $63
    inc c                                         ; $7ae6: $0c
    ld l, c                                       ; $7ae7: $69
    rst $10                                       ; $7ae8: $d7
    ei                                            ; $7ae9: $fb
    ld l, c                                       ; $7aea: $69
    cp h                                          ; $7aeb: $bc
    ld l, c                                       ; $7aec: $69
    ld b, l                                       ; $7aed: $45
    ld l, e                                       ; $7aee: $6b
    db $fc                                        ; $7aef: $fc
    and l                                         ; $7af0: $a5
    dec d                                         ; $7af1: $15
    ld hl, $1df0                                  ; $7af2: $21 $f0 $1d
    add c                                         ; $7af5: $81
    rst $38                                       ; $7af6: $ff
    ld b, a                                       ; $7af7: $47
    ld l, l                                       ; $7af8: $6d
    ld [c], a                                     ; $7af9: $e2
    ld c, [hl]                                    ; $7afa: $4e
    dec b                                         ; $7afb: $05
    inc h                                         ; $7afc: $24
    xor l                                         ; $7afd: $ad
    adc $e8                                       ; $7afe: $ce $e8
    db $fd                                        ; $7b00: $fd
    dec b                                         ; $7b01: $05
    ld e, h                                       ; $7b02: $5c
    ld d, a                                       ; $7b03: $57
    db $dd                                        ; $7b04: $dd
    ld c, b                                       ; $7b05: $48
    ld c, $be                                     ; $7b06: $0e $be
    or $1f                                        ; $7b08: $f6 $1f
    jr nc, jr_031_7b36                            ; $7b0a: $30 $2a

    ld b, l                                       ; $7b0c: $45
    cp e                                          ; $7b0d: $bb
    ld e, [hl]                                    ; $7b0e: $5e
    sub l                                         ; $7b0f: $95
    jp nz, $186f                                  ; $7b10: $c2 $6f $18

    rst $28                                       ; $7b13: $ef
    adc a                                         ; $7b14: $8f
    ld l, e                                       ; $7b15: $6b
    ld e, c                                       ; $7b16: $59
    and $a4                                       ; $7b17: $e6 $a4
    sbc b                                         ; $7b19: $98
    add d                                         ; $7b1a: $82
    add $31                                       ; $7b1b: $c6 $31
    sbc d                                         ; $7b1d: $9a
    rst $30                                       ; $7b1e: $f7
    ld sp, $3455                                  ; $7b1f: $31 $55 $34
    add e                                         ; $7b22: $83
    ld h, l                                       ; $7b23: $65
    dec d                                         ; $7b24: $15
    ld c, b                                       ; $7b25: $48
    adc l                                         ; $7b26: $8d
    dec hl                                        ; $7b27: $2b
    halt                                          ; $7b28: $76
    cp l                                          ; $7b29: $bd
    ld d, d                                       ; $7b2a: $52
    ld [hl], h                                    ; $7b2b: $74
    ld de, $ffbe                                  ; $7b2c: $11 $be $ff
    dec b                                         ; $7b2f: $05
    ld e, $e3                                     ; $7b30: $1e $e3
    ld e, d                                       ; $7b32: $5a
    sub [hl]                                      ; $7b33: $96
    add hl, sp                                    ; $7b34: $39

jr_031_7b35:
    add hl, hl                                    ; $7b35: $29

jr_031_7b36:
    ld a, [c]                                     ; $7b36: $f2
    ld d, $9d                                     ; $7b37: $16 $9d
    ld h, b                                       ; $7b39: $60
    ld d, $f3                                     ; $7b3a: $16 $f3
    db $db                                        ; $7b3c: $db
    dec b                                         ; $7b3d: $05
    call Call_031_6fcd                            ; $7b3e: $cd $cd $6f
    dec hl                                        ; $7b41: $2b
    jp c, $d629                                   ; $7b42: $da $29 $d6

    xor b                                         ; $7b45: $a8
    ret nc                                        ; $7b46: $d0

    inc bc                                        ; $7b47: $03
    ld a, [de]                                    ; $7b48: $1a
    rst $10                                       ; $7b49: $d7
    ld c, [hl]                                    ; $7b4a: $4e
    inc d                                         ; $7b4b: $14
    add e                                         ; $7b4c: $83
    and l                                         ; $7b4d: $a5
    xor b                                         ; $7b4e: $a8
    ld [hl], $71                                  ; $7b4f: $36 $71
    daa                                           ; $7b51: $27
    ret c                                         ; $7b52: $d8

    cp $03                                        ; $7b53: $fe $03
    ld b, [hl]                                    ; $7b55: $46
    and l                                         ; $7b56: $a5
    ld l, b                                       ; $7b57: $68
    db $fc                                        ; $7b58: $fc
    ld c, $5f                                     ; $7b59: $0e $5f
    inc sp                                        ; $7b5b: $33
    jr nz, jr_031_7b35                            ; $7b5c: $20 $d7

    xor [hl]                                      ; $7b5e: $ae
    ld d, a                                       ; $7b5f: $57
    and l                                         ; $7b60: $a5
    ldh a, [rNR31]                                ; $7b61: $f0 $1b
    add $fb                                       ; $7b63: $c6 $fb
    db $e3                                        ; $7b65: $e3
    ld e, d                                       ; $7b66: $5a
    sub [hl]                                      ; $7b67: $96
    add hl, sp                                    ; $7b68: $39
    add hl, hl                                    ; $7b69: $29
    add $31                                       ; $7b6a: $c6 $31
    sbc d                                         ; $7b6c: $9a
    rst $30                                       ; $7b6d: $f7
    ld sp, $3455                                  ; $7b6e: $31 $55 $34
    add e                                         ; $7b71: $83
    ld h, l                                       ; $7b72: $65
    dec d                                         ; $7b73: $15
    ld c, b                                       ; $7b74: $48
    adc l                                         ; $7b75: $8d
    dec hl                                        ; $7b76: $2b
    halt                                          ; $7b77: $76
    cp l                                          ; $7b78: $bd
    ld d, d                                       ; $7b79: $52
    ld [hl], h                                    ; $7b7a: $74
    ld de, $ffbe                                  ; $7b7b: $11 $be $ff
    dec b                                         ; $7b7e: $05
    ld e, $e3                                     ; $7b7f: $1e $e3
    ld e, d                                       ; $7b81: $5a
    sub [hl]                                      ; $7b82: $96
    add hl, sp                                    ; $7b83: $39
    add hl, hl                                    ; $7b84: $29
    ld h, [hl]                                    ; $7b85: $66
    xor e                                         ; $7b86: $ab
    jr nc, jr_031_7bdf                            ; $7b87: $30 $56

    xor $b7                                       ; $7b89: $ee $b7
    db $eb                                        ; $7b8b: $eb
    dec d                                         ; $7b8c: $15
    dec l                                         ; $7b8d: $2d
    db $f4                                        ; $7b8e: $f4
    ld h, e                                       ; $7b8f: $63
    ld e, h                                       ; $7b90: $5c
    ld de, $e310                                  ; $7b91: $11 $10 $e3
    adc d                                         ; $7b94: $8a
    ld a, b                                       ; $7b95: $78
    db $10                                        ; $7b96: $10
    ld a, c                                       ; $7b97: $79
    dec bc                                        ; $7b98: $0b
    sbc l                                         ; $7b99: $9d
    ld l, h                                       ; $7b9a: $6c
    ld a, [hl]                                    ; $7b9b: $7e
    add e                                         ; $7b9c: $83
    ld [$ad24], sp                                ; $7b9d: $08 $24 $ad
    adc $e8                                       ; $7ba0: $ce $e8
    db $fd                                        ; $7ba2: $fd
    ld e, l                                       ; $7ba3: $5d
    rrca                                          ; $7ba4: $0f
    inc a                                         ; $7ba5: $3c
    add $ef                                       ; $7ba6: $c6 $ef
    ld a, [$db17]                                 ; $7ba8: $fa $17 $db
    ld a, $a9                                     ; $7bab: $3e $a9
    jp nc, Jump_031_58a7                          ; $7bad: $d2 $a7 $58

    call c, $fb2d                                 ; $7bb0: $dc $2d $fb
    ld bc, $7569                                  ; $7bb3: $01 $69 $75
    ld d, [hl]                                    ; $7bb6: $56
    ld l, h                                       ; $7bb7: $6c
    dec b                                         ; $7bb8: $05
    add e                                         ; $7bb9: $83
    inc [hl]                                      ; $7bba: $34
    xor [hl]                                      ; $7bbb: $ae
    sub c                                         ; $7bbc: $91
    ld h, d                                       ; $7bbd: $62
    ld bc, $55d7                                  ; $7bbe: $01 $d7 $55
    scf                                           ; $7bc1: $37
    ld d, $d7                                     ; $7bc2: $16 $d7
    dec hl                                        ; $7bc4: $2b
    add [hl]                                      ; $7bc5: $86
    xor [hl]                                      ; $7bc6: $ae
    ret z                                         ; $7bc7: $c8

    rst $10                                       ; $7bc8: $d7
    jp hl                                         ; $7bc9: $e9


    ld b, c                                       ; $7bca: $41
    xor h                                         ; $7bcb: $ac
    jr z, jr_031_7c44                             ; $7bcc: $28 $76

    dec hl                                        ; $7bce: $2b
    ld [hl], l                                    ; $7bcf: $75

jr_031_7bd0:
    add hl, de                                    ; $7bd0: $19
    push bc                                       ; $7bd1: $c5
    ld a, [de]                                    ; $7bd2: $1a
    di                                            ; $7bd3: $f3
    and d                                         ; $7bd4: $a2
    ld c, a                                       ; $7bd5: $4f
    db $e3                                        ; $7bd6: $e3
    ld [hl], a                                    ; $7bd7: $77
    ld hl, sp-$26                                 ; $7bd8: $f8 $da
    ld a, a                                       ; $7bda: $7f
    ret nz                                        ; $7bdb: $c0

    xor b                                         ; $7bdc: $a8
    inc d                                         ; $7bdd: $14
    db $ed                                        ; $7bde: $ed

jr_031_7bdf:
    ld a, d                                       ; $7bdf: $7a
    ld d, l                                       ; $7be0: $55
    ld a, [bc]                                    ; $7be1: $0a
    cp a                                          ; $7be2: $bf
    ld h, c                                       ; $7be3: $61
    cp h                                          ; $7be4: $bc
    ccf                                           ; $7be5: $3f
    xor [hl]                                      ; $7be6: $ae
    ld h, l                                       ; $7be7: $65
    sbc c                                         ; $7be8: $99
    sub e                                         ; $7be9: $93
    ld [hl+], a                                   ; $7bea: $22
    add hl, sp                                    ; $7beb: $39
    adc [hl]                                      ; $7bec: $8e
    pop de                                        ; $7bed: $d1
    cp h                                          ; $7bee: $bc
    adc a                                         ; $7bef: $8f
    xor c                                         ; $7bf0: $a9
    and d                                         ; $7bf1: $a2
    add hl, de                                    ; $7bf2: $19
    inc l                                         ; $7bf3: $2c
    xor e                                         ; $7bf4: $ab
    ld b, b                                       ; $7bf5: $40
    ld l, d                                       ; $7bf6: $6a
    ld e, h                                       ; $7bf7: $5c
    or c                                          ; $7bf8: $b1
    db $eb                                        ; $7bf9: $eb
    sub l                                         ; $7bfa: $95
    and d                                         ; $7bfb: $a2
    adc e                                         ; $7bfc: $8b
    ldh a, [$fd]                                  ; $7bfd: $f0 $fd
    cpl                                           ; $7bff: $2f
    ldh a, [rNR23]                                ; $7c00: $f0 $18
    rst $10                                       ; $7c02: $d7
    or d                                          ; $7c03: $b2
    call z, $9149                                 ; $7c04: $cc $49 $91
    or a                                          ; $7c07: $b7
    ld b, a                                       ; $7c08: $47
    rst $18                                       ; $7c09: $df
    ld a, [bc]                                    ; $7c0a: $0a
    ld e, [hl]                                    ; $7c0b: $5e
    ld c, b                                       ; $7c0c: $48
    ld b, [hl]                                    ; $7c0d: $46
    ld hl, sp+$7e                                 ; $7c0e: $f8 $7e

jr_031_7c10:
    inc h                                         ; $7c10: $24
    ld b, a                                       ; $7c11: $47
    jr nc, @+$08                                  ; $7c12: $30 $06

    push af                                       ; $7c14: $f5
    ld h, e                                       ; $7c15: $63
    ld e, h                                       ; $7c16: $5c
    ld [hl], e                                    ; $7c17: $73
    ld d, l                                       ; $7c18: $55
    call $9273                                    ; $7c19: $cd $73 $92
    xor a                                         ; $7c1c: $af
    ret c                                         ; $7c1d: $d8

    sbc d                                         ; $7c1e: $9a
    rlca                                          ; $7c1f: $07
    ld e, $80                                     ; $7c20: $1e $80
    and h                                         ; $7c22: $a4
    ld [hl], c                                    ; $7c23: $71
    adc l                                         ; $7c24: $8d
    adc l                                         ; $7c25: $8d
    xor c                                         ; $7c26: $a9

Jump_031_7c27:
    rlca                                          ; $7c27: $07
    or l                                          ; $7c28: $b5
    adc c                                         ; $7c29: $89
    db $eb                                        ; $7c2a: $eb

Jump_031_7c2b:
    db $f4                                        ; $7c2b: $f4
    add b                                         ; $7c2c: $80
    ld d, [hl]                                    ; $7c2d: $56
    or h                                          ; $7c2e: $b4
    ld [$ae7d], a                                 ; $7c2f: $ea $7d $ae
    ld a, l                                       ; $7c32: $7d
    xor l                                         ; $7c33: $ad
    ld sp, $5a2f                                  ; $7c34: $31 $2f $5a
    ld d, e                                       ; $7c37: $53
    jr nz, jr_031_7bd0                            ; $7c38: $20 $96

    ld bc, $6b8d                                  ; $7c3a: $01 $8d $6b
    push bc                                       ; $7c3d: $c5
    or $1f                                        ; $7c3e: $f6 $1f
    jr nc, jr_031_7c6c                            ; $7c40: $30 $2a

    ld b, l                                       ; $7c42: $45
    cp e                                          ; $7c43: $bb

jr_031_7c44:
    ld e, [hl]                                    ; $7c44: $5e
    sub l                                         ; $7c45: $95
    jp nz, $186f                                  ; $7c46: $c2 $6f $18

    rst $28                                       ; $7c49: $ef
    adc a                                         ; $7c4a: $8f
    ld l, e                                       ; $7c4b: $6b
    ld e, c                                       ; $7c4c: $59
    and $a4                                       ; $7c4d: $e6 $a4
    jr jr_031_7c10                                ; $7c4f: $18 $bf

    push bc                                       ; $7c51: $c5
    di                                            ; $7c52: $f3
    jp z, $c630                                   ; $7c53: $ca $30 $c6

    ld sp, $f79a                                  ; $7c56: $31 $9a $f7
    ld sp, $3455                                  ; $7c59: $31 $55 $34
    add e                                         ; $7c5c: $83
    ld h, l                                       ; $7c5d: $65
    dec d                                         ; $7c5e: $15
    ld c, b                                       ; $7c5f: $48
    adc l                                         ; $7c60: $8d
    dec hl                                        ; $7c61: $2b
    halt                                          ; $7c62: $76
    cp l                                          ; $7c63: $bd
    ld d, d                                       ; $7c64: $52
    ld [hl], h                                    ; $7c65: $74
    ld de, $ffbe                                  ; $7c66: $11 $be $ff
    dec b                                         ; $7c69: $05
    ld e, $e3                                     ; $7c6a: $1e $e3

jr_031_7c6c:
    ld e, d                                       ; $7c6c: $5a
    sub [hl]                                      ; $7c6d: $96
    add hl, sp                                    ; $7c6e: $39
    add hl, hl                                    ; $7c6f: $29
    ld a, [c]                                     ; $7c70: $f2
    ld d, $9d                                     ; $7c71: $16 $9d
    ld h, b                                       ; $7c73: $60
    inc c                                         ; $7c74: $0c
    ld [$b8c7], a                                 ; $7c75: $ea $c7 $b8
    sub [hl]                                      ; $7c78: $96
    ld bc, $9224                                  ; $7c79: $01 $24 $92
    xor a                                         ; $7c7c: $af
    ld l, b                                       ; $7c7d: $68
    dec e                                         ; $7c7e: $1d
    ret nc                                        ; $7c7f: $d0

    rra                                           ; $7c80: $1f
    ld a, [$ec38]                                 ; $7c81: $fa $38 $ec
    inc d                                         ; $7c84: $14
    adc h                                         ; $7c85: $8c
    dec de                                        ; $7c86: $1b
    rst $18                                       ; $7c87: $df
    ld hl, $9823                                  ; $7c88: $21 $23 $98

Call_031_7c8b:
    ld h, d                                       ; $7c8b: $62
    ld c, l                                       ; $7c8c: $4d
    ld a, c                                       ; $7c8d: $79

Jump_031_7c8e:
    sbc a                                         ; $7c8e: $9f
    ld [hl], l                                    ; $7c8f: $75
    dec de                                        ; $7c90: $1b
    or a                                          ; $7c91: $b7
    rra                                           ; $7c92: $1f
    inc hl                                        ; $7c93: $23
    push bc                                       ; $7c94: $c5
    ld a, [de]                                    ; $7c95: $1a
    db $fd                                        ; $7c96: $fd
    cp b                                          ; $7c97: $b8
    add hl, hl                                    ; $7c98: $29
    ld d, [hl]                                    ; $7c99: $56
    inc d                                         ; $7c9a: $14
    ld l, e                                       ; $7c9b: $6b
    ld a, [bc]                                    ; $7c9c: $0a
    call nz, Call_000_13f0                        ; $7c9d: $c4 $f0 $13
    ld d, [hl]                                    ; $7ca0: $56
    adc d                                         ; $7ca1: $8a
    ld a, h                                       ; $7ca2: $7c
    ld h, a                                       ; $7ca3: $67
    call Call_031_51ea                            ; $7ca4: $cd $ea $51
    dec a                                         ; $7ca7: $3d
    inc l                                         ; $7ca8: $2c
    ld h, e                                       ; $7ca9: $63
    call c, $d2b0                                 ; $7caa: $dc $b0 $d2
    and a                                         ; $7cad: $a7
    pop bc                                        ; $7cae: $c1
    rst $10                                       ; $7caf: $d7
    cp $03                                        ; $7cb0: $fe $03
    ld b, [hl]                                    ; $7cb2: $46
    and l                                         ; $7cb3: $a5
    ld l, b                                       ; $7cb4: $68
    rst $10                                       ; $7cb5: $d7
    xor e                                         ; $7cb6: $ab
    ld d, d                                       ; $7cb7: $52
    ld hl, sp+$0d                                 ; $7cb8: $f8 $0d
    db $e3                                        ; $7cba: $e3
    db $fd                                        ; $7cbb: $fd
    ld [hl], c                                    ; $7cbc: $71
    dec l                                         ; $7cbd: $2d
    res 3, h                                      ; $7cbe: $cb $9c
    inc d                                         ; $7cc0: $14
    inc sp                                        ; $7cc1: $33
    ld e, b                                       ; $7cc2: $58
    ld d, [hl]                                    ; $7cc3: $56
    add c                                         ; $7cc4: $81
    call nc, Call_031_62b8                        ; $7cc5: $d4 $b8 $62
    rst $10                                       ; $7cc8: $d7
    dec hl                                        ; $7cc9: $2b
    ld b, l                                       ; $7cca: $45
    rla                                           ; $7ccb: $17

jr_031_7ccc:
    pop hl                                        ; $7ccc: $e1
    ei                                            ; $7ccd: $fb
    ld e, a                                       ; $7cce: $5f
    ldh [$31], a                                  ; $7ccf: $e0 $31
    xor [hl]                                      ; $7cd1: $ae
    ld h, l                                       ; $7cd2: $65
    sbc c                                         ; $7cd3: $99
    sub e                                         ; $7cd4: $93
    ld [hl+], a                                   ; $7cd5: $22
    cp c                                          ; $7cd6: $b9
    rlca                                          ; $7cd7: $07
    or e                                          ; $7cd8: $b3
    xor b                                         ; $7cd9: $a8
    ld b, a                                       ; $7cda: $47
    jr nc, jr_031_7ccc                            ; $7cdb: $30 $ef

    sbc d                                         ; $7cdd: $9a
    cp c                                          ; $7cde: $b9
    push de                                       ; $7cdf: $d5
    ld e, $da                                     ; $7ce0: $1e $da
    ld [bc], a                                    ; $7ce2: $02
    sbc l                                         ; $7ce3: $9d
    ld h, b                                       ; $7ce4: $60
    ld d, $f3                                     ; $7ce5: $16 $f3
    dec de                                        ; $7ce7: $1b
    ld b, h                                       ; $7ce8: $44
    ldh [$ea], a                                  ; $7ce9: $e0 $ea
    call z, $e8c5                                 ; $7ceb: $cc $c5 $e8
    and e                                         ; $7cee: $a3
    cpl                                           ; $7cef: $2f
    inc c                                         ; $7cf0: $0c
    rst $38                                       ; $7cf1: $ff
    ld b, h                                       ; $7cf2: $44

Call_031_7cf3:
    dec bc                                        ; $7cf3: $0b
    add e                                         ; $7cf4: $83
    db $f4                                        ; $7cf5: $f4
    ld [$18ec], a                                 ; $7cf6: $ea $ec $18
    xor a                                         ; $7cf9: $af
    ld c, c                                       ; $7cfa: $49
    and a                                         ; $7cfb: $a7
    rst $18                                       ; $7cfc: $df
    rst $20                                       ; $7cfd: $e7
    rst $08                                       ; $7cfe: $cf
    ld h, a                                       ; $7cff: $67
    adc l                                         ; $7d00: $8d
    rst $10                                       ; $7d01: $d7
    adc l                                         ; $7d02: $8d
    dec d                                         ; $7d03: $15
    adc l                                         ; $7d04: $8d
    add e                                         ; $7d05: $83
    jp z, $56b8                                   ; $7d06: $ca $b8 $56

    pop hl                                        ; $7d09: $e1
    rlca                                          ; $7d0a: $07
    and h                                         ; $7d0b: $a4
    ld a, h                                       ; $7d0c: $7c
    daa                                           ; $7d0d: $27
    jr z, jr_031_7d86                             ; $7d0e: $28 $76

    dec a                                         ; $7d10: $3d
    jr z, @+$11                                   ; $7d11: $28 $0f

    dec a                                         ; $7d13: $3d
    add $b5                                       ; $7d14: $c6 $b5
    adc [hl]                                      ; $7d16: $8e
    rrca                                          ; $7d17: $0f
    ld a, b                                       ; $7d18: $78
    ld sp, $0be7                                  ; $7d19: $31 $e7 $0b
    ld d, l                                       ; $7d1c: $55
    xor c                                         ; $7d1d: $a9
    and d                                         ; $7d1e: $a2
    ld c, a                                       ; $7d1f: $4f
    or e                                          ; $7d20: $b3
    ld [$bf9d], sp                                ; $7d21: $08 $9d $bf
    bit 1, d                                      ; $7d24: $cb $4a
    and l                                         ; $7d26: $a5
    ld c, b                                       ; $7d27: $48
    xor [hl]                                      ; $7d28: $ae
    ret c                                         ; $7d29: $d8

    ld a, $20                                     ; $7d2a: $3e $20
    push hl                                       ; $7d2c: $e5
    dec l                                         ; $7d2d: $2d
    sbc l                                         ; $7d2e: $9d
    ld h, b                                       ; $7d2f: $60
    ld d, $63                                     ; $7d30: $16 $63
    inc c                                         ; $7d32: $0c

jr_031_7d33:
    rst $38                                       ; $7d33: $ff
    dec b                                         ; $7d34: $05
    dec hl                                        ; $7d35: $2b
    ld a, [de]                                    ; $7d36: $1a
    ld sp, hl                                     ; $7d37: $f9
    dec hl                                        ; $7d38: $2b
    ld h, l                                       ; $7d39: $65
    and d                                         ; $7d3a: $a2
    add l                                         ; $7d3b: $85
    ld bc, $db73                                  ; $7d3c: $01 $73 $db
    or c                                          ; $7d3f: $b1
    ld a, [c]                                     ; $7d40: $f2
    ld a, [bc]                                    ; $7d41: $0a
    rst $18                                       ; $7d42: $df
    ld d, a                                       ; $7d43: $57
    ld l, l                                       ; $7d44: $6d
    ld [c], a                                     ; $7d45: $e2
    ld a, [hl-]                                   ; $7d46: $3a
    pop bc                                        ; $7d47: $c1
    inc l                                         ; $7d48: $2c
    sub [hl]                                      ; $7d49: $96
    ld b, d                                       ; $7d4a: $42
    db $fd                                        ; $7d4b: $fd
    ld d, l                                       ; $7d4c: $55
    scf                                           ; $7d4d: $37
    ld b, a                                       ; $7d4e: $47
    cp d                                          ; $7d4f: $ba
    adc l                                         ; $7d50: $8d
    ld l, e                                       ; $7d51: $6b
    ld a, [hl]                                    ; $7d52: $7e
    cp e                                          ; $7d53: $bb
    and b                                         ; $7d54: $a0
    cp c                                          ; $7d55: $b9
    cp c                                          ; $7d56: $b9
    ld a, h                                       ; $7d57: $7c
    push bc                                       ; $7d58: $c5
    or $1f                                        ; $7d59: $f6 $1f
    jr nc, jr_031_7d87                            ; $7d5b: $30 $2a

    ld b, l                                       ; $7d5d: $45
    cp e                                          ; $7d5e: $bb
    ld e, [hl]                                    ; $7d5f: $5e
    sub l                                         ; $7d60: $95
    jp nz, $186f                                  ; $7d61: $c2 $6f $18

    rst $28                                       ; $7d64: $ef
    adc a                                         ; $7d65: $8f
    ld l, e                                       ; $7d66: $6b
    ld e, c                                       ; $7d67: $59
    and $a4                                       ; $7d68: $e6 $a4
    jr jr_031_7d33                                ; $7d6a: $18 $c7

    ld l, b                                       ; $7d6c: $68
    sbc $c7                                       ; $7d6d: $de $c7
    ld d, h                                       ; $7d6f: $54
    pop de                                        ; $7d70: $d1
    inc c                                         ; $7d71: $0c
    sub [hl]                                      ; $7d72: $96
    ld d, l                                       ; $7d73: $55
    jr nz, jr_031_7dab                            ; $7d74: $20 $35

    xor [hl]                                      ; $7d76: $ae
    ret c                                         ; $7d77: $d8

    push af                                       ; $7d78: $f5
    ld c, d                                       ; $7d79: $4a
    pop de                                        ; $7d7a: $d1
    ld b, l                                       ; $7d7b: $45
    ld hl, sp-$02                                 ; $7d7c: $f8 $fe
    rla                                           ; $7d7e: $17
    ld a, b                                       ; $7d7f: $78

Call_031_7d80:
    adc h                                         ; $7d80: $8c
    ld l, e                                       ; $7d81: $6b
    ld e, c                                       ; $7d82: $59
    and $a4                                       ; $7d83: $e6 $a4
    xor b                                         ; $7d85: $a8

jr_031_7d86:
    ld c, l                                       ; $7d86: $4d

jr_031_7d87:
    ld l, h                                       ; $7d87: $6c
    ld bc, $609d                                  ; $7d88: $01 $9d $60
    ld d, $23                                     ; $7d8b: $16 $23
    ld a, a                                       ; $7d8d: $7f
    ret nz                                        ; $7d8e: $c0

    call c, $8a46                                 ; $7d8f: $dc $46 $8a
    ld e, l                                       ; $7d92: $5d
    add $65                                       ; $7d93: $c6 $65
    ret nc                                        ; $7d95: $d0

    ld a, c                                       ; $7d96: $79
    ld e, h                                       ; $7d97: $5c
    dec sp                                        ; $7d98: $3b
    pop af                                        ; $7d99: $f1
    ld [hl], l                                    ; $7d9a: $75
    ld d, l                                       ; $7d9b: $55
    ld l, d                                       ; $7d9c: $6a
    inc de                                        ; $7d9d: $13
    ld [hl], a                                    ; $7d9e: $77
    inc [hl]                                      ; $7d9f: $34
    ld a, [c]                                     ; $7da0: $f2
    cp d                                          ; $7da1: $ba
    ld b, l                                       ; $7da2: $45
    xor e                                         ; $7da3: $ab
    or e                                          ; $7da4: $b3
    ld [hl], d                                    ; $7da5: $72
    ld d, a                                       ; $7da6: $57
    inc [hl]                                      ; $7da7: $34
    adc [hl]                                      ; $7da8: $8e
    inc [hl]                                      ; $7da9: $34
    xor [hl]                                      ; $7daa: $ae

jr_031_7dab:
    sbc l                                         ; $7dab: $9d
    ld hl, sp-$46                                 ; $7dac: $f8 $ba
    ld a, [hl+]                                   ; $7dae: $2a
    ret                                           ; $7daf: $c9


    dec d                                         ; $7db0: $15
    dec l                                         ; $7db1: $2d
    xor e                                         ; $7db2: $ab
    ld b, b                                       ; $7db3: $40
    ld l, d                                       ; $7db4: $6a
    ld e, h                                       ; $7db5: $5c
    or c                                          ; $7db6: $b1
    db $eb                                        ; $7db7: $eb
    sub l                                         ; $7db8: $95
    and d                                         ; $7db9: $a2
    adc e                                         ; $7dba: $8b
    ldh a, [$fd]                                  ; $7dbb: $f0 $fd
    cpl                                           ; $7dbd: $2f
    ldh a, [rNR23]                                ; $7dbe: $f0 $18
    rst $10                                       ; $7dc0: $d7
    or d                                          ; $7dc1: $b2
    call z, $3149                                 ; $7dc2: $cc $49 $31
    dec de                                        ; $7dc5: $1b
    cp a                                          ; $7dc6: $bf
    ld e, l                                       ; $7dc7: $5d
    ret z                                         ; $7dc8: $c8

    ld l, a                                       ; $7dc9: $6f
    db $e3                                        ; $7dca: $e3
    rst $30                                       ; $7dcb: $f7
    sub a                                         ; $7dcc: $97
    ld c, [hl]                                    ; $7dcd: $4e
    dec sp                                        ; $7dce: $3b
    ld a, [$8cea]                                 ; $7dcf: $fa $ea $8c
    ld e, $c4                                     ; $7dd2: $1e $c4
    adc d                                         ; $7dd4: $8a
    ld h, d                                       ; $7dd5: $62
    or a                                          ; $7dd6: $b7
    ld d, d                                       ; $7dd7: $52
    sub a                                         ; $7dd8: $97
    ld d, c                                       ; $7dd9: $51
    inc c                                         ; $7dda: $0c
    cp [hl]                                       ; $7ddb: $be
    or $1f                                        ; $7ddc: $f6 $1f
    jr nc, @+$2c                                  ; $7dde: $30 $2a

    ld b, l                                       ; $7de0: $45
    cp e                                          ; $7de1: $bb
    ld e, [hl]                                    ; $7de2: $5e
    sub l                                         ; $7de3: $95
    jp nz, $186f                                  ; $7de4: $c2 $6f $18

    rst $28                                       ; $7de7: $ef
    adc a                                         ; $7de8: $8f
    ld l, e                                       ; $7de9: $6b
    ld e, c                                       ; $7dea: $59
    and $a4                                       ; $7deb: $e6 $a4
    ret z                                         ; $7ded: $c8

    ld e, e                                       ; $7dee: $5b
    sbc l                                         ; $7def: $9d
    ld h, b                                       ; $7df0: $60
    ld d, $33                                     ; $7df1: $16 $33
    ld [hl+], a                                   ; $7df3: $22
    or a                                          ; $7df4: $b7
    and $36                                       ; $7df5: $e6 $36
    xor [hl]                                      ; $7df7: $ae
    ld e, b                                       ; $7df8: $58
    di                                            ; $7df9: $f3
    and b                                         ; $7dfa: $a0
    adc b                                         ; $7dfb: $88
    ld h, d                                       ; $7dfc: $62
    call $df03                                    ; $7dfd: $cd $03 $df
    adc c                                         ; $7e00: $89
    rst $08                                       ; $7e01: $cf
    ld d, e                                       ; $7e02: $53
    ld [hl], d                                    ; $7e03: $72
    ld c, d                                       ; $7e04: $4a
    xor [hl]                                      ; $7e05: $ae
    ld l, b                                       ; $7e06: $68
    rst $38                                       ; $7e07: $ff
    ld bc, $32a3                                  ; $7e08: $01 $a3 $32
    xor e                                         ; $7e0b: $ab
    ld [hl], b                                    ; $7e0c: $70
    ld [hl], l                                    ; $7e0d: $75
    halt                                          ; $7e0e: $76
    cp e                                          ; $7e0f: $bb
    inc c                                         ; $7e10: $0c
    ld c, e                                       ; $7e11: $4b
    ld d, c                                       ; $7e12: $51
    adc h                                         ; $7e13: $8c
    ld l, e                                       ; $7e14: $6b
    rst $00                                       ; $7e15: $c7
    ld a, [de]                                    ; $7e16: $1a
    res 2, c                                      ; $7e17: $cb $91
    rst $10                                       ; $7e19: $d7
    ld h, $ee                                     ; $7e1a: $26 $ee
    jr z, jr_031_7e78                             ; $7e1c: $28 $5a

    ld b, $54                                     ; $7e1e: $06 $54
    adc d                                         ; $7e20: $8a
    halt                                          ; $7e21: $76
    cp l                                          ; $7e22: $bd
    ld l, [hl]                                    ; $7e23: $6e
    cp $85                                        ; $7e24: $fe $85
    ld e, h                                       ; $7e26: $5c
    rst $38                                       ; $7e27: $ff
    ld d, d                                       ; $7e28: $52
    ld l, l                                       ; $7e29: $6d
    ld [c], a                                     ; $7e2a: $e2
    ld c, [hl]                                    ; $7e2b: $4e
    ei                                            ; $7e2c: $fb
    jp c, $c07f                                   ; $7e2d: $da $7f $c0

    xor b                                         ; $7e30: $a8
    inc d                                         ; $7e31: $14
    db $ed                                        ; $7e32: $ed
    ld a, d                                       ; $7e33: $7a
    ld d, l                                       ; $7e34: $55
    ld a, [bc]                                    ; $7e35: $0a
    cp a                                          ; $7e36: $bf
    ld h, c                                       ; $7e37: $61
    cp h                                          ; $7e38: $bc
    ccf                                           ; $7e39: $3f
    xor [hl]                                      ; $7e3a: $ae
    ld h, l                                       ; $7e3b: $65
    sbc c                                         ; $7e3c: $99
    sub e                                         ; $7e3d: $93
    ld h, d                                       ; $7e3e: $62

Jump_031_7e3f:
    ld a, [bc]                                    ; $7e3f: $0a
    ld a, [de]                                    ; $7e40: $1a
    rst $00                                       ; $7e41: $c7
    ld l, b                                       ; $7e42: $68
    sbc $c7                                       ; $7e43: $de $c7
    ld d, h                                       ; $7e45: $54
    pop de                                        ; $7e46: $d1
    inc c                                         ; $7e47: $0c
    sub [hl]                                      ; $7e48: $96
    ld d, l                                       ; $7e49: $55
    jr nz, jr_031_7e81                            ; $7e4a: $20 $35

    xor [hl]                                      ; $7e4c: $ae
    ret c                                         ; $7e4d: $d8

    push af                                       ; $7e4e: $f5
    ld c, d                                       ; $7e4f: $4a
    pop de                                        ; $7e50: $d1
    ld b, l                                       ; $7e51: $45
    ld hl, sp-$02                                 ; $7e52: $f8 $fe
    rla                                           ; $7e54: $17
    ld a, b                                       ; $7e55: $78
    adc h                                         ; $7e56: $8c
    ld l, e                                       ; $7e57: $6b
    ld e, c                                       ; $7e58: $59
    and $a4                                       ; $7e59: $e6 $a4
    xor b                                         ; $7e5b: $a8
    ld c, l                                       ; $7e5c: $4d
    ld l, h                                       ; $7e5d: $6c
    ld bc, $609d                                  ; $7e5e: $01 $9d $60
    ld d, $f3                                     ; $7e61: $16 $f3
    dec de                                        ; $7e63: $1b
    ld b, h                                       ; $7e64: $44
    ldh [$ea], a                                  ; $7e65: $e0 $ea
    call z, $dc88                                 ; $7e67: $cc $88 $dc
    ld a, [de]                                    ; $7e6a: $1a
    ld sp, hl                                     ; $7e6b: $f9
    ld c, [hl]                                    ; $7e6c: $4e
    ld a, h                                       ; $7e6d: $7c
    sbc [hl]                                      ; $7e6e: $9e
    sub d                                         ; $7e6f: $92
    db $d3                                        ; $7e70: $d3
    ld b, h                                       ; $7e71: $44
    xor e                                         ; $7e72: $ab
    or e                                          ; $7e73: $b3
    dec de                                        ; $7e74: $1b
    add e                                         ; $7e75: $83
    inc h                                         ; $7e76: $24
    ld e, a                                       ; $7e77: $5f

jr_031_7e78:
    ld a, [bc]                                    ; $7e78: $0a
    push af                                       ; $7e79: $f5
    rst $00                                       ; $7e7a: $c7
    dec d                                         ; $7e7b: $15
    db $d3                                        ; $7e7c: $d3
    rst $38                                       ; $7e7d: $ff
    add b                                         ; $7e7e: $80
    or c                                          ; $7e7f: $b1
    ld a, [hl-]                                   ; $7e80: $3a

jr_031_7e81:
    dec sp                                        ; $7e81: $3b
    sub $58                                       ; $7e82: $d6 $58
    adc [hl]                                      ; $7e84: $8e
    inc a                                         ; $7e85: $3c
    rst $18                                       ; $7e86: $df
    ld [hl], c                                    ; $7e87: $71
    ld h, l                                       ; $7e88: $65
    rst $38                                       ; $7e89: $ff
    ld e, [hl]                                    ; $7e8a: $5e
    inc sp                                        ; $7e8b: $33
    sbc e                                         ; $7e8c: $9b
    pop bc                                        ; $7e8d: $c1
    dec b                                         ; $7e8e: $05
    ld a, a                                       ; $7e8f: $7f
    ld l, [hl]                                    ; $7e90: $6e
    ld c, l                                       ; $7e91: $4d
    di                                            ; $7e92: $f3
    sbc h                                         ; $7e93: $9c
    and [hl]                                      ; $7e94: $a6
    ld c, a                                       ; $7e95: $4f
    xor [hl]                                      ; $7e96: $ae
    dec d                                         ; $7e97: $15
    push bc                                       ; $7e98: $c5
    cp b                                          ; $7e99: $b8
    and b                                         ; $7e9a: $a0
    di                                            ; $7e9b: $f3
    ld l, [hl]                                    ; $7e9c: $6e
    call z, $abed                                 ; $7e9d: $cc $ed $ab
    jp nc, Jump_031_58a7                          ; $7ea0: $d2 $a7 $58

    ld h, l                                       ; $7ea3: $65
    jr jr_031_7eb1                                ; $7ea4: $18 $0b

    ld h, e                                       ; $7ea6: $63
    inc c                                         ; $7ea7: $0c
    and e                                         ; $7ea8: $a3
    ld e, $c1                                     ; $7ea9: $1e $c1
    ld [hl-], a                                   ; $7eab: $32
    ld [hl], b                                    ; $7eac: $70
    add a                                         ; $7ead: $87
    xor a                                         ; $7eae: $af
    db $fd                                        ; $7eaf: $fd
    rlca                                          ; $7eb0: $07

jr_031_7eb1:
    adc h                                         ; $7eb1: $8c
    ld c, d                                       ; $7eb2: $4a
    pop de                                        ; $7eb3: $d1
    xor [hl]                                      ; $7eb4: $ae
    ld d, a                                       ; $7eb5: $57
    and l                                         ; $7eb6: $a5
    ldh a, [rNR31]                                ; $7eb7: $f0 $1b
    add $fb                                       ; $7eb9: $c6 $fb
    db $e3                                        ; $7ebb: $e3
    ld e, d                                       ; $7ebc: $5a
    sub [hl]                                      ; $7ebd: $96
    add hl, sp                                    ; $7ebe: $39
    add hl, hl                                    ; $7ebf: $29
    and [hl]                                      ; $7ec0: $a6
    and b                                         ; $7ec1: $a0
    ld d, l                                       ; $7ec2: $55
    add [hl]                                      ; $7ec3: $86
    sbc a                                         ; $7ec4: $9f
    db $f4                                        ; $7ec5: $f4
    db $ed                                        ; $7ec6: $ed
    db $d3                                        ; $7ec7: $d3
    jr c, jr_031_7f10                             ; $7ec8: $38 $46

    di                                            ; $7eca: $f3
    ld a, $a6                                     ; $7ecb: $3e $a6
    adc d                                         ; $7ecd: $8a
    ld h, [hl]                                    ; $7ece: $66
    or b                                          ; $7ecf: $b0
    xor h                                         ; $7ed0: $ac
    ld [bc], a                                    ; $7ed1: $02
    xor c                                         ; $7ed2: $a9
    jp c, $5b43                                   ; $7ed3: $da $43 $5b

    sbc l                                         ; $7ed6: $9d
    ld h, b                                       ; $7ed7: $60
    ld d, $6b                                     ; $7ed8: $16 $6b
    ld h, b                                       ; $7eda: $60
    ld b, [hl]                                    ; $7edb: $46
    inc h                                         ; $7edc: $24
    db $fc                                        ; $7edd: $fc
    call c, Call_031_62b5                         ; $7ede: $dc $b5 $62
    and e                                         ; $7ee1: $a3
    rlca                                          ; $7ee2: $07
    ld a, $63                                     ; $7ee3: $3e $63
    ld [hl], h                                    ; $7ee5: $74
    db $ed                                        ; $7ee6: $ed
    call nz, Call_000_29e7                        ; $7ee7: $c4 $e7 $29
    add hl, sp                                    ; $7eea: $39
    ld c, l                                       ; $7eeb: $4d
    or h                                          ; $7eec: $b4
    ld [bc], a                                    ; $7eed: $02
    cp b                                          ; $7eee: $b8
    ld a, b                                       ; $7eef: $78
    ret nz                                        ; $7ef0: $c0

    ld [hl], $24                                  ; $7ef1: $36 $24
    ld sp, hl                                     ; $7ef3: $f9
    ldh [$2f], a                                  ; $7ef4: $e0 $2f
    push af                                       ; $7ef6: $f5
    cp $98                                        ; $7ef7: $fe $98
    ld d, a                                       ; $7ef9: $57

jr_031_7efa:
    ld h, e                                       ; $7efa: $63
    inc l                                         ; $7efb: $2c
    push de                                       ; $7efc: $d5
    ld h, $ee                                     ; $7efd: $26 $ee
    call nc, $c507                                ; $7eff: $d4 $07 $c5
    ld e, b                                       ; $7f02: $58
    or a                                          ; $7f03: $b7
    db $e4                                        ; $7f04: $e4
    ld [$5a46], sp                                ; $7f05: $08 $46 $5a
    inc a                                         ; $7f08: $3c
    ld h, b                                       ; $7f09: $60
    ld d, b                                       ; $7f0a: $50
    ccf                                           ; $7f0b: $3f
    sub [hl]                                      ; $7f0c: $96
    add c                                         ; $7f0d: $81
    dec sp                                        ; $7f0e: $3b
    ld a, h                                       ; $7f0f: $7c

jr_031_7f10:
    db $ed                                        ; $7f10: $ed
    ccf                                           ; $7f11: $3f
    ld h, b                                       ; $7f12: $60
    ld d, h                                       ; $7f13: $54
    adc d                                         ; $7f14: $8a
    halt                                          ; $7f15: $76
    cp l                                          ; $7f16: $bd
    ld a, [hl+]                                   ; $7f17: $2a
    add l                                         ; $7f18: $85
    rst $18                                       ; $7f19: $df
    jr nc, jr_031_7efa                            ; $7f1a: $30 $de

    rra                                           ; $7f1c: $1f

Jump_031_7f1d:
    rst $10                                       ; $7f1d: $d7
    or d                                          ; $7f1e: $b2
    call z, $b149                                 ; $7f1f: $cc $49 $b1
    sub b                                         ; $7f22: $90
    db $db                                        ; $7f23: $db
    jr c, jr_031_7f6c                             ; $7f24: $38 $46

    di                                            ; $7f26: $f3
    ld a, $a6                                     ; $7f27: $3e $a6
    adc d                                         ; $7f29: $8a
    ld h, [hl]                                    ; $7f2a: $66
    or b                                          ; $7f2b: $b0
    xor h                                         ; $7f2c: $ac
    ld [bc], a                                    ; $7f2d: $02
    xor c                                         ; $7f2e: $a9
    ld [hl], c                                    ; $7f2f: $71
    ei                                            ; $7f30: $fb
    or c                                          ; $7f31: $b1
    ld h, d                                       ; $7f32: $62
    xor e                                         ; $7f33: $ab
    adc h                                         ; $7f34: $8c
    ldh a, [$df]                                  ; $7f35: $f0 $df
    sub h                                         ; $7f37: $94
    or a                                          ; $7f38: $b7
    sbc l                                         ; $7f39: $9d
    ld h, b                                       ; $7f3a: $60
    ld d, $f3                                     ; $7f3b: $16 $f3
    dec de                                        ; $7f3d: $1b
    ld b, h                                       ; $7f3e: $44
    ldh [$ea], a                                  ; $7f3f: $e0 $ea
    inc l                                         ; $7f41: $2c
    ret nz                                        ; $7f42: $c0

    add hl, de                                    ; $7f43: $19
    ld h, h                                       ; $7f44: $64
    ld e, h                                       ; $7f45: $5c
    db $e3                                        ; $7f46: $e3
    or $63                                        ; $7f47: $f6 $63
    push bc                                       ; $7f49: $c5
    halt                                          ; $7f4a: $76
    db $f4                                        ; $7f4b: $f4
    di                                            ; $7f4c: $f3
    xor [hl]                                      ; $7f4d: $ae
    ld l, c                                       ; $7f4e: $69
    ld hl, sp+$49                                 ; $7f4f: $f8 $49
    adc $91                                       ; $7f51: $ce $91
    inc [hl]                                      ; $7f53: $34

jr_031_7f54:
    pop de                                        ; $7f54: $d1
    ld [$45cc], a                                 ; $7f55: $ea $cc $45

jr_031_7f58:
    cp $80                                        ; $7f58: $fe $80
    sub c                                         ; $7f5a: $91
    xor a                                         ; $7f5b: $af
    ret c                                         ; $7f5c: $d8

    ld a, [bc]                                    ; $7f5d: $0a
    ld e, [hl]                                    ; $7f5e: $5e
    rst $08                                       ; $7f5f: $cf
    cp a                                          ; $7f60: $bf
    sub [hl]                                      ; $7f61: $96
    ld a, [hl+]                                   ; $7f62: $2a
    adc d                                         ; $7f63: $8a
    cp b                                          ; $7f64: $b8
    xor c                                         ; $7f65: $a9
    ld [hl], $71                                  ; $7f66: $36 $71
    and a                                         ; $7f68: $a7
    ld a, l                                       ; $7f69: $7d
    db $ed                                        ; $7f6a: $ed
    ccf                                           ; $7f6b: $3f

jr_031_7f6c:
    ld h, b                                       ; $7f6c: $60
    ld d, h                                       ; $7f6d: $54
    adc d                                         ; $7f6e: $8a
    halt                                          ; $7f6f: $76
    cp l                                          ; $7f70: $bd
    ld a, [hl+]                                   ; $7f71: $2a
    add l                                         ; $7f72: $85
    rst $18                                       ; $7f73: $df
    jr nc, jr_031_7f54                            ; $7f74: $30 $de

    rra                                           ; $7f76: $1f
    rst $10                                       ; $7f77: $d7

Jump_031_7f78:
    or d                                          ; $7f78: $b2
    call z, $3149                                 ; $7f79: $cc $49 $31
    dec b                                         ; $7f7c: $05
    xor l                                         ; $7f7d: $ad
    adc $1a                                       ; $7f7e: $ce $1a
    cp a                                          ; $7f80: $bf
    add l                                         ; $7f81: $85
    ld a, $8d                                     ; $7f82: $3e $8d
    ld h, e                                       ; $7f84: $63
    inc [hl]                                      ; $7f85: $34
    rst $28                                       ; $7f86: $ef
    ld h, e                                       ; $7f87: $63
    xor d                                         ; $7f88: $aa
    xor b                                         ; $7f89: $a8
    ld [hl], $b1                                  ; $7f8a: $36 $b1
    dec b                                         ; $7f8c: $05
    rst $00                                       ; $7f8d: $c7
    ld a, b                                       ; $7f8e: $78
    ld c, l                                       ; $7f8f: $4d
    ld a, [hl-]                                   ; $7f90: $3a
    db $fd                                        ; $7f91: $fd
    ld a, $7f                                     ; $7f92: $3e $7f
    ld a, $9b                                     ; $7f94: $3e $9b
    xor e                                         ; $7f96: $ab
    ld l, d                                       ; $7f97: $6a
    sbc [hl]                                      ; $7f98: $9e
    db $d3                                        ; $7f99: $d3
    ld l, l                                       ; $7f9a: $6d
    push bc                                       ; $7f9b: $c5
    halt                                          ; $7f9c: $76
    dec a                                         ; $7f9d: $3d
    ld l, b                                       ; $7f9e: $68
    inc [hl]                                      ; $7f9f: $34
    xor [hl]                                      ; $7fa0: $ae
    ret c                                         ; $7fa1: $d8

    ret                                           ; $7fa2: $c9


    ld h, b                                       ; $7fa3: $60
    db $e4                                        ; $7fa4: $e4
    ld e, d                                       ; $7fa5: $5a
    rlca                                          ; $7fa6: $07
    jp Jump_000_3f78                              ; $7fa7: $c3 $78 $3f


    ld l, d                                       ; $7faa: $6a
    inc de                                        ; $7fab: $13
    rst $10                                       ; $7fac: $d7
    jp hl                                         ; $7fad: $e9


    ld b, c                                       ; $7fae: $41
    xor h                                         ; $7faf: $ac
    jr z, jr_031_7f58                             ; $7fb0: $28 $a6

    ld l, b                                       ; $7fb2: $68
    ld e, $7a                                     ; $7fb3: $1e $7a
    adc h                                         ; $7fb5: $8c
    dec hl                                        ; $7fb6: $2b
    halt                                          ; $7fb7: $76
    xor d                                         ; $7fb8: $aa
    cp h                                          ; $7fb9: $bc
    pop de                                        ; $7fba: $d1
    daa                                           ; $7fbb: $27
    ld [hl], e                                    ; $7fbc: $73
    cp [hl]                                       ; $7fbd: $be
    add $9c                                       ; $7fbe: $c6 $9c
    db $f4                                        ; $7fc0: $f4
    ld l, c                                       ; $7fc1: $69
    ld a, [$434b]                                 ; $7fc2: $fa $4b $43
    ld [hl], l                                    ; $7fc5: $75
    ld d, e                                       ; $7fc6: $53
    ld l, l                                       ; $7fc7: $6d
    ld [c], a                                     ; $7fc8: $e2
    adc [hl]                                      ; $7fc9: $8e
    add h                                         ; $7fca: $84
    ld a, [hl+]                                   ; $7fcb: $2a
    ld d, l                                       ; $7fcc: $55
    call nz, Call_031_6b9f                        ; $7fcd: $c4 $9f $6b
    and h                                         ; $7fd0: $a4
    and l                                         ; $7fd1: $a5
    dec c                                         ; $7fd2: $0d
    ld l, c                                       ; $7fd3: $69
    sub a                                         ; $7fd4: $97
    ld [hl], c                                    ; $7fd5: $71
    add hl, de                                    ; $7fd6: $19
    adc h                                         ; $7fd7: $8c
    ld l, e                                       ; $7fd8: $6b
    push bc                                       ; $7fd9: $c5
    sub $14                                       ; $7fda: $d6 $14
    adc b                                         ; $7fdc: $88
    and l                                         ; $7fdd: $a5
    ld d, h                                       ; $7fde: $54
    adc d                                         ; $7fdf: $8a
    sub [hl]                                      ; $7fe0: $96
    ld h, l                                       ; $7fe1: $65
    ld c, [hl]                                    ; $7fe2: $4e
    ld a, [de]                                    ; $7fe3: $1a
    rst $10                                       ; $7fe4: $d7
    add sp, $01                                   ; $7fe5: $e8 $01
    add hl, hl                                    ; $7fe7: $29
    ld a, [c]                                     ; $7fe8: $f2
    inc a                                         ; $7fe9: $3c
    ld e, a                                       ; $7fea: $5f
    or c                                          ; $7feb: $b1
    ld h, l                                       ; $7fec: $65
    sbc c                                         ; $7fed: $99
    sub e                                         ; $7fee: $93
    add $b5                                       ; $7fef: $c6 $b5
    ld h, e                                       ; $7ff1: $63
    call Call_031_66bd                            ; $7ff2: $cd $bd $66
    dec e                                         ; $7ff5: $1d
    rra                                           ; $7ff6: $1f
    sub c                                         ; $7ff7: $91
    cp h                                          ; $7ff8: $bc
    ld [hl], $b1                                  ; $7ff9: $36 $b1
    dec b                                         ; $7ffb: $05
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
