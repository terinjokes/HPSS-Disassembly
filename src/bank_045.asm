; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $045", ROMX[$4000], BANK[$45]

    ld b, l                                       ; $4000: $45
    ld [hl], l                                    ; $4001: $75
    jp hl                                         ; $4002: $e9


    ld e, h                                       ; $4003: $5c
    jr jr_045_4008                                ; $4004: $18 $02

    db $db                                        ; $4006: $db
    xor a                                         ; $4007: $af

jr_045_4008:
    ld c, e                                       ; $4008: $4b
    db $ed                                        ; $4009: $ed
    scf                                           ; $400a: $37
    inc hl                                        ; $400b: $23
    ret nc                                        ; $400c: $d0

    and a                                         ; $400d: $a7
    or $5f                                        ; $400e: $f6 $5f
    cp h                                          ; $4010: $bc
    rst $08                                       ; $4011: $cf
    rst $20                                       ; $4012: $e7
    sbc [hl]                                      ; $4013: $9e
    daa                                           ; $4014: $27
    db $fc                                        ; $4015: $fc
    jp nz, $0593                                  ; $4016: $c2 $93 $05

    ld d, $37                                     ; $4019: $16 $37
    ld [c], a                                     ; $401b: $e2
    ld b, e                                       ; $401c: $43
    xor a                                         ; $401d: $af
    ldh a, [$db]                                  ; $401e: $f0 $db
    cp $7e                                        ; $4020: $fe $7e
    dec b                                         ; $4022: $05
    cp [hl]                                       ; $4023: $be
    adc b                                         ; $4024: $88
    adc h                                         ; $4025: $8c
    call nz, $97ff                                ; $4026: $c4 $ff $97
    inc de                                        ; $4029: $13
    add [hl]                                      ; $402a: $86
    db $10                                        ; $402b: $10
    ld l, a                                       ; $402c: $6f
    inc b                                         ; $402d: $04
    ld d, c                                       ; $402e: $51
    sub a                                         ; $402f: $97
    ld [hl], a                                    ; $4030: $77
    ld a, $f4                                     ; $4031: $3e $f4
    ld a, [bc]                                    ; $4033: $0a
    cp a                                          ; $4034: $bf
    ld hl, $d3de                                  ; $4035: $21 $de $d3
    xor b                                         ; $4038: $a8
    sbc l                                         ; $4039: $9d
    ld b, b                                       ; $403a: $40
    rla                                           ; $403b: $17
    add hl, de                                    ; $403c: $19
    ret                                           ; $403d: $c9


    db $eb                                        ; $403e: $eb
    push af                                       ; $403f: $f5
    rst $30                                       ; $4040: $f7
    push de                                       ; $4041: $d5
    ld b, h                                       ; $4042: $44
    ld c, $c2                                     ; $4043: $0e $c2
    adc b                                         ; $4045: $88
    cp d                                          ; $4046: $ba
    jr c, jr_045_40c3                             ; $4047: $38 $7a

    ld e, c                                       ; $4049: $59
    sbc $f6                                       ; $404a: $de $f6
    dec de                                        ; $404c: $1b
    ld a, [$b515]                                 ; $404d: $fa $15 $b5
    rst $38                                       ; $4050: $ff
    ld a, [c]                                     ; $4051: $f2
    inc h                                         ; $4052: $24
    push hl                                       ; $4053: $e5
    adc c                                         ; $4054: $89
    rrca                                          ; $4055: $0f
    db $fd                                        ; $4056: $fd
    db $ed                                        ; $4057: $ed
    db $fc                                        ; $4058: $fc
    ret z                                         ; $4059: $c8

    ld h, d                                       ; $405a: $62
    and e                                         ; $405b: $a3
    rst $18                                       ; $405c: $df
    xor b                                         ; $405d: $a8
    ld e, [hl]                                    ; $405e: $5e
    rla                                           ; $405f: $17
    ld [de], a                                    ; $4060: $12
    ld [hl], $a9                                  ; $4061: $36 $a9
    db $fd                                        ; $4063: $fd
    ld h, [hl]                                    ; $4064: $66
    inc b                                         ; $4065: $04
    ld l, d                                       ; $4066: $6a
    and l                                         ; $4067: $a5
    ld d, e                                       ; $4068: $53
    ld a, [hl-]                                   ; $4069: $3a
    rla                                           ; $406a: $17
    rst $20                                       ; $406b: $e7
    ld b, a                                       ; $406c: $47
    ld hl, sp+$62                                 ; $406d: $f8 $62
    ld d, a                                       ; $406f: $57
    add c                                         ; $4070: $81
    ld sp, hl                                     ; $4071: $f9
    ld [hl], e                                    ; $4072: $73
    sub d                                         ; $4073: $92
    add d                                         ; $4074: $82
    jp nz, $6b53                                  ; $4075: $c2 $53 $6b

    dec b                                         ; $4078: $05
    xor l                                         ; $4079: $ad
    ld a, [hl+]                                   ; $407a: $2a
    sub h                                         ; $407b: $94
    ld [hl-], a                                   ; $407c: $32
    add hl, hl                                    ; $407d: $29
    cp a                                          ; $407e: $bf
    cpl                                           ; $407f: $2f
    add l                                         ; $4080: $85
    xor $fd                                       ; $4081: $ee $fd
    pop de                                        ; $4083: $d1
    cp a                                          ; $4084: $bf
    cp c                                          ; $4085: $b9
    rst $10                                       ; $4086: $d7
    and l                                         ; $4087: $a5
    or $9b                                        ; $4088: $f6 $9b
    ld de, $57e8                                  ; $408a: $11 $e8 $57
    db $dd                                        ; $408d: $dd
    or a                                          ; $408e: $b7
    jp nc, Jump_000_1a44                          ; $408f: $d2 $44 $1a

    ld [c], a                                     ; $4092: $e2
    pop hl                                        ; $4093: $e1
    rst $18                                       ; $4094: $df
    ld l, b                                       ; $4095: $68
    ld sp, $34ad                                  ; $4096: $31 $ad $34
    add hl, de                                    ; $4099: $19
    rst $28                                       ; $409a: $ef
    ld l, a                                       ; $409b: $6f
    ld [hl], a                                    ; $409c: $77
    dec c                                         ; $409d: $0d
    xor a                                         ; $409e: $af
    dec e                                         ; $409f: $1d
    db $db                                        ; $40a0: $db
    rla                                           ; $40a1: $17
    rst $28                                       ; $40a2: $ef
    ld l, c                                       ; $40a3: $69
    call nc, Call_045_789e                        ; $40a4: $d4 $9e $78
    inc hl                                        ; $40a7: $23
    ld e, b                                       ; $40a8: $58
    ld bc, $986d                                  ; $40a9: $01 $6d $98
    ld a, [hl]                                    ; $40ac: $7e
    or $68                                        ; $40ad: $f6 $68
    rst $30                                       ; $40af: $f7
    dec hl                                        ; $40b0: $2b
    xor l                                         ; $40b1: $ad
    sbc a                                         ; $40b2: $9f
    rla                                           ; $40b3: $17
    push hl                                       ; $40b4: $e5
    db $e3                                        ; $40b5: $e3
    ld b, [hl]                                    ; $40b6: $46
    ret c                                         ; $40b7: $d8

    ld h, $1b                                     ; $40b8: $26 $1b
    ld l, c                                       ; $40ba: $69
    push de                                       ; $40bb: $d5
    ld hl, sp-$2e                                 ; $40bc: $f8 $d2
    ld b, c                                       ; $40be: $41
    ld [hl], c                                    ; $40bf: $71
    call nc, $02b0                                ; $40c0: $d4 $b0 $02

jr_045_40c3:
    sbc l                                         ; $40c3: $9d
    adc $9e                                       ; $40c4: $ce $9e
    inc d                                         ; $40c6: $14
    ld a, d                                       ; $40c7: $7a
    xor c                                         ; $40c8: $a9
    ld e, [hl]                                    ; $40c9: $5e
    adc $5d                                       ; $40ca: $ce $5d
    call nc, $b8a5                                ; $40cc: $d4 $a5 $b8
    ld e, c                                       ; $40cf: $59
    ld a, [hl]                                    ; $40d0: $7e
    dec b                                         ; $40d1: $05
    ld l, l                                       ; $40d2: $6d

jr_045_40d3:
    adc e                                         ; $40d3: $8b
    ld a, e                                       ; $40d4: $7b
    ld h, c                                       ; $40d5: $61
    sub h                                         ; $40d6: $94
    xor e                                         ; $40d7: $ab
    ld l, [hl]                                    ; $40d8: $6e
    dec b                                         ; $40d9: $05
    cp [hl]                                       ; $40da: $be
    inc a                                         ; $40db: $3c
    halt                                          ; $40dc: $76
    rra                                           ; $40dd: $1f
    add l                                         ; $40de: $85
    cp l                                          ; $40df: $bd
    ccf                                           ; $40e0: $3f
    db $ed                                        ; $40e1: $ed
    cp a                                          ; $40e2: $bf
    halt                                          ; $40e3: $76
    cp a                                          ; $40e4: $bf
    ld [bc], a                                    ; $40e5: $02
    ld [hl], l                                    ; $40e6: $75
    ld b, [hl]                                    ; $40e7: $46
    ld d, d                                       ; $40e8: $52
    ld e, l                                       ; $40e9: $5d
    call c, Call_045_7908                         ; $40ea: $dc $08 $79
    db $10                                        ; $40ed: $10
    db $e4                                        ; $40ee: $e4
    ld b, l                                       ; $40ef: $45
    cp l                                          ; $40f0: $bd
    ld hl, $e3ea                                  ; $40f1: $21 $ea $e3
    ld b, e                                       ; $40f4: $43
    or c                                          ; $40f5: $b1
    rst $30                                       ; $40f6: $f7
    ld h, a                                       ; $40f7: $67
    ld a, c                                       ; $40f8: $79
    ld h, e                                       ; $40f9: $63
    db $f4                                        ; $40fa: $f4
    xor c                                         ; $40fb: $a9
    ld a, e                                       ; $40fc: $7b
    inc a                                         ; $40fd: $3c
    sub d                                         ; $40fe: $92
    ld h, l                                       ; $40ff: $65
    ret c                                         ; $4100: $d8

    and b                                         ; $4101: $a0
    rst $10                                       ; $4102: $d7
    inc hl                                        ; $4103: $23
    jr z, jr_045_410b                             ; $4104: $28 $05

    add [hl]                                      ; $4106: $86
    cp h                                          ; $4107: $bc
    cp b                                          ; $4108: $b8
    or c                                          ; $4109: $b1
    adc a                                         ; $410a: $8f

jr_045_410b:
    ld a, h                                       ; $410b: $7c
    ld [hl], c                                    ; $410c: $71
    ld d, e                                       ; $410d: $53
    ld a, b                                       ; $410e: $78
    ld [c], a                                     ; $410f: $e2
    ld b, e                                       ; $4110: $43
    cpl                                           ; $4111: $2f
    daa                                           ; $4112: $27
    inc a                                         ; $4113: $3c
    ld h, $d3                                     ; $4114: $26 $d3
    xor a                                         ; $4116: $af

Call_045_4117:
    dec e                                         ; $4117: $1d
    ld e, l                                       ; $4118: $5d

jr_045_4119:
    push af                                       ; $4119: $f5
    ld [hl], d                                    ; $411a: $72

Call_045_411b:
    pop af                                        ; $411b: $f1
    and c                                         ; $411c: $a1
    and a                                         ; $411d: $a7
    ld c, e                                       ; $411e: $4b
    db $ed                                        ; $411f: $ed
    scf                                           ; $4120: $37
    inc hl                                        ; $4121: $23
    ret nc                                        ; $4122: $d0

    and a                                         ; $4123: $a7
    cp l                                          ; $4124: $bd
    adc a                                         ; $4125: $8f
    daa                                           ; $4126: $27
    db $ec                                        ; $4127: $ec
    xor d                                         ; $4128: $aa
    sub c                                         ; $4129: $91
    ei                                            ; $412a: $fb
    jr z, jr_045_4119                             ; $412b: $28 $ec

    dec a                                         ; $412d: $3d
    pop af                                        ; $412e: $f1
    xor l                                         ; $412f: $ad
    xor [hl]                                      ; $4130: $ae
    ldh a, [$57]                                  ; $4131: $f0 $57
    db $10                                        ; $4133: $10
    sbc [hl]                                      ; $4134: $9e
    inc d                                         ; $4135: $14
    cp $2c                                        ; $4136: $fe $2c
    or b                                          ; $4138: $b0
    inc a                                         ; $4139: $3c
    add hl, bc                                    ; $413a: $09
    ld b, e                                       ; $413b: $43
    ld c, [hl]                                    ; $413c: $4e
    adc [hl]                                      ; $413d: $8e
    ld a, b                                       ; $413e: $78
    db $d3                                        ; $413f: $d3
    xor a                                         ; $4140: $af
    ld [hl], l                                    ; $4141: $75
    ld b, [hl]                                    ; $4142: $46
    and d                                         ; $4143: $a2
    add [hl]                                      ; $4144: $86
    inc [hl]                                      ; $4145: $34
    ld d, h                                       ; $4146: $54
    push de                                       ; $4147: $d5
    and h                                         ; $4148: $a4
    jr c, jr_045_40d3                             ; $4149: $38 $88

    add d                                         ; $414b: $82
    ld hl, $35fb                                  ; $414c: $21 $fb $35
    db $ed                                        ; $414f: $ed
    ld a, [de]                                    ; $4150: $1a
    ret nc                                        ; $4151: $d0

    and l                                         ; $4152: $a5
    or $9b                                        ; $4153: $f6 $9b
    ld de, $d3e8                                  ; $4155: $11 $e8 $d3
    ld a, [$f5e8]                                 ; $4158: $fa $e8 $f5
    rst $30                                       ; $415b: $f7
    push de                                       ; $415c: $d5
    add h                                         ; $415d: $84
    rst $00                                       ; $415e: $c7
    db $e4                                        ; $415f: $e4
    dec c                                         ; $4160: $0d
    ld sp, hl                                     ; $4161: $f9
    dec e                                         ; $4162: $1d
    dec [hl]                                      ; $4163: $35
    ld d, [hl]                                    ; $4164: $56
    dec e                                         ; $4165: $1d
    adc a                                         ; $4166: $8f
    db $dd                                        ; $4167: $dd
    db $f4                                        ; $4168: $f4
    dec hl                                        ; $4169: $2b
    db $ed                                        ; $416a: $ed
    ld e, a                                       ; $416b: $5f
    ld a, [bc]                                    ; $416c: $0a
    ld a, [hl+]                                   ; $416d: $2a
    cp l                                          ; $416e: $bd
    ld a, l                                       ; $416f: $7d
    call nc, $40a5                                ; $4170: $d4 $a5 $40
    ld hl, sp+$0c                                 ; $4173: $f8 $0c
    pop af                                        ; $4175: $f1
    and c                                         ; $4176: $a1
    cp a                                          ; $4177: $bf
    dec e                                         ; $4178: $1d
    sub l                                         ; $4179: $95
    pop de                                        ; $417a: $d1
    ld h, l                                       ; $417b: $65
    cp a                                          ; $417c: $bf
    and [hl]                                      ; $417d: $a6
    ld e, l                                       ; $417e: $5d
    inc bc                                        ; $417f: $03
    ld a, l                                       ; $4180: $7d
    jp c, $b687                                   ; $4181: $da $87 $b6

    ld l, a                                       ; $4184: $6f
    ld [hl+], a                                   ; $4185: $22
    inc hl                                        ; $4186: $23
    add hl, hl                                    ; $4187: $29
    ld c, $a2                                     ; $4188: $0e $a2
    ld h, b                                       ; $418a: $60
    add sp, $57                                   ; $418b: $e8 $57
    ld l, l                                       ; $418d: $6d
    ld d, d                                       ; $418e: $52
    xor a                                         ; $418f: $af
    rst $30                                       ; $4190: $f7
    ld d, d                                       ; $4191: $52
    ld l, $6c                                     ; $4192: $2e $6c
    ld b, e                                       ; $4194: $43
    ld a, [hl]                                    ; $4195: $7e
    ld a, [bc]                                    ; $4196: $0a
    adc l                                         ; $4197: $8d
    rrca                                          ; $4198: $0f
    ld b, l                                       ; $4199: $45
    pop hl                                        ; $419a: $e1
    ret                                           ; $419b: $c9


    ld [hl], d                                    ; $419c: $72
    cpl                                           ; $419d: $2f
    db $d3                                        ; $419e: $d3
    and a                                         ; $419f: $a7
    push af                                       ; $41a0: $f5
    pop de                                        ; $41a1: $d1
    db $eb                                        ; $41a2: $eb
    rst $28                                       ; $41a3: $ef
    xor e                                         ; $41a4: $ab
    adc c                                         ; $41a5: $89
    cp l                                          ; $41a6: $bd
    and [hl]                                      ; $41a7: $a6
    dec e                                         ; $41a8: $1d
    dec d                                         ; $41a9: $15
    dec c                                         ; $41aa: $0d
    or [hl]                                       ; $41ab: $b6
    daa                                           ; $41ac: $27
    or a                                          ; $41ad: $b7
    or e                                          ; $41ae: $b3
    ret c                                         ; $41af: $d8

    ld d, l                                       ; $41b0: $55
    sbc a                                         ; $41b1: $9f
    ld h, l                                       ; $41b2: $65
    ld c, d                                       ; $41b3: $4a
    add hl, sp                                    ; $41b4: $39
    db $fd                                        ; $41b5: $fd
    ld l, l                                       ; $41b6: $6d
    db $f4                                        ; $41b7: $f4
    dec hl                                        ; $41b8: $2b
    xor l                                         ; $41b9: $ad
    ld b, c                                       ; $41ba: $41
    and b                                         ; $41bb: $a0
    ld c, e                                       ; $41bc: $4b
    db $dd                                        ; $41bd: $dd
    ld h, c                                       ; $41be: $61
    add [hl]                                      ; $41bf: $86

jr_045_41c0:
    push de                                       ; $41c0: $d5
    ld c, h                                       ; $41c1: $4c
    db $db                                        ; $41c2: $db
    ld [de], a                                    ; $41c3: $12
    db $ed                                        ; $41c4: $ed
    ld l, h                                       ; $41c5: $6c
    and d                                         ; $41c6: $a2
    ld h, [hl]                                    ; $41c7: $66
    sbc c                                         ; $41c8: $99
    ld l, h                                       ; $41c9: $6c
    adc a                                         ; $41ca: $8f
    or c                                          ; $41cb: $b1
    or a                                          ; $41cc: $b7
    sbc e                                         ; $41cd: $9b
    cp b                                          ; $41ce: $b8
    sub c                                         ; $41cf: $91
    ld [bc], a                                    ; $41d0: $02
    pop hl                                        ; $41d1: $e1
    db $e3                                        ; $41d2: $e3
    jp hl                                         ; $41d3: $e9


    db $d3                                        ; $41d4: $d3
    pop af                                        ; $41d5: $f1
    sbc b                                         ; $41d6: $98
    ld a, h                                       ; $41d7: $7c
    ld a, [hl]                                    ; $41d8: $7e
    ld b, a                                       ; $41d9: $47
    adc l                                         ; $41da: $8d
    ld d, l                                       ; $41db: $55
    rst $00                                       ; $41dc: $c7
    ld h, e                                       ; $41dd: $63
    scf                                           ; $41de: $37
    cp d                                          ; $41df: $ba
    jr nz, jr_045_4214                            ; $41e0: $20 $32

    ld [de], a                                    ; $41e2: $12
    rst $28                                       ; $41e3: $ef
    ld e, e                                       ; $41e4: $5b
    add l                                         ; $41e5: $85
    dec a                                         ; $41e6: $3d
    or c                                          ; $41e7: $b1
    ld e, e                                       ; $41e8: $5b
    ret nz                                        ; $41e9: $c0

    jr nc, jr_045_41c0                            ; $41ea: $30 $d4

    ld e, h                                       ; $41ec: $5c
    ld bc, $5f1d                                  ; $41ed: $01 $1d $5f
    sbc [hl]                                      ; $41f0: $9e
    inc b                                         ; $41f1: $04
    add hl, sp                                    ; $41f2: $39
    ld a, c                                       ; $41f3: $79
    sub d                                         ; $41f4: $92
    add h                                         ; $41f5: $84
    pop af                                        ; $41f6: $f1
    pop af                                        ; $41f7: $f1
    db $f4                                        ; $41f8: $f4
    ld l, c                                       ; $41f9: $69
    ld [hl+], a                                   ; $41fa: $22
    dec bc                                        ; $41fb: $0b
    dec d                                         ; $41fc: $15
    sbc [hl]                                      ; $41fd: $9e
    sbc h                                         ; $41fe: $9c
    and h                                         ; $41ff: $a4
    add d                                         ; $4200: $82
    ld c, h                                       ; $4201: $4c
    ld d, $58                                     ; $4202: $16 $58
    jp c, $f3b2                                   ; $4204: $da $b2 $f3

    adc [hl]                                      ; $4207: $8e
    xor b                                         ; $4208: $a8

Jump_045_4209:
    or c                                          ; $4209: $b1
    jp hl                                         ; $420a: $e9


    db $d3                                        ; $420b: $d3
    xor d                                         ; $420c: $aa
    ld b, d                                       ; $420d: $42
    add hl, hl                                    ; $420e: $29
    inc de                                        ; $420f: $13
    rst $28                                       ; $4210: $ef
    db $ed                                        ; $4211: $ed
    rst $08                                       ; $4212: $cf
    ld h, a                                       ; $4213: $67

jr_045_4214:
    add e                                         ; $4214: $83
    ld a, c                                       ; $4215: $79
    ld a, [$b515]                                 ; $4216: $fa $15 $b5
    rst $18                                       ; $4219: $df
    adc h                                         ; $421a: $8c
    add b                                         ; $421b: $80
    ld l, $3c                                     ; $421c: $2e $3c
    ld h, $9f                                     ; $421e: $26 $9f
    rst $08                                       ; $4220: $cf
    ld b, $f3                                     ; $4221: $06 $f3
    call nc, $9d4c                                ; $4223: $d4 $4c $9d
    sub c                                         ; $4226: $91
    call nc, Call_000_3948                        ; $4227: $d4 $48 $39
    ld b, a                                       ; $422a: $47
    ld l, l                                       ; $422b: $6d
    ld d, d                                       ; $422c: $52
    ld hl, sp+$0d                                 ; $422d: $f8 $0d
    pop af                                        ; $422f: $f1
    and c                                         ; $4230: $a1
    rla                                           ; $4231: $17
    cpl                                           ; $4232: $2f
    dec e                                         ; $4233: $1d
    cp e                                          ; $4234: $bb
    cp [hl]                                       ; $4235: $be
    rst $28                                       ; $4236: $ef
    db $e3                                        ; $4237: $e3
    ld l, $65                                     ; $4238: $2e $65
    ld h, h                                       ; $423a: $64
    and d                                         ; $423b: $a2
    and b                                         ; $423c: $a0
    db $ed                                        ; $423d: $ed
    bit 1, c                                      ; $423e: $cb $49
    add c                                         ; $4240: $81
    ld h, $2f                                     ; $4241: $26 $2f
    ld a, h                                       ; $4243: $7c
    ld de, $965c                                  ; $4244: $11 $5c $96
    or a                                          ; $4247: $b7
    rst $10                                       ; $4248: $d7
    or h                                          ; $4249: $b4
    xor e                                         ; $424a: $ab
    cp c                                          ; $424b: $b9
    ld [bc], a                                    ; $424c: $02
    dec e                                         ; $424d: $1d
    ld e, a                                       ; $424e: $5f
    db $fc                                        ; $424f: $fc
    inc de                                        ; $4250: $13
    db $ed                                        ; $4251: $ed
    ld [$93c9], a                                 ; $4252: $ea $c9 $93
    db $e4                                        ; $4255: $e4
    sub l                                         ; $4256: $95
    rst $20                                       ; $4257: $e7
    add hl, bc                                    ; $4258: $09
    sub l                                         ; $4259: $95
    rrca                                          ; $425a: $0f
    add hl, sp                                    ; $425b: $39
    sbc e                                         ; $425c: $9b
    cp a                                          ; $425d: $bf
    ld h, [hl]                                    ; $425e: $66
    ld a, [hl-]                                   ; $425f: $3a
    ld e, $93                                     ; $4260: $1e $93
    rst $08                                       ; $4262: $cf
    and a                                         ; $4263: $a7
    dec l                                         ; $4264: $2d
    dec sp                                        ; $4265: $3b
    rst $28                                       ; $4266: $ef
    adc b                                         ; $4267: $88
    ld a, [de]                                    ; $4268: $1a
    dec de                                        ; $4269: $1b
    ld e, l                                       ; $426a: $5d
    ld a, [bc]                                    ; $426b: $0a
    ld [hl+], a                                   ; $426c: $22
    inc hl                                        ; $426d: $23
    ld hl, $5ce9                                  ; $426e: $21 $e9 $5c
    cp h                                          ; $4271: $bc
    ld l, a                                       ; $4272: $6f
    ld e, c                                       ; $4273: $59
    ld h, b                                       ; $4274: $60
    ld a, [bc]                                    ; $4275: $0a
    add [hl]                                      ; $4276: $86
    jr z, jr_045_42d5                             ; $4277: $28 $5c

    ld d, $2a                                     ; $4279: $16 $2a
    ld a, h                                       ; $427b: $7c
    ld sp, hl                                     ; $427c: $f9
    cp l                                          ; $427d: $bd
    ccf                                           ; $427e: $3f
    ld c, h                                       ; $427f: $4c
    ccf                                           ; $4280: $3f
    sbc [hl]                                      ; $4281: $9e
    ld e, a                                       ; $4282: $5f
    cp [hl]                                       ; $4283: $be
    and $0a                                       ; $4284: $e6 $0a
    xor l                                         ; $4286: $ad
    ld b, c                                       ; $4287: $41
    ld d, b                                       ; $4288: $50
    inc sp                                        ; $4289: $33
    ld [hl], l                                    ; $428a: $75
    ld b, [hl]                                    ; $428b: $46
    or d                                          ; $428c: $b2
    ld b, b                                       ; $428d: $40
    jp z, Jump_000_1393                           ; $428e: $ca $93 $13

    cp [hl]                                       ; $4291: $be
    inc l                                         ; $4292: $2c
    rst $30                                       ; $4293: $f7

jr_045_4294:
    ld c, $a5                                     ; $4294: $0e $a5
    jr nz, jr_045_42c7                            ; $4296: $20 $2f

    ld [$f90d], a                                 ; $4298: $ea $0d $f9
    db $10                                        ; $429b: $10
    ld b, a                                       ; $429c: $47
    adc b                                         ; $429d: $88
    inc de                                        ; $429e: $13

Jump_045_429f:
    ld [hl], l                                    ; $429f: $75
    sub c                                         ; $42a0: $91
    ld h, c                                       ; $42a1: $61
    add [hl]                                      ; $42a2: $86
    ld l, $b5                                     ; $42a3: $2e $b5
    rst $18                                       ; $42a5: $df
    adc h                                         ; $42a6: $8c
    ld b, b                                       ; $42a7: $40
    sbc a                                         ; $42a8: $9f
    ld c, $29                                     ; $42a9: $0e $29
    ld a, [bc]                                    ; $42ab: $0a
    ld a, a                                       ; $42ac: $7f
    ret z                                         ; $42ad: $c8

    reti                                          ; $42ae: $d9


    db $fc                                        ; $42af: $fc
    sub c                                         ; $42b0: $91
    sub c                                         ; $42b1: $91
    ldh a, [$65]                                  ; $42b2: $f0 $65
    and c                                         ; $42b4: $a1
    ld [hl], d                                    ; $42b5: $72
    ld d, [hl]                                    ; $42b6: $56
    cp a                                          ; $42b7: $bf
    ld l, $d5                                     ; $42b8: $2e $d5
    add a                                         ; $42ba: $87

jr_045_42bb:
    cpl                                           ; $42bb: $2f
    ld l, [hl]                                    ; $42bc: $6e
    and h                                         ; $42bd: $a4
    sbc h                                         ; $42be: $9c
    or [hl]                                       ; $42bf: $b6
    ld l, a                                       ; $42c0: $6f
    and d                                         ; $42c1: $a2
    ld l, $3c                                     ; $42c2: $2e $3c
    ld h, $6f                                     ; $42c4: $26 $6f
    ld c, b                                       ; $42c6: $48

jr_045_42c7:
    and c                                         ; $42c7: $a1
    ld a, [$c9e3]                                 ; $42c8: $fa $e3 $c9
    ld h, a                                       ; $42cb: $67
    add e                                         ; $42cc: $83
    ld a, c                                       ; $42cd: $79

Call_045_42ce:
    ld a, [$ad15]                                 ; $42ce: $fa $15 $ad
    adc d                                         ; $42d1: $8a
    dec de                                        ; $42d2: $1b
    ei                                            ; $42d3: $fb
    sbc h                                         ; $42d4: $9c

jr_045_42d5:
    ld b, h                                       ; $42d5: $44
    dec sp                                        ; $42d6: $3b
    dec de                                        ; $42d7: $1b
    ld e, l                                       ; $42d8: $5d
    ld c, b                                       ; $42d9: $48
    xor b                                         ; $42da: $a8
    jp hl                                         ; $42db: $e9


    db $d3                                        ; $42dc: $d3
    ld sp, $89aa                                  ; $42dd: $31 $aa $89
    di                                            ; $42e0: $f3
    inc hl                                        ; $42e1: $23
    push hl                                       ; $42e2: $e5
    xor l                                         ; $42e3: $ad
    cp $b8                                        ; $42e4: $fe $b8
    add hl, hl                                    ; $42e6: $29
    ld l, h                                       ; $42e7: $6c
    ld h, b                                       ; $42e8: $60
    cp $7c                                        ; $42e9: $fe $7c
    ld a, b                                       ; $42eb: $78
    or h                                          ; $42ec: $b4
    ld a, l                                       ; $42ed: $7d
    jr nc, jr_045_4294                            ; $42ee: $30 $a4

    adc c                                         ; $42f0: $89
    inc l                                         ; $42f1: $2c
    ld d, h                                       ; $42f2: $54
    ld a, b                                       ; $42f3: $78
    ld a, [c]                                     ; $42f4: $f2
    ld l, c                                       ; $42f5: $69
    set 1, [hl]                                   ; $42f6: $cb $ce
    dec sp                                        ; $42f8: $3b
    and d                                         ; $42f9: $a2
    add $a6                                       ; $42fa: $c6 $a6
    ld c, a                                       ; $42fc: $4f
    xor e                                         ; $42fd: $ab
    ld a, [bc]                                    ; $42fe: $0a
    and l                                         ; $42ff: $a5
    ld c, h                                       ; $4300: $4c
    ld a, b                                       ; $4301: $78
    ld c, h                                       ; $4302: $4c
    ld a, $9f                                     ; $4303: $3e $9f
    dec c                                         ; $4305: $0d
    and $e9                                       ; $4306: $e6 $e9
    ld d, a                                       ; $4308: $57
    ld [hl], l                                    ; $4309: $75
    ld h, c                                       ; $430a: $61
    xor c                                         ; $430b: $a9
    sub b                                         ; $430c: $90
    add d                                         ; $430d: $82
    adc e                                         ; $430e: $8b
    sbc e                                         ; $430f: $9b
    ld a, [bc]                                    ; $4310: $0a
    and c                                         ; $4311: $a1
    sub d                                         ; $4312: $92
    ld a, l                                       ; $4313: $7d
    ld a, d                                       ; $4314: $7a
    sbc e                                         ; $4315: $9b
    db $fc                                        ; $4316: $fc
    ld [bc], a                                    ; $4317: $02
    db $e3                                        ; $4318: $e3
    pop de                                        ; $4319: $d1
    and l                                         ; $431a: $a5
    or $9b                                        ; $431b: $f6 $9b
    ld de, $dd48                                  ; $431d: $11 $48 $dd
    ld h, c                                       ; $4320: $61
    add [hl]                                      ; $4321: $86
    push de                                       ; $4322: $d5
    ld c, h                                       ; $4323: $4c
    rst $00                                       ; $4324: $c7
    ld h, e                                       ; $4325: $63
    ld a, [c]                                     ; $4326: $f2
    cp c                                          ; $4327: $b9
    xor d                                         ; $4328: $aa
    add d                                         ; $4329: $82
    cp d                                          ; $432a: $ba
    rst $20                                       ; $432b: $e7
    xor a                                         ; $432c: $af
    jr nz, jr_045_42bb                            ; $432d: $20 $8c

    db $fc                                        ; $432f: $fc
    ld c, $d3                                     ; $4330: $0e $d3
    adc c                                         ; $4332: $89
    ld a, [de]                                    ; $4333: $1a
    xor e                                         ; $4334: $ab
    adc [hl]                                      ; $4335: $8e
    rst $00                                       ; $4336: $c7
    ld l, [hl]                                    ; $4337: $6e
    ld l, d                                       ; $4338: $6a
    xor [hl]                                      ; $4339: $ae
    dec e                                         ; $433a: $1d
    ld e, a                                       ; $433b: $5f
    ld a, [bc]                                    ; $433c: $0a
    ld l, $ee                                     ; $433d: $2e $ee
    sbc l                                         ; $433f: $9d
    cp e                                          ; $4340: $bb
    rst $20                                       ; $4341: $e7
    ret                                           ; $4342: $c9


    ld c, c                                       ; $4343: $49
    xor b                                         ; $4344: $a8
    ld b, h                                       ; $4345: $44
    adc a                                         ; $4346: $8f
    dec e                                         ; $4347: $1d
    adc l                                         ; $4348: $8d
    cp $4d                                        ; $4349: $fe $4d
    call $3c74                                    ; $434b: $cd $74 $3c
    jp c, Jump_045_583e                           ; $434e: $da $3e $58

    db $fd                                        ; $4351: $fd
    ld l, c                                       ; $4352: $69
    ld [hl+], a                                   ; $4353: $22
    dec bc                                        ; $4354: $0b
    dec d                                         ; $4355: $15
    sbc [hl]                                      ; $4356: $9e
    ld a, h                                       ; $4357: $7c
    jp c, $f3b2                                   ; $4358: $da $b2 $f3

    adc [hl]                                      ; $435b: $8e
    xor b                                         ; $435c: $a8
    or c                                          ; $435d: $b1
    jp hl                                         ; $435e: $e9


    db $d3                                        ; $435f: $d3
    xor d                                         ; $4360: $aa
    ld b, d                                       ; $4361: $42
    add hl, hl                                    ; $4362: $29
    inc de                                        ; $4363: $13
    ld e, $93                                     ; $4364: $1e $93
    rst $08                                       ; $4366: $cf
    ld b, a                                       ; $4367: $47
    adc l                                         ; $4368: $8d
    ld d, l                                       ; $4369: $55
    ld h, a                                       ; $436a: $67
    xor b                                         ; $436b: $a8
    cp c                                          ; $436c: $b9
    ld [bc], a                                    ; $436d: $02
    ld [hl], l                                    ; $436e: $75
    db $ed                                        ; $436f: $ed
    xor d                                         ; $4370: $aa
    adc a                                         ; $4371: $8f
    cp d                                          ; $4372: $ba
    cp h                                          ; $4373: $bc
    xor b                                         ; $4374: $a8
    scf                                           ; $4375: $37
    add sp, $42                                   ; $4376: $e8 $42
    adc [hl]                                      ; $4378: $8e
    add hl, de                                    ; $4379: $19
    ld l, $ea                                     ; $437a: $2e $ea
    adc l                                         ; $437c: $8d
    cpl                                           ; $437d: $2f
    ld a, $14                                     ; $437e: $3e $14
    add l                                         ; $4380: $85
    xor a                                         ; $4381: $af
    ld c, a                                       ; $4382: $4f
    rst $00                                       ; $4383: $c7
    sub h                                         ; $4384: $94
    ld sp, hl                                     ; $4385: $f9
    and d                                         ; $4386: $a2
    db $ed                                        ; $4387: $ed
    ld c, e                                       ; $4388: $4b
    ld h, c                                       ; $4389: $61
    xor d                                         ; $438a: $aa
    jr nz, jr_045_4409                            ; $438b: $20 $7c

    ld d, c                                       ; $438d: $51
    sub a                                         ; $438e: $97
    jp c, Jump_045_75a3                           ; $438f: $da $a3 $75

    rst $30                                       ; $4392: $f7
    add $25                                       ; $4393: $c6 $25
    ld l, [hl]                                    ; $4395: $6e
    or $06                                        ; $4396: $f6 $06
    pop af                                        ; $4398: $f1
    ld b, [hl]                                    ; $4399: $46
    ld e, [hl]                                    ; $439a: $5e
    ld h, $1b                                     ; $439b: $26 $1b
    pop af                                        ; $439d: $f1
    sbc [hl]                                      ; $439e: $9e
    ld b, [hl]                                    ; $439f: $46
    db $ed                                        ; $43a0: $ed
    inc b                                         ; $43a1: $04
    ld d, c                                       ; $43a2: $51
    rla                                           ; $43a3: $17
    ld e, a                                       ; $43a4: $5f
    ld [hl], $68                                  ; $43a5: $36 $68
    ld a, [hl]                                    ; $43a7: $7e
    inc b                                         ; $43a8: $04
    xor c                                         ; $43a9: $a9
    ld e, [hl]                                    ; $43aa: $5e
    di                                            ; $43ab: $f3
    ld e, a                                       ; $43ac: $5f
    cp h                                          ; $43ad: $bc
    ld e, a                                       ; $43ae: $5f
    ld c, l                                       ; $43af: $4d
    cp c                                          ; $43b0: $b9
    ld a, $6d                                     ; $43b1: $3e $6d
    ld c, e                                       ; $43b3: $4b
    ld a, h                                       ; $43b4: $7c
    jr z, jr_045_43c1                             ; $43b5: $28 $0a

    ld e, a                                       ; $43b7: $5f
    jp c, Jump_045_7d9c                           ; $43b8: $da $9c $7d

    sub e                                         ; $43bb: $93
    ld h, l                                       ; $43bc: $65
    ret c                                         ; $43bd: $d8

    cp $e2                                        ; $43be: $fe $e2
    ld b, [hl]                                    ; $43c0: $46

jr_045_43c1:
    ld a, [bc]                                    ; $43c1: $0a
    adc h                                         ; $43c2: $8c
    ld a, h                                       ; $43c3: $7c
    ld b, e                                       ; $43c4: $43
    ld [hl], $c2                                  ; $43c5: $36 $c2
    inc d                                         ; $43c7: $14
    pop af                                        ; $43c8: $f1
    sbc [hl]                                      ; $43c9: $9e
    ld b, [hl]                                    ; $43ca: $46
    db $ed                                        ; $43cb: $ed
    inc b                                         ; $43cc: $04
    ld a, l                                       ; $43cd: $7d
    inc a                                         ; $43ce: $3c
    ld b, a                                       ; $43cf: $47
    db $c2, $c8, $32                              ; $43d0: $c2 $c8 $32

    ld l, h                                       ; $43d3: $6c
    ld a, a                                       ; $43d4: $7f
    ld e, c                                       ; $43d5: $59
    add $f8                                       ; $43d6: $c6 $f8
    dec c                                         ; $43d8: $0d
    cp c                                          ; $43d9: $b9
    sbc l                                         ; $43da: $9d
    ld [hl], $67                                  ; $43db: $36 $67
    rst $18                                       ; $43dd: $df
    and h                                         ; $43de: $a4
    dec [hl]                                      ; $43df: $35
    inc bc                                        ; $43e0: $03
    ld a, c                                       ; $43e1: $79
    ld b, l                                       ; $43e2: $45
    sub a                                         ; $43e3: $97
    ld a, [bc]                                    ; $43e4: $0a
    jp nz, $dc86                                  ; $43e5: $c2 $86 $dc

    ld c, [hl]                                    ; $43e8: $4e
    sbc e                                         ; $43e9: $9b
    or e                                          ; $43ea: $b3
    ld l, a                                       ; $43eb: $6f
    jp nc, Jump_045_6bfe                          ; $43ec: $d2 $fe $6b

    and a                                         ; $43ef: $a7
    set 5, l                                      ; $43f0: $cb $ed
    jr nc, @-$61                                  ; $43f2: $30 $9d

    db $fc                                        ; $43f4: $fc
    sub $d3                                       ; $43f5: $d6 $d3
    ld a, [hl+]                                   ; $43f7: $2a
    adc e                                         ; $43f8: $8b
    sbc l                                         ; $43f9: $9d
    cp b                                          ; $43fa: $b8
    ld e, e                                       ; $43fb: $5b
    ld a, [hl]                                    ; $43fc: $7e
    ld b, e                                       ; $43fd: $43
    sub a                                         ; $43fe: $97
    ld a, [de]                                    ; $43ff: $1a
    ld h, c                                       ; $4400: $61
    sbc e                                         ; $4401: $9b
    ld h, l                                       ; $4402: $65
    sbc c                                         ; $4403: $99
    ld l, b                                       ; $4404: $68
    or $a2                                        ; $4405: $f6 $a2
    ret nc                                        ; $4407: $d0

    and a                                         ; $4408: $a7

jr_045_4409:
    db $ed                                        ; $4409: $ed
    dec e                                         ; $440a: $1d
    and [hl]                                      ; $440b: $a6
    sub e                                         ; $440c: $93
    ld a, [de]                                    ; $440d: $1a
    pop de                                        ; $440e: $d1
    xor [hl]                                      ; $440f: $ae
    sbc [hl]                                      ; $4410: $9e
    ld a, h                                       ; $4411: $7c
    ld l, d                                       ; $4412: $6a
    adc a                                         ; $4413: $8f
    sub $dd                                       ; $4414: $d6 $dd
    dec de                                        ; $4416: $1b
    sub a                                         ; $4417: $97
    jr c, jr_045_4459                             ; $4418: $38 $3f

    jp nz, $2f97                                  ; $441a: $c2 $97 $2f

    dec bc                                        ; $441d: $0b
    sbc b                                         ; $441e: $98
    cp a                                          ; $441f: $bf
    ld c, a                                       ; $4420: $4f
    ld e, l                                       ; $4421: $5d
    ld a, [hl-]                                   ; $4422: $3a
    rla                                           ; $4423: $17
    scf                                           ; $4424: $37
    ld d, d                                       ; $4425: $52
    add sp, -$1a                                  ; $4426: $e8 $e6
    or a                                          ; $4428: $b7
    dec a                                         ; $4429: $3d
    ld a, c                                       ; $442a: $79
    ld [hl], c                                    ; $442b: $71
    ld a, [hl]                                    ; $442c: $7e
    db $e4                                        ; $442d: $e4
    dec d                                         ; $442e: $15
    ld c, d                                       ; $442f: $4a
    add hl, de                                    ; $4430: $19
    ld e, l                                       ; $4431: $5d
    xor d                                         ; $4432: $aa
    adc a                                         ; $4433: $8f
    adc h                                         ; $4434: $8c
    ld h, h                                       ; $4435: $64
    and c                                         ; $4436: $a1
    ld [hl], e                                    ; $4437: $73
    ld a, c                                       ; $4438: $79
    ld [hl], c                                    ; $4439: $71
    ld h, e                                       ; $443a: $63
    sbc a                                         ; $443b: $9f
    sub e                                         ; $443c: $93
    ld [bc], a                                    ; $443d: $02
    dec sp                                        ; $443e: $3b
    ld [hl], e                                    ; $443f: $73
    sub a                                         ; $4440: $97
    adc l                                         ; $4441: $8d
    ld a, b                                       ; $4442: $78
    ld c, a                                       ; $4443: $4f
    and e                                         ; $4444: $a3
    halt                                          ; $4445: $76
    add d                                         ; $4446: $82
    ld a, [hl]                                    ; $4447: $7e
    dec b                                         ; $4448: $05
    sbc [hl]                                      ; $4449: $9e
    add [hl]                                      ; $444a: $86
    rst $08                                       ; $444b: $cf
    ld [hl-], a                                   ; $444c: $32
    call nz, $c11b                                ; $444d: $c4 $1b $c1
    ld a, [bc]                                    ; $4450: $0a
    xor l                                         ; $4451: $ad
    ld b, c                                       ; $4452: $41
    ld d, b                                       ; $4453: $50
    ld a, [bc]                                    ; $4454: $0a
    inc c                                         ; $4455: $0c
    dec hl                                        ; $4456: $2b
    ld [hl], l                                    ; $4457: $75
    sbc [hl]                                      ; $4458: $9e

jr_045_4459:
    ld d, $fc                                     ; $4459: $16 $fc
    ld a, [bc]                                    ; $445b: $0a
    dec e                                         ; $445c: $1d
    sbc l                                         ; $445d: $9d
    ld b, $81                                     ; $445e: $06 $81
    dec a                                         ; $4460: $3d
    pop af                                        ; $4461: $f1
    ld b, [hl]                                    ; $4462: $46
    or b                                          ; $4463: $b0
    ld [bc], a                                    ; $4464: $02
    ld [hl], l                                    ; $4465: $75
    ld l, a                                       ; $4466: $6f
    inc [hl]                                      ; $4467: $34
    db $ed                                        ; $4468: $ed
    ld a, $ea                                     ; $4469: $3e $ea
    jp nc, $ecda                                  ; $446b: $d2 $da $ec

    ld d, e                                       ; $446e: $53

jr_045_446f:
    or a                                          ; $446f: $b7
    ld [bc], a                                    ; $4470: $02
    sbc [hl]                                      ; $4471: $9e
    or e                                          ; $4472: $b3
    sub a                                         ; $4473: $97
    adc c                                         ; $4474: $89
    jp nz, Jump_045_7e8e                          ; $4475: $c2 $8e $7e

    sbc h                                         ; $4478: $9c
    dec sp                                        ; $4479: $3b
    sbc c                                         ; $447a: $99
    dec d                                         ; $447b: $15
    xor l                                         ; $447c: $ad
    adc l                                         ; $447d: $8d
    ld [hl], e                                    ; $447e: $73
    daa                                           ; $447f: $27
    sub e                                         ; $4480: $93
    ld b, d                                       ; $4481: $42
    adc $7e                                       ; $4482: $ce $7e
    ld [hl+], a                                   ; $4484: $22
    pop af                                        ; $4485: $f1
    add l                                         ; $4486: $85
    or c                                          ; $4487: $b1
    ld [bc], a                                    ; $4488: $02
    cp [hl]                                       ; $4489: $be
    dec bc                                        ; $448a: $0b
    dec d                                         ; $448b: $15
    ld a, $99                                     ; $448c: $3e $99
    dec d                                         ; $448e: $15
    ld l, l                                       ; $448f: $6d
    sub h                                         ; $4490: $94
    dec b                                         ; $4491: $05
    halt                                          ; $4492: $76
    db $10                                        ; $4493: $10
    ld [c], a                                     ; $4494: $e2
    xor a                                         ; $4495: $af
    xor l                                         ; $4496: $ad
    ld a, [bc]                                    ; $4497: $0a
    sbc a                                         ; $4498: $9f
    ld a, [de]                                    ; $4499: $1a
    sbc [hl]                                      ; $449a: $9e
    dec d                                         ; $449b: $15
    sbc [hl]                                      ; $449c: $9e
    inc hl                                        ; $449d: $23
    ld l, h                                       ; $449e: $6c
    ld d, e                                       ; $449f: $53
    db $fd                                        ; $44a0: $fd
    add [hl]                                      ; $44a1: $86
    ld a, [hl-]                                   ; $44a2: $3a
    ld [c], a                                     ; $44a3: $e2
    adc l                                         ; $44a4: $8d
    ld h, b                                       ; $44a5: $60
    dec b                                         ; $44a6: $05
    ld [hl], l                                    ; $44a7: $75
    ld l, l                                       ; $44a8: $6d
    jr jr_045_446f                                ; $44a9: $18 $c4

    dec de                                        ; $44ab: $1b
    pop bc                                        ; $44ac: $c1
    ld a, [bc]                                    ; $44ad: $0a
    xor l                                         ; $44ae: $ad
    add e                                         ; $44af: $83
    cp h                                          ; $44b0: $bc
    daa                                           ; $44b1: $27
    sbc $08                                       ; $44b2: $de $08
    ld d, [hl]                                    ; $44b4: $56
    ld l, l                                       ; $44b5: $6d
    adc [hl]                                      ; $44b6: $8e
    ld de, $057f                                  ; $44b7: $11 $7f $05
    ld l, l                                       ; $44ba: $6d
    ld c, $8f                                     ; $44bb: $0e $8f
    sbc e                                         ; $44bd: $9b
    push hl                                       ; $44be: $e5
    ld a, [hl]                                    ; $44bf: $7e
    dec b                                         ; $44c0: $05
    ld l, l                                       ; $44c1: $6d
    adc [hl]                                      ; $44c2: $8e
    ld de, $4f3f                                  ; $44c3: $11 $3f $4f
    sub d                                         ; $44c6: $92
    or b                                          ; $44c7: $b0
    ld a, [c]                                     ; $44c8: $f2
    dec hl                                        ; $44c9: $2b
    cp [hl]                                       ; $44ca: $be
    inc hl                                        ; $44cb: $23
    ld [hl-], a                                   ; $44cc: $32
    dec hl                                        ; $44cd: $2b
    ld [hl], l                                    ; $44ce: $75
    ld d, c                                       ; $44cf: $51
    ld h, $cb                                     ; $44d0: $26 $cb
    pop de                                        ; $44d2: $d1
    ld [$ed57], a                                 ; $44d3: $ea $57 $ed
    cp a                                          ; $44d6: $bf
    halt                                          ; $44d7: $76
    sbc a                                         ; $44d8: $9f
    daa                                           ; $44d9: $27
    ld e, a                                       ; $44da: $5f
    adc b                                         ; $44db: $88
    rst $08                                       ; $44dc: $cf
    cp a                                          ; $44dd: $bf
    ld [bc], a                                    ; $44de: $02
    ld l, l                                       ; $44df: $6d
    ld d, a                                       ; $44e0: $57
    dec d                                         ; $44e1: $15
    sub l                                         ; $44e2: $95
    db $e3                                        ; $44e3: $e3
    ld a, d                                       ; $44e4: $7a
    ld a, [c]                                     ; $44e5: $f2
    dec sp                                        ; $44e6: $3b
    inc h                                         ; $44e7: $24
    ld [hl], $64                                  ; $44e8: $36 $64
    ld d, [hl]                                    ; $44ea: $56
    ld l, l                                       ; $44eb: $6d
    jp c, Jump_000_2fbb                           ; $44ec: $da $bb $2f

    ld h, l                                       ; $44ef: $65
    ld d, [hl]                                    ; $44f0: $56
    xor l                                         ; $44f1: $ad
    ld e, a                                       ; $44f2: $5f

Jump_045_44f3:
    ld h, c                                       ; $44f3: $61
    ld a, e                                       ; $44f4: $7b
    ld [c], a                                     ; $44f5: $e2
    adc l                                         ; $44f6: $8d
    ld h, b                                       ; $44f7: $60
    dec b                                         ; $44f8: $05
    ld [hl], l                                    ; $44f9: $75
    ld c, [hl]                                    ; $44fa: $4e
    db $e4                                        ; $44fb: $e4
    push hl                                       ; $44fc: $e5
    ld b, l                                       ; $44fd: $45
    ld a, [hl]                                    ; $44fe: $7e
    dec b                                         ; $44ff: $05
    ld l, l                                       ; $4500: $6d
    sbc b                                         ; $4501: $98
    ld e, $59                                     ; $4502: $1e $59
    jr z, jr_045_4521                             ; $4504: $28 $1b

    cp h                                          ; $4506: $bc
    rst $08                                       ; $4507: $cf
    adc h                                         ; $4508: $8c
    dec d                                         ; $4509: $15
    db $ed                                        ; $450a: $ed
    ld b, c                                       ; $450b: $41
    jr jr_045_4552                                ; $450c: $18 $44

    ld [c], a                                     ; $450e: $e2
    xor a                                         ; $450f: $af
    ld [hl], l                                    ; $4510: $75
    ld c, a                                       ; $4511: $4f
    or e                                          ; $4512: $b3
    inc hl                                        ; $4513: $23
    sbc $af                                       ; $4514: $de $af
    dec e                                         ; $4516: $1d
    and e                                         ; $4517: $a3
    ld e, d                                       ; $4518: $5a
    ld d, b                                       ; $4519: $50
    ld hl, sp+$57                                 ; $451a: $f8 $57
    db $ed                                        ; $451c: $ed
    ld d, e                                       ; $451d: $53
    ld a, [hl]                                    ; $451e: $7e
    ld [c], a                                     ; $451f: $e2
    adc l                                         ; $4520: $8d

jr_045_4521:
    ld h, b                                       ; $4521: $60
    dec b                                         ; $4522: $05
    ld [hl], l                                    ; $4523: $75
    dec sp                                        ; $4524: $3b
    adc d                                         ; $4525: $8a
    sbc d                                         ; $4526: $9a
    ld h, l                                       ; $4527: $65
    cp c                                          ; $4528: $b9
    dec d                                         ; $4529: $15
    xor l                                         ; $452a: $ad
    adc d                                         ; $452b: $8a
    ret nc                                        ; $452c: $d0

    cp l                                          ; $452d: $bd
    cp a                                          ; $452e: $bf
    add d                                         ; $452f: $82
    ldh a, [$ac]                                  ; $4530: $f0 $ac
    sbc [hl]                                      ; $4532: $9e
    rst $28                                       ; $4533: $ef
    call c, Call_045_7e7d                         ; $4534: $dc $7d $7e
    add a                                         ; $4537: $87
    ld d, c                                       ; $4538: $51
    add $66                                       ; $4539: $c6 $66
    dec b                                         ; $453b: $05
    dec e                                         ; $453c: $1d
    sbc l                                         ; $453d: $9d
    di                                            ; $453e: $f3
    rst $18                                       ; $453f: $df
    ld d, a                                       ; $4540: $57
    or e                                          ; $4541: $b3
    ld [bc], a                                    ; $4542: $02
    dec e                                         ; $4543: $1d
    ld h, e                                       ; $4544: $63
    ld b, e                                       ; $4545: $43
    or e                                          ; $4546: $b3
    rst $30                                       ; $4547: $f7
    adc $0a                                       ; $4548: $ce $0a
    ld [hl], l                                    ; $454a: $75
    xor c                                         ; $454b: $a9
    ldh a, [rLY]                                  ; $454c: $f0 $44
    ld b, c                                       ; $454e: $41
    ccf                                           ; $454f: $3f
    dec de                                        ; $4550: $1b
    dec hl                                        ; $4551: $2b

jr_045_4552:
    db $ed                                        ; $4552: $ed
    cp a                                          ; $4553: $bf
    halt                                          ; $4554: $76
    sbc a                                         ; $4555: $9f
    ld [$b94b], a                                 ; $4556: $ea $4b $b9
    ld [$ad57], a                                 ; $4559: $ea $57 $ad
    adc d                                         ; $455c: $8a
    ret nc                                        ; $455d: $d0

    cp l                                          ; $455e: $bd
    cp a                                          ; $455f: $bf
    add d                                         ; $4560: $82
    ldh a, [$a4]                                  ; $4561: $f0 $a4
    ld a, d                                       ; $4563: $7a
    db $ed                                        ; $4564: $ed
    call c, $1dac                                 ; $4565: $dc $ac $1d
    and c                                         ; $4568: $a1
    ld e, h                                       ; $4569: $5c
    ld h, c                                       ; $456a: $61
    ld [$53f1], sp                                ; $456b: $08 $f1 $53
    ld a, l                                       ; $456e: $7d
    add hl, hl                                    ; $456f: $29
    ld d, a                                       ; $4570: $57
    db $fd                                        ; $4571: $fd
    ld a, [bc]                                    ; $4572: $0a
    ld l, l                                       ; $4573: $6d
    sub b                                         ; $4574: $90
    db $e3                                        ; $4575: $e3
    sbc [hl]                                      ; $4576: $9e
    ld a, b                                       ; $4577: $78
    inc hl                                        ; $4578: $23
    ret z                                         ; $4579: $c8

    ld d, h                                       ; $457a: $54
    ld a, d                                       ; $457b: $7a
    jp $b3de                                      ; $457c: $c3 $de $b3


    ld [bc], a                                    ; $457f: $02
    xor l                                         ; $4580: $ad
    adc l                                         ; $4581: $8d
    sub l                                         ; $4582: $95
    adc a                                         ; $4583: $8f
    cp d                                          ; $4584: $ba
    inc d                                         ; $4585: $14
    and [hl]                                      ; $4586: $a6
    ld [$0566], a                                 ; $4587: $ea $66 $05
    xor l                                         ; $458a: $ad
    ld [hl-], a                                   ; $458b: $32
    cp a                                          ; $458c: $bf
    ld [hl], e                                    ; $458d: $73
    inc de                                        ; $458e: $13
    adc l                                         ; $458f: $8d
    cp [hl]                                       ; $4590: $be
    dec e                                         ; $4591: $1d
    adc a                                         ; $4592: $8f
    ld h, c                                       ; $4593: $61
    dec b                                         ; $4594: $05
    db $ed                                        ; $4595: $ed
    dec e                                         ; $4596: $1d
    adc c                                         ; $4597: $89
    cp l                                          ; $4598: $bd
    daa                                           ; $4599: $27
    add l                                         ; $459a: $85
    xor [hl]                                      ; $459b: $ae
    ld l, l                                       ; $459c: $6d
    pop de                                        ; $459d: $d1
    ld d, a                                       ; $459e: $57
    xor a                                         ; $459f: $af
    ret                                           ; $45a0: $c9


    and h                                         ; $45a1: $a4
    ld l, [hl]                                    ; $45a2: $6e
    ld b, a                                       ; $45a3: $47
    dec hl                                        ; $45a4: $2b
    ld l, l                                       ; $45a5: $6d
    pop de                                        ; $45a6: $d1
    ld d, a                                       ; $45a7: $57
    xor a                                         ; $45a8: $af
    ret                                           ; $45a9: $c9


    and h                                         ; $45aa: $a4
    ld l, [hl]                                    ; $45ab: $6e
    ei                                            ; $45ac: $fb
    dec hl                                        ; $45ad: $2b
    cp [hl]                                       ; $45ae: $be
    set 3, e                                      ; $45af: $cb $db
    ld de, $046f                                  ; $45b1: $11 $6f $04
    xor c                                         ; $45b4: $a9
    db $db                                        ; $45b5: $db
    cp $0a                                        ; $45b6: $fe $0a
    dec e                                         ; $45b8: $1d
    sbc l                                         ; $45b9: $9d
    ld [hl], a                                    ; $45ba: $77
    ld c, h                                       ; $45bb: $4c
    xor [hl]                                      ; $45bc: $ae
    add d                                         ; $45bd: $82
    ldh a, [$84]                                  ; $45be: $f0 $84
    add a                                         ; $45c0: $87
    ld a, a                                       ; $45c1: $7f
    ld h, e                                       ; $45c2: $63
    dec b                                         ; $45c3: $05
    ld l, l                                       ; $45c4: $6d
    ld d, a                                       ; $45c5: $57
    dec d                                         ; $45c6: $15
    sub l                                         ; $45c7: $95
    db $e3                                        ; $45c8: $e3
    ld a, d                                       ; $45c9: $7a
    ld a, [c]                                     ; $45ca: $f2
    ld a, e                                       ; $45cb: $7b
    ld a, a                                       ; $45cc: $7f
    xor d                                         ; $45cd: $aa
    rst $10                                       ; $45ce: $d7

jr_045_45cf:
    xor $57                                       ; $45cf: $ee $57
    ld l, l                                       ; $45d1: $6d
    ld d, a                                       ; $45d2: $57
    dec d                                         ; $45d3: $15
    sub l                                         ; $45d4: $95
    db $e3                                        ; $45d5: $e3
    ld a, d                                       ; $45d6: $7a
    ld d, [hl]                                    ; $45d7: $56
    cp [hl]                                       ; $45d8: $be
    res 2, h                                      ; $45d9: $cb $94
    ld a, [c]                                     ; $45db: $f2
    inc c                                         ; $45dc: $0c
    ld [hl+], a                                   ; $45dd: $22
    pop af                                        ; $45de: $f1
    ld d, a                                       ; $45df: $57
    ld [hl], l                                    ; $45e0: $75
    add a                                         ; $45e1: $87
    ld hl, $8fc4                                  ; $45e2: $21 $c4 $8f
    cp d                                          ; $45e5: $ba
    jp nz, $9946                                  ; $45e6: $c2 $46 $99

    adc a                                         ; $45e9: $8f
    db $fc                                        ; $45ea: $fc
    dec d                                         ; $45eb: $15
    ld l, l                                       ; $45ec: $6d
    adc [hl]                                      ; $45ed: $8e
    ld de, $583f                                  ; $45ee: $11 $3f $58
    adc $fd                                       ; $45f1: $ce $fd
    ld a, [bc]                                    ; $45f3: $0a
    ld l, l                                       ; $45f4: $6d
    adc e                                         ; $45f5: $8b
    ld a, e                                       ; $45f6: $7b
    ld h, c                                       ; $45f7: $61
    sub h                                         ; $45f8: $94
    xor e                                         ; $45f9: $ab
    ld h, $d5                                     ; $45fa: $26 $d5
    sub a                                         ; $45fc: $97
    ld [hl], d                                    ; $45fd: $72
    push de                                       ; $45fe: $d5
    xor h                                         ; $45ff: $ac
    db $ed                                        ; $4600: $ed
    ld hl, $d3de                                  ; $4601: $21 $de $d3
    xor b                                         ; $4604: $a8
    sbc l                                         ; $4605: $9d

jr_045_4606:
    jr nz, jr_045_4606                            ; $4606: $20 $fe

    rla                                           ; $4608: $17
    sbc c                                         ; $4609: $99
    jr c, jr_045_45cf                             ; $460a: $38 $c3

    di                                            ; $460c: $f3
    add h                                         ; $460d: $84
    jp z, Jump_000_1967                           ; $460e: $ca $67 $19

    ld [c], a                                     ; $4611: $e2
    adc l                                         ; $4612: $8d
    and b                                         ; $4613: $a0
    and $0a                                       ; $4614: $e6 $0a
    db $ed                                        ; $4616: $ed
    ld hl, $d3de                                  ; $4617: $21 $de $d3
    xor b                                         ; $461a: $a8
    sbc l                                         ; $461b: $9d
    jr nz, jr_045_469a                            ; $461c: $20 $7c

    pop af                                        ; $461e: $f1
    cp a                                          ; $461f: $bf
    ret z                                         ; $4620: $c8

    call nz, $f850                                ; $4621: $c4 $50 $f8
    sbc b                                         ; $4624: $98
    ld e, $4f                                     ; $4625: $1e $4f
    xor b                                         ; $4627: $a8
    ld a, h                                       ; $4628: $7c
    sub [hl]                                      ; $4629: $96
    ld [hl], e                                    ; $462a: $73
    ld l, [hl]                                    ; $462b: $6e
    or $c7                                        ; $462c: $f6 $c7
    add a                                         ; $462e: $87
    cp [hl]                                       ; $462f: $be
    ldh a, [$71]                                  ; $4630: $f0 $71
    dec a                                         ; $4632: $3d
    ld d, c                                       ; $4633: $51
    sub a                                         ; $4634: $97
    cp d                                          ; $4635: $ba
    dec e                                         ; $4636: $1d
    push af                                       ; $4637: $f5
    dec hl                                        ; $4638: $2b
    dec e                                         ; $4639: $1d
    ld d, d                                       ; $463a: $52
    inc d                                         ; $463b: $14
    cp $90                                        ; $463c: $fe $90
    or e                                          ; $463e: $b3
    ld sp, hl                                     ; $463f: $f9
    or e                                          ; $4640: $b3
    ld de, $69ef                                  ; $4641: $11 $ef $69
    call nc, Call_000_104e                        ; $4644: $d4 $4e $10
    add hl, de                                    ; $4647: $19
    add hl, bc                                    ; $4648: $09
    ld e, a                                       ; $4649: $5f
    db $fc                                        ; $464a: $fc
    cpl                                           ; $464b: $2f
    ld [hl-], a                                   ; $464c: $32
    ld sp, hl                                     ; $464d: $f9
    and e                                         ; $464e: $a3
    db $fc                                        ; $464f: $fc
    inc a                                         ; $4650: $3c
    ld a, l                                       ; $4651: $7d
    ld l, d                                       ; $4652: $6a
    rst $38                                       ; $4653: $ff
    ld h, l                                       ; $4654: $65
    ld c, a                                       ; $4655: $4f
    ld a, [bc]                                    ; $4656: $0a
    ld c, a                                       ; $4657: $4f
    push af                                       ; $4658: $f5
    ld l, [hl]                                    ; $4659: $6e
    ld d, d                                       ; $465a: $52
    add [hl]                                      ; $465b: $86
    ld a, c                                       ; $465c: $79
    jp z, $f62c                                   ; $465d: $ca $2c $f6

    cp d                                          ; $4660: $ba
    ldh a, [rLYC]                                 ; $4661: $f0 $45
    dec sp                                        ; $4663: $3b
    ei                                            ; $4664: $fb
    db $ec                                        ; $4665: $ec
    rrca                                          ; $4666: $0f
    and e                                         ; $4667: $a3
    ldh a, [rTAC]                                 ; $4668: $f0 $07
    pop hl                                        ; $466a: $e1
    ld c, e                                       ; $466b: $4b
    add c                                         ; $466c: $81
    ldh a, [rLYC]                                 ; $466d: $f0 $45

Jump_045_466f:
    ld b, c                                       ; $466f: $41
    ccf                                           ; $4670: $3f
    dec de                                        ; $4671: $1b
    ld a, l                                       ; $4672: $7d
    ld l, d                                       ; $4673: $6a
    rst $38                                       ; $4674: $ff
    ld h, l                                       ; $4675: $65
    ld a, a                                       ; $4676: $7f
    ld a, [bc]                                    ; $4677: $0a
    and h                                         ; $4678: $a4
    inc a                                         ; $4679: $3c
    pop af                                        ; $467a: $f1
    ld b, [hl]                                    ; $467b: $46
    db $10                                        ; $467c: $10
    ld [hl], l                                    ; $467d: $75
    ld a, c                                       ; $467e: $79
    ld [de], a                                    ; $467f: $12
    sub [hl]                                      ; $4680: $96
    dec b                                         ; $4681: $05
    ld d, [hl]                                    ; $4682: $56
    ld h, $3e                                     ; $4683: $26 $3e
    db $f4                                        ; $4685: $f4
    or a                                          ; $4686: $b7
    di                                            ; $4687: $f3
    inc hl                                        ; $4688: $23
    ld [hl], l                                    ; $4689: $75
    dec sp                                        ; $468a: $3b
    ld [$ed57], a                                 ; $468b: $ea $57 $ed
    ld hl, $d3de                                  ; $468e: $21 $de $d3
    xor b                                         ; $4691: $a8
    sbc l                                         ; $4692: $9d

jr_045_4693:
    jr nz, jr_045_4693                            ; $4693: $20 $fe

    rla                                           ; $4695: $17
    sbc c                                         ; $4696: $99
    ld a, b                                       ; $4697: $78
    sbc a                                         ; $4698: $9f
    ld a, c                                       ; $4699: $79

jr_045_469a:
    ld a, [c]                                     ; $469a: $f2
    or h                                          ; $469b: $b4
    add d                                         ; $469c: $82
    ldh a, [rNR31]                                ; $469d: $f0 $1b
    ld [hl], d                                    ; $469f: $72
    ld h, c                                       ; $46a0: $61
    ld a, [hl-]                                   ; $46a1: $3a
    sub a                                         ; $46a2: $97
    cp d                                          ; $46a3: $ba
    dec e                                         ; $46a4: $1d
    push af                                       ; $46a5: $f5
    ld l, c                                       ; $46a6: $69
    dec [hl]                                      ; $46a7: $35
    ld [$b90c], a                                 ; $46a8: $ea $0c $b9
    dec e                                         ; $46ab: $1d
    ld [de], a                                    ; $46ac: $12
    ld [hl], $ba                                  ; $46ad: $36 $ba
    ld hl, sp-$01                                 ; $46af: $f8 $ff
    or d                                          ; $46b1: $b2
    ccf                                           ; $46b2: $3f
    dec b                                         ; $46b3: $05
    ld d, d                                       ; $46b4: $52
    sbc [hl]                                      ; $46b5: $9e
    ld a, b                                       ; $46b6: $78
    inc hl                                        ; $46b7: $23
    adc b                                         ; $46b8: $88
    di                                            ; $46b9: $f3
    inc hl                                        ; $46ba: $23
    rla                                           ; $46bb: $17
    and [hl]                                      ; $46bc: $a6
    ld [hl], e                                    ; $46bd: $73
    xor c                                         ; $46be: $a9
    db $db                                        ; $46bf: $db
    ld d, c                                       ; $46c0: $51
    ld a, [bc]                                    ; $46c1: $0a
    rst $18                                       ; $46c2: $df
    bit 0, h                                      ; $46c3: $cb $44
    dec e                                         ; $46c5: $1d
    add hl, bc                                    ; $46c6: $09
    pop hl                                        ; $46c7: $e1
    rla                                           ; $46c8: $17
    dec [hl]                                      ; $46c9: $35
    add hl, hl                                    ; $46ca: $29
    xor b                                         ; $46cb: $a8
    ld d, $43                                     ; $46cc: $16 $43
    call nc, $b965                                ; $46ce: $d4 $65 $b9
    ld b, $6a                                     ; $46d1: $06 $6a
    xor [hl]                                      ; $46d3: $ae
    db $ed                                        ; $46d4: $ed
    ld hl, $d3de                                  ; $46d5: $21 $de $d3
    xor b                                         ; $46d8: $a8

jr_045_46d9:
    sbc l                                         ; $46d9: $9d
    jr nz, @-$30                                  ; $46da: $20 $ce

    ldh a, [$32]                                  ; $46dc: $f0 $32
    and c                                         ; $46de: $a1
    ld [de], a                                    ; $46df: $12
    rst $28                                       ; $46e0: $ef
    pop de                                        ; $46e1: $d1
    ld a, [bc]                                    ; $46e2: $0a
    ld d, c                                       ; $46e3: $51
    sub a                                         ; $46e4: $97
    sub $66                                       ; $46e5: $d6 $66
    sbc a                                         ; $46e7: $9f
    cp d                                          ; $46e8: $ba
    jr c, jr_045_472a                             ; $46e9: $38 $3f

    or d                                          ; $46eb: $b2
    call c, $fa54                                 ; $46ec: $dc $54 $fa
    sub a                                         ; $46ef: $97
    ret                                           ; $46f0: $c9


    ld c, c                                       ; $46f1: $49
    sub [hl]                                      ; $46f2: $96
    ld [hl], e                                    ; $46f3: $73
    adc $7f                                       ; $46f4: $ce $7f
    rst $08                                       ; $46f6: $cf
    sbc a                                         ; $46f7: $9f
    ld b, d                                       ; $46f8: $42
    rst $30                                       ; $46f9: $f7
    or $78                                        ; $46fa: $f6 $78
    sub d                                         ; $46fc: $92
    add h                                         ; $46fd: $84
    sub l                                         ; $46fe: $95
    or a                                          ; $46ff: $b7
    sbc e                                         ; $4700: $9b
    ld a, [hl]                                    ; $4701: $7e
    dec b                                         ; $4702: $05
    db $ed                                        ; $4703: $ed
    ld hl, $d3de                                  ; $4704: $21 $de $d3
    xor b                                         ; $4707: $a8
    sbc l                                         ; $4708: $9d

jr_045_4709:
    jr nz, jr_045_46d9                            ; $4709: $20 $ce

    ldh a, [$32]                                  ; $470b: $f0 $32
    and c                                         ; $470d: $a1
    ld [de], a                                    ; $470e: $12
    db $fd                                        ; $470f: $fd
    jr c, @+$79                                   ; $4710: $38 $77

    ld [hl-], a                                   ; $4712: $32
    ld d, c                                       ; $4713: $51
    ld e, $63                                     ; $4714: $1e $63
    inc de                                        ; $4716: $13
    rst $20                                       ; $4717: $e7
    ld b, a                                       ; $4718: $47
    jp z, Jump_000_24f2                           ; $4719: $ca $f2 $24

    add h                                         ; $471c: $84
    ccf                                           ; $471d: $3f
    ld d, h                                       ; $471e: $54
    ld a, [c]                                     ; $471f: $f2
    inc h                                         ; $4720: $24
    add hl, bc                                    ; $4721: $09
    dec hl                                        ; $4722: $2b
    ld l, a                                       ; $4723: $6f
    scf                                           ; $4724: $37
    ld b, c                                       ; $4725: $41
    or $e4                                        ; $4726: $f6 $e4
    ld b, h                                       ; $4728: $44
    ld d, c                                       ; $4729: $51

jr_045_472a:
    add a                                         ; $472a: $87
    db $fc                                        ; $472b: $fc
    sbc $1f                                       ; $472c: $de $1f
    cpl                                           ; $472e: $2f
    push de                                       ; $472f: $d5
    cp [hl]                                       ; $4730: $be
    ld e, a                                       ; $4731: $5f
    ld bc, $21ed                                  ; $4732: $01 $ed $21
    sbc $d3                                       ; $4735: $de $d3
    xor b                                         ; $4737: $a8
    sbc l                                         ; $4738: $9d
    jr nz, jr_045_4709                            ; $4739: $20 $ce

    ldh a, [$32]                                  ; $473b: $f0 $32
    and c                                         ; $473d: $a1
    ld [de], a                                    ; $473e: $12
    db $fd                                        ; $473f: $fd
    jr c, jr_045_47b9                             ; $4740: $38 $77

    ld [hl-], a                                   ; $4742: $32
    ld d, c                                       ; $4743: $51
    ld e, $63                                     ; $4744: $1e $63
    inc de                                        ; $4746: $13
    rst $20                                       ; $4747: $e7
    ld b, a                                       ; $4748: $47
    or h                                          ; $4749: $b4
    or e                                          ; $474a: $b3
    rst $08                                       ; $474b: $cf
    add hl, bc                                    ; $474c: $09
    adc a                                         ; $474d: $8f
    ret                                           ; $474e: $c9


    db $e4                                        ; $474f: $e4
    rst $30                                       ; $4750: $f7
    cp $30                                        ; $4751: $fe $30
    ld a, [bc]                                    ; $4753: $0a
    ld a, a                                       ; $4754: $7f
    inc d                                         ; $4755: $14
    halt                                          ; $4756: $76
    inc b                                         ; $4757: $04
    push de                                       ; $4758: $d5
    cp c                                          ; $4759: $b9
    pop de                                        ; $475a: $d1
    ld b, l                                       ; $475b: $45
    ld e, l                                       ; $475c: $5d
    add hl, de                                    ; $475d: $19
    dec sp                                        ; $475e: $3b
    ld [$a8bf], sp                                ; $475f: $08 $bf $a8
    reti                                          ; $4762: $d9


    db $d3                                        ; $4763: $d3
    xor a                                         ; $4764: $af
    dec e                                         ; $4765: $1d
    ld d, d                                       ; $4766: $52
    inc d                                         ; $4767: $14
    ld b, [hl]                                    ; $4768: $46
    cp h                                          ; $4769: $bc
    and a                                         ; $476a: $a7
    ld d, c                                       ; $476b: $51
    dec sp                                        ; $476c: $3b
    ld b, c                                       ; $476d: $41
    ld hl, sp-$1e                                 ; $476e: $f8 $e2
    ld a, a                                       ; $4770: $7f
    sub c                                         ; $4771: $91
    adc c                                         ; $4772: $89
    ld a, d                                       ; $4773: $7a
    sbc [hl]                                      ; $4774: $9e
    ld d, b                                       ; $4775: $50
    adc c                                         ; $4776: $89
    sbc d                                         ; $4777: $9a
    db $ed                                        ; $4778: $ed
    ld c, [hl]                                    ; $4779: $4e
    ld h, $c5                                     ; $477a: $26 $c5
    add a                                         ; $477c: $87
    ld e, [hl]                                    ; $477d: $5e
    add hl, sp                                    ; $477e: $39
    sbc [hl]                                      ; $477f: $9e
    sbc d                                         ; $4780: $9a
    dec hl                                        ; $4781: $2b
    db $ed                                        ; $4782: $ed
    ld hl, $d3de                                  ; $4783: $21 $de $d3
    xor b                                         ; $4786: $a8
    sbc l                                         ; $4787: $9d

jr_045_4788:
    jr nz, jr_045_4788                            ; $4788: $20 $fe

    rla                                           ; $478a: $17
    sbc c                                         ; $478b: $99

jr_045_478c:
    inc a                                         ; $478c: $3c
    xor l                                         ; $478d: $ad
    jr nz, jr_045_478c                            ; $478e: $20 $fc

    inc a                                         ; $4790: $3c
    cp c                                          ; $4791: $b9
    inc l                                         ; $4792: $2c
    ld d, h                                       ; $4793: $54
    ld hl, sp-$7e                                 ; $4794: $f8 $82
    or d                                          ; $4796: $b2
    ret nz                                        ; $4797: $c0

    ld c, $42                                     ; $4798: $0e $42
    db $fc                                        ; $479a: $fc
    jr c, @+$41                                   ; $479b: $38 $3f

    ld h, d                                       ; $479d: $62
    rst $20                                       ; $479e: $e7
    ld b, b                                       ; $479f: $40
    jp nz, Jump_045_52fe                          ; $47a0: $c2 $fe $52

    db $10                                        ; $47a3: $10
    dec sp                                        ; $47a4: $3b
    ld e, d                                       ; $47a5: $5a
    call c, Call_045_5fd9                         ; $47a6: $dc $d9 $5f
    ld a, $e4                                     ; $47a9: $3e $e4
    adc c                                         ; $47ab: $89
    add e                                         ; $47ac: $83
    ld hl, $143e                                  ; $47ad: $21 $3e $14
    add l                                         ; $47b0: $85
    daa                                           ; $47b1: $27
    ld l, [hl]                                    ; $47b2: $6e
    ld a, [hl+]                                   ; $47b3: $2a
    db $fd                                        ; $47b4: $fd
    inc sp                                        ; $47b5: $33
    ld e, a                                       ; $47b6: $5f
    dec b                                         ; $47b7: $05
    pop hl                                        ; $47b8: $e1

jr_045_47b9:
    xor c                                         ; $47b9: $a9
    cp c                                          ; $47ba: $b9
    ld [bc], a                                    ; $47bb: $02
    db $ed                                        ; $47bc: $ed
    ld hl, $d3de                                  ; $47bd: $21 $de $d3
    xor b                                         ; $47c0: $a8
    sbc l                                         ; $47c1: $9d
    jr nz, jr_045_47f3                            ; $47c2: $20 $2f

    ld b, d                                       ; $47c4: $42
    rst $30                                       ; $47c5: $f7
    ld a, [hl]                                    ; $47c6: $7e
    sbc c                                         ; $47c7: $99

Jump_045_47c8:
    ld l, b                                       ; $47c8: $68
    ei                                            ; $47c9: $fb
    ld [bc], a                                    ; $47ca: $02
    xor a                                         ; $47cb: $af
    rla                                           ; $47cc: $17
    call z, $7517                                 ; $47cd: $cc $17 $75
    pop af                                        ; $47d0: $f1
    and c                                         ; $47d1: $a1
    cp a                                          ; $47d2: $bf
    bit 7, l                                      ; $47d3: $cb $7d
    cp c                                          ; $47d5: $b9
    inc a                                         ; $47d6: $3c
    di                                            ; $47d7: $f3
    dec sp                                        ; $47d8: $3b
    scf                                           ; $47d9: $37
    ld hl, $21b1                                  ; $47da: $21 $b1 $21
    ld d, e                                       ; $47dd: $53
    ld h, $0b                                     ; $47de: $26 $0b
    inc l                                         ; $47e0: $2c
    ld a, $14                                     ; $47e1: $3e $14
    add l                                         ; $47e3: $85
    daa                                           ; $47e4: $27
    ld l, [hl]                                    ; $47e5: $6e
    ld a, [hl+]                                   ; $47e6: $2a
    db $fd                                        ; $47e7: $fd
    inc sp                                        ; $47e8: $33
    ld e, a                                       ; $47e9: $5f
    dec b                                         ; $47ea: $05
    pop hl                                        ; $47eb: $e1
    xor c                                         ; $47ec: $a9
    cp c                                          ; $47ed: $b9
    ld [bc], a                                    ; $47ee: $02
    db $ed                                        ; $47ef: $ed
    ld hl, $d3de                                  ; $47f0: $21 $de $d3

jr_045_47f3:
    xor b                                         ; $47f3: $a8
    sbc l                                         ; $47f4: $9d
    jr nz, jr_045_4826                            ; $47f5: $20 $2f

    ld b, d                                       ; $47f7: $42
    rst $30                                       ; $47f8: $f7
    ld a, [hl]                                    ; $47f9: $7e
    sbc c                                         ; $47fa: $99
    jr nc, @+$67                                  ; $47fb: $30 $65

    ld b, [hl]                                    ; $47fd: $46
    ld [hl], $52                                  ; $47fe: $36 $52
    db $fd                                        ; $4800: $fd
    add [hl]                                      ; $4801: $86
    ld a, [hl-]                                   ; $4802: $3a
    ld [c], a                                     ; $4803: $e2
    adc l                                         ; $4804: $8d
    ld e, h                                       ; $4805: $5c
    sbc h                                         ; $4806: $9c
    rra                                           ; $4807: $1f
    pop hl                                        ; $4808: $e1
    adc e                                         ; $4809: $8b
    rst $38                                       ; $480a: $ff
    ld b, l                                       ; $480b: $45
    ld h, $6e                                     ; $480c: $26 $6e
    or $72                                        ; $480e: $f6 $72
    inc a                                         ; $4810: $3c
    dec [hl]                                      ; $4811: $35
    ld d, a                                       ; $4812: $57
    db $ed                                        ; $4813: $ed
    ld hl, $d3de                                  ; $4814: $21 $de $d3
    xor b                                         ; $4817: $a8
    sbc l                                         ; $4818: $9d
    jr nz, @+$7e                                  ; $4819: $20 $7c

    pop af                                        ; $481b: $f1
    cp a                                          ; $481c: $bf
    ret z                                         ; $481d: $c8

    call nz, Call_000_2650                        ; $481e: $c4 $50 $26
    ld d, h                                       ; $4821: $54
    ld [hl-], a                                   ; $4822: $32
    ld a, [$f303]                                 ; $4823: $fa $03 $f3

jr_045_4826:
    sub c                                         ; $4826: $91
    sub e                                         ; $4827: $93
    push hl                                       ; $4828: $e5
    ld a, [de]                                    ; $4829: $1a
    adc b                                         ; $482a: $88
    ld a, [hl-]                                   ; $482b: $3a
    xor a                                         ; $482c: $af
    rst $30                                       ; $482d: $f7
    call c, $446d                                 ; $482e: $dc $6d $44
    ld a, l                                       ; $4831: $7d
    sbc [hl]                                      ; $4832: $9e
    ld sp, hl                                     ; $4833: $f9
    sbc l                                         ; $4834: $9d
    ld a, e                                       ; $4835: $7b
    ld b, e                                       ; $4836: $43
    call $ed15                                    ; $4837: $cd $15 $ed
    ld hl, $d3de                                  ; $483a: $21 $de $d3
    xor b                                         ; $483d: $a8
    sbc l                                         ; $483e: $9d
    jr nz, jr_045_484b                            ; $483f: $20 $0a

    db $e4                                        ; $4841: $e4
    pop bc                                        ; $4842: $c1
    ld e, [hl]                                    ; $4843: $5e
    ld h, h                                       ; $4844: $64
    or d                                          ; $4845: $b2
    cp h                                          ; $4846: $bc
    ld sp, $70a2                                  ; $4847: $31 $a2 $70
    ld d, c                                       ; $484a: $51

jr_045_484b:
    cpl                                           ; $484b: $2f
    ld [hl], d                                    ; $484c: $72
    ld [hl], c                                    ; $484d: $71
    ld c, a                                       ; $484e: $4f
    set 6, e                                      ; $484f: $cb $f3
    ld b, l                                       ; $4851: $45
    ld a, l                                       ; $4852: $7d
    ld a, h                                       ; $4853: $7c
    add sp, -$11                                  ; $4854: $e8 $ef
    ld [hl], d                                    ; $4856: $72
    ld e, a                                       ; $4857: $5f
    ld l, $cf                                     ; $4858: $2e $cf
    db $fc                                        ; $485a: $fc
    adc $4d                                       ; $485b: $ce $4d
    cp h                                          ; $485d: $bc
    ld d, a                                       ; $485e: $57
    adc $4d                                       ; $485f: $ce $4d
    ld h, $d5                                     ; $4861: $26 $d5
    ld l, e                                       ; $4863: $6b
    rst $20                                       ; $4864: $e7
    and [hl]                                      ; $4865: $a6
    and $0a                                       ; $4866: $e6 $0a
    dec e                                         ; $4868: $1d
    ld e, a                                       ; $4869: $5f
    ld a, [bc]                                    ; $486a: $0a
    add h                                         ; $486b: $84

jr_045_486c:
    cpl                                           ; $486c: $2f
    swap l                                        ; $486d: $cb $35
    db $10                                        ; $486f: $10
    rst $28                                       ; $4870: $ef
    jr @-$5b                                      ; $4871: $18 $a3

    ld c, a                                       ; $4873: $4f

Call_045_4874:
    db $ed                                        ; $4874: $ed
    cp a                                          ; $4875: $bf
    db $ec                                        ; $4876: $ec
    ld c, a                                       ; $4877: $4f
    add c                                         ; $4878: $81
    sub h                                         ; $4879: $94
    daa                                           ; $487a: $27
    sbc $08                                       ; $487b: $de $08
    ld [c], a                                     ; $487d: $e2
    db $fc                                        ; $487e: $fc
    ret z                                         ; $487f: $c8

    dec hl                                        ; $4880: $2b
    sub h                                         ; $4881: $94
    ld [hl-], a                                   ; $4882: $32
    cp c                                          ; $4883: $b9
    dec e                                         ; $4884: $1d
    and [hl]                                      ; $4885: $a6
    sub e                                         ; $4886: $93
    inc de                                        ; $4887: $13
    rst $30                                       ; $4888: $f7
    jp nz, Jump_045_5728                          ; $4889: $c2 $28 $57

    ld c, l                                       ; $488c: $4d
    jp c, $b7dc                                   ; $488d: $da $dc $b7

    ld b, b                                       ; $4890: $40
    call nc, $dca4                                ; $4891: $d4 $a4 $dc
    ld h, a                                       ; $4894: $67
    cp c                                          ; $4895: $b9
    ld b, $b2                                     ; $4896: $06 $b2
    inc c                                         ; $4898: $0c

jr_045_4899:
    ld b, e                                       ; $4899: $43
    jr jr_045_4899                                ; $489a: $18 $fd

    ld a, [bc]                                    ; $489c: $0a
    db $ed                                        ; $489d: $ed
    ld hl, $d3de                                  ; $489e: $21 $de $d3
    xor b                                         ; $48a1: $a8
    sbc l                                         ; $48a2: $9d

jr_045_48a3:
    jr nz, jr_045_48a3                            ; $48a3: $20 $fe

    rla                                           ; $48a5: $17
    sbc c                                         ; $48a6: $99
    jr c, jr_045_486c                             ; $48a7: $38 $c3

    di                                            ; $48a9: $f3
    ld b, h                                       ; $48aa: $44
    ld d, c                                       ; $48ab: $51
    add h                                         ; $48ac: $84
    add hl, hl                                    ; $48ad: $29
    ld [c], a                                     ; $48ae: $e2
    ld h, [hl]                                    ; $48af: $66
    add hl, sp                                    ; $48b0: $39
    call nz, $c2fb                                ; $48b1: $c4 $fb $c2
    ld e, a                                       ; $48b4: $5f
    xor d                                         ; $48b5: $aa
    xor a                                         ; $48b6: $af
    sbc c                                         ; $48b7: $99
    or [hl]                                       ; $48b8: $b6
    ld [hl], a                                    ; $48b9: $77
    inc b                                         ; $48ba: $04
    push de                                       ; $48bb: $d5
    cp c                                          ; $48bc: $b9
    ld c, c                                       ; $48bd: $49
    ld b, c                                       ; $48be: $41
    and l                                         ; $48bf: $a5
    or a                                          ; $48c0: $b7
    adc a                                         ; $48c1: $8f
    cp d                                          ; $48c2: $ba
    ld [hl-], a                                   ; $48c3: $32
    halt                                          ; $48c4: $76
    db $10                                        ; $48c5: $10
    ld a, [hl]                                    ; $48c6: $7e
    sbc [hl]                                      ; $48c7: $9e
    ld a, [hl]                                    ; $48c8: $7e
    dec b                                         ; $48c9: $05
    db $ed                                        ; $48ca: $ed
    ld hl, $d3de                                  ; $48cb: $21 $de $d3
    xor b                                         ; $48ce: $a8
    sbc l                                         ; $48cf: $9d
    jr nz, jr_045_4904                            ; $48d0: $20 $32

    sub d                                         ; $48d2: $92
    add d                                         ; $48d3: $82
    ld c, d                                       ; $48d4: $4a
    ld l, a                                       ; $48d5: $6f
    cpl                                           ; $48d6: $2f
    sub e                                         ; $48d7: $93
    daa                                           ; $48d8: $27
    ld h, c                                       ; $48d9: $61
    add hl, hl                                    ; $48da: $29
    ld h, e                                       ; $48db: $63
    ld a, h                                       ; $48dc: $7c
    inc a                                         ; $48dd: $3c

Jump_045_48de:
    ld sp, hl                                     ; $48de: $f9
    db $ed                                        ; $48df: $ed
    xor b                                         ; $48e0: $a8
    inc b                                         ; $48e1: $04
    ld e, [hl]                                    ; $48e2: $5e
    cpl                                           ; $48e3: $2f
    sbc b                                         ; $48e4: $98
    daa                                           ; $48e5: $27
    add l                                         ; $48e6: $85
    ld b, [hl]                                    ; $48e7: $46
    ld e, l                                       ; $48e8: $5d
    jr jr_045_4968                                ; $48e9: $18 $7d

    jp c, Jump_045_61de                           ; $48eb: $da $de $61

    ld a, [hl-]                                   ; $48ee: $3a
    ld de, $e754                                  ; $48ef: $11 $54 $e7
    ld b, [hl]                                    ; $48f2: $46
    sub a                                         ; $48f3: $97
    dec b                                         ; $48f4: $05
    ld d, [hl]                                    ; $48f5: $56
    cp a                                          ; $48f6: $bf
    ld l, $05                                     ; $48f7: $2e $05
    sub l                                         ; $48f9: $95
    sbc $3e                                       ; $48fa: $de $3e
    dec de                                        ; $48fc: $1b
    sbc d                                         ; $48fd: $9a
    ld b, $ab                                     ; $48fe: $06 $ab
    jr nz, @-$72                                  ; $4900: $20 $8c

    inc l                                         ; $4902: $2c
    rst $10                                       ; $4903: $d7

jr_045_4904:
    ld b, b                                       ; $4904: $40
    cp h                                          ; $4905: $bc
    ld h, e                                       ; $4906: $63
    adc h                                         ; $4907: $8c
    ld a, [hl]                                    ; $4908: $7e
    dec b                                         ; $4909: $05
    db $ed                                        ; $490a: $ed
    ld hl, $d3de                                  ; $490b: $21 $de $d3
    xor b                                         ; $490e: $a8
    sbc l                                         ; $490f: $9d

jr_045_4910:
    jr nz, jr_045_4910                            ; $4910: $20 $fe

    rla                                           ; $4912: $17
    sbc c                                         ; $4913: $99
    ld a, b                                       ; $4914: $78
    sbc a                                         ; $4915: $9f
    ld a, c                                       ; $4916: $79
    ld a, [c]                                     ; $4917: $f2
    ld c, d                                       ; $4918: $4a
    adc l                                         ; $4919: $8d
    ld d, l                                       ; $491a: $55
    db $10                                        ; $491b: $10
    ld a, [hl]                                    ; $491c: $7e
    ld b, e                                       ; $491d: $43
    ld l, $4c                                     ; $491e: $2e $4c
    rst $20                                       ; $4920: $e7
    ld [hl+], a                                   ; $4921: $22
    xor b                                         ; $4922: $a8
    adc $5d                                       ; $4923: $ce $5d
    call Call_045_79d4                            ; $4925: $cd $d4 $79
    and [hl]                                      ; $4928: $a6
    or $bb                                        ; $4929: $f6 $bb
    add d                                         ; $492b: $82
    jr nc, @+$76                                  ; $492c: $30 $74

    sub c                                         ; $492e: $91
    sub c                                         ; $492f: $91
    inc l                                         ; $4930: $2c
    ld d, e                                       ; $4931: $53
    jp z, $e4c8                                   ; $4932: $ca $c8 $e4

    sbc c                                         ; $4935: $99
    rst $18                                       ; $4936: $df
    cp c                                          ; $4937: $b9
    scf                                           ; $4938: $37
    cp [hl]                                       ; $4939: $be
    ld d, h                                       ; $493a: $54
    db $10                                        ; $493b: $10
    ld [hl], $a4                                  ; $493c: $36 $a4
    jr c, @+$01                                   ; $493e: $38 $ff

    cp l                                          ; $4940: $bd
    ld [hl], e                                    ; $4941: $73
    rst $30                                       ; $4942: $f7
    ld [hl-], a                                   ; $4943: $32
    and c                                         ; $4944: $a1
    sub d                                         ; $4945: $92
    push hl                                       ; $4946: $e5
    jp z, $93ec                                   ; $4947: $ca $ec $93

    jp hl                                         ; $494a: $e9


    ld d, a                                       ; $494b: $57
    db $ed                                        ; $494c: $ed
    ld hl, $d3de                                  ; $494d: $21 $de $d3
    xor b                                         ; $4950: $a8
    sbc l                                         ; $4951: $9d

jr_045_4952:
    jr nz, jr_045_4952                            ; $4952: $20 $fe

    rla                                           ; $4954: $17
    sbc c                                         ; $4955: $99
    or b                                          ; $4956: $b0
    ld a, l                                       ; $4957: $7d
    pop af                                        ; $4958: $f1
    adc [hl]                                      ; $4959: $8e
    ld d, l                                       ; $495a: $55
    rst $08                                       ; $495b: $cf
    inc de                                        ; $495c: $13
    ld a, [hl+]                                   ; $495d: $2a
    add hl, de                                    ; $495e: $19
    ld c, l                                       ; $495f: $4d
    inc bc                                        ; $4960: $03
    di                                            ; $4961: $f3
    ld b, h                                       ; $4962: $44
    ld h, c                                       ; $4963: $61
    add a                                         ; $4964: $87
    jp hl                                         ; $4965: $e9


    db $e4                                        ; $4966: $e4
    add h                                         ; $4967: $84

jr_045_4968:
    add h                                         ; $4968: $84
    ldh a, [$db]                                  ; $4969: $f0 $db
    ld c, l                                       ; $496b: $4d
    ld c, [hl]                                    ; $496c: $4e
    ld a, [$0fbe]                                 ; $496d: $fa $be $0f
    sub l                                         ; $4970: $95
    rst $08                                       ; $4971: $cf
    ld [hl], d                                    ; $4972: $72
    or h                                          ; $4973: $b4
    ld a, [$4ba8]                                 ; $4974: $fa $a8 $4b
    ld h, c                                       ; $4977: $61
    and e                                         ; $4978: $a3
    ld b, h                                       ; $4979: $44
    ld [c], a                                     ; $497a: $e2
    call nc, Call_045_59aa                        ; $497b: $d4 $aa $59
    ld l, e                                       ; $497e: $6b
    dec b                                         ; $497f: $05
    db $ed                                        ; $4980: $ed
    ld hl, $d3de                                  ; $4981: $21 $de $d3
    xor b                                         ; $4984: $a8
    sbc l                                         ; $4985: $9d

jr_045_4986:
    jr nz, jr_045_4986                            ; $4986: $20 $fe

    rla                                           ; $4988: $17
    sbc c                                         ; $4989: $99

jr_045_498a:
    inc a                                         ; $498a: $3c
    xor l                                         ; $498b: $ad
    jr nz, jr_045_498a                            ; $498c: $20 $fc

    inc a                                         ; $498e: $3c
    cp c                                          ; $498f: $b9
    xor b                                         ; $4990: $a8
    rla                                           ; $4991: $17
    cp c                                          ; $4992: $b9
    sbc h                                         ; $4993: $9c
    ld a, b                                       ; $4994: $78
    rst $30                                       ; $4995: $f7
    ld sp, $d45f                                  ; $4996: $31 $5f $d4
    ld e, a                                       ; $4999: $5f
    sbc b                                         ; $499a: $98
    adc $e5                                       ; $499b: $ce $e5
    call nz, Call_000_30bd                        ; $499d: $c4 $bd $30
    jp z, $9755                                   ; $49a0: $ca $55 $97

    dec b                                         ; $49a3: $05
    ld d, $1f                                     ; $49a4: $16 $1f
    adc d                                         ; $49a6: $8a
    jp nz, $3713                                  ; $49a7: $c2 $13 $37

    sub l                                         ; $49aa: $95
    cp $99                                        ; $49ab: $fe $99
    xor a                                         ; $49ad: $af
    add d                                         ; $49ae: $82
    ldh a, [$d4]                                  ; $49af: $f0 $d4
    ld e, h                                       ; $49b1: $5c
    ld bc, $21ed                                  ; $49b2: $01 $ed $21
    sbc $d3                                       ; $49b5: $de $d3
    xor b                                         ; $49b7: $a8
    sbc l                                         ; $49b8: $9d
    jr nz, jr_045_4a37                            ; $49b9: $20 $7c

    pop af                                        ; $49bb: $f1
    cp a                                          ; $49bc: $bf
    ret z                                         ; $49bd: $c8

    call nz, Call_000_2650                        ; $49be: $c4 $50 $26
    ld d, a                                       ; $49c1: $57
    ld d, l                                       ; $49c2: $55
    ld d, h                                       ; $49c3: $54
    sub b                                         ; $49c4: $90
    rst $18                                       ; $49c5: $df
    ld hl, $21b1                                  ; $49c6: $21 $b1 $21
    and e                                         ; $49c9: $a3
    res 1, e                                      ; $49ca: $cb $8b
    di                                            ; $49cc: $f3
    inc hl                                        ; $49cd: $23
    dec b                                         ; $49ce: $05
    add hl, hl                                    ; $49cf: $29
    or e                                          ; $49d0: $b3
    daa                                           ; $49d1: $27
    dec bc                                        ; $49d2: $0b
    inc l                                         ; $49d3: $2c
    ld a, $14                                     ; $49d4: $3e $14
    add l                                         ; $49d6: $85
    daa                                           ; $49d7: $27
    ld l, [hl]                                    ; $49d8: $6e
    ld a, [hl+]                                   ; $49d9: $2a
    db $fd                                        ; $49da: $fd
    inc sp                                        ; $49db: $33
    ld e, a                                       ; $49dc: $5f
    dec b                                         ; $49dd: $05
    pop hl                                        ; $49de: $e1
    jp hl                                         ; $49df: $e9


jr_045_49e0:
    ld d, a                                       ; $49e0: $57
    db $ed                                        ; $49e1: $ed
    ld hl, $d3de                                  ; $49e2: $21 $de $d3
    xor b                                         ; $49e5: $a8
    sbc l                                         ; $49e6: $9d
    jr nz, jr_045_4a03                            ; $49e7: $20 $1a

    inc b                                         ; $49e9: $04
    or $32                                        ; $49ea: $f6 $32
    and c                                         ; $49ec: $a1
    ld [de], a                                    ; $49ed: $12
    and e                                         ; $49ee: $a3
    push de                                       ; $49ef: $d5
    jr @-$3c                                      ; $49f0: $18 $c2

    jr nc, jr_045_4a2f                            ; $49f2: $30 $3b

    rst $28                                       ; $49f4: $ef
    cp c                                          ; $49f5: $b9
    rla                                           ; $49f6: $17
    ld b, [hl]                                    ; $49f7: $46
    sbc h                                         ; $49f8: $9c
    rra                                           ; $49f9: $1f
    add hl, sp                                    ; $49fa: $39
    ld d, c                                       ; $49fb: $51
    call nc, $b721                                ; $49fc: $d4 $21 $b7
    inc hl                                        ; $49ff: $23
    xor b                                         ; $4a00: $a8
    adc $4d                                       ; $4a01: $ce $4d

jr_045_4a03:
    ld a, [hl]                                    ; $4a03: $7e
    rst $28                                       ; $4a04: $ef
    adc a                                         ; $4a05: $8f
    sub a                                         ; $4a06: $97
    ld l, d                                       ; $4a07: $6a
    rst $18                                       ; $4a08: $df
    xor a                                         ; $4a09: $af
    db $ed                                        ; $4a0a: $ed
    ld hl, $d3de                                  ; $4a0b: $21 $de $d3
    xor b                                         ; $4a0e: $a8
    sbc l                                         ; $4a0f: $9d

jr_045_4a10:
    jr nz, jr_045_49e0                            ; $4a10: $20 $ce

    ldh a, [$32]                                  ; $4a12: $f0 $32
    and c                                         ; $4a14: $a1
    ld a, [c]                                     ; $4a15: $f2
    xor c                                         ; $4a16: $a9
    ld l, b                                       ; $4a17: $68

Jump_045_4a18:
    add hl, sp                                    ; $4a18: $39
    rst $30                                       ; $4a19: $f7
    ld [hl], c                                    ; $4a1a: $71
    ld a, [hl]                                    ; $4a1b: $7e
    ld b, h                                       ; $4a1c: $44
    ld e, l                                       ; $4a1d: $5d
    ld h, c                                       ; $4a1e: $61
    ld a, e                                       ; $4a1f: $7b
    ld b, h                                       ; $4a20: $44
    db $db                                        ; $4a21: $db
    sub a                                         ; $4a22: $97
    daa                                           ; $4a23: $27
    ld c, c                                       ; $4a24: $49
    ld e, b                                       ; $4a25: $58
    ld a, c                                       ; $4a26: $79
    dec sp                                        ; $4a27: $3b
    ld e, l                                       ; $4a28: $5d
    cp h                                          ; $4a29: $bc
    rst $28                                       ; $4a2a: $ef
    jr nz, jr_045_4a97                            ; $4a2b: $20 $6a

    or d                                          ; $4a2d: $b2
    ret nz                                        ; $4a2e: $c0

jr_045_4a2f:
    inc d                                         ; $4a2f: $14
    inc c                                         ; $4a30: $0c
    reti                                          ; $4a31: $d9


    ld h, e                                       ; $4a32: $63
    inc de                                        ; $4a33: $13
    ld a, [hl+]                                   ; $4a34: $2a
    ld h, c                                       ; $4a35: $61
    ld l, d                                       ; $4a36: $6a

jr_045_4a37:
    ld [hl-], a                                   ; $4a37: $32
    db $fd                                        ; $4a38: $fd
    ld a, [bc]                                    ; $4a39: $0a
    db $ed                                        ; $4a3a: $ed
    ld hl, $d3de                                  ; $4a3b: $21 $de $d3
    xor b                                         ; $4a3e: $a8
    sbc l                                         ; $4a3f: $9d
    jr nz, jr_045_4a10                            ; $4a40: $20 $ce

    ldh a, [$32]                                  ; $4a42: $f0 $32
    and c                                         ; $4a44: $a1
    ld a, [c]                                     ; $4a45: $f2
    xor c                                         ; $4a46: $a9
    ld l, b                                       ; $4a47: $68
    add hl, sp                                    ; $4a48: $39
    rst $30                                       ; $4a49: $f7
    add hl, hl                                    ; $4a4a: $29
    ld d, a                                       ; $4a4b: $57
    db $dd                                        ; $4a4c: $dd
    ld b, [hl]                                    ; $4a4d: $46
    ld a, $54                                     ; $4a4e: $3e $54
    ld a, $72                                     ; $4a50: $3e $72
    ld [hl+], a                                   ; $4a52: $22
    cpl                                           ; $4a53: $2f
    cpl                                           ; $4a54: $2f
    ld a, [c]                                     ; $4a55: $f2
    ld [hl], c                                    ; $4a56: $71
    ld a, [hl]                                    ; $4a57: $7e
    call nz, Call_045_79fb                        ; $4a58: $c4 $fb $79
    and l                                         ; $4a5b: $a5
    add $2a                                       ; $4a5c: $c6 $2a
    ld [$21bf], sp                                ; $4a5e: $08 $bf $21
    or a                                          ; $4a61: $b7
    inc hl                                        ; $4a62: $23
    xor b                                         ; $4a63: $a8
    adc $4d                                       ; $4a64: $ce $4d
    cp a                                          ; $4a66: $bf
    ld [bc], a                                    ; $4a67: $02
    db $ed                                        ; $4a68: $ed
    ld hl, $d3de                                  ; $4a69: $21 $de $d3
    xor b                                         ; $4a6c: $a8
    sbc l                                         ; $4a6d: $9d

jr_045_4a6e:
    jr nz, jr_045_4a6e                            ; $4a6e: $20 $fe

    rla                                           ; $4a70: $17
    sbc c                                         ; $4a71: $99
    jr c, jr_045_4a37                             ; $4a72: $38 $c3

    di                                            ; $4a74: $f3
    ld b, h                                       ; $4a75: $44
    pop hl                                        ; $4a76: $e1
    ld [c], a                                     ; $4a77: $e2
    cp l                                          ; $4a78: $bd
    or c                                          ; $4a79: $b1
    ld c, e                                       ; $4a7a: $4b
    push af                                       ; $4a7b: $f5
    jp c, $abb9                                   ; $4a7c: $da $b9 $ab

    add hl, de                                    ; $4a7f: $19
    ld c, a                                       ; $4a80: $4f
    ccf                                           ; $4a81: $3f
    ld [hl-], a                                   ; $4a82: $32
    ld l, d                                       ; $4a83: $6a

Call_045_4a84:
    inc c                                         ; $4a84: $0c
    sub c                                         ; $4a85: $91
    and a                                         ; $4a86: $a7
    dec b                                         ; $4a87: $05
    cpl                                           ; $4a88: $2f
    adc h                                         ; $4a89: $8c
    sbc d                                         ; $4a8a: $9a
    jp hl                                         ; $4a8b: $e9


jr_045_4a8c:
    sbc b                                         ; $4a8c: $98
    and [hl]                                      ; $4a8d: $a6
    ldh a, [$5f]                                  ; $4a8e: $f0 $5f
    db $f4                                        ; $4a90: $f4
    db $10                                        ; $4a91: $10
    add sp, $52                                   ; $4a92: $e8 $52
    ld a, l                                       ; $4a94: $7d
    ld l, $4c                                     ; $4a95: $2e $4c

jr_045_4a97:
    rst $20                                       ; $4a97: $e7
    ld a, [c]                                     ; $4a98: $f2
    inc h                                         ; $4a99: $24
    add hl, bc                                    ; $4a9a: $09
    dec hl                                        ; $4a9b: $2b
    ld l, a                                       ; $4a9c: $6f
    sub a                                         ; $4a9d: $97
    add d                                         ; $4a9e: $82
    ld c, d                                       ; $4a9f: $4a
    ld l, a                                       ; $4aa0: $6f
    cpl                                           ; $4aa1: $2f
    sub e                                         ; $4aa2: $93
    sub e                                         ; $4aa3: $93
    inc l                                         ; $4aa4: $2c
    jr z, jr_045_4a8c                             ; $4aa5: $28 $e5

    xor d                                         ; $4aa7: $aa
    adc a                                         ; $4aa8: $8f
    ld [hl], a                                    ; $4aa9: $77
    xor h                                         ; $4aaa: $ac

jr_045_4aab:
    ld a, [$057e]                                 ; $4aab: $fa $7e $05
    db $ed                                        ; $4aae: $ed
    ld hl, $d3de                                  ; $4aaf: $21 $de $d3
    xor b                                         ; $4ab2: $a8
    sbc l                                         ; $4ab3: $9d
    jr nz, jr_045_4abb                            ; $4ab4: $20 $05

    sub l                                         ; $4ab6: $95
    sbc $5e                                       ; $4ab7: $de $5e
    ld h, $4f                                     ; $4ab9: $26 $4f

jr_045_4abb:
    jp nz, $bf62                                  ; $4abb: $c2 $62 $bf

    scf                                           ; $4abe: $37
    add h                                         ; $4abf: $84
    sbc a                                         ; $4ac0: $9f
    daa                                           ; $4ac1: $27
    rla                                           ; $4ac2: $17

jr_045_4ac3:
    and [hl]                                      ; $4ac3: $a6
    ld [hl], e                                    ; $4ac4: $73
    ld a, c                                       ; $4ac5: $79
    sub d                                         ; $4ac6: $92
    add h                                         ; $4ac7: $84
    sub l                                         ; $4ac8: $95
    or a                                          ; $4ac9: $b7
    xor e                                         ; $4aca: $ab
    cp c                                          ; $4acb: $b9
    ld [bc], a                                    ; $4acc: $02
    dec e                                         ; $4acd: $1d
    ld e, a                                       ; $4ace: $5f
    ld a, [bc]                                    ; $4acf: $0a
    rst $38                                       ; $4ad0: $ff
    and l                                         ; $4ad1: $a5
    and d                                         ; $4ad2: $a2
    ld b, e                                       ; $4ad3: $43
    ld b, d                                       ; $4ad4: $42
    call nc, $9aa4                                ; $4ad5: $d4 $a4 $9a
    call $0d93                                    ; $4ad8: $cd $93 $0d
    pop hl                                        ; $4adb: $e1
    xor a                                         ; $4adc: $af
    jr nz, @-$72                                  ; $4add: $20 $8c

    ld a, $ad                                     ; $4adf: $3e $ad
    add e                                         ; $4ae1: $83
    db $f4                                        ; $4ae2: $f4
    ld b, b                                       ; $4ae3: $40
    add hl, hl                                    ; $4ae4: $29
    jr nc, jr_045_4aab                            ; $4ae5: $30 $c4

    call Call_000_3e5e                            ; $4ae7: $cd $5e $3e
    ld a, [bc]                                    ; $4aea: $0a
    ld a, e                                       ; $4aeb: $7b
    inc hl                                        ; $4aec: $23
    sbc $d3                                       ; $4aed: $de $d3
    xor b                                         ; $4aef: $a8
    sbc l                                         ; $4af0: $9d
    and b                                         ; $4af1: $a0
    and $0a                                       ; $4af2: $e6 $0a
    db $ed                                        ; $4af4: $ed
    ld hl, $d3de                                  ; $4af5: $21 $de $d3
    xor b                                         ; $4af8: $a8
    sbc l                                         ; $4af9: $9d

jr_045_4afa:
    jr nz, jr_045_4afa                            ; $4afa: $20 $fe

    rla                                           ; $4afc: $17
    sbc c                                         ; $4afd: $99
    jr c, jr_045_4ac3                             ; $4afe: $38 $c3

    di                                            ; $4b00: $f3
    add h                                         ; $4b01: $84
    jp z, $dec7                                   ; $4b02: $ca $c7 $de

    db $eb                                        ; $4b05: $eb
    dec a                                         ; $4b06: $3d
    rst $30                                       ; $4b07: $f7
    ld d, c                                       ; $4b08: $51
    rla                                           ; $4b09: $17
    ld [de], a                                    ; $4b0a: $12
    jp nz, $e713                                  ; $4b0b: $c2 $13 $e7

    ld b, a                                       ; $4b0e: $47
    cp h                                          ; $4b0f: $bc
    rra                                           ; $4b10: $1f
    ld [hl], d                                    ; $4b11: $72
    or $1b                                        ; $4b12: $f6 $1b
    ld b, d                                       ; $4b14: $42
    sbc $87                                       ; $4b15: $de $87
    ld c, d                                       ; $4b17: $4a
    sbc [hl]                                      ; $4b18: $9e
    inc h                                         ; $4b19: $24
    ld h, c                                       ; $4b1a: $61
    push hl                                       ; $4b1b: $e5
    db $ed                                        ; $4b1c: $ed
    and [hl]                                      ; $4b1d: $a6
    and $0a                                       ; $4b1e: $e6 $0a
    db $ed                                        ; $4b20: $ed
    ld hl, $d3de                                  ; $4b21: $21 $de $d3
    xor b                                         ; $4b24: $a8
    sbc l                                         ; $4b25: $9d

jr_045_4b26:
    jr nz, jr_045_4b26                            ; $4b26: $20 $fe

    rla                                           ; $4b28: $17
    sbc c                                         ; $4b29: $99
    or b                                          ; $4b2a: $b0
    ld a, l                                       ; $4b2b: $7d
    pop af                                        ; $4b2c: $f1
    adc [hl]                                      ; $4b2d: $8e
    ld d, l                                       ; $4b2e: $55
    rst $08                                       ; $4b2f: $cf
    sub e                                         ; $4b30: $93
    db $ed                                        ; $4b31: $ed
    pop af                                        ; $4b32: $f1
    inc h                                         ; $4b33: $24
    add hl, bc                                    ; $4b34: $09
    dec hl                                        ; $4b35: $2b
    ld l, a                                       ; $4b36: $6f
    scf                                           ; $4b37: $37
    add hl, sp                                    ; $4b38: $39
    jp hl                                         ; $4b39: $e9


    ei                                            ; $4b3a: $fb
    ld a, $3e                                     ; $4b3b: $3e $3e
    db $f4                                        ; $4b3d: $f4
    or a                                          ; $4b3e: $b7
    sbc e                                         ; $4b3f: $9b
    ld a, [c]                                     ; $4b40: $f2
    ld d, c                                       ; $4b41: $51
    rla                                           ; $4b42: $17
    ld [hl], l                                    ; $4b43: $75
    inc h                                         ; $4b44: $24
    xor h                                         ; $4b45: $ac
    ld c, h                                       ; $4b46: $4c

jr_045_4b47:
    cp a                                          ; $4b47: $bf
    ld [bc], a                                    ; $4b48: $02
    db $ed                                        ; $4b49: $ed
    ld hl, $d3de                                  ; $4b4a: $21 $de $d3
    xor b                                         ; $4b4d: $a8
    sbc l                                         ; $4b4e: $9d
    jr nz, jr_045_4b47                            ; $4b4f: $20 $f6

    ld c, d                                       ; $4b51: $4a
    call $dcb2                                    ; $4b52: $cd $b2 $dc

jr_045_4b55:
    set 4, h                                      ; $4b55: $cb $e4
    jp nz, Jump_000_2e74                          ; $4b57: $c2 $74 $2e

    ld [hl], l                                    ; $4b5a: $75
    dec sp                                        ; $4b5b: $3b
    jp z, $cb02                                   ; $4b5c: $ca $02 $cb

    cp $28                                        ; $4b5f: $fe $28
    ld l, d                                       ; $4b61: $6a
    rst $08                                       ; $4b62: $cf
    rra                                           ; $4b63: $1f
    ld [hl], l                                    ; $4b64: $75
    pop af                                        ; $4b65: $f1
    and c                                         ; $4b66: $a1
    jr z, jr_045_4b55                             ; $4b67: $28 $ec

    ld [hl], c                                    ; $4b69: $71
    ld [c], a                                     ; $4b6a: $e2
    ld b, [hl]                                    ; $4b6b: $46
    ret c                                         ; $4b6c: $d8

    and [hl]                                      ; $4b6d: $a6
    and $0a                                       ; $4b6e: $e6 $0a
    db $ed                                        ; $4b70: $ed
    ld hl, $d3de                                  ; $4b71: $21 $de $d3
    xor b                                         ; $4b74: $a8
    sbc l                                         ; $4b75: $9d
    jr nz, @+$04                                  ; $4b76: $20 $02

    jp z, $fbf6                                   ; $4b78: $ca $f6 $fb

    adc b                                         ; $4b7b: $88
    call nz, $c997                                ; $4b7c: $c4 $97 $c9
    or $80                                        ; $4b7f: $f6 $80
    rst $10                                       ; $4b81: $d7
    dec bc                                        ; $4b82: $0b
    and $89                                       ; $4b83: $e6 $89
    cp d                                          ; $4b85: $ba
    ld hl, sp-$30                                 ; $4b86: $f8 $d0
    rst $18                                       ; $4b88: $df
    push hl                                       ; $4b89: $e5
    cp [hl]                                       ; $4b8a: $be
    ld e, h                                       ; $4b8b: $5c
    ld c, b                                       ; $4b8c: $48
    ld l, h                                       ; $4b8d: $6c
    ret z                                         ; $4b8e: $c8

    ld h, h                                       ; $4b8f: $64
    ld d, d                                       ; $4b90: $52
    cp l                                          ; $4b91: $bd
    halt                                          ; $4b92: $76
    rra                                           ; $4b93: $1f
    rst $20                                       ; $4b94: $e7
    ld b, a                                       ; $4b95: $47
    sub [hl]                                      ; $4b96: $96
    ld h, c                                       ; $4b97: $61
    add e                                         ; $4b98: $83
    ld e, [hl]                                    ; $4b99: $5e
    rrca                                          ; $4b9a: $0f
    sbc e                                         ; $4b9b: $9b
    inc a                                         ; $4b9c: $3c
    add hl, bc                                    ; $4b9d: $09
    db $e3                                        ; $4b9e: $e3
    adc e                                         ; $4b9f: $8b
    sbc e                                         ; $4ba0: $9b
    cp l                                          ; $4ba1: $bd
    inc e                                         ; $4ba2: $1c
    ld c, a                                       ; $4ba3: $4f
    call $ed15                                    ; $4ba4: $cd $15 $ed
    ld hl, $d3de                                  ; $4ba7: $21 $de $d3
    xor b                                         ; $4baa: $a8
    sbc l                                         ; $4bab: $9d
    jr nz, jr_045_4c2a                            ; $4bac: $20 $7c

    ld h, c                                       ; $4bae: $61

jr_045_4baf:
    ei                                            ; $4baf: $fb
    ld d, d                                       ; $4bb0: $52
    add c                                         ; $4bb1: $81
    ld a, c                                       ; $4bb2: $79
    ld h, h                                       ; $4bb3: $64
    ld b, d                                       ; $4bb4: $42
    push hl                                       ; $4bb5: $e5
    ld d, e                                       ; $4bb6: $53
    sbc l                                         ; $4bb7: $9d
    or [hl]                                       ; $4bb8: $b6
    ld l, a                                       ; $4bb9: $6f
    inc c                                         ; $4bba: $0c
    ld [hl], c                                    ; $4bbb: $71
    cp a                                          ; $4bbc: $bf
    cp h                                          ; $4bbd: $bc
    dec sp                                        ; $4bbe: $3b
    xor [hl]                                      ; $4bbf: $ae
    daa                                           ; $4bc0: $27
    ld [$7ee2], a                                 ; $4bc1: $ea $e2 $7e
    add hl, sp                                    ; $4bc4: $39
    ld b, e                                       ; $4bc5: $43
    call nc, $8890                                ; $4bc6: $d4 $90 $88
    add e                                         ; $4bc9: $83
    cp c                                          ; $4bca: $b9
    scf                                           ; $4bcb: $37
    db $e4                                        ; $4bcc: $e4
    ld [c], a                                     ; $4bcd: $e2
    db $fd                                        ; $4bce: $fd
    db $ed                                        ; $4bcf: $ed
    ld l, $ca                                     ; $4bd0: $2e $ca
    db $e3                                        ; $4bd2: $e3
    ld c, l                                       ; $4bd3: $4d
    add e                                         ; $4bd4: $83
    ldh a, [$d4]                                  ; $4bd5: $f0 $d4
    ld e, h                                       ; $4bd7: $5c
    ld bc, $21ed                                  ; $4bd8: $01 $ed $21
    sbc $d3                                       ; $4bdb: $de $d3
    xor b                                         ; $4bdd: $a8
    sbc l                                         ; $4bde: $9d
    jr nz, jr_045_4baf                            ; $4bdf: $20 $ce

    ldh a, [$32]                                  ; $4be1: $f0 $32
    and c                                         ; $4be3: $a1
    ld [de], a                                    ; $4be4: $12
    dec sp                                        ; $4be5: $3b
    rst $20                                       ; $4be6: $e7
    cp a                                          ; $4be7: $bf
    xor a                                         ; $4be8: $af
    ld h, $0b                                     ; $4be9: $26 $0b
    inc l                                         ; $4beb: $2c
    push de                                       ; $4bec: $d5
    inc d                                         ; $4bed: $14
    or [hl]                                       ; $4bee: $b6
    db $eb                                        ; $4bef: $eb
    ld d, e                                       ; $4bf0: $53
    rla                                           ; $4bf1: $17
    ld d, $2a                                     ; $4bf2: $16 $2a
    pop de                                        ; $4bf4: $d1
    dec de                                        ; $4bf5: $1b
    ld c, b                                       ; $4bf6: $48
    ld h, h                                       ; $4bf7: $64
    ld a, a                                       ; $4bf8: $7f
    add hl, hl                                    ; $4bf9: $29
    inc de                                        ; $4bfa: $13
    ld [hl], l                                    ; $4bfb: $75
    ld h, c                                       ; $4bfc: $61
    ld d, h                                       ; $4bfd: $54
    set 5, b                                      ; $4bfe: $cb $e8
    and d                                         ; $4c00: $a2
    add [hl]                                      ; $4c01: $86
    or h                                          ; $4c02: $b4
    cp a                                          ; $4c03: $bf
    cp h                                          ; $4c04: $bc
    rst $10                                       ; $4c05: $d7
    ld l, e                                       ; $4c06: $6b
    inc hl                                        ; $4c07: $23
    db $fc                                        ; $4c08: $fc
    add [hl]                                      ; $4c09: $86
    ld d, b                                       ; $4c0a: $50
    adc c                                         ; $4c0b: $89
    ret nc                                        ; $4c0c: $d0

    ld a, [bc]                                    ; $4c0d: $0a
    ld [hl], $51                                  ; $4c0e: $36 $51
    rla                                           ; $4c10: $17
    scf                                           ; $4c11: $37
    sub l                                         ; $4c12: $95
    cp $99                                        ; $4c13: $fe $99
    xor a                                         ; $4c15: $af
    add d                                         ; $4c16: $82
    ldh a, [$a5]                                  ; $4c17: $f0 $a5
    ld a, d                                       ; $4c19: $7a
    db $ed                                        ; $4c1a: $ed
    call c, $d0a5                                 ; $4c1b: $dc $a5 $d0
    dec b                                         ; $4c1e: $05
    halt                                          ; $4c1f: $76
    ld h, e                                       ; $4c20: $63
    ret z                                         ; $4c21: $c8

    rst $28                                       ; $4c22: $ef
    db $fd                                        ; $4c23: $fd
    sub c                                         ; $4c24: $91
    or c                                          ; $4c25: $b1
    ld [$15fb], a                                 ; $4c26: $ea $fb $15
    db $ed                                        ; $4c29: $ed

jr_045_4c2a:
    ld hl, $d3de                                  ; $4c2a: $21 $de $d3
    xor b                                         ; $4c2d: $a8
    sbc l                                         ; $4c2e: $9d
    jr nz, jr_045_4c58                            ; $4c2f: $20 $27

    db $e4                                        ; $4c31: $e4
    cp l                                          ; $4c32: $bd
    ld c, h                                       ; $4c33: $4c
    ld a, [hl]                                    ; $4c34: $7e
    ld l, a                                       ; $4c35: $6f
    adc a                                         ; $4c36: $8f
    daa                                           ; $4c37: $27
    ld c, c                                       ; $4c38: $49
    ld e, b                                       ; $4c39: $58
    ld a, c                                       ; $4c3a: $79
    cp e                                          ; $4c3b: $bb
    add hl, bc                                    ; $4c3c: $09
    sub l                                         ; $4c3d: $95
    inc d                                         ; $4c3e: $14
    xor d                                         ; $4c3f: $aa
    ld l, c                                       ; $4c40: $69
    or b                                          ; $4c41: $b0
    xor e                                         ; $4c42: $ab
    jr nz, jr_045_4c81                            ; $4c43: $20 $3c

    or c                                          ; $4c45: $b1
    db $d3                                        ; $4c46: $d3
    add sp, -$65                                  ; $4c47: $e8 $9b
    sbc d                                         ; $4c49: $9a
    db $fc                                        ; $4c4a: $fc
    sbc $1f                                       ; $4c4b: $de $1f
    and [hl]                                      ; $4c4d: $a6
    sbc a                                         ; $4c4e: $9f
    ld l, d                                       ; $4c4f: $6a
    ld c, d                                       ; $4c50: $4a
    ld sp, hl                                     ; $4c51: $f9
    inc d                                         ; $4c52: $14
    ld [$4a1c], a                                 ; $4c53: $ea $1c $4a
    add hl, sp                                    ; $4c56: $39
    ld a, [c]                                     ; $4c57: $f2

jr_045_4c58:
    ld [hl], l                                    ; $4c58: $75
    add hl, sp                                    ; $4c59: $39
    ld [hl], c                                    ; $4c5a: $71
    add [hl]                                      ; $4c5b: $86
    ld a, [bc]                                    ; $4c5c: $0a
    jp nz, Jump_045_6a2f                          ; $4c5d: $c2 $2f $6a

    or d                                          ; $4c60: $b2
    ccf                                           ; $4c61: $3f
    add l                                         ; $4c62: $85
    ld a, [hl]                                    ; $4c63: $7e
    cp h                                          ; $4c64: $bc
    ld h, e                                       ; $4c65: $63
    call nz, Call_000_3a8f                        ; $4c66: $c4 $8f $3a
    cpl                                           ; $4c69: $2f
    and h                                         ; $4c6a: $a4
    inc e                                         ; $4c6b: $1c
    ld sp, hl                                     ; $4c6c: $f9
    db $fd                                        ; $4c6d: $fd
    ld a, [bc]                                    ; $4c6e: $0a
    db $ed                                        ; $4c6f: $ed
    ld hl, $d3de                                  ; $4c70: $21 $de $d3
    xor b                                         ; $4c73: $a8
    sbc l                                         ; $4c74: $9d
    jr nz, jr_045_4cf3                            ; $4c75: $20 $7c

    or c                                          ; $4c77: $b1
    inc hl                                        ; $4c78: $23
    or c                                          ; $4c79: $b1
    ld e, a                                       ; $4c7a: $5f
    ld h, $b7                                     ; $4c7b: $26 $b7
    or e                                          ; $4c7d: $b3
    ld d, b                                       ; $4c7e: $50
    pop hl                                        ; $4c7f: $e1
    adc c                                         ; $4c80: $89

jr_045_4c81:
    add d                                         ; $4c81: $82
    ld a, [hl]                                    ; $4c82: $7e
    ld [hl], $a2                                  ; $4c83: $36 $a2
    or b                                          ; $4c85: $b0
    jp $f274                                      ; $4c86: $c3 $74 $f2


    inc h                                         ; $4c89: $24
    add hl, bc                                    ; $4c8a: $09
    dec hl                                        ; $4c8b: $2b
    ld l, a                                       ; $4c8c: $6f

Call_045_4c8d:
    scf                                           ; $4c8d: $37
    cp d                                          ; $4c8e: $ba
    ld a, b                                       ; $4c8f: $78
    rst $18                                       ; $4c90: $df
    db $dd                                        ; $4c91: $dd
    ld a, $7e                                     ; $4c92: $3e $7e
    ld d, c                                       ; $4c94: $51
    jp $c117                                      ; $4c95: $c3 $17 $c1


Call_045_4c98:
    adc [hl]                                      ; $4c98: $8e
    sbc e                                         ; $4c99: $9b
    cp l                                          ; $4c9a: $bd
    sbc h                                         ; $4c9b: $9c
    db $ed                                        ; $4c9c: $ed
    adc c                                         ; $4c9d: $89
    dec de                                        ; $4c9e: $1b
    ret                                           ; $4c9f: $c9


    add l                                         ; $4ca0: $85
    jp hl                                         ; $4ca1: $e9


    ld e, h                                       ; $4ca2: $5c
    ld c, [hl]                                    ; $4ca3: $4e
    call c, $a30b                                 ; $4ca4: $dc $0b $a3
    ld e, h                                       ; $4ca7: $5c
    ld [hl], l                                    ; $4ca8: $75
    db $fd                                        ; $4ca9: $fd
    ld a, [bc]                                    ; $4caa: $0a
    db $ed                                        ; $4cab: $ed
    ld hl, $d3de                                  ; $4cac: $21 $de $d3
    xor b                                         ; $4caf: $a8
    sbc l                                         ; $4cb0: $9d

jr_045_4cb1:
    jr nz, jr_045_4cb1                            ; $4cb1: $20 $fe

    rla                                           ; $4cb3: $17
    sbc c                                         ; $4cb4: $99
    ret c                                         ; $4cb5: $d8

    dec l                                         ; $4cb6: $2d
    ld h, e                                       ; $4cb7: $63
    db $fc                                        ; $4cb8: $fc
    inc a                                         ; $4cb9: $3c
    ld sp, hl                                     ; $4cba: $f9
    sbc l                                         ; $4cbb: $9d
    ld [$b94b], a                                 ; $4cbc: $ea $4b $b9
    ld l, d                                       ; $4cbf: $6a
    ld [hl], d                                    ; $4cc0: $72
    ld h, c                                       ; $4cc1: $61
    ld a, [hl-]                                   ; $4cc2: $3a
    sub a                                         ; $4cc3: $97
    cp d                                          ; $4cc4: $ba
    db $ed                                        ; $4cc5: $ed
    rst $10                                       ; $4cc6: $d7
    ld e, h                                       ; $4cc7: $5c
    ld bc, $21ed                                  ; $4cc8: $01 $ed $21
    sbc $d3                                       ; $4ccb: $de $d3
    xor b                                         ; $4ccd: $a8
    sbc l                                         ; $4cce: $9d
    jr nz, jr_045_4d47                            ; $4ccf: $20 $76

    dec d                                         ; $4cd1: $15
    dec e                                         ; $4cd2: $1d
    ld [hl], d                                    ; $4cd3: $72
    ld h, h                                       ; $4cd4: $64
    ld [c], a                                     ; $4cd5: $e2
    ld b, e                                       ; $4cd6: $43
    ld a, a                                       ; $4cd7: $7f
    sub a                                         ; $4cd8: $97
    ei                                            ; $4cd9: $fb
    ld [hl], d                                    ; $4cda: $72
    add c                                         ; $4cdb: $81
    rst $10                                       ; $4cdc: $d7
    dec bc                                        ; $4cdd: $0b
    and $49                                       ; $4cde: $e6 $49
    push af                                       ; $4ce0: $f5
    jp c, $e9b9                                   ; $4ce1: $da $b9 $e9

    ei                                            ; $4ce4: $fb
    ld a, $e5                                     ; $4ce5: $3e $e5
    ld a, $7a                                     ; $4ce7: $3e $7a
    ld [$e7bc], sp                                ; $4ce9: $08 $bc $e7
    ld h, $e5                                     ; $4cec: $26 $e5
    ld a, $ea                                     ; $4cee: $3e $ea
    ld b, l                                       ; $4cf0: $45
    and [hl]                                      ; $4cf1: $a6
    ld c, h                                       ; $4cf2: $4c

jr_045_4cf3:
    rst $18                                       ; $4cf3: $df
    rst $30                                       ; $4cf4: $f7
    ld e, c                                       ; $4cf5: $59
    inc c                                         ; $4cf6: $0c
    ld c, $0a                                     ; $4cf7: $0e $0a
    jp nz, Jump_000_20a8                          ; $4cf9: $c2 $a8 $20

    adc h                                         ; $4cfc: $8c
    db $ec                                        ; $4cfd: $ec
    rla                                           ; $4cfe: $17
    ld [hl], a                                    ; $4cff: $77
    rst $08                                       ; $4d00: $cf
    inc de                                        ; $4d01: $13
    scf                                           ; $4d02: $37
    jp nz, Jump_045_5136                          ; $4d03: $c2 $36 $51

    rla                                           ; $4d06: $17
    ld b, [hl]                                    ; $4d07: $46
    cp a                                          ; $4d08: $bf
    ld [bc], a                                    ; $4d09: $02
    db $ed                                        ; $4d0a: $ed
    ld hl, $d3de                                  ; $4d0b: $21 $de $d3
    xor b                                         ; $4d0e: $a8
    sbc l                                         ; $4d0f: $9d
    jr nz, jr_045_4d2c                            ; $4d10: $20 $1a

    ld a, l                                       ; $4d12: $7d
    cp e                                          ; $4d13: $bb
    ld [c], a                                     ; $4d14: $e2
    ld b, [hl]                                    ; $4d15: $46
    ld h, $4c                                     ; $4d16: $26 $4c
    sbc c                                         ; $4d18: $99
    sub c                                         ; $4d19: $91
    adc l                                         ; $4d1a: $8d
    jr nc, jr_045_4d62                            ; $4d1b: $30 $45

    cp h                                          ; $4d1d: $bc
    or b                                          ; $4d1e: $b0
    ld h, e                                       ; $4d1f: $63
    inc b                                         ; $4d20: $04
    or c                                          ; $4d21: $b1
    ld e, e                                       ; $4d22: $5b
    add $f8                                       ; $4d23: $c6 $f8
    ld h, l                                       ; $4d25: $65
    ld a, [c]                                     ; $4d26: $f2
    dec sp                                        ; $4d27: $3b
    push de                                       ; $4d28: $d5
    sub a                                         ; $4d29: $97
    ld [hl], d                                    ; $4d2a: $72
    push de                                       ; $4d2b: $d5

jr_045_4d2c:
    db $e4                                        ; $4d2c: $e4
    jp nz, Jump_000_2e74                          ; $4d2d: $c2 $74 $2e

    ld [hl], l                                    ; $4d30: $75
    dec sp                                        ; $4d31: $3b
    xor d                                         ; $4d32: $aa
    cp c                                          ; $4d33: $b9
    ld [bc], a                                    ; $4d34: $02
    db $ed                                        ; $4d35: $ed
    ld hl, $d3de                                  ; $4d36: $21 $de $d3
    xor b                                         ; $4d39: $a8
    sbc l                                         ; $4d3a: $9d
    jr nz, jr_045_4db9                            ; $4d3b: $20 $7c

    pop af                                        ; $4d3d: $f1
    cp a                                          ; $4d3e: $bf
    ret z                                         ; $4d3f: $c8

    ld b, h                                       ; $4d40: $44
    dec a                                         ; $4d41: $3d
    ld c, a                                       ; $4d42: $4f
    rst $18                                       ; $4d43: $df
    rst $30                                       ; $4d44: $f7
    and c                                         ; $4d45: $a1
    sub d                                         ; $4d46: $92

jr_045_4d47:
    xor c                                         ; $4d47: $a9
    db $f4                                        ; $4d48: $f4
    add [hl]                                      ; $4d49: $86
    cp l                                          ; $4d4a: $bd
    and a                                         ; $4d4b: $a7
    ld d, [hl]                                    ; $4d4c: $56
    call $2b5a                                    ; $4d4d: $cd $5a $2b
    db $ed                                        ; $4d50: $ed
    ld hl, $8dee                                  ; $4d51: $21 $ee $8d
    ld de, $f8be                                  ; $4d54: $11 $be $f8
    ld e, a                                       ; $4d57: $5f
    ld h, h                                       ; $4d58: $64
    ld h, d                                       ; $4d59: $62
    jr z, @-$6b                                   ; $4d5a: $28 $93

    push hl                                       ; $4d5c: $e5
    ld a, [de]                                    ; $4d5d: $1a
    adc b                                         ; $4d5e: $88
    sbc $6e                                       ; $4d5f: $de $6e
    rst $28                                       ; $4d61: $ef

jr_045_4d62:
    rla                                           ; $4d62: $17
    ld b, [hl]                                    ; $4d63: $46
    call $bdb4                                    ; $4d64: $cd $b4 $bd
    inc hl                                        ; $4d67: $23
    or h                                          ; $4d68: $b4
    add d                                         ; $4d69: $82
    ld c, l                                       ; $4d6a: $4d
    call nc, Call_045_6ea5                        ; $4d6b: $d4 $a5 $6e
    ei                                            ; $4d6e: $fb
    or c                                          ; $4d6f: $b1
    ld [hl], e                                    ; $4d70: $73
    cp $43                                        ; $4d71: $fe $43
    pop hl                                        ; $4d73: $e1
    rlc d                                         ; $4d74: $cb $02
    bit 7, [hl]                                   ; $4d76: $cb $7e
    ld [hl], c                                    ; $4d78: $71
    rst $30                                       ; $4d79: $f7
    add [hl]                                      ; $4d7a: $86
    ld d, b                                       ; $4d7b: $50
    ret                                           ; $4d7c: $c9


    adc c                                         ; $4d7d: $89
    ld a, e                                       ; $4d7e: $7b
    ld h, c                                       ; $4d7f: $61
    sub h                                         ; $4d80: $94
    xor e                                         ; $4d81: $ab
    ld h, $35                                     ; $4d82: $26 $35
    and d                                         ; $4d84: $a2
    xor [hl]                                      ; $4d85: $ae
    ld [bc], a                                    ; $4d86: $02
    sub c                                         ; $4d87: $91
    ld hl, sp+$3c                                 ; $4d88: $f8 $3c
    dec [hl]                                      ; $4d8a: $35
    ld d, a                                       ; $4d8b: $57
    db $ed                                        ; $4d8c: $ed
    ld hl, $d3de                                  ; $4d8d: $21 $de $d3
    xor b                                         ; $4d90: $a8
    sbc l                                         ; $4d91: $9d
    jr nz, jr_045_4dbb                            ; $4d92: $20 $27

    xor $85                                       ; $4d94: $ee $85
    ld e, a                                       ; $4d96: $5f
    ld h, $54                                     ; $4d97: $26 $54
    ld a, [c]                                     ; $4d99: $f2
    inc h                                         ; $4d9a: $24
    add hl, bc                                    ; $4d9b: $09
    dec hl                                        ; $4d9c: $2b
    ld l, a                                       ; $4d9d: $6f
    scf                                           ; $4d9e: $37
    add hl, sp                                    ; $4d9f: $39
    ld c, c                                       ; $4da0: $49
    dec [hl]                                      ; $4da1: $35
    ld l, d                                       ; $4da2: $6a
    ld [c], a                                     ; $4da3: $e2
    db $fc                                        ; $4da4: $fc
    ret z                                         ; $4da5: $c8

    and l                                         ; $4da6: $a5
    ret nc                                        ; $4da7: $d0

    cp c                                          ; $4da8: $b9
    inc a                                         ; $4da9: $3c
    di                                            ; $4daa: $f3
    dec sp                                        ; $4dab: $3b
    rst $20                                       ; $4dac: $e7
    cp a                                          ; $4dad: $bf
    ld a, b                                       ; $4dae: $78
    xor a                                         ; $4daf: $af
    sbc h                                         ; $4db0: $9c
    cp e                                          ; $4db1: $bb
    cp h                                          ; $4db2: $bc
    ld e, [hl]                                    ; $4db3: $5e
    ld a, a                                       ; $4db4: $7f
    cpl                                           ; $4db5: $2f
    sub e                                         ; $4db6: $93
    ld b, d                                       ; $4db7: $42
    and e                                         ; $4db8: $a3

jr_045_4db9:
    ld l, $8c                                     ; $4db9: $2e $8c

jr_045_4dbb:
    ld d, b                                       ; $4dbb: $50
    add hl, bc                                    ; $4dbc: $09
    cp h                                          ; $4dbd: $bc
    ld e, [hl]                                    ; $4dbe: $5e
    jr nc, jr_045_4e10                            ; $4dbf: $30 $4f

    inc e                                         ; $4dc1: $1c
    or l                                          ; $4dc2: $b5
    rst $20                                       ; $4dc3: $e7
    inc hl                                        ; $4dc4: $23

Call_045_4dc5:
    and a                                         ; $4dc5: $a7
    and $0a                                       ; $4dc6: $e6 $0a
    db $ed                                        ; $4dc8: $ed
    ld hl, $d3de                                  ; $4dc9: $21 $de $d3
    xor b                                         ; $4dcc: $a8
    sbc l                                         ; $4dcd: $9d

jr_045_4dce:
    jr nz, jr_045_4dce                            ; $4dce: $20 $fe

    rla                                           ; $4dd0: $17
    sbc c                                         ; $4dd1: $99

jr_045_4dd2:
    inc a                                         ; $4dd2: $3c
    xor l                                         ; $4dd3: $ad
    jr nz, jr_045_4dd2                            ; $4dd4: $20 $fc

    inc a                                         ; $4dd6: $3c
    cp c                                          ; $4dd7: $b9
    dec e                                         ; $4dd8: $1d
    and [hl]                                      ; $4dd9: $a6
    sub e                                         ; $4dda: $93
    ld a, l                                       ; $4ddb: $7d
    inc h                                         ; $4ddc: $24
    or $9e                                        ; $4ddd: $f6 $9e
    sbc d                                         ; $4ddf: $9a
    jp hl                                         ; $4de0: $e9


    sub b                                         ; $4de1: $90
    and d                                         ; $4de2: $a2
    ldh a, [$c7]                                  ; $4de3: $f0 $c7
    ld c, l                                       ; $4de5: $4d
    and l                                         ; $4de6: $a5
    ccf                                           ; $4de7: $3f
    ld a, c                                       ; $4de8: $79
    ld [c], a                                     ; $4de9: $e2
    adc l                                         ; $4dea: $8d
    jr nz, @+$60                                  ; $4deb: $20 $5e

    ld a, [hl+]                                   ; $4ded: $2a
    call nz, $f91b                                ; $4dee: $c4 $1b $f9
    ld d, b                                       ; $4df1: $50
    ld sp, hl                                     ; $4df2: $f9
    sub b                                         ; $4df3: $90
    or e                                          ; $4df4: $b3
    ld sp, hl                                     ; $4df5: $f9
    ld d, e                                       ; $4df6: $53
    ld h, [hl]                                    ; $4df7: $66
    ld a, a                                       ; $4df8: $7f
    cp a                                          ; $4df9: $bf
    ld [bc], a                                    ; $4dfa: $02
    db $ed                                        ; $4dfb: $ed
    ld hl, $d3de                                  ; $4dfc: $21 $de $d3
    xor b                                         ; $4dff: $a8
    sbc l                                         ; $4e00: $9d
    jr nz, @+$51                                  ; $4e01: $20 $4f

    dec hl                                        ; $4e03: $2b
    ld [$4cbf], sp                                ; $4e04: $08 $bf $4c
    ld c, [hl]                                    ; $4e07: $4e
    ld d, d                                       ; $4e08: $52
    cp l                                          ; $4e09: $bd
    inc e                                         ; $4e0a: $1c
    db $ec                                        ; $4e0b: $ec
    or e                                          ; $4e0c: $b3
    ret nz                                        ; $4e0d: $c0

    xor d                                         ; $4e0e: $aa
    rla                                           ; $4e0f: $17

jr_045_4e10:
    ld [$1723], sp                                ; $4e10: $08 $23 $17
    and [hl]                                      ; $4e13: $a6
    ld [hl], e                                    ; $4e14: $73
    xor c                                         ; $4e15: $a9
    db $db                                        ; $4e16: $db
    ld d, c                                       ; $4e17: $51
    call Call_045_4874                            ; $4e18: $cd $74 $48
    ld d, c                                       ; $4e1b: $51
    ld hl, sp-$1d                                 ; $4e1c: $f8 $e3
    and [hl]                                      ; $4e1e: $a6
    jp nc, Jump_000_3c9f                          ; $4e1f: $d2 $9f $3c

    pop af                                        ; $4e22: $f1
    ld b, [hl]                                    ; $4e23: $46
    db $10                                        ; $4e24: $10
    cpl                                           ; $4e25: $2f
    dec d                                         ; $4e26: $15
    ld [c], a                                     ; $4e27: $e2
    adc l                                         ; $4e28: $8d
    ld a, h                                       ; $4e29: $7c
    xor b                                         ; $4e2a: $a8
    ld a, h                                       ; $4e2b: $7c
    ret z                                         ; $4e2c: $c8

    reti                                          ; $4e2d: $d9


    db $fc                                        ; $4e2e: $fc
    add hl, hl                                    ; $4e2f: $29
    or e                                          ; $4e30: $b3
    cp a                                          ; $4e31: $bf
    ld e, a                                       ; $4e32: $5f
    ld bc, $21ed                                  ; $4e33: $01 $ed $21
    sbc $d3                                       ; $4e36: $de $d3
    xor b                                         ; $4e38: $a8
    sbc l                                         ; $4e39: $9d
    jr nz, @+$51                                  ; $4e3a: $20 $4f

    dec hl                                        ; $4e3c: $2b
    ld [$4cbf], sp                                ; $4e3d: $08 $bf $4c
    ld c, [hl]                                    ; $4e40: $4e
    ld d, d                                       ; $4e41: $52
    cp l                                          ; $4e42: $bd
    inc e                                         ; $4e43: $1c
    db $ec                                        ; $4e44: $ec
    or e                                          ; $4e45: $b3
    ret nz                                        ; $4e46: $c0

    xor d                                         ; $4e47: $aa
    rla                                           ; $4e48: $17
    ld [$1723], sp                                ; $4e49: $08 $23 $17
    and [hl]                                      ; $4e4c: $a6

Jump_045_4e4d:
    ld [hl], e                                    ; $4e4d: $73
    xor c                                         ; $4e4e: $a9
    db $db                                        ; $4e4f: $db
    ld a, [hl]                                    ; $4e50: $7e
    call Call_045_4874                            ; $4e51: $cd $74 $48
    ld d, c                                       ; $4e54: $51
    ld hl, sp-$1d                                 ; $4e55: $f8 $e3
    and [hl]                                      ; $4e57: $a6
    jp nc, Jump_000_3c9f                          ; $4e58: $d2 $9f $3c

    pop af                                        ; $4e5b: $f1
    ld b, [hl]                                    ; $4e5c: $46
    db $10                                        ; $4e5d: $10
    cpl                                           ; $4e5e: $2f
    dec d                                         ; $4e5f: $15
    ld [c], a                                     ; $4e60: $e2
    adc l                                         ; $4e61: $8d
    ld a, h                                       ; $4e62: $7c
    xor b                                         ; $4e63: $a8
    ld a, h                                       ; $4e64: $7c
    ret z                                         ; $4e65: $c8

    reti                                          ; $4e66: $d9


    db $fc                                        ; $4e67: $fc
    add hl, hl                                    ; $4e68: $29
    or e                                          ; $4e69: $b3
    cp a                                          ; $4e6a: $bf
    ld e, a                                       ; $4e6b: $5f
    ld bc, $531d                                  ; $4e6c: $01 $1d $53
    and $cb                                       ; $4e6f: $e6 $cb
    add l                                         ; $4e71: $85
    jp hl                                         ; $4e72: $e9


    ld e, h                                       ; $4e73: $5c
    ld [$9fb6], a                                 ; $4e74: $ea $b6 $9f
    ld [hl-], a                                   ; $4e77: $32
    ld [hl-], a                                   ; $4e78: $32
    add hl, hl                                    ; $4e79: $29
    ld l, [hl]                                    ; $4e7a: $6e
    xor d                                         ; $4e7b: $aa
    push hl                                       ; $4e7c: $e5
    xor l                                         ; $4e7d: $ad
    ld e, h                                       ; $4e7e: $5c
    call $fa78                                    ; $4e7f: $cd $78 $fa
    sub c                                         ; $4e82: $91
    ld sp, $431b                                  ; $4e83: $31 $1b $43
    call $fa78                                    ; $4e86: $cd $78 $fa
    sub c                                         ; $4e89: $91
    ld sp, $431b                                  ; $4e8a: $31 $1b $43
    call Call_000_1d15                            ; $4e8d: $cd $15 $1d
    ld d, e                                       ; $4e90: $53
    ld h, [hl]                                    ; $4e91: $66
    adc a                                         ; $4e92: $8f
    rrca                                          ; $4e93: $0f
    sub l                                         ; $4e94: $95
    or b                                          ; $4e95: $b0
    dec a                                         ; $4e96: $3d
    di                                            ; $4e97: $f3
    add sp, $52                                   ; $4e98: $e8 $52
    jr nz, jr_045_4f18                            ; $4e9a: $20 $7c

    ld [hl], c                                    ; $4e9c: $71
    ld a, [hl]                                    ; $4e9d: $7e
    db $e4                                        ; $4e9e: $e4
    jp nz, Jump_000_2e74                          ; $4e9f: $c2 $74 $2e

    ld [hl], l                                    ; $4ea2: $75
    dec sp                                        ; $4ea3: $3b
    ld a, [bc]                                    ; $4ea4: $0a
    ld [hl], d                                    ; $4ea5: $72
    ld h, c                                       ; $4ea6: $61
    ld a, [hl-]                                   ; $4ea7: $3a
    sub a                                         ; $4ea8: $97
    cp d                                          ; $4ea9: $ba
    db $ed                                        ; $4eaa: $ed
    and a                                         ; $4eab: $a7
    adc h                                         ; $4eac: $8c
    ld c, h                                       ; $4ead: $4c
    ld a, b                                       ; $4eae: $78
    ld c, h                                       ; $4eaf: $4c
    sbc [hl]                                      ; $4eb0: $9e
    cpl                                           ; $4eb1: $2f
    cp a                                          ; $4eb2: $bf
    ld d, e                                       ; $4eb3: $53
    ld a, l                                       ; $4eb4: $7d
    add hl, hl                                    ; $4eb5: $29
    ld d, a                                       ; $4eb6: $57
    ld c, l                                       ; $4eb7: $4d
    call $b515                                    ; $4eb8: $cd $15 $b5
    rst $38                                       ; $4ebb: $ff
    or d                                          ; $4ebc: $b2
    ccf                                           ; $4ebd: $3f
    dec b                                         ; $4ebe: $05
    ld d, d                                       ; $4ebf: $52
    sbc [hl]                                      ; $4ec0: $9e
    ld a, b                                       ; $4ec1: $78
    inc hl                                        ; $4ec2: $23
    adc b                                         ; $4ec3: $88
    cp d                                          ; $4ec4: $ba
    and b                                         ; $4ec5: $a0
    inc d                                         ; $4ec6: $14
    jr jr_045_4f1b                                ; $4ec7: $18 $52

    ld c, l                                       ; $4ec9: $4d
    dec b                                         ; $4eca: $05
    pop hl                                        ; $4ecb: $e1
    rla                                           ; $4ecc: $17
    ld a, h                                       ; $4ecd: $7c
    dec b                                         ; $4ece: $05
    ld h, c                                       ; $4ecf: $61
    db $e4                                        ; $4ed0: $e4
    xor d                                         ; $4ed1: $aa
    adc d                                         ; $4ed2: $8a
    ld a, [bc]                                    ; $4ed3: $0a
    ld a, [c]                                     ; $4ed4: $f2
    pop af                                        ; $4ed5: $f1
    and c                                         ; $4ed6: $a1
    cp a                                          ; $4ed7: $bf
    bit 7, l                                      ; $4ed8: $cb $7d
    cp c                                          ; $4eda: $b9
    ld a, b                                       ; $4edb: $78
    rst $00                                       ; $4edc: $c7
    xor d                                         ; $4edd: $aa
    adc a                                         ; $4ede: $8f
    cp d                                          ; $4edf: $ba
    ld d, h                                       ; $4ee0: $54
    xor a                                         ; $4ee1: $af
    db $dd                                        ; $4ee2: $dd
    rst $10                                       ; $4ee3: $d7
    ld e, h                                       ; $4ee4: $5c
    ld bc, $521d                                  ; $4ee5: $01 $1d $52
    inc d                                         ; $4ee8: $14
    cp $b8                                        ; $4ee9: $fe $b8
    xor c                                         ; $4eeb: $a9
    db $f4                                        ; $4eec: $f4
    daa                                           ; $4eed: $27
    ld c, a                                       ; $4eee: $4f
    cp h                                          ; $4eef: $bc
    ld de, $5d44                                  ; $4ef0: $11 $44 $5d
    cp h                                          ; $4ef3: $bc
    and a                                         ; $4ef4: $a7
    ld d, c                                       ; $4ef5: $51
    dec sp                                        ; $4ef6: $3b
    ld b, c                                       ; $4ef7: $41
    ld hl, sp+$62                                 ; $4ef8: $f8 $62
    db $10                                        ; $4efa: $10
    add l                                         ; $4efb: $85
    ld e, h                                       ; $4efc: $5c
    ld d, l                                       ; $4efd: $55
    ld d, c                                       ; $4efe: $51
    ld b, c                                       ; $4eff: $41
    ld a, $4c                                     ; $4f00: $3e $4c
    sbc c                                         ; $4f02: $99
    cpl                                           ; $4f03: $2f
    jp c, Jump_000_3cbe                           ; $4f04: $da $be $3c

    di                                            ; $4f07: $f3
    dec sp                                        ; $4f08: $3b
    rst $20                                       ; $4f09: $e7
    cp a                                          ; $4f0a: $bf
    xor b                                         ; $4f0b: $a8
    adc e                                         ; $4f0c: $8b
    inc a                                         ; $4f0d: $3c
    ld d, e                                       ; $4f0e: $53
    ei                                            ; $4f0f: $fb
    ret z                                         ; $4f10: $c8

    ld c, b                                       ; $4f11: $48
    xor d                                         ; $4f12: $aa
    rst $10                                       ; $4f13: $d7
    adc $7d                                       ; $4f14: $ce $7d
    inc d                                         ; $4f16: $14
    or l                                          ; $4f17: $b5

Call_045_4f18:
jr_045_4f18:
    rla                                           ; $4f18: $17
    ld b, [hl]                                    ; $4f19: $46
    xor b                                         ; $4f1a: $a8

jr_045_4f1b:
    call nz, $a54d                                ; $4f1b: $c4 $4d $a5
    ld a, a                                       ; $4f1e: $7f
    and $ab                                       ; $4f1f: $e6 $ab
    jr nz, @+$3e                                  ; $4f21: $20 $3c

    db $fd                                        ; $4f23: $fd
    ld a, [bc]                                    ; $4f24: $0a
    xor l                                         ; $4f25: $ad

jr_045_4f26:
    rst $08                                       ; $4f26: $cf
    ld [hl-], a                                   ; $4f27: $32
    ld a, c                                       ; $4f28: $79
    ld [de], a                                    ; $4f29: $12
    ld d, $37                                     ; $4f2a: $16 $37
    sub l                                         ; $4f2c: $95
    cp $e4                                        ; $4f2d: $fe $e4
    ld a, c                                       ; $4f2f: $79
    ld [c], a                                     ; $4f30: $e2
    ld b, e                                       ; $4f31: $43
    ld d, c                                       ; $4f32: $51
    jr jr_045_4f26                                ; $4f33: $18 $f1

    sbc [hl]                                      ; $4f35: $9e
    ld b, [hl]                                    ; $4f36: $46
    db $ed                                        ; $4f37: $ed
    inc b                                         ; $4f38: $04
    cp d                                          ; $4f39: $ba
    ld e, h                                       ; $4f3a: $5c
    sbc b                                         ; $4f3b: $98
    adc $e5                                       ; $4f3c: $ce $e5
    ld c, c                                       ; $4f3e: $49
    ld [de], a                                    ; $4f3f: $12
    ld d, [hl]                                    ; $4f40: $56
    sbc $2e                                       ; $4f41: $de $2e
    dec b                                         ; $4f43: $05
    sub l                                         ; $4f44: $95
    sbc $5e                                       ; $4f45: $de $5e
    ld h, $d5                                     ; $4f47: $26 $d5
    ld l, h                                       ; $4f49: $6c
    ld e, $5d                                     ; $4f4a: $1e $5d
    xor d                                         ; $4f4c: $aa
    reti                                          ; $4f4d: $d9


    inc a                                         ; $4f4e: $3c
    ld d, c                                       ; $4f4f: $51
    ret nc                                        ; $4f50: $d0

    rst $08                                       ; $4f51: $cf
    cp [hl]                                       ; $4f52: $be
    cp [hl]                                       ; $4f53: $be
    rst $28                                       ; $4f54: $ef
    ld d, a                                       ; $4f55: $57
    xor l                                         ; $4f56: $ad

jr_045_4f57:
    rst $08                                       ; $4f57: $cf
    ld [hl-], a                                   ; $4f58: $32
    ld a, c                                       ; $4f59: $79
    ld [de], a                                    ; $4f5a: $12
    ld d, $37                                     ; $4f5b: $16 $37
    sub l                                         ; $4f5d: $95
    cp $e4                                        ; $4f5e: $fe $e4
    ld a, c                                       ; $4f60: $79
    ld [c], a                                     ; $4f61: $e2
    ld b, e                                       ; $4f62: $43
    ld d, c                                       ; $4f63: $51
    jr jr_045_4f57                                ; $4f64: $18 $f1

    sbc [hl]                                      ; $4f66: $9e
    ld b, [hl]                                    ; $4f67: $46
    db $ed                                        ; $4f68: $ed
    inc b                                         ; $4f69: $04
    cp d                                          ; $4f6a: $ba
    ld hl, sp-$01                                 ; $4f6b: $f8 $ff
    or d                                          ; $4f6d: $b2
    ccf                                           ; $4f6e: $3f
    dec b                                         ; $4f6f: $05
    ld d, d                                       ; $4f70: $52
    sbc [hl]                                      ; $4f71: $9e
    ld a, b                                       ; $4f72: $78
    inc hl                                        ; $4f73: $23
    adc b                                         ; $4f74: $88
    di                                            ; $4f75: $f3
    inc hl                                        ; $4f76: $23
    rla                                           ; $4f77: $17
    and [hl]                                      ; $4f78: $a6
    ld [hl], e                                    ; $4f79: $73
    add hl, sp                                    ; $4f7a: $39
    ld [hl], c                                    ; $4f7b: $71
    cpl                                           ; $4f7c: $2f
    adc h                                         ; $4f7d: $8c
    ld [hl], d                                    ; $4f7e: $72
    push de                                       ; $4f7f: $d5
    push hl                                       ; $4f80: $e5
    push af                                       ; $4f81: $f5
    ld a, [$997b]                                 ; $4f82: $fa $7b $99
    ld d, b                                       ; $4f85: $50
    ld sp, hl                                     ; $4f86: $f9
    inc l                                         ; $4f87: $2c
    jp $e210                                      ; $4f88: $c3 $10 $e2


    ld b, a                                       ; $4f8b: $47
    pop bc                                        ; $4f8c: $c1
    ld e, l                                       ; $4f8d: $5d
    ld sp, hl                                     ; $4f8e: $f9
    ld a, [bc]                                    ; $4f8f: $0a
    jp nz, $f548                                  ; $4f90: $c2 $48 $f5

    sbc d                                         ; $4f93: $9a
    halt                                          ; $4f94: $76
    ld h, e                                       ; $4f95: $63
    xor b                                         ; $4f96: $a8
    cp c                                          ; $4f97: $b9
    ld [bc], a                                    ; $4f98: $02
    db $ed                                        ; $4f99: $ed
    ld hl, $d3de                                  ; $4f9a: $21 $de $d3
    xor b                                         ; $4f9d: $a8
    sbc l                                         ; $4f9e: $9d

jr_045_4f9f:
    jr nz, jr_045_4f9f                            ; $4f9f: $20 $fe

    rla                                           ; $4fa1: $17
    sbc c                                         ; $4fa2: $99
    sbc h                                         ; $4fa3: $9c
    jr c, jr_045_4fe9                             ; $4fa4: $38 $43

    dec b                                         ; $4fa6: $05
    pop hl                                        ; $4fa7: $e1
    rst $20                                       ; $4fa8: $e7

Call_045_4fa9:
    adc c                                         ; $4fa9: $89
    inc c                                         ; $4faa: $0c
    add e                                         ; $4fab: $83
    sbc h                                         ; $4fac: $9c
    ld e, l                                       ; $4fad: $5d

Call_045_4fae:
    ld b, c                                       ; $4fae: $41
    jr @-$25                                      ; $4faf: $18 $d9

    ld e, $10                                     ; $4fb1: $1e $10
    ld a, $ae                                     ; $4fb3: $3e $ae
    daa                                           ; $4fb5: $27
    ld a, [bc]                                    ; $4fb6: $0a
    rla                                           ; $4fb7: $17
    push af                                       ; $4fb8: $f5
    ld [hl+], a                                   ; $4fb9: $22
    rla                                           ; $4fba: $17
    rst $20                                       ; $4fbb: $e7
    ld b, a                                       ; $4fbc: $47
    ld d, $3a                                     ; $4fbd: $16 $3a
    sub a                                         ; $4fbf: $97
    inc de                                        ; $4fc0: $13
    rst $28                                       ; $4fc1: $ef
    ld a, $4d                                     ; $4fc2: $3e $4d
    add e                                         ; $4fc4: $83
    ld hl, $da8a                                  ; $4fc5: $21 $8a $da
    dec bc                                        ; $4fc8: $0b
    inc hl                                        ; $4fc9: $23
    ld d, h                                       ; $4fca: $54
    ld [c], a                                     ; $4fcb: $e2
    and [hl]                                      ; $4fcc: $a6
    jp nc, $f33f                                  ; $4fcd: $d2 $3f $f3

    ld d, l                                       ; $4fd0: $55
    db $10                                        ; $4fd1: $10
    sbc [hl]                                      ; $4fd2: $9e
    ld a, [hl]                                    ; $4fd3: $7e
    dec b                                         ; $4fd4: $05
    db $ed                                        ; $4fd5: $ed
    ld a, l                                       ; $4fd6: $7d
    cp h                                          ; $4fd7: $bc
    and a                                         ; $4fd8: $a7
    ld d, c                                       ; $4fd9: $51
    dec sp                                        ; $4fda: $3b
    ld sp, hl                                     ; $4fdb: $f9
    xor b                                         ; $4fdc: $a8
    ld c, e                                       ; $4fdd: $4b
    db $ed                                        ; $4fde: $ed
    scf                                           ; $4fdf: $37
    inc hl                                        ; $4fe0: $23
    sub b                                         ; $4fe1: $90
    cp d                                          ; $4fe2: $ba
    jp $0b0c                                      ; $4fe3: $c3 $0c $0b


    ld e, a                                       ; $4fe6: $5f
    db $fc                                        ; $4fe7: $fc
    sbc a                                         ; $4fe8: $9f

jr_045_4fe9:
    cpl                                           ; $4fe9: $2f
    dec b                                         ; $4fea: $05
    sbc d                                         ; $4feb: $9a
    inc a                                         ; $4fec: $3c
    ld c, a                                       ; $4fed: $4f
    sbc b                                         ; $4fee: $98
    ld [hl-], a                                   ; $4fef: $32
    ld e, a                                       ; $4ff0: $5f
    or h                                          ; $4ff1: $b4
    ld a, l                                       ; $4ff2: $7d
    add hl, sp                                    ; $4ff3: $39
    ld [hl], c                                    ; $4ff4: $71
    cpl                                           ; $4ff5: $2f
    adc h                                         ; $4ff6: $8c
    ld [hl], d                                    ; $4ff7: $72
    push de                                       ; $4ff8: $d5
    push hl                                       ; $4ff9: $e5
    ld [hl], a                                    ; $4ffa: $77
    xor d                                         ; $4ffb: $aa
    cpl                                           ; $4ffc: $2f
    push hl                                       ; $4ffd: $e5
    xor d                                         ; $4ffe: $aa
    ret                                           ; $4fff: $c9


    ld a, $12                                     ; $5000: $3e $12
    ld a, e                                       ; $5002: $7b
    ld c, a                                       ; $5003: $4f
    db $10                                        ; $5004: $10
    rst $38                                       ; $5005: $ff
    rst $00                                       ; $5006: $c7
    cp l                                          ; $5007: $bd
    dec a                                         ; $5008: $3d
    inc sp                                        ; $5009: $33
    db $ec                                        ; $500a: $ec
    adc b                                         ; $500b: $88
    call nz, $89e7                                ; $500c: $c4 $e7 $89
    dec de                                        ; $500f: $1b
    adc c                                         ; $5010: $89
    ld a, [hl-]                                   ; $5011: $3a
    ld [de], a                                    ; $5012: $12
    ld d, [hl]                                    ; $5013: $56
    ld l, $6e                                     ; $5014: $2e $6e
    or $d8                                        ; $5016: $f6 $d8
    push hl                                       ; $5018: $e5
    ld d, d                                       ; $5019: $52
    dec a                                         ; $501a: $3d
    sub c                                         ; $501b: $91
    ld a, b                                       ; $501c: $78
    ld d, c                                       ; $501d: $51
    rla                                           ; $501e: $17
    rst $28                                       ; $501f: $ef
    ld l, c                                       ; $5020: $69
    call nc, Call_000_104e                        ; $5021: $d4 $4e $10
    scf                                           ; $5024: $37
    jp nz, $ca10                                  ; $5025: $c2 $10 $ca

    rla                                           ; $5028: $17
    pop bc                                        ; $5029: $c1
    ld c, $d3                                     ; $502a: $0e $d3
    ld c, c                                       ; $502c: $49
    sbc e                                         ; $502d: $9b
    or e                                          ; $502e: $b3
    ld l, a                                       ; $502f: $6f
    jp nc, Jump_045_6bfe                          ; $5030: $d2 $fe $6b

    ld d, a                                       ; $5033: $57
    ld [hl], e                                    ; $5034: $73
    dec b                                         ; $5035: $05
    or l                                          ; $5036: $b5
    rst $38                                       ; $5037: $ff
    ld a, [c]                                     ; $5038: $f2
    adc $87                                       ; $5039: $ce $87
    ld e, [hl]                                    ; $503b: $5e
    add hl, sp                                    ; $503c: $39
    sbc [hl]                                      ; $503d: $9e
    ld d, b                                       ; $503e: $50
    ret                                           ; $503f: $c9


    ld l, b                                       ; $5040: $68
    ld a, [de]                                    ; $5041: $1a
    sbc b                                         ; $5042: $98
    daa                                           ; $5043: $27
    adc $8f                                       ; $5044: $ce $8f
    ld a, b                                       ; $5046: $78
    ccf                                           ; $5047: $3f
    rr e                                          ; $5048: $cb $1b
    inc hl                                        ; $504a: $23
    ld a, [bc]                                    ; $504b: $0a
    ld a, e                                       ; $504c: $7b
    ld a, e                                       ; $504d: $7b
    ret nz                                        ; $504e: $c0

    add a                                         ; $504f: $87
    sbc $f2                                       ; $5050: $de $f2
    sbc d                                         ; $5052: $9a
    halt                                          ; $5053: $76
    ld e, a                                       ; $5054: $5f
    ld b, c                                       ; $5055: $41
    ld a, b                                       ; $5056: $78
    ld a, [$85d4]                                 ; $5057: $fa $d4 $85
    dec b                                         ; $505a: $05
    ld a, $f4                                     ; $505b: $3e $f4
    sub [hl]                                      ; $505d: $96
    rst $10                                       ; $505e: $d7
    or h                                          ; $505f: $b4
    ld a, e                                       ; $5060: $7b
    db $e3                                        ; $5061: $e3
    adc e                                         ; $5062: $8b
    dec de                                        ; $5063: $1b
    add hl, bc                                    ; $5064: $09
    sub l                                         ; $5065: $95
    adc h                                         ; $5066: $8c
    and [hl]                                      ; $5067: $a6
    add c                                         ; $5068: $81
    ld a, c                                       ; $5069: $79
    ld [hl], h                                    ; $506a: $74
    ld sp, hl                                     ; $506b: $f9
    push bc                                       ; $506c: $c5
    ld l, $b7                                     ; $506d: $2e $b7
    ld d, e                                       ; $506f: $53
    ld b, c                                       ; $5070: $41
    ld l, b                                       ; $5071: $68
    ld d, $3b                                     ; $5072: $16 $3b
    ld [hl], c                                    ; $5074: $71
    or a                                          ; $5075: $b7
    db $fc                                        ; $5076: $fc
    ld b, [hl]                                    ; $5077: $46
    ld d, $43                                     ; $5078: $16 $43
    dec b                                         ; $507a: $05
    ld d, c                                       ; $507b: $51
    inc de                                        ; $507c: $13
    ld e, a                                       ; $507d: $5f
    ld a, [hl]                                    ; $507e: $7e
    db $e3                                        ; $507f: $e3
    jr nz, @+$07                                  ; $5080: $20 $05

    dec de                                        ; $5082: $1b
    call nz, $f91b                                ; $5083: $c4 $1b $f9
    ld hl, sp-$0e                                 ; $5086: $f8 $f2
    di                                            ; $5088: $f3
    and h                                         ; $5089: $a4
    or c                                          ; $508a: $b1
    or h                                          ; $508b: $b4
    pop hl                                        ; $508c: $e1
    ld b, e                                       ; $508d: $43
    ld l, a                                       ; $508e: $6f
    ld a, c                                       ; $508f: $79
    ld c, l                                       ; $5090: $4d
    cp e                                          ; $5091: $bb
    xor a                                         ; $5092: $af

jr_045_5093:
    jr nz, @+$3e                                  ; $5093: $20 $3c

    ld a, l                                       ; $5095: $7d
    jp c, $4f20                                   ; $5096: $da $20 $4f

    ld b, c                                       ; $5099: $41
    adc b                                         ; $509a: $88
    rst $30                                       ; $509b: $f7
    pop af                                        ; $509c: $f1
    and c                                         ; $509d: $a1

Call_045_509e:
    daa                                           ; $509e: $27
    ld [$3b72], a                                 ; $509f: $ea $72 $3b
    dec bc                                        ; $50a2: $0b
    dec d                                         ; $50a3: $15
    sbc [hl]                                      ; $50a4: $9e
    jr z, jr_045_5093                             ; $50a5: $28 $ec

    db $ed                                        ; $50a7: $ed
    ld [hl], c                                    ; $50a8: $71
    ld d, l                                       ; $50a9: $55
    push af                                       ; $50aa: $f5
    jp c, $a209                                   ; $50ab: $da $09 $a2

    ld l, $b5                                     ; $50ae: $2e $b5
    rst $18                                       ; $50b0: $df
    adc h                                         ; $50b1: $8c
    ld b, b                                       ; $50b2: $40
    ld c, [hl]                                    ; $50b3: $4e
    ld [c], a                                     ; $50b4: $e2
    add sp, -$1b                                  ; $50b5: $e8 $e5
    add h                                         ; $50b7: $84
    ld hl, $e2ea                                  ; $50b8: $21 $ea $e2
    ld h, [hl]                                    ; $50bb: $66
    rst $28                                       ; $50bc: $ef
    ld [hl], c                                    ; $50bd: $71
    ld l, a                                       ; $50be: $6f
    ld a, e                                       ; $50bf: $7b
    add d                                         ; $50c0: $82
    inc l                                         ; $50c1: $2c
    add [hl]                                      ; $50c2: $86
    ld [$3b72], a                                 ; $50c3: $ea $72 $3b
    dec bc                                        ; $50c6: $0b
    db $dd                                        ; $50c7: $dd
    push hl                                       ; $50c8: $e5
    add l                                         ; $50c9: $85
    sub c                                         ; $50ca: $91
    ld d, [hl]                                    ; $50cb: $56
    ei                                            ; $50cc: $fb
    ld [hl], h                                    ; $50cd: $74
    ld c, b                                       ; $50ce: $48
    ld d, c                                       ; $50cf: $51
    ld hl, sp+$53                                 ; $50d0: $f8 $53
    sbc h                                         ; $50d2: $9c
    rra                                           ; $50d3: $1f
    ld d, [hl]                                    ; $50d4: $56
    dec a                                         ; $50d5: $3d
    ld a, a                                       ; $50d6: $7f
    ld hl, sp-$1e                                 ; $50d7: $f8 $e2
    dec e                                         ; $50d9: $1d
    sub e                                         ; $50da: $93
    dec hl                                        ; $50db: $2b
    ld c, $79                                     ; $50dc: $0e $79
    ld [hl], c                                    ; $50de: $71
    ld a, [hl]                                    ; $50df: $7e
    ld h, h                                       ; $50e0: $64
    inc hl                                        ; $50e1: $23
    daa                                           ; $50e2: $27
    sbc $b1                                       ; $50e3: $de $b1
    ld [$3789], a                                 ; $50e5: $ea $89 $37
    ld [hl], d                                    ; $50e8: $72
    ld sp, $e7ec                                  ; $50e9: $31 $ec $e7
    inc hl                                        ; $50ec: $23
    sub c                                         ; $50ed: $91
    rst $18                                       ; $50ee: $df
    dec de                                        ; $50ef: $1b
    ld h, c                                       ; $50f0: $61
    adc d                                         ; $50f1: $8a
    inc d                                         ; $50f2: $14
    ld a, [hl]                                    ; $50f3: $7e
    cp [hl]                                       ; $50f4: $be
    jp nz, $fce7                                  ; $50f5: $c2 $e7 $fc

    ret nc                                        ; $50f8: $d0

    push hl                                       ; $50f9: $e5
    ld [hl], a                                    ; $50fa: $77
    or $91                                        ; $50fb: $f6 $91
    ret c                                         ; $50fd: $d8

    ld a, e                                       ; $50fe: $7b
    ld [hl], h                                    ; $50ff: $74
    ld sp, hl                                     ; $5100: $f9
    cp l                                          ; $5101: $bd
    dec a                                         ; $5102: $3d
    ld d, b                                       ; $5103: $50
    ld d, $d8                                     ; $5104: $16 $d8
    ld b, c                                       ; $5106: $41
    adc b                                         ; $5107: $88
    rra                                           ; $5108: $1f
    db $e4                                        ; $5109: $e4
    rst $30                                       ; $510a: $f7
    cp $f8                                        ; $510b: $fe $f8
    ret nc                                        ; $510d: $d0

    rla                                           ; $510e: $17
    ld a, $ae                                     ; $510f: $3e $ae
    daa                                           ; $5111: $27
    ld [$fde2], a                                 ; $5112: $ea $e2 $fd
    db $ed                                        ; $5115: $ed
    xor [hl]                                      ; $5116: $ae
    ld e, a                                       ; $5117: $5f
    ld bc, $6175                                  ; $5118: $01 $75 $61
    and c                                         ; $511b: $a1
    ld a, h                                       ; $511c: $7c
    ei                                            ; $511d: $fb
    adc b                                         ; $511e: $88
    call nz, $8437                                ; $511f: $c4 $37 $84
    ld c, d                                       ; $5122: $4a
    ld b, [hl]                                    ; $5123: $46
    db $d3                                        ; $5124: $d3
    ret nz                                        ; $5125: $c0

    inc a                                         ; $5126: $3c
    cp d                                          ; $5127: $ba
    db $fc                                        ; $5128: $fc
    ld h, d                                       ; $5129: $62
    sub a                                         ; $512a: $97
    db $db                                        ; $512b: $db
    xor c                                         ; $512c: $a9
    jr nz, jr_045_5163                            ; $512d: $20 $34

    adc e                                         ; $512f: $8b
    sbc l                                         ; $5130: $9d
    cp b                                          ; $5131: $b8
    ld e, e                                       ; $5132: $5b
    ld a, [hl]                                    ; $5133: $7e
    inc hl                                        ; $5134: $23
    adc e                                         ; $5135: $8b

Jump_045_5136:
    and c                                         ; $5136: $a1
    add d                                         ; $5137: $82
    xor b                                         ; $5138: $a8
    adc c                                         ; $5139: $89
    cpl                                           ; $513a: $2f
    cp a                                          ; $513b: $bf
    ld [hl], c                                    ; $513c: $71
    sub b                                         ; $513d: $90
    add d                                         ; $513e: $82
    dec c                                         ; $513f: $0d
    ld [c], a                                     ; $5140: $e2
    adc l                                         ; $5141: $8d
    ld a, h                                       ; $5142: $7c
    ld a, [hl-]                                   ; $5143: $3a
    ret nc                                        ; $5144: $d0

    inc [hl]                                      ; $5145: $34
    jr nc, @+$51                                  ; $5146: $30 $4f

    ld d, $58                                     ; $5148: $16 $58
    ret z                                         ; $514a: $c8

    dec hl                                        ; $514b: $2b
    db $f4                                        ; $514c: $f4
    rst $30                                       ; $514d: $f7
    ld de, $6f89                                  ; $514e: $11 $89 $6f
    adc b                                         ; $5151: $88
    or [hl]                                       ; $5152: $b6
    cpl                                           ; $5153: $2f
    and e                                         ; $5154: $a3
    ld l, c                                       ; $5155: $69
    ld h, b                                       ; $5156: $60
    cp [hl]                                       ; $5157: $be
    sbc h                                         ; $5158: $9c
    add h                                         ; $5159: $84
    jp hl                                         ; $515a: $e9


    ld h, h                                       ; $515b: $64
    sbc c                                         ; $515c: $99
    ld d, d                                       ; $515d: $52
    ld d, b                                       ; $515e: $50
    jp z, Jump_045_69f4                           ; $515f: $ca $f4 $69

    add e                                         ; $5162: $83

jr_045_5163:
    inc a                                         ; $5163: $3c
    dec b                                         ; $5164: $05
    ld hl, $c7de                                  ; $5165: $21 $de $c7
    add a                                         ; $5168: $87
    ld h, d                                       ; $5169: $62
    rst $28                                       ; $516a: $ef
    adc c                                         ; $516b: $89
    di                                            ; $516c: $f3
    inc hl                                        ; $516d: $23
    ld a, [bc]                                    ; $516e: $0a
    push hl                                       ; $516f: $e5
    inc d                                         ; $5170: $14
    db $ec                                        ; $5171: $ec
    ld b, d                                       ; $5172: $42
    rr e                                          ; $5173: $cb $1b
    add d                                         ; $5175: $82
    inc l                                         ; $5176: $2c
    add [hl]                                      ; $5177: $86
    ld [$3b72], a                                 ; $5178: $ea $72 $3b
    dec bc                                        ; $517b: $0b
    db $dd                                        ; $517c: $dd
    push hl                                       ; $517d: $e5
    add l                                         ; $517e: $85
    sub c                                         ; $517f: $91
    ld d, [hl]                                    ; $5180: $56
    ei                                            ; $5181: $fb
    dec d                                         ; $5182: $15
    dec e                                         ; $5183: $1d
    ld d, e                                       ; $5184: $53
    ld h, [hl]                                    ; $5185: $66
    ld h, h                                       ; $5186: $64
    inc hl                                        ; $5187: $23
    rl b                                          ; $5188: $cb $10
    ld l, a                                       ; $518a: $6f
    db $e4                                        ; $518b: $e4
    ld b, d                                       ; $518c: $42
    ld b, d                                       ; $518d: $42
    or h                                          ; $518e: $b4
    sub c                                         ; $518f: $91
    ret                                           ; $5190: $c9


    ld h, d                                       ; $5191: $62
    ld e, b                                       ; $5192: $58
    sbc $9e                                       ; $5193: $de $9e
    ld de, $c5c1                                  ; $5195: $11 $c1 $c5
    db $fd                                        ; $5198: $fd
    ld d, [hl]                                    ; $5199: $56
    or b                                          ; $519a: $b0
    sub c                                         ; $519b: $91
    db $eb                                        ; $519c: $eb
    db $e3                                        ; $519d: $e3
    adc e                                         ; $519e: $8b
    dec c                                         ; $519f: $0d
    ld [c], a                                     ; $51a0: $e2
    adc l                                         ; $51a1: $8d
    cp h                                          ; $51a2: $bc
    xor b                                         ; $51a3: $a8
    add hl, bc                                    ; $51a4: $09
    ld b, d                                       ; $51a5: $42
    ld sp, hl                                     ; $51a6: $f9
    or $11                                        ; $51a7: $f6 $11
    adc c                                         ; $51a9: $89
    cpl                                           ; $51aa: $2f
    ld l, d                                       ; $51ab: $6a
    ld [hl], d                                    ; $51ac: $72
    dec sp                                        ; $51ad: $3b
    ld c, h                                       ; $51ae: $4c
    daa                                           ; $51af: $27
    xor $b7                                       ; $51b0: $ee $b7
    add d                                         ; $51b2: $82
    adc l                                         ; $51b3: $8d
    ld b, b                                       ; $51b4: $40
    sub a                                         ; $51b5: $97
    ld [hl], a                                    ; $51b6: $77
    ld c, $0a                                     ; $51b7: $0e $0a
    or $97                                        ; $51b9: $f6 $97
    rrca                                          ; $51bb: $0f
    sub l                                         ; $51bc: $95
    ld c, a                                       ; $51bd: $4f
    ld [hl], c                                    ; $51be: $71
    ld a, [hl]                                    ; $51bf: $7e
    ld e, b                                       ; $51c0: $58
    push af                                       ; $51c1: $f5
    db $fc                                        ; $51c2: $fc
    ld de, $fdec                                  ; $51c3: $11 $ec $fd
    pop af                                        ; $51c6: $f1
    and c                                         ; $51c7: $a1
    cp a                                          ; $51c8: $bf
    sub c                                         ; $51c9: $91
    ld h, l                                       ; $51ca: $65
    ret c                                         ; $51cb: $d8

    cp $42                                        ; $51cc: $fe $42
    ld b, d                                       ; $51ce: $42
    pop bc                                        ; $51cf: $c1
    db $10                                        ; $51d0: $10
    and [hl]                                      ; $51d1: $a6
    call z, $6d17                                 ; $51d2: $cc $17 $6d
    ld e, a                                       ; $51d5: $5f
    ld c, [hl]                                    ; $51d6: $4e
    inc [hl]                                      ; $51d7: $34
    add e                                         ; $51d8: $83
    ld a, [hl-]                                   ; $51d9: $3a
    ld [$9c5f], sp                                ; $51da: $08 $5f $9c
    rra                                           ; $51dd: $1f
    ld e, c                                       ; $51de: $59
    and [hl]                                      ; $51df: $a6
    sub h                                         ; $51e0: $94
    add e                                         ; $51e1: $83
    cp d                                          ; $51e2: $ba
    ld a, $be                                     ; $51e3: $3e $be
    ld c, $da                                     ; $51e5: $0e $da
    cp [hl]                                       ; $51e7: $be

jr_045_51e8:
    ld hl, sp+$50                                 ; $51e8: $f8 $50
    db $ec                                        ; $51ea: $ec
    ld a, l                                       ; $51eb: $7d
    ld d, c                                       ; $51ec: $51
    jr z, @-$57                                   ; $51ed: $28 $a7

    ld h, b                                       ; $51ef: $60
    rst $08                                       ; $51f0: $cf
    rla                                           ; $51f1: $17
    ld h, h                                       ; $51f2: $64
    ld sp, $1754                                  ; $51f3: $31 $54 $17
    ld e, a                                       ; $51f6: $5f
    ld a, [hl]                                    ; $51f7: $7e
    db $e3                                        ; $51f8: $e3
    inc l                                         ; $51f9: $2c
    or b                                          ; $51fa: $b0
    ld d, h                                       ; $51fb: $54
    jr z, jr_045_526c                             ; $51fc: $28 $6e

    or $db                                        ; $51fe: $f6 $db
    cp [hl]                                       ; $5200: $be
    ld a, [hl]                                    ; $5201: $7e
    dec b                                         ; $5202: $05
    xor l                                         ; $5203: $ad
    ld a, [hl+]                                   ; $5204: $2a
    sub h                                         ; $5205: $94
    ld [hl-], a                                   ; $5206: $32
    ld e, c                                       ; $5207: $59

Jump_045_5208:
    and [hl]                                      ; $5208: $a6
    sub h                                         ; $5209: $94
    add e                                         ; $520a: $83
    cp d                                          ; $520b: $ba
    ld l, h                                       ; $520c: $6c
    rrca                                          ; $520d: $0f
    adc b                                         ; $520e: $88
    dec sp                                        ; $520f: $3b
    or a                                          ; $5210: $b7
    ld h, a                                       ; $5211: $67
    add c                                         ; $5212: $81
    cp d                                          ; $5213: $ba
    adc a                                         ; $5214: $8f
    add d                                         ; $5215: $82
    or [hl]                                       ; $5216: $b6
    cpl                                           ; $5217: $2f

Jump_045_5218:
    daa                                           ; $5218: $27
    sbc d                                         ; $5219: $9a
    ld b, c                                       ; $521a: $41
    dec e                                         ; $521b: $1d
    add h                                         ; $521c: $84
    xor a                                         ; $521d: $af
    ld c, a                                       ; $521e: $4f
    db $dd                                        ; $521f: $dd
    ld h, c                                       ; $5220: $61
    ei                                            ; $5221: $fb
    adc e                                         ; $5222: $8b
    cp l                                          ; $5223: $bd
    ld [hl], e                                    ; $5224: $73
    and e                                         ; $5225: $a3
    db $ed                                        ; $5226: $ed
    add e                                         ; $5227: $83
    ld hl, $beda                                  ; $5228: $21 $da $be
    sbc h                                         ; $522b: $9c
    ld l, b                                       ; $522c: $68
    ld b, $75                                     ; $522d: $06 $75
    db $10                                        ; $522f: $10
    cp [hl]                                       ; $5230: $be
    inc l                                         ; $5231: $2c
    or b                                          ; $5232: $b0
    ld l, h                                       ; $5233: $6c
    ld h, h                                       ; $5234: $64
    add hl, de                                    ; $5235: $19
    ld [c], a                                     ; $5236: $e2
    adc l                                         ; $5237: $8d
    ld e, h                                       ; $5238: $5c
    sub b                                         ; $5239: $90
    scf                                           ; $523a: $37
    rst $20                                       ; $523b: $e7
    ccf                                           ; $523c: $3f
    ld a, [c]                                     ; $523d: $f2
    sbc $90                                       ; $523e: $de $90
    adc l                                         ; $5240: $8d
    ret c                                         ; $5241: $d8

    add hl, sp                                    ; $5242: $39

jr_045_5243:
    jr nc, jr_045_51e8                            ; $5243: $30 $a3

    ld c, a                                       ; $5245: $4f
    ld e, l                                       ; $5246: $5d
    ld b, e                                       ; $5247: $43
    ld [hl], l                                    ; $5248: $75
    pop af                                        ; $5249: $f1
    push hl                                       ; $524a: $e5
    scf                                           ; $524b: $37
    ld c, $52                                     ; $524c: $0e $52
    or b                                          ; $524e: $b0
    ld b, c                                       ; $524f: $41
    cp h                                          ; $5250: $bc
    sub c                                         ; $5251: $91
    ld c, a                                       ; $5252: $4f
    dec de                                        ; $5253: $1b
    ld [hl], l                                    ; $5254: $75
    inc a                                         ; $5255: $3c
    db $db                                        ; $5256: $db
    or $6c                                        ; $5257: $f6 $6c
    xor a                                         ; $5259: $af
    add e                                         ; $525a: $83
    cp d                                          ; $525b: $ba
    ld l, l                                       ; $525c: $6d
    or h                                          ; $525d: $b4
    sbc $76                                       ; $525e: $de $76
    xor e                                         ; $5260: $ab
    ld l, c                                       ; $5261: $69
    cp l                                          ; $5262: $bd
    adc l                                         ; $5263: $8d
    or [hl]                                       ; $5264: $b6
    jp c, Jump_000_3b6b                           ; $5265: $da $6b $3b

    ld l, l                                       ; $5268: $6d
    rst $10                                       ; $5269: $d7
    ld l, c                                       ; $526a: $69
    xor e                                         ; $526b: $ab

jr_045_526c:
    and e                                         ; $526c: $a3
    ld [hl], $5a                                  ; $526d: $36 $5a
    ld l, a                                       ; $526f: $6f
    cp e                                          ; $5270: $bb
    adc l                                         ; $5271: $8d
    ld a, [hl-]                                   ; $5272: $3a
    dec e                                         ; $5273: $1d
    or a                                          ; $5274: $b7
    dec e                                         ; $5275: $1d
    push af                                       ; $5276: $f5
    dec sp                                        ; $5277: $3b
    dec d                                         ; $5278: $15
    add h                                         ; $5279: $84
    ld h, [hl]                                    ; $527a: $66
    or c                                          ; $527b: $b1
    inc de                                        ; $527c: $13
    ld [hl], a                                    ; $527d: $77
    bit 5, a                                      ; $527e: $cb $6f
    ld h, h                                       ; $5280: $64
    add c                                         ; $5281: $81
    add l                                         ; $5282: $85
    cp h                                          ; $5283: $bc
    ld b, d                                       ; $5284: $42
    ld a, a                                       ; $5285: $7f
    rra                                           ; $5286: $1f

jr_045_5287:
    sub c                                         ; $5287: $91
    ld hl, sp-$7a                                 ; $5288: $f8 $86
    ld e, h                                       ; $528a: $5c
    sbc b                                         ; $528b: $98
    adc $e5                                       ; $528c: $ce $e5
    ld b, h                                       ; $528e: $44
    inc sp                                        ; $528f: $33
    xor b                                         ; $5290: $a8
    add e                                         ; $5291: $83
    ldh a, [rTIMA]                                ; $5292: $f0 $05
    cp c                                          ; $5294: $b9
    sbc l                                         ; $5295: $9d
    ld a, l                                       ; $5296: $7d
    ld a, d                                       ; $5297: $7a
    sbc e                                         ; $5298: $9b
    jr z, jr_045_5287                             ; $5299: $28 $ec

    adc l                                         ; $529b: $8d
    ret c                                         ; $529c: $d8

    add hl, sp                                    ; $529d: $39
    jr nc, jr_045_5243                            ; $529e: $30 $a3

    ld e, a                                       ; $52a0: $5f
    ld bc, $6175                                  ; $52a1: $01 $75 $61
    ld hl, $60a1                                  ; $52a4: $21 $a1 $60
    ret z                                         ; $52a7: $c8

    db $ed                                        ; $52a8: $ed
    or h                                          ; $52a9: $b4
    add hl, sp                                    ; $52aa: $39
    ei                                            ; $52ab: $fb
    ld h, $ed                                     ; $52ac: $26 $ed
    cp a                                          ; $52ae: $bf
    halt                                          ; $52af: $76
    ld b, c                                       ; $52b0: $41
    ld l, [hl]                                    ; $52b1: $6e
    and a                                         ; $52b2: $a7
    call Call_000_37d9                            ; $52b3: $cd $d9 $37
    jp hl                                         ; $52b6: $e9


    ret c                                         ; $52b7: $d8

    ld l, [hl]                                    ; $52b8: $6e
    reti                                          ; $52b9: $d9


    rst $20                                       ; $52ba: $e7
    ld l, b                                       ; $52bb: $68
    pop de                                        ; $52bc: $d1
    push hl                                       ; $52bd: $e5
    rla                                           ; $52be: $17
    cp e                                          ; $52bf: $bb
    call c, $054e                                 ; $52c0: $dc $4e $05
    and c                                         ; $52c3: $a1
    ld e, c                                       ; $52c4: $59
    db $ec                                        ; $52c5: $ec
    call nz, $f2dd                                ; $52c6: $c4 $dd $f2
    dec de                                        ; $52c9: $1b
    ld e, c                                       ; $52ca: $59
    inc c                                         ; $52cb: $0c
    dec d                                         ; $52cc: $15
    ld b, h                                       ; $52cd: $44
    ld c, l                                       ; $52ce: $4d
    ld a, h                                       ; $52cf: $7c
    ld sp, hl                                     ; $52d0: $f9
    adc l                                         ; $52d1: $8d
    add e                                         ; $52d2: $83
    inc d                                         ; $52d3: $14
    ld l, h                                       ; $52d4: $6c
    db $10                                        ; $52d5: $10
    ld l, a                                       ; $52d6: $6f
    db $e4                                        ; $52d7: $e4
    db $d3                                        ; $52d8: $d3
    and $ec                                       ; $52d9: $e6 $ec
    sbc e                                         ; $52db: $9b
    or h                                          ; $52dc: $b4
    rst $38                                       ; $52dd: $ff
    jp c, $d265                                   ; $52de: $da $65 $d2

    and $ec                                       ; $52e1: $e6 $ec
    sbc e                                         ; $52e3: $9b
    ld [hl], h                                    ; $52e4: $74
    ld l, h                                       ; $52e5: $6c
    or a                                          ; $52e6: $b7
    db $ec                                        ; $52e7: $ec
    ld [hl], e                                    ; $52e8: $73
    or h                                          ; $52e9: $b4
    db $f4                                        ; $52ea: $f4
    dec hl                                        ; $52eb: $2b
    cp [hl]                                       ; $52ec: $be
    db $fc                                        ; $52ed: $fc
    sub a                                         ; $52ee: $97
    dec b                                         ; $52ef: $05
    sub [hl]                                      ; $52f0: $96
    rst $30                                       ; $52f1: $f7
    ld a, d                                       ; $52f2: $7a
    ld l, l                                       ; $52f3: $6d
    add h                                         ; $52f4: $84
    rst $18                                       ; $52f5: $df
    db $10                                        ; $52f6: $10
    ld a, [hl+]                                   ; $52f7: $2a
    ld [hl], c                                    ; $52f8: $71
    ld d, e                                       ; $52f9: $53
    jp hl                                         ; $52fa: $e9


    sbc a                                         ; $52fb: $9f
    ld sp, hl                                     ; $52fc: $f9
    ld a, [hl+]                                   ; $52fd: $2a

Jump_045_52fe:
    ld [$aa4f], sp                                ; $52fe: $08 $4f $aa
    rst $10                                       ; $5301: $d7
    adc $4d                                       ; $5302: $ce $4d
    db $10                                        ; $5304: $10
    rst $38                                       ; $5305: $ff
    ld e, a                                       ; $5306: $5f
    call nc, $b091                                ; $5307: $d4 $91 $b0
    add d                                         ; $530a: $82
    inc l                                         ; $530b: $2c
    ld d, e                                       ; $530c: $53
    jp z, Jump_045_6fe9                           ; $530d: $ca $e9 $6f

    rra                                           ; $5310: $1f
    rst $10                                       ; $5311: $d7
    inc de                                        ; $5312: $13
    ld [hl], l                                    ; $5313: $75
    add hl, hl                                    ; $5314: $29
    ld c, $9b                                     ; $5315: $0e $9b
    cp a                                          ; $5317: $bf
    push bc                                       ; $5318: $c5
    or h                                          ; $5319: $b4
    dec l                                         ; $531a: $2d
    xor $85                                       ; $531b: $ee $85
    ld d, c                                       ; $531d: $51
    xor [hl]                                      ; $531e: $ae
    sbc d                                         ; $531f: $9a
    ldh a, [$65]                                  ; $5320: $f0 $65
    add c                                         ; $5322: $81
    ld d, l                                       ; $5323: $55
    ld h, b                                       ; $5324: $60
    ld b, [hl]                                    ; $5325: $46
    call nc, $bf65                                ; $5326: $d4 $65 $bf
    cp b                                          ; $5329: $b8
    ld a, e                                       ; $532a: $7b
    ld b, e                                       ; $532b: $43
    xor b                                         ; $532c: $a8
    ld a, h                                       ; $532d: $7c
    xor d                                         ; $532e: $aa
    rst $10                                       ; $532f: $d7
    xor $5b                                       ; $5330: $ee $5b
    ld c, d                                       ; $5332: $4a
    rlca                                          ; $5333: $07

jr_045_5334:
    sbc d                                         ; $5334: $9a
    ld b, $e6                                     ; $5335: $06 $e6
    add hl, bc                                    ; $5337: $09
    ld e, a                                       ; $5338: $5f
    call c, $8148                                 ; $5339: $dc $48 $81
    jr nc, @-$5c                                  ; $533c: $30 $a2

    ld l, $94                                     ; $533e: $2e $94
    ld l, a                                       ; $5340: $6f
    rra                                           ; $5341: $1f
    sub c                                         ; $5342: $91
    ld hl, sp-$7a                                 ; $5343: $f8 $86
    ld d, b                                       ; $5345: $50
    ret                                           ; $5346: $c9


    ld l, b                                       ; $5347: $68
    ld a, [de]                                    ; $5348: $1a
    sbc b                                         ; $5349: $98
    and a                                         ; $534a: $a7
    and l                                         ; $534b: $a5
    cp b                                          ; $534c: $b8
    sub c                                         ; $534d: $91
    or h                                          ; $534e: $b4
    ld a, c                                       ; $534f: $79
    ld a, [de]                                    ; $5350: $1a
    or l                                          ; $5351: $b5
    sub e                                         ; $5352: $93
    rst $08                                       ; $5353: $cf
    ld b, d                                       ; $5354: $42
    rst $20                                       ; $5355: $e7
    ld d, d                                       ; $5356: $52

Call_045_5357:
    cp h                                          ; $5357: $bc
    ld b, [hl]                                    ; $5358: $46
    sbc c                                         ; $5359: $99
    rst $18                                       ; $535a: $df
    db $10                                        ; $535b: $10
    ld l, l                                       ; $535c: $6d
    ld e, a                                       ; $535d: $5f
    ldh [$f5], a                                  ; $535e: $e0 $f5
    add d                                         ; $5360: $82
    ld sp, hl                                     ; $5361: $f9
    or d                                          ; $5362: $b2
    ret c                                         ; $5363: $d8

    xor b                                         ; $5364: $a8
    ld h, c                                       ; $5365: $61
    cp [hl]                                       ; $5366: $be
    xor b                                         ; $5367: $a8
    rst $18                                       ; $5368: $df
    dec de                                        ; $5369: $1b
    pop af                                        ; $536a: $f1
    sbc [hl]                                      ; $536b: $9e
    ld b, [hl]                                    ; $536c: $46
    db $ed                                        ; $536d: $ed
    inc b                                         ; $536e: $04
    ld d, c                                       ; $536f: $51
    rla                                           ; $5370: $17
    ld e, a                                       ; $5371: $5f
    ld [hl], $68                                  ; $5372: $36 $68
    ld a, [hl]                                    ; $5374: $7e
    inc b                                         ; $5375: $04
    xor c                                         ; $5376: $a9
    ld e, [hl]                                    ; $5377: $5e
    di                                            ; $5378: $f3
    ld e, a                                       ; $5379: $5f
    cp h                                          ; $537a: $bc
    ld e, a                                       ; $537b: $5f
    ld c, l                                       ; $537c: $4d
    cp c                                          ; $537d: $b9
    sub [hl]                                      ; $537e: $96
    jp nc, $d526                                  ; $537f: $d2 $26 $d5

    ld e, [hl]                                    ; $5382: $5e
    sub a                                         ; $5383: $97
    inc de                                        ; $5384: $13
    rst $28                                       ; $5385: $ef
    add hl, bc                                    ; $5386: $09
    ld [hl], h                                    ; $5387: $74
    pop hl                                        ; $5388: $e1
    adc e                                         ; $5389: $8b
    xor d                                         ; $538a: $aa
    daa                                           ; $538b: $27
    ei                                            ; $538c: $fb
    or e                                          ; $538d: $b3
    ld c, h                                       ; $538e: $4c
    add hl, hl                                    ; $538f: $29
    and a                                         ; $5390: $a7
    cp a                                          ; $5391: $bf
    ld a, l                                       ; $5392: $7d
    ld e, h                                       ; $5393: $5c
    ld c, a                                       ; $5394: $4f
    call nc, Call_000_0ca5                        ; $5395: $d4 $a5 $0c
    or e                                          ; $5398: $b3
    cp l                                          ; $5399: $bd
    pop af                                        ; $539a: $f1
    push hl                                       ; $539b: $e5
    ld [hl], a                                    ; $539c: $77
    call c, $fa54                                 ; $539d: $dc $54 $fa
    ld h, a                                       ; $53a0: $67
    cp [hl]                                       ; $53a1: $be
    ld a, [bc]                                    ; $53a2: $0a
    jp nz, $a7d3                                  ; $53a3: $c2 $d3 $a7

    db $ed                                        ; $53a6: $ed
    call nc, $c2a5                                ; $53a7: $d4 $a5 $c2
    sub a                                         ; $53aa: $97
    adc [hl]                                      ; $53ab: $8e
    ld d, b                                       ; $53ac: $50
    xor [hl]                                      ; $53ad: $ae
    jr nc, jr_045_5334                            ; $53ae: $30 $84

    ld hl, sp+$41                                 ; $53b0: $f8 $41
    ld l, $75                                     ; $53b2: $2e $75
    xor c                                         ; $53b4: $a9
    ldh a, [$a5]                                  ; $53b5: $f0 $a5
    db $fd                                        ; $53b7: $fd
    rst $10                                       ; $53b8: $d7
    xor $53                                       ; $53b9: $ee $53

jr_045_53bb:
    ld b, [hl]                                    ; $53bb: $46
    ld h, $27                                     ; $53bc: $26 $27
    ld [$f3dc], a                                 ; $53be: $ea $dc $f3
    and l                                         ; $53c1: $a5
    ret nc                                        ; $53c2: $d0

    cp l                                          ; $53c3: $bd
    ccf                                           ; $53c4: $3f
    ld a, [bc]                                    ; $53c5: $0a
    add l                                         ; $53c6: $85
    db $ed                                        ; $53c7: $ed
    and e                                         ; $53c8: $a3
    or b                                          ; $53c9: $b0
    rst $30                                       ; $53ca: $f7
    and h                                         ; $53cb: $a4
    jr c, jr_045_540d                             ; $53cc: $38 $3f

    xor h                                         ; $53ce: $ac
    sbc d                                         ; $53cf: $9a
    ld a, [hl]                                    ; $53d0: $7e
    dec b                                         ; $53d1: $05
    xor l                                         ; $53d2: $ad
    ld b, c                                       ; $53d3: $41
    ld c, b                                       ; $53d4: $48
    ld [$c9e5], sp                                ; $53d5: $08 $e5 $c9
    rst $28                                       ; $53d8: $ef
    db $fd                                        ; $53d9: $fd
    reti                                          ; $53da: $d9


    jr nz, jr_045_53bb                            ; $53db: $20 $de

    ld [$2ea2], sp                                ; $53dd: $08 $a2 $2e
    ld l, l                                       ; $53e0: $6d
    adc e                                         ; $53e1: $8b
    ld a, e                                       ; $53e2: $7b
    ld h, c                                       ; $53e3: $61
    sub h                                         ; $53e4: $94
    xor e                                         ; $53e5: $ab
    xor [hl]                                      ; $53e6: $ae
    ld c, a                                       ; $53e7: $4f
    ld b, a                                       ; $53e8: $47
    or a                                          ; $53e9: $b7
    add b                                         ; $53ea: $80
    cpl                                           ; $53eb: $2f
    sub a                                         ; $53ec: $97
    ld [$a970], a                                 ; $53ed: $ea $70 $a9
    add [hl]                                      ; $53f0: $86
    cp h                                          ; $53f1: $bc
    ld a, [bc]                                    ; $53f2: $0a
    jp nz, $cba7                                  ; $53f3: $c2 $a7 $cb

    ld c, c                                       ; $53f6: $49
    xor d                                         ; $53f7: $aa
    ld d, c                                       ; $53f8: $51
    inc de                                        ; $53f9: $13
    push af                                       ; $53fa: $f5
    pop af                                        ; $53fb: $f1
    cp [hl]                                       ; $53fc: $be
    ld h, l                                       ; $53fd: $65
    add e                                         ; $53fe: $83
    inc a                                         ; $53ff: $3c
    ld a, [hl]                                    ; $5400: $7e
    ld b, e                                       ; $5401: $43
    xor b                                         ; $5402: $a8
    ld a, h                                       ; $5403: $7c
    ld a, [bc]                                    ; $5404: $0a
    db $ec                                        ; $5405: $ec
    db $10                                        ; $5406: $10
    ld [hl], l                                    ; $5407: $75
    add hl, de                                    ; $5408: $19
    ld c, l                                       ; $5409: $4d
    inc bc                                        ; $540a: $03
    di                                            ; $540b: $f3
    push af                                       ; $540c: $f5

jr_045_540d:
    pop af                                        ; $540d: $f1
    ld b, l                                       ; $540e: $45
    db $ec                                        ; $540f: $ec
    ld d, b                                       ; $5410: $50
    call c, $e3e5                                 ; $5411: $dc $e5 $e3
    ld a, l                                       ; $5414: $7d

jr_045_5415:
    ld c, e                                       ; $5415: $4b
    xor c                                         ; $5416: $a9
    cpl                                           ; $5417: $2f
    adc $8f                                       ; $5418: $ce $8f
    ld d, b                                       ; $541a: $50
    ret                                           ; $541b: $c9


    ld l, b                                       ; $541c: $68
    ld a, [de]                                    ; $541d: $1a
    sbc b                                         ; $541e: $98
    daa                                           ; $541f: $27
    or $9a                                        ; $5420: $f6 $9a
    halt                                          ; $5422: $76
    ld d, h                                       ; $5423: $54
    or h                                          ; $5424: $b4
    rst $08                                       ; $5425: $cf
    or $f8                                        ; $5426: $f6 $f8
    call Call_000_1220                            ; $5428: $cd $20 $12
    ccf                                           ; $542b: $3f
    jp c, $c2d1                                   ; $542c: $da $d1 $c2

    xor a                                         ; $542f: $af
    bit 0, d                                      ; $5430: $cb $42
    rst $20                                       ; $5432: $e7
    or d                                          ; $5433: $b2
    ld a, h                                       ; $5434: $7c
    add hl, hl                                    ; $5435: $29
    ld l, a                                       ; $5436: $6f
    ret z                                         ; $5437: $c8

    rst $00                                       ; $5438: $c7
    add a                                         ; $5439: $87
    ld h, d                                       ; $543a: $62
    rst $28                                       ; $543b: $ef
    ld c, c                                       ; $543c: $49
    and c                                         ; $543d: $a1
    adc $a1                                       ; $543e: $ce $a1
    sub h                                         ; $5440: $94
    inc hl                                        ; $5441: $23
    ld b, a                                       ; $5442: $47
    sub a                                         ; $5443: $97
    push hl                                       ; $5444: $e5
    ld a, [de]                                    ; $5445: $1a
    ret z                                         ; $5446: $c8

    add d                                         ; $5447: $82
    ld a, [c]                                     ; $5448: $f2
    jp nz, $e3e8                                  ; $5449: $c2 $e8 $e3

    adc e                                         ; $544c: $8b
    cp b                                          ; $544d: $b8
    xor c                                         ; $544e: $a9
    ld a, [hl+]                                   ; $544f: $2a
    jr nc, jr_045_5415                            ; $5450: $30 $c3

    cp $c2                                        ; $5452: $fe $c2
    ld [hl], $cb                                  ; $5454: $36 $cb
    ld [hl], d                                    ; $5456: $72
    add c                                         ; $5457: $81
    reti                                          ; $5458: $d9


    ret c                                         ; $5459: $d8

    jp hl                                         ; $545a: $e9


    ld d, d                                       ; $545b: $52
    sbc $fe                                       ; $545c: $de $fe
    ld [c], a                                     ; $545e: $e2
    and [hl]                                      ; $545f: $a6
    or b                                          ; $5460: $b0
    add c                                         ; $5461: $81
    ld a, c                                       ; $5462: $79
    ld a, [c]                                     ; $5463: $f2
    or c                                          ; $5464: $b1
    ld [hl], e                                    ; $5465: $73
    ld d, e                                       ; $5466: $53
    sbc l                                         ; $5467: $9d
    cp b                                          ; $5468: $b8
    ld a, e                                       ; $5469: $7b
    ld b, e                                       ; $546a: $43
    call nc, $fdc7                                ; $546b: $d4 $c7 $fd
    ld [hl-], a                                   ; $546e: $32
    db $fd                                        ; $546f: $fd
    ld a, [bc]                                    ; $5470: $0a
    ld [hl], l                                    ; $5471: $75
    ld h, c                                       ; $5472: $61
    add hl, hl                                    ; $5473: $29
    ld [hl], h                                    ; $5474: $74
    add c                                         ; $5475: $81
    cp l                                          ; $5476: $bd

jr_045_5477:
    ld hl, $03db                                  ; $5477: $21 $db $03
    ld [hl], d                                    ; $547a: $72
    ld e, d                                       ; $547b: $5a
    push af                                       ; $547c: $f5
    ld d, c                                       ; $547d: $51
    ret c                                         ; $547e: $d8

    dec de                                        ; $547f: $1b
    ld e, c                                       ; $5480: $59
    add [hl]                                      ; $5481: $86
    ld a, b                                       ; $5482: $78
    inc hl                                        ; $5483: $23
    and a                                         ; $5484: $a7
    ld c, e                                       ; $5485: $4b
    pop bc                                        ; $5486: $c1
    ld b, $f1                                     ; $5487: $06 $f1
    ld b, [hl]                                    ; $5489: $46
    ld a, $fb                                     ; $548a: $3e $fb
    and e                                         ; $548c: $a3
    dec e                                         ; $548d: $1d
    dec l                                         ; $548e: $2d
    db $fc                                        ; $548f: $fc
    ld [hl], c                                    ; $5490: $71
    ld d, e                                       ; $5491: $53
    jp hl                                         ; $5492: $e9


    ld c, a                                       ; $5493: $4f
    sbc [hl]                                      ; $5494: $9e
    ld a, b                                       ; $5495: $78
    inc hl                                        ; $5496: $23
    adc b                                         ; $5497: $88
    cp d                                          ; $5498: $ba
    cp b                                          ; $5499: $b8
    rst $18                                       ; $549a: $df
    ld a, [bc]                                    ; $549b: $0a
    ld [hl], $82                                  ; $549c: $36 $82
    jr nz, jr_045_54c7                            ; $549e: $20 $27

    sbc d                                         ; $54a0: $9a
    ld b, c                                       ; $54a1: $41
    dec e                                         ; $54a2: $1d
    add h                                         ; $54a3: $84
    xor a                                         ; $54a4: $af
    ld c, a                                       ; $54a5: $4f
    ld e, l                                       ; $54a6: $5d
    ld b, e                                       ; $54a7: $43
    ld [hl], l                                    ; $54a8: $75
    pop af                                        ; $54a9: $f1
    and l                                         ; $54aa: $a5
    sbc c                                         ; $54ab: $99
    or h                                          ; $54ac: $b4
    ld [hl], l                                    ; $54ad: $75
    dec c                                         ; $54ae: $0d
    ld h, h                                       ; $54af: $64
    add c                                         ; $54b0: $81
    dec b                                         ; $54b1: $05
    ld e, [hl]                                    ; $54b2: $5e
    cpl                                           ; $54b3: $2f
    sbc b                                         ; $54b4: $98
    jp hl                                         ; $54b5: $e9


    dec de                                        ; $54b6: $1b
    or d                                          ; $54b7: $b2
    ccf                                           ; $54b8: $3f
    ld c, h                                       ; $54b9: $4c
    ccf                                           ; $54ba: $3f
    push bc                                       ; $54bb: $c5
    ld h, c                                       ; $54bc: $61
    di                                            ; $54bd: $f3
    rst $30                                       ; $54be: $f7
    xor c                                         ; $54bf: $a9
    ld l, e                                       ; $54c0: $6b
    xor b                                         ; $54c1: $a8
    ld l, $ad                                     ; $54c2: $2e $ad
    and e                                         ; $54c4: $a3
    or b                                          ; $54c5: $b0
    ld a, l                                       ; $54c6: $7d

jr_045_54c7:
    ld d, $58                                     ; $54c7: $16 $58
    sub [hl]                                      ; $54c9: $96
    cpl                                           ; $54ca: $2f
    push hl                                       ; $54cb: $e5
    dec c                                         ; $54cc: $0d
    ld sp, hl                                     ; $54cd: $f9
    cp l                                          ; $54ce: $bd
    ccf                                           ; $54cf: $3f
    db $e4                                        ; $54d0: $e4
    jr c, jr_045_5477                             ; $54d1: $38 $a4

    ld d, b                                       ; $54d3: $50
    rst $20                                       ; $54d4: $e7
    ld d, b                                       ; $54d5: $50
    jp z, $9f91                                   ; $54d6: $ca $91 $9f

    adc c                                         ; $54d9: $89
    rst $28                                       ; $54da: $ef
    ret                                           ; $54db: $c9


    dec d                                         ; $54dc: $15
    or [hl]                                       ; $54dd: $b6
    rst $08                                       ; $54de: $cf
    ld [bc], a                                    ; $54df: $02
    dec bc                                        ; $54e0: $0b
    adc a                                         ; $54e1: $8f
    ret                                           ; $54e2: $c9


    dec de                                        ; $54e3: $1b
    ld [hl], d                                    ; $54e4: $72
    and d                                         ; $54e5: $a2
    ld c, $6c                                     ; $54e6: $0e $6c
    inc de                                        ; $54e8: $13
    db $e4                                        ; $54e9: $e4
    sub a                                         ; $54ea: $97
    ld h, l                                       ; $54eb: $65
    adc h                                         ; $54ec: $8c
    rst $18                                       ; $54ed: $df
    db $10                                        ; $54ee: $10
    ld a, [hl+]                                   ; $54ef: $2a
    sbc a                                         ; $54f0: $9f
    ld l, d                                       ; $54f1: $6a
    call nc, $cf79                                ; $54f2: $d4 $79 $cf
    ld a, l                                       ; $54f5: $7d
    sbc a                                         ; $54f6: $9f
    ld c, $e9                                     ; $54f7: $0e $e9
    adc e                                         ; $54f9: $8b
    sbc d                                         ; $54fa: $9a
    inc d                                         ; $54fb: $14
    ld e, h                                       ; $54fc: $5c
    jp z, Jump_045_7528                           ; $54fd: $ca $28 $75

    push bc                                       ; $5500: $c5
    ei                                            ; $5501: $fb
    call z, $8513                                 ; $5502: $cc $13 $85
    cp l                                          ; $5505: $bd
    ld de, $48a6                                  ; $5506: $11 $a6 $48
    ld [hl], c                                    ; $5509: $71
    ret c                                         ; $550a: $d8

    inc c                                         ; $550b: $0c
    ld e, l                                       ; $550c: $5d
    ld d, $43                                     ; $550d: $16 $43
    ld [hl], l                                    ; $550f: $75
    cp c                                          ; $5510: $b9
    sbc l                                         ; $5511: $9d
    add l                                         ; $5512: $85

jr_045_5513:
    xor $f2                                       ; $5513: $ee $f2
    jp nz, $ab48                                  ; $5515: $c2 $48 $ab

    ld e, c                                       ; $5518: $59
    ld h, b                                       ; $5519: $60
    ld [hl], c                                    ; $551a: $71
    inc hl                                        ; $551b: $23
    ld e, [hl]                                    ; $551c: $5e
    ld e, b                                       ; $551d: $58
    push af                                       ; $551e: $f5
    or [hl]                                       ; $551f: $b6
    pop de                                        ; $5520: $d1
    and a                                         ; $5521: $a7
    db $ed                                        ; $5522: $ed
    inc d                                         ; $5523: $14
    ld l, b                                       ; $5524: $68
    ld [hl], d                                    ; $5525: $72
    ld de, $e5d8                                  ; $5526: $11 $d8 $e5
    ld b, h                                       ; $5529: $44
    sbc l                                         ; $552a: $9d
    ld a, e                                       ; $552b: $7b
    sbc c                                         ; $552c: $99
    ld l, h                                       ; $552d: $6c
    and h                                         ; $552e: $a4
    jr c, jr_045_559d                             ; $552f: $38 $6c

    ld b, [hl]                                    ; $5531: $46
    call c, $8198                                 ; $5532: $dc $98 $81

jr_045_5535:
    add hl, de                                    ; $5535: $19
    dec l                                         ; $5536: $2d
    ld h, [hl]                                    ; $5537: $66
    cp c                                          ; $5538: $b9
    ld b, $e2                                     ; $5539: $06 $e2
    db $10                                        ; $553b: $10
    ld b, c                                       ; $553c: $41
    jp z, $e8c8                                   ; $553d: $ca $c8 $e8

    ld d, d                                       ; $5540: $52
    ld b, c                                       ; $5541: $41
    db $db                                        ; $5542: $db
    scf                                           ; $5543: $37

jr_045_5544:
    xor c                                         ; $5544: $a9
    ld d, c                                       ; $5545: $51
    inc sp                                        ; $5546: $33
    cp [hl]                                       ; $5547: $be
    adc b                                         ; $5548: $88
    dec e                                         ; $5549: $1d
    adc d                                         ; $554a: $8a
    cp e                                          ; $554b: $bb
    ld a, h                                       ; $554c: $7c
    ld a, [hl+]                                   ; $554d: $2a
    jr nc, jr_045_5513                            ; $554e: $30 $c3

    sub b                                         ; $5550: $90
    sub e                                         ; $5551: $93
    ld [hl], d                                    ; $5552: $72
    xor b                                         ; $5553: $a8
    sub b                                         ; $5554: $90
    db $db                                        ; $5555: $db
    ld [hl], c                                    ; $5556: $71
    cp a                                          ; $5557: $bf
    dec d                                         ; $5558: $15
    ld l, h                                       ; $5559: $6c
    inc b                                         ; $555a: $04
    ld b, c                                       ; $555b: $41
    or h                                          ; $555c: $b4
    ld a, l                                       ; $555d: $7d
    add hl, sp                                    ; $555e: $39
    pop de                                        ; $555f: $d1
    inc c                                         ; $5560: $0c
    ld [$7c20], a                                 ; $5561: $ea $20 $7c
    ld [hl], c                                    ; $5564: $71
    ld h, e                                       ; $5565: $63
    ld b, $e6                                     ; $5566: $06 $e6
    db $d3                                        ; $5568: $d3
    add l                                         ; $5569: $85
    inc a                                         ; $556a: $3c
    ld [hl], c                                    ; $556b: $71
    sub a                                         ; $556c: $97
    db $fd                                        ; $556d: $fd
    add hl, hl                                    ; $556e: $29
    sbc $53                                       ; $556f: $de $53
    ld e, a                                       ; $5571: $5f
    inc sp                                        ; $5572: $33
    or l                                          ; $5573: $b5
    rst $38                                       ; $5574: $ff
    jp nc, $9344                                  ; $5575: $d2 $44 $93

    ld e, c                                       ; $5578: $59
    and [hl]                                      ; $5579: $a6
    sub h                                         ; $557a: $94
    db $d3                                        ; $557b: $d3
    rst $18                                       ; $557c: $df
    ld a, $ae                                     ; $557d: $3e $ae
    daa                                           ; $557f: $27
    dec bc                                        ; $5580: $0b
    inc l                                         ; $5581: $2c
    ld l, h                                       ; $5582: $6c
    ld b, e                                       ; $5583: $43
    cp [hl]                                       ; $5584: $be
    ld hl, $e3fb                                  ; $5585: $21 $fb $e3
    and [hl]                                      ; $5588: $a6
    jp nc, Jump_000_3c9f                          ; $5589: $d2 $9f $3c

    pop af                                        ; $558c: $f1
    ld b, [hl]                                    ; $558d: $46
    db $10                                        ; $558e: $10
    sub h                                         ; $558f: $94
    ld h, a                                       ; $5590: $67
    cp $7e                                        ; $5591: $fe $7e
    dec b                                         ; $5593: $05
    ld l, l                                       ; $5594: $6d
    rst $28                                       ; $5595: $ef
    jr nc, jr_045_5535                            ; $5596: $30 $9d

    inc d                                         ; $5598: $14
    scf                                           ; $5599: $37
    res 4, h                                      ; $559a: $cb $a4
    ld b, [hl]                                    ; $559c: $46

jr_045_559d:
    ret c                                         ; $559d: $d8

    add [hl]                                      ; $559e: $86
    ld a, h                                       ; $559f: $7c
    ld b, e                                       ; $55a0: $43
    ld [hl], $e2                                  ; $55a1: $36 $e2
    ld h, [hl]                                    ; $55a3: $66
    ld e, c                                       ; $55a4: $59
    ld c, $51                                     ; $55a5: $0e $51
    rla                                           ; $55a7: $17
    rst $28                                       ; $55a8: $ef
    ld l, c                                       ; $55a9: $69
    call nc, $d04e                                ; $55aa: $d4 $4e $d0
    and a                                         ; $55ad: $a7
    ld a, l                                       ; $55ae: $7d
    ld a, [hl-]                                   ; $55af: $3a
    db $e4                                        ; $55b0: $e4
    push hl                                       ; $55b1: $e5
    halt                                          ; $55b2: $76
    inc e                                         ; $55b3: $1c
    or l                                          ; $55b4: $b5
    ld [hl-], a                                   ; $55b5: $32
    add [hl]                                      ; $55b6: $86
    jr nz, jr_045_5544                            ; $55b7: $20 $8b

    and c                                         ; $55b9: $a1
    cp d                                          ; $55ba: $ba
    call c, Call_045_42ce                         ; $55bb: $dc $ce $42
    ld [hl], a                                    ; $55be: $77
    ld a, c                                       ; $55bf: $79
    ld h, c                                       ; $55c0: $61
    and h                                         ; $55c1: $a4
    push de                                       ; $55c2: $d5
    inc l                                         ; $55c3: $2c
    or b                                          ; $55c4: $b0
    ld l, b                                       ; $55c5: $68
    ld h, a                                       ; $55c6: $67
    ld l, a                                       ; $55c7: $6f
    ret z                                         ; $55c8: $c8

    cp $2c                                        ; $55c9: $fe $2c
    halt                                          ; $55cb: $76
    push de                                       ; $55cc: $d5
    rst $00                                       ; $55cd: $c7
    ld a, e                                       ; $55ce: $7b
    ld a, [de]                                    ; $55cf: $1a
    or l                                          ; $55d0: $b5
    sub e                                         ; $55d1: $93
    rst $28                                       ; $55d2: $ef
    db $d3                                        ; $55d3: $d3
    pop de                                        ; $55d4: $d1
    dec l                                         ; $55d5: $2d
    ldh [$cb], a                                  ; $55d6: $e0 $cb
    sbc [hl]                                      ; $55d8: $9e
    inc d                                         ; $55d9: $14
    ld b, [hl]                                    ; $55da: $46
    add hl, hl                                    ; $55db: $29
    sub e                                         ; $55dc: $93
    push bc                                       ; $55dd: $c5
    add $41                                       ; $55de: $c6 $41
    ld e, l                                       ; $55e0: $5d
    dec b                                         ; $55e1: $05
    pop hl                                        ; $55e2: $e1
    ret                                           ; $55e3: $c9


    ld [bc], a                                    ; $55e4: $02
    dec bc                                        ; $55e5: $0b

jr_045_55e6:
    add hl, bc                                    ; $55e6: $09
    dec b                                         ; $55e7: $05
    ld b, e                                       ; $55e8: $43
    or $a7                                        ; $55e9: $f6 $a7
    ret nz                                        ; $55eb: $c0

jr_045_55ec:
    adc l                                         ; $55ec: $8d
    xor b                                         ; $55ed: $a8
    rst $28                                       ; $55ee: $ef
    db $e3                                        ; $55ef: $e3
    adc e                                         ; $55f0: $8b
    ld l, h                                       ; $55f1: $6c
    db $e4                                        ; $55f2: $e4
    xor d                                         ; $55f3: $aa
    ld [$93b5], a                                 ; $55f4: $ea $b5 $93
    adc e                                         ; $55f7: $8b
    dec de                                        ; $55f8: $1b
    or e                                          ; $55f9: $b3
    dec hl                                        ; $55fa: $2b
    res 1, b                                      ; $55fb: $cb $88
    ld a, [de]                                    ; $55fd: $1a

Jump_045_55fe:
    add hl, de                                    ; $55fe: $19
    ld e, l                                       ; $55ff: $5d
    ld [hl], $a2                                  ; $5600: $36 $a2
    jr z, jr_045_55e6                             ; $5602: $28 $e2

    dec a                                         ; $5604: $3d
    adc l                                         ; $5605: $8d
    jp c, Jump_045_4209                           ; $5606: $da $09 $42

    ld b, d                                       ; $5609: $42
    or h                                          ; $560a: $b4
    sub c                                         ; $560b: $91
    adc c                                         ; $560c: $89
    ld e, l                                       ; $560d: $5d
    dec [hl]                                      ; $560e: $35
    and l                                         ; $560f: $a5
    and b                                         ; $5610: $a0
    ld c, a                                       ; $5611: $4f
    ld e, l                                       ; $5612: $5d
    ld e, b                                       ; $5613: $58
    ret z                                         ; $5614: $c8

    inc de                                        ; $5615: $13
    rlca                                          ; $5616: $07
    add e                                         ; $5617: $83
    ld l, $0a                                     ; $5618: $2e $0a
    db $e4                                        ; $561a: $e4
    and l                                         ; $561b: $a5
    ld [bc], a                                    ; $561c: $02
    inc sp                                        ; $561d: $33
    inc c                                         ; $561e: $0c
    add hl, sp                                    ; $561f: $39
    add hl, hl                                    ; $5620: $29
    add a                                         ; $5621: $87
    ld a, [bc]                                    ; $5622: $0a
    ld h, c                                       ; $5623: $61
    jp z, Jump_045_6c8c                           ; $5624: $ca $8c $6c

    call nz, $b2cd                                ; $5627: $c4 $cd $b2
    inc e                                         ; $562a: $1c
    and d                                         ; $562b: $a2

jr_045_562c:
    ld l, $de                                     ; $562c: $2e $de
    db $d3                                        ; $562e: $d3
    xor b                                         ; $562f: $a8
    sbc l                                         ; $5630: $9d
    and b                                         ; $5631: $a0
    ld e, a                                       ; $5632: $5f
    ld bc, $88be                                  ; $5633: $01 $be $88
    ld a, [de]                                    ; $5636: $1a
    ld [de], a                                    ; $5637: $12
    and l                                         ; $5638: $a5
    ld e, h                                       ; $5639: $5c
    ld d, $98                                     ; $563a: $16 $98
    add d                                         ; $563c: $82
    pop af                                        ; $563d: $f1
    jp hl                                         ; $563e: $e9


    or d                                          ; $563f: $b2
    jr jr_045_55ec                                ; $5640: $18 $aa

    adc e                                         ; $5642: $8b
    cpl                                           ; $5643: $2f

Jump_045_5644:
    ld [hl], $1c                                  ; $5644: $36 $1c
    ld h, a                                       ; $5646: $67
    add c                                         ; $5647: $81
    push bc                                       ; $5648: $c5
    ei                                            ; $5649: $fb
    ld d, $37                                     ; $564a: $16 $37
    push de                                       ; $564c: $d5
    ld a, [c]                                     ; $564d: $f2
    halt                                          ; $564e: $76
    add [hl]                                      ; $564f: $86
    ld d, b                                       ; $5650: $50
    ld c, c                                       ; $5651: $49
    add l                                         ; $5652: $85
    ld d, d                                       ; $5653: $52
    ld e, [hl]                                    ; $5654: $5e
    db $d3                                        ; $5655: $d3
    ld l, [hl]                                    ; $5656: $6e
    ld [c], a                                     ; $5657: $e2
    db $fc                                        ; $5658: $fc
    ret z                                         ; $5659: $c8

    adc c                                         ; $565a: $89
    ld a, [hl-]                                   ; $565b: $3a
    rst $30                                       ; $565c: $f7
    reti                                          ; $565d: $d9


    rra                                           ; $565e: $1f
    and [hl]                                      ; $565f: $a6
    sbc a                                         ; $5660: $9f
    ld h, a                                       ; $5661: $67
    and [hl]                                      ; $5662: $a6
    cp a                                          ; $5663: $bf
    sub c                                         ; $5664: $91
    ld h, l                                       ; $5665: $65
    jp z, Jump_045_6f11                           ; $5666: $ca $11 $6f

    inc b                                         ; $5669: $04
    db $fd                                        ; $566a: $fd
    ld a, [bc]                                    ; $566b: $0a
    ld [hl], l                                    ; $566c: $75
    dec c                                         ; $566d: $0d
    push de                                       ; $566e: $d5
    push hl                                       ; $566f: $e5
    halt                                          ; $5670: $76
    ld d, $ba                                     ; $5671: $16 $ba
    rrc e                                         ; $5673: $cb $0b
    inc hl                                        ; $5675: $23
    xor l                                         ; $5676: $ad
    ld h, [hl]                                    ; $5677: $66
    add c                                         ; $5678: $81
    push bc                                       ; $5679: $c5
    pop bc                                        ; $567a: $c1
    call c, $a21b                                 ; $567b: $dc $1b $a2
    db $ed                                        ; $567e: $ed
    bit 5, b                                      ; $567f: $cb $68
    ld a, [de]                                    ; $5681: $1a
    sbc b                                         ; $5682: $98
    cpl                                           ; $5683: $2f
    ld a, [c]                                     ; $5684: $f2
    push bc                                       ; $5685: $c5
    ld c, l                                       ; $5686: $4d
    pop hl                                        ; $5687: $e1
    adc e                                         ; $5688: $8b
    di                                            ; $5689: $f3
    inc hl                                        ; $568a: $23
    push hl                                       ; $568b: $e5
    jp nz, $e436                                  ; $568c: $c2 $36 $e4

    bit 0, h                                      ; $568f: $cb $44
    ld e, l                                       ; $5691: $5d
    cp h                                          ; $5692: $bc
    ld [hl], $c2                                  ; $5693: $36 $c2
    ret z                                         ; $5695: $c8

    add a                                         ; $5696: $87
    pop de                                        ; $5697: $d1
    rst $00                                       ; $5698: $c7
    rla                                           ; $5699: $17
    xor c                                         ; $569a: $a9
    sub c                                         ; $569b: $91
    push bc                                       ; $569c: $c5
    ld d, b                                       ; $569d: $50
    jr nz, jr_045_562c                            ; $569e: $20 $8c

    ld d, b                                       ; $56a0: $50
    ret                                           ; $56a1: $c9


    ld l, b                                       ; $56a2: $68
    ld a, [de]                                    ; $56a3: $1a
    sbc b                                         ; $56a4: $98
    ld b, a                                       ; $56a5: $47
    rla                                           ; $56a6: $17
    ld [de], a                                    ; $56a7: $12
    jp z, $e2fe                                   ; $56a8: $ca $fe $e2

    and [hl]                                      ; $56ab: $a6
    ld e, d                                       ; $56ac: $5a
    sbc $ce                                       ; $56ad: $de $ce
    db $10                                        ; $56af: $10
    ld a, [hl+]                                   ; $56b0: $2a
    xor c                                         ; $56b1: $a9
    ld d, b                                       ; $56b2: $50
    jp z, $da6b                                   ; $56b3: $ca $6b $da

    ld c, l                                       ; $56b6: $4d
    db $ec                                        ; $56b7: $ec
    sub [hl]                                      ; $56b8: $96
    ld sp, $617e                                  ; $56b9: $31 $7e $61
    ld h, h                                       ; $56bc: $64
    ld a, e                                       ; $56bd: $7b
    sbc h                                         ; $56be: $9c
    xor b                                         ; $56bf: $a8
    ld [hl], e                                    ; $56c0: $73
    ld c, a                                       ; $56c1: $4f
    cp h                                          ; $56c2: $bc
    ld de, $5d44                                  ; $56c3: $11 $44 $5d
    call c, $1fd5                                 ; $56c6: $dc $d5 $1f
    rst $20                                       ; $56c9: $e7
    ld b, a                                       ; $56ca: $47
    db $fc                                        ; $56cb: $fc
    ld a, a                                       ; $56cc: $7f
    ld h, c                                       ; $56cd: $61
    dec de                                        ; $56ce: $1b
    ld a, [c]                                     ; $56cf: $f2
    ld a, c                                       ; $56d0: $79
    ld a, [$9d15]                                 ; $56d1: $fa $15 $9d
    cp $45                                        ; $56d4: $fe $45
    db $fd                                        ; $56d6: $fd
    adc $62                                       ; $56d7: $ce $62
    db $e3                                        ; $56d9: $e3
    ld b, l                                       ; $56da: $45
    add hl, hl                                    ; $56db: $29
    ld h, e                                       ; $56dc: $63
    xor c                                         ; $56dd: $a9
    ld a, e                                       ; $56de: $7b
    inc a                                         ; $56df: $3c
    sub d                                         ; $56e0: $92
    dec b                                         ; $56e1: $05
    sub [hl]                                      ; $56e2: $96
    ld h, c                                       ; $56e3: $61
    add [hl]                                      ; $56e4: $86
    ret nz                                        ; $56e5: $c0

    sub b                                         ; $56e6: $90
    adc l                                         ; $56e7: $8d
    jr nc, jr_045_572f                            ; $56e8: $30 $45

    db $ec                                        ; $56ea: $ec
    inc e                                         ; $56eb: $1c
    sbc b                                         ; $56ec: $98
    sub c                                         ; $56ed: $91
    dec b                                         ; $56ee: $05
    sub [hl]                                      ; $56ef: $96
    adc l                                         ; $56f0: $8d
    inc l                                         ; $56f1: $2c
    ld b, e                                       ; $56f2: $43
    cp h                                          ; $56f3: $bc
    sub c                                         ; $56f4: $91
    db $d3                                        ; $56f5: $d3
    and l                                         ; $56f6: $a5
    or $9b                                        ; $56f7: $f6 $9b
    ld de, $57e8                                  ; $56f9: $11 $e8 $57
    ld l, l                                       ; $56fc: $6d
    pop de                                        ; $56fd: $d1
    scf                                           ; $56fe: $37
    push af                                       ; $56ff: $f5
    ld e, c                                       ; $5700: $59
    xor b                                         ; $5701: $a8
    ld hl, $fb5e                                  ; $5702: $21 $5e $fb
    ld l, b                                       ; $5705: $68
    ei                                            ; $5706: $fb

jr_045_5707:
    ld d, d                                       ; $5707: $52
    call c, $bd7b                                 ; $5708: $dc $7b $bd
    cp a                                          ; $570b: $bf
    xor a                                         ; $570c: $af
    ld c, a                                       ; $570d: $4f
    db $dd                                        ; $570e: $dd
    ld h, c                                       ; $570f: $61
    ld b, e                                       ; $5710: $43
    pop hl                                        ; $5711: $e1
    dec bc                                        ; $5712: $0b
    db $db                                        ; $5713: $db
    sub b                                         ; $5714: $90
    ld l, a                                       ; $5715: $6f
    adc b                                         ; $5716: $88
    rrca                                          ; $5717: $0f
    db $fd                                        ; $5718: $fd
    db $ed                                        ; $5719: $ed
    and [hl]                                      ; $571a: $a6
    ld a, h                                       ; $571b: $7c
    call nc, $84e5                                ; $571c: $d4 $e5 $84
    ld h, c                                       ; $571f: $61
    jr z, jr_045_5707                             ; $5720: $28 $e5

    add l                                         ; $5722: $85
    pop de                                        ; $5723: $d1
    xor a                                         ; $5724: $af
    ld [hl], l                                    ; $5725: $75
    ld d, b                                       ; $5726: $50
    ld a, [bc]                                    ; $5727: $0a

Jump_045_5728:
    sub l                                         ; $5728: $95
    ret                                           ; $5729: $c9


    ld b, d                                       ; $572a: $42
    db $eb                                        ; $572b: $eb
    rst $08                                       ; $572c: $cf
    dec sp                                        ; $572d: $3b
    rlca                                          ; $572e: $07

jr_045_572f:
    dec b                                         ; $572f: $05
    ld b, e                                       ; $5730: $43
    ld a, [hl]                                    ; $5731: $7e
    and a                                         ; $5732: $a7
    inc hl                                        ; $5733: $23
    inc l                                         ; $5734: $2c
    ld l, a                                       ; $5735: $6f
    inc a                                         ; $5736: $3c
    xor c                                         ; $5737: $a9
    ld l, e                                       ; $5738: $6b
    ld [hl], e                                    ; $5739: $73
    ld a, [$49e3]                                 ; $573a: $fa $e3 $49
    add c                                         ; $573d: $81
    db $10                                        ; $573e: $10
    ccf                                           ; $573f: $3f
    dec bc                                        ; $5740: $0b
    xor h                                         ; $5741: $ac
    ld b, d                                       ; $5742: $42
    add hl, hl                                    ; $5743: $29
    db $d3                                        ; $5744: $d3
    xor a                                         ; $5745: $af
    xor l                                         ; $5746: $ad
    rrca                                          ; $5747: $0f
    ld l, c                                       ; $5748: $69
    jr z, jr_045_57c7                             ; $5749: $28 $7c

    ld a, c                                       ; $574b: $79
    ld d, c                                       ; $574c: $51
    ld l, a                                       ; $574d: $6f
    adc b                                         ; $574e: $88
    ld a, [$c59d]                                 ; $574f: $fa $9d $c5
    add $8b                                       ; $5752: $c6 $8b
    ld d, d                                       ; $5754: $52
    add $d2                                       ; $5755: $c6 $d2
    pop de                                        ; $5757: $d1
    cpl                                           ; $5758: $2f
    inc a                                         ; $5759: $3c
    ld d, $c4                                     ; $575a: $16 $c4
    adc $0b                                       ; $575c: $ce $0b
    dec sp                                        ; $575e: $3b
    db $d3                                        ; $575f: $d3
    or $c5                                        ; $5760: $f6 $c5
    ld sp, hl                                     ; $5762: $f9
    ld de, $5fff                                  ; $5763: $11 $ff $5f
    ret c                                         ; $5766: $d8

    add [hl]                                      ; $5767: $86
    ld a, h                                       ; $5768: $7c
    sbc [hl]                                      ; $5769: $9e
    db $ec                                        ; $576a: $ec
    adc a                                         ; $576b: $8f
    and e                                         ; $576c: $a3
    or $59                                        ; $576d: $f6 $59
    ld h, b                                       ; $576f: $60
    reti                                          ; $5770: $d9


    rra                                           ; $5771: $1f
    and [hl]                                      ; $5772: $a6
    sbc a                                         ; $5773: $9f
    ld [$33f7], a                                 ; $5774: $ea $f7 $33
    rst $18                                       ; $5777: $df
    rst $30                                       ; $5778: $f7
    dec hl                                        ; $5779: $2b
    sbc l                                         ; $577a: $9d
    adc [hl]                                      ; $577b: $8e
    add hl, de                                    ; $577c: $19
    ld l, $ce                                     ; $577d: $2e $ce
    adc a                                         ; $577f: $8f
    cp b                                          ; $5780: $b8
    adc e                                         ; $5781: $8b
    ld [hl], a                                    ; $5782: $77
    ld c, d                                       ; $5783: $4a
    add c                                         ; $5784: $81
    ld c, l                                       ; $5785: $4d
    ld a, [hl+]                                   ; $5786: $2a
    ret z                                         ; $5787: $c8

    ld b, h                                       ; $5788: $44
    ei                                            ; $5789: $fb
    cp l                                          ; $578a: $bd
    ld c, a                                       ; $578b: $4f
    db $10                                        ; $578c: $10
    pop bc                                        ; $578d: $c1
    ld b, l                                       ; $578e: $45
    cp e                                          ; $578f: $bb
    scf                                           ; $5790: $37
    ld [hl], l                                    ; $5791: $75
    ld [hl], d                                    ; $5792: $72
    db $fd                                        ; $5793: $fd
    ld a, [bc]                                    ; $5794: $0a
    dec e                                         ; $5795: $1d
    ld d, e                                       ; $5796: $53
    ld h, [hl]                                    ; $5797: $66
    call nz, $6287                                ; $5798: $c4 $87 $62
    ld l, a                                       ; $579b: $6f
    ld b, h                                       ; $579c: $44
    ei                                            ; $579d: $fb
    cp l                                          ; $579e: $bd
    ld c, a                                       ; $579f: $4f
    sub b                                         ; $57a0: $90
    ld e, l                                       ; $57a1: $5d
    ld e, a                                       ; $57a2: $5f
    cp h                                          ; $57a3: $bc
    ld [hl], h                                    ; $57a4: $74
    db $ec                                        ; $57a5: $ec
    ld h, d                                       ; $57a6: $62
    db $10                                        ; $57a7: $10
    dec [hl]                                      ; $57a8: $35
    ld [hl-], a                                   ; $57a9: $32
    cp c                                          ; $57aa: $b9
    ld l, d                                       ; $57ab: $6a
    sbc c                                         ; $57ac: $99
    ld d, d                                       ; $57ad: $52
    ld c, [hl]                                    ; $57ae: $4e
    ld a, a                                       ; $57af: $7f
    dec de                                        ; $57b0: $1b
    pop af                                        ; $57b1: $f1
    cp [hl]                                       ; $57b2: $be
    sub l                                         ; $57b3: $95
    dec bc                                        ; $57b4: $0b
    sub l                                         ; $57b5: $95
    adc a                                         ; $57b6: $8f
    ld e, $7b                                     ; $57b7: $1e $7b
    ld a, a                                       ; $57b9: $7f
    sub [hl]                                      ; $57ba: $96
    cpl                                           ; $57bb: $2f
    dec b                                         ; $57bc: $05
    sbc d                                         ; $57bd: $9a
    halt                                          ; $57be: $76
    rst $08                                       ; $57bf: $cf
    rst $18                                       ; $57c0: $df
    xor a                                         ; $57c1: $af
    or l                                          ; $57c2: $b5
    daa                                           ; $57c3: $27
    ld [hl], $e4                                  ; $57c4: $36 $e4
    ret                                           ; $57c6: $c9


jr_045_57c7:
    di                                            ; $57c7: $f3
    ld h, h                                       ; $57c8: $64
    inc hl                                        ; $57c9: $23
    push de                                       ; $57ca: $d5
    ld hl, $8742                                  ; $57cb: $21 $42 $87
    ld b, h                                       ; $57ce: $44
    adc d                                         ; $57cf: $8a
    ld a, e                                       ; $57d0: $7b
    ld e, e                                       ; $57d1: $5b
    db $10                                        ; $57d2: $10
    ld [hl], l                                    ; $57d3: $75
    ld e, c                                       ; $57d4: $59
    or b                                          ; $57d5: $b0
    scf                                           ; $57d6: $37
    ld d, d                                       ; $57d7: $52
    call c, Call_045_5357                         ; $57d8: $dc $57 $53
    call c, Call_045_7f3d                         ; $57db: $dc $3d $7f
    call c, Call_000_05ef                         ; $57de: $dc $ef $05
    add l                                         ; $57e1: $85
    ld e, a                                       ; $57e2: $5f
    call nc, Call_000_2364                        ; $57e3: $d4 $64 $23
    ld [hl], h                                    ; $57e6: $74
    ret z                                         ; $57e7: $c8

    rst $08                                       ; $57e8: $cf
    xor [hl]                                      ; $57e9: $ae
    cpl                                           ; $57ea: $2f
    ld e, [hl]                                    ; $57eb: $5e
    ld a, [hl-]                                   ; $57ec: $3a

jr_045_57ed:
    halt                                          ; $57ed: $76
    db $fd                                        ; $57ee: $fd
    ld a, [bc]                                    ; $57ef: $0a
    ld [hl], l                                    ; $57f0: $75
    ld b, [hl]                                    ; $57f1: $46
    ld [c], a                                     ; $57f2: $e2
    ld a, [hl]                                    ; $57f3: $7e
    cp c                                          ; $57f4: $b9
    ld [c], a                                     ; $57f5: $e2
    ld h, $0b                                     ; $57f6: $26 $0b
    call z, $ebf9                                 ; $57f8: $cc $f9 $eb
    adc l                                         ; $57fb: $8d
    adc h                                         ; $57fc: $8c
    call nz, Call_045_7751                        ; $57fd: $c4 $51 $77
    ld [hl], d                                    ; $5800: $72
    ld [hl-], a                                   ; $5801: $32
    ld e, c                                       ; $5802: $59
    xor [hl]                                      ; $5803: $ae
    add c                                         ; $5804: $81
    ld l, b                                       ; $5805: $68
    cp a                                          ; $5806: $bf
    rst $30                                       ; $5807: $f7
    add hl, bc                                    ; $5808: $09
    or d                                          ; $5809: $b2
    ret nz                                        ; $580a: $c0

    ld [c], a                                     ; $580b: $e2
    jr nz, jr_045_57ed                            ; $580c: $20 $df

    xor a                                         ; $580e: $af
    xor l                                         ; $580f: $ad
    sub d                                         ; $5810: $92
    add [hl]                                      ; $5811: $86
    dec bc                                        ; $5812: $0b
    add hl, sp                                    ; $5813: $39
    jp c, $8fbe                                   ; $5814: $da $be $8f

    cp d                                          ; $5817: $ba
    ld d, h                                       ; $5818: $54
    cpl                                           ; $5819: $2f
    jp c, Jump_000_21bd                           ; $581a: $da $bd $21

    ld d, h                                       ; $581d: $54
    and d                                         ; $581e: $a2
    pop de                                        ; $581f: $d1
    jp nz, Jump_000_2653                          ; $5820: $c2 $53 $26

    set 5, h                                      ; $5823: $cb $ec
    dec b                                         ; $5825: $05
    call z, $8823                                 ; $5826: $cc $23 $88
    cp d                                          ; $5829: $ba
    inc l                                         ; $582a: $2c
    or e                                          ; $582b: $b3
    rst $30                                       ; $582c: $f7
    db $f4                                        ; $582d: $f4
    dec hl                                        ; $582e: $2b
    dec e                                         ; $582f: $1d
    ld e, a                                       ; $5830: $5f
    ld l, d                                       ; $5831: $6a
    and h                                         ; $5832: $a4
    ld a, [$fb8b]                                 ; $5833: $fa $8b $fb
    push hl                                       ; $5836: $e5
    ld hl, sp+$79                                 ; $5837: $f8 $79
    and d                                         ; $5839: $a2
    ld l, $1a                                     ; $583a: $2e $1a
    ld a, l                                       ; $583c: $7d
    ld d, e                                       ; $583d: $53

Jump_045_583e:
    ld l, a                                       ; $583e: $6f
    ld [$8f95], sp                                ; $583f: $08 $95 $8f
    or $7b                                        ; $5842: $f6 $7b
    sbc a                                         ; $5844: $9f
    ld a, h                                       ; $5845: $7c
    inc b                                         ; $5846: $04
    jp c, $8cbe                                   ; $5847: $da $be $8c

    ld [hl], e                                    ; $584a: $73
    cp $ab                                        ; $584b: $fe $ab
    sub l                                         ; $584d: $95
    sub [hl]                                      ; $584e: $96
    ld b, e                                       ; $584f: $43
    push bc                                       ; $5850: $c5
    inc bc                                        ; $5851: $03
    ld h, l                                       ; $5852: $65
    add c                                         ; $5853: $81
    dec e                                         ; $5854: $1d
    add h                                         ; $5855: $84
    ld hl, sp-$5f                                 ; $5856: $f8 $a1
    ld [hl], d                                    ; $5858: $72
    xor $fb                                       ; $5859: $ee $fb
    dec d                                         ; $585b: $15
    ld [hl], l                                    ; $585c: $75
    ld h, c                                       ; $585d: $61
    adc $5f                                       ; $585e: $ce $5f
    ld l, a                                       ; $5860: $6f
    sbc b                                         ; $5861: $98
    ld [hl-], a                                   ; $5862: $32
    ld e, a                                       ; $5863: $5f
    sub [hl]                                      ; $5864: $96
    or a                                          ; $5865: $b7
    db $fd                                        ; $5866: $fd
    ld [hl-], a                                   ; $5867: $32
    ld d, c                                       ; $5868: $51
    ret c                                         ; $5869: $d8

    dec de                                        ; $586a: $1b
    pop de                                        ; $586b: $d1
    ld a, [hl]                                    ; $586c: $7e
    rst $28                                       ; $586d: $ef
    inc de                                        ; $586e: $13
    call nc, $015a                                ; $586f: $d4 $5a $01
    db $ed                                        ; $5872: $ed
    ld e, a                                       ; $5873: $5f
    xor d                                         ; $5874: $aa
    rla                                           ; $5875: $17
    rst $30                                       ; $5876: $f7
    xor c                                         ; $5877: $a9
    ld h, [hl]                                    ; $5878: $66
    di                                            ; $5879: $f3
    sub l                                         ; $587a: $95
    ld [hl], d                                    ; $587b: $72
    push de                                       ; $587c: $d5
    ld h, h                                       ; $587d: $64
    ld a, e                                       ; $587e: $7b
    sbc h                                         ; $587f: $9c
    sub h                                         ; $5880: $94
    rst $18                                       ; $5881: $df
    rst $08                                       ; $5882: $cf
    rra                                           ; $5883: $1f
    ld [hl], l                                    ; $5884: $75
    ld e, c                                       ; $5885: $59
    ld h, [hl]                                    ; $5886: $66
    rst $28                                       ; $5887: $ef
    adc c                                         ; $5888: $89
    di                                            ; $5889: $f3
    inc hl                                        ; $588a: $23
    push de                                       ; $588b: $d5
    ld h, l                                       ; $588c: $65
    ld sp, $6f2c                                  ; $588d: $31 $2c $6f
    ld c, a                                       ; $5890: $4f
    ld a, [hl]                                    ; $5891: $7e
    or $a7                                        ; $5892: $f6 $a7
    cp d                                          ; $5894: $ba
    ld c, a                                       ; $5895: $4f
    push af                                       ; $5896: $f5
    ld d, l                                       ; $5897: $55
    push af                                       ; $5898: $f5
    db $fd                                        ; $5899: $fd
    ld a, [bc]                                    ; $589a: $0a
    db $ed                                        ; $589b: $ed
    ld a, l                                       ; $589c: $7d
    ld d, $9b                                     ; $589d: $16 $9b
    ld d, d                                       ; $589f: $52
    xor [hl]                                      ; $58a0: $ae
    ld a, [$b390]                                 ; $58a1: $fa $90 $b3
    ld sp, hl                                     ; $58a4: $f9
    db $e3                                        ; $58a5: $e3
    db $fc                                        ; $58a6: $fc
    ld c, b                                       ; $58a7: $48
    ld [hl], l                                    ; $58a8: $75
    pop hl                                        ; $58a9: $e1
    rst $10                                       ; $58aa: $d7
    or $c1                                        ; $58ab: $f6 $c1
    ld [$c5cf], a                                 ; $58ad: $ea $cf $c5
    db $fd                                        ; $58b0: $fd
    add d                                         ; $58b1: $82
    cp l                                          ; $58b2: $bd
    ld c, a                                       ; $58b3: $4f
    rla                                           ; $58b4: $17
    ld [hl], d                                    ; $58b5: $72
    or h                                          ; $58b6: $b4
    ld a, l                                       ; $58b7: $7d
    inc de                                        ; $58b8: $13
    rst $28                                       ; $58b9: $ef
    ld e, e                                       ; $58ba: $5b
    ld [hl], l                                    ; $58bb: $75
    reti                                          ; $58bc: $d9


    rra                                           ; $58bd: $1f
    ld b, [hl]                                    ; $58be: $46
    pop hl                                        ; $58bf: $e1
    rst $08                                       ; $58c0: $cf
    cp [hl]                                       ; $58c1: $be
    ld [c], a                                     ; $58c2: $e2
    xor $e3                                       ; $58c3: $ee $e3
    and [hl]                                      ; $58c5: $a6
    ld b, d                                       ; $58c6: $42
    xor b                                         ; $58c7: $a8
    add h                                         ; $58c8: $84
    ld c, $39                                     ; $58c9: $0e $39
    db $fd                                        ; $58cb: $fd
    ld a, [bc]                                    ; $58cc: $0a
    dec e                                         ; $58cd: $1d
    ld d, d                                       ; $58ce: $52
    ld e, h                                       ; $58cf: $5c
    ld d, $43                                     ; $58d0: $16 $43
    and c                                         ; $58d2: $a1
    jp nz, $ca74                                  ; $58d3: $c2 $74 $ca

    push bc                                       ; $58d6: $c5
    rla                                           ; $58d7: $17
    or [hl]                                       ; $58d8: $b6
    add b                                         ; $58d9: $80
    add h                                         ; $58da: $84
    add hl, hl                                    ; $58db: $29
    call nc, $9b4c                                ; $58dc: $d4 $4c $9b
    cpl                                           ; $58df: $2f
    ld [hl-], a                                   ; $58e0: $32
    ld h, c                                       ; $58e1: $61
    sbc e                                         ; $58e2: $9b
    ld h, l                                       ; $58e3: $65
    sbc c                                         ; $58e4: $99
    ld e, h                                       ; $58e5: $5c
    or h                                          ; $58e6: $b4
    rst $18                                       ; $58e7: $df
    dec de                                        ; $58e8: $1b
    call z, $afd7                                 ; $58e9: $cc $d7 $af
    db $ed                                        ; $58ec: $ed
    rst $38                                       ; $58ed: $ff
    or $0e                                        ; $58ee: $f6 $0e
    add c                                         ; $58f0: $81
    ld d, h                                       ; $58f1: $54
    rla                                           ; $58f2: $17
    rst $38                                       ; $58f3: $ff
    and a                                         ; $58f4: $a7
    ld a, b                                       ; $58f5: $78
    ld c, a                                       ; $58f6: $4f
    dec a                                         ; $58f7: $3d
    ld c, a                                       ; $58f8: $4f
    ld c, [hl]                                    ; $58f9: $4e
    ld b, d                                       ; $58fa: $42
    push hl                                       ; $58fb: $e5
    and e                                         ; $58fc: $a3
    cp l                                          ; $58fd: $bd
    ld a, l                                       ; $58fe: $7d
    call nc, $a4e5                                ; $58ff: $d4 $e5 $a4
    ld b, b                                       ; $5902: $40
    and e                                         ; $5903: $a3
    ld d, a                                       ; $5904: $57
    ld b, c                                       ; $5905: $41
    ld a, b                                       ; $5906: $78
    ld a, [c]                                     ; $5907: $f2
    ld a, e                                       ; $5908: $7b
    inc hl                                        ; $5909: $23

Jump_045_590a:
    jp c, $7def                                   ; $590a: $da $ef $7d

    add d                                         ; $590d: $82
    ld a, h                                       ; $590e: $7c
    db $f4                                        ; $590f: $f4
    ld h, e                                       ; $5910: $63
    ld l, d                                       ; $5911: $6a
    and d                                         ; $5912: $a2
    ld [hl], b                                    ; $5913: $70
    sub c                                         ; $5914: $91
    add hl, hl                                    ; $5915: $29
    ld l, h                                       ; $5916: $6c
    sub a                                         ; $5917: $97
    ld [$dce5], a                                 ; $5918: $ea $e5 $dc
    ld b, l                                       ; $591b: $45
    ld e, l                                       ; $591c: $5d
    adc d                                         ; $591d: $8a
    sbc e                                         ; $591e: $9b
    push hl                                       ; $591f: $e5
    ei                                            ; $5920: $fb
    call nc, $0839                                ; $5921: $d4 $39 $08
    inc hl                                        ; $5924: $23
    ld [$7de3], a                                 ; $5925: $ea $e3 $7d
    add e                                         ; $5928: $83
    ld l, $35                                     ; $5929: $2e $35
    jp nz, $cb36                                  ; $592b: $c2 $36 $cb

    ld [hl-], a                                   ; $592e: $32
    ld e, c                                       ; $592f: $59
    ld h, b                                       ; $5930: $60
    rst $20                                       ; $5931: $e7
    ld h, [hl]                                    ; $5932: $66
    ld c, a                                       ; $5933: $4f
    sbc c                                         ; $5934: $99
    sbc d                                         ; $5935: $9a
    dec hl                                        ; $5936: $2b
    db $ed                                        ; $5937: $ed
    rst $18                                       ; $5938: $df
    ld b, a                                       ; $5939: $47
    ld b, [hl]                                    ; $593a: $46
    db $e4                                        ; $593b: $e4
    db $e3                                        ; $593c: $e3
    xor b                                         ; $593d: $a8
    dec sp                                        ; $593e: $3b
    ld sp, hl                                     ; $593f: $f9
    ld d, b                                       ; $5940: $50
    sbc c                                         ; $5941: $99
    sub h                                         ; $5942: $94
    dec b                                         ; $5943: $05
    ld b, h                                       ; $5944: $44
    ld [c], a                                     ; $5945: $e2
    di                                            ; $5946: $f3
    ret                                           ; $5947: $c9


    ld b, h                                       ; $5948: $44
    ld e, l                                       ; $5949: $5d
    sub [hl]                                      ; $594a: $96
    reti                                          ; $594b: $d9


    ld a, e                                       ; $594c: $7b

Call_045_594d:
    ld d, d                                       ; $594d: $52
    ld a, h                                       ; $594e: $7c
    add sp, -$6b                                  ; $594f: $e8 $95
    db $e3                                        ; $5951: $e3
    jp hl                                         ; $5952: $e9


    ld d, a                                       ; $5953: $57
    ld [hl], l                                    ; $5954: $75
    ld b, [hl]                                    ; $5955: $46
    ld [c], a                                     ; $5956: $e2
    ld a, [hl]                                    ; $5957: $7e
    add hl, sp                                    ; $5958: $39
    cp $94                                        ; $5959: $fe $94
    dec b                                         ; $595b: $05
    and l                                         ; $595c: $a5
    ld c, h                                       ; $595d: $4c
    call nc, $8485                                ; $595e: $d4 $85 $84
    add d                                         ; $5961: $82
    ld hl, $7b0a                                  ; $5962: $21 $0a $7b
    inc hl                                        ; $5965: $23
    jp c, $7def                                   ; $5966: $da $ef $7d

    add d                                         ; $5969: $82
    db $fc                                        ; $596a: $fc
    ld h, l                                       ; $596b: $65
    cp c                                          ; $596c: $b9
    sub a                                         ; $596d: $97
    ld c, e                                       ; $596e: $4b
    and c                                         ; $596f: $a1

Jump_045_5970:
    dec bc                                        ; $5970: $0b
    db $ec                                        ; $5971: $ec
    add $ae                                       ; $5972: $c6 $ae
    ld c, a                                       ; $5974: $4f
    sbc l                                         ; $5975: $9d
    sub c                                         ; $5976: $91
    sub h                                         ; $5977: $94
    sub c                                         ; $5978: $91
    ret                                           ; $5979: $c9


    db $eb                                        ; $597a: $eb
    adc a                                         ; $597b: $8f
    jp hl                                         ; $597c: $e9


    inc sp                                        ; $597d: $33
    ld a, [c]                                     ; $597e: $f2
    add hl, hl                                    ; $597f: $29
    cp a                                          ; $5980: $bf
    rst $08                                       ; $5981: $cf
    sub b                                         ; $5982: $90
    adc l                                         ; $5983: $8d
    inc d                                         ; $5984: $14
    rst $30                                       ; $5985: $f7
    dec de                                        ; $5986: $1b
    db $fd                                        ; $5987: $fd
    ld a, [bc]                                    ; $5988: $0a
    db $ed                                        ; $5989: $ed
    rst $18                                       ; $598a: $df
    ld h, h                                       ; $598b: $64
    ld a, c                                       ; $598c: $79
    ld h, l                                       ; $598d: $65
    ret z                                         ; $598e: $c8

    ld a, [hl]                                    ; $598f: $7e
    ld [hl], d                                    ; $5990: $72
    db $ec                                        ; $5991: $ec
    ld d, e                                       ; $5992: $53
    ret nz                                        ; $5993: $c0

    adc h                                         ; $5994: $8c
    ld l, b                                       ; $5995: $68
    scf                                           ; $5996: $37
    ld h, $97                                     ; $5997: $26 $97
    rst $18                                       ; $5999: $df
    ei                                            ; $599a: $fb
    ld d, e                                       ; $599b: $53
    ret nz                                        ; $599c: $c0

    ld a, h                                       ; $599d: $7c
    push de                                       ; $599e: $d5
    rlc a                                         ; $599f: $cb $07
    cp c                                          ; $59a1: $b9
    ld c, c                                       ; $59a2: $49
    add hl, de                                    ; $59a3: $19
    sbc c                                         ; $59a4: $99
    call c, $a14e                                 ; $59a5: $dc $4e $a1
    inc de                                        ; $59a8: $13
    ei                                            ; $59a9: $fb

Call_045_59aa:
    ld l, d                                       ; $59aa: $6a
    sbc c                                         ; $59ab: $99
    cp l                                          ; $59ac: $bd
    and a                                         ; $59ad: $a7
    ld e, a                                       ; $59ae: $5f
    ld bc, $5fed                                  ; $59af: $01 $ed $5f
    xor d                                         ; $59b2: $aa
    rla                                           ; $59b3: $17
    rst $30                                       ; $59b4: $f7
    ld [hl-], a                                   ; $59b5: $32
    reti                                          ; $59b6: $d9


    adc b                                         ; $59b7: $88
    halt                                          ; $59b8: $76
    ld h, e                                       ; $59b9: $63
    ld a, [c]                                     ; $59ba: $f2
    adc h                                         ; $59bb: $8c
    inc l                                         ; $59bc: $2c
    ld e, a                                       ; $59bd: $5f
    jp z, $f233                                   ; $59be: $ca $33 $f2

    add hl, hl                                    ; $59c1: $29
    xor $de                                       ; $59c2: $ee $de
    db $10                                        ; $59c4: $10
    scf                                           ; $59c5: $37
    sub d                                         ; $59c6: $92
    push hl                                       ; $59c7: $e5
    sub a                                         ; $59c8: $97
    ld a, d                                       ; $59c9: $7a
    ld a, [$1cb4]                                 ; $59ca: $fa $b4 $1c
    ld a, [hl+]                                   ; $59cd: $2a
    pop af                                        ; $59ce: $f1
    ld b, d                                       ; $59cf: $42
    and [hl]                                      ; $59d0: $a6
    add d                                         ; $59d1: $82
    ld c, h                                       ; $59d2: $4c
    inc b                                         ; $59d3: $04
    ld a, e                                       ; $59d4: $7b
    inc hl                                        ; $59d5: $23
    ld [$438a], a                                 ; $59d6: $ea $8a $43
    ld b, c                                       ; $59d9: $41
    ld a, $74                                     ; $59da: $3e $74
    ret z                                         ; $59dc: $c8

    pop de                                        ; $59dd: $d1
    and l                                         ; $59de: $a5
    db $fc                                        ; $59df: $fc
    push de                                       ; $59e0: $d5
    ld e, d                                       ; $59e1: $5a
    ld bc, $5fed                                  ; $59e2: $01 $ed $5f
    sbc h                                         ; $59e5: $9c
    rst $38                                       ; $59e6: $ff
    and b                                         ; $59e7: $a0
    ld h, $ce                                     ; $59e8: $26 $ce
    ld a, a                                       ; $59ea: $7f
    ld hl, $1c4f                                  ; $59eb: $21 $4f $1c
    inc c                                         ; $59ee: $0c
    ld a, d                                       ; $59ef: $7a
    dec a                                         ; $59f0: $3d
    ld [hl], d                                    ; $59f1: $72
    ld [de], a                                    ; $59f2: $12
    ld a, [hl+]                                   ; $59f3: $2a
    ld [hl], c                                    ; $59f4: $71
    ld d, e                                       ; $59f5: $53
    jp hl                                         ; $59f6: $e9


    sbc a                                         ; $59f7: $9f
    ld sp, hl                                     ; $59f8: $f9
    ld a, [hl+]                                   ; $59f9: $2a
    ld [$bc4f], sp                                ; $59fa: $08 $4f $bc
    or $69                                        ; $59fd: $f6 $69
    rst $18                                       ; $59ff: $df
    ld c, d                                       ; $5a00: $4a
    ld [$b352], a                                 ; $5a01: $ea $52 $b3
    jr nz, jr_045_5a5a                            ; $5a04: $20 $54

    ld a, $da                                     ; $5a06: $3e $da
    rst $28                                       ; $5a08: $ef
    ld a, l                                       ; $5a09: $7d
    ld a, [c]                                     ; $5a0a: $f2
    db $fd                                        ; $5a0b: $fd
    ld a, [bc]                                    ; $5a0c: $0a
    db $ed                                        ; $5a0d: $ed
    ld a, l                                       ; $5a0e: $7d
    sbc b                                         ; $5a0f: $98
    ld a, [hl]                                    ; $5a10: $7e
    cp [hl]                                       ; $5a11: $be
    ld a, [hl-]                                   ; $5a12: $3a
    rst $30                                       ; $5a13: $f7
    xor c                                         ; $5a14: $a9
    dec c                                         ; $5a15: $0d
    xor e                                         ; $5a16: $ab
    ld l, [hl]                                    ; $5a17: $6e
    inc b                                         ; $5a18: $04
    xor c                                         ; $5a19: $a9
    sub c                                         ; $5a1a: $91
    push bc                                       ; $5a1b: $c5
    ld h, [hl]                                    ; $5a1c: $66
    or c                                          ; $5a1d: $b1
    sbc e                                         ; $5a1e: $9b
    ld d, b                                       ; $5a1f: $50
    ld sp, hl                                     ; $5a20: $f9
    jr nc, jr_045_5a2d                            ; $5a21: $30 $0a

    ld a, a                                       ; $5a23: $7f
    sub h                                         ; $5a24: $94
    rlca                                          ; $5a25: $07
    dec e                                         ; $5a26: $1d
    ld [hl], d                                    ; $5a27: $72
    ld a, [$ad15]                                 ; $5a28: $fa $15 $ad
    ld a, a                                       ; $5a2b: $7f
    ld a, h                                       ; $5a2c: $7c

jr_045_5a2d:
    add sp, -$75                                  ; $5a2d: $e8 $8b
    sbc d                                         ; $5a2f: $9a
    sub h                                         ; $5a30: $94
    sub c                                         ; $5a31: $91
    ret                                           ; $5a32: $c9


    and a                                         ; $5a33: $a7
    or $68                                        ; $5a34: $f6 $68
    db $dd                                        ; $5a36: $dd
    cp l                                          ; $5a37: $bd
    ld [hl], c                                    ; $5a38: $71
    pop de                                        ; $5a39: $d1
    and l                                         ; $5a3a: $a5
    cp d                                          ; $5a3b: $ba
    inc d                                         ; $5a3c: $14
    ld d, h                                       ; $5a3d: $54
    ld a, d                                       ; $5a3e: $7a
    ei                                            ; $5a3f: $fb
    xor b                                         ; $5a40: $a8
    dec bc                                        ; $5a41: $0b
    ld c, d                                       ; $5a42: $4a
    add c                                         ; $5a43: $81
    ld hl, $b8b4                                  ; $5a44: $21 $b4 $b8
    db $e3                                        ; $5a47: $e3
    adc c                                         ; $5a48: $89
    ld a, [$ea9d]                                 ; $5a49: $fa $9d $ea
    ld h, $1a                                     ; $5a4c: $26 $1a
    dec l                                         ; $5a4e: $2d
    xor $a6                                       ; $5a4f: $ee $a6
    ld e, a                                       ; $5a51: $5f
    ld bc, $f86d                                  ; $5a52: $01 $6d $f8
    ld c, a                                       ; $5a55: $4f
    rla                                           ; $5a56: $17
    rst $20                                       ; $5a57: $e7
    cp a                                          ; $5a58: $bf
    inc d                                         ; $5a59: $14

jr_045_5a5a:
    cp $38                                        ; $5a5a: $fe $38
    sbc b                                         ; $5a5c: $98
    ld a, e                                       ; $5a5d: $7b
    ld d, c                                       ; $5a5e: $51
    inc de                                        ; $5a5f: $13
    ld [hl], l                                    ; $5a60: $75
    or c                                          ; $5a61: $b1
    xor c                                         ; $5a62: $a9
    ld d, $58                                     ; $5a63: $16 $58
    ld [hl], l                                    ; $5a65: $75
    reti                                          ; $5a66: $d9


    ld [$f21d], sp                                ; $5a67: $08 $1d $f2
    inc hl                                        ; $5a6a: $23
    ret c                                         ; $5a6b: $d8

    ld e, c                                       ; $5a6c: $59
    ld e, [hl]                                    ; $5a6d: $5e
    ld c, $86                                     ; $5a6e: $0e $86
    ld e, d                                       ; $5a70: $5a
    dec hl                                        ; $5a71: $2b
    xor l                                         ; $5a72: $ad
    ld d, e                                       ; $5a73: $53
    ld a, e                                       ; $5a74: $7b
    ld h, c                                       ; $5a75: $61
    ld h, h                                       ; $5a76: $64
    inc hl                                        ; $5a77: $23
    dec de                                        ; $5a78: $1b
    call nz, $b91b                                ; $5a79: $c4 $1b $b9
    xor b                                         ; $5a7c: $a8
    ld c, e                                       ; $5a7d: $4b
    db $dd                                        ; $5a7e: $dd
    db $e3                                        ; $5a7f: $e3
    ld de, $aa5d                                  ; $5a80: $11 $5d $aa
    ld c, e                                       ; $5a83: $4b
    add c                                         ; $5a84: $81
    ldh a, [$a4]                                  ; $5a85: $f0 $a4
    and b                                         ; $5a87: $a0
    ld e, d                                       ; $5a88: $5a
    inc c                                         ; $5a89: $0c
    ld [hl], c                                    ; $5a8a: $71
    ld d, e                                       ; $5a8b: $53
    ld hl, $2905                                  ; $5a8c: $21 $05 $29
    adc h                                         ; $5a8f: $8c
    ld d, d                                       ; $5a90: $52
    ld l, $ee                                     ; $5a91: $2e $ee
    xor e                                         ; $5a93: $ab
    ld [$45e4], a                                 ; $5a94: $ea $e4 $45
    ld c, l                                       ; $5a97: $4d
    ld a, [bc]                                    ; $5a98: $0a
    db $dd                                        ; $5a99: $dd
    dec de                                        ; $5a9a: $1b
    and c                                         ; $5a9b: $a1
    ld b, e                                       ; $5a9c: $43
    ld a, [hl]                                    ; $5a9d: $7e
    cp a                                          ; $5a9e: $bf
    ld [bc], a                                    ; $5a9f: $02
    cp [hl]                                       ; $5aa0: $be
    inc hl                                        ; $5aa1: $23
    inc de                                        ; $5aa2: $13
    scf                                           ; $5aa3: $37
    and l                                         ; $5aa4: $a5
    cp [hl]                                       ; $5aa5: $be
    inc d                                         ; $5aa6: $14
    ld a, [hl]                                    ; $5aa7: $7e
    ld [hl], c                                    ; $5aa8: $71
    inc de                                        ; $5aa9: $13
    rst $20                                       ; $5aaa: $e7
    ld b, a                                       ; $5aab: $47
    ret z                                         ; $5aac: $c8

    ld sp, $e5c3                                  ; $5aad: $31 $c3 $e5
    cp l                                          ; $5ab0: $bd
    sbc $11                                       ; $5ab1: $de $11
    push af                                       ; $5ab3: $f5
    add [hl]                                      ; $5ab4: $86
    sbc h                                         ; $5ab5: $9c
    add h                                         ; $5ab6: $84
    ld c, d                                       ; $5ab7: $4a
    xor d                                         ; $5ab8: $aa
    ld sp, $a9fd                                  ; $5ab9: $31 $fd $a9
    ret                                           ; $5abc: $c9


    ld [hl], d                                    ; $5abd: $72
    or h                                          ; $5abe: $b4
    ld a, [de]                                    ; $5abf: $1a
    ld b, c                                       ; $5ac0: $41
    cp a                                          ; $5ac1: $bf
    ld [bc], a                                    ; $5ac2: $02
    ld l, l                                       ; $5ac3: $6d
    rst $28                                       ; $5ac4: $ef
    inc l                                         ; $5ac5: $2c
    ld [hl], $fa                                  ; $5ac6: $36 $fa
    adc l                                         ; $5ac8: $8d
    ld [$b0a3], a                                 ; $5ac9: $ea $a3 $b0
    scf                                           ; $5acc: $37
    and d                                         ; $5acd: $a2
    db $fd                                        ; $5ace: $fd
    sbc $27                                       ; $5acf: $de $27
    ld c, b                                       ; $5ad1: $48
    pop hl                                        ; $5ad2: $e1
    adc a                                         ; $5ad3: $8f
    ld a, [hl-]                                   ; $5ad4: $3a
    ld [de], a                                    ; $5ad5: $12
    jp nz, Jump_045_6a2f                          ; $5ad6: $c2 $2f $6a

    ld d, d                                       ; $5ad9: $52
    ld d, b                                       ; $5ada: $50
    dec l                                         ; $5adb: $2d
    add [hl]                                      ; $5adc: $86
    inc l                                         ; $5add: $2c
    rst $10                                       ; $5ade: $d7
    ld b, b                                       ; $5adf: $40
    ld a, [bc]                                    ; $5ae0: $0a
    db $ec                                        ; $5ae1: $ec
    and [hl]                                      ; $5ae2: $a6
    ld e, a                                       ; $5ae3: $5f
    ld bc, $5fed                                  ; $5ae4: $01 $ed $5f
    jp z, $ef72                                   ; $5ae7: $ca $72 $ef

    and b                                         ; $5aea: $a0
    adc e                                         ; $5aeb: $8b
    adc h                                         ; $5aec: $8c
    and h                                         ; $5aed: $a4
    cp d                                          ; $5aee: $ba
    sub b                                         ; $5aef: $90
    rra                                           ; $5af0: $1f
    ld [hl], l                                    ; $5af1: $75
    ld e, c                                       ; $5af2: $59
    sbc $f6                                       ; $5af3: $de $f6
    dec de                                        ; $5af5: $1b
    ld a, [$a074]                                 ; $5af6: $fa $74 $a0
    ld l, c                                       ; $5af9: $69
    sub a                                         ; $5afa: $97
    ld [$2052], a                                 ; $5afb: $ea $52 $20
    inc a                                         ; $5afe: $3c
    and c                                         ; $5aff: $a1
    sub d                                         ; $5b00: $92
    ld h, l                                       ; $5b01: $65
    inc a                                         ; $5b02: $3c
    and d                                         ; $5b03: $a2
    ld e, l                                       ; $5b04: $5d
    inc bc                                        ; $5b05: $03
    db $fd                                        ; $5b06: $fd
    ld a, [bc]                                    ; $5b07: $0a
    xor l                                         ; $5b08: $ad
    ld d, e                                       ; $5b09: $53
    ld a, e                                       ; $5b0a: $7b
    ld h, c                                       ; $5b0b: $61
    ld h, h                                       ; $5b0c: $64
    inc hl                                        ; $5b0d: $23
    add l                                         ; $5b0e: $85
    ld [hl+], a                                   ; $5b0f: $22
    dec de                                        ; $5b10: $1b
    call nz, Call_000_391b                        ; $5b11: $c4 $1b $39
    ld e, l                                       ; $5b14: $5d
    ld [$8f1e], a                                 ; $5b15: $ea $1e $8f
    ld b, h                                       ; $5b18: $44
    ld b, [hl]                                    ; $5b19: $46
    ld b, d                                       ; $5b1a: $42
    jp nc, Jump_000_29d9                          ; $5b1b: $d2 $d9 $29

    db $10                                        ; $5b1e: $10
    ld a, $0b                                     ; $5b1f: $3e $0b
    add hl, sp                                    ; $5b21: $39
    ei                                            ; $5b22: $fb
    dec c                                         ; $5b23: $0d
    and c                                         ; $5b24: $a1
    ld a, [c]                                     ; $5b25: $f2
    ld e, c                                       ; $5b26: $59
    adc [hl]                                      ; $5b27: $8e
    ld d, [hl]                                    ; $5b28: $56
    rst $18                                       ; $5b29: $df
    xor a                                         ; $5b2a: $af
    xor l                                         ; $5b2b: $ad
    adc d                                         ; $5b2c: $8a
    or d                                          ; $5b2d: $b2
    ld a, [$d823]                                 ; $5b2e: $fa $23 $d8
    db $db                                        ; $5b31: $db
    db $e3                                        ; $5b32: $e3
    jp hl                                         ; $5b33: $e9


    cp $a8                                        ; $5b34: $fe $a8
    ld c, e                                       ; $5b36: $4b
    ei                                            ; $5b37: $fb
    or h                                          ; $5b38: $b4
    sbc h                                         ; $5b39: $9c
    ld a, e                                       ; $5b3a: $7b
    ld e, l                                       ; $5b3b: $5d
    call c, $fa94                                 ; $5b3c: $dc $94 $fa
    ld [hl+], a                                   ; $5b3f: $22
    inc hl                                        ; $5b40: $23
    ld d, c                                       ; $5b41: $51
    ld b, e                                       ; $5b42: $43
    ld e, d                                       ; $5b43: $5a
    db $fd                                        ; $5b44: $fd
    ld e, c                                       ; $5b45: $59
    xor [hl]                                      ; $5b46: $ae
    add c                                         ; $5b47: $81
    inc d                                         ; $5b48: $14
    ld [$219f], sp                                ; $5b49: $08 $9f $21
    ld a, $14                                     ; $5b4c: $3e $14
    ld a, e                                       ; $5b4e: $7b
    ld a, a                                       ; $5b4f: $7f
    db $f4                                        ; $5b50: $f4
    ld e, a                                       ; $5b51: $5f
    jp hl                                         ; $5b52: $e9


    ld c, a                                       ; $5b53: $4f
    ld a, $ce                                     ; $5b54: $3e $ce
    adc a                                         ; $5b56: $8f
    inc d                                         ; $5b57: $14
    ld a, [hl]                                    ; $5b58: $7e
    sub e                                         ; $5b59: $93
    daa                                           ; $5b5a: $27
    ld [de], a                                    ; $5b5b: $12
    ccf                                           ; $5b5c: $3f
    ld l, [hl]                                    ; $5b5d: $6e
    ld a, [hl+]                                   ; $5b5e: $2a
    add h                                         ; $5b5f: $84
    jp z, $fb47                                   ; $5b60: $ca $47 $fb

    cp l                                          ; $5b63: $bd
    ld c, a                                       ; $5b64: $4f
    cp [hl]                                       ; $5b65: $be
    ld e, a                                       ; $5b66: $5f
    ld bc, $4675                                  ; $5b67: $01 $75 $46
    ld [c], a                                     ; $5b6a: $e2
    sbc a                                         ; $5b6b: $9f
    inc d                                         ; $5b6c: $14
    and [hl]                                      ; $5b6d: $a6
    ld [$279e], a                                 ; $5b6e: $ea $9e $27
    xor a                                         ; $5b71: $af
    rst $10                                       ; $5b72: $d7
    ld a, a                                       ; $5b73: $7f
    pop hl                                        ; $5b74: $e1
    rla                                           ; $5b75: $17
    ld [c], a                                     ; $5b76: $e2
    ld h, a                                       ; $5b77: $67
    add c                                         ; $5b78: $81
    push hl                                       ; $5b79: $e5
    halt                                          ; $5b7a: $76
    call c, $cb54                                 ; $5b7b: $dc $54 $cb
    pop af                                        ; $5b7e: $f1
    db $e4                                        ; $5b7f: $e4
    inc h                                         ; $5b80: $24
    ld l, [hl]                                    ; $5b81: $6e
    ld a, a                                       ; $5b82: $7f
    add hl, hl                                    ; $5b83: $29
    add sp, $53                                   ; $5b84: $e8 $53
    ld a, e                                       ; $5b86: $7b
    or d                                          ; $5b87: $b2
    inc a                                         ; $5b88: $3c
    or l                                          ; $5b89: $b5
    adc a                                         ; $5b8a: $8f
    di                                            ; $5b8b: $f3
    inc hl                                        ; $5b8c: $23
    or a                                          ; $5b8d: $b7
    or e                                          ; $5b8e: $b3
    ret c                                         ; $5b8f: $d8

    ld a, b                                       ; $5b90: $78
    ld d, c                                       ; $5b91: $51
    jp z, Jump_045_5218                           ; $5b92: $ca $18 $52

    ld e, l                                       ; $5b95: $5d
    ld hl, sp+$0c                                 ; $5b96: $f8 $0c
    ld d, [hl]                                    ; $5b98: $56
    ld c, a                                       ; $5b99: $4f
    ld l, [hl]                                    ; $5b9a: $6e
    rst $00                                       ; $5b9b: $c7
    call $d3de                                    ; $5b9c: $cd $de $d3
    xor a                                         ; $5b9f: $af
    or l                                          ; $5ba0: $b5
    daa                                           ; $5ba1: $27
    dec b                                         ; $5ba2: $05
    jp nz, $13c7                                  ; $5ba3: $c2 $c7 $13

    ld [hl], l                                    ; $5ba6: $75
    add [hl]                                      ; $5ba7: $86
    jr c, jr_045_5be9                             ; $5ba8: $38 $3f

    ld [hl], h                                    ; $5baa: $74
    add hl, hl                                    ; $5bab: $29
    ret z                                         ; $5bac: $c8

    ld b, [hl]                                    ; $5bad: $46
    ld a, [bc]                                    ; $5bae: $0a
    ld b, l                                       ; $5baf: $45
    ld [hl], $88                                  ; $5bb0: $36 $88
    scf                                           ; $5bb2: $37
    ld [hl], d                                    ; $5bb3: $72
    sub c                                         ; $5bb4: $91
    sub c                                         ; $5bb5: $91
    ld d, h                                       ; $5bb6: $54
    and a                                         ; $5bb7: $a7
    db $ed                                        ; $5bb8: $ed
    dec de                                        ; $5bb9: $1b
    add e                                         ; $5bba: $83
    cp l                                          ; $5bbb: $bd
    ret z                                         ; $5bbc: $c8

    add sp, $72                                   ; $5bbd: $e8 $72
    dec sp                                        ; $5bbf: $3b
    adc e                                         ; $5bc0: $8b
    adc l                                         ; $5bc1: $8d
    rla                                           ; $5bc2: $17
    and l                                         ; $5bc3: $a5
    adc h                                         ; $5bc4: $8c
    and l                                         ; $5bc5: $a5
    and e                                         ; $5bc6: $a3
    ld e, a                                       ; $5bc7: $5f
    ld a, b                                       ; $5bc8: $78
    inc l                                         ; $5bc9: $2c
    sbc $93                                       ; $5bca: $de $93
    or e                                          ; $5bcc: $b3
    ld a, d                                       ; $5bcd: $7a
    ld [c], a                                     ; $5bce: $e2
    ld b, [hl]                                    ; $5bcf: $46

jr_045_5bd0:
    or d                                          ; $5bd0: $b2
    ccf                                           ; $5bd1: $3f
    adc h                                         ; $5bd2: $8c
    jp nz, Jump_045_429f                          ; $5bd3: $c2 $9f $42

    ld [hl], a                                    ; $5bd6: $77
    ld hl, sp-$4b                                 ; $5bd7: $f8 $b5
    ld a, l                                       ; $5bd9: $7d
    jr nc, jr_045_5bd0                            ; $5bda: $30 $f4

    dec hl                                        ; $5bdc: $2b
    db $ed                                        ; $5bdd: $ed
    ld a, l                                       ; $5bde: $7d
    ld d, $1b                                     ; $5bdf: $16 $1b
    cpl                                           ; $5be1: $2f
    ld c, d                                       ; $5be2: $4a
    add hl, de                                    ; $5be3: $19
    ld b, e                                       ; $5be4: $43
    add hl, hl                                    ; $5be5: $29
    sbc a                                         ; $5be6: $9f
    or $5d                                        ; $5be7: $f6 $5d

jr_045_5be9:
    ld e, e                                       ; $5be9: $5b
    or $72                                        ; $5bea: $f6 $72
    call z, Call_000_11a9                         ; $5bec: $cc $a9 $11
    scf                                           ; $5bef: $37
    dec d                                         ; $5bf0: $15
    ld b, d                                       ; $5bf1: $42
    push hl                                       ; $5bf2: $e5
    and e                                         ; $5bf3: $a3
    reti                                          ; $5bf4: $d9


    adc e                                         ; $5bf5: $8b
    ld b, d                                       ; $5bf6: $42
    sbc h                                         ; $5bf7: $9c
    rst $38                                       ; $5bf8: $ff
    add $b9                                       ; $5bf9: $c6 $b9
    ei                                            ; $5bfb: $fb
    inc l                                         ; $5bfc: $2c
    or b                                          ; $5bfd: $b0
    jr nc, jr_045_5c65                            ; $5bfe: $30 $65

    cp [hl]                                       ; $5c00: $be
    ld l, b                                       ; $5c01: $68
    ei                                            ; $5c02: $fb
    ld d, d                                       ; $5c03: $52
    sbc b                                         ; $5c04: $98
    ld a, [hl+]                                   ; $5c05: $2a
    ld [$d45f], sp                                ; $5c06: $08 $5f $d4
    and l                                         ; $5c09: $a5
    dec l                                         ; $5c0a: $2d
    dec sp                                        ; $5c0b: $3b
    rst $28                                       ; $5c0c: $ef
    adc b                                         ; $5c0d: $88
    ld a, [de]                                    ; $5c0e: $1a
    sbc e                                         ; $5c0f: $9b
    ld a, [hl]                                    ; $5c10: $7e
    dec b                                         ; $5c11: $05
    ld l, l                                       ; $5c12: $6d
    rst $28                                       ; $5c13: $ef
    add sp, $6d                                   ; $5c14: $e8 $6d
    call nc, $5d44                                ; $5c16: $d4 $44 $5d
    or h                                          ; $5c19: $b4
    rst $18                                       ; $5c1a: $df
    ei                                            ; $5c1b: $fb
    db $e4                                        ; $5c1c: $e4
    db $e3                                        ; $5c1d: $e3
    db $fc                                        ; $5c1e: $fc
    ret z                                         ; $5c1f: $c8

    db $eb                                        ; $5c20: $eb
    push af                                       ; $5c21: $f5
    rst $30                                       ; $5c22: $f7
    push de                                       ; $5c23: $d5
    and h                                         ; $5c24: $a4
    ld a, d                                       ; $5c25: $7a
    pop de                                        ; $5c26: $d1
    xor $79                                       ; $5c27: $ee $79
    or d                                          ; $5c29: $b2
    ret nz                                        ; $5c2a: $c0

    ld [c], a                                     ; $5c2b: $e2
    jr nz, jr_045_5c4d                            ; $5c2c: $20 $1f

    ret c                                         ; $5c2e: $d8

    rlca                                          ; $5c2f: $07
    adc $81                                       ; $5c30: $ce $81
    ld a, b                                       ; $5c32: $78
    inc hl                                        ; $5c33: $23
    cp a                                          ; $5c34: $bf
    ld d, c                                       ; $5c35: $51
    ld [hl], e                                    ; $5c36: $73
    dec b                                         ; $5c37: $05
    sbc [hl]                                      ; $5c38: $9e
    ld d, e                                       ; $5c39: $53
    sbc l                                         ; $5c3a: $9d
    cp b                                          ; $5c3b: $b8
    sbc e                                         ; $5c3c: $9b
    cp h                                          ; $5c3d: $bc
    jp z, $8b2f                                   ; $5c3e: $ca $2f $8b

    add c                                         ; $5c41: $81
    ld c, b                                       ; $5c42: $48
    ld a, h                                       ; $5c43: $7c
    ld b, e                                       ; $5c44: $43
    or $67                                        ; $5c45: $f6 $67
    add c                                         ; $5c47: $81
    ret z                                         ; $5c48: $c8

    rst $00                                       ; $5c49: $c7
    ld c, l                                       ; $5c4a: $4d
    add l                                         ; $5c4b: $85
    inc d                                         ; $5c4c: $14

jr_045_5c4d:
    ld [hl], $5a                                  ; $5c4d: $36 $5a
    ld b, c                                       ; $5c4f: $41
    ld a, b                                       ; $5c50: $78
    or d                                          ; $5c51: $b2
    ret nz                                        ; $5c52: $c0

    ld d, d                                       ; $5c53: $52
    sbc h                                         ; $5c54: $9c
    dec e                                         ; $5c55: $1d
    add hl, bc                                    ; $5c56: $09
    ld b, e                                       ; $5c57: $43
    cp a                                          ; $5c58: $bf
    ld [bc], a                                    ; $5c59: $02
    dec e                                         ; $5c5a: $1d
    jr nc, jr_045_5cbc                            ; $5c5b: $30 $5f

    dec [hl]                                      ; $5c5d: $35
    reti                                          ; $5c5e: $d9


    ld c, a                                       ; $5c5f: $4f
    adc [hl]                                      ; $5c60: $8e
    adc l                                         ; $5c61: $8d
    ld l, $b5                                     ; $5c62: $2e $b5
    rst $18                                       ; $5c64: $df

jr_045_5c65:
    adc h                                         ; $5c65: $8c
    ld b, b                                       ; $5c66: $40
    call Call_045_7515                            ; $5c67: $cd $15 $75
    ld b, [hl]                                    ; $5c6a: $46
    ld b, d                                       ; $5c6b: $42
    ld b, d                                       ; $5c6c: $42
    ld c, l                                       ; $5c6d: $4d
    or [hl]                                       ; $5c6e: $b6
    rst $00                                       ; $5c6f: $c7
    ret c                                         ; $5c70: $d8

    rst $00                                       ; $5c71: $c7
    ld sp, hl                                     ; $5c72: $f9
    sub c                                         ; $5c73: $91
    sub e                                         ; $5c74: $93
    inc hl                                        ; $5c75: $23
    ld e, [hl]                                    ; $5c76: $5e
    or $a7                                        ; $5c77: $f6 $a7
    jr c, jr_045_5cb5                             ; $5c79: $38 $3a

    ei                                            ; $5c7b: $fb
    ld l, e                                       ; $5c7c: $6b
    and [hl]                                      ; $5c7d: $a6
    ld h, e                                       ; $5c7e: $63
    jp z, $b97c                                   ; $5c7f: $ca $7c $b9

    ld [hl], h                                    ; $5c82: $74
    add [hl]                                      ; $5c83: $86
    cpl                                           ; $5c84: $2f
    dec de                                        ; $5c85: $1b
    inc b                                         ; $5c86: $04
    ld a, [c]                                     ; $5c87: $f2
    and d                                         ; $5c88: $a2
    db $ec                                        ; $5c89: $ec
    ld b, l                                       ; $5c8a: $45
    ld h, $9f                                     ; $5c8b: $26 $9f
    jp c, Jump_045_75a3                           ; $5c8d: $da $a3 $75

    rst $30                                       ; $5c90: $f7
    add $a5                                       ; $5c91: $c6 $a5
    ld e, a                                       ; $5c93: $5f
    ld bc, $41ad                                  ; $5c94: $01 $ad $41
    ld d, b                                       ; $5c97: $50
    inc sp                                        ; $5c98: $33
    cp [hl]                                       ; $5c99: $be
    dec bc                                        ; $5c9a: $0b
    ld l, h                                       ; $5c9b: $6c
    ld a, [c]                                     ; $5c9c: $f2
    ld [c], a                                     ; $5c9d: $e2
    db $fc                                        ; $5c9e: $fc
    ld e, $37                                     ; $5c9f: $1e $37
    ld d, c                                       ; $5ca1: $51
    rla                                           ; $5ca2: $17
    sub h                                         ; $5ca3: $94
    ld [bc], a                                    ; $5ca4: $02
    ld b, e                                       ; $5ca5: $43
    cp [hl]                                       ; $5ca6: $be
    inc d                                         ; $5ca7: $14
    ld l, b                                       ; $5ca8: $68
    ld a, [c]                                     ; $5ca9: $f2
    inc a                                         ; $5caa: $3c
    ld sp, hl                                     ; $5cab: $f9
    or h                                          ; $5cac: $b4
    ld h, l                                       ; $5cad: $65
    rst $20                                       ; $5cae: $e7
    dec e                                         ; $5caf: $1d
    ld d, c                                       ; $5cb0: $51
    ld h, e                                       ; $5cb1: $63
    ld d, e                                       ; $5cb2: $53
    ld [hl], e                                    ; $5cb3: $73
    dec b                                         ; $5cb4: $05

jr_045_5cb5:
    xor l                                         ; $5cb5: $ad
    ld l, [hl]                                    ; $5cb6: $6e
    ld b, a                                       ; $5cb7: $47
    push hl                                       ; $5cb8: $e5
    and d                                         ; $5cb9: $a2
    reti                                          ; $5cba: $d9


    ld a, c                                       ; $5cbb: $79

jr_045_5cbc:
    ld b, a                                       ; $5cbc: $47
    ld c, [hl]                                    ; $5cbd: $4e
    sub a                                         ; $5cbe: $97
    reti                                          ; $5cbf: $d9


    ld l, h                                       ; $5cc0: $6c
    ret z                                         ; $5cc1: $c8

    rst $28                                       ; $5cc2: $ef
    add sp, -$1f                                  ; $5cc3: $e8 $e1
    call c, $e2e8                                 ; $5cc5: $dc $e8 $e2
    ld a, a                                       ; $5cc8: $7f
    sub c                                         ; $5cc9: $91
    ret                                           ; $5cca: $c9


    adc e                                         ; $5ccb: $8b
    di                                            ; $5ccc: $f3
    inc hl                                        ; $5ccd: $23
    ld a, [bc]                                    ; $5cce: $0a
    ld a, e                                       ; $5ccf: $7b

jr_045_5cd0:
    inc hl                                        ; $5cd0: $23
    call nz, Call_045_4117                        ; $5cd1: $c4 $17 $41
    cp a                                          ; $5cd4: $bf
    ld [bc], a                                    ; $5cd5: $02
    ld l, l                                       ; $5cd6: $6d
    db $ed                                        ; $5cd7: $ed
    dec bc                                        ; $5cd8: $0b
    ld [hl], l                                    ; $5cd9: $75
    ld c, $7b                                     ; $5cda: $0e $7b
    ld e, a                                       ; $5cdc: $5f
    ld h, h                                       ; $5cdd: $64
    inc h                                         ; $5cde: $24
    cp $17                                        ; $5cdf: $fe $17
    sbc c                                         ; $5ce1: $99
    ld l, h                                       ; $5ce2: $6c
    ld h, h                                       ; $5ce3: $64
    cp a                                          ; $5ce4: $bf
    ld e, [hl]                                    ; $5ce5: $5e
    ld l, a                                       ; $5ce6: $6f
    xor a                                         ; $5ce7: $af
    ld c, e                                       ; $5ce8: $4b
    push af                                       ; $5ce9: $f5
    ld sp, hl                                     ; $5cea: $f9
    db $ed                                        ; $5ceb: $ed
    xor b                                         ; $5cec: $a8
    ld e, h                                       ; $5ced: $5c
    inc [hl]                                      ; $5cee: $34
    dec sp                                        ; $5cef: $3b
    rst $28                                       ; $5cf0: $ef
    ret z                                         ; $5cf1: $c8

    push bc                                       ; $5cf2: $c5
    rst $38                                       ; $5cf3: $ff
    ld [hl+], a                                   ; $5cf4: $22
    sub e                                         ; $5cf5: $93
    adc e                                         ; $5cf6: $8b
    add d                                         ; $5cf7: $82
    ldh a, [$f5]                                  ; $5cf8: $f0 $f5
    dec hl                                        ; $5cfa: $2b
    cp [hl]                                       ; $5cfb: $be
    inc hl                                        ; $5cfc: $23
    inc de                                        ; $5cfd: $13
    scf                                           ; $5cfe: $37
    and l                                         ; $5cff: $a5
    cp [hl]                                       ; $5d00: $be
    ld b, b                                       ; $5d01: $40
    sbc b                                         ; $5d02: $98
    sub [hl]                                      ; $5d03: $96
    ei                                            ; $5d04: $fb
    jp nz, Jump_045_751f                          ; $5d05: $c2 $1f $75

    ld b, c                                       ; $5d08: $41
    add hl, hl                                    ; $5d09: $29
    jr nc, jr_045_5cd0                            ; $5d0a: $30 $c4

    add a                                         ; $5d0c: $87
    ld e, [hl]                                    ; $5d0d: $5e
    call Call_045_5db4                            ; $5d0e: $cd $b4 $5d
    dec l                                         ; $5d11: $2d
    ld l, a                                       ; $5d12: $6f
    or b                                          ; $5d13: $b0
    ld a, [$cd53]                                 ; $5d14: $fa $53 $cd
    and $2b                                       ; $5d17: $e6 $2b
    push hl                                       ; $5d19: $e5
    ld a, [hl+]                                   ; $5d1a: $2a
    call nz, $414d                                ; $5d1b: $c4 $4d $41
    db $10                                        ; $5d1e: $10
    ld [hl], l                                    ; $5d1f: $75
    push de                                       ; $5d20: $d5
    inc d                                         ; $5d21: $14
    ld [hl], $58                                  ; $5d22: $36 $58
    db $fd                                        ; $5d24: $fd
    ld sp, hl                                     ; $5d25: $f9
    jr nc, jr_045_5d8d                            ; $5d26: $30 $65

    cp [hl]                                       ; $5d28: $be
    db $ec                                        ; $5d29: $ec
    ld c, a                                       ; $5d2a: $4f
    ld [hl], l                                    ; $5d2b: $75
    rra                                           ; $5d2c: $1f
    cp l                                          ; $5d2d: $bd
    dec a                                         ; $5d2e: $3d
    ld c, c                                       ; $5d2f: $49
    db $ed                                        ; $5d30: $ed
    ld l, e                                       ; $5d31: $6b
    xor [hl]                                      ; $5d32: $ae
    ld [hl], l                                    ; $5d33: $75
    ld h, c                                       ; $5d34: $61
    adc $5f                                       ; $5d35: $ce $5f
    ld l, a                                       ; $5d37: $6f
    ld l, [hl]                                    ; $5d38: $6e
    and a                                         ; $5d39: $a7
    ld a, d                                       ; $5d3a: $7a
    and $93                                       ; $5d3b: $e6 $93
    ret                                           ; $5d3d: $c9


    sbc e                                         ; $5d3e: $9b
    dec e                                         ; $5d3f: $1d
    ld sp, hl                                     ; $5d40: $f9
    add hl, hl                                    ; $5d41: $29
    xor b                                         ; $5d42: $a8
    ld d, $43                                     ; $5d43: $16 $43
    call c, $fa94                                 ; $5d45: $dc $94 $fa
    or d                                          ; $5d48: $b2
    jr jr_045_5d55                                ; $5d49: $18 $0a

    ld c, a                                       ; $5d4b: $4f
    xor l                                         ; $5d4c: $ad
    dec d                                         ; $5d4d: $15
    db $ed                                        ; $5d4e: $ed
    ld e, a                                       ; $5d4f: $5f
    ld d, $c3                                     ; $5d50: $16 $c3
    jr c, jr_045_5d9b                             ; $5d52: $38 $47

    rla                                           ; $5d54: $17

jr_045_5d55:
    ld e, b                                       ; $5d55: $58
    db $fd                                        ; $5d56: $fd
    ld d, c                                       ; $5d57: $51
    ret c                                         ; $5d58: $d8

    xor c                                         ; $5d59: $a9
    ld l, [hl]                                    ; $5d5a: $6e
    or d                                          ; $5d5b: $b2
    ret c                                         ; $5d5c: $d8

    ld d, l                                       ; $5d5d: $55
    inc de                                        ; $5d5e: $13
    db $ed                                        ; $5d5f: $ed
    add $64                                       ; $5d60: $c6 $64
    and d                                         ; $5d62: $a2
    ld l, $c5                                     ; $5d63: $2e $c5
    pop de                                        ; $5d65: $d1
    reti                                          ; $5d66: $d9


    rra                                           ; $5d67: $1f
    add hl, de                                    ; $5d68: $19
    ret                                           ; $5d69: $c9


    cpl                                           ; $5d6a: $2f
    dec bc                                        ; $5d6b: $0b
    db $e4                                        ; $5d6c: $e4
    ld h, e                                       ; $5d6d: $63
    ld b, a                                       ; $5d6e: $47
    adc e                                         ; $5d6f: $8b
    dec sp                                        ; $5d70: $3b
    xor e                                         ; $5d71: $ab
    ccf                                           ; $5d72: $3f
    sbc a                                         ; $5d73: $9f
    ld b, d                                       ; $5d74: $42
    ld b, d                                       ; $5d75: $42
    db $db                                        ; $5d76: $db
    rst $30                                       ; $5d77: $f7
    ld d, [hl]                                    ; $5d78: $56
    ld e, l                                       ; $5d79: $5d
    cp a                                          ; $5d7a: $bf
    ld [bc], a                                    ; $5d7b: $02
    ld [hl], l                                    ; $5d7c: $75
    ld b, [hl]                                    ; $5d7d: $46
    ld [c], a                                     ; $5d7e: $e2
    ld b, [hl]                                    ; $5d7f: $46
    and [hl]                                      ; $5d80: $a6
    cp b                                          ; $5d81: $b8
    adc e                                         ; $5d82: $8b
    and b                                         ; $5d83: $a0
    inc d                                         ; $5d84: $14
    ld a, [hl+]                                   ; $5d85: $2a
    rra                                           ; $5d86: $1f
    scf                                           ; $5d87: $37
    sub l                                         ; $5d88: $95
    cp $e4                                        ; $5d89: $fe $e4
    adc c                                         ; $5d8b: $89
    scf                                           ; $5d8c: $37

jr_045_5d8d:
    add d                                         ; $5d8d: $82
    xor b                                         ; $5d8e: $a8
    adc e                                         ; $5d8f: $8b
    rst $30                                       ; $5d90: $f7
    inc [hl]                                      ; $5d91: $34
    ld l, d                                       ; $5d92: $6a
    daa                                           ; $5d93: $27
    xor b                                         ; $5d94: $a8
    cp c                                          ; $5d95: $b9
    ld [bc], a                                    ; $5d96: $02
    xor l                                         ; $5d97: $ad
    ld b, c                                       ; $5d98: $41
    ld a, b                                       ; $5d99: $78
    ld c, h                                       ; $5d9a: $4c

jr_045_5d9b:
    sbc [hl]                                      ; $5d9b: $9e
    ld b, a                                       ; $5d9c: $47
    sub a                                         ; $5d9d: $97
    jp c, Jump_045_466f                           ; $5d9e: $da $6f $46

    and b                                         ; $5da1: $a0
    adc a                                         ; $5da2: $8f
    rst $20                                       ; $5da3: $e7
    ld d, h                                       ; $5da4: $54
    ret z                                         ; $5da5: $c8

    ld h, d                                       ; $5da6: $62
    xor b                                         ; $5da7: $a8
    ld l, [hl]                                    ; $5da8: $6e
    or d                                          ; $5da9: $b2
    ret nz                                        ; $5daa: $c0

    or d                                          ; $5dab: $b2
    dec a                                         ; $5dac: $3d
    add [hl]                                      ; $5dad: $86
    ld sp, hl                                     ; $5dae: $f9
    xor d                                         ; $5daf: $aa

jr_045_5db0:
    rst $08                                       ; $5db0: $cf
    ld h, d                                       ; $5db1: $62
    jr z, jr_045_5db0                             ; $5db2: $28 $fc

Call_045_5db4:
    call nz, Call_045_411b                        ; $5db4: $c4 $1b $41
    call nc, $b165                                ; $5db7: $d4 $65 $b1
    xor e                                         ; $5dba: $ab
    ld a, $85                                     ; $5dbb: $3e $85
    xor $54                                       ; $5dbd: $ee $54
    cpl                                           ; $5dbf: $2f
    rst $20                                       ; $5dc0: $e7
    ld h, $ea                                     ; $5dc1: $26 $ea
    ld d, d                                       ; $5dc3: $52
    call c, $af2c                                 ; $5dc4: $dc $2c $af

Jump_045_5dc7:
    dec bc                                        ; $5dc7: $0b
    ld e, a                                       ; $5dc8: $5f
    ld d, $58                                     ; $5dc9: $16 $58
    dec b                                         ; $5dcb: $05
    ld h, [hl]                                    ; $5dcc: $66
    ld e, b                                       ; $5dcd: $58
    db $fd                                        ; $5dce: $fd
    ld d, c                                       ; $5dcf: $51
    sub a                                         ; $5dd0: $97
    rst $18                                       ; $5dd1: $df
    dec de                                        ; $5dd2: $1b
    ld a, [c]                                     ; $5dd3: $f2
    add $97                                       ; $5dd4: $c6 $97
    sub e                                         ; $5dd6: $93
    ld [bc], a                                    ; $5dd7: $02
    adc l                                         ; $5dd8: $8d
    ld b, d                                       ; $5dd9: $42
    call nc, Call_045_4a84                        ; $5dda: $d4 $84 $4a
    inc [hl]                                      ; $5ddd: $34
    ld [$7e9d], a                                 ; $5dde: $ea $9d $7e
    dec b                                         ; $5de1: $05
    dec e                                         ; $5de2: $1d
    jr nc, jr_045_5e44                            ; $5de3: $30 $5f

    dec [hl]                                      ; $5de5: $35
    reti                                          ; $5de6: $d9


    ld c, a                                       ; $5de7: $4f
    adc [hl]                                      ; $5de8: $8e
    adc l                                         ; $5de9: $8d
    ld l, $b5                                     ; $5dea: $2e $b5
    rst $18                                       ; $5dec: $df
    adc h                                         ; $5ded: $8c
    ld b, b                                       ; $5dee: $40
    sbc a                                         ; $5def: $9f
    adc [hl]                                      ; $5df0: $8e
    rst $00                                       ; $5df1: $c7
    db $e4                                        ; $5df2: $e4
    or e                                          ; $5df3: $b3
    ld d, b                                       ; $5df4: $50
    ld b, e                                       ; $5df5: $43
    ld a, $e4                                     ; $5df6: $3e $e4
    db $ec                                        ; $5df8: $ec
    scf                                           ; $5df9: $37
    call nz, $be87                                ; $5dfa: $c4 $87 $be
    xor b                                         ; $5dfd: $a8
    add hl, bc                                    ; $5dfe: $09
    ld c, c                                       ; $5dff: $49
    rst $20                                       ; $5e00: $e7
    ld a, [$1d15]                                 ; $5e01: $fa $15 $1d
    jp nc, $8edf                                  ; $5e04: $d2 $df $8e

    jp z, $ffc4                                   ; $5e07: $ca $c4 $ff

    ld d, c                                       ; $5e0a: $51
    ld h, b                                       ; $5e0b: $60
    sbc [hl]                                      ; $5e0c: $9e
    xor b                                         ; $5e0d: $a8
    dec bc                                        ; $5e0e: $0b
    db $db                                        ; $5e0f: $db
    sub b                                         ; $5e10: $90
    ld l, a                                       ; $5e11: $6f
    ret z                                         ; $5e12: $c8

    db $ed                                        ; $5e13: $ed
    ld a, b                                       ; $5e14: $78
    ld e, a                                       ; $5e15: $5f
    ld hl, sp+$4b                                 ; $5e16: $f8 $4b
    push af                                       ; $5e18: $f5
    ld d, c                                       ; $5e19: $51
    sub a                                         ; $5e1a: $97
    or [hl]                                       ; $5e1b: $b6
    db $ec                                        ; $5e1c: $ec
    cp h                                          ; $5e1d: $bc
    inc hl                                        ; $5e1e: $23
    ld l, d                                       ; $5e1f: $6a
    ld l, h                                       ; $5e20: $6c
    ld a, [$4874]                                 ; $5e21: $fa $74 $48
    cp a                                          ; $5e24: $bf
    sub h                                         ; $5e25: $94
    ld b, $22                                     ; $5e26: $06 $22
    inc hl                                        ; $5e28: $23
    reti                                          ; $5e29: $d9


    inc de                                        ; $5e2a: $13
    ld [de], a                                    ; $5e2b: $12
    ld l, d                                       ; $5e2c: $6a
    ld a, [$6d15]                                 ; $5e2d: $fa $15 $6d
    rst $00                                       ; $5e30: $c7
    ei                                            ; $5e31: $fb
    jp nz, $aa5f                                  ; $5e32: $c2 $5f $aa

    adc e                                         ; $5e35: $8b
    jp nz, $88de                                  ; $5e36: $c2 $de $88

    rst $20                                       ; $5e39: $e7

Jump_045_5e3a:
    rla                                           ; $5e3a: $17
    call nz, Call_045_4c8d                        ; $5e3b: $c4 $8d $4c
    ld [hl], c                                    ; $5e3e: $71
    inc hl                                        ; $5e3f: $23
    sub e                                         ; $5e40: $93
    adc l                                         ; $5e41: $8d
    ret c                                         ; $5e42: $d8

    sub l                                         ; $5e43: $95

jr_045_5e44:
    dec b                                         ; $5e44: $05
    call z, Call_000_2247                         ; $5e45: $cc $47 $22
    set 3, e                                      ; $5e48: $cb $db
    ld l, h                                       ; $5e4a: $6c
    ld b, h                                       ; $5e4b: $44
    ld a, c                                       ; $5e4c: $79
    adc h                                         ; $5e4d: $8c
    xor c                                         ; $5e4e: $a9
    inc de                                        ; $5e4f: $13
    add sp, $52                                   ; $5e50: $e8 $52
    ld a, l                                       ; $5e52: $7d
    db $fc                                        ; $5e53: $fc
    inc de                                        ; $5e54: $13
    or [hl]                                       ; $5e55: $b6
    ld e, c                                       ; $5e56: $59
    sub [hl]                                      ; $5e57: $96
    rst $08                                       ; $5e58: $cf
    ld a, [c]                                     ; $5e59: $f2
    call nc, Call_000_0b3e                        ; $5e5a: $d4 $3e $0b
    inc l                                         ; $5e5d: $2c
    adc $7f                                       ; $5e5e: $ce $7f
    ld d, b                                       ; $5e60: $50
    jr nc, jr_045_5ed0                            ; $5e61: $30 $6d

    rra                                           ; $5e63: $1f
    ld [hl], $fa                                  ; $5e64: $36 $fa
    dec d                                         ; $5e66: $15
    ld l, l                                       ; $5e67: $6d
    rst $00                                       ; $5e68: $c7
    ei                                            ; $5e69: $fb
    jp nz, $aa5f                                  ; $5e6a: $c2 $5f $aa

    adc e                                         ; $5e6d: $8b
    jp nz, $88de                                  ; $5e6e: $c2 $de $88

    rst $20                                       ; $5e71: $e7
    rla                                           ; $5e72: $17
    call nz, Call_045_4c8d                        ; $5e73: $c4 $8d $4c
    ld [hl], c                                    ; $5e76: $71
    inc hl                                        ; $5e77: $23
    sub e                                         ; $5e78: $93
    adc l                                         ; $5e79: $8d
    inc l                                         ; $5e7a: $2c
    ld l, a                                       ; $5e7b: $6f
    or e                                          ; $5e7c: $b3

Jump_045_5e7d:
    ld de, $31e5                                  ; $5e7d: $11 $e5 $31
    and [hl]                                      ; $5e80: $a6
    ld c, [hl]                                    ; $5e81: $4e
    ret nc                                        ; $5e82: $d0

    and a                                         ; $5e83: $a7
    ld h, e                                       ; $5e84: $63
    dec de                                        ; $5e85: $1b
    ld a, [c]                                     ; $5e86: $f2
    dec b                                         ; $5e87: $05
    pop af                                        ; $5e88: $f1
    and c                                         ; $5e89: $a1
    cp a                                          ; $5e8a: $bf
    dec e                                         ; $5e8b: $1d
    sub l                                         ; $5e8c: $95
    add hl, bc                                    ; $5e8d: $09
    or d                                          ; $5e8e: $b2
    ret c                                         ; $5e8f: $d8

    sub b                                         ; $5e90: $90
    sbc a                                         ; $5e91: $9f
    adc a                                         ; $5e92: $8f
    di                                            ; $5e93: $f3
    rra                                           ; $5e94: $1f
    inc d                                         ; $5e95: $14
    inc c                                         ; $5e96: $0c
    ld sp, hl                                     ; $5e97: $f9
    ld l, h                                       ; $5e98: $6c
    ld a, d                                       ; $5e99: $7a
    db $fd                                        ; $5e9a: $fd
    ld a, [bc]                                    ; $5e9b: $0a
    ld l, l                                       ; $5e9c: $6d
    rst $00                                       ; $5e9d: $c7
    ei                                            ; $5e9e: $fb
    jp nz, $aa5f                                  ; $5e9f: $c2 $5f $aa

    dec bc                                        ; $5ea2: $0b
    ld sp, hl                                     ; $5ea3: $f9
    ld [hl+], a                                   ; $5ea4: $22
    sub e                                         ; $5ea5: $93
    sub e                                         ; $5ea6: $93

jr_045_5ea7:
    ld l, b                                       ; $5ea7: $68
    ld h, a                                       ; $5ea8: $67
    inc de                                        ; $5ea9: $13
    ld [hl], l                                    ; $5eaa: $75
    sub c                                         ; $5eab: $91

jr_045_5eac:
    ld h, c                                       ; $5eac: $61
    ld b, [hl]                                    ; $5ead: $46
    db $10                                        ; $5eae: $10
    scf                                           ; $5eaf: $37
    ld [hl-], a                                   ; $5eb0: $32
    push bc                                       ; $5eb1: $c5
    adc l                                         ; $5eb2: $8d
    ld c, h                                       ; $5eb3: $4c
    xor d                                         ; $5eb4: $aa
    reti                                          ; $5eb5: $d9


    ld a, h                                       ; $5eb6: $7c
    xor c                                         ; $5eb7: $a9
    xor [hl]                                      ; $5eb8: $ae
    jr nc, jr_045_5ea7                            ; $5eb9: $30 $ec

    ld a, [$39b4]                                 ; $5ebb: $fa $b4 $39
    ld d, [hl]                                    ; $5ebe: $56
    sub b                                         ; $5ebf: $90
    ld a, [c]                                     ; $5ec0: $f2
    ld [hl+], a                                   ; $5ec1: $22
    sub e                                         ; $5ec2: $93
    rla                                           ; $5ec3: $17
    rst $20                                       ; $5ec4: $e7

Call_045_5ec5:
    ld b, a                                       ; $5ec5: $47
    ld [hl], $b2                                  ; $5ec6: $36 $b2
    cp h                                          ; $5ec8: $bc
    call $9446                                    ; $5ec9: $cd $46 $94
    rst $00                                       ; $5ecc: $c7
    sbc b                                         ; $5ecd: $98
    ld a, [hl-]                                   ; $5ece: $3a
    ld b, c                                       ; $5ecf: $41

jr_045_5ed0:
    cp a                                          ; $5ed0: $bf
    ld [bc], a                                    ; $5ed1: $02
    sbc l                                         ; $5ed2: $9d
    cp $e5                                        ; $5ed3: $fe $e5
    ld [hl], a                                    ; $5ed5: $77
    ld a, [bc]                                    ; $5ed6: $0a
    ld a, [bc]                                    ; $5ed7: $0a
    ld c, a                                       ; $5ed8: $4f
    sub [hl]                                      ; $5ed9: $96
    ld a, e                                       ; $5eda: $7b
    sbc c                                         ; $5edb: $99
    jr nz, jr_045_5eac                            ; $5edc: $20 $ce

    ld a, a                                       ; $5ede: $7f
    ld d, b                                       ; $5edf: $50
    sub a                                         ; $5ee0: $97
    rst $18                                       ; $5ee1: $df
    ld e, c                                       ; $5ee2: $59
    db $ec                                        ; $5ee3: $ec
    xor d                                         ; $5ee4: $aa
    adc c                                         ; $5ee5: $89
    rst $30                                       ; $5ee6: $f7
    add l                                         ; $5ee7: $85
    cp a                                          ; $5ee8: $bf
    ld d, h                                       ; $5ee9: $54
    rra                                           ; $5eea: $1f
    rst $20                                       ; $5eeb: $e7
    ld b, a                                       ; $5eec: $47
    ld c, [hl]                                    ; $5eed: $4e
    call c, $db08                                 ; $5eee: $dc $08 $db
    push af                                       ; $5ef1: $f5
    dec hl                                        ; $5ef2: $2b
    ld [hl], l                                    ; $5ef3: $75
    adc $75                                       ; $5ef4: $ce $75
    db $db                                        ; $5ef6: $db
    ld l, b                                       ; $5ef7: $68
    add a                                         ; $5ef8: $87
    db $f4                                        ; $5ef9: $f4
    swap l                                        ; $5efa: $cb $35
    ld [$210b], a                                 ; $5efc: $ea $0b $21
    ld a, [hl]                                    ; $5eff: $7e
    and e                                         ; $5f00: $a3
    dec e                                         ; $5f01: $1d
    and e                                         ; $5f02: $a3
    ldh a, [$c7]                                  ; $5f03: $f0 $c7
    adc l                                         ; $5f05: $8d
    ld c, h                                       ; $5f06: $4c
    ld [hl], c                                    ; $5f07: $71

Jump_045_5f08:
    ld c, b                                       ; $5f08: $48
    ld e, e                                       ; $5f09: $5b
    halt                                          ; $5f0a: $76
    sbc $11                                       ; $5f0b: $de $11
    dec [hl]                                      ; $5f0d: $35
    ld [hl], $51                                  ; $5f0e: $36 $51
    sbc a                                         ; $5f10: $9f
    add d                                         ; $5f11: $82
    ld l, d                                       ; $5f12: $6a
    ld sp, $f1f4                                  ; $5f13: $31 $f4 $f1
    add l                                         ; $5f16: $85
    dec de                                        ; $5f17: $1b
    ld d, c                                       ; $5f18: $51
    sub e                                         ; $5f19: $93
    ld a, [bc]                                    ; $5f1a: $0a
    add hl, hl                                    ; $5f1b: $29
    sbc a                                         ; $5f1c: $9f
    rla                                           ; $5f1d: $17
    rst $20                                       ; $5f1e: $e7
    ld b, a                                       ; $5f1f: $47
    or $67                                        ; $5f20: $f6 $67
    ld a, c                                       ; $5f22: $79
    sbc e                                         ; $5f23: $9b
    db $fd                                        ; $5f24: $fd
    ld d, c                                       ; $5f25: $51
    ld e, $63                                     ; $5f26: $1e $63
    ld [$fd04], a                                 ; $5f28: $ea $04 $fd
    ld a, [bc]                                    ; $5f2b: $0a
    sbc l                                         ; $5f2c: $9d
    cp $45                                        ; $5f2d: $fe $45
    db $fd                                        ; $5f2f: $fd
    adc [hl]                                      ; $5f30: $8e
    rst $30                                       ; $5f31: $f7
    add l                                         ; $5f32: $85
    cp a                                          ; $5f33: $bf
    ld d, h                                       ; $5f34: $54
    rra                                           ; $5f35: $1f
    ld [hl], l                                    ; $5f36: $75
    ld l, c                                       ; $5f37: $69
    set 1, [hl]                                   ; $5f38: $cb $ce
    dec sp                                        ; $5f3a: $3b
    and d                                         ; $5f3b: $a2
    add $46                                       ; $5f3c: $c6 $46
    rla                                           ; $5f3e: $17
    ld [hl], $64                                  ; $5f3f: $36 $64
    cp c                                          ; $5f41: $b9
    sub a                                         ; $5f42: $97
    bit 6, d                                      ; $5f43: $cb $72
    dec c                                         ; $5f45: $0d
    and h                                         ; $5f46: $a4
    ret nc                                        ; $5f47: $d0

    ld a, [hl]                                    ; $5f48: $7e
    dec b                                         ; $5f49: $05
    ld [hl], l                                    ; $5f4a: $75
    ld l, l                                       ; $5f4b: $6d
    ret z                                         ; $5f4c: $c8

    rst $08                                       ; $5f4d: $cf
    rst $00                                       ; $5f4e: $c7
    ld sp, hl                                     ; $5f4f: $f9
    rrca                                          ; $5f50: $0f
    ld a, [bc]                                    ; $5f51: $0a
    add [hl]                                      ; $5f52: $86
    xor b                                         ; $5f53: $a8
    rst $18                                       ; $5f54: $df
    dec de                                        ; $5f55: $1b
    ld e, c                                       ; $5f56: $59
    sbc $f8                                       ; $5f57: $de $f8
    and d                                         ; $5f59: $a2
    ld l, $6d                                     ; $5f5a: $2e $6d
    reti                                          ; $5f5c: $d9


    ld a, c                                       ; $5f5d: $79
    ld b, a                                       ; $5f5e: $47
    call nc, $e8d8                                ; $5f5f: $d4 $d8 $e8
    ld d, d                                       ; $5f62: $52
    cp l                                          ; $5f63: $bd
    or $76                                        ; $5f64: $f6 $76
    ld sp, hl                                     ; $5f66: $f9
    sbc l                                         ; $5f67: $9d
    add d                                         ; $5f68: $82
    jp nz, $e593                                  ; $5f69: $c2 $93 $e5

    ld e, [hl]                                    ; $5f6c: $5e
    and [hl]                                      ; $5f6d: $a6
    rst $28                                       ; $5f6e: $ef
    ei                                            ; $5f6f: $fb
    dec d                                         ; $5f70: $15
    xor l                                         ; $5f71: $ad
    add e                                         ; $5f72: $83
    cp h                                          ; $5f73: $bc
    jr c, @+$01                                   ; $5f74: $38 $ff

    ld b, c                                       ; $5f76: $41
    pop bc                                        ; $5f77: $c1
    sub b                                         ; $5f78: $90
    ld c, a                                       ; $5f79: $4f
    sbc l                                         ; $5f7a: $9d
    ld [hl], e                                    ; $5f7b: $73
    db $dd                                        ; $5f7c: $dd
    ld [hl], $da                                  ; $5f7d: $36 $da
    ld hl, $72fd                                  ; $5f7f: $21 $fd $72
    adc l                                         ; $5f82: $8d
    ld a, [$8842]                                 ; $5f83: $fa $42 $88
    rst $18                                       ; $5f86: $df

jr_045_5f87:
    ld l, b                                       ; $5f87: $68
    rst $00                                       ; $5f88: $c7
    jr z, jr_045_5f87                             ; $5f89: $28 $fc

    cp d                                          ; $5f8b: $ba
    xor b                                         ; $5f8c: $a8
    ld c, e                                       ; $5f8d: $4b
    sbc c                                         ; $5f8e: $99
    push bc                                       ; $5f8f: $c5
    cp [hl]                                       ; $5f90: $be

Call_045_5f91:
    ld e, a                                       ; $5f91: $5f
    ld bc, $fe9e                                  ; $5f92: $01 $9e $fe
    add e                                         ; $5f95: $83
    cp d                                          ; $5f96: $ba
    cp [hl]                                       ; $5f97: $be
    rst $28                                       ; $5f98: $ef
    ld d, e                                       ; $5f99: $53
    cp $74                                        ; $5f9a: $fe $74
    pop af                                        ; $5f9c: $f1
    and c                                         ; $5f9d: $a1
    ret c                                         ; $5f9e: $d8

    pop af                                        ; $5f9f: $f1
    cp [hl]                                       ; $5fa0: $be
    ldh a, [$97]                                  ; $5fa1: $f0 $97
    ld [$befb], a                                 ; $5fa3: $ea $fb $be

Jump_045_5fa6:
    ld c, a                                       ; $5fa6: $4f
    ld b, a                                       ; $5fa7: $47
    rst $20                                       ; $5fa8: $e7
    cp d                                          ; $5fa9: $ba
    dec h                                         ; $5faa: $25
    ret nc                                        ; $5fab: $d0

    ld l, b                                       ; $5fac: $68
    add a                                         ; $5fad: $87
    db $f4                                        ; $5fae: $f4
    swap l                                        ; $5faf: $cb $35
    ld [$210b], a                                 ; $5fb1: $ea $0b $21
    ld a, [hl]                                    ; $5fb4: $7e
    and e                                         ; $5fb5: $a3
    dec e                                         ; $5fb6: $1d
    and e                                         ; $5fb7: $a3
    ldh a, [$d7]                                  ; $5fb8: $f0 $d7
    ld c, d                                       ; $5fba: $4a
    daa                                           ; $5fbb: $27
    ld [de], a                                    ; $5fbc: $12
    sbc c                                         ; $5fbd: $99
    ld a, [bc]                                    ; $5fbe: $0a
    add hl, hl                                    ; $5fbf: $29
    ld d, a                                       ; $5fc0: $57
    db $dd                                        ; $5fc1: $dd
    ld b, [hl]                                    ; $5fc2: $46
    rst $18                                       ; $5fc3: $df
    rst $30                                       ; $5fc4: $f7
    dec hl                                        ; $5fc5: $2b
    ld [hl], l                                    ; $5fc6: $75
    ld h, c                                       ; $5fc7: $61
    adc $5f                                       ; $5fc8: $ce $5f
    ld l, a                                       ; $5fca: $6f
    inc e                                         ; $5fcb: $1c
    call z, Call_000_2ff9                         ; $5fcc: $cc $f9 $2f
    ld a, $f4                                     ; $5fcf: $3e $f4
    dec [hl]                                      ; $5fd1: $35
    db $ed                                        ; $5fd2: $ed
    ld a, [de]                                    ; $5fd3: $1a
    xor b                                         ; $5fd4: $a8
    dec d                                         ; $5fd5: $15
    ld c, a                                       ; $5fd6: $4f
    rst $38                                       ; $5fd7: $ff
    ld b, c                                       ; $5fd8: $41

Call_045_5fd9:
    ld e, l                                       ; $5fd9: $5d
    ld a, $75                                     ; $5fda: $3e $75
    adc $75                                       ; $5fdc: $ce $75
    sbc e                                         ; $5fde: $9b
    rst $18                                       ; $5fdf: $df
    add hl, hl                                    ; $5fe0: $29
    jr z, jr_045_601f                             ; $5fe1: $28 $3c

    ld e, c                                       ; $5fe3: $59
    xor $65                                       ; $5fe4: $ee $65
    ld a, [$6d15]                                 ; $5fe6: $fa $15 $6d
    rst $00                                       ; $5fe9: $c7
    ei                                            ; $5fea: $fb
    jp nz, $aa5f                                  ; $5feb: $c2 $5f $aa

    adc e                                         ; $5fee: $8b
    jp nz, $88de                                  ; $5fef: $c2 $de $88

    rst $20                                       ; $5ff2: $e7
    rla                                           ; $5ff3: $17
    call nz, Call_045_4c8d                        ; $5ff4: $c4 $8d $4c
    ld [hl], c                                    ; $5ff7: $71
    inc hl                                        ; $5ff8: $23
    sub e                                         ; $5ff9: $93
    adc l                                         ; $5ffa: $8d
    inc l                                         ; $5ffb: $2c
    ld l, a                                       ; $5ffc: $6f
    or e                                          ; $5ffd: $b3
    ld de, $31e5                                  ; $5ffe: $11 $e5 $31
    and [hl]                                      ; $6001: $a6
    ld c, [hl]                                    ; $6002: $4e
    ret nc                                        ; $6003: $d0

    and a                                         ; $6004: $a7
    ld l, $2c                                     ; $6005: $2e $2c
    ld c, h                                       ; $6007: $4c
    ccf                                           ; $6008: $3f
    sbc $31                                       ; $6009: $de $31
    and [hl]                                      ; $600b: $a6
    ld a, [c]                                     ; $600c: $f2
    cp d                                          ; $600d: $ba
    call c, $d30e                                 ; $600e: $dc $0e $d3
    ld c, c                                       ; $6011: $49
    ld sp, hl                                     ; $6012: $f9
    cp h                                          ; $6013: $bc
    jr c, jr_045_6055                             ; $6014: $38 $3f

    or d                                          ; $6016: $b2
    cp h                                          ; $6017: $bc
    db $ed                                        ; $6018: $ed
    scf                                           ; $6019: $37
    db $f4                                        ; $601a: $f4
    pop af                                        ; $601b: $f1
    add h                                         ; $601c: $84
    cp c                                          ; $601d: $b9
    rst $18                                       ; $601e: $df

jr_045_601f:
    sub e                                         ; $601f: $93
    rst $18                                       ; $6020: $df
    add hl, hl                                    ; $6021: $29
    jr z, jr_045_6060                             ; $6022: $28 $3c

    ld e, c                                       ; $6024: $59
    xor $65                                       ; $6025: $ee $65
    ld a, [$be15]                                 ; $6027: $fa $15 $be
    ld h, a                                       ; $602a: $67
    xor c                                         ; $602b: $a9
    ld [hl], e                                    ; $602c: $73
    adc $3f                                       ; $602d: $ce $3f
    ei                                            ; $602f: $fb
    ld c, e                                       ; $6030: $4b
    inc d                                         ; $6031: $14
    jp nc, Jump_045_55fe                          ; $6032: $d2 $fe $55

    add l                                         ; $6035: $85
    ld b, b                                       ; $6036: $40
    and e                                         ; $6037: $a3
    ld [hl], l                                    ; $6038: $75
    rst $00                                       ; $6039: $c7
    sub [hl]                                      ; $603a: $96
    inc de                                        ; $603b: $13
    adc l                                         ; $603c: $8d
    ld b, a                                       ; $603d: $47
    ld [c], a                                     ; $603e: $e2
    rst $38                                       ; $603f: $ff
    db $ec                                        ; $6040: $ec
    adc a                                         ; $6041: $8f
    ld e, l                                       ; $6042: $5d
    ld e, c                                       ; $6043: $59
    and [hl]                                      ; $6044: $a6
    ldh a, [$c7]                                  ; $6045: $f0 $c7
    ld sp, hl                                     ; $6047: $f9
    ld de, $7307                                  ; $6048: $11 $07 $73
    cp $eb                                        ; $604b: $fe $eb
    db $e3                                        ; $604d: $e3
    add hl, bc                                    ; $604e: $09
    ld [hl], e                                    ; $604f: $73
    cp a                                          ; $6050: $bf
    daa                                           ; $6051: $27
    cp a                                          ; $6052: $bf
    ld d, e                                       ; $6053: $53
    ld d, b                                       ; $6054: $50

jr_045_6055:
    ld a, b                                       ; $6055: $78
    or d                                          ; $6056: $b2
    call c, $f4cb                                 ; $6057: $dc $cb $f4
    dec hl                                        ; $605a: $2b
    sbc [hl]                                      ; $605b: $9e
    jr nc, jr_045_6055                            ; $605c: $30 $f7

    cp c                                          ; $605e: $b9
    dec e                                         ; $605f: $1d

jr_045_6060:
    rst $28                                       ; $6060: $ef
    dec bc                                        ; $6061: $0b
    ld a, a                                       ; $6062: $7f
    xor c                                         ; $6063: $a9
    ld a, $6e                                     ; $6064: $3e $6e
    inc h                                         ; $6066: $24
    ei                                            ; $6067: $fb
    jp $fc28                                      ; $6068: $c3 $28 $fc


    xor c                                         ; $606b: $a9
    ld b, b                                       ; $606c: $40
    inc h                                         ; $606d: $24
    ld a, [hl]                                    ; $606e: $7e
    ld a, [bc]                                    ; $606f: $0a
    cp a                                          ; $6070: $bf
    ld [hl], e                                    ; $6071: $73
    rst $08                                       ; $6072: $cf
    sbc a                                         ; $6073: $9f
    rst $18                                       ; $6074: $df
    add hl, hl                                    ; $6075: $29
    jr z, @+$3e                                   ; $6076: $28 $3c

    ld e, c                                       ; $6078: $59
    xor $65                                       ; $6079: $ee $65
    ld a, [$9cb4]                                 ; $607b: $fa $b4 $9c
    ld c, l                                       ; $607e: $4d
    cpl                                           ; $607f: $2f
    ei                                            ; $6080: $fb
    or e                                          ; $6081: $b3
    ret nz                                        ; $6082: $c0

    jp z, Jump_045_47c8                           ; $6083: $ca $c8 $47

    dec sp                                        ; $6086: $3b
    ld e, d                                       ; $6087: $5a
    ld hl, sp-$0d                                 ; $6088: $f8 $f3
    ld [hl], c                                    ; $608a: $71
    db $f4                                        ; $608b: $f4
    ld [c], a                                     ; $608c: $e2
    db $fc                                        ; $608d: $fc
    rlca                                          ; $608e: $07
    dec b                                         ; $608f: $05
    ld b, e                                       ; $6090: $43
    cp a                                          ; $6091: $bf
    ld [bc], a                                    ; $6092: $02
    ld l, l                                       ; $6093: $6d
    reti                                          ; $6094: $d9


    inc de                                        ; $6095: $13
    rrca                                          ; $6096: $0f
    ld e, c                                       ; $6097: $59
    ld h, b                                       ; $6098: $60
    reti                                          ; $6099: $d9


    rra                                           ; $609a: $1f
    ld [hl], l                                    ; $609b: $75
    push de                                       ; $609c: $d5
    inc d                                         ; $609d: $14
    or [hl]                                       ; $609e: $b6
    daa                                           ; $609f: $27
    sbc $08                                       ; $60a0: $de $08
    ld [hl-], a                                   ; $60a2: $32
    ld e, [hl]                                    ; $60a3: $5e
    cpl                                           ; $60a4: $2f
    adc h                                         ; $60a5: $8c
    ccf                                           ; $60a6: $3f
    cp a                                          ; $60a7: $bf
    rst $30                                       ; $60a8: $f7
    rst $00                                       ; $60a9: $c7
    db $ed                                        ; $60aa: $ed
    cpl                                           ; $60ab: $2f
    dec b                                         ; $60ac: $05
    cp d                                          ; $60ad: $ba
    call nc, $337e                                ; $60ae: $d4 $7e $33
    ld [bc], a                                    ; $60b1: $02
    ld a, l                                       ; $60b2: $7d
    jp c, Jump_045_6e70                           ; $60b3: $da $70 $6e

    ld hl, sp+$42                                 ; $60b6: $f8 $42
    dec h                                         ; $60b8: $25
    daa                                           ; $60b9: $27
    xor $85                                       ; $60ba: $ee $85
    ld d, c                                       ; $60bc: $51
    xor [hl]                                      ; $60bd: $ae
    sbc d                                         ; $60be: $9a
    cp b                                          ; $60bf: $b8
    xor c                                         ; $60c0: $a9
    db $10                                        ; $60c1: $10
    dec sp                                        ; $60c2: $3b
    scf                                           ; $60c3: $37
    push de                                       ; $60c4: $d5
    ld [bc], a                                    ; $60c5: $02
    add hl, hl                                    ; $60c6: $29
    rst $18                                       ; $60c7: $df
    xor a                                         ; $60c8: $af
    ld l, l                                       ; $60c9: $6d
    ld [hl], l                                    ; $60ca: $75
    call nc, $dd76                                ; $60cb: $d4 $76 $dd
    adc [hl]                                      ; $60ce: $8e
    dec sp                                        ; $60cf: $3b
    xor b                                         ; $60d0: $a8
    db $d3                                        ; $60d1: $d3
    halt                                          ; $60d2: $76
    rst $00                                       ; $60d3: $c7
    ld l, l                                       ; $60d4: $6d
    and h                                         ; $60d5: $a4
    xor l                                         ; $60d6: $ad
    ld d, [hl]                                    ; $60d7: $56
    db $db                                        ; $60d8: $db
    ld l, a                                       ; $60d9: $6f
    jp $0577                                      ; $60da: $c3 $77 $05


    ld e, c                                       ; $60dd: $59
    ld bc, $6d75                                  ; $60de: $01 $75 $6d
    inc d                                         ; $60e1: $14
    ld h, l                                       ; $60e2: $65
    ld e, $43                                     ; $60e3: $1e $43
    ld d, b                                       ; $60e5: $50
    ldh [$28], a                                  ; $60e6: $e0 $28
    rra                                           ; $60e8: $1f
    add hl, sp                                    ; $60e9: $39
    dec hl                                        ; $60ea: $2b
    cp [hl]                                       ; $60eb: $be
    inc c                                         ; $60ec: $0c
    ld [de], a                                    ; $60ed: $12
    ld l, c                                       ; $60ee: $69
    add e                                         ; $60ef: $83
    ld sp, hl                                     ; $60f0: $f9
    ld b, h                                       ; $60f1: $44
    add e                                         ; $60f2: $83
    xor l                                         ; $60f3: $ad
    ld e, c                                       ; $60f4: $59
    ld bc, $bf9e                                  ; $60f5: $01 $9e $bf
    ld c, h                                       ; $60f8: $4c
    ld a, [bc]                                    ; $60f9: $0a
    ld a, c                                       ; $60fa: $79
    sbc e                                         ; $60fb: $9b
    ld l, $cb                                     ; $60fc: $2e $cb
    di                                            ; $60fe: $f3
    jr jr_045_6157                                ; $60ff: $18 $56

    db $ed                                        ; $6101: $ed
    sbc a                                         ; $6102: $9f
    di                                            ; $6103: $f3
    ccf                                           ; $6104: $3f
    halt                                          ; $6105: $76
    ld e, d                                       ; $6106: $5a
    rra                                           ; $6107: $1f
    db $d3                                        ; $6108: $d3
    ld e, [hl]                                    ; $6109: $5e
    ld d, [hl]                                    ; $610a: $56
    ld e, c                                       ; $610b: $59
    ld bc, $bf9e                                  ; $610c: $01 $9e $bf
    ld c, h                                       ; $610f: $4c
    inc [hl]                                      ; $6110: $34
    ld a, e                                       ; $6111: $7b
    rst $28                                       ; $6112: $ef
    cp c                                          ; $6113: $b9
    ld e, c                                       ; $6114: $59
    ld bc, $5fed                                  ; $6115: $01 $ed $5f
    or a                                          ; $6118: $b7
    ld c, b                                       ; $6119: $48
    db $dd                                        ; $611a: $dd
    db $fd                                        ; $611b: $fd
    call z, $d860                                 ; $611c: $cc $60 $d8
    ld a, [bc]                                    ; $611f: $0a
    ld e, c                                       ; $6120: $59
    ld bc, $e4be                                  ; $6121: $01 $be $e4
    ld l, l                                       ; $6124: $6d
    cp d                                          ; $6125: $ba
    inc l                                         ; $6126: $2c
    rst $08                                       ; $6127: $cf
    ld h, e                                       ; $6128: $63
    or a                                          ; $6129: $b7
    ld [bc], a                                    ; $612a: $02
    db $ed                                        ; $612b: $ed
    ld c, h                                       ; $612c: $4c
    pop af                                        ; $612d: $f1
    db $d3                                        ; $612e: $d3
    ld c, a                                       ; $612f: $4f
    ei                                            ; $6130: $fb
    add b                                         ; $6131: $80
    ld a, [hl+]                                   ; $6132: $2a
    dec hl                                        ; $6133: $2b
    cp [hl]                                       ; $6134: $be
    inc c                                         ; $6135: $0c
    ld [de], a                                    ; $6136: $12
    jp hl                                         ; $6137: $e9


    db $f4                                        ; $6138: $f4
    rst $30                                       ; $6139: $f7
    xor [hl]                                      ; $613a: $ae
    rla                                           ; $613b: $17
    dec hl                                        ; $613c: $2b
    xor l                                         ; $613d: $ad
    rrca                                          ; $613e: $0f
    push de                                       ; $613f: $d5
    ld [c], a                                     ; $6140: $e2
    db $eb                                        ; $6141: $eb
    db $fc                                        ; $6142: $fc
    or a                                          ; $6143: $b7

Call_045_6144:
    rst $30                                       ; $6144: $f7
    adc c                                         ; $6145: $89
    or [hl]                                       ; $6146: $b6
    ld [bc], a                                    ; $6147: $02
    cp [hl]                                       ; $6148: $be
    inc c                                         ; $6149: $0c
    ld [de], a                                    ; $614a: $12
    ld l, c                                       ; $614b: $69
    add e                                         ; $614c: $83
    ld sp, hl                                     ; $614d: $f9
    ld b, h                                       ; $614e: $44
    add e                                         ; $614f: $83
    xor l                                         ; $6150: $ad
    ld e, c                                       ; $6151: $59
    ld bc, $d96d                                  ; $6152: $01 $6d $d9
    ld a, e                                       ; $6155: $7b
    rst $08                                       ; $6156: $cf

jr_045_6157:
    ld a, l                                       ; $6157: $7d
    sub b                                         ; $6158: $90
    sub a                                         ; $6159: $97
    xor e                                         ; $615a: $ab
    sbc [hl]                                      ; $615b: $9e
    ld a, b                                       ; $615c: $78
    inc hl                                        ; $615d: $23
    ld e, b                                       ; $615e: $58
    ld bc, $d86d                                  ; $615f: $01 $6d $d8
    cp c                                          ; $6162: $b9
    call nc, Call_045_71c6                        ; $6163: $d4 $c6 $71
    push af                                       ; $6166: $f5
    or d                                          ; $6167: $b2
    ld [bc], a                                    ; $6168: $02
    dec e                                         ; $6169: $1d
    adc l                                         ; $616a: $8d
    ld e, [hl]                                    ; $616b: $5e
    sbc a                                         ; $616c: $9f
    ld c, [hl]                                    ; $616d: $4e
    ld d, c                                       ; $616e: $51
    ld a, b                                       ; $616f: $78
    dec b                                         ; $6170: $05
    db $ed                                        ; $6171: $ed
    ret nz                                        ; $6172: $c0

    adc h                                         ; $6173: $8c
    ld b, b                                       ; $6174: $40
    ld a, [hl-]                                   ; $6175: $3a
    dec e                                         ; $6176: $1d
    di                                            ; $6177: $f3

jr_045_6178:
    rra                                           ; $6178: $1f
    jp z, Jump_045_590a                           ; $6179: $ca $0a $59

    ld bc, $cebe                                  ; $617c: $01 $be $ce
    adc [hl]                                      ; $617f: $8e
    ld a, c                                       ; $6180: $79
    inc c                                         ; $6181: $0c
    adc l                                         ; $6182: $8d
    ld a, c                                       ; $6183: $79
    cp $32                                        ; $6184: $fe $32
    ld e, c                                       ; $6186: $59
    ld l, h                                       ; $6187: $6c
    inc [hl]                                      ; $6188: $34
    jr nc, jr_045_61ca                            ; $6189: $30 $3f

    pop af                                        ; $618b: $f1
    ld b, [hl]                                    ; $618c: $46
    or b                                          ; $618d: $b0
    ld [bc], a                                    ; $618e: $02
    db $ed                                        ; $618f: $ed
    sbc a                                         ; $6190: $9f
    di                                            ; $6191: $f3
    ccf                                           ; $6192: $3f
    halt                                          ; $6193: $76
    ld l, d                                       ; $6194: $6a
    db $d3                                        ; $6195: $d3
    ld a, [bc]                                    ; $6196: $0a
    ld h, l                                       ; $6197: $65
    dec b                                         ; $6198: $05
    ld e, c                                       ; $6199: $59
    ld bc, $6d75                                  ; $619a: $01 $75 $6d
    inc d                                         ; $619d: $14
    ld h, l                                       ; $619e: $65
    ld e, $43                                     ; $619f: $1e $43
    cp [hl]                                       ; $61a1: $be
    sub h                                         ; $61a2: $94
    ld [hl], c                                    ; $61a3: $71
    rst $30                                       ; $61a4: $f7
    inc a                                         ; $61a5: $3c
    dec hl                                        ; $61a6: $2b
    sbc [hl]                                      ; $61a7: $9e
    ld l, a                                       ; $61a8: $6f
    sbc a                                         ; $61a9: $9f
    sub $0f                                       ; $61aa: $d6 $0f
    cp $6a                                        ; $61ac: $fe $6a
    dec b                                         ; $61ae: $05
    ld e, c                                       ; $61af: $59
    ld bc, $d3ed                                  ; $61b0: $01 $ed $d3
    ld [hl], d                                    ; $61b3: $72
    xor $03                                       ; $61b4: $ee $03
    dec d                                         ; $61b6: $15
    ld a, b                                       ; $61b7: $78
    cp l                                          ; $61b8: $bd
    ld h, b                                       ; $61b9: $60
    cp [hl]                                       ; $61ba: $be
    sub h                                         ; $61bb: $94
    sub c                                         ; $61bc: $91
    or c                                          ; $61bd: $b1
    ld e, e                                       ; $61be: $5b
    ld bc, $bfed                                  ; $61bf: $01 $ed $bf
    ld [hl], l                                    ; $61c2: $75
    sbc e                                         ; $61c3: $9b
    ld l, $00                                     ; $61c4: $2e $00
    ld d, c                                       ; $61c6: $51
    dec hl                                        ; $61c7: $2b
    xor l                                         ; $61c8: $ad
    dec de                                        ; $61c9: $1b

jr_045_61ca:
    cp d                                          ; $61ca: $ba
    adc e                                         ; $61cb: $8b
    rst $20                                       ; $61cc: $e7
    dec hl                                        ; $61cd: $2b
    ld [bc], a                                    ; $61ce: $02
    dec hl                                        ; $61cf: $2b
    ld l, l                                       ; $61d0: $6d
    cp a                                          ; $61d1: $bf
    and h                                         ; $61d2: $a4
    and e                                         ; $61d3: $a3
    ld d, c                                       ; $61d4: $51
    rst $30                                       ; $61d5: $f7
    dec hl                                        ; $61d6: $2b
    ld e, c                                       ; $61d7: $59
    ld bc, $a31d                                  ; $61d8: $01 $1d $a3
    ldh a, [$89]                                  ; $61db: $f0 $89
    or [hl]                                       ; $61dd: $b6

Jump_045_61de:
    ld [bc], a                                    ; $61de: $02
    db $ed                                        ; $61df: $ed
    dec e                                         ; $61e0: $1d
    sub c                                         ; $61e1: $91
    jr jr_045_6233                                ; $61e2: $18 $4f

    ld e, d                                       ; $61e4: $5a
    ld d, l                                       ; $61e5: $55
    daa                                           ; $61e6: $27
    ld h, l                                       ; $61e7: $65
    dec b                                         ; $61e8: $05
    xor l                                         ; $61e9: $ad
    reti                                          ; $61ea: $d9


    cp l                                          ; $61eb: $bd
    and h                                         ; $61ec: $a4
    db $dd                                        ; $61ed: $dd
    or e                                          ; $61ee: $b3
    ld l, [hl]                                    ; $61ef: $6e
    dec b                                         ; $61f0: $05
    and l                                         ; $61f1: $a5
    xor h                                         ; $61f2: $ac
    sbc [hl]                                      ; $61f3: $9e
    ld a, [hl]                                    ; $61f4: $7e
    jr jr_045_6178                                ; $61f5: $18 $81

    sbc l                                         ; $61f7: $9d
    cp d                                          ; $61f8: $ba
    sub b                                         ; $61f9: $90
    ld [hl], e                                    ; $61fa: $73
    db $dd                                        ; $61fb: $dd
    xor [hl]                                      ; $61fc: $ae
    xor l                                         ; $61fd: $ad
    jp z, $b4ed                                   ; $61fe: $ca $ed $b4

    inc sp                                        ; $6201: $33
    push bc                                       ; $6202: $c5
    ld a, a                                       ; $6203: $7f
    dec hl                                        ; $6204: $2b
    ld e, c                                       ; $6205: $59
    ld bc, $0159                                  ; $6206: $01 $59 $01
    xor l                                         ; $6209: $ad
    or [hl]                                       ; $620a: $b6
    rst $18                                       ; $620b: $df
    ld l, d                                       ; $620c: $6a
    sub a                                         ; $620d: $97
    ld l, l                                       ; $620e: $6d
    and h                                         ; $620f: $a4
    adc l                                         ; $6210: $8d
    ld a, [hl-]                                   ; $6211: $3a
    dec e                                         ; $6212: $1d
    or a                                          ; $6213: $b7
    pop de                                        ; $6214: $d1
    ld d, c                                       ; $6215: $51
    rst $00                                       ; $6216: $c7
    xor l                                         ; $6217: $ad
    or [hl]                                       ; $6218: $b6
    ld e, l                                       ; $6219: $5d
    and a                                         ; $621a: $a7
    db $fd                                        ; $621b: $fd
    ld [hl], $ea                                  ; $621c: $36 $ea
    ld [hl], h                                    ; $621e: $74
    cp h                                          ; $621f: $bc
    ld [bc], a                                    ; $6220: $02
    ld e, c                                       ; $6221: $59
    ld bc, $6d75                                  ; $6222: $01 $75 $6d
    inc d                                         ; $6225: $14
    ld h, l                                       ; $6226: $65
    ld e, $bb                                     ; $6227: $1e $bb
    and b                                         ; $6229: $a0
    ret nz                                        ; $622a: $c0

    ld d, c                                       ; $622b: $51
    ld a, $f2                                     ; $622c: $3e $f2
    ld d, [hl]                                    ; $622e: $56
    xor l                                         ; $622f: $ad
    cp a                                          ; $6230: $bf
    and h                                         ; $6231: $a4
    adc l                                         ; $6232: $8d

jr_045_6233:
    dec c                                         ; $6233: $0d
    pop de                                        ; $6234: $d1
    rst $38                                       ; $6235: $ff
    sub a                                         ; $6236: $97
    dec d                                         ; $6237: $15
    xor l                                         ; $6238: $ad
    ccf                                           ; $6239: $3f
    ld a, c                                       ; $623a: $79
    ld a, [hl+]                                   ; $623b: $2a
    db $ed                                        ; $623c: $ed
    cp a                                          ; $623d: $bf
    ret z                                         ; $623e: $c8

    ld a, [bc]                                    ; $623f: $0a
    ld e, c                                       ; $6240: $59
    ld bc, $9fad                                  ; $6241: $01 $ad $9f
    add c                                         ; $6244: $81
    ld a, c                                       ; $6245: $79
    inc c                                         ; $6246: $0c
    ld h, c                                       ; $6247: $61
    inc d                                         ; $6248: $14
    ld a, $d1                                     ; $6249: $3e $d1
    ld d, [hl]                                    ; $624b: $56
    db $ed                                        ; $624c: $ed
    cp h                                          ; $624d: $bc
    db $eb                                        ; $624e: $eb
    ld [hl], $ad                                  ; $624f: $36 $ad
    add hl, de                                    ; $6251: $19

jr_045_6252:
    xor l                                         ; $6252: $ad
    ld a, [hl+]                                   ; $6253: $2a
    ldh a, [$0a]                                  ; $6254: $f0 $0a
    ld e, c                                       ; $6256: $59
    ld bc, $9fad                                  ; $6257: $01 $ad $9f
    add c                                         ; $625a: $81
    ld a, c                                       ; $625b: $79
    inc c                                         ; $625c: $0c
    ld [hl], c                                    ; $625d: $71
    add [hl]                                      ; $625e: $86
    rst $20                                       ; $625f: $e7
    inc hl                                        ; $6260: $23
    ld h, a                                       ; $6261: $67
    dec b                                         ; $6262: $05
    ld [hl], l                                    ; $6263: $75
    db $fd                                        ; $6264: $fd
    or a                                          ; $6265: $b7
    db $d3                                        ; $6266: $d3
    or c                                          ; $6267: $b1
    pop de                                        ; $6268: $d1
    ld c, d                                       ; $6269: $4a
    ccf                                           ; $626a: $3f
    dec hl                                        ; $626b: $2b
    ld e, c                                       ; $626c: $59
    ld bc, $b51d                                  ; $626d: $01 $1d $b5
    ld e, l                                       ; $6270: $5d
    and a                                         ; $6271: $a7
    xor l                                         ; $6272: $ad
    adc [hl]                                      ; $6273: $8e
    ld e, d                                       ; $6274: $5a
    db $ed                                        ; $6275: $ed
    or d                                          ; $6276: $b2
    db $ed                                        ; $6277: $ed
    ld d, [hl]                                    ; $6278: $56
    db $db                                        ; $6279: $db
    ld l, a                                       ; $627a: $6f
    and e                                         ; $627b: $a3
    ld c, [hl]                                    ; $627c: $4e
    rst $00                                       ; $627d: $c7
    ld l, l                                       ; $627e: $6d
    rst $00                                       ; $627f: $c7
    or a                                          ; $6280: $b7
    ld l, [hl]                                    ; $6281: $6e
    dec de                                        ; $6282: $1b
    sbc [hl]                                      ; $6283: $9e
    ld l, l                                       ; $6284: $6d
    or a                                          ; $6285: $b7
    jp c, $db5e                                   ; $6286: $da $5e $db

    dec hl                                        ; $6289: $2b
    cp [hl]                                       ; $628a: $be
    adc h                                         ; $628b: $8c
    push bc                                       ; $628c: $c5
    rst $38                                       ; $628d: $ff
    ld [hl], d                                    ; $628e: $72
    ld c, b                                       ; $628f: $48
    ld l, l                                       ; $6290: $6d
    jr jr_045_6252                                ; $6291: $18 $bf

    ld b, $5b                                     ; $6293: $06 $5b
    ld bc, $b4be                                  ; $6295: $01 $be $b4
    cp h                                          ; $6298: $bc
    and h                                         ; $6299: $a4
    ld [hl], l                                    ; $629a: $75
    or h                                          ; $629b: $b4
    rrca                                          ; $629c: $0f
    dec sp                                        ; $629d: $3b
    ld e, [hl]                                    ; $629e: $5e
    ld bc, $5fed                                  ; $629f: $01 $ed $5f
    or a                                          ; $62a2: $b7
    ld c, b                                       ; $62a3: $48
    db $eb                                        ; $62a4: $eb
    ld a, b                                       ; $62a5: $78
    ld e, c                                       ; $62a6: $59
    ld bc, $bead                                  ; $62a7: $01 $ad $be
    adc l                                         ; $62aa: $8d
    and h                                         ; $62ab: $a4
    and e                                         ; $62ac: $a3
    ld [hl], e                                    ; $62ad: $73
    ld e, b                                       ; $62ae: $58
    ld bc, $82ed                                  ; $62af: $01 $ed $82
    inc a                                         ; $62b2: $3c
    ld c, c                                       ; $62b3: $49
    ld l, e                                       ; $62b4: $6b
    call nc, $b9d4                                ; $62b5: $d4 $d4 $b9
    ld l, [hl]                                    ; $62b8: $6e
    ld d, a                                       ; $62b9: $57
    db $ed                                        ; $62ba: $ed
    jp c, $f895                                   ; $62bb: $da $95 $f8

    jp nc, $82aa                                  ; $62be: $d2 $aa $82

    sub l                                         ; $62c1: $95
    dec d                                         ; $62c2: $15
    ld e, c                                       ; $62c3: $59
    ld bc, $0159                                  ; $62c4: $01 $59 $01
    ld e, c                                       ; $62c7: $59
    ld bc, $b46d                                  ; $62c8: $01 $6d $b4
    rst $10                                       ; $62cb: $d7
    add [hl]                                      ; $62cc: $86
    ld h, a                                       ; $62cd: $67
    rst $00                                       ; $62ce: $c7
    dec e                                         ; $62cf: $1d
    ld [hl], l                                    ; $62d0: $75
    ld d, b                                       ; $62d1: $50
    and a                                         ; $62d2: $a7
    ld l, l                                       ; $62d3: $6d
    rst $08                                       ; $62d4: $cf
    or h                                          ; $62d5: $b4
    jp c, $c751                                   ; $62d6: $da $51 $c7

    cp [hl]                                       ; $62d9: $be
    dec hl                                        ; $62da: $2b
    ld e, c                                       ; $62db: $59
    ld bc, $e31d                                  ; $62dc: $01 $1d $e3
    xor e                                         ; $62df: $ab
    inc l                                         ; $62e0: $2c
    ld [hl], $8a                                  ; $62e1: $36 $8a

jr_045_62e3:
    ld [de], a                                    ; $62e3: $12
    ld l, a                                       ; $62e4: $6f
    inc b                                         ; $62e5: $04
    dec hl                                        ; $62e6: $2b
    sbc [hl]                                      ; $62e7: $9e
    ld a, [hl]                                    ; $62e8: $7e
    cp e                                          ; $62e9: $bb
    sub d                                         ; $62ea: $92
    or [hl]                                       ; $62eb: $b6
    db $ec                                        ; $62ec: $ec
    add hl, bc                                    ; $62ed: $09
    xor h                                         ; $62ee: $ac
    sbc [hl]                                      ; $62ef: $9e
    or e                                          ; $62f0: $b3
    ld c, a                                       ; $62f1: $4f
    jp nc, $e8d1                                  ; $62f2: $d2 $d1 $e8

    ld c, a                                       ; $62f5: $4f
    jp z, $0ac8                                   ; $62f6: $ca $c8 $0a

    db $ed                                        ; $62f9: $ed
    ret nz                                        ; $62fa: $c0

    db $eb                                        ; $62fb: $eb
    ld c, l                                       ; $62fc: $4d
    ld e, e                                       ; $62fd: $5b
    ld e, a                                       ; $62fe: $5f
    adc l                                         ; $62ff: $8d
    xor h                                         ; $6300: $ac
    dec e                                         ; $6301: $1d
    ld [hl], h                                    ; $6302: $74
    rlca                                          ; $6303: $07
    ld c, c                                       ; $6304: $49
    rlca                                          ; $6305: $07

jr_045_6306:
    ld e, $ad                                     ; $6306: $1e $ad
    reti                                          ; $6308: $d9


    ld b, c                                       ; $6309: $41
    ld d, [hl]                                    ; $630a: $56
    dec e                                         ; $630b: $1d
    adc l                                         ; $630c: $8d
    ld a, $1d                                     ; $630d: $3e $1d
    ld a, b                                       ; $630f: $78
    or h                                          ; $6310: $b4
    ld sp, hl                                     ; $6311: $f9
    ld h, [hl]                                    ; $6312: $66
    ret c                                         ; $6313: $d8

    ld a, e                                       ; $6314: $7b
    dec b                                         ; $6315: $05
    cp [hl]                                       ; $6316: $be
    ld d, a                                       ; $6317: $57
    adc l                                         ; $6318: $8d
    and h                                         ; $6319: $a4
    or $9b                                        ; $631a: $f6 $9b
    ld e, l                                       ; $631c: $5d
    ld e, c                                       ; $631d: $59
    ld bc, $3d9d                                  ; $631e: $01 $9d $3d
    ld bc, $da41                                  ; $6321: $01 $41 $da
    or h                                          ; $6324: $b4
    add hl, hl                                    ; $6325: $29
    cp h                                          ; $6326: $bc
    ld [bc], a                                    ; $6327: $02
    ld e, c                                       ; $6328: $59
    ld bc, $6d75                                  ; $6329: $01 $75 $6d
    inc [hl]                                      ; $632c: $34
    ei                                            ; $632d: $fb
    xor d                                         ; $632e: $aa
    ld a, d                                       ; $632f: $7a
    ld [c], a                                     ; $6330: $e2
    adc l                                         ; $6331: $8d
    jr nz, jr_045_62e3                            ; $6332: $20 $af

    call nc, Call_045_6f11                        ; $6334: $d4 $11 $6f
    db $e4                                        ; $6337: $e4
    scf                                           ; $6338: $37
    ld d, [hl]                                    ; $6339: $56
    xor l                                         ; $633a: $ad
    ld b, c                                       ; $633b: $41
    jp nc, Jump_045_5e3a                          ; $633c: $d2 $3a $5e

    or b                                          ; $633f: $b0
    ld [bc], a                                    ; $6340: $02
    ld e, c                                       ; $6341: $59
    ld bc, $ddad                                  ; $6342: $01 $ad $dd
    ld a, [hl]                                    ; $6345: $7e
    ld [hl], c                                    ; $6346: $71
    rst $30                                       ; $6347: $f7
    dec d                                         ; $6348: $15
    add h                                         ; $6349: $84
    daa                                           ; $634a: $27
    jp c, $9b8d                                   ; $634b: $da $8d $9b

    dec d                                         ; $634e: $15
    xor l                                         ; $634f: $ad
    cp a                                          ; $6350: $bf
    and h                                         ; $6351: $a4
    and e                                         ; $6352: $a3
    db $db                                        ; $6353: $db
    jr nz, jr_045_6306                            ; $6354: $20 $b0

    ld [bc], a                                    ; $6356: $02
    ld e, c                                       ; $6357: $59
    ld bc, $e31d                                  ; $6358: $01 $1d $e3
    xor e                                         ; $635b: $ab
    inc a                                         ; $635c: $3c
    ld d, l                                       ; $635d: $55
    scf                                           ; $635e: $37
    dec hl                                        ; $635f: $2b
    xor l                                         ; $6360: $ad
    ld a, [hl+]                                   ; $6361: $2a
    ld l, h                                       ; $6362: $6c
    and h                                         ; $6363: $a4
    ld e, l                                       ; $6364: $5d
    db $ec                                        ; $6365: $ec
    dec c                                         ; $6366: $0d
    and $15                                       ; $6367: $e6 $15
    xor l                                         ; $6369: $ad
    db $dd                                        ; $636a: $dd
    sbc $69                                       ; $636b: $de $69
    adc a                                         ; $636d: $8f
    ld d, $26                                     ; $636e: $16 $26
    or b                                          ; $6370: $b0
    ld [bc], a                                    ; $6371: $02
    db $ed                                        ; $6372: $ed
    ret nz                                        ; $6373: $c0

    ld d, b                                       ; $6374: $50
    ld de, $ef88                                  ; $6375: $11 $88 $ef
    ret nc                                        ; $6378: $d0

    adc l                                         ; $6379: $8d
    dec d                                         ; $637a: $15
    ld [hl], l                                    ; $637b: $75
    adc $75                                       ; $637c: $ce $75
    sbc e                                         ; $637e: $9b
    or $9e                                        ; $637f: $f6 $9e
    inc a                                         ; $6381: $3c
    ld e, b                                       ; $6382: $58
    ld e, c                                       ; $6383: $59
    ld bc, $0159                                  ; $6384: $01 $59 $01
    xor l                                         ; $6387: $ad
    rst $18                                       ; $6388: $df
    ld a, [c]                                     ; $6389: $f2
    add $57                                       ; $638a: $c6 $57
    ld b, c                                       ; $638c: $41
    ld a, b                                       ; $638d: $78
    ld [c], a                                     ; $638e: $e2
    reti                                          ; $638f: $d9


    pop hl                                        ; $6390: $e1
    ld a, [bc]                                    ; $6391: $0a
    xor l                                         ; $6392: $ad
    adc d                                         ; $6393: $8a
    ld [hl+], a                                   ; $6394: $22
    sub b                                         ; $6395: $90
    or $6f                                        ; $6396: $f6 $6f
    ld l, a                                       ; $6398: $6f
    ret c                                         ; $6399: $d8

    ld a, [bc]                                    ; $639a: $0a
    xor l                                         ; $639b: $ad
    cp a                                          ; $639c: $bf
    add hl, de                                    ; $639d: $19
    inc h                                         ; $639e: $24
    dec e                                         ; $639f: $1d
    ld d, e                                       ; $63a0: $53
    rst $10                                       ; $63a1: $d7
    dec l                                         ; $63a2: $2d
    ld [$edac], sp                                ; $63a3: $08 $ac $ed
    inc c                                         ; $63a6: $0c
    ld d, d                                       ; $63a7: $52
    add a                                         ; $63a8: $87
    adc d                                         ; $63a9: $8a
    xor h                                         ; $63aa: $ac
    db $ed                                        ; $63ab: $ed
    ld bc, $ff69                                  ; $63ac: $01 $69 $ff
    ld b, l                                       ; $63af: $45
    add c                                         ; $63b0: $81
    cp h                                          ; $63b1: $bc
    cp l                                          ; $63b2: $bd
    or c                                          ; $63b3: $b1
    ld [bc], a                                    ; $63b4: $02
    db $ed                                        ; $63b5: $ed
    ccf                                           ; $63b6: $3f
    ld [hl], e                                    ; $63b7: $73
    ld e, d                                       ; $63b8: $5a
    add e                                         ; $63b9: $83
    ld [$5798], sp                                ; $63ba: $08 $98 $57
    ld [hl], l                                    ; $63bd: $75
    pop bc                                        ; $63be: $c1
    adc b                                         ; $63bf: $88
    rst $28                                       ; $63c0: $ef
    ld d, a                                       ; $63c1: $57
    inc d                                         ; $63c2: $14
    cp e                                          ; $63c3: $bb
    xor h                                         ; $63c4: $ac
    ld [hl], l                                    ; $63c5: $75
    rrca                                          ; $63c6: $0f
    ld d, [hl]                                    ; $63c7: $56
    jp nc, $8bde                                  ; $63c8: $d2 $de $8b

    ld h, [hl]                                    ; $63cb: $66
    and a                                         ; $63cc: $a7
    inc [hl]                                      ; $63cd: $34
    xor h                                         ; $63ce: $ac
    dec e                                         ; $63cf: $1d
    sbc l                                         ; $63d0: $9d
    di                                            ; $63d1: $f3
    cp a                                          ; $63d2: $bf
    xor c                                         ; $63d3: $a9
    ld [hl], h                                    ; $63d4: $74
    halt                                          ; $63d5: $76
    ld e, e                                       ; $63d6: $5b

jr_045_63d7:
    pop bc                                        ; $63d7: $c1
    jp z, $b272                                   ; $63d8: $ca $72 $b2

    ld [bc], a                                    ; $63db: $02
    dec e                                         ; $63dc: $1d
    ld c, l                                       ; $63dd: $4d
    add hl, hl                                    ; $63de: $29
    ld l, c                                       ; $63df: $69
    ld a, l                                       ; $63e0: $7d
    xor b                                         ; $63e1: $a8
    or [hl]                                       ; $63e2: $b6
    cp a                                          ; $63e3: $bf
    xor h                                         ; $63e4: $ac
    cp [hl]                                       ; $63e5: $be
    ld c, h                                       ; $63e6: $4c
    db $d3                                        ; $63e7: $d3
    reti                                          ; $63e8: $d9


    db $ed                                        ; $63e9: $ed
    ld a, l                                       ; $63ea: $7d
    ld e, a                                       ; $63eb: $5f
    sub l                                         ; $63ec: $95
    dec d                                         ; $63ed: $15
    ld e, c                                       ; $63ee: $59
    ld bc, $c31d                                  ; $63ef: $01 $1d $c3
    ret                                           ; $63f2: $c9


    cp c                                          ; $63f3: $b9
    adc e                                         ; $63f4: $8b
    ld h, a                                       ; $63f5: $67
    add a                                         ; $63f6: $87
    dec hl                                        ; $63f7: $2b
    db $ed                                        ; $63f8: $ed
    inc c                                         ; $63f9: $0c
    jp nc, $bd96                                  ; $63fa: $d2 $96 $bd

    ldh a, [$0a]                                  ; $63fd: $f0 $0a
    db $ed                                        ; $63ff: $ed
    cp a                                          ; $6400: $bf
    add hl, sp                                    ; $6401: $39
    ld e, d                                       ; $6402: $5a
    ld d, d                                       ; $6403: $52
    sub a                                         ; $6404: $97
    ld a, [de]                                    ; $6405: $1a
    ld a, c                                       ; $6406: $79
    ld h, l                                       ; $6407: $65
    dec b                                         ; $6408: $05
    sbc l                                         ; $6409: $9d
    dec a                                         ; $640a: $3d
    ld bc, $5a41                                  ; $640b: $01 $41 $5a
    dec de                                        ; $640e: $1b
    ld [bc], a                                    ; $640f: $02
    ld c, $2b                                     ; $6410: $0e $2b
    xor l                                         ; $6412: $ad
    adc a                                         ; $6413: $8f
    ret z                                         ; $6414: $c8

    and a                                         ; $6415: $a7
    or $b9                                        ; $6416: $f6 $b9
    ld l, [hl]                                    ; $6418: $6e
    rrc d                                         ; $6419: $cb $0a
    ld e, c                                       ; $641b: $59
    ld bc, $6c6d                                  ; $641c: $01 $6d $6c
    jr c, jr_045_63d7                             ; $641f: $38 $b6

    sub c                                         ; $6421: $91
    ld [hl], e                                    ; $6422: $73
    ld l, c                                       ; $6423: $69
    push de                                       ; $6424: $d5
    cp b                                          ; $6425: $b8
    and h                                         ; $6426: $a4
    pop de                                        ; $6427: $d1
    ld [hl], h                                    ; $6428: $74
    ld [hl], h                                    ; $6429: $74
    and d                                         ; $642a: $a2
    reti                                          ; $642b: $d9


    inc de                                        ; $642c: $13
    rst $28                                       ; $642d: $ef
    dec hl                                        ; $642e: $2b
    ld [$ca5f], sp                                ; $642f: $08 $5f $ca
    ld [bc], a                                    ; $6432: $02
    ld [hl], a                                    ; $6433: $77
    cp a                                          ; $6434: $bf
    ld l, a                                       ; $6435: $6f
    dec b                                         ; $6436: $05
    xor l                                         ; $6437: $ad
    add hl, de                                    ; $6438: $19
    ld [hl], l                                    ; $6439: $75
    ld c, b                                       ; $643a: $48
    ei                                            ; $643b: $fb
    xor [hl]                                      ; $643c: $ae
    db $fd                                        ; $643d: $fd
    db $db                                        ; $643e: $db
    ei                                            ; $643f: $fb
    ld h, l                                       ; $6440: $65
    dec b                                         ; $6441: $05
    sbc [hl]                                      ; $6442: $9e
    ld a, [hl]                                    ; $6443: $7e
    ld [$8dba], a                                 ; $6444: $ea $ba $8d
    rst $20                                       ; $6447: $e7
    ld a, [hl]                                    ; $6448: $7e
    pop hl                                        ; $6449: $e1
    sub c                                         ; $644a: $91
    dec d                                         ; $644b: $15
    xor l                                         ; $644c: $ad
    cp a                                          ; $644d: $bf
    ld [$b481], sp                                ; $644e: $08 $81 $b4
    halt                                          ; $6451: $76
    cp e                                          ; $6452: $bb
    adc h                                         ; $6453: $8c
    xor h                                         ; $6454: $ac
    xor l                                         ; $6455: $ad
    ccf                                           ; $6456: $3f
    ld a, c                                       ; $6457: $79
    ld a, [hl+]                                   ; $6458: $2a
    xor l                                         ; $6459: $ad
    ld de, $c130                                  ; $645a: $11 $30 $c1
    ld a, [bc]                                    ; $645d: $0a
    ld l, l                                       ; $645e: $6d
    ld d, c                                       ; $645f: $51
    ld [bc], a                                    ; $6460: $02
    ld l, c                                       ; $6461: $69
    rst $38                                       ; $6462: $ff
    or $86                                        ; $6463: $f6 $86
    xor l                                         ; $6465: $ad
    ld l, l                                       ; $6466: $6d
    cp a                                          ; $6467: $bf
    call nz, $ffd7                                ; $6468: $c4 $d7 $ff
    db $dd                                        ; $646b: $dd
    xor l                                         ; $646c: $ad
    db $ed                                        ; $646d: $ed
    adc h                                         ; $646e: $8c
    ld e, a                                       ; $646f: $5f
    jp nc, Jump_045_77de                          ; $6470: $d2 $de $77

    ld h, a                                       ; $6473: $67
    db $10                                        ; $6474: $10
    add a                                         ; $6475: $87
    dec d                                         ; $6476: $15
    db $ed                                        ; $6477: $ed
    ld e, l                                       ; $6478: $5d
    ld sp, hl                                     ; $6479: $f9
    ld hl, sp-$0e                                 ; $647a: $f8 $f2
    ld [hl], h                                    ; $647c: $74
    adc e                                         ; $647d: $8b
    or d                                          ; $647e: $b2
    ld [bc], a                                    ; $647f: $02
    db $ed                                        ; $6480: $ed
    ld e, l                                       ; $6481: $5d
    ld sp, hl                                     ; $6482: $f9
    ld [hl], h                                    ; $6483: $74
    or $cc                                        ; $6484: $f6 $cc
    dec hl                                        ; $6486: $2b
    ld [hl], l                                    ; $6487: $75
    sbc a                                         ; $6488: $9f
    xor $b4                                       ; $6489: $ee $b4
    adc [hl]                                      ; $648b: $8e
    or $31                                        ; $648c: $f6 $31
    dec hl                                        ; $648e: $2b
    ld [hl], l                                    ; $648f: $75
    sbc a                                         ; $6490: $9f
    xor $b4                                       ; $6491: $ee $b4
    rst $38                                       ; $6493: $ff
    ld d, [hl]                                    ; $6494: $56
    inc d                                         ; $6495: $14
    ld h, h                                       ; $6496: $64
    dec b                                         ; $6497: $05
    cp [hl]                                       ; $6498: $be
    ld d, a                                       ; $6499: $57
    adc l                                         ; $649a: $8d
    and h                                         ; $649b: $a4
    xor [hl]                                      ; $649c: $ae
    rst $38                                       ; $649d: $ff
    sub [hl]                                      ; $649e: $96
    and l                                         ; $649f: $a5
    xor h                                         ; $64a0: $ac
    ld e, c                                       ; $64a1: $59
    ld bc, $0159                                  ; $64a2: $01 $59 $01
    ld e, c                                       ; $64a5: $59
    ld bc, $0159                                  ; $64a6: $01 $59 $01
    ld e, c                                       ; $64a9: $59
    ld bc, $0159                                  ; $64aa: $01 $59 $01
    ld e, c                                       ; $64ad: $59
    ld bc, $0159                                  ; $64ae: $01 $59 $01
    ld e, c                                       ; $64b1: $59
    ld bc, $0159                                  ; $64b2: $01 $59 $01
    ld e, c                                       ; $64b5: $59
    ld bc, $0159                                  ; $64b6: $01 $59 $01
    ld e, c                                       ; $64b9: $59
    ld bc, $0159                                  ; $64ba: $01 $59 $01
    ld e, c                                       ; $64bd: $59
    ld bc, $0159                                  ; $64be: $01 $59 $01
    ld e, c                                       ; $64c1: $59
    ld bc, $0159                                  ; $64c2: $01 $59 $01
    ld e, c                                       ; $64c5: $59
    ld bc, $0159                                  ; $64c6: $01 $59 $01
    ld e, c                                       ; $64c9: $59
    ld bc, $0159                                  ; $64ca: $01 $59 $01
    ld e, c                                       ; $64cd: $59
    ld bc, $0159                                  ; $64ce: $01 $59 $01
    ld e, c                                       ; $64d1: $59
    ld bc, $0159                                  ; $64d2: $01 $59 $01
    ld e, c                                       ; $64d5: $59
    ld bc, $0159                                  ; $64d6: $01 $59 $01
    ld e, c                                       ; $64d9: $59
    ld bc, $0159                                  ; $64da: $01 $59 $01
    ld e, c                                       ; $64dd: $59
    ld bc, $0159                                  ; $64de: $01 $59 $01
    ld e, c                                       ; $64e1: $59
    ld bc, $0159                                  ; $64e2: $01 $59 $01
    ld l, l                                       ; $64e5: $6d
    ld hl, sp+$4f                                 ; $64e6: $f8 $4f
    sub a                                         ; $64e8: $97
    ld [$34c3], a                                 ; $64e9: $ea $c3 $34
    ld [hl-], a                                   ; $64ec: $32
    sub d                                         ; $64ed: $92
    add d                                         ; $64ee: $82
    db $eb                                        ; $64ef: $eb
    ei                                            ; $64f0: $fb
    ld a, $b5                                     ; $64f1: $3e $b5

Jump_045_64f3:
    rst $18                                       ; $64f3: $df
    adc h                                         ; $64f4: $8c
    ld b, b                                       ; $64f5: $40
    ld [$330e], a                                 ; $64f6: $ea $0e $33
    xor h                                         ; $64f9: $ac
    sub $0a                                       ; $64fa: $d6 $0a
    xor l                                         ; $64fc: $ad
    pop bc                                        ; $64fd: $c1
    rst $18                                       ; $64fe: $df
    rst $30                                       ; $64ff: $f7
    db $fd                                        ; $6500: $fd
    ld a, [bc]                                    ; $6501: $0a
    cp [hl]                                       ; $6502: $be
    cp b                                          ; $6503: $b8
    inc l                                         ; $6504: $2c
    ld [hl], $8b                                  ; $6505: $36 $8b
    db $dd                                        ; $6507: $dd
    add h                                         ; $6508: $84
    xor c                                         ; $6509: $a9
    ld l, $24                                     ; $650a: $2e $24
    ld l, h                                       ; $650c: $6c
    ld l, d                                       ; $650d: $6a
    and l                                         ; $650e: $a5
    adc l                                         ; $650f: $8d
    inc d                                         ; $6510: $14
    and h                                         ; $6511: $a4
    ldh [$e2], a                                  ; $6512: $e0 $e2
    ld b, e                                       ; $6514: $43
    ld c, a                                       ; $6515: $4f
    sub a                                         ; $6516: $97
    ld [hl], d                                    ; $6517: $72
    sbc d                                         ; $6518: $9a
    sbc h                                         ; $6519: $9c
    rst $30                                       ; $651a: $f7
    call c, $f9c7                                 ; $651b: $dc $c7 $f9
    ld de, $c9ef                                  ; $651e: $11 $ef $c9
    rst $28                                       ; $6521: $ef
    ld a, [bc]                                    ; $6522: $0a
    jp nz, $e148                                  ; $6523: $c2 $48 $e1

    cp a                                          ; $6526: $bf
    cp h                                          ; $6527: $bc
    xor b                                         ; $6528: $a8
    rla                                           ; $6529: $17
    dec [hl]                                      ; $652a: $35
    ld sp, hl                                     ; $652b: $f9
    call nc, $ad1e                                ; $652c: $d4 $1e $ad
    cp e                                          ; $652f: $bb
    scf                                           ; $6530: $37
    ld l, $35                                     ; $6531: $2e $35
    ld d, a                                       ; $6533: $57
    cp [hl]                                       ; $6534: $be
    xor b                                         ; $6535: $a8
    db $f4                                        ; $6536: $f4
    or $71                                        ; $6537: $f6 $71
    ld a, [hl]                                    ; $6539: $7e
    add h                                         ; $653a: $84
    add hl, hl                                    ; $653b: $29
    di                                            ; $653c: $f3
    and l                                         ; $653d: $a5
    db $fc                                        ; $653e: $fc
    or d                                          ; $653f: $b2
    call c, $64cb                                 ; $6540: $dc $cb $64
    inc [hl]                                      ; $6543: $34
    cp c                                          ; $6544: $b9
    cp b                                          ; $6545: $b8
    add hl, hl                                    ; $6546: $29
    sbc a                                         ; $6547: $9f
    ld b, d                                       ; $6548: $42
    and e                                         ; $6549: $a3
    ld l, $15                                     ; $654a: $2e $15
    ld a, [$5fbe]                                 ; $654c: $fa $be $5f
    ld bc, $6fbe                                  ; $654f: $01 $be $6f
    push af                                       ; $6552: $f5
    call nz, $c2fb                                ; $6553: $c4 $fb $c2
    ld e, a                                       ; $6556: $5f
    ld hl, sp-$24                                 ; $6557: $f8 $dc
    call nc, $ed4c                                ; $6559: $d4 $4c $ed
    scf                                           ; $655c: $37
    inc hl                                        ; $655d: $23
    sub b                                         ; $655e: $90
    cp d                                          ; $655f: $ba
    jp $cb0c                                      ; $6560: $c3 $0c $cb


    and a                                         ; $6563: $a7
    or $68                                        ; $6564: $f6 $68
    db $dd                                        ; $6566: $dd
    cp l                                          ; $6567: $bd
    ld [hl], c                                    ; $6568: $71
    xor c                                         ; $6569: $a9
    add hl, de                                    ; $656a: $19
    ld c, a                                       ; $656b: $4f
    adc a                                         ; $656c: $8f
    ld a, [de]                                    ; $656d: $1a
    pop af                                        ; $656e: $f1
    and c                                         ; $656f: $a1
    cp a                                          ; $6570: $bf
    db $dd                                        ; $6571: $dd
    sub h                                         ; $6572: $94
    adc a                                         ; $6573: $8f
    di                                            ; $6574: $f3
    inc hl                                        ; $6575: $23
    res 2, h                                      ; $6576: $cb $94
    ld [hl-], a                                   ; $6578: $32
    pop af                                        ; $6579: $f1
    cp [hl]                                       ; $657a: $be
    ld hl, $2c0b                                  ; $657b: $21 $0b $2c
    adc h                                         ; $657e: $8c
    ld e, d                                       ; $657f: $5a
    xor c                                         ; $6580: $a9
    db $fd                                        ; $6581: $fd
    rla                                           ; $6582: $17
    db $fd                                        ; $6583: $fd
    sub l                                         ; $6584: $95
    pop de                                        ; $6585: $d1
    ld h, h                                       ; $6586: $64
    and d                                         ; $6587: $a2
    ld l, $3e                                     ; $6588: $2e $3e
    db $f4                                        ; $658a: $f4
    or a                                          ; $658b: $b7
    di                                            ; $658c: $f3
    inc hl                                        ; $658d: $23
    sbc $d3                                       ; $658e: $de $d3
    xor b                                         ; $6590: $a8
    sbc l                                         ; $6591: $9d
    ld a, h                                       ; $6592: $7c
    call nc, $97c5                                ; $6593: $d4 $c5 $97
    dec c                                         ; $6596: $0d
    sbc d                                         ; $6597: $9a
    rra                                           ; $6598: $1f
    ld b, c                                       ; $6599: $41
    xor d                                         ; $659a: $aa
    rst $10                                       ; $659b: $d7
    db $fc                                        ; $659c: $fc
    rla                                           ; $659d: $17
    rst $28                                       ; $659e: $ef
    ld d, a                                       ; $659f: $57
    ld d, e                                       ; $65a0: $53
    xor [hl]                                      ; $65a1: $ae
    sub $0a                                       ; $65a2: $d6 $0a
    ld [hl], l                                    ; $65a4: $75
    ld b, [hl]                                    ; $65a5: $46
    ld d, d                                       ; $65a6: $52
    ld a, [hl]                                    ; $65a7: $7e
    ld sp, $df5c                                  ; $65a8: $31 $5c $df
    rst $30                                       ; $65ab: $f7
    ld [hl], c                                    ; $65ac: $71
    ld d, e                                       ; $65ad: $53
    ld a, $65                                     ; $65ae: $3e $65
    ld h, h                                       ; $65b0: $64
    ld l, d                                       ; $65b1: $6a
    xor l                                         ; $65b2: $ad
    dec e                                         ; $65b3: $1d
    ld hl, sp+$75                                 ; $65b4: $f8 $75
    add hl, hl                                    ; $65b6: $29
    inc hl                                        ; $65b7: $23
    sub e                                         ; $65b8: $93
    db $db                                        ; $65b9: $db
    xor c                                         ; $65ba: $a9
    cp [hl]                                       ; $65bb: $be
    sub h                                         ; $65bc: $94
    xor e                                         ; $65bd: $ab
    and [hl]                                      ; $65be: $a6
    ld h, [hl]                                    ; $65bf: $66
    ld a, h                                       ; $65c0: $7c
    cpl                                           ; $65c1: $2f
    ld l, h                                       ; $65c2: $6c
    rst $08                                       ; $65c3: $cf
    db $fc                                        ; $65c4: $fc
    ld d, c                                       ; $65c5: $51
    rla                                           ; $65c6: $17
    rst $28                                       ; $65c7: $ef
    ld l, c                                       ; $65c8: $69
    call nc, Call_000_104e                        ; $65c9: $d4 $4e $10
    rst $20                                       ; $65cc: $e7
    ld b, a                                       ; $65cd: $47
    ld d, $3a                                     ; $65ce: $16 $3a
    rla                                           ; $65d0: $17
    scf                                           ; $65d1: $37
    ld a, e                                       ; $65d2: $7b
    add e                                         ; $65d3: $83
    ld a, b                                       ; $65d4: $78
    inc hl                                        ; $65d5: $23
    ld l, a                                       ; $65d6: $6f
    ld [$dc52], sp                                ; $65d7: $08 $52 $dc
    ld d, a                                       ; $65da: $57
    ld a, [$437b]                                 ; $65db: $fa $7b $43
    sbc a                                         ; $65de: $9f
    ld [hl], $b2                                  ; $65df: $36 $b2
    ret nc                                        ; $65e1: $d0

    cp c                                          ; $65e2: $b9
    cp h                                          ; $65e3: $bc
    jr c, jr_045_6625                             ; $65e4: $38 $3f

    ld [c], a                                     ; $65e6: $e2
    inc c                                         ; $65e7: $0c
    ld l, a                                       ; $65e8: $6f
    adc b                                         ; $65e9: $88
    jp nz, $88de                                  ; $65ea: $c2 $de $88

    sbc e                                         ; $65ed: $9b
    ld c, d                                       ; $65ee: $4a
    ld a, a                                       ; $65ef: $7f
    ld a, [c]                                     ; $65f0: $f2
    call nz, $b91b                                ; $65f1: $c4 $1b $b9
    inc l                                         ; $65f4: $2c
    or b                                          ; $65f5: $b0
    inc l                                         ; $65f6: $2c
    ld [hl], $8a                                  ; $65f7: $36 $8a
    sbc d                                         ; $65f9: $9a
    ld hl, $7af0                                  ; $65fa: $21 $f0 $7a
    pop bc                                        ; $65fd: $c1
    ld a, h                                       ; $65fe: $7c
    xor c                                         ; $65ff: $a9
    ld e, [hl]                                    ; $6600: $5e
    dec sp                                        ; $6601: $3b
    ld [hl], a                                    ; $6602: $77
    dec [hl]                                      ; $6603: $35
    ld d, a                                       ; $6604: $57
    db $ed                                        ; $6605: $ed
    ld b, e                                       ; $6606: $43
    db $db                                        ; $6607: $db
    scf                                           ; $6608: $37
    ld [hl], c                                    ; $6609: $71
    ld a, [hl]                                    ; $660a: $7e
    ld b, h                                       ; $660b: $44
    cp e                                          ; $660c: $bb
    ld [hl], c                                    ; $660d: $71
    ld l, a                                       ; $660e: $6f
    ret z                                         ; $660f: $c8

    add a                                         ; $6610: $87
    ld c, d                                       ; $6611: $4a
    jp z, $e3ec                                   ; $6612: $ca $ec $e3

    or a                                          ; $6615: $b7
    sbc e                                         ; $6616: $9b

jr_045_6617:
    cp [hl]                                       ; $6617: $be
    rst $28                                       ; $6618: $ef
    db $e3                                        ; $6619: $e3
    and [hl]                                      ; $661a: $a6
    ld b, d                                       ; $661b: $42
    ld h, b                                       ; $661c: $60
    sub e                                         ; $661d: $93
    rst $10                                       ; $661e: $d7
    rra                                           ; $661f: $1f
    db $d3                                        ; $6620: $d3
    rst $20                                       ; $6621: $e7
    ret                                           ; $6622: $c9


    rst $00                                       ; $6623: $c7
    ei                                            ; $6624: $fb

jr_045_6625:
    add [hl]                                      ; $6625: $86
    call c, $2bf4                                 ; $6626: $dc $f4 $2b
    or l                                          ; $6629: $b5
    daa                                           ; $662a: $27
    push de                                       ; $662b: $d5
    ld l, h                                       ; $662c: $6c
    cp [hl]                                       ; $662d: $be
    ld d, d                                       ; $662e: $52
    xor [hl]                                      ; $662f: $ae
    ld b, d                                       ; $6630: $42
    cp h                                          ; $6631: $bc
    and a                                         ; $6632: $a7
    ld d, c                                       ; $6633: $51
    dec sp                                        ; $6634: $3b
    ld b, c                                       ; $6635: $41
    call nc, $cb2c                                ; $6636: $d4 $2c $cb
    and c                                         ; $6639: $a1
    adc a                                         ; $663a: $8f
    rst $28                                       ; $663b: $ef
    dec de                                        ; $663c: $1b
    ld l, $23                                     ; $663d: $2e $23
    ld h, e                                       ; $663f: $63
    rst $08                                       ; $6640: $cf
    sub e                                         ; $6641: $93
    add d                                         ; $6642: $82
    ld [$cef2], sp                                ; $6643: $08 $f2 $ce
    add c                                         ; $6646: $81
    ld sp, hl                                     ; $6647: $f9
    ld c, e                                       ; $6648: $4b
    cp c                                          ; $6649: $b9
    ld hl, sp-$30                                 ; $664a: $f8 $d0
    rst $18                                       ; $664c: $df
    adc [hl]                                      ; $664d: $8e
    jp z, $a9f7                                   ; $664e: $ca $f7 $a9

    ld c, e                                       ; $6651: $4b
    rst $20                                       ; $6652: $e7
    ld [c], a                                     ; $6653: $e2
    ld h, [hl]                                    ; $6654: $66
    ld l, a                                       ; $6655: $6f
    db $10                                        ; $6656: $10
    ld l, a                                       ; $6657: $6f
    db $e4                                        ; $6658: $e4
    ld c, l                                       ; $6659: $4d
    db $10                                        ; $665a: $10
    rra                                           ; $665b: $1f
    ld a, [$36cc]                                 ; $665c: $fa $cc $36
    xor c                                         ; $665f: $a9
    sbc [hl]                                      ; $6660: $9e
    ld c, b                                       ; $6661: $48
    cp h                                          ; $6662: $bc
    xor b                                         ; $6663: $a8
    inc hl                                        ; $6664: $23
    ld h, c                                       ; $6665: $61
    push hl                                       ; $6666: $e5
    ld a, [$7c74]                                 ; $6667: $fa $74 $7c
    sub b                                         ; $666a: $90
    db $d3                                        ; $666b: $d3
    and l                                         ; $666c: $a5
    jr c, jr_045_66d7                             ; $666d: $38 $68

    ei                                            ; $666f: $fb
    ld [c], a                                     ; $6670: $e2
    ld b, e                                       ; $6671: $43
    or c                                          ; $6672: $b1
    rst $30                                       ; $6673: $f7
    call nz, $c48d                                ; $6674: $c4 $8d $c4
    pop de                                        ; $6677: $d1
    dec bc                                        ; $6678: $0b
    ld c, c                                       ; $6679: $49
    rst $20                                       ; $667a: $e7
    ld [hl], d                                    ; $667b: $72
    ld [hl], d                                    ; $667c: $72
    call nz, $437b                                ; $667d: $c4 $7b $43
    cp a                                          ; $6680: $bf
    ld [bc], a                                    ; $6681: $02
    dec e                                         ; $6682: $1d
    ld d, d                                       ; $6683: $52
    inc d                                         ; $6684: $14
    sbc [hl]                                      ; $6685: $9e
    ld d, h                                       ; $6686: $54
    ld c, a                                       ; $6687: $4f
    inc h                                         ; $6688: $24
    ld c, [hl]                                    ; $6689: $4e
    ld a, [bc]                                    ; $668a: $0a
    ld a, [hl+]                                   ; $668b: $2a
    cp l                                          ; $668c: $bd
    ld a, l                                       ; $668d: $7d
    ld c, [hl]                                    ; $668e: $4e
    jr jr_045_6617                                ; $668f: $18 $86

    ld d, d                                       ; $6691: $52

jr_045_6692:
    ld e, [hl]                                    ; $6692: $5e
    jr jr_045_6692                                ; $6693: $18 $fd

    ld a, [bc]                                    ; $6695: $0a
    sbc [hl]                                      ; $6696: $9e
    sub a                                         ; $6697: $97
    ld [hl-], a                                   ; $6698: $32
    ld [hl-], a                                   ; $6699: $32
    ld sp, hl                                     ; $669a: $f9
    call $2886                                    ; $669b: $cd $86 $28
    adc d                                         ; $669e: $8a
    cp b                                          ; $669f: $b8
    add hl, hl                                    ; $66a0: $29
    adc b                                         ; $66a1: $88
    cp d                                          ; $66a2: $ba
    jr c, jr_045_671f                             ; $66a3: $38 $7a

    ld a, c                                       ; $66a5: $79
    jp nc, $a2fe                                  ; $66a6: $d2 $fe $a2

    cp a                                          ; $66a9: $bf
    ld [hl-], a                                   ; $66aa: $32
    sbc d                                         ; $66ab: $9a
    ld c, h                                       ; $66ac: $4c
    sbc a                                         ; $66ad: $9f
    ld c, [hl]                                    ; $66ae: $4e
    db $e4                                        ; $66af: $e4
    ld d, e                                       ; $66b0: $53
    inc hl                                        ; $66b1: $23
    or a                                          ; $66b2: $b7
    db $d3                                        ; $66b3: $d3
    and $ec                                       ; $66b4: $e6 $ec
    sbc e                                         ; $66b6: $9b
    or h                                          ; $66b7: $b4
    rst $38                                       ; $66b8: $ff
    jp c, $a2e9                                   ; $66b9: $da $e9 $a2

    add [hl]                                      ; $66bc: $86
    ld b, h                                       ; $66bd: $44
    jp z, $4615                                   ; $66be: $ca $15 $46

    dec b                                         ; $66c1: $05
    ei                                            ; $66c2: $fb
    set 7, [hl]                                   ; $66c3: $cb $fe
    jr nc, @-$01                                  ; $66c5: $30 $fd

    cp b                                          ; $66c7: $b8
    reti                                          ; $66c8: $d9


    dec de                                        ; $66c9: $1b
    call nz, Call_045_411b                        ; $66ca: $c4 $1b $41
    call nc, Call_045_7bc5                        ; $66cd: $d4 $c5 $7b
    ld a, [de]                                    ; $66d0: $1a
    or l                                          ; $66d1: $b5
    inc de                                        ; $66d2: $13
    db $f4                                        ; $66d3: $f4
    dec hl                                        ; $66d4: $2b
    db $ed                                        ; $66d5: $ed

jr_045_66d6:
    ld a, c                                       ; $66d6: $79

jr_045_66d7:
    db $fc                                        ; $66d7: $fc
    ld h, [hl]                                    ; $66d8: $66
    ei                                            ; $66d9: $fb
    call nc, $edc8                                ; $66da: $d4 $c8 $ed
    or h                                          ; $66dd: $b4
    add hl, sp                                    ; $66de: $39
    ei                                            ; $66df: $fb
    ld h, $1d                                     ; $66e0: $26 $1d
    db $db                                        ; $66e2: $db
    dec l                                         ; $66e3: $2d
    ei                                            ; $66e4: $fb
    inc e                                         ; $66e5: $1c
    dec l                                         ; $66e6: $2d
    ld a, l                                       ; $66e7: $7d
    ld a, [hl-]                                   ; $66e8: $3a
    and h                                         ; $66e9: $a4
    rla                                           ; $66ea: $17
    ld a, e                                       ; $66eb: $7b
    rst $20                                       ; $66ec: $e7
    ld b, [hl]                                    ; $66ed: $46
    db $db                                        ; $66ee: $db
    sub a                                         ; $66ef: $97
    adc l                                         ; $66f0: $8d
    cp b                                          ; $66f1: $b8
    xor c                                         ; $66f2: $a9
    db $f4                                        ; $66f3: $f4
    daa                                           ; $66f4: $27
    ld c, a                                       ; $66f5: $4f
    cp h                                          ; $66f6: $bc
    sub c                                         ; $66f7: $91
    adc e                                         ; $66f8: $8b
    cp d                                          ; $66f9: $ba
    ld a, b                                       ; $66fa: $78
    ld c, a                                       ; $66fb: $4f
    and e                                         ; $66fc: $a3
    halt                                          ; $66fd: $76
    add d                                         ; $66fe: $82
    ld a, $1d                                     ; $66ff: $3e $1d
    inc hl                                        ; $6701: $23
    add d                                         ; $6702: $82
    ld d, h                                       ; $6703: $54
    ld h, b                                       ; $6704: $60
    add [hl]                                      ; $6705: $86
    push de                                       ; $6706: $d5
    rra                                           ; $6707: $1f
    dec b                                         ; $6708: $05
    ld h, c                                       ; $6709: $61
    sbc e                                         ; $670a: $9b
    ld d, b                                       ; $670b: $50
    ret                                           ; $670c: $c9


    ld a, [c]                                     ; $670d: $f2
    scf                                           ; $670e: $37
    pop de                                        ; $670f: $d1
    db $ec                                        ; $6710: $ec
    sbc c                                         ; $6711: $99
    ld e, $7f                                     ; $6712: $1e $7f
    dec b                                         ; $6714: $05
    ld h, c                                       ; $6715: $61
    call nc, $015c                                ; $6716: $d4 $5c $01
    ld l, l                                       ; $6719: $6d
    reti                                          ; $671a: $d9


    inc de                                        ; $671b: $13
    rrca                                          ; $671c: $0f
    cp d                                          ; $671d: $ba
    inc d                                         ; $671e: $14

jr_045_671f:
    ld e, h                                       ; $671f: $5c
    xor d                                         ; $6720: $aa
    reti                                          ; $6721: $d9


    inc a                                         ; $6722: $3c
    pop de                                        ; $6723: $d1
    jr nz, jr_045_66d6                            ; $6724: $20 $b0

    add hl, hl                                    ; $6726: $29
    db $d3                                        ; $6727: $d3
    xor a                                         ; $6728: $af
    dec l                                         ; $6729: $2d
    and a                                         ; $672a: $a7
    ldh a, [$f3]                                  ; $672b: $f0 $f3
    add h                                         ; $672d: $84
    ld c, d                                       ; $672e: $4a
    sub [hl]                                      ; $672f: $96
    ld a, e                                       ; $6730: $7b
    rlca                                          ; $6731: $07
    ld b, e                                       ; $6732: $43
    sbc a                                         ; $6733: $9f
    ld a, [hl-]                                   ; $6734: $3a

jr_045_6735:
    inc hl                                        ; $6735: $23
    ld hl, $26a1                                  ; $6736: $21 $a1 $26
    db $db                                        ; $6739: $db
    ld h, e                                       ; $673a: $63
    db $ec                                        ; $673b: $ec
    and e                                         ; $673c: $a3
    ld l, $f6                                     ; $673d: $2e $f6
    adc $8d                                       ; $673f: $ce $8d
    ldh a, [rNR31]                                ; $6741: $f0 $1b
    ld a, [c]                                     ; $6743: $f2
    sub a                                         ; $6744: $97
    ld [$f970], a                                 ; $6745: $ea $70 $f9
    ld [$c5dc], a                                 ; $6748: $ea $dc $c5
    ld sp, hl                                     ; $674b: $f9
    ld de, $e4ff                                  ; $674c: $11 $ff $e4
    adc a                                         ; $674f: $8f
    ld a, [c]                                     ; $6750: $f2
    di                                            ; $6751: $f3
    and h                                         ; $6752: $a4
    or $9b                                        ; $6753: $f6 $9b
    ld de, $dd48                                  ; $6755: $11 $48 $dd
    ld h, c                                       ; $6758: $61
    add [hl]                                      ; $6759: $86
    push de                                       ; $675a: $d5
    ld e, h                                       ; $675b: $5c
    ld bc, $0bbe                                  ; $675c: $01 $be $0b
    ld l, h                                       ; $675f: $6c
    ld [c], a                                     ; $6760: $e2
    db $fc                                        ; $6761: $fc
    ret z                                         ; $6762: $c8

    ld b, [hl]                                    ; $6763: $46
    cp h                                          ; $6764: $bc
    and a                                         ; $6765: $a7
    ld d, c                                       ; $6766: $51
    dec sp                                        ; $6767: $3b
    ld b, c                                       ; $6768: $41
    ld hl, sp-$4e                                 ; $6769: $f8 $b2
    call c, Call_045_773b                         ; $676b: $dc $3b $77
    cpl                                           ; $676e: $2f
    ld d, e                                       ; $676f: $53
    inc sp                                        ; $6770: $33
    sbc [hl]                                      ; $6771: $9e
    rla                                           ; $6772: $17
    ld [de], a                                    ; $6773: $12
    ld [$9abe], a                                 ; $6774: $ea $be $9a
    ld a, h                                       ; $6777: $7c
    ld l, d                                       ; $6778: $6a
    adc a                                         ; $6779: $8f
    sub $dd                                       ; $677a: $d6 $dd
    dec de                                        ; $677c: $1b
    sub a                                         ; $677d: $97
    sbc d                                         ; $677e: $9a
    dec hl                                        ; $677f: $2b
    dec l                                         ; $6780: $2d
    and a                                         ; $6781: $a7
    add d                                         ; $6782: $82
    or [hl]                                       ; $6783: $b6
    ld l, a                                       ; $6784: $6f
    ld [c], a                                     ; $6785: $e2
    db $fc                                        ; $6786: $fc
    adc b                                         ; $6787: $88
    adc h                                         ; $6788: $8c
    and h                                         ; $6789: $a4
    db $fc                                        ; $678a: $fc
    sub $3e                                       ; $678b: $d6 $3e
    ei                                            ; $678d: $fb
    ld c, e                                       ; $678e: $4b
    ld l, c                                       ; $678f: $69
    and b                                         ; $6790: $a0
    ld c, a                                       ; $6791: $4f
    ld l, l                                       ; $6792: $6d
    ld e, b                                       ; $6793: $58
    ld [hl], l                                    ; $6794: $75
    inc hl                                        ; $6795: $23
    ld c, b                                       ; $6796: $48
    ld [hl], l                                    ; $6797: $75
    add hl, hl                                    ; $6798: $29
    sbc d                                         ; $6799: $9a
    sbc l                                         ; $679a: $9d
    add d                                         ; $679b: $82
    push de                                       ; $679c: $d5
    db $d3                                        ; $679d: $d3
    xor a                                         ; $679e: $af
    ld e, $9d                                     ; $679f: $1e $9d
    ld b, d                                       ; $67a1: $42
    call nc, Call_000_357d                        ; $67a2: $d4 $7d $35
    add hl, de                                    ; $67a5: $19
    ld c, l                                       ; $67a6: $4d
    inc bc                                        ; $67a7: $03
    di                                            ; $67a8: $f3
    push hl                                       ; $67a9: $e5
    or e                                          ; $67aa: $b3
    jr jr_045_6735                                ; $67ab: $18 $88

    call nz, $bd8b                                ; $67ad: $c4 $8b $bd
    halt                                          ; $67b0: $76
    inc hl                                        ; $67b1: $23
    jr nz, jr_045_681b                            ; $67b2: $20 $67

    ld e, a                                       ; $67b4: $5f
    ld d, $43                                     ; $67b5: $16 $43
    add hl, hl                                    ; $67b7: $29
    sub e                                         ; $67b8: $93
    db $db                                        ; $67b9: $db
    pop af                                        ; $67ba: $f1
    call c, $1f54                                 ; $67bb: $dc $54 $1f
    add l                                         ; $67be: $85
    adc e                                         ; $67bf: $8b
    rst $20                                       ; $67c0: $e7
    db $ec                                        ; $67c1: $ec
    dec c                                         ; $67c2: $0d
    ld [c], a                                     ; $67c3: $e2
    adc l                                         ; $67c4: $8d
    ld e, h                                       ; $67c5: $5c
    pop hl                                        ; $67c6: $e1
    db $eb                                        ; $67c7: $eb
    db $d3                                        ; $67c8: $d3
    ld [$d8b2], a                                 ; $67c9: $ea $b2 $d8
    ld a, b                                       ; $67cc: $78
    adc a                                         ; $67cd: $8f
    ld sp, hl                                     ; $67ce: $f9
    add hl, de                                    ; $67cf: $19
    add d                                         ; $67d0: $82
    ld a, b                                       ; $67d1: $78
    ld c, a                                       ; $67d2: $4f
    sbc h                                         ; $67d3: $9c
    cp a                                          ; $67d4: $bf
    sbc $94                                       ; $67d5: $de $94
    inc bc                                        ; $67d7: $03
    inc hl                                        ; $67d8: $23
    daa                                           ; $67d9: $27
    ld h, c                                       ; $67da: $61
    ld d, h                                       ; $67db: $54
    set 6, h                                      ; $67dc: $cb $f4
    ld l, c                                       ; $67de: $69
    di                                            ; $67df: $f3
    xor h                                         ; $67e0: $ac
    ld a, d                                       ; $67e1: $7a
    sbc [hl]                                      ; $67e2: $9e
    ld d, $d3                                     ; $67e3: $16 $d3
    and [hl]                                      ; $67e5: $a6
    ld b, c                                       ; $67e6: $41
    push hl                                       ; $67e7: $e5
    ld b, l                                       ; $67e8: $45
    and l                                         ; $67e9: $a5
    dec l                                         ; $67ea: $2d
    adc h                                         ; $67eb: $8c
    ld l, c                                       ; $67ec: $69
    ldh a, [$58]                                  ; $67ed: $f0 $58
    ld bc, $0ebe                                  ; $67ef: $01 $be $0e
    jp c, $dcbe                                   ; $67f2: $da $be $dc

    ld c, $d3                                     ; $67f5: $0e $d3
    ld c, c                                       ; $67f7: $49
    push af                                       ; $67f8: $f5
    ld b, h                                       ; $67f9: $44
    ld [c], a                                     ; $67fa: $e2
    db $f4                                        ; $67fb: $f4
    dec hl                                        ; $67fc: $2b
    db $ed                                        ; $67fd: $ed
    ccf                                           ; $67fe: $3f
    sub c                                         ; $67ff: $91
    jr c, @-$0d                                   ; $6800: $38 $f1

    ld l, b                                       ; $6802: $68
    add a                                         ; $6803: $87
    ld d, $a6                                     ; $6804: $16 $a6
    dec h                                         ; $6806: $25

jr_045_6807:
    ld [hl], l                                    ; $6807: $75
    ld l, a                                       ; $6808: $6f
    rst $28                                       ; $6809: $ef
    db $eb                                        ; $680a: $eb
    xor $5c                                       ; $680b: $ee $5c
    or a                                          ; $680d: $b7
    dec de                                        ; $680e: $1b
    ld e, $2b                                     ; $680f: $1e $2b
    db $ed                                        ; $6811: $ed
    ccf                                           ; $6812: $3f
    sub c                                         ; $6813: $91
    jr c, jr_045_6807                             ; $6814: $38 $f1

    ld l, b                                       ; $6816: $68
    adc e                                         ; $6817: $8b
    xor $7d                                       ; $6818: $ee $7d
    inc h                                         ; $681a: $24

jr_045_681b:
    inc l                                         ; $681b: $2c
    ld [hl], l                                    ; $681c: $75

jr_045_681d:
    and a                                         ; $681d: $a7
    ld e, e                                       ; $681e: $5b
    add sp, $09                                   ; $681f: $e8 $09
    ld a, b                                       ; $6821: $78

jr_045_6822:
    xor h                                         ; $6822: $ac
    db $ed                                        ; $6823: $ed
    ccf                                           ; $6824: $3f
    sub c                                         ; $6825: $91
    jr c, @-$0d                                   ; $6826: $38 $f1

    ld l, b                                       ; $6828: $68
    res 4, b                                      ; $6829: $cb $a0
    adc l                                         ; $682b: $8d

jr_045_682c:
    ld de, $edc8                                  ; $682c: $11 $c8 $ed
    ld [hl], h                                    ; $682f: $74
    ld a, d                                       ; $6830: $7a
    push bc                                       ; $6831: $c5
    sbc l                                         ; $6832: $9d
    ld a, [de]                                    ; $6833: $1a
    adc a                                         ; $6834: $8f
    dec d                                         ; $6835: $15
    db $ed                                        ; $6836: $ed
    ccf                                           ; $6837: $3f
    sub c                                         ; $6838: $91
    jr c, jr_045_682c                             ; $6839: $38 $f1

    ld l, b                                       ; $683b: $68
    rra                                           ; $683c: $1f
    sub $1d                                       ; $683d: $d6 $1d
    ld bc, $edc9                                  ; $683f: $01 $c9 $ed
    or h                                          ; $6842: $b4
    rst $38                                       ; $6843: $ff
    sbc e                                         ; $6844: $9b
    ld a, h                                       ; $6845: $7c
    db $ed                                        ; $6846: $ed
    add $63                                       ; $6847: $c6 $63
    dec b                                         ; $6849: $05
    cp [hl]                                       ; $684a: $be
    ld a, a                                       ; $684b: $7f
    ld d, c                                       ; $684c: $51
    ld h, a                                       ; $684d: $67
    push de                                       ; $684e: $d5
    push bc                                       ; $684f: $c5
    add a                                         ; $6850: $87
    cp $76                                        ; $6851: $fe $76
    ld d, e                                       ; $6853: $53
    ld a, $9f                                     ; $6854: $3e $9f
    push bc                                       ; $6856: $c5
    ld h, [hl]                                    ; $6857: $66

jr_045_6858:
    sbc c                                         ; $6858: $99
    ld [hl], d                                    ; $6859: $72
    inc a                                         ; $685a: $3c
    ld d, c                                       ; $685b: $51
    ret c                                         ; $685c: $d8

    dec de                                        ; $685d: $1b
    ld hl, $08be                                  ; $685e: $21 $be $08
    and d                                         ; $6861: $a2
    ld l, $05                                     ; $6862: $2e $05
    or [hl]                                       ; $6864: $b6
    ld b, b                                       ; $6865: $40
    jr jr_045_681d                                ; $6866: $18 $b5

    ld d, [hl]                                    ; $6868: $56
    xor l                                         ; $6869: $ad
    pop bc                                        ; $686a: $c1
    xor a                                         ; $686b: $af
    set 7, [hl]                                   ; $686c: $cb $fe
    inc l                                         ; $686e: $2c
    ld [hl], $5e                                  ; $686f: $36 $5e
    sub h                                         ; $6871: $94
    ld [hl-], a                                   ; $6872: $32
    add [hl]                                      ; $6873: $86
    ld d, d                                       ; $6874: $52
    ld a, $be                                     ; $6875: $3e $be
    adc e                                         ; $6877: $8b
    dec e                                         ; $6878: $1d
    ld b, e                                       ; $6879: $43
    rla                                           ; $687a: $17
    ld a, [c]                                     ; $687b: $f2
    call c, $e4c9                                 ; $687c: $dc $c9 $e4
    rst $30                                       ; $687f: $f7
    cp $14                                        ; $6880: $fe $14
    sbc b                                         ; $6882: $98
    cp l                                          ; $6883: $bd
    ld l, $85                                     ; $6884: $2e $85
    sbc a                                         ; $6886: $9f
    db $fc                                        ; $6887: $fc
    jr c, jr_045_6822                             ; $6888: $38 $98

    ld a, e                                       ; $688a: $7b
    ld d, c                                       ; $688b: $51
    inc de                                        ; $688c: $13
    ld [hl], l                                    ; $688d: $75
    ld h, l                                       ; $688e: $65
    add c                                         ; $688f: $81
    dec a                                         ; $6890: $3d
    ld a, a                                       ; $6891: $7f
    dec b                                         ; $6892: $05
    ld h, c                                       ; $6893: $61
    ld b, h                                       ; $6894: $44
    ld e, l                                       ; $6895: $5d
    ld a, [hl]                                    ; $6896: $7e
    rst $28                                       ; $6897: $ef
    ld de, $797e                                  ; $6898: $11 $7e $79
    ld b, e                                       ; $689b: $43
    ld a, h                                       ; $689c: $7c
    add sp, $6f                                   ; $689d: $e8 $6f
    rst $20                                       ; $689f: $e7

jr_045_68a0:
    ld b, a                                       ; $68a0: $47
    ld a, [bc]                                    ; $68a1: $0a
    ld l, h                                       ; $68a2: $6c
    add c                                         ; $68a3: $81
    jr nc, jr_045_68a0                            ; $68a4: $30 $fa

    ld [hl], h                                    ; $68a6: $74

jr_045_68a7:
    ld c, b                                       ; $68a7: $48
    ld a, a                                       ; $68a8: $7f
    dec sp                                        ; $68a9: $3b
    ld a, [hl+]                                   ; $68aa: $2a
    sub e                                         ; $68ab: $93
    ld h, l                                       ; $68ac: $65
    ret c                                         ; $68ad: $d8

    and b                                         ; $68ae: $a0
    rst $10                                       ; $68af: $d7
    inc hl                                        ; $68b0: $23
    ld c, a                                       ; $68b1: $4f
    jp nz, $c0b2                                  ; $68b2: $c2 $b2 $c0

    jp z, $a2e4                                   ; $68b5: $ca $e4 $a2

    jr nz, jr_045_6936                            ; $68b8: $20 $7c

    db $fd                                        ; $68ba: $fd
    ld a, [bc]                                    ; $68bb: $0a
    ld l, l                                       ; $68bc: $6d
    reti                                          ; $68bd: $d9


    inc de                                        ; $68be: $13
    rrca                                          ; $68bf: $0f
    cp d                                          ; $68c0: $ba
    call nc, $cd7e                                ; $68c1: $d4 $7e $cd
    ld c, [hl]                                    ; $68c4: $4e
    push af                                       ; $68c5: $f5
    dec hl                                        ; $68c6: $2b
    xor l                                         ; $68c7: $ad
    ld e, a                                       ; $68c8: $5f
    db $e4                                        ; $68c9: $e4
    jr nz, jr_045_6858                            ; $68ca: $20 $8c

    ld a, $1d                                     ; $68cc: $3e $1d
    ld e, a                                       ; $68ce: $5f
    cp $28                                        ; $68cf: $fe $28
    jp Jump_000_2170                              ; $68d1: $c3 $70 $21


    ld h, a                                       ; $68d4: $67
    ld b, e                                       ; $68d5: $43
    ld hl, sp+$60                                 ; $68d6: $f8 $60
    and a                                         ; $68d8: $a7
    ld c, e                                       ; $68d9: $4b
    push af                                       ; $68da: $f5
    pop af                                        ; $68db: $f1
    ld c, a                                       ; $68dc: $4f
    call nc, $9490                                ; $68dd: $d4 $90 $94
    daa                                           ; $68e0: $27
    ld h, l                                       ; $68e1: $65
    ld sp, $244a                                  ; $68e2: $31 $4a $24
    cp [hl]                                       ; $68e5: $be
    ld hl, $e3db                                  ; $68e6: $21 $db $e3
    and h                                         ; $68e9: $a4
    add b                                         ; $68ea: $80
    ld sp, hl                                     ; $68eb: $f9
    call c, Call_045_4fa9                         ; $68ec: $dc $a9 $4f
    and c                                         ; $68ef: $a1
    rla                                           ; $68f0: $17
    scf                                           ; $68f1: $37
    dec de                                        ; $68f2: $1b
    jp $bb0c                                      ; $68f3: $c3 $0c $bb


    jr nz, jr_045_68a7                            ; $68f6: $20 $af

    ld d, b                                       ; $68f8: $50
    jp z, Jump_000_3fc4                           ; $68f9: $ca $c4 $3f

    pop de                                        ; $68fc: $d1
    ld e, a                                       ; $68fd: $5f
    add hl, de                                    ; $68fe: $19
    ld c, l                                       ; $68ff: $4d
    ld h, $ea                                     ; $6900: $26 $ea
    ld d, d                                       ; $6902: $52
    sbc h                                         ; $6903: $9c
    rst $38                                       ; $6904: $ff
    sbc $b9                                       ; $6905: $de $b9
    ld a, e                                       ; $6907: $7b
    ld b, e                                       ; $6908: $43
    xor b                                         ; $6909: $a8
    ld h, h                                       ; $690a: $64
    cp c                                          ; $690b: $b9
    ld [hl-], a                                   ; $690c: $32
    ei                                            ; $690d: $fb
    ld h, h                                       ; $690e: $64
    ld a, [$be15]                                 ; $690f: $fa $15 $be
    cp a                                          ; $6912: $bf
    ld c, c                                       ; $6913: $49
    add sp, -$4e                                  ; $6914: $e8 $b2
    ret c                                         ; $6916: $d8

    ld a, b                                       ; $6917: $78
    ld d, c                                       ; $6918: $51
    jp z, Jump_045_4a18                           ; $6919: $ca $18 $4a

    ld sp, hl                                     ; $691c: $f9
    ld hl, sp+$2e                                 ; $691d: $f8 $2e
    halt                                          ; $691f: $76
    adc h                                         ; $6920: $8c
    ld a, [hl]                                    ; $6921: $7e
    dec b                                         ; $6922: $05
    sbc [hl]                                      ; $6923: $9e
    rst $30                                       ; $6924: $f7
    and e                                         ; $6925: $a3
    ld c, e                                       ; $6926: $4b
    db $ed                                        ; $6927: $ed
    scf                                           ; $6928: $37
    inc hl                                        ; $6929: $23
    ret nc                                        ; $692a: $d0

    rst $00                                       ; $692b: $c7
    ld [hl], e                                    ; $692c: $73
    jp z, Jump_045_5dc7                           ; $692d: $ca $c7 $5d

    cp h                                          ; $6930: $bc
    ld a, a                                       ; $6931: $7f
    ld d, c                                       ; $6932: $51
    rra                                           ; $6933: $1f
    rra                                           ; $6934: $1f
    adc d                                         ; $6935: $8a

jr_045_6936:
    jp nz, $f2c8                                  ; $6936: $c2 $c8 $f2

    add $57                                       ; $6939: $c6 $57
    ld l, e                                       ; $693b: $6b
    dec b                                         ; $693c: $05
    ld l, l                                       ; $693d: $6d
    rst $28                                       ; $693e: $ef
    inc l                                         ; $693f: $2c
    ld [hl], $5e                                  ; $6940: $36 $5e
    sub h                                         ; $6942: $94
    ld [hl-], a                                   ; $6943: $32
    sub [hl]                                      ; $6944: $96
    cp d                                          ; $6945: $ba
    rst $00                                       ; $6946: $c7
    inc hl                                        ; $6947: $23
    xor c                                         ; $6948: $a9
    ld l, $fe                                     ; $6949: $2e $fe
    ld c, a                                       ; $694b: $4f
    push af                                       ; $694c: $f5
    and d                                         ; $694d: $a2
    sbc [hl]                                      ; $694e: $9e
    daa                                           ; $694f: $27
    rra                                           ; $6950: $1f
    rlca                                          ; $6951: $07
    ld [hl], e                                    ; $6952: $73
    ld l, a                                       ; $6953: $6f
    adc b                                         ; $6954: $88
    jp nz, Jump_000_08de                          ; $6955: $c2 $de $08

    pop af                                        ; $6958: $f1
    ld b, l                                       ; $6959: $45
    db $10                                        ; $695a: $10
    ld [hl], l                                    ; $695b: $75
    add hl, hl                                    ; $695c: $29
    or b                                          ; $695d: $b0
    dec b                                         ; $695e: $05
    jp nz, Jump_045_5208                          ; $695f: $c2 $08 $52

    ei                                            ; $6962: $fb
    dec [hl]                                      ; $6963: $35
    dec sp                                        ; $6964: $3b
    sub l                                         ; $6965: $95
    ld [$ffe2], a                                 ; $6966: $ea $e2 $ff
    jr z, jr_045_699b                             ; $6969: $28 $30

    ld c, a                                       ; $696b: $4f
    sbc h                                         ; $696c: $9c
    rra                                           ; $696d: $1f
    ld a, c                                       ; $696e: $79
    jp nc, Jump_045_5970                          ; $696f: $d2 $70 $59

    add [hl]                                      ; $6972: $86
    add hl, hl                                    ; $6973: $29
    ld c, a                                       ; $6974: $4f
    ret c                                         ; $6975: $d8

    add [hl]                                      ; $6976: $86
    ld a, h                                       ; $6977: $7c
    inc de                                        ; $6978: $13
    call nz, $fe87                                ; $6979: $c4 $87 $fe
    halt                                          ; $697c: $76
    ld d, h                                       ; $697d: $54
    ld a, $3e                                     ; $697e: $3e $3e
    db $f4                                        ; $6980: $f4
    ld [hl], d                                    ; $6981: $72
    jp nz, $3263                                  ; $6982: $c2 $63 $32

    db $fd                                        ; $6985: $fd
    ld a, [bc]                                    ; $6986: $0a
    dec l                                         ; $6987: $2d
    ld h, a                                       ; $6988: $67
    sbc c                                         ; $6989: $99
    ld d, d                                       ; $698a: $52
    ld c, [hl]                                    ; $698b: $4e
    ld a, a                                       ; $698c: $7f
    dec de                                        ; $698d: $1b
    ld a, l                                       ; $698e: $7d
    rst $18                                       ; $698f: $df
    rlca                                          ; $6990: $07
    ld [hl], c                                    ; $6991: $71
    ld b, $35                                     ; $6992: $06 $35
    ld [hl], c                                    ; $6994: $71
    ld a, [hl]                                    ; $6995: $7e
    add h                                         ; $6996: $84
    ld l, l                                       ; $6997: $6d
    ld c, b                                       ; $6998: $48
    ret c                                         ; $6999: $d8

    ld e, a                                       ; $699a: $5f

jr_045_699b:
    ld e, [hl]                                    ; $699b: $5e
    sbc h                                         ; $699c: $9c
    rra                                           ; $699d: $1f
    cp c                                          ; $699e: $b9
    inc d                                         ; $699f: $14
    ret c                                         ; $69a0: $d8

    ld [bc], a                                    ; $69a1: $02
    pop hl                                        ; $69a2: $e1

jr_045_69a3:
    set 0, a                                      ; $69a3: $cb $c7
    pop de                                        ; $69a5: $d1
    sra a                                         ; $69a6: $cb $2f
    rr e                                          ; $69a8: $cb $1b
    ld b, e                                       ; $69aa: $43
    or h                                          ; $69ab: $b4
    sub c                                         ; $69ac: $91
    jp hl                                         ; $69ad: $e9


    ld d, a                                       ; $69ae: $57
    db $ed                                        ; $69af: $ed
    ld hl, $b965                                  ; $69b0: $21 $65 $b9
    ld [hl], a                                    ; $69b3: $77
    ld c, b                                       ; $69b4: $48
    ld b, c                                       ; $69b5: $41
    call nc, $8a84                                ; $69b6: $d4 $84 $8a
    rst $00                                       ; $69b9: $c7
    jr c, jr_045_69a3                             ; $69ba: $38 $e7

    cp a                                          ; $69bc: $bf
    rst $20                                       ; $69bd: $e7
    rst $08                                       ; $69be: $cf
    ld c, c                                       ; $69bf: $49
    or h                                          ; $69c0: $b4
    or e                                          ; $69c1: $b3
    xor c                                         ; $69c2: $a9
    or l                                          ; $69c3: $b5
    ld [bc], a                                    ; $69c4: $02
    ld l, l                                       ; $69c5: $6d
    cp $65                                        ; $69c6: $fe $65

Call_045_69c8:
    and c                                         ; $69c8: $a1
    ld b, $5d                                     ; $69c9: $06 $5d
    xor d                                         ; $69cb: $aa
    ld c, a                                       ; $69cc: $4f
    cp c                                          ; $69cd: $b9
    bit 4, d                                      ; $69ce: $cb $62
    ld d, h                                       ; $69d0: $54

jr_045_69d1:
    ld b, c                                       ; $69d1: $41
    jr jr_045_69d1                                ; $69d2: $18 $fd

    ld a, [bc]                                    ; $69d4: $0a
    dec e                                         ; $69d5: $1d
    jr nc, @+$61                                  ; $69d6: $30 $5f

    dec [hl]                                      ; $69d8: $35
    reti                                          ; $69d9: $d9


    ld c, a                                       ; $69da: $4f
    adc [hl]                                      ; $69db: $8e
    adc l                                         ; $69dc: $8d
    ld l, $b5                                     ; $69dd: $2e $b5
    rst $18                                       ; $69df: $df
    adc h                                         ; $69e0: $8c
    ld b, b                                       ; $69e1: $40
    sbc a                                         ; $69e2: $9f
    ld d, [hl]                                    ; $69e3: $56
    ld c, e                                       ; $69e4: $4b
    add c                                         ; $69e5: $81
    ld h, $b0                                     ; $69e6: $26 $b0
    ld a, [$44d3]                                 ; $69e8: $fa $d3 $44
    ld d, $2a                                     ; $69eb: $16 $2a
    inc a                                         ; $69ed: $3c
    ld sp, hl                                     ; $69ee: $f9
    or h                                          ; $69ef: $b4
    ld h, l                                       ; $69f0: $65
    rst $20                                       ; $69f1: $e7
    dec e                                         ; $69f2: $1d
    ld d, c                                       ; $69f3: $51

Jump_045_69f4:
    ld h, e                                       ; $69f4: $63

Jump_045_69f5:
    db $d3                                        ; $69f5: $d3
    xor a                                         ; $69f6: $af
    xor l                                         ; $69f7: $ad
    ld b, c                                       ; $69f8: $41
    and b                                         ; $69f9: $a0
    dec bc                                        ; $69fa: $0b
    sbc h                                         ; $69fb: $9c
    sbc e                                         ; $69fc: $9b
    ld l, h                                       ; $69fd: $6c
    add h                                         ; $69fe: $84
    ld hl, sp+$22                                 ; $69ff: $f8 $22
    adc b                                         ; $6a01: $88
    cp d                                          ; $6a02: $ba
    inc d                                         ; $6a03: $14
    ret c                                         ; $6a04: $d8

    ld [bc], a                                    ; $6a05: $02
    ld h, c                                       ; $6a06: $61
    ld b, h                                       ; $6a07: $44
    ld e, l                                       ; $6a08: $5d
    inc e                                         ; $6a09: $1c
    cp l                                          ; $6a0a: $bd
    ld hl, sp+$27                                 ; $6a0b: $f8 $27
    ld a, [$a32b]                                 ; $6a0d: $fa $2b $a3
    ret                                           ; $6a10: $c9


    db $f4                                        ; $6a11: $f4
    dec hl                                        ; $6a12: $2b
    ld l, l                                       ; $6a13: $6d
    call nz, $a94d                                ; $6a14: $c4 $4d $a9
    cpl                                           ; $6a17: $2f
    ld a, $14                                     ; $6a18: $3e $14
    add l                                         ; $6a1a: $85
    daa                                           ; $6a1b: $27
    dec [hl]                                      ; $6a1c: $35
    ld [hl], d                                    ; $6a1d: $72
    dec sp                                        ; $6a1e: $3b
    ld [$bf98], a                                 ; $6a1f: $ea $98 $bf
    sbc d                                         ; $6a22: $9a
    ld a, [hl]                                    ; $6a23: $7e
    dec b                                         ; $6a24: $05
    xor l                                         ; $6a25: $ad
    ld b, c                                       ; $6a26: $41
    and b                                         ; $6a27: $a0
    bit 5, a                                      ; $6a28: $cb $6f
    or [hl]                                       ; $6a2a: $b6
    adc c                                         ; $6a2b: $89
    ld a, [hl-]                                   ; $6a2c: $3a
    and $af                                       ; $6a2d: $e6 $af

Jump_045_6a2f:
    and [hl]                                      ; $6a2f: $a6
    ld e, a                                       ; $6a30: $5f
    ld bc, $ef6d                                  ; $6a31: $01 $6d $ef
    xor b                                         ; $6a34: $a8
    ld h, e                                       ; $6a35: $63
    cp $6a                                        ; $6a36: $fe $6a
    ld [hl+], a                                   ; $6a38: $22
    inc hl                                        ; $6a39: $23
    xor c                                         ; $6a3a: $a9
    sub c                                         ; $6a3b: $91
    ld [$6c2f], a                                 ; $6a3c: $ea $2f $6c
    or e                                          ; $6a3f: $b3
    inc l                                         ; $6a40: $2c
    db $d3                                        ; $6a41: $d3
    rst $30                                       ; $6a42: $f7
    db $fd                                        ; $6a43: $fd
    ld a, [bc]                                    ; $6a44: $0a
    xor l                                         ; $6a45: $ad
    ld a, [hl+]                                   ; $6a46: $2a
    sub h                                         ; $6a47: $94
    ld [hl-], a                                   ; $6a48: $32
    pop af                                        ; $6a49: $f1
    ld c, a                                       ; $6a4a: $4f
    call nc, Call_000_2493                        ; $6a4b: $d4 $93 $24
    ld l, h                                       ; $6a4e: $6c
    ld b, d                                       ; $6a4f: $42
    dec h                                         ; $6a50: $25
    ld a, d                                       ; $6a51: $7a
    db $ec                                        ; $6a52: $ec
    ld d, h                                       ; $6a53: $54
    call nc, $ff39                                ; $6a54: $d4 $39 $ff
    ld c, l                                       ; $6a57: $4d
    call nc, $1d45                                ; $6a58: $d4 $45 $1d
    di                                            ; $6a5b: $f3
    ld d, a                                       ; $6a5c: $57
    db $d3                                        ; $6a5d: $d3
    xor a                                         ; $6a5e: $af
    dec e                                         ; $6a5f: $1d
    ld d, d                                       ; $6a60: $52
    inc d                                         ; $6a61: $14
    sbc [hl]                                      ; $6a62: $9e
    call nc, $bbc8                                ; $6a63: $d4 $c8 $bb
    sub c                                         ; $6a66: $91
    db $e3                                        ; $6a67: $e3
    jp hl                                         ; $6a68: $e9


    ld d, a                                       ; $6a69: $57
    xor l                                         ; $6a6a: $ad
    ld b, c                                       ; $6a6b: $41
    and b                                         ; $6a6c: $a0
    bit 5, a                                      ; $6a6d: $cb $6f
    or [hl]                                       ; $6a6f: $b6
    ret                                           ; $6a70: $c9


    cp e                                          ; $6a71: $bb
    sub c                                         ; $6a72: $91
    db $e3                                        ; $6a73: $e3
    jp hl                                         ; $6a74: $e9


    ld d, a                                       ; $6a75: $57
    db $ed                                        ; $6a76: $ed
    ld a, c                                       ; $6a77: $79
    cp h                                          ; $6a78: $bc
    dec de                                        ; $6a79: $1b
    add hl, sp                                    ; $6a7a: $39
    sbc [hl]                                      ; $6a7b: $9e
    ret z                                         ; $6a7c: $c8

    ld c, b                                       ; $6a7d: $48
    ld l, d                                       ; $6a7e: $6a
    and h                                         ; $6a7f: $a4
    ld a, [$db0b]                                 ; $6a80: $fa $0b $db
    inc l                                         ; $6a83: $2c
    set 6, h                                      ; $6a84: $cb $f4

jr_045_6a86:
    ld a, l                                       ; $6a86: $7d
    cp a                                          ; $6a87: $bf
    ld [bc], a                                    ; $6a88: $02
    xor l                                         ; $6a89: $ad
    ld a, [hl+]                                   ; $6a8a: $2a
    sub h                                         ; $6a8b: $94
    ld [hl-], a                                   ; $6a8c: $32
    pop af                                        ; $6a8d: $f1
    ld c, a                                       ; $6a8e: $4f
    call nc, Call_000_2493                        ; $6a8f: $d4 $93 $24
    ld l, h                                       ; $6a92: $6c
    ld b, d                                       ; $6a93: $42
    dec h                                         ; $6a94: $25
    ld a, d                                       ; $6a95: $7a
    db $ec                                        ; $6a96: $ec
    ld d, h                                       ; $6a97: $54
    call nc, $ff39                                ; $6a98: $d4 $39 $ff
    ld c, l                                       ; $6a9b: $4d
    call nc, $dde5                                ; $6a9c: $d4 $e5 $dd
    ret z                                         ; $6a9f: $c8

    pop af                                        ; $6aa0: $f1
    db $f4                                        ; $6aa1: $f4
    dec hl                                        ; $6aa2: $2b
    ld l, l                                       ; $6aa3: $6d
    rst $28                                       ; $6aa4: $ef
    ld l, h                                       ; $6aa5: $6c
    ld [bc], a                                    ; $6aa6: $02
    ld l, [hl]                                    ; $6aa7: $6e
    inc e                                         ; $6aa8: $1c
    adc a                                         ; $6aa9: $8f
    ret nc                                        ; $6aaa: $d0

    ld a, [hl+]                                   ; $6aab: $2a
    ld [hl-], a                                   ; $6aac: $32
    sub d                                         ; $6aad: $92
    ld a, [de]                                    ; $6aae: $1a
    xor c                                         ; $6aaf: $a9
    cp $c2                                        ; $6ab0: $fe $c2
    ld [hl], $cb                                  ; $6ab2: $36 $cb
    ld [hl-], a                                   ; $6ab4: $32
    ld a, l                                       ; $6ab5: $7d
    rst $18                                       ; $6ab6: $df
    xor a                                         ; $6ab7: $af
    xor l                                         ; $6ab8: $ad
    ld b, c                                       ; $6ab9: $41
    and b                                         ; $6aba: $a0
    bit 5, a                                      ; $6abb: $cb $6f
    or [hl]                                       ; $6abd: $b6
    ret                                           ; $6abe: $c9


    ld h, $e0                                     ; $6abf: $26 $e0
    add $f1                                       ; $6ac1: $c6 $f1
    ld [$faad], sp                                ; $6ac3: $08 $ad $fa
    dec d                                         ; $6ac6: $15
    xor l                                         ; $6ac7: $ad
    ld a, [hl+]                                   ; $6ac8: $2a
    sub h                                         ; $6ac9: $94
    ld [hl-], a                                   ; $6aca: $32
    pop af                                        ; $6acb: $f1
    ld c, a                                       ; $6acc: $4f
    call nc, Call_000_2493                        ; $6acd: $d4 $93 $24

jr_045_6ad0:
    ld l, h                                       ; $6ad0: $6c
    ld b, d                                       ; $6ad1: $42
    dec h                                         ; $6ad2: $25
    ld a, d                                       ; $6ad3: $7a
    db $ec                                        ; $6ad4: $ec
    ld d, h                                       ; $6ad5: $54
    call nc, $ff39                                ; $6ad6: $d4 $39 $ff
    ld c, l                                       ; $6ad9: $4d
    call nc, Call_000_1365                        ; $6ada: $d4 $65 $13
    ld [hl], b                                    ; $6add: $70
    db $e3                                        ; $6ade: $e3
    ld a, b                                       ; $6adf: $78
    add h                                         ; $6ae0: $84
    ld d, [hl]                                    ; $6ae1: $56
    db $fd                                        ; $6ae2: $fd
    ld a, [bc]                                    ; $6ae3: $0a
    dec e                                         ; $6ae4: $1d
    jr jr_045_6a86                                ; $6ae5: $18 $9f

    di                                            ; $6ae7: $f3
    and e                                         ; $6ae8: $a3
    ld c, a                                       ; $6ae9: $4f
    db $db                                        ; $6aea: $db
    dec sp                                        ; $6aeb: $3b
    jp c, $a9bd                                   ; $6aec: $da $bd $a9

    sub e                                         ; $6aef: $93
    adc c                                         ; $6af0: $89
    jp nz, Jump_045_75a5                          ; $6af1: $c2 $a5 $75

    ld l, d                                       ; $6af4: $6a
    ld h, l                                       ; $6af5: $65
    add e                                         ; $6af6: $83
    ld b, b                                       ; $6af7: $40
    ld h, b                                       ; $6af8: $60
    sbc a                                         ; $6af9: $9f
    push hl                                       ; $6afa: $e5
    jr nz, jr_045_6ad0                            ; $6afb: $20 $d3

    xor a                                         ; $6afd: $af
    xor l                                         ; $6afe: $ad
    ld b, c                                       ; $6aff: $41
    and b                                         ; $6b00: $a0
    bit 5, a                                      ; $6b01: $cb $6f
    ld [hl], $64                                  ; $6b03: $36 $64
    adc h                                         ; $6b05: $8c
    rst $08                                       ; $6b06: $cf
    ld sp, hl                                     ; $6b07: $f9
    pop de                                        ; $6b08: $d1
    xor a                                         ; $6b09: $af
    cp [hl]                                       ; $6b0a: $be
    ld [hl], b                                    ; $6b0b: $70
    inc hl                                        ; $6b0c: $23
    ld l, d                                       ; $6b0d: $6a
    ld [hl], d                                    ; $6b0e: $72
    dec sp                                        ; $6b0f: $3b
    ei                                            ; $6b10: $fb
    db $f4                                        ; $6b11: $f4
    ld [hl], $ba                                  ; $6b12: $36 $ba
    sub h                                         ; $6b14: $94
    dec bc                                        ; $6b15: $0b
    db $db                                        ; $6b16: $db
    inc sp                                        ; $6b17: $33
    ld a, a                                       ; $6b18: $7f
    call nc, $ca85                                ; $6b19: $d4 $85 $ca
    rst $00                                       ; $6b1c: $c7
    ld e, [hl]                                    ; $6b1d: $5e
    sbc l                                         ; $6b1e: $9d
    ld b, e                                       ; $6b1f: $43
    call nc, Call_045_7aa5                        ; $6b20: $d4 $a5 $7a
    ld d, c                                       ; $6b23: $51
    or $da                                        ; $6b24: $f6 $da
    db $ec                                        ; $6b26: $ec
    rst $28                                       ; $6b27: $ef
    ld d, a                                       ; $6b28: $57
    xor l                                         ; $6b29: $ad
    ld b, c                                       ; $6b2a: $41
    and b                                         ; $6b2b: $a0
    adc e                                         ; $6b2c: $8b
    jp nz, $1ede                                  ; $6b2d: $c2 $de $1e

    cp a                                          ; $6b30: $bf
    reti                                          ; $6b31: $d9


    ld a, $f6                                     ; $6b32: $3e $f6
    ld [$a21c], a                                 ; $6b34: $ea $1c $a2
    ld l, $d5                                     ; $6b37: $2e $d5
    adc e                                         ; $6b39: $8b
    or d                                          ; $6b3a: $b2
    rst $10                                       ; $6b3b: $d7
    ld h, [hl]                                    ; $6b3c: $66
    ld a, a                                       ; $6b3d: $7f
    cp a                                          ; $6b3e: $bf
    ld [bc], a                                    ; $6b3f: $02
    db $ed                                        ; $6b40: $ed
    ld a, l                                       ; $6b41: $7d
    db $ec                                        ; $6b42: $ec
    push de                                       ; $6b43: $d5
    add hl, sp                                    ; $6b44: $39
    ld b, h                                       ; $6b45: $44
    ld e, l                                       ; $6b46: $5d
    xor d                                         ; $6b47: $aa
    rla                                           ; $6b48: $17
    ld h, l                                       ; $6b49: $65
    xor a                                         ; $6b4a: $af
    call $c8fe                                    ; $6b4b: $cd $fe $c8
    ld c, b                                       ; $6b4e: $48
    ld l, d                                       ; $6b4f: $6a
    and h                                         ; $6b50: $a4
    ld a, [$db0b]                                 ; $6b51: $fa $0b $db
    inc l                                         ; $6b54: $2c
    set 6, a                                      ; $6b55: $cb $f7
    ld a, l                                       ; $6b57: $7d
    cp a                                          ; $6b58: $bf
    ld [bc], a                                    ; $6b59: $02
    xor l                                         ; $6b5a: $ad
    ld a, [hl+]                                   ; $6b5b: $2a
    sub h                                         ; $6b5c: $94
    ld [hl-], a                                   ; $6b5d: $32
    pop af                                        ; $6b5e: $f1
    ld c, a                                       ; $6b5f: $4f
    call nc, Call_000_2493                        ; $6b60: $d4 $93 $24
    ld l, h                                       ; $6b63: $6c
    ld b, d                                       ; $6b64: $42
    dec h                                         ; $6b65: $25
    ld a, d                                       ; $6b66: $7a
    db $ec                                        ; $6b67: $ec
    ld d, h                                       ; $6b68: $54
    call nc, $ff39                                ; $6b69: $d4 $39 $ff
    ld c, l                                       ; $6b6c: $4d
    call nc, Call_045_5ec5                        ; $6b6d: $d4 $c5 $5e
    sbc l                                         ; $6b70: $9d
    cp e                                          ; $6b71: $bb
    xor b                                         ; $6b72: $a8
    ld c, e                                       ; $6b73: $4b
    push af                                       ; $6b74: $f5
    and d                                         ; $6b75: $a2
    db $ec                                        ; $6b76: $ec
    or l                                          ; $6b77: $b5
    reti                                          ; $6b78: $d9


    rst $18                                       ; $6b79: $df
    xor a                                         ; $6b7a: $af
    ld [hl], l                                    ; $6b7b: $75
    ld a, [hl]                                    ; $6b7c: $7e
    pop bc                                        ; $6b7d: $c1
    sbc $b4                                       ; $6b7e: $de $b4
    db $f4                                        ; $6b80: $f4
    ld l, c                                       ; $6b81: $69
    inc hl                                        ; $6b82: $23
    cpl                                           ; $6b83: $2f
    adc $8f                                       ; $6b84: $ce $8f
    ld hl, sp+$50                                 ; $6b86: $f8 $50
    inc d                                         ; $6b88: $14
    cp $d4                                        ; $6b89: $fe $d4
    ret z                                         ; $6b8b: $c8

    adc e                                         ; $6b8c: $8b
    ld a, d                                       ; $6b8d: $7a
    cp $7e                                        ; $6b8e: $fe $7e
    dec b                                         ; $6b90: $05
    xor l                                         ; $6b91: $ad
    ld a, [de]                                    ; $6b92: $1a
    and e                                         ; $6b93: $a3
    cp d                                          ; $6b94: $ba
    ld [hl], d                                    ; $6b95: $72
    rst $18                                       ; $6b96: $df
    rst $00                                       ; $6b97: $c7
    db $d3                                        ; $6b98: $d3
    adc a                                         ; $6b99: $8f
    ret z                                         ; $6b9a: $c8

    ld d, h                                       ; $6b9b: $54
    adc b                                         ; $6b9c: $88
    sbc [hl]                                      ; $6b9d: $9e
    ld a, d                                       ; $6b9e: $7a
    cp l                                          ; $6b9f: $bd
    db $d3                                        ; $6ba0: $d3
    xor a                                         ; $6ba1: $af
    xor l                                         ; $6ba2: $ad
    ld b, c                                       ; $6ba3: $41
    and b                                         ; $6ba4: $a0
    bit 5, a                                      ; $6ba5: $cb $6f
    or [hl]                                       ; $6ba7: $b6
    rst $08                                       ; $6ba8: $cf
    dec de                                        ; $6ba9: $1b
    and e                                         ; $6baa: $a3
    cp d                                          ; $6bab: $ba
    ld [hl], d                                    ; $6bac: $72
    rst $18                                       ; $6bad: $df
    xor a                                         ; $6bae: $af
    db $ed                                        ; $6baf: $ed
    ld a, c                                       ; $6bb0: $79
    cp h                                          ; $6bb1: $bc
    ld sp, $2baa                                  ; $6bb2: $31 $aa $2b
    rst $30                                       ; $6bb5: $f7
    sub c                                         ; $6bb6: $91
    sub c                                         ; $6bb7: $91
    call nc, $f548                                ; $6bb8: $d4 $48 $f5
    rla                                           ; $6bbb: $17
    or [hl]                                       ; $6bbc: $b6
    ld e, c                                       ; $6bbd: $59
    sub [hl]                                      ; $6bbe: $96
    rst $28                                       ; $6bbf: $ef
    ei                                            ; $6bc0: $fb
    ld a, $9f                                     ; $6bc1: $3e $9f
    ld a, [bc]                                    ; $6bc3: $0a
    ld [hl-], a                                   ; $6bc4: $32
    ld [hl], c                                    ; $6bc5: $71
    ld a, [hl]                                    ; $6bc6: $7e
    ld b, h                                       ; $6bc7: $44
    ld b, [hl]                                    ; $6bc8: $46
    ld d, d                                       ; $6bc9: $52
    xor $b3                                       ; $6bca: $ee $b3
    inc e                                         ; $6bcc: $1c
    db $e4                                        ; $6bcd: $e4
    and e                                         ; $6bce: $a3
    ld l, $24                                     ; $6bcf: $2e $24
    xor h                                         ; $6bd1: $ac
    cp d                                          ; $6bd2: $ba
    ld a, [hl]                                    ; $6bd3: $7e
    dec b                                         ; $6bd4: $05
    xor l                                         ; $6bd5: $ad
    ld a, [hl+]                                   ; $6bd6: $2a
    sub h                                         ; $6bd7: $94
    ld [hl-], a                                   ; $6bd8: $32
    pop af                                        ; $6bd9: $f1
    ld c, a                                       ; $6bda: $4f
    call nc, Call_000_2493                        ; $6bdb: $d4 $93 $24
    ld l, h                                       ; $6bde: $6c
    ld b, d                                       ; $6bdf: $42
    dec h                                         ; $6be0: $25
    ld a, d                                       ; $6be1: $7a
    db $ec                                        ; $6be2: $ec
    ld d, h                                       ; $6be3: $54
    call nc, $ff39                                ; $6be4: $d4 $39 $ff
    ld c, l                                       ; $6be7: $4d
    call nc, $8de5                                ; $6be8: $d4 $e5 $8d
    ld d, c                                       ; $6beb: $51
    ld e, l                                       ; $6bec: $5d
    cp c                                          ; $6bed: $b9
    rst $28                                       ; $6bee: $ef
    ld d, a                                       ; $6bef: $57
    ld l, l                                       ; $6bf0: $6d
    call nz, $a94d                                ; $6bf1: $c4 $4d $a9
    cpl                                           ; $6bf4: $2f
    xor a                                         ; $6bf5: $af
    ld d, b                                       ; $6bf6: $50
    jp z, Jump_000_3fc4                           ; $6bf7: $ca $c4 $3f

    and c                                         ; $6bfa: $a1
    ld a, [c]                                     ; $6bfb: $f2
    or c                                          ; $6bfc: $b1
    ld d, a                                       ; $6bfd: $57

Jump_045_6bfe:
    rst $20                                       ; $6bfe: $e7
    db $10                                        ; $6bff: $10
    ld [hl], l                                    ; $6c00: $75
    ld sp, hl                                     ; $6c01: $f9
    ld [c], a                                     ; $6c02: $e2
    dec e                                         ; $6c03: $1d
    add l                                         ; $6c04: $85
    dec a                                         ; $6c05: $3d
    db $fd                                        ; $6c06: $fd
    ld a, [bc]                                    ; $6c07: $0a
    db $ed                                        ; $6c08: $ed
    ld a, l                                       ; $6c09: $7d
    db $ec                                        ; $6c0a: $ec
    push de                                       ; $6c0b: $d5
    add hl, sp                                    ; $6c0c: $39
    ld b, h                                       ; $6c0d: $44
    ld e, l                                       ; $6c0e: $5d
    cp [hl]                                       ; $6c0f: $be
    ld a, b                                       ; $6c10: $78
    ld b, a                                       ; $6c11: $47
    ld h, c                                       ; $6c12: $61
    ld c, a                                       ; $6c13: $4f
    ld h, h                                       ; $6c14: $64
    inc h                                         ; $6c15: $24
    dec [hl]                                      ; $6c16: $35
    ld d, d                                       ; $6c17: $52
    db $fd                                        ; $6c18: $fd
    add l                                         ; $6c19: $85
    ld l, l                                       ; $6c1a: $6d
    sub [hl]                                      ; $6c1b: $96
    push hl                                       ; $6c1c: $e5
    ei                                            ; $6c1d: $fb
    cp [hl]                                       ; $6c1e: $be
    ld e, a                                       ; $6c1f: $5f
    ld bc, $2aad                                  ; $6c20: $01 $ad $2a
    sub h                                         ; $6c23: $94
    ld [hl-], a                                   ; $6c24: $32
    pop af                                        ; $6c25: $f1
    ld c, a                                       ; $6c26: $4f
    call nc, Call_000_2493                        ; $6c27: $d4 $93 $24
    ld l, h                                       ; $6c2a: $6c

jr_045_6c2b:
    ld b, d                                       ; $6c2b: $42
    dec h                                         ; $6c2c: $25
    ld a, d                                       ; $6c2d: $7a
    db $ec                                        ; $6c2e: $ec
    ld d, h                                       ; $6c2f: $54
    call nc, $ff39                                ; $6c30: $d4 $39 $ff
    ld c, l                                       ; $6c33: $4d
    call nc, Call_045_5ec5                        ; $6c34: $d4 $c5 $5e
    sbc l                                         ; $6c37: $9d
    cp e                                          ; $6c38: $bb
    xor b                                         ; $6c39: $a8
    rl a                                          ; $6c3a: $cb $17
    rst $28                                       ; $6c3c: $ef
    jr z, jr_045_6c2b                             ; $6c3d: $28 $ec

    jp hl                                         ; $6c3f: $e9


    ld d, a                                       ; $6c40: $57
    cp [hl]                                       ; $6c41: $be
    inc hl                                        ; $6c42: $23
    inc de                                        ; $6c43: $13
    cpl                                           ; $6c44: $2f
    or $39                                        ; $6c45: $f6 $39
    ld b, h                                       ; $6c47: $44
    ld e, l                                       ; $6c48: $5d
    sbc [hl]                                      ; $6c49: $9e
    add h                                         ; $6c4a: $84
    add l                                         ; $6c4b: $85
    ld l, l                                       ; $6c4c: $6d
    ret z                                         ; $6c4d: $c8

    rst $20                                       ; $6c4e: $e7

jr_045_6c4f:
    ret                                           ; $6c4f: $c9


    ld b, [hl]                                    ; $6c50: $46
    adc b                                         ; $6c51: $88
    cpl                                           ; $6c52: $2f
    add d                                         ; $6c53: $82
    xor b                                         ; $6c54: $a8
    ld c, e                                       ; $6c55: $4b
    add c                                         ; $6c56: $81
    dec l                                         ; $6c57: $2d
    db $10                                        ; $6c58: $10
    add [hl]                                      ; $6c59: $86
    ld l, $2f                                     ; $6c5a: $2e $2f
    adc $8f                                       ; $6c5c: $ce $8f
    inc d                                         ; $6c5e: $14
    and h                                         ; $6c5f: $a4
    cp d                                          ; $6c60: $ba
    xor b                                         ; $6c61: $a8
    dec hl                                        ; $6c62: $2b
    res 7, l                                      ; $6c63: $cb $bd
    ld b, e                                       ; $6c65: $43
    ld d, $58                                     ; $6c66: $16 $58
    ld l, [hl]                                    ; $6c68: $6e
    ld h, a                                       ; $6c69: $67
    add hl, de                                    ; $6c6a: $19
    ld [de], a                                    ; $6c6b: $12
    ld [hl], $31                                  ; $6c6c: $36 $31
    jr nc, jr_045_6c4f                            ; $6c6e: $30 $df

    ld b, [hl]                                    ; $6c70: $46
    cp a                                          ; $6c71: $bf
    ld [bc], a                                    ; $6c72: $02
    xor l                                         ; $6c73: $ad
    ld b, c                                       ; $6c74: $41
    and b                                         ; $6c75: $a0
    bit 5, a                                      ; $6c76: $cb $6f
    ld [hl], $84                                  ; $6c78: $36 $84
    ld hl, sp+$22                                 ; $6c7a: $f8 $22
    adc b                                         ; $6c7c: $88
    cp d                                          ; $6c7d: $ba
    inc d                                         ; $6c7e: $14
    ret c                                         ; $6c7f: $d8

    ld [bc], a                                    ; $6c80: $02
    ld h, c                                       ; $6c81: $61
    db $f4                                        ; $6c82: $f4
    dec hl                                        ; $6c83: $2b
    db $ed                                        ; $6c84: $ed
    ld hl, $17c4                                  ; $6c85: $21 $c4 $17
    ld b, c                                       ; $6c88: $41
    call nc, $c0a5                                ; $6c89: $d4 $a5 $c0

Jump_045_6c8c:
    ld d, $08                                     ; $6c8c: $16 $08
    inc hl                                        ; $6c8e: $23
    ld [hl-], a                                   ; $6c8f: $32
    sub d                                         ; $6c90: $92
    ld [hl-], a                                   ; $6c91: $32
    ld [hl-], a                                   ; $6c92: $32
    xor c                                         ; $6c93: $a9
    cp $c2                                        ; $6c94: $fe $c2
    ld [hl], $cb                                  ; $6c96: $36 $cb
    add d                                         ; $6c98: $82
    cp [hl]                                       ; $6c99: $be
    rst $28                                       ; $6c9a: $ef
    di                                            ; $6c9b: $f3
    xor c                                         ; $6c9c: $a9
    jr nz, @+$15                                  ; $6c9d: $20 $13

    rst $20                                       ; $6c9f: $e7
    ld b, a                                       ; $6ca0: $47
    ld h, h                                       ; $6ca1: $64
    inc h                                         ; $6ca2: $24
    push hl                                       ; $6ca3: $e5
    ld e, [hl]                                    ; $6ca4: $5e
    ld h, $2f                                     ; $6ca5: $26 $2f
    ld l, [hl]                                    ; $6ca7: $6e
    db $ec                                        ; $6ca8: $ec
    di                                            ; $6ca9: $f3
    call z, $dcef                                 ; $6caa: $cc $ef $dc
    inc sp                                        ; $6cad: $33
    ld a, [c]                                     ; $6cae: $f2
    ld a, e                                       ; $6caf: $7b
    inc hl                                        ; $6cb0: $23
    sbc $a7                                       ; $6cb1: $de $a7
    xor $a2                                       ; $6cb3: $ee $a2
    or b                                          ; $6cb5: $b0
    or e                                          ; $6cb6: $b3
    rst $00                                       ; $6cb7: $c7
    ld h, $cb                                     ; $6cb8: $26 $cb
    dec hl                                        ; $6cba: $2b
    dec de                                        ; $6cbb: $1b
    ld b, c                                       ; $6cbc: $41
    cp a                                          ; $6cbd: $bf
    ld [bc], a                                    ; $6cbe: $02
    xor l                                         ; $6cbf: $ad
    ld a, [hl+]                                   ; $6cc0: $2a
    sub h                                         ; $6cc1: $94
    ld [hl-], a                                   ; $6cc2: $32
    pop af                                        ; $6cc3: $f1
    ld c, a                                       ; $6cc4: $4f
    call nc, Call_000_2493                        ; $6cc5: $d4 $93 $24
    ld l, h                                       ; $6cc8: $6c
    ld b, d                                       ; $6cc9: $42
    dec h                                         ; $6cca: $25
    ld a, d                                       ; $6ccb: $7a
    db $ec                                        ; $6ccc: $ec
    ld d, h                                       ; $6ccd: $54
    call nc, $ff39                                ; $6cce: $d4 $39 $ff
    ld c, l                                       ; $6cd1: $4d
    call nc, $f885                                ; $6cd2: $d4 $85 $f8
    ld [hl+], a                                   ; $6cd5: $22
    adc b                                         ; $6cd6: $88
    cp d                                          ; $6cd7: $ba
    inc d                                         ; $6cd8: $14
    ret c                                         ; $6cd9: $d8

    ld [bc], a                                    ; $6cda: $02
    ld h, c                                       ; $6cdb: $61
    db $f4                                        ; $6cdc: $f4
    dec hl                                        ; $6cdd: $2b
    ld l, l                                       ; $6cde: $6d
    jr c, @+$39                                   ; $6cdf: $38 $37

    and c                                         ; $6ce1: $a1
    sub d                                         ; $6ce2: $92
    ld h, l                                       ; $6ce3: $65
    inc a                                         ; $6ce4: $3c
    and d                                         ; $6ce5: $a2
    ld l, $0b                                     ; $6ce6: $2e $0b
    or $46                                        ; $6ce8: $f6 $46
    call nc, $ada5                                ; $6cea: $d4 $a5 $ad
    or e                                          ; $6ced: $b3
    db $db                                        ; $6cee: $db
    rst $28                                       ; $6cef: $ef
    call c, $2bf4                                 ; $6cf0: $dc $f4 $2b
    xor l                                         ; $6cf3: $ad
    ld a, [hl-]                                   ; $6cf4: $3a
    cp d                                          ; $6cf5: $ba
    ld [hl], c                                    ; $6cf6: $71
    ld d, c                                       ; $6cf7: $51
    sub a                                         ; $6cf8: $97
    ld h, l                                       ; $6cf9: $65
    call z, Call_045_594d                         ; $6cfa: $cc $4d $59
    ld c, [hl]                                    ; $6cfd: $4e
    and [hl]                                      ; $6cfe: $a6
    and l                                         ; $6cff: $a5
    ld d, h                                       ; $6d00: $54
    ret nc                                        ; $6d01: $d0

    or $4d                                        ; $6d02: $f6 $4d
    cp h                                          ; $6d04: $bc
    ld l, a                                       ; $6d05: $6f
    ret z                                         ; $6d06: $c8

    inc sp                                        ; $6d07: $33
    ld b, e                                       ; $6d08: $43
    adc b                                         ; $6d09: $88
    scf                                           ; $6d0a: $37
    add d                                         ; $6d0b: $82
    ld a, [hl]                                    ; $6d0c: $7e
    dec b                                         ; $6d0d: $05
    db $ed                                        ; $6d0e: $ed
    ld e, a                                       ; $6d0f: $5f
    sbc h                                         ; $6d10: $9c
    rst $38                                       ; $6d11: $ff
    and b                                         ; $6d12: $a0
    ld h, $6e                                     ; $6d13: $26 $6e

Call_045_6d15:
    ld a, [hl+]                                   ; $6d15: $2a
    call nz, $a287                                ; $6d16: $c4 $87 $a2
    ldh a, [$67]                                  ; $6d19: $f0 $67
    sbc c                                         ; $6d1b: $99
    ld c, l                                       ; $6d1c: $4d
    jp nz, Jump_045_7510                          ; $6d1d: $c2 $10 $75

    ld e, c                                       ; $6d20: $59
    ld l, [hl]                                    ; $6d21: $6e
    ld c, b                                       ; $6d22: $48
    ei                                            ; $6d23: $fb
    sub h                                         ; $6d24: $94
    ei                                            ; $6d25: $fb
    cp h                                          ; $6d26: $bc
    reti                                          ; $6d27: $d9


    sub c                                         ; $6d28: $91
    rst $08                                       ; $6d29: $cf
    rra                                           ; $6d2a: $1f
    rra                                           ; $6d2b: $1f
    ld a, d                                       ; $6d2c: $7a
    pop af                                        ; $6d2d: $f1
    jp nc, $ebb1                                  ; $6d2e: $d2 $b1 $eb

    ei                                            ; $6d31: $fb
    ld a, [hl]                                    ; $6d32: $7e
    dec b                                         ; $6d33: $05
    dec e                                         ; $6d34: $1d
    jr c, @-$17                                   ; $6d35: $38 $e7

    cp a                                          ; $6d37: $bf
    xor b                                         ; $6d38: $a8
    adc e                                         ; $6d39: $8b
    sbc e                                         ; $6d3a: $9b
    adc l                                         ; $6d3b: $8d
    ld h, c                                       ; $6d3c: $61
    add [hl]                                      ; $6d3d: $86
    ld c, l                                       ; $6d3e: $4d
    rst $18                                       ; $6d3f: $df
    rst $30                                       ; $6d40: $f7
    xor c                                         ; $6d41: $a9
    ld l, $05                                     ; $6d42: $2e $05
    sub l                                         ; $6d44: $95
    sbc $3e                                       ; $6d45: $de $3e
    ld [$24f2], a                                 ; $6d47: $ea $f2 $24
    ld l, h                                       ; $6d4a: $6c
    ld e, a                                       ; $6d4b: $5f
    or h                                          ; $6d4c: $b4
    xor e                                         ; $6d4d: $ab
    daa                                           ; $6d4e: $27
    db $e4                                        ; $6d4f: $e4
    dec d                                         ; $6d50: $15
    cp [hl]                                       ; $6d51: $be
    cp [hl]                                       ; $6d52: $be
    rst $28                                       ; $6d53: $ef
    ld d, a                                       ; $6d54: $57
    xor l                                         ; $6d55: $ad
    ld b, c                                       ; $6d56: $41
    and b                                         ; $6d57: $a0
    bit 5, a                                      ; $6d58: $cb $6f
    or [hl]                                       ; $6d5a: $b6
    srl b                                         ; $6d5b: $cb $38
    rst $20                                       ; $6d5d: $e7
    cp a                                          ; $6d5e: $bf
    xor b                                         ; $6d5f: $a8
    adc e                                         ; $6d60: $8b
    sbc e                                         ; $6d61: $9b
    adc l                                         ; $6d62: $8d
    ld h, c                                       ; $6d63: $61
    add [hl]                                      ; $6d64: $86
    ld c, l                                       ; $6d65: $4d
    cp a                                          ; $6d66: $bf
    ld [bc], a                                    ; $6d67: $02
    ld l, l                                       ; $6d68: $6d
    db $ed                                        ; $6d69: $ed
    srl b                                         ; $6d6a: $cb $38
    rst $20                                       ; $6d6c: $e7
    cp a                                          ; $6d6d: $bf
    xor b                                         ; $6d6e: $a8
    adc e                                         ; $6d6f: $8b
    sbc e                                         ; $6d70: $9b
    adc l                                         ; $6d71: $8d
    ld h, c                                       ; $6d72: $61
    add [hl]                                      ; $6d73: $86
    ld c, l                                       ; $6d74: $4d
    ld h, h                                       ; $6d75: $64
    inc h                                         ; $6d76: $24
    ld h, l                                       ; $6d77: $65
    ld h, h                                       ; $6d78: $64
    ld d, d                                       ; $6d79: $52
    db $fd                                        ; $6d7a: $fd
    add l                                         ; $6d7b: $85
    ld l, l                                       ; $6d7c: $6d
    sub [hl]                                      ; $6d7d: $96
    push hl                                       ; $6d7e: $e5
    ld a, [$5fbe]                                 ; $6d7f: $fa $be $5f
    ld bc, $2aad                                  ; $6d82: $01 $ad $2a
    sub h                                         ; $6d85: $94
    ld [hl-], a                                   ; $6d86: $32
    pop af                                        ; $6d87: $f1
    ld c, a                                       ; $6d88: $4f
    call nc, Call_000_2493                        ; $6d89: $d4 $93 $24
    ld l, h                                       ; $6d8c: $6c
    ld b, d                                       ; $6d8d: $42
    dec h                                         ; $6d8e: $25
    ld a, d                                       ; $6d8f: $7a
    db $ec                                        ; $6d90: $ec
    ld d, h                                       ; $6d91: $54
    call nc, $ff39                                ; $6d92: $d4 $39 $ff
    ld c, l                                       ; $6d95: $4d
    call nc, $9c65                                ; $6d96: $d4 $65 $9c
    di                                            ; $6d99: $f3
    ld e, a                                       ; $6d9a: $5f
    call nc, $cdc5                                ; $6d9b: $d4 $c5 $cd
    add $30                                       ; $6d9e: $c6 $30
    jp Jump_045_5fa6                              ; $6da0: $c3 $a6 $5f


    ld bc, $2aad                                  ; $6da3: $01 $ad $2a
    sub h                                         ; $6da6: $94
    ld [hl-], a                                   ; $6da7: $32
    pop af                                        ; $6da8: $f1
    ld c, a                                       ; $6da9: $4f
    ld l, [hl]                                    ; $6daa: $6e
    rst $00                                       ; $6dab: $c7
    adc l                                         ; $6dac: $8d
    ret                                           ; $6dad: $c9


    ld b, h                                       ; $6dae: $44
    ld e, l                                       ; $6daf: $5d
    db $f4                                        ; $6db0: $f4
    rst $20                                       ; $6db1: $e7
    add $64                                       ; $6db2: $c6 $64
    ld a, [$ad15]                                 ; $6db4: $fa $15 $ad
    ld b, c                                       ; $6db7: $41
    and b                                         ; $6db8: $a0
    bit 5, a                                      ; $6db9: $cb $6f
    or [hl]                                       ; $6dbb: $b6
    adc e                                         ; $6dbc: $8b
    dec de                                        ; $6dbd: $1b
    sub e                                         ; $6dbe: $93
    adc e                                         ; $6dbf: $8b
    cp d                                          ; $6dc0: $ba
    add sp, -$31                                  ; $6dc1: $e8 $cf
    adc l                                         ; $6dc3: $8d
    ret                                           ; $6dc4: $c9


    db $f4                                        ; $6dc5: $f4
    dec hl                                        ; $6dc6: $2b
    ld l, l                                       ; $6dc7: $6d
    rst $00                                       ; $6dc8: $c7
    adc l                                         ; $6dc9: $8d
    ret                                           ; $6dca: $c9


    ld b, l                                       ; $6dcb: $45
    ld e, l                                       ; $6dcc: $5d
    db $f4                                        ; $6dcd: $f4
    rst $20                                       ; $6dce: $e7
    add $64                                       ; $6dcf: $c6 $64
    ld [hl+], a                                   ; $6dd1: $22
    inc hl                                        ; $6dd2: $23
    add hl, hl                                    ; $6dd3: $29
    inc hl                                        ; $6dd4: $23
    sub e                                         ; $6dd5: $93
    ld [$6c2f], a                                 ; $6dd6: $ea $2f $6c
    or e                                          ; $6dd9: $b3
    inc l                                         ; $6dda: $2c
    rst $10                                       ; $6ddb: $d7
    rst $30                                       ; $6ddc: $f7
    db $fd                                        ; $6ddd: $fd
    ld a, [bc]                                    ; $6dde: $0a
    xor l                                         ; $6ddf: $ad
    ld a, [hl+]                                   ; $6de0: $2a
    sub h                                         ; $6de1: $94
    ld [hl-], a                                   ; $6de2: $32
    pop af                                        ; $6de3: $f1
    ld c, a                                       ; $6de4: $4f
    call nc, Call_000_2493                        ; $6de5: $d4 $93 $24
    ld l, h                                       ; $6de8: $6c
    ld b, d                                       ; $6de9: $42
    dec h                                         ; $6dea: $25
    ld a, d                                       ; $6deb: $7a
    db $ec                                        ; $6dec: $ec
    ld d, h                                       ; $6ded: $54
    call nc, $ff39                                ; $6dee: $d4 $39 $ff
    ld c, l                                       ; $6df1: $4d
    call nc, $8dc5                                ; $6df2: $d4 $c5 $8d
    ret                                           ; $6df5: $c9


    ld b, l                                       ; $6df6: $45
    ld e, l                                       ; $6df7: $5d
    db $f4                                        ; $6df8: $f4
    rst $20                                       ; $6df9: $e7
    add $64                                       ; $6dfa: $c6 $64
    ld a, [$7515]                                 ; $6dfc: $fa $15 $75
    rrca                                          ; $6dff: $0f
    ld l, h                                       ; $6e00: $6c
    rra                                           ; $6e01: $1f
    dec a                                         ; $6e02: $3d
    adc b                                         ; $6e03: $88
    di                                            ; $6e04: $f3
    sub $f7                                       ; $6e05: $d6 $f7
    ld a, l                                       ; $6e07: $7d
    ld [$8f1e], a                                 ; $6e08: $ea $1e $8f
    call nz, $51ff                                ; $6e0b: $c4 $ff $51
    ld h, b                                       ; $6e0e: $60
    sbc [hl]                                      ; $6e0f: $9e
    jr c, jr_045_6e51                             ; $6e10: $38 $3f

    ld b, d                                       ; $6e12: $42
    ld e, $04                                     ; $6e13: $1e $04

jr_045_6e15:
    and c                                         ; $6e15: $a1
    ld a, h                                       ; $6e16: $7c
    ei                                            ; $6e17: $fb
    adc b                                         ; $6e18: $88
    call nz, $8fe7                                ; $6e19: $c4 $e7 $8f
    ld b, b                                       ; $6e1c: $40
    db $db                                        ; $6e1d: $db
    sub a                                         ; $6e1e: $97
    rla                                           ; $6e1f: $17
    ld a, $35                                     ; $6e20: $3e $35
    ld a, h                                       ; $6e22: $7c
    db $fd                                        ; $6e23: $fd
    ld a, [bc]                                    ; $6e24: $0a
    xor l                                         ; $6e25: $ad
    ld b, c                                       ; $6e26: $41
    and b                                         ; $6e27: $a0
    bit 5, a                                      ; $6e28: $cb $6f
    ld [hl], $64                                  ; $6e2a: $36 $64
    add hl, sp                                    ; $6e2c: $39
    or b                                          ; $6e2d: $b0
    ld hl, $107a                                  ; $6e2e: $21 $7a $10
    rst $20                                       ; $6e31: $e7
    xor l                                         ; $6e32: $ad
    ld e, a                                       ; $6e33: $5f
    ld bc, $21ed                                  ; $6e34: $01 $ed $21
    res 0, c                                      ; $6e37: $cb $81
    dec c                                         ; $6e39: $0d
    pop de                                        ; $6e3a: $d1
    add e                                         ; $6e3b: $83
    jr c, jr_045_6ead                             ; $6e3c: $38 $6f

    sub c                                         ; $6e3e: $91
    sub c                                         ; $6e3f: $91
    sub h                                         ; $6e40: $94
    sub c                                         ; $6e41: $91
    ld c, c                                       ; $6e42: $49
    push af                                       ; $6e43: $f5
    rla                                           ; $6e44: $17
    or [hl]                                       ; $6e45: $b6
    ld e, c                                       ; $6e46: $59
    ld d, $f4                                     ; $6e47: $16 $f4
    ld a, l                                       ; $6e49: $7d
    cp a                                          ; $6e4a: $bf
    ld [bc], a                                    ; $6e4b: $02
    xor l                                         ; $6e4c: $ad
    ld a, [hl+]                                   ; $6e4d: $2a
    sub h                                         ; $6e4e: $94
    ld [hl-], a                                   ; $6e4f: $32
    pop af                                        ; $6e50: $f1

jr_045_6e51:
    ld c, a                                       ; $6e51: $4f
    call nc, Call_000_2493                        ; $6e52: $d4 $93 $24
    ld l, h                                       ; $6e55: $6c
    ld b, d                                       ; $6e56: $42
    dec h                                         ; $6e57: $25
    ld a, d                                       ; $6e58: $7a
    db $ec                                        ; $6e59: $ec
    ld d, h                                       ; $6e5a: $54
    call nc, $ff39                                ; $6e5b: $d4 $39 $ff
    ld c, l                                       ; $6e5e: $4d
    call nc, Call_000_3965                        ; $6e5f: $d4 $65 $39
    or b                                          ; $6e62: $b0
    ld hl, $107a                                  ; $6e63: $21 $7a $10
    rst $20                                       ; $6e66: $e7
    xor l                                         ; $6e67: $ad
    ld e, a                                       ; $6e68: $5f
    ld bc, $ef6d                                  ; $6e69: $01 $6d $ef
    cp b                                          ; $6e6c: $b8
    ld sp, $2899                                  ; $6e6d: $31 $99 $28

Jump_045_6e70:
    db $ec                                        ; $6e70: $ec
    db $ed                                        ; $6e71: $ed
    ld b, c                                       ; $6e72: $41
    push hl                                       ; $6e73: $e5
    call c, Call_045_4c98                         ; $6e74: $dc $98 $4c
    ld c, [hl]                                    ; $6e77: $4e
    ld a, [c]                                     ; $6e78: $f2
    and [hl]                                      ; $6e79: $a6
    ld b, c                                       ; $6e7a: $41
    ld a, b                                       ; $6e7b: $78
    ld l, d                                       ; $6e7c: $6a
    add $d7                                       ; $6e7d: $c6 $d7
    ld c, l                                       ; $6e7f: $4d
    ld d, l                                       ; $6e80: $55
    add c                                         ; $6e81: $81
    ld a, c                                       ; $6e82: $79
    ld [c], a                                     ; $6e83: $e2
    db $fc                                        ; $6e84: $fc
    ld c, b                                       ; $6e85: $48
    adc l                                         ; $6e86: $8d
    ld d, h                                       ; $6e87: $54
    or e                                          ; $6e88: $b3
    ld a, c                                       ; $6e89: $79
    or d                                          ; $6e8a: $b2
    jr jr_045_6e15                                ; $6e8b: $18 $88

    scf                                           ; $6e8d: $37
    ld h, l                                       ; $6e8e: $65
    ld l, d                                       ; $6e8f: $6a
    xor [hl]                                      ; $6e90: $ae
    xor l                                         ; $6e91: $ad
    ld b, c                                       ; $6e92: $41
    and b                                         ; $6e93: $a0
    bit 5, a                                      ; $6e94: $cb $6f
    or [hl]                                       ; $6e96: $b6
    adc e                                         ; $6e97: $8b
    dec de                                        ; $6e98: $1b
    sub e                                         ; $6e99: $93
    adc e                                         ; $6e9a: $8b
    cp d                                          ; $6e9b: $ba
    ld d, b                                       ; $6e9c: $50
    add hl, sp                                    ; $6e9d: $39
    scf                                           ; $6e9e: $37
    ld h, $93                                     ; $6e9f: $26 $93
    sub e                                         ; $6ea1: $93
    cp h                                          ; $6ea2: $bc
    ld l, c                                       ; $6ea3: $69
    db $10                                        ; $6ea4: $10

Call_045_6ea5:
    sbc [hl]                                      ; $6ea5: $9e
    ld a, [hl]                                    ; $6ea6: $7e
    dec b                                         ; $6ea7: $05
    ld l, l                                       ; $6ea8: $6d
    rst $00                                       ; $6ea9: $c7
    adc l                                         ; $6eaa: $8d
    ret                                           ; $6eab: $c9


    ld b, l                                       ; $6eac: $45

jr_045_6ead:
    ld e, l                                       ; $6ead: $5d
    xor b                                         ; $6eae: $a8
    sbc h                                         ; $6eaf: $9c
    dec de                                        ; $6eb0: $1b
    sub e                                         ; $6eb1: $93
    ret                                           ; $6eb2: $c9


    ld c, c                                       ; $6eb3: $49
    sbc $34                                       ; $6eb4: $de $34
    ld [$644f], sp                                ; $6eb6: $08 $4f $64
    inc h                                         ; $6eb9: $24
    ld h, l                                       ; $6eba: $65
    ld h, h                                       ; $6ebb: $64
    ld d, d                                       ; $6ebc: $52
    db $fd                                        ; $6ebd: $fd
    add l                                         ; $6ebe: $85
    ld l, l                                       ; $6ebf: $6d
    sub [hl]                                      ; $6ec0: $96
    push hl                                       ; $6ec1: $e5
    ld a, [$5fbe]                                 ; $6ec2: $fa $be $5f
    ld bc, $2aad                                  ; $6ec5: $01 $ad $2a
    sub h                                         ; $6ec8: $94
    ld [hl-], a                                   ; $6ec9: $32
    pop af                                        ; $6eca: $f1
    ld c, a                                       ; $6ecb: $4f
    call nc, Call_000_2493                        ; $6ecc: $d4 $93 $24
    ld l, h                                       ; $6ecf: $6c
    ld b, d                                       ; $6ed0: $42
    dec h                                         ; $6ed1: $25
    ld a, d                                       ; $6ed2: $7a
    db $ec                                        ; $6ed3: $ec
    ld d, h                                       ; $6ed4: $54
    call nc, $ff39                                ; $6ed5: $d4 $39 $ff
    ld c, l                                       ; $6ed8: $4d
    call nc, $8dc5                                ; $6ed9: $d4 $c5 $8d
    ret                                           ; $6edc: $c9


    ld b, l                                       ; $6edd: $45
    ld e, l                                       ; $6ede: $5d
    xor b                                         ; $6edf: $a8
    sbc h                                         ; $6ee0: $9c
    dec de                                        ; $6ee1: $1b
    sub e                                         ; $6ee2: $93
    ret                                           ; $6ee3: $c9


    ld c, c                                       ; $6ee4: $49
    sbc $34                                       ; $6ee5: $de $34
    ld [$bf4f], sp                                ; $6ee7: $08 $4f $bf
    ld [bc], a                                    ; $6eea: $02
    cp [hl]                                       ; $6eeb: $be
    ld a, d                                       ; $6eec: $7a
    dec sp                                        ; $6eed: $3b
    db $ed                                        ; $6eee: $ed
    ld sp, hl                                     ; $6eef: $f9
    ld a, [c]                                     ; $6ef0: $f2
    ld h, c                                       ; $6ef1: $61
    dec de                                        ; $6ef2: $1b
    ld a, [c]                                     ; $6ef3: $f2
    dec c                                         ; $6ef4: $0d
    cp c                                          ; $6ef5: $b9
    dec e                                         ; $6ef6: $1d
    and [hl]                                      ; $6ef7: $a6
    inc de                                        ; $6ef8: $13
    ld a, [hl]                                    ; $6ef9: $7e
    ld [hl], d                                    ; $6efa: $72
    or $e8                                        ; $6efb: $f6 $e8
    ld d, d                                       ; $6efd: $52
    ei                                            ; $6efe: $fb
    call $f408                                    ; $6eff: $cd $08 $f4
    dec hl                                        ; $6f02: $2b
    cp [hl]                                       ; $6f03: $be
    cp b                                          ; $6f04: $b8
    ld d, h                                       ; $6f05: $54
    ret nc                                        ; $6f06: $d0

    or $4d                                        ; $6f07: $f6 $4d
    call nc, $87c5                                ; $6f09: $d4 $c5 $87
    ld h, d                                       ; $6f0c: $62
    rst $00                                       ; $6f0d: $c7
    ld sp, hl                                     ; $6f0e: $f9
    sub c                                         ; $6f0f: $91
    add d                                         ; $6f10: $82

Call_045_6f11:
Jump_045_6f11:
    ld c, d                                       ; $6f11: $4a
    ld l, a                                       ; $6f12: $6f
    and a                                         ; $6f13: $a7
    ld c, e                                       ; $6f14: $4b
    db $dd                                        ; $6f15: $dd
    ld h, c                                       ; $6f16: $61
    add [hl]                                      ; $6f17: $86
    push af                                       ; $6f18: $f5
    xor c                                         ; $6f19: $a9
    dec bc                                        ; $6f1a: $0b
    adc e                                         ; $6f1b: $8b
    cp d                                          ; $6f1c: $ba
    ld l, d                                       ; $6f1d: $6a
    ld a, [bc]                                    ; $6f1e: $0a
    db $db                                        ; $6f1f: $db
    dec de                                        ; $6f20: $1b
    ld e, a                                       ; $6f21: $5f
    sbc h                                         ; $6f22: $9c
    rra                                           ; $6f23: $1f
    sub c                                         ; $6f24: $91
    sub c                                         ; $6f25: $91
    ld [$9b65], sp                                ; $6f26: $08 $65 $9b
    ret c                                         ; $6f29: $d8

    adc e                                         ; $6f2a: $8b
    dec de                                        ; $6f2b: $1b
    add e                                         ; $6f2c: $83
    ld l, $70                                     ; $6f2d: $2e $70
    ld l, [hl]                                    ; $6f2f: $6e
    ld hl, sp+$42                                 ; $6f30: $f8 $42
    push hl                                       ; $6f32: $e5
    db $e3                                        ; $6f33: $e3
    and [hl]                                      ; $6f34: $a6
    jp nc, Jump_000_3c9f                          ; $6f35: $d2 $9f $3c

    pop af                                        ; $6f38: $f1
    ld b, [hl]                                    ; $6f39: $46
    db $10                                        ; $6f3a: $10
    ld [hl], l                                    ; $6f3b: $75
    pop af                                        ; $6f3c: $f1
    sbc [hl]                                      ; $6f3d: $9e
    ld b, [hl]                                    ; $6f3e: $46
    db $ed                                        ; $6f3f: $ed
    inc b                                         ; $6f40: $04
    ld e, c                                       ; $6f41: $59
    ld h, b                                       ; $6f42: $60
    cp c                                          ; $6f43: $b9
    dec e                                         ; $6f44: $1d
    and [hl]                                      ; $6f45: $a6
    sub e                                         ; $6f46: $93
    ld [hl], $67                                  ; $6f47: $36 $67
    rst $18                                       ; $6f49: $df
    and h                                         ; $6f4a: $a4
    ld h, e                                       ; $6f4b: $63
    cp e                                          ; $6f4c: $bb
    ld h, l                                       ; $6f4d: $65
    sbc a                                         ; $6f4e: $9f
    and e                                         ; $6f4f: $a3
    and l                                         ; $6f50: $a5
    ld c, a                                       ; $6f51: $4f
    daa                                           ; $6f52: $27
    push hl                                       ; $6f53: $e5
    rst $30                                       ; $6f54: $f7
    rst $00                                       ; $6f55: $c7
    add a                                         ; $6f56: $87
    cp [hl]                                       ; $6f57: $be
    xor b                                         ; $6f58: $a8
    add hl, bc                                    ; $6f59: $09
    ld e, a                                       ; $6f5a: $5f
    ret c                                         ; $6f5b: $d8

    add [hl]                                      ; $6f5c: $86

jr_045_6f5d:
    cp h                                          ; $6f5d: $bc
    xor b                                         ; $6f5e: $a8
    adc e                                         ; $6f5f: $8b
    rst $10                                       ; $6f60: $d7
    ld b, [hl]                                    ; $6f61: $46
    jr jr_045_6f5d                                ; $6f62: $18 $f9

    ld d, b                                       ; $6f64: $50
    adc c                                         ; $6f65: $89
    ld h, [hl]                                    ; $6f66: $66
    cpl                                           ; $6f67: $2f
    ld a, [bc]                                    ; $6f68: $0a
    ld e, c                                       ; $6f69: $59
    ld h, b                                       ; $6f6a: $60
    rst $20                                       ; $6f6b: $e7
    ld h, [hl]                                    ; $6f6c: $66
    ld c, a                                       ; $6f6d: $4f
    cp a                                          ; $6f6e: $bf
    ld [bc], a                                    ; $6f6f: $02
    ld [hl], l                                    ; $6f70: $75
    ld hl, $c9e5                                  ; $6f71: $21 $e5 $c9
    adc c                                         ; $6f74: $89
    di                                            ; $6f75: $f3
    inc hl                                        ; $6f76: $23
    sbc $29                                       ; $6f77: $de $29
    push hl                                       ; $6f79: $e5
    or d                                          ; $6f7a: $b2
    ld e, h                                       ; $6f7b: $5c
    inc bc                                        ; $6f7c: $03
    ld a, c                                       ; $6f7d: $79
    db $fd                                        ; $6f7e: $fd
    ld l, l                                       ; $6f7f: $6d
    call nz, $448d                                ; $6f80: $c4 $8d $44
    db $db                                        ; $6f83: $db
    sub a                                         ; $6f84: $97
    inc de                                        ; $6f85: $13
    rst $30                                       ; $6f86: $f7
    jp nz, Jump_045_5728                          ; $6f87: $c2 $28 $57

    sbc l                                         ; $6f8a: $9d
    ld l, $75                                     ; $6f8b: $2e $75
    add a                                         ; $6f8d: $87
    add hl, de                                    ; $6f8e: $19
    sub $a7                                       ; $6f8f: $d6 $a7
    cp l                                          ; $6f91: $bd
    rrca                                          ; $6f92: $0f
    db $d3                                        ; $6f93: $d3
    adc a                                         ; $6f94: $8f
    add d                                         ; $6f95: $82
    ld a, [hl]                                    ; $6f96: $7e
    ld [hl], $88                                  ; $6f97: $36 $88
    call nz, Call_045_754f                        ; $6f99: $c4 $4f $75
    ld [hl], c                                    ; $6f9c: $71
    ld d, e                                       ; $6f9d: $53
    ld d, l                                       ; $6f9e: $55
    ld [hl], h                                    ; $6f9f: $74
    ld c, b                                       ; $6fa0: $48
    db $f4                                        ; $6fa1: $f4
    ld l, c                                       ; $6fa2: $69
    jp $e1b9                                      ; $6fa3: $c3 $b9 $e1


    dec bc                                        ; $6fa6: $0b
    sub l                                         ; $6fa7: $95
    adc a                                         ; $6fa8: $8f
    sbc e                                         ; $6fa9: $9b
    ld c, d                                       ; $6faa: $4a
    ld a, a                                       ; $6fab: $7f
    ld a, [c]                                     ; $6fac: $f2
    call nz, Call_045_411b                        ; $6fad: $c4 $1b $41
    call nc, Call_045_7bc5                        ; $6fb0: $d4 $c5 $7b
    ld a, [de]                                    ; $6fb3: $1a
    or l                                          ; $6fb4: $b5
    inc de                                        ; $6fb5: $13
    ld h, h                                       ; $6fb6: $64
    add c                                         ; $6fb7: $81
    push hl                                       ; $6fb8: $e5
    halt                                          ; $6fb9: $76
    sbc b                                         ; $6fba: $98
    ld c, [hl]                                    ; $6fbb: $4e
    jp c, Jump_045_7d9c                           ; $6fbc: $da $9c $7d

    sub e                                         ; $6fbf: $93
    adc [hl]                                      ; $6fc0: $8e
    db $ed                                        ; $6fc1: $ed
    sub [hl]                                      ; $6fc2: $96
    ld a, l                                       ; $6fc3: $7d
    adc [hl]                                      ; $6fc4: $8e
    sub [hl]                                      ; $6fc5: $96
    ld a, $9d                                     ; $6fc6: $3e $9d
    sub h                                         ; $6fc8: $94
    rst $18                                       ; $6fc9: $df
    rra                                           ; $6fca: $1f
    rra                                           ; $6fcb: $1f
    ld a, [$26a2]                                 ; $6fcc: $fa $a2 $26
    ld a, h                                       ; $6fcf: $7c
    ld h, c                                       ; $6fd0: $61
    dec de                                        ; $6fd1: $1b
    ld a, [c]                                     ; $6fd2: $f2
    and d                                         ; $6fd3: $a2
    ld l, $5e                                     ; $6fd4: $2e $5e
    dec de                                        ; $6fd6: $1b
    ld h, c                                       ; $6fd7: $61
    db $e4                                        ; $6fd8: $e4
    ld b, e                                       ; $6fd9: $43
    dec h                                         ; $6fda: $25
    sbc d                                         ; $6fdb: $9a
    cp l                                          ; $6fdc: $bd
    jr z, jr_045_7043                             ; $6fdd: $28 $64

    add c                                         ; $6fdf: $81
    sbc l                                         ; $6fe0: $9d
    sbc e                                         ; $6fe1: $9b
    dec a                                         ; $6fe2: $3d
    db $fd                                        ; $6fe3: $fd
    ld a, [bc]                                    ; $6fe4: $0a
    ld l, l                                       ; $6fe5: $6d
    jr c, jr_045_701f                             ; $6fe6: $38 $37

    reti                                          ; $6fe8: $d9


Jump_045_6fe9:
    rra                                           ; $6fe9: $1f
    and [hl]                                      ; $6fea: $a6
    rra                                           ; $6feb: $1f
    and c                                         ; $6fec: $a1
    ld b, e                                       ; $6fed: $43
    ld a, [hl]                                    ; $6fee: $7e
    call c, $fa54                                 ; $6fef: $dc $54 $fa
    sub e                                         ; $6ff2: $93
    daa                                           ; $6ff3: $27
    sbc $08                                       ; $6ff4: $de $08
    and d                                         ; $6ff6: $a2
    ld l, $de                                     ; $6ff7: $2e $de
    db $d3                                        ; $6ff9: $d3
    xor b                                         ; $6ffa: $a8
    sbc l                                         ; $6ffb: $9d
    ld b, b                                       ; $6ffc: $40
    sub a                                         ; $6ffd: $97
    jp c, Jump_045_466f                           ; $6ffe: $da $6f $46

    and b                                         ; $7001: $a0
    ld e, a                                       ; $7002: $5f
    ld bc, $386d                                  ; $7003: $01 $6d $38
    scf                                           ; $7006: $37
    and c                                         ; $7007: $a1
    ld a, [c]                                     ; $7008: $f2
    ld de, $e43a                                  ; $7009: $11 $3a $e4
    rst $00                                       ; $700c: $c7
    ld c, l                                       ; $700d: $4d
    and l                                         ; $700e: $a5
    ccf                                           ; $700f: $3f
    ld a, c                                       ; $7010: $79
    ld [c], a                                     ; $7011: $e2
    adc l                                         ; $7012: $8d
    jr nz, @-$14                                  ; $7013: $20 $ea

    ld [c], a                                     ; $7015: $e2
    dec a                                         ; $7016: $3d
    adc l                                         ; $7017: $8d
    jp c, Jump_045_7409                           ; $7018: $da $09 $74

    ld sp, hl                                     ; $701b: $f9
    ld h, l                                       ; $701c: $65
    add c                                         ; $701d: $81
    ld a, h                                       ; $701e: $7c

jr_045_701f:
    sbc $ec                                       ; $701f: $de $ec
    ret z                                         ; $7021: $c8

    rst $20                                       ; $7022: $e7
    adc a                                         ; $7023: $8f
    dec de                                        ; $7024: $1b
    ret                                           ; $7025: $c9


    or $a0                                        ; $7026: $f6 $a0
    sbc e                                         ; $7028: $9b
    xor a                                         ; $7029: $af
    sbc d                                         ; $702a: $9a
    ld l, b                                       ; $702b: $68
    call nc, $fd3b                                ; $702c: $d4 $3b $fd
    ld a, [bc]                                    ; $702f: $0a
    sbc l                                         ; $7030: $9d
    ret z                                         ; $7031: $c8

    ld b, a                                       ; $7032: $47
    add sp, -$70                                  ; $7033: $e8 $90
    rra                                           ; $7035: $1f
    scf                                           ; $7036: $37
    sub l                                         ; $7037: $95
    cp $e4                                        ; $7038: $fe $e4
    adc c                                         ; $703a: $89
    scf                                           ; $703b: $37
    add d                                         ; $703c: $82
    xor b                                         ; $703d: $a8
    adc e                                         ; $703e: $8b
    rst $30                                       ; $703f: $f7
    inc [hl]                                      ; $7040: $34
    ld l, d                                       ; $7041: $6a
    daa                                           ; $7042: $27

jr_045_7043:
    ret nc                                        ; $7043: $d0

    and l                                         ; $7044: $a5
    or $9b                                        ; $7045: $f6 $9b
    ld de, $e3e8                                  ; $7047: $11 $e8 $e3
    cp e                                          ; $704a: $bb
    ret nz                                        ; $704b: $c0

    ld h, $ce                                     ; $704c: $26 $ce
    adc a                                         ; $704e: $8f
    sub h                                         ; $704f: $94
    ei                                            ; $7050: $fb
    ret nz                                        ; $7051: $c0

    db $eb                                        ; $7052: $eb
    dec a                                         ; $7053: $3d
    rst $30                                       ; $7054: $f7
    ld c, $fd                                     ; $7055: $0e $fd
    ld a, [bc]                                    ; $7057: $0a
    xor l                                         ; $7058: $ad
    ld l, $0b                                     ; $7059: $2e $0b
    db $e4                                        ; $705b: $e4
    ld [hl], e                                    ; $705c: $73
    ld [de], a                                    ; $705d: $12
    ld b, [hl]                                    ; $705e: $46
    or l                                          ; $705f: $b5
    ld c, h                                       ; $7060: $4c
    ld d, $58                                     ; $7061: $16 $58
    or $47                                        ; $7063: $f6 $47
    add sp, -$70                                  ; $7065: $e8 $90
    rra                                           ; $7067: $1f
    scf                                           ; $7068: $37
    sub l                                         ; $7069: $95
    cp $e4                                        ; $706a: $fe $e4
    adc c                                         ; $706c: $89
    scf                                           ; $706d: $37
    add d                                         ; $706e: $82
    xor b                                         ; $706f: $a8
    adc e                                         ; $7070: $8b
    rst $30                                       ; $7071: $f7
    inc [hl]                                      ; $7072: $34
    ld l, d                                       ; $7073: $6a
    daa                                           ; $7074: $27
    ret nc                                        ; $7075: $d0

    and l                                         ; $7076: $a5
    or $9b                                        ; $7077: $f6 $9b
    ld de, $d3e8                                  ; $7079: $11 $e8 $d3
    cp $e5                                        ; $707c: $fe $e5
    xor c                                         ; $707e: $a9
    ld b, [hl]                                    ; $707f: $46
    ld l, l                                       ; $7080: $6d
    ld [c], a                                     ; $7081: $e2
    db $fc                                        ; $7082: $fc
    ret z                                         ; $7083: $c8

    ld [hl-], a                                   ; $7084: $32
    and l                                         ; $7085: $a5
    ld a, h                                       ; $7086: $7c
    ld d, b                                       ; $7087: $50
    ld a, [bc]                                    ; $7088: $0a
    adc h                                         ; $7089: $8c
    cpl                                           ; $708a: $2f
    sub h                                         ; $708b: $94
    ld l, a                                       ; $708c: $6f
    and e                                         ; $708d: $a3
    ld e, a                                       ; $708e: $5f
    ld bc, $386d                                  ; $708f: $01 $6d $38
    scf                                           ; $7092: $37
    ld a, h                                       ; $7093: $7c
    and c                                         ; $7094: $a1
    ld [c], a                                     ; $7095: $e2
    pop af                                        ; $7096: $f1
    sbc e                                         ; $7097: $9b
    db $ed                                        ; $7098: $ed
    db $e3                                        ; $7099: $e3
    and [hl]                                      ; $709a: $a6
    jp nc, Jump_000_3c9f                          ; $709b: $d2 $9f $3c

    pop af                                        ; $709e: $f1
    ld b, [hl]                                    ; $709f: $46
    db $10                                        ; $70a0: $10
    ld [hl], l                                    ; $70a1: $75
    pop af                                        ; $70a2: $f1
    sbc [hl]                                      ; $70a3: $9e
    ld b, [hl]                                    ; $70a4: $46
    db $ed                                        ; $70a5: $ed
    inc b                                         ; $70a6: $04
    cp d                                          ; $70a7: $ba
    call nc, $337e                                ; $70a8: $d4 $7e $33
    ld [bc], a                                    ; $70ab: $02
    ld a, l                                       ; $70ac: $7d
    ld a, h                                       ; $70ad: $7c
    rla                                           ; $70ae: $17
    ret c                                         ; $70af: $d8

    call nz, Call_000_11f9                        ; $70b0: $c4 $f9 $11
    add hl, de                                    ; $70b3: $19
    add hl, bc                                    ; $70b4: $09
    inc hl                                        ; $70b5: $23
    add d                                         ; $70b6: $82
    sub h                                         ; $70b7: $94
    ld a, e                                       ; $70b8: $7b
    sbc c                                         ; $70b9: $99
    cp b                                          ; $70ba: $b8
    ld e, a                                       ; $70bb: $5f
    adc [hl]                                      ; $70bc: $8e
    sbc a                                         ; $70bd: $9f
    ld de, $1175                                  ; $70be: $11 $75 $11
    ld l, b                                       ; $70c1: $68
    rst $08                                       ; $70c2: $cf
    ld b, a                                       ; $70c3: $47
    and d                                         ; $70c4: $a2
    ld e, a                                       ; $70c5: $5f
    ld bc, $bfbe                                  ; $70c6: $01 $be $bf
    add b                                         ; $70c9: $80
    sbc h                                         ; $70ca: $9c
    jr c, jr_045_710c                             ; $70cb: $38 $3f

    ld d, d                                       ; $70cd: $52
    sbc $50                                       ; $70ce: $de $50
    ld hl, sp+$42                                 ; $70d0: $f8 $42
    ld b, d                                       ; $70d2: $42
    jr z, jr_045_7124                             ; $70d3: $28 $4f

    ld a, $0e                                     ; $70d5: $3e $0e
    and $de                                       ; $70d7: $e6 $de
    db $10                                        ; $70d9: $10
    ld a, [hl+]                                   ; $70da: $2a
    rra                                           ; $70db: $1f
    and c                                         ; $70dc: $a1
    ld b, e                                       ; $70dd: $43
    ld a, [hl]                                    ; $70de: $7e
    call c, $fa54                                 ; $70df: $dc $54 $fa
    sub e                                         ; $70e2: $93
    daa                                           ; $70e3: $27
    sbc $08                                       ; $70e4: $de $08
    and d                                         ; $70e6: $a2
    ld l, $de                                     ; $70e7: $2e $de
    db $d3                                        ; $70e9: $d3
    xor b                                         ; $70ea: $a8
    sbc l                                         ; $70eb: $9d
    ld b, b                                       ; $70ec: $40
    sub a                                         ; $70ed: $97
    jp c, Jump_045_466f                           ; $70ee: $da $6f $46

jr_045_70f1:
    and b                                         ; $70f1: $a0
    ld e, a                                       ; $70f2: $5f
    ld bc, $386d                                  ; $70f3: $01 $6d $38
    scf                                           ; $70f6: $37
    ld a, h                                       ; $70f7: $7c
    reti                                          ; $70f8: $d9


    rra                                           ; $70f9: $1f
    and [hl]                                      ; $70fa: $a6
    rra                                           ; $70fb: $1f
    and c                                         ; $70fc: $a1
    ld b, e                                       ; $70fd: $43
    ld a, [hl]                                    ; $70fe: $7e
    call c, $fa54                                 ; $70ff: $dc $54 $fa
    sub e                                         ; $7102: $93
    daa                                           ; $7103: $27
    sbc $08                                       ; $7104: $de $08
    and d                                         ; $7106: $a2
    ld l, $de                                     ; $7107: $2e $de
    db $d3                                        ; $7109: $d3
    xor b                                         ; $710a: $a8
    sbc l                                         ; $710b: $9d

jr_045_710c:
    and b                                         ; $710c: $a0
    ld h, [hl]                                    ; $710d: $66
    ld a, [hl-]                                   ; $710e: $3a
    ret nc                                        ; $710f: $d0

    db $e4                                        ; $7110: $e4
    ld d, d                                       ; $7111: $52
    cp l                                          ; $7112: $bd
    ld c, h                                       ; $7113: $4c
    xor b                                         ; $7114: $a8
    add h                                         ; $7115: $84
    inc a                                         ; $7116: $3c
    ld [hl], c                                    ; $7117: $71
    rst $00                                       ; $7118: $c7
    ld h, e                                       ; $7119: $63
    xor b                                         ; $711a: $a8
    cp c                                          ; $711b: $b9
    ld [bc], a                                    ; $711c: $02
    ld l, l                                       ; $711d: $6d
    jr c, jr_045_7157                             ; $711e: $38 $37

    ld a, h                                       ; $7120: $7c
    reti                                          ; $7121: $d9


    rra                                           ; $7122: $1f
    and [hl]                                      ; $7123: $a6

jr_045_7124:
    rra                                           ; $7124: $1f
    and c                                         ; $7125: $a1
    ld b, e                                       ; $7126: $43
    ld a, [hl]                                    ; $7127: $7e
    call c, $fa54                                 ; $7128: $dc $54 $fa
    sub e                                         ; $712b: $93
    daa                                           ; $712c: $27
    sbc $08                                       ; $712d: $de $08
    and d                                         ; $712f: $a2
    ld l, $de                                     ; $7130: $2e $de
    db $d3                                        ; $7132: $d3
    xor b                                         ; $7133: $a8
    sbc l                                         ; $7134: $9d
    and b                                         ; $7135: $a0
    ld h, [hl]                                    ; $7136: $66
    ld [$648c], a                                 ; $7137: $ea $8c $64
    add c                                         ; $713a: $81
    add hl, hl                                    ; $713b: $29
    jr @+$61                                      ; $713c: $18 $5f

    inc d                                         ; $713e: $14
    or l                                          ; $713f: $b5
    rla                                           ; $7140: $17
    ld b, [hl]                                    ; $7141: $46
    or $a7                                        ; $7142: $f6 $a7
    ld b, d                                       ; $7144: $42
    ld [hl], c                                    ; $7145: $71
    or e                                          ; $7146: $b3
    sbc a                                         ; $7147: $9f
    cp a                                          ; $7148: $bf
    and $0a                                       ; $7149: $e6 $0a
    cp [hl]                                       ; $714b: $be
    dec bc                                        ; $714c: $0b
    ld l, h                                       ; $714d: $6c
    ld [c], a                                     ; $714e: $e2
    db $fc                                        ; $714f: $fc
    ret z                                         ; $7150: $c8

    db $ed                                        ; $7151: $ed
    jr nc, jr_045_70f1                            ; $7152: $30 $9d

    ld d, h                                       ; $7154: $54
    ld c, a                                       ; $7155: $4f
    inc h                                         ; $7156: $24

jr_045_7157:
    ld c, [hl]                                    ; $7157: $4e
    jp z, Jump_045_5e7d                           ; $7158: $ca $7d $5e

    ld b, c                                       ; $715b: $41
    and e                                         ; $715c: $a3
    rst $08                                       ; $715d: $cf
    sub e                                         ; $715e: $93
    adc a                                         ; $715f: $8f
    rrca                                          ; $7160: $0f
    ld b, l                                       ; $7161: $45
    pop hl                                        ; $7162: $e1
    adc a                                         ; $7163: $8f
    sbc e                                         ; $7164: $9b
    ld c, d                                       ; $7165: $4a
    ld a, a                                       ; $7166: $7f
    ld a, [c]                                     ; $7167: $f2
    call nz, Call_045_411b                        ; $7168: $c4 $1b $41
    call nc, Call_045_7bc5                        ; $716b: $d4 $c5 $7b
    ld a, [de]                                    ; $716e: $1a
    or l                                          ; $716f: $b5
    inc de                                        ; $7170: $13
    add sp, $52                                   ; $7171: $e8 $52
    ei                                            ; $7173: $fb
    call $f408                                    ; $7174: $cd $08 $f4
    dec hl                                        ; $7177: $2b
    cp [hl]                                       ; $7178: $be
    adc b                                         ; $7179: $88
    ld a, [de]                                    ; $717a: $1a
    ld [de], a                                    ; $717b: $12
    and l                                         ; $717c: $a5
    ld e, h                                       ; $717d: $5c
    adc d                                         ; $717e: $8a
    sbc e                                         ; $717f: $9b
    xor d                                         ; $7180: $aa
    ld [bc], a                                    ; $7181: $02
    inc sp                                        ; $7182: $33
    inc c                                         ; $7183: $0c
    cp d                                          ; $7184: $ba
    xor b                                         ; $7185: $a8
    inc sp                                        ; $7186: $33
    ld e, h                                       ; $7187: $5c
    sbc h                                         ; $7188: $9c
    rra                                           ; $7189: $1f

jr_045_718a:
    pop af                                        ; $718a: $f1
    and c                                         ; $718b: $a1
    jr z, jr_045_718a                             ; $718c: $28 $fc

    xor c                                         ; $718e: $a9
    ld de, $1f2a                                  ; $718f: $11 $2a $1f
    dec a                                         ; $7192: $3d
    dec e                                         ; $7193: $1d
    ld sp, hl                                     ; $7194: $f9
    cp b                                          ; $7195: $b8
    xor c                                         ; $7196: $a9
    db $f4                                        ; $7197: $f4
    daa                                           ; $7198: $27
    ld c, a                                       ; $7199: $4f
    cp h                                          ; $719a: $bc
    ld de, $5d44                                  ; $719b: $11 $44 $5d
    cp h                                          ; $719e: $bc
    and a                                         ; $719f: $a7
    ld d, c                                       ; $71a0: $51
    dec sp                                        ; $71a1: $3b
    add c                                         ; $71a2: $81
    ld l, $b5                                     ; $71a3: $2e $b5
    rst $18                                       ; $71a5: $df
    adc h                                         ; $71a6: $8c
    ld b, b                                       ; $71a7: $40
    cp a                                          ; $71a8: $bf
    ld [bc], a                                    ; $71a9: $02
    dec e                                         ; $71aa: $1d
    ld e, a                                       ; $71ab: $5f
    ld c, [hl]                                    ; $71ac: $4e
    cp h                                          ; $71ad: $bc
    ld h, e                                       ; $71ae: $63
    dec d                                         ; $71af: $15
    inc c                                         ; $71b0: $0c
    push de                                       ; $71b1: $d5
    ld b, h                                       ; $71b2: $44
    ld b, [hl]                                    ; $71b3: $46
    ld a, [c]                                     ; $71b4: $f2
    rlc d                                         ; $71b5: $cb $02
    ld sp, hl                                     ; $71b7: $f9
    cp h                                          ; $71b8: $bc
    reti                                          ; $71b9: $d9


    sub c                                         ; $71ba: $91
    or b                                          ; $71bb: $b0
    ld a, d                                       ; $71bc: $7a
    ld [c], a                                     ; $71bd: $e2
    ld b, e                                       ; $71be: $43
    ld a, a                                       ; $71bf: $7f
    dec sp                                        ; $71c0: $3b
    ccf                                           ; $71c1: $3f
    ld [hl+], a                                   ; $71c2: $22
    ld [hl], h                                    ; $71c3: $74
    ret z                                         ; $71c4: $c8

    adc a                                         ; $71c5: $8f

Call_045_71c6:
    sbc e                                         ; $71c6: $9b
    ld c, d                                       ; $71c7: $4a
    ld a, a                                       ; $71c8: $7f
    ld a, [c]                                     ; $71c9: $f2
    call nz, Call_045_411b                        ; $71ca: $c4 $1b $41
    cp a                                          ; $71cd: $bf
    ld [bc], a                                    ; $71ce: $02
    ld [hl], l                                    ; $71cf: $75
    ld h, c                                       ; $71d0: $61
    cp c                                          ; $71d1: $b9
    sbc l                                         ; $71d2: $9d
    ld l, d                                       ; $71d3: $6a
    ld a, [hl+]                                   ; $71d4: $2a
    ld [$644f], sp                                ; $71d5: $08 $4f $64
    inc h                                         ; $71d8: $24
    cp $c9                                        ; $71d9: $fe $c9
    ld l, a                                       ; $71db: $6f
    or [hl]                                       ; $71dc: $b6
    pop de                                        ; $71dd: $d1
    and l                                         ; $71de: $a5
    or $9b                                        ; $71df: $f6 $9b
    ld de, $57e8                                  ; $71e1: $11 $e8 $57
    ld [hl], l                                    ; $71e4: $75
    ld c, $c2                                     ; $71e5: $0e $c2
    adc b                                         ; $71e7: $88
    sbc e                                         ; $71e8: $9b
    ld c, d                                       ; $71e9: $4a
    ld a, a                                       ; $71ea: $7f
    ld a, [c]                                     ; $71eb: $f2
    call nz, $b91b                                ; $71ec: $c4 $1b $b9
    inc l                                         ; $71ef: $2c
    or b                                          ; $71f0: $b0
    call c, Call_000_354e                         ; $71f1: $dc $4e $35
    dec d                                         ; $71f4: $15
    add h                                         ; $71f5: $84
    ld b, a                                       ; $71f6: $47
    sub a                                         ; $71f7: $97
    jp c, Jump_045_466f                           ; $71f8: $da $6f $46

    and b                                         ; $71fb: $a0
    ld e, a                                       ; $71fc: $5f
    ld bc, $dd1d                                  ; $71fd: $01 $1d $dd
    ld a, [c]                                     ; $7200: $f2
    and l                                         ; $7201: $a5
    ld a, h                                       ; $7202: $7c

jr_045_7203:
    sub [hl]                                      ; $7203: $96
    ld l, e                                       ; $7204: $6b
    jr nz, jr_045_7203                            ; $7205: $20 $fc

    and [hl]                                      ; $7207: $a6
    ld c, [hl]                                    ; $7208: $4e
    sub a                                         ; $7209: $97
    jp c, Jump_045_466f                           ; $720a: $da $6f $46

    and b                                         ; $720d: $a0
    ld c, a                                       ; $720e: $4f
    db $dd                                        ; $720f: $dd
    ld h, c                                       ; $7210: $61
    add e                                         ; $7211: $83
    ld e, [hl]                                    ; $7212: $5e
    rrca                                          ; $7213: $0f
    sbc e                                         ; $7214: $9b
    cp h                                          ; $7215: $bc
    reti                                          ; $7216: $d9


    sub c                                         ; $7217: $91
    ld l, a                                       ; $7218: $6f
    adc b                                         ; $7219: $88
    ret nc                                        ; $721a: $d0

    ld hl, $3711                                  ; $721b: $21 $11 $37
    sub l                                         ; $721e: $95
    cp $e4                                        ; $721f: $fe $e4
    adc c                                         ; $7221: $89
    scf                                           ; $7222: $37
    ld [hl], d                                    ; $7223: $72
    ld d, c                                       ; $7224: $51
    rra                                           ; $7225: $1f
    ld a, [hl+]                                   ; $7226: $2a
    xor c                                         ; $7227: $a9
    and [hl]                                      ; $7228: $a6
    add d                                         ; $7229: $82
    ldh a, [$e4]                                  ; $722a: $f0 $e4
    rst $30                                       ; $722c: $f7
    or $f8                                        ; $722d: $f6 $f8
    call $fd36                                    ; $722f: $cd $36 $fd
    ld a, [bc]                                    ; $7232: $0a
    or l                                          ; $7233: $b5
    ld e, e                                       ; $7234: $5b
    db $ed                                        ; $7235: $ed
    xor b                                         ; $7236: $a8
    and e                                         ; $7237: $a3
    ld l, $52                                     ; $7238: $2e $52
    or a                                          ; $723a: $b7
    add e                                         ; $723b: $83
    adc [hl]                                      ; $723c: $8e
    dec sp                                        ; $723d: $3b
    ld l, [hl]                                    ; $723e: $6e
    and e                                         ; $723f: $a3
    inc hl                                        ; $7240: $23
    ld e, l                                       ; $7241: $5d
    sbc h                                         ; $7242: $9c
    rst $38                                       ; $7243: $ff
    db $ed                                        ; $7244: $ed

jr_045_7245:
    dec e                                         ; $7245: $1d
    jp Jump_000_2e8a                              ; $7246: $c3 $8a $2e


    ld a, [c]                                     ; $7249: $f2
    dec d                                         ; $724a: $15
    ld c, d                                       ; $724b: $4a
    ld e, [hl]                                    ; $724c: $5e
    ld d, h                                       ; $724d: $54
    inc c                                         ; $724e: $0c
    ei                                            ; $724f: $fb
    add hl, de                                    ; $7250: $19
    ld a, [hl+]                                   ; $7251: $2a
    daa                                           ; $7252: $27
    ld [$7ddc], a                                 ; $7253: $ea $dc $7d
    sbc $10                                       ; $7256: $de $10
    or [hl]                                       ; $7258: $b6
    ld d, a                                       ; $7259: $57
    xor b                                         ; $725a: $a8
    sbc $ba                                       ; $725b: $de $ba
    dec l                                         ; $725d: $2d
    add hl, de                                    ; $725e: $19
    ld l, a                                       ; $725f: $6f

jr_045_7260:
    ld e, [hl]                                    ; $7260: $5e
    ld d, h                                       ; $7261: $54
    ld [$b3a5], sp                                ; $7262: $08 $a5 $b3
    scf                                           ; $7265: $37
    add c                                         ; $7266: $81
    and l                                         ; $7267: $a5
    dec [hl]                                      ; $7268: $35
    sbc e                                         ; $7269: $9b
    jp nc, $aba7                                  ; $726a: $d2 $a7 $ab

    add [hl]                                      ; $726d: $86
    ld c, d                                       ; $726e: $4a
    db $e3                                        ; $726f: $e3
    ld c, l                                       ; $7270: $4d
    inc [hl]                                      ; $7271: $34
    cp h                                          ; $7272: $bc
    ld [bc], a                                    ; $7273: $02
    or l                                          ; $7274: $b5
    rst $38                                       ; $7275: $ff
    ld h, d                                       ; $7276: $62
    rst $20                                       ; $7277: $e7
    ld b, b                                       ; $7278: $40
    ld d, d                                       ; $7279: $52
    sbc [hl]                                      ; $727a: $9e
    db $ec                                        ; $727b: $ec
    rrca                                          ; $727c: $0f
    db $d3                                        ; $727d: $d3
    adc a                                         ; $727e: $8f
    cp $9d                                        ; $727f: $fe $9d
    di                                            ; $7281: $f3
    add e                                         ; $7282: $83
    ld sp, hl                                     ; $7283: $f9
    ld d, e                                       ; $7284: $53
    cp l                                          ; $7285: $bd
    halt                                          ; $7286: $76
    xor $75                                       ; $7287: $ee $75
    reti                                          ; $7289: $d9


    sub e                                         ; $728a: $93
    jp nz, Jump_000_2b46                          ; $728b: $c2 $46 $2b

    ld [$964f], sp                                ; $728e: $08 $4f $96
    ld l, e                                       ; $7291: $6b
    jr nz, jr_045_72eb                            ; $7292: $20 $57

    dec l                                         ; $7294: $2d
    ld h, e                                       ; $7295: $63
    db $fc                                        ; $7296: $fc
    jp nz, Jump_000_02c8                          ; $7297: $c2 $c8 $02

    bit 5, b                                      ; $729a: $cb $68
    ld [hl], d                                    ; $729c: $72
    xor c                                         ; $729d: $a9
    ld e, [hl]                                    ; $729e: $5e
    sbc e                                         ; $729f: $9b
    jr nz, jr_045_7245                            ; $72a0: $20 $a3

    ret                                           ; $72a2: $c9


    and l                                         ; $72a3: $a5
    or b                                          ; $72a4: $b0
    ld b, c                                       ; $72a5: $41
    ei                                            ; $72a6: $fb
    sbc d                                         ; $72a7: $9a
    jp hl                                         ; $72a8: $e9


    ret nz                                        ; $72a9: $c0

    ld a, $cb                                     ; $72aa: $3e $cb
    or b                                          ; $72ac: $b0
    db $fd                                        ; $72ad: $fd
    push hl                                       ; $72ae: $e5
    db $e4                                        ; $72af: $e4
    adc b                                         ; $72b0: $88
    rst $30                                       ; $72b1: $f7
    add [hl]                                      ; $72b2: $86
    ld a, h                                       ; $72b3: $7c
    or $8b                                        ; $72b4: $f6 $8b
    cp e                                          ; $72b6: $bb
    scf                                           ; $72b7: $37
    db $e4                                        ; $72b8: $e4
    ld [hl+], a                                   ; $72b9: $22
    or h                                          ; $72ba: $b4
    add d                                         ; $72bb: $82
    ld c, l                                       ; $72bc: $4d
    cp c                                          ; $72bd: $b9
    sbc h                                         ; $72be: $9c
    cp b                                          ; $72bf: $b8
    rla                                           ; $72c0: $17
    ld b, [hl]                                    ; $72c1: $46
    cp c                                          ; $72c2: $b9
    ld [$fce2], a                                 ; $72c3: $ea $e2 $fc
    ret z                                         ; $72c6: $c8

    ld d, l                                       ; $72c7: $55
    rr e                                          ; $72c8: $cb $1b
    db $ec                                        ; $72ca: $ec
    xor a                                         ; $72cb: $af
    ld e, a                                       ; $72cc: $5f
    ld bc, $9e6d                                  ; $72cd: $01 $6d $9e
    db $fc                                        ; $72d0: $fc
    xor [hl]                                      ; $72d1: $ae
    jr nz, jr_045_7260                            ; $72d2: $20 $8c

    inc d                                         ; $72d4: $14
    ld e, h                                       ; $72d5: $5c
    jr nz, jr_045_7344                            ; $72d6: $20 $6c

    rst $08                                       ; $72d8: $cf
    inc de                                        ; $72d9: $13
    pop bc                                        ; $72da: $c1
    sbc $1f                                       ; $72db: $de $1f
    rst $30                                       ; $72dd: $f7
    dec d                                         ; $72de: $15
    db $ec                                        ; $72df: $ec
    and e                                         ; $72e0: $a3
    ld l, $e5                                     ; $72e1: $2e $e5
    inc e                                         ; $72e3: $1c
    dec [hl]                                      ; $72e4: $35
    db $10                                        ; $72e5: $10
    adc c                                         ; $72e6: $89
    rra                                           ; $72e7: $1f
    add l                                         ; $72e8: $85
    cp l                                          ; $72e9: $bd
    ccf                                           ; $72ea: $3f

jr_045_72eb:
    ld c, h                                       ; $72eb: $4c
    ccf                                           ; $72ec: $3f
    sbc $af                                       ; $72ed: $de $af
    ld c, [hl]                                    ; $72ef: $4e
    db $db                                        ; $72f0: $db
    rst $30                                       ; $72f1: $f7
    dec [hl]                                      ; $72f2: $35
    db $d3                                        ; $72f3: $d3
    ld [hl], d                                    ; $72f4: $72
    call nc, $bd79                                ; $72f5: $d4 $79 $bd
    rst $20                                       ; $72f8: $e7
    ld l, [hl]                                    ; $72f9: $6e
    inc hl                                        ; $72fa: $23
    adc $a0                                       ; $72fb: $ce $a0
    ld h, b                                       ; $72fd: $60
    adc b                                         ; $72fe: $88
    di                                            ; $72ff: $f3
    inc hl                                        ; $7300: $23
    adc e                                         ; $7301: $8b
    ld e, l                                       ; $7302: $5d
    push af                                       ; $7303: $f5
    sub c                                         ; $7304: $91
    sub c                                         ; $7305: $91
    ld [$7e52], sp                                ; $7306: $08 $52 $7e
    ld b, c                                       ; $7309: $41
    add hl, hl                                    ; $730a: $29
    rla                                           ; $730b: $17
    add hl, sp                                    ; $730c: $39
    ld [$e6a3], sp                                ; $730d: $08 $a3 $e6
    ld a, [bc]                                    ; $7310: $0a
    or l                                          ; $7311: $b5
    rst $38                                       ; $7312: $ff
    ld a, [c]                                     ; $7313: $f2
    adc $87                                       ; $7314: $ce $87
    ld e, [hl]                                    ; $7316: $5e
    pop hl                                        ; $7317: $e1
    rst $20                                       ; $7318: $e7
    add hl, bc                                    ; $7319: $09
    ld d, e                                       ; $731a: $53
    and $8b                                       ; $731b: $e6 $8b
    or [hl]                                       ; $731d: $b6
    cpl                                           ; $731e: $2f
    and e                                         ; $731f: $a3
    ld l, c                                       ; $7320: $69
    ld h, b                                       ; $7321: $60
    cp [hl]                                       ; $7322: $be
    inc l                                         ; $7323: $2c
    add [hl]                                      ; $7324: $86
    ld [bc], a                                    ; $7325: $02
    pop hl                                        ; $7326: $e1
    ld c, e                                       ; $7327: $4b
    and c                                         ; $7328: $a1
    ld a, e                                       ; $7329: $7b
    ld a, e                                       ; $732a: $7b
    ld h, b                                       ; $732b: $60
    ld b, e                                       ; $732c: $43
    call c, Call_045_6144                         ; $732d: $dc $44 $61
    and a                                         ; $7330: $a7
    ld a, d                                       ; $7331: $7a
    add [hl]                                      ; $7332: $86
    db $dd                                        ; $7333: $dd
    ld l, a                                       ; $7334: $6f
    and h                                         ; $7335: $a4
    cp b                                          ; $7336: $b8
    reti                                          ; $7337: $d9


    ld e, a                                       ; $7338: $5f
    ld hl, sp-$24                                 ; $7339: $f8 $dc
    call nc, $074c                                ; $733b: $d4 $4c $07
    or $59                                        ; $733e: $f6 $59
    add sp, $5c                                   ; $7340: $e8 $5c
    sub [hl]                                      ; $7342: $96
    scf                                           ; $7343: $37

jr_045_7344:
    ld a, $43                                     ; $7344: $3e $43
    ld d, $58                                     ; $7346: $16 $58
    ld l, d                                       ; $7348: $6a
    adc a                                         ; $7349: $8f
    sub $dd                                       ; $734a: $d6 $dd
    dec de                                        ; $734c: $1b
    sub a                                         ; $734d: $97
    sbc d                                         ; $734e: $9a
    dec hl                                        ; $734f: $2b
    or l                                          ; $7350: $b5
    rst $38                                       ; $7351: $ff
    ld d, d                                       ; $7352: $52
    call c, $f788                                 ; $7353: $dc $88 $f7
    sbc b                                         ; $7356: $98
    daa                                           ; $7357: $27
    ld a, $14                                     ; $7358: $3e $14
    dec sp                                        ; $735a: $3b
    adc e                                         ; $735b: $8b
    and c                                         ; $735c: $a1
    ld d, b                                       ; $735d: $50
    ld h, c                                       ; $735e: $61
    ld a, [hl-]                                   ; $735f: $3a
    ld h, l                                       ; $7360: $65
    and d                                         ; $7361: $a2
    ld l, $ad                                     ; $7362: $2e $ad
    db $db                                        ; $7364: $db
    cp e                                          ; $7365: $bb
    adc c                                         ; $7366: $89
    dec de                                        ; $7367: $1b
    adc c                                         ; $7368: $89
    or [hl]                                       ; $7369: $b6
    cpl                                           ; $736a: $2f
    daa                                           ; $736b: $27
    xor $85                                       ; $736c: $ee $85
    ld d, c                                       ; $736e: $51
    xor [hl]                                      ; $736f: $ae
    cp d                                          ; $7370: $ba
    sbc d                                         ; $7371: $9a
    ld l, c                                       ; $7372: $69
    add hl, sp                                    ; $7373: $39
    ei                                            ; $7374: $fb
    or e                                          ; $7375: $b3
    ld b, c                                       ; $7376: $41
    cp h                                          ; $7377: $bc
    ld de, $f9c4                                  ; $7378: $11 $c4 $f9
    sub c                                         ; $737b: $91
    ld [hl], d                                    ; $737c: $72
    xor c                                         ; $737d: $a9
    ld h, b                                       ; $737e: $60
    rst $00                                       ; $737f: $c7
    sbc a                                         ; $7380: $9f
    dec b                                         ; $7381: $05
    sub [hl]                                      ; $7382: $96
    daa                                           ; $7383: $27
    ld h, c                                       ; $7384: $61
    ld e, c                                       ; $7385: $59
    sbc $f6                                       ; $7386: $de $f6
    di                                            ; $7388: $f3
    db $e4                                        ; $7389: $e4
    inc h                                         ; $738a: $24
    ld a, $14                                     ; $738b: $3e $14
    dec sp                                        ; $738d: $3b
    push de                                       ; $738e: $d5
    xor b                                         ; $738f: $a8
    adc c                                         ; $7390: $89
    jp nz, $e985                                  ; $7391: $c2 $85 $e9

    ld e, h                                       ; $7394: $5c
    add h                                         ; $7395: $84
    ld c, $79                                     ; $7396: $0e $79
    ld sp, hl                                     ; $7398: $f9
    ld [$d5dc], a                                 ; $7399: $ea $dc $d5
    ld e, h                                       ; $739c: $5c
    ld bc, $b8be                                  ; $739d: $01 $be $b8
    ret c                                         ; $73a0: $d8

    pop de                                        ; $73a1: $d1
    ld [c], a                                     ; $73a2: $e2
    adc [hl]                                      ; $73a3: $8e
    daa                                           ; $73a4: $27
    xor a                                         ; $73a5: $af
    ld a, [c]                                     ; $73a6: $f2
    call z, Call_000_24f6                         ; $73a7: $cc $f6 $24
    xor h                                         ; $73aa: $ac
    cp h                                          ; $73ab: $bc
    ld hl, $b3b7                                  ; $73ac: $21 $b7 $b3
    ld e, a                                       ; $73af: $5f
    sbc e                                         ; $73b0: $9b
    jr nz, jr_045_73d2                            ; $73b1: $20 $1f

    or [hl]                                       ; $73b3: $b6
    ld hl, $90df                                  ; $73b4: $21 $df $90
    db $fd                                        ; $73b7: $fd
    add hl, hl                                    ; $73b8: $29
    ld l, h                                       ; $73b9: $6c
    xor a                                         ; $73ba: $af
    ld a, $cf                                     ; $73bb: $3e $cf
    ld l, h                                       ; $73bd: $6c
    ld c, a                                       ; $73be: $4f
    jp nz, $e4ca                                  ; $73bf: $c2 $ca $e4

    ld d, d                                       ; $73c2: $52
    add [hl]                                      ; $73c3: $86
    add hl, de                                    ; $73c4: $19

Jump_045_73c5:
    ld h, [hl]                                    ; $73c5: $66
    cpl                                           ; $73c6: $2f
    cp b                                          ; $73c7: $b8
    ld a, $1d                                     ; $73c8: $3e $1d
    ret c                                         ; $73ca: $d8

    and a                                         ; $73cb: $a7
    ldh [$e2], a                                  ; $73cc: $e0 $e2
    dec a                                         ; $73ce: $3d
    ld sp, hl                                     ; $73cf: $f9
    ld e, l                                       ; $73d0: $5d
    ld b, c                                       ; $73d1: $41

jr_045_73d2:
    jr jr_045_744d                                ; $73d2: $18 $79

    or e                                          ; $73d4: $b3
    inc hl                                        ; $73d5: $23
    sbc a                                         ; $73d6: $9f
    daa                                           ; $73d7: $27
    ld a, $f4                                     ; $73d8: $3e $f4
    ld a, [$cfbe]                                 ; $73da: $fa $be $cf
    and a                                         ; $73dd: $a7
    or $68                                        ; $73de: $f6 $68
    db $dd                                        ; $73e0: $dd
    cp l                                          ; $73e1: $bd
    ld [hl], c                                    ; $73e2: $71
    xor c                                         ; $73e3: $a9
    cp c                                          ; $73e4: $b9
    ld [bc], a                                    ; $73e5: $02
    cp [hl]                                       ; $73e6: $be
    db $10                                        ; $73e7: $10
    cp [hl]                                       ; $73e8: $be
    jr c, jr_045_742a                             ; $73e9: $38 $3f

    ld d, d                                       ; $73eb: $52
    inc hl                                        ; $73ec: $23
    ld d, h                                       ; $73ed: $54
    ld [hl-], a                                   ; $73ee: $32
    ld [hl-], a                                   ; $73ef: $32
    add [hl]                                      ; $73f0: $86
    and b                                         ; $73f1: $a0
    inc d                                         ; $73f2: $14
    jr jr_045_7447                                ; $73f3: $18 $52

    ld hl, sp+$79                                 ; $73f5: $f8 $79
    ld a, [c]                                     ; $73f7: $f2
    and l                                         ; $73f8: $a5
    ld b, b                                       ; $73f9: $40
    sub e                                         ; $73fa: $93
    rst $20                                       ; $73fb: $e7
    ret                                           ; $73fc: $c9


    rst $28                                       ; $73fd: $ef
    db $fd                                        ; $73fe: $fd
    pop af                                        ; $73ff: $f1
    db $fc                                        ; $7400: $fc
    ld a, [c]                                     ; $7401: $f2
    ld d, c                                       ; $7402: $51
    sub a                                         ; $7403: $97
    or [hl]                                       ; $7404: $b6
    db $ec                                        ; $7405: $ec
    cp h                                          ; $7406: $bc
    inc hl                                        ; $7407: $23
    ld l, d                                       ; $7408: $6a

Jump_045_7409:
    ld l, h                                       ; $7409: $6c
    ld a, [$42f8]                                 ; $740a: $fa $f8 $42
    ld hl, sp-$5e                                 ; $740d: $f8 $a2
    adc $10                                       ; $740f: $ce $10
    rst $20                                       ; $7411: $e7
    ld b, a                                       ; $7412: $47
    xor b                                         ; $7413: $a8
    ld a, h                                       ; $7414: $7c
    add h                                         ; $7415: $84
    ld c, $f9                                     ; $7416: $0e $f9
    ld [hl], c                                    ; $7418: $71
    ld d, e                                       ; $7419: $53
    jp hl                                         ; $741a: $e9


    ld c, a                                       ; $741b: $4f
    sbc [hl]                                      ; $741c: $9e
    ld a, b                                       ; $741d: $78
    inc hl                                        ; $741e: $23
    adc b                                         ; $741f: $88
    cp d                                          ; $7420: $ba
    ld a, b                                       ; $7421: $78
    ld c, a                                       ; $7422: $4f
    and e                                         ; $7423: $a3
    halt                                          ; $7424: $76
    add d                                         ; $7425: $82
    call nc, $ba88                                ; $7426: $d4 $88 $ba
    or d                                          ; $7429: $b2

jr_045_742a:
    adc h                                         ; $742a: $8c
    sbc h                                         ; $742b: $9c
    cp $36                                        ; $742c: $fe $36
    or d                                          ; $742e: $b2
    jr @+$4c                                      ; $742f: $18 $4a

    sbc c                                         ; $7431: $99
    call c, $e78e                                 ; $7432: $dc $8e $e7
    and [hl]                                      ; $7435: $a6
    ld a, [$5c28]                                 ; $7436: $fa $28 $5c
    inc a                                         ; $7439: $3c
    ld h, a                                       ; $743a: $67
    ld l, a                                       ; $743b: $6f
    db $10                                        ; $743c: $10
    ld l, a                                       ; $743d: $6f
    db $e4                                        ; $743e: $e4
    ld a, [bc]                                    ; $743f: $0a
    ld e, a                                       ; $7440: $5f
    cp a                                          ; $7441: $bf
    ld [bc], a                                    ; $7442: $02
    or l                                          ; $7443: $b5
    rst $38                                       ; $7444: $ff
    ld h, d                                       ; $7445: $62
    rst $28                                       ; $7446: $ef

jr_045_7447:
    call c, $9e6c                                 ; $7447: $dc $6c $9e
    ld l, b                                       ; $744a: $68
    ei                                            ; $744b: $fb
    ld [hl], d                                    ; $744c: $72

jr_045_744d:
    and d                                         ; $744d: $a2
    add hl, de                                    ; $744e: $19
    call nc, $f841                                ; $744f: $d4 $41 $f8
    ld h, d                                       ; $7452: $62
    rst $20                                       ; $7453: $e7
    db $fc                                        ; $7454: $fc
    add a                                         ; $7455: $87
    jp nz, $f517                                  ; $7456: $c2 $17 $f5

    xor c                                         ; $7459: $a9
    ld a, e                                       ; $745a: $7b
    inc a                                         ; $745b: $3c
    ld d, d                                       ; $745c: $52
    inc sp                                        ; $745d: $33
    dec e                                         ; $745e: $1d
    jp nc, $8edf                                  ; $745f: $d2 $df $8e

    jp z, $2f84                                   ; $7462: $ca $84 $2f

    ld [$e21c], a                                 ; $7465: $ea $1c $e2
    db $fc                                        ; $7468: $fc
    ld [$8f95], sp                                ; $7469: $08 $95 $8f
    ret nc                                        ; $746c: $d0

    ld hl, $6e3f                                  ; $746d: $21 $3f $6e
    ld a, [hl+]                                   ; $7470: $2a
    db $fd                                        ; $7471: $fd
    ret                                           ; $7472: $c9


    inc de                                        ; $7473: $13
    ld l, a                                       ; $7474: $6f
    inc b                                         ; $7475: $04
    ld d, c                                       ; $7476: $51
    rla                                           ; $7477: $17

Jump_045_7478:
    rst $28                                       ; $7478: $ef
    ld l, c                                       ; $7479: $69
    call nc, $904e                                ; $747a: $d4 $4e $90
    ld a, [de]                                    ; $747d: $1a
    ld d, c                                       ; $747e: $51
    ld d, a                                       ; $747f: $57
    sub [hl]                                      ; $7480: $96
    sub c                                         ; $7481: $91
    db $d3                                        ; $7482: $d3
    rst $18                                       ; $7483: $df
    ld b, [hl]                                    ; $7484: $46
    ld d, $43                                     ; $7485: $16 $43
    add hl, hl                                    ; $7487: $29
    sub e                                         ; $7488: $93
    db $db                                        ; $7489: $db
    pop af                                        ; $748a: $f1
    call c, $1f54                                 ; $748b: $dc $54 $1f
    add l                                         ; $748e: $85
    adc e                                         ; $748f: $8b
    rst $20                                       ; $7490: $e7
    db $ec                                        ; $7491: $ec
    dec c                                         ; $7492: $0d
    ld [c], a                                     ; $7493: $e2
    adc l                                         ; $7494: $8d
    ld e, h                                       ; $7495: $5c
    pop hl                                        ; $7496: $e1
    db $eb                                        ; $7497: $eb
    ld d, a                                       ; $7498: $57
    or l                                          ; $7499: $b5
    rst $38                                       ; $749a: $ff
    ld d, d                                       ; $749b: $52
    ld a, [hl]                                    ; $749c: $7e
    sub e                                         ; $749d: $93
    rst $08                                       ; $749e: $cf
    sub e                                         ; $749f: $93
    jp c, Jump_045_75a3                           ; $74a0: $da $a3 $75

    rst $30                                       ; $74a3: $f7
    add $25                                       ; $74a4: $c6 $25
    ld [$fef7], a                                 ; $74a6: $ea $f7 $fe
    ld d, h                                       ; $74a9: $54
    daa                                           ; $74aa: $27
    rst $28                                       ; $74ab: $ef
    call c, $d47d                                 ; $74ac: $dc $7d $d4
    add l                                         ; $74af: $85
    ld c, d                                       ; $74b0: $4a
    call c, Call_045_69c8                         ; $74b1: $dc $c8 $69
    ei                                            ; $74b4: $fb
    ld h, $de                                     ; $74b5: $26 $de
    ei                                            ; $74b7: $fb
    xor d                                         ; $74b8: $aa
    add d                                         ; $74b9: $82
    and [hl]                                      ; $74ba: $a6
    db $dd                                        ; $74bb: $dd
    dec bc                                        ; $74bc: $0b
    inc hl                                        ; $74bd: $23
    ld l, [hl]                                    ; $74be: $6e
    or $58                                        ; $74bf: $f6 $58
    sub [hl]                                      ; $74c1: $96
    or c                                          ; $74c2: $b1
    ld h, l                                       ; $74c3: $65
    db $ec                                        ; $74c4: $ec
    ld l, e                                       ; $74c5: $6b
    and [hl]                                      ; $74c6: $a6
    ld c, $f6                                     ; $74c7: $0e $f6
    cp $14                                        ; $74c9: $fe $14
    ld b, a                                       ; $74cb: $47
    ld h, a                                       ; $74cc: $67
    ld a, a                                       ; $74cd: $7f
    call nc, Call_045_5f91                        ; $74ce: $d4 $91 $5f
    dec l                                         ; $74d1: $2d
    rra                                           ; $74d2: $1f
    scf                                           ; $74d3: $37
    dec d                                         ; $74d4: $15
    ld b, d                                       ; $74d5: $42
    dec h                                         ; $74d6: $25
    daa                                           ; $74d7: $27
    ld c, $a2                                     ; $74d8: $0e $a2
    ld l, [hl]                                    ; $74da: $6e
    or d                                          ; $74db: $b2
    ccf                                           ; $74dc: $3f
    ld [hl-], a                                   ; $74dd: $32
    ld a, h                                       ; $74de: $7c
    call nz, Call_000_38fb                        ; $74df: $c4 $fb $38
    ccf                                           ; $74e2: $3f
    ld b, d                                       ; $74e3: $42
    push hl                                       ; $74e4: $e5
    inc hl                                        ; $74e5: $23
    ld [hl], h                                    ; $74e6: $74
    ret z                                         ; $74e7: $c8

    adc a                                         ; $74e8: $8f
    sbc e                                         ; $74e9: $9b
    ld c, d                                       ; $74ea: $4a
    ld a, a                                       ; $74eb: $7f
    ld a, [c]                                     ; $74ec: $f2
    call nz, Call_045_411b                        ; $74ed: $c4 $1b $41
    call nc, Call_045_7bc5                        ; $74f0: $d4 $c5 $7b
    ld a, [de]                                    ; $74f3: $1a
    or l                                          ; $74f4: $b5
    inc de                                        ; $74f5: $13
    and h                                         ; $74f6: $a4
    ld b, [hl]                                    ; $74f7: $46
    call nc, $6595                                ; $74f8: $d4 $95 $65
    db $e4                                        ; $74fb: $e4
    db $f4                                        ; $74fc: $f4
    or a                                          ; $74fd: $b7
    sub c                                         ; $74fe: $91
    push bc                                       ; $74ff: $c5
    ld d, b                                       ; $7500: $50
    jp z, Jump_045_76e4                           ; $7501: $ca $e4 $76

    inc a                                         ; $7504: $3c
    scf                                           ; $7505: $37
    push de                                       ; $7506: $d5
    ld b, a                                       ; $7507: $47
    pop hl                                        ; $7508: $e1
    ld [c], a                                     ; $7509: $e2
    add hl, sp                                    ; $750a: $39
    ld a, e                                       ; $750b: $7b
    add e                                         ; $750c: $83
    ld a, b                                       ; $750d: $78
    inc hl                                        ; $750e: $23
    ld d, a                                       ; $750f: $57

Jump_045_7510:
    ld hl, sp-$06                                 ; $7510: $f8 $fa
    dec d                                         ; $7512: $15
    dec e                                         ; $7513: $1d

jr_045_7514:
    ld e, a                                       ; $7514: $5f

Call_045_7515:
    jp z, $e602                                   ; $7515: $ca $02 $e6

    sub a                                         ; $7518: $97
    adc c                                         ; $7519: $89
    or [hl]                                       ; $751a: $b6
    cpl                                           ; $751b: $2f
    cp a                                          ; $751c: $bf
    rst $30                                       ; $751d: $f7
    ret c                                         ; $751e: $d8

Jump_045_751f:
    ld b, l                                       ; $751f: $45
    ld h, c                                       ; $7520: $61
    rst $28                                       ; $7521: $ef
    rrca                                          ; $7522: $0f
    ld a, c                                       ; $7523: $79
    call z, $f763                                 ; $7524: $cc $63 $f7
    ld e, c                                       ; $7527: $59

Jump_045_7528:
    ld h, b                                       ; $7528: $60
    ld a, c                                       ; $7529: $79
    ld [de], a                                    ; $752a: $12
    ld d, $37                                     ; $752b: $16 $37
    push de                                       ; $752d: $d5
    or d                                          ; $752e: $b2
    pop bc                                        ; $752f: $c1
    rst $08                                       ; $7530: $cf
    sub e                                         ; $7531: $93
    db $fd                                        ; $7532: $fd
    reti                                          ; $7533: $d9


    jr nz, jr_045_7514                            ; $7534: $20 $de

    ld [$2ea2], sp                                ; $7536: $08 $a2 $2e
    ld l, l                                       ; $7539: $6d
    sbc b                                         ; $753a: $98
    ld a, [hl]                                    ; $753b: $7e
    or $68                                        ; $753c: $f6 $68
    rst $30                                       ; $753e: $f7
    ld b, c                                       ; $753f: $41
    add [hl]                                      ; $7540: $86
    add hl, de                                    ; $7541: $19
    ld b, d                                       ; $7542: $42
    ld a, c                                       ; $7543: $79
    or d                                          ; $7544: $b2
    ld de, $073b                                  ; $7545: $11 $3b $07
    ld h, [hl]                                    ; $7548: $66
    ld b, h                                       ; $7549: $44
    ld h, c                                       ; $754a: $61
    ld l, a                                       ; $754b: $6f
    ld h, h                                       ; $754c: $64
    add hl, de                                    ; $754d: $19
    ld [c], a                                     ; $754e: $e2

Call_045_754f:
    adc l                                         ; $754f: $8d
    ld e, h                                       ; $7550: $5c
    call Call_000_11b4                            ; $7551: $cd $b4 $11
    ld a, [hl+]                                   ; $7554: $2a
    rra                                           ; $7555: $1f
    and c                                         ; $7556: $a1
    ld b, e                                       ; $7557: $43
    ld a, [hl]                                    ; $7558: $7e
    call c, $fa54                                 ; $7559: $dc $54 $fa
    sub e                                         ; $755c: $93
    daa                                           ; $755d: $27
    sbc $08                                       ; $755e: $de $08
    and d                                         ; $7560: $a2
    ld l, $de                                     ; $7561: $2e $de
    db $d3                                        ; $7563: $d3
    xor b                                         ; $7564: $a8
    sbc l                                         ; $7565: $9d
    jr nz, jr_045_759d                            ; $7566: $20 $35

    and d                                         ; $7568: $a2
    xor [hl]                                      ; $7569: $ae
    inc l                                         ; $756a: $2c
    inc hl                                        ; $756b: $23
    and a                                         ; $756c: $a7
    cp a                                          ; $756d: $bf
    adc l                                         ; $756e: $8d
    inc l                                         ; $756f: $2c
    add [hl]                                      ; $7570: $86
    ld d, d                                       ; $7571: $52
    ld h, $b7                                     ; $7572: $26 $b7
    db $e3                                        ; $7574: $e3
    cp c                                          ; $7575: $b9
    xor c                                         ; $7576: $a9
    ld a, $0a                                     ; $7577: $3e $0a
    rla                                           ; $7579: $17
    rst $08                                       ; $757a: $cf
    reti                                          ; $757b: $d9


    dec de                                        ; $757c: $1b
    call nz, $b91b                                ; $757d: $c4 $1b $b9
    jp nz, $afd7                                  ; $7580: $c2 $d7 $af

    or l                                          ; $7583: $b5
    rst $38                                       ; $7584: $ff
    ld [c], a                                     ; $7585: $e2
    add l                                         ; $7586: $85
    ld d, l                                       ; $7587: $55
    rst $08                                       ; $7588: $cf
    sub e                                         ; $7589: $93
    cp d                                          ; $758a: $ba
    rst $10                                       ; $758b: $d7
    ld a, l                                       ; $758c: $7d
    db $10                                        ; $758d: $10
    cp e                                          ; $758e: $bb
    ld h, l                                       ; $758f: $65
    adc h                                         ; $7590: $8c
    sbc a                                         ; $7591: $9f
    daa                                           ; $7592: $27
    or a                                          ; $7593: $b7
    or e                                          ; $7594: $b3
    ld c, a                                       ; $7595: $4f
    ld l, a                                       ; $7596: $6f
    inc de                                        ; $7597: $13
    and e                                         ; $7598: $a3
    ld a, [$c9e7]                                 ; $7599: $fa $e7 $c9
    ld c, c                                       ; $759c: $49

jr_045_759d:
    db $f4                                        ; $759d: $f4
    and a                                         ; $759e: $a7
    rst $18                                       ; $759f: $df
    scf                                           ; $75a0: $37
    inc c                                         ; $75a1: $0c
    rst $30                                       ; $75a2: $f7

Jump_045_75a3:
    dec [hl]                                      ; $75a3: $35
    db $d3                                        ; $75a4: $d3

Jump_045_75a5:
    sub $d9                                       ; $75a5: $d6 $d9
    add a                                         ; $75a7: $87
    inc e                                         ; $75a8: $1c
    add a                                         ; $75a9: $87
    jr c, jr_045_75eb                             ; $75aa: $38 $3f

    ld b, d                                       ; $75ac: $42
    push hl                                       ; $75ad: $e5
    inc hl                                        ; $75ae: $23
    ld [hl], h                                    ; $75af: $74
    ret z                                         ; $75b0: $c8

    adc a                                         ; $75b1: $8f
    sbc e                                         ; $75b2: $9b
    ld c, d                                       ; $75b3: $4a
    ld a, a                                       ; $75b4: $7f
    ld a, [c]                                     ; $75b5: $f2
    call nz, Call_045_411b                        ; $75b6: $c4 $1b $41
    call nc, Call_045_7bc5                        ; $75b9: $d4 $c5 $7b
    ld a, [de]                                    ; $75bc: $1a
    or l                                          ; $75bd: $b5
    inc de                                        ; $75be: $13
    and h                                         ; $75bf: $a4
    call c, $5d47                                 ; $75c0: $dc $47 $5d
    ld e, c                                       ; $75c3: $59
    ld b, [hl]                                    ; $75c4: $46
    ld c, [hl]                                    ; $75c5: $4e
    ld a, a                                       ; $75c6: $7f
    dec de                                        ; $75c7: $1b
    ld e, c                                       ; $75c8: $59
    inc c                                         ; $75c9: $0c
    and l                                         ; $75ca: $a5
    ld c, h                                       ; $75cb: $4c
    ld l, [hl]                                    ; $75cc: $6e
    rst $00                                       ; $75cd: $c7
    ld [hl], e                                    ; $75ce: $73
    ld d, e                                       ; $75cf: $53
    ld a, l                                       ; $75d0: $7d
    inc d                                         ; $75d1: $14
    ld l, $9e                                     ; $75d2: $2e $9e
    or e                                          ; $75d4: $b3
    scf                                           ; $75d5: $37
    adc b                                         ; $75d6: $88
    scf                                           ; $75d7: $37
    ld [hl], d                                    ; $75d8: $72
    add l                                         ; $75d9: $85

jr_045_75da:
    xor a                                         ; $75da: $af
    ld e, a                                       ; $75db: $5f
    ld bc, $cfad                                  ; $75dc: $01 $ad $cf
    ld [hl-], a                                   ; $75df: $32
    ld a, c                                       ; $75e0: $79
    ld [de], a                                    ; $75e1: $12
    ld d, $37                                     ; $75e2: $16 $37
    push de                                       ; $75e4: $d5
    or d                                          ; $75e5: $b2
    pop bc                                        ; $75e6: $c1
    rst $08                                       ; $75e7: $cf
    sub e                                         ; $75e8: $93
    db $ed                                        ; $75e9: $ed
    ld [hl], c                                    ; $75ea: $71

jr_045_75eb:
    ld [c], a                                     ; $75eb: $e2
    sbc $ce                                       ; $75ec: $de $ce
    ld c, l                                       ; $75ee: $4d
    inc d                                         ; $75ef: $14
    halt                                          ; $75f0: $76
    ld d, $1b                                     ; $75f1: $16 $1b
    cpl                                           ; $75f3: $2f
    ld c, d                                       ; $75f4: $4a
    add hl, de                                    ; $75f5: $19
    ld c, e                                       ; $75f6: $4b
    ld b, a                                       ; $75f7: $47
    dec c                                         ; $75f8: $0d
    ld a, d                                       ; $75f9: $7a
    ld [hl], l                                    ; $75fa: $75
    pop hl                                        ; $75fb: $e1
    ld c, e                                       ; $75fc: $4b
    cp c                                          ; $75fd: $b9
    db $fc                                        ; $75fe: $fc
    ld h, d                                       ; $75ff: $62
    inc hl                                        ; $7600: $23
    inc de                                        ; $7601: $13
    and c                                         ; $7602: $a1
    ld b, e                                       ; $7603: $43
    ld [hl+], a                                   ; $7604: $22
    adc e                                         ; $7605: $8b
    ld c, l                                       ; $7606: $4d
    ld e, c                                       ; $7607: $59
    ret nz                                        ; $7608: $c0

    ld a, h                                       ; $7609: $7c
    inc h                                         ; $760a: $24
    ld l, d                                       ; $760b: $6a
    add $73                                       ; $760c: $c6 $73
    ld a, [hl+]                                   ; $760e: $2a
    call nz, $3edd                                ; $760f: $c4 $dd $3e
    ld l, b                                       ; $7612: $68
    daa                                           ; $7613: $27
    sbc a                                         ; $7614: $9f
    ld b, d                                       ; $7615: $42
    rst $30                                       ; $7616: $f7
    cp $f0                                        ; $7617: $fe $f0
    jr jr_045_75da                                ; $7619: $18 $bf

    ld l, $54                                     ; $761b: $2e $54
    ld a, $42                                     ; $761d: $3e $42
    add a                                         ; $761f: $87
    db $fc                                        ; $7620: $fc
    cp b                                          ; $7621: $b8
    xor c                                         ; $7622: $a9
    db $f4                                        ; $7623: $f4
    daa                                           ; $7624: $27
    ld c, a                                       ; $7625: $4f
    cp h                                          ; $7626: $bc
    ld de, $5d44                                  ; $7627: $11 $44 $5d
    cp h                                          ; $762a: $bc
    and a                                         ; $762b: $a7
    ld d, c                                       ; $762c: $51
    dec sp                                        ; $762d: $3b
    ld b, c                                       ; $762e: $41
    ld l, d                                       ; $762f: $6a
    ld b, h                                       ; $7630: $44
    ld e, l                                       ; $7631: $5d
    ld e, c                                       ; $7632: $59
    ld b, [hl]                                    ; $7633: $46
    ld c, [hl]                                    ; $7634: $4e
    ld a, a                                       ; $7635: $7f
    dec de                                        ; $7636: $1b
    ld e, c                                       ; $7637: $59
    inc c                                         ; $7638: $0c
    and l                                         ; $7639: $a5
    ld c, h                                       ; $763a: $4c
    ld l, [hl]                                    ; $763b: $6e
    rst $00                                       ; $763c: $c7
    ld [hl], e                                    ; $763d: $73
    ld d, e                                       ; $763e: $53
    ld a, l                                       ; $763f: $7d
    inc d                                         ; $7640: $14
    ld l, $9e                                     ; $7641: $2e $9e
    or e                                          ; $7643: $b3
    scf                                           ; $7644: $37
    adc b                                         ; $7645: $88
    scf                                           ; $7646: $37
    ld [hl], d                                    ; $7647: $72
    add l                                         ; $7648: $85
    ld l, a                                       ; $7649: $6f
    dec b                                         ; $764a: $05
    or l                                          ; $764b: $b5
    rst $38                                       ; $764c: $ff
    ld h, d                                       ; $764d: $62
    ld [hl], b                                    ; $764e: $70
    ld [hl], h                                    ; $764f: $74
    add c                                         ; $7650: $81
    dec a                                         ; $7651: $3d
    ld c, a                                       ; $7652: $4f
    or $a7                                        ; $7653: $f6 $a7
    and e                                         ; $7655: $a3
    ld [hl], e                                    ; $7656: $73
    ld h, e                                       ; $7657: $63
    ld a, [bc]                                    ; $7658: $0a
    ld a, e                                       ; $7659: $7b
    ld a, a                                       ; $765a: $7f
    call nc, $0ea5                                ; $765b: $d4 $a5 $0e
    ret z                                         ; $765e: $c8

    db $db                                        ; $765f: $db
    dec de                                        ; $7660: $1b
    dec [hl]                                      ; $7661: $35

jr_045_7662:
    db $d3                                        ; $7662: $d3
    sbc $47                                       ; $7663: $de $47
    add [hl]                                      ; $7665: $86
    adc a                                         ; $7666: $8f
    ld a, b                                       ; $7667: $78
    rra                                           ; $7668: $1f
    ld [hl], l                                    ; $7669: $75
    and c                                         ; $766a: $a1

jr_045_766b:
    ld a, [c]                                     ; $766b: $f2
    ld de, $e43a                                  ; $766c: $11 $3a $e4
    rst $00                                       ; $766f: $c7
    ld c, l                                       ; $7670: $4d
    and l                                         ; $7671: $a5

jr_045_7672:
    ccf                                           ; $7672: $3f
    ld a, c                                       ; $7673: $79
    ld [c], a                                     ; $7674: $e2
    adc l                                         ; $7675: $8d
    jr nz, jr_045_7662                            ; $7676: $20 $ea

    ld [c], a                                     ; $7678: $e2
    dec a                                         ; $7679: $3d
    adc l                                         ; $767a: $8d
    jp c, $a209                                   ; $767b: $da $09 $a2

    xor [hl]                                      ; $767e: $ae
    inc l                                         ; $767f: $2c
    inc hl                                        ; $7680: $23
    and a                                         ; $7681: $a7
    cp a                                          ; $7682: $bf
    adc l                                         ; $7683: $8d
    inc l                                         ; $7684: $2c
    add [hl]                                      ; $7685: $86
    ld d, d                                       ; $7686: $52
    ld h, $9e                                     ; $7687: $26 $9e
    sbc e                                         ; $7689: $9b
    ld [$70a3], a                                 ; $768a: $ea $a3 $70
    pop af                                        ; $768d: $f1
    sbc h                                         ; $768e: $9c
    cp l                                          ; $768f: $bd
    ld b, c                                       ; $7690: $41
    cp h                                          ; $7691: $bc
    sub c                                         ; $7692: $91
    dec hl                                        ; $7693: $2b
    ld a, h                                       ; $7694: $7c
    ld hl, $7f67                                  ; $7695: $21 $67 $7f
    call nc, Call_000_3f45                        ; $7698: $d4 $45 $3f
    adc $7d                                       ; $769b: $ce $7d
    ld c, [hl]                                    ; $769d: $4e
    and d                                         ; $769e: $a2
    rra                                           ; $769f: $1f
    rst $20                                       ; $76a0: $e7
    cp [hl]                                       ; $76a1: $be
    ld e, a                                       ; $76a2: $5f
    ld bc, $ef6d                                  ; $76a3: $01 $6d $ef
    cp b                                          ; $76a6: $b8
    xor c                                         ; $76a7: $a9
    sub [hl]                                      ; $76a8: $96
    dec c                                         ; $76a9: $0d
    cp $0a                                        ; $76aa: $fe $0a
    jp nz, $8513                                  ; $76ac: $c2 $13 $85

    cp l                                          ; $76af: $bd
    ccf                                           ; $76b0: $3f
    dec de                                        ; $76b1: $1b
    call nz, Call_045_411b                        ; $76b2: $c4 $1b $41
    call nc, $6da5                                ; $76b5: $d4 $a5 $6d
    ld [hl], c                                    ; $76b8: $71
    cpl                                           ; $76b9: $2f
    adc h                                         ; $76ba: $8c
    ld [hl], d                                    ; $76bb: $72
    push de                                       ; $76bc: $d5
    and l                                         ; $76bd: $a5
    ld e, h                                       ; $76be: $5c
    ld e, [hl]                                    ; $76bf: $5e
    db $d3                                        ; $76c0: $d3
    adc [hl]                                      ; $76c1: $8e
    adc d                                         ; $76c2: $8a
    add [hl]                                      ; $76c3: $86
    db $fc                                        ; $76c4: $fc
    sbc $1e                                       ; $76c5: $de $1e
    ret c                                         ; $76c7: $d8

    db $10                                        ; $76c8: $10
    scf                                           ; $76c9: $37
    ld d, c                                       ; $76ca: $51
    cp b                                          ; $76cb: $b8
    jr nc, jr_045_766b                            ; $76cc: $30 $9d

    ld c, e                                       ; $76ce: $4b
    and c                                         ; $76cf: $a1
    adc $a1                                       ; $76d0: $ce $a1
    sub h                                         ; $76d2: $94
    ld c, e                                       ; $76d3: $4b
    ld [hl], c                                    ; $76d4: $71
    or e                                          ; $76d5: $b3
    cp a                                          ; $76d6: $bf
    ldh a, [$b9]                                  ; $76d7: $f0 $b9
    db $eb                                        ; $76d9: $eb
    ld d, e                                       ; $76da: $53
    rlca                                          ; $76db: $07
    ld a, e                                       ; $76dc: $7b
    ld a, a                                       ; $76dd: $7f
    adc d                                         ; $76de: $8a
    and e                                         ; $76df: $a3
    or e                                          ; $76e0: $b3
    ccf                                           ; $76e1: $3f
    push hl                                       ; $76e2: $e5
    ld d, d                                       ; $76e3: $52

Jump_045_76e4:
    jr nz, jr_045_7672                            ; $76e4: $20 $8c

    ld d, h                                       ; $76e6: $54
    ld h, e                                       ; $76e7: $63
    push de                                       ; $76e8: $d5
    ret c                                         ; $76e9: $d8

    dec de                                        ; $76ea: $1b
    and d                                         ; $76eb: $a2
    ld l, $54                                     ; $76ec: $2e $54
    ld a, $42                                     ; $76ee: $3e $42
    add a                                         ; $76f0: $87
    db $fc                                        ; $76f1: $fc
    cp b                                          ; $76f2: $b8
    xor c                                         ; $76f3: $a9
    db $f4                                        ; $76f4: $f4
    daa                                           ; $76f5: $27
    ld c, a                                       ; $76f6: $4f
    cp h                                          ; $76f7: $bc
    ld de, $5d44                                  ; $76f8: $11 $44 $5d
    cp h                                          ; $76fb: $bc
    and a                                         ; $76fc: $a7
    ld d, c                                       ; $76fd: $51
    dec sp                                        ; $76fe: $3b
    ld b, c                                       ; $76ff: $41
    call nc, $6595                                ; $7700: $d4 $95 $65
    db $e4                                        ; $7703: $e4
    db $f4                                        ; $7704: $f4
    or a                                          ; $7705: $b7
    sub c                                         ; $7706: $91
    push bc                                       ; $7707: $c5
    ld d, b                                       ; $7708: $50
    jp z, Jump_045_76e4                           ; $7709: $ca $e4 $76

    inc a                                         ; $770c: $3c
    scf                                           ; $770d: $37
    push de                                       ; $770e: $d5
    ld b, a                                       ; $770f: $47
    pop hl                                        ; $7710: $e1
    ld [c], a                                     ; $7711: $e2
    add hl, sp                                    ; $7712: $39
    ld a, e                                       ; $7713: $7b
    add e                                         ; $7714: $83
    ld a, b                                       ; $7715: $78
    inc hl                                        ; $7716: $23
    ld d, a                                       ; $7717: $57
    ld hl, sp-$06                                 ; $7718: $f8 $fa
    dec d                                         ; $771a: $15
    sbc [hl]                                      ; $771b: $9e
    inc hl                                        ; $771c: $23
    sbc d                                         ; $771d: $9a
    dec a                                         ; $771e: $3d
    db $d3                                        ; $771f: $d3
    db $fd                                        ; $7720: $fd
    call nz, Call_000_391b                        ; $7721: $c4 $1b $39
    ld e, l                                       ; $7724: $5d
    db $fc                                        ; $7725: $fc
    ld a, a                                       ; $7726: $7f
    ld hl, $784f                                  ; $7727: $21 $4f $78
    or d                                          ; $772a: $b2
    ccf                                           ; $772b: $3f
    xor $9d                                       ; $772c: $ee $9d
    cp e                                          ; $772e: $bb
    rst $08                                       ; $772f: $cf
    rst $28                                       ; $7730: $ef
    ld l, b                                       ; $7731: $68
    call nc, Call_000_353b                        ; $7732: $d4 $3b $35

jr_045_7735:
    db $d3                                        ; $7735: $d3
    sbc $47                                       ; $7736: $de $47
    add [hl]                                      ; $7738: $86
    adc a                                         ; $7739: $8f
    ld a, b                                       ; $773a: $78

Call_045_773b:
    rra                                           ; $773b: $1f
    ld [hl], l                                    ; $773c: $75
    and c                                         ; $773d: $a1
    ld a, [c]                                     ; $773e: $f2
    ld de, $e43a                                  ; $773f: $11 $3a $e4
    rst $00                                       ; $7742: $c7
    ld c, l                                       ; $7743: $4d
    and l                                         ; $7744: $a5
    ccf                                           ; $7745: $3f
    ld a, c                                       ; $7746: $79
    ld [c], a                                     ; $7747: $e2
    adc l                                         ; $7748: $8d
    jr nz, jr_045_7735                            ; $7749: $20 $ea

    ld [c], a                                     ; $774b: $e2
    dec a                                         ; $774c: $3d
    adc l                                         ; $774d: $8d
    jp c, $a209                                   ; $774e: $da $09 $a2

Call_045_7751:
    xor [hl]                                      ; $7751: $ae
    inc l                                         ; $7752: $2c
    inc hl                                        ; $7753: $23
    and a                                         ; $7754: $a7
    cp a                                          ; $7755: $bf
    adc l                                         ; $7756: $8d
    inc l                                         ; $7757: $2c
    add [hl]                                      ; $7758: $86
    ld d, d                                       ; $7759: $52
    ld h, $b7                                     ; $775a: $26 $b7
    db $e3                                        ; $775c: $e3
    cp c                                          ; $775d: $b9
    xor c                                         ; $775e: $a9
    ld a, $0a                                     ; $775f: $3e $0a
    rla                                           ; $7761: $17
    rst $08                                       ; $7762: $cf
    reti                                          ; $7763: $d9


    dec de                                        ; $7764: $1b
    call nz, $b91b                                ; $7765: $c4 $1b $b9
    jp nz, $be17                                  ; $7768: $c2 $17 $be

    xor b                                         ; $776b: $a8
    ld a, d                                       ; $776c: $7a
    or d                                          ; $776d: $b2
    ccf                                           ; $776e: $3f
    xor $ed                                       ; $776f: $ee $ed
    call c, $2bf7                                 ; $7771: $dc $f7 $2b
    dec e                                         ; $7774: $1d

jr_045_7775:
    adc a                                         ; $7775: $8f
    ret                                           ; $7776: $c9


    di                                            ; $7777: $f3
    db $e4                                        ; $7778: $e4
    db $d3                                        ; $7779: $d3
    sub [hl]                                      ; $777a: $96
    sbc l                                         ; $777b: $9d
    ld [hl], a                                    ; $777c: $77
    ld b, h                                       ; $777d: $44
    adc l                                         ; $777e: $8d
    ld c, l                                       ; $777f: $4d

jr_045_7780:
    call nc, $932c                                ; $7780: $d4 $2c $93
    daa                                           ; $7783: $27
    ld h, c                                       ; $7784: $61
    ld hl, $f0af                                  ; $7785: $21 $af $f0
    ld h, h                                       ; $7788: $64
    ld c, a                                       ; $7789: $4f
    ld a, h                                       ; $778a: $7c
    rla                                           ; $778b: $17
    jr c, jr_045_7775                             ; $778c: $38 $e7

    cp a                                          ; $778e: $bf
    adc c                                         ; $778f: $89
    jp nz, Jump_045_48de                          ; $7790: $c2 $de $48

    ld l, e                                       ; $7793: $6b
    or $15                                        ; $7794: $f6 $15
    ld [hl], h                                    ; $7796: $74
    or c                                          ; $7797: $b1
    ld e, e                                       ; $7798: $5b
    jr nz, jr_045_7780                            ; $7799: $20 $e5

    ld a, [c]                                     ; $779b: $f2
    pop af                                        ; $779c: $f1
    and c                                         ; $779d: $a1
    cpl                                           ; $779e: $2f
    inc a                                         ; $779f: $3c
    ld a, c                                       ; $77a0: $79
    rst $20                                       ; $77a1: $e7
    ld e, [hl]                                    ; $77a2: $5e
    ld d, c                                       ; $77a3: $51
    sbc [hl]                                      ; $77a4: $9e
    ld a, $9e                                     ; $77a5: $3e $9e
    ld e, $35                                     ; $77a7: $1e $35
    ld b, d                                       ; $77a9: $42
    push hl                                       ; $77aa: $e5
    inc hl                                        ; $77ab: $23
    ld [hl], h                                    ; $77ac: $74
    ret z                                         ; $77ad: $c8

    adc a                                         ; $77ae: $8f
    sbc e                                         ; $77af: $9b
    ld c, d                                       ; $77b0: $4a
    ld a, a                                       ; $77b1: $7f
    ld a, [c]                                     ; $77b2: $f2
    call nz, Call_045_411b                        ; $77b3: $c4 $1b $41
    call nc, Call_045_7bc5                        ; $77b6: $d4 $c5 $7b
    ld a, [de]                                    ; $77b9: $1a
    or l                                          ; $77ba: $b5
    inc de                                        ; $77bb: $13
    ld b, h                                       ; $77bc: $44
    ld e, l                                       ; $77bd: $5d
    ld e, c                                       ; $77be: $59
    ld b, [hl]                                    ; $77bf: $46
    ld c, [hl]                                    ; $77c0: $4e
    ld a, a                                       ; $77c1: $7f
    dec de                                        ; $77c2: $1b
    ld e, c                                       ; $77c3: $59
    inc c                                         ; $77c4: $0c
    and l                                         ; $77c5: $a5
    ld c, h                                       ; $77c6: $4c
    ld l, [hl]                                    ; $77c7: $6e
    rst $00                                       ; $77c8: $c7
    ld [hl], e                                    ; $77c9: $73
    ld d, e                                       ; $77ca: $53
    ld a, l                                       ; $77cb: $7d
    inc d                                         ; $77cc: $14
    ld l, $9e                                     ; $77cd: $2e $9e
    or e                                          ; $77cf: $b3
    scf                                           ; $77d0: $37
    adc b                                         ; $77d1: $88
    scf                                           ; $77d2: $37
    ld [hl], d                                    ; $77d3: $72
    add l                                         ; $77d4: $85
    ld c, a                                       ; $77d5: $4f
    sub a                                         ; $77d6: $97
    ld e, c                                       ; $77d7: $59
    ld d, $6a                                     ; $77d8: $16 $6a
    ld c, b                                       ; $77da: $48
    adc l                                         ; $77db: $8d
    sub h                                         ; $77dc: $94
    reti                                          ; $77dd: $d9


Jump_045_77de:
    inc de                                        ; $77de: $13
    ld a, [hl+]                                   ; $77df: $2a
    add hl, hl                                    ; $77e0: $29
    and e                                         ; $77e1: $a3
    ret                                           ; $77e2: $c9


    call nc, $015a                                ; $77e3: $d4 $5a $01
    cp [hl]                                       ; $77e6: $be
    cp b                                          ; $77e7: $b8
    ret c                                         ; $77e8: $d8

    pop de                                        ; $77e9: $d1
    ld [c], a                                     ; $77ea: $e2
    adc [hl]                                      ; $77eb: $8e
    daa                                           ; $77ec: $27
    rra                                           ; $77ed: $1f
    ld e, $93                                     ; $77ee: $1e $93
    scf                                           ; $77f0: $37
    db $e4                                        ; $77f1: $e4
    db $d3                                        ; $77f2: $d3
    sub [hl]                                      ; $77f3: $96
    sbc l                                         ; $77f4: $9d
    ld [hl], a                                    ; $77f5: $77
    ld b, h                                       ; $77f6: $44
    adc l                                         ; $77f7: $8d
    ld c, l                                       ; $77f8: $4d
    call nc, $edef                                ; $77f9: $d4 $ef $ed
    pop af                                        ; $77fc: $f1
    inc h                                         ; $77fd: $24
    add hl, bc                                    ; $77fe: $09
    ld h, c                                       ; $77ff: $61
    ld l, d                                       ; $7800: $6a
    rra                                           ; $7801: $1f
    add l                                         ; $7802: $85
    dec e                                         ; $7803: $1d
    ld b, l                                       ; $7804: $45
    or c                                          ; $7805: $b1
    rst $30                                       ; $7806: $f7
    ld b, h                                       ; $7807: $44
    ld e, l                                       ; $7808: $5d
    ld a, [hl+]                                   ; $7809: $2a
    db $10                                        ; $780a: $10
    adc c                                         ; $780b: $89
    cpl                                           ; $780c: $2f
    jp $3e8c                                      ; $780d: $c3 $8c $3e


    dec e                                         ; $7810: $1d
    ret c                                         ; $7811: $d8

    rst $20                                       ; $7812: $e7
    ld [c], a                                     ; $7813: $e2
    add $ec                                       ; $7814: $c6 $ec
    call nc, $d45c                                ; $7816: $d4 $5c $d4
    and l                                         ; $7819: $a5
    or $68                                        ; $781a: $f6 $68
    db $dd                                        ; $781c: $dd
    cp l                                          ; $781d: $bd
    ld [hl], c                                    ; $781e: $71
    pop de                                        ; $781f: $d1
    ld b, l                                       ; $7820: $45
    ld e, l                                       ; $7821: $5d
    ld h, h                                       ; $7822: $64
    sbc b                                         ; $7823: $98
    and c                                         ; $7824: $a1
    adc e                                         ; $7825: $8b
    adc h                                         ; $7826: $8c
    and h                                         ; $7827: $a4
    and b                                         ; $7828: $a0
    jp nc, $cbdb                                  ; $7829: $d2 $db $cb

    ld h, h                                       ; $782c: $64
    cp c                                          ; $782d: $b9
    ld b, $e2                                     ; $782e: $06 $e2

jr_045_7830:
    and [hl]                                      ; $7830: $a6
    call nc, $9397                                ; $7831: $d4 $97 $93
    ld [hl], a                                    ; $7834: $77
    ld c, $a5                                     ; $7835: $0e $a5
    sbc h                                         ; $7837: $9c
    cp $f6                                        ; $7838: $fe $f6
    push af                                       ; $783a: $f5
    dec hl                                        ; $783b: $2b
    or l                                          ; $783c: $b5
    rst $38                                       ; $783d: $ff
    ld d, d                                       ; $783e: $52
    call c, $f788                                 ; $783f: $dc $88 $f7
    sbc b                                         ; $7842: $98
    daa                                           ; $7843: $27
    or a                                          ; $7844: $b7
    ld d, e                                       ; $7845: $53
    ld c, l                                       ; $7846: $4d
    ld h, c                                       ; $7847: $61
    sbc e                                         ; $7848: $9b
    jr nz, jr_045_7830                            ; $7849: $20 $e5

    scf                                           ; $784b: $37
    ld sp, hl                                     ; $784c: $f9
    inc a                                         ; $784d: $3c
    xor c                                         ; $784e: $a9
    dec c                                         ; $784f: $0d
    xor e                                         ; $7850: $ab
    ld l, [hl]                                    ; $7851: $6e
    inc b                                         ; $7852: $04
    dec [hl]                                      ; $7853: $35
    db $d3                                        ; $7854: $d3
    pop de                                        ; $7855: $d1
    pop af                                        ; $7856: $f1
    ld b, c                                       ; $7857: $41
    ld l, $ce                                     ; $7858: $2e $ce
    adc a                                         ; $785a: $8f
    db $ec                                        ; $785b: $ec
    adc a                                         ; $785c: $8f
    ret nc                                        ; $785d: $d0

    ld hl, $6e3f                                  ; $785e: $21 $3f $6e
    ld a, [hl+]                                   ; $7861: $2a

jr_045_7862:
    db $fd                                        ; $7862: $fd
    ret                                           ; $7863: $c9


    inc de                                        ; $7864: $13
    ld l, a                                       ; $7865: $6f
    inc b                                         ; $7866: $04
    ld d, c                                       ; $7867: $51
    rla                                           ; $7868: $17
    rst $28                                       ; $7869: $ef
    ld l, c                                       ; $786a: $69
    call nc, Call_000_104e                        ; $786b: $d4 $4e $10
    ld [hl], l                                    ; $786e: $75
    ld h, l                                       ; $786f: $65
    add hl, de                                    ; $7870: $19
    add hl, sp                                    ; $7871: $39
    db $fd                                        ; $7872: $fd
    ld l, l                                       ; $7873: $6d
    ld h, h                                       ; $7874: $64
    ld sp, $3294                                  ; $7875: $31 $94 $32
    cp c                                          ; $7878: $b9
    dec e                                         ; $7879: $1d
    rst $08                                       ; $787a: $cf
    ld c, l                                       ; $787b: $4d
    push af                                       ; $787c: $f5
    ld d, c                                       ; $787d: $51
    cp b                                          ; $787e: $b8
    ld a, b                                       ; $787f: $78
    adc $de                                       ; $7880: $ce $de
    jr nz, jr_045_7862                            ; $7882: $20 $de

    ret z                                         ; $7884: $c8

    dec d                                         ; $7885: $15
    cp [hl]                                       ; $7886: $be
    sub h                                         ; $7887: $94
    ei                                            ; $7888: $fb
    db $ec                                        ; $7889: $ec
    adc a                                         ; $788a: $8f
    halt                                          ; $788b: $76
    or h                                          ; $788c: $b4
    ldh a, [$c7]                                  ; $788d: $f0 $c7
    adc $4d                                       ; $788f: $ce $4d
    or l                                          ; $7891: $b5
    ld b, b                                       ; $7892: $40
    jp z, $8167                                   ; $7893: $ca $67 $81

    push hl                                       ; $7896: $e5
    halt                                          ; $7897: $76
    sbc b                                         ; $7898: $98
    ld c, [hl]                                    ; $7899: $4e
    ld h, b                                       ; $789a: $60
    ld [hl], e                                    ; $789b: $73
    and l                                         ; $789c: $a5
    sbc d                                         ; $789d: $9a

Call_045_789e:
    ld a, [hl]                                    ; $789e: $7e
    dec b                                         ; $789f: $05
    or l                                          ; $78a0: $b5
    rst $38                                       ; $78a1: $ff
    ld h, d                                       ; $78a2: $62
    ld [hl], b                                    ; $78a3: $70
    ld [hl], h                                    ; $78a4: $74
    add c                                         ; $78a5: $81
    dec a                                         ; $78a6: $3d
    ld c, a                                       ; $78a7: $4f
    ld l, [hl]                                    ; $78a8: $6e
    add a                                         ; $78a9: $87
    jp hl                                         ; $78aa: $e9


    call nz, $fda0                                ; $78ab: $c4 $a0 $fd
    sbc [hl]                                      ; $78ae: $9e
    xor b                                         ; $78af: $a8
    ld c, e                                       ; $78b0: $4b
    sbc l                                         ; $78b1: $9d
    rst $20                                       ; $78b2: $e7
    rst $18                                       ; $78b3: $df
    xor b                                         ; $78b4: $a8
    sbc c                                         ; $78b5: $99
    or [hl]                                       ; $78b6: $b6
    dec h                                         ; $78b7: $25
    push hl                                       ; $78b8: $e5
    add h                                         ; $78b9: $84
    ld b, a                                       ; $78ba: $47
    xor $e3                                       ; $78bb: $ee $e3
    ld b, [hl]                                    ; $78bd: $46
    or d                                          ; $78be: $b2
    daa                                           ; $78bf: $27
    ld h, l                                       ; $78c0: $65
    add hl, sp                                    ; $78c1: $39
    dec sp                                        ; $78c2: $3b
    sbc [hl]                                      ; $78c3: $9e
    ret z                                         ; $78c4: $c8

    di                                            ; $78c5: $f3
    rst $28                                       ; $78c6: $ef
    inc hl                                        ; $78c7: $23
    sbc $e8                                       ; $78c8: $de $e8
    jp nc, $8ef6                                  ; $78ca: $d2 $f6 $8e

    rst $20                                       ; $78cd: $e7
    and [hl]                                      ; $78ce: $a6
    ld a, [$5c28]                                 ; $78cf: $fa $28 $5c
    inc a                                         ; $78d2: $3c
    ld h, a                                       ; $78d3: $67
    ld l, a                                       ; $78d4: $6f
    db $10                                        ; $78d5: $10
    ld l, a                                       ; $78d6: $6f
    db $e4                                        ; $78d7: $e4
    ld a, [bc]                                    ; $78d8: $0a
    ld e, a                                       ; $78d9: $5f
    db $fc                                        ; $78da: $fc
    rra                                           ; $78db: $1f
    ld b, e                                       ; $78dc: $43
    sbc c                                         ; $78dd: $99
    xor b                                         ; $78de: $a8
    dec hl                                        ; $78df: $2b
    set 1, b                                      ; $78e0: $cb $c8
    jp hl                                         ; $78e2: $e9


    ld l, a                                       ; $78e3: $6f
    inc hl                                        ; $78e4: $23
    ld d, h                                       ; $78e5: $54
    ld a, $42                                     ; $78e6: $3e $42
    add a                                         ; $78e8: $87
    db $fc                                        ; $78e9: $fc
    cp b                                          ; $78ea: $b8
    xor c                                         ; $78eb: $a9
    db $f4                                        ; $78ec: $f4
    daa                                           ; $78ed: $27
    ld c, a                                       ; $78ee: $4f
    cp h                                          ; $78ef: $bc
    ld de, $5d44                                  ; $78f0: $11 $44 $5d
    cp h                                          ; $78f3: $bc
    and a                                         ; $78f4: $a7
    ld d, c                                       ; $78f5: $51
    dec sp                                        ; $78f6: $3b
    ld b, c                                       ; $78f7: $41
    cp a                                          ; $78f8: $bf
    ld [bc], a                                    ; $78f9: $02
    or l                                          ; $78fa: $b5
    rst $38                                       ; $78fb: $ff
    ld [c], a                                     ; $78fc: $e2
    sbc [hl]                                      ; $78fd: $9e
    sbc c                                         ; $78fe: $99
    jp c, Jump_045_64f3                           ; $78ff: $da $f3 $64

    inc hl                                        ; $7902: $23
    jp c, $7def                                   ; $7903: $da $ef $7d

    add d                                         ; $7906: $82
    inc l                                         ; $7907: $2c

Call_045_7908:
    or b                                          ; $7908: $b0
    call nc, $d319                                ; $7909: $d4 $19 $d3
    jp Jump_045_7478                              ; $790c: $c3 $78 $74


    cp c                                          ; $790f: $b9
    dec e                                         ; $7910: $1d
    and c                                         ; $7911: $a1
    ld b, e                                       ; $7912: $43
    ld c, [hl]                                    ; $7913: $4e
    cp [hl]                                       ; $7914: $be
    ld a, [hl-]                                   ; $7915: $3a
    scf                                           ; $7916: $37
    add hl, hl                                    ; $7917: $29
    ld a, $f4                                     ; $7918: $3e $f4
    xor e                                         ; $791a: $ab
    rst $20                                       ; $791b: $e7
    adc c                                         ; $791c: $89
    cp d                                          ; $791d: $ba
    call nc, $cd7e                                ; $791e: $d4 $7e $cd
    ld c, [hl]                                    ; $7921: $4e
    push de                                       ; $7922: $d5
    ld c, h                                       ; $7923: $4c
    ld e, l                                       ; $7924: $5d
    ld e, b                                       ; $7925: $58
    ld d, $6a                                     ; $7926: $16 $6a
    rra                                           ; $7928: $1f
    scf                                           ; $7929: $37
    daa                                           ; $792a: $27
    xor $14                                       ; $792b: $ee $14
    add h                                         ; $792d: $84
    ld hl, sp-$46                                 ; $792e: $f8 $ba
    ld d, b                                       ; $7930: $50
    ld sp, hl                                     ; $7931: $f9
    ld [$f21d], sp                                ; $7932: $08 $1d $f2
    db $e3                                        ; $7935: $e3
    and [hl]                                      ; $7936: $a6
    jp nc, Jump_000_3c9f                          ; $7937: $d2 $9f $3c

    pop af                                        ; $793a: $f1
    ld b, [hl]                                    ; $793b: $46
    db $10                                        ; $793c: $10
    ld [hl], l                                    ; $793d: $75
    pop af                                        ; $793e: $f1
    sbc [hl]                                      ; $793f: $9e
    ld b, [hl]                                    ; $7940: $46
    db $ed                                        ; $7941: $ed
    inc b                                         ; $7942: $04
    xor c                                         ; $7943: $a9
    ld de, $6575                                  ; $7944: $11 $75 $65
    add hl, de                                    ; $7947: $19
    add hl, sp                                    ; $7948: $39
    db $fd                                        ; $7949: $fd
    ld l, l                                       ; $794a: $6d
    ld h, h                                       ; $794b: $64
    ld sp, $3294                                  ; $794c: $31 $94 $32
    cp c                                          ; $794f: $b9
    dec e                                         ; $7950: $1d
    rst $08                                       ; $7951: $cf
    ld c, l                                       ; $7952: $4d
    push af                                       ; $7953: $f5
    ld d, c                                       ; $7954: $51
    cp b                                          ; $7955: $b8
    ld a, b                                       ; $7956: $78
    adc $de                                       ; $7957: $ce $de
    jr nz, @-$20                                  ; $7959: $20 $de

    ret z                                         ; $795b: $c8

    dec d                                         ; $795c: $15
    cp [hl]                                       ; $795d: $be
    ld a, [hl]                                    ; $795e: $7e
    dec b                                         ; $795f: $05
    or l                                          ; $7960: $b5
    rst $38                                       ; $7961: $ff
    ld [c], a                                     ; $7962: $e2
    sbc [hl]                                      ; $7963: $9e
    sbc c                                         ; $7964: $99
    jp c, $a4f3                                   ; $7965: $da $f3 $a4

    adc $98                                       ; $7968: $ce $98
    ld e, $c6                                     ; $796a: $1e $c6
    and e                                         ; $796c: $a3
    dec bc                                        ; $796d: $0b
    ret z                                         ; $796e: $c8

    db $e3                                        ; $796f: $e3
    rla                                           ; $7970: $17
    dec [hl]                                      ; $7971: $35
    ld sp, hl                                     ; $7972: $f9
    call nc, $cd7e                                ; $7973: $d4 $7e $cd
    ld c, [hl]                                    ; $7976: $4e
    ld b, l                                       ; $7977: $45
    ld e, l                                       ; $7978: $5d
    sub [hl]                                      ; $7979: $96
    cpl                                           ; $797a: $2f
    push hl                                       ; $797b: $e5
    dec c                                         ; $797c: $0d
    and c                                         ; $797d: $a1
    ld [de], a                                    ; $797e: $12
    adc l                                         ; $797f: $8d
    cp $4d                                        ; $7980: $fe $4d
    sbc a                                         ; $7982: $9f
    ld a, [hl-]                                   ; $7983: $3a
    inc hl                                        ; $7984: $23
    ld [hl], c                                    ; $7985: $71
    ld e, $35                                     ; $7986: $1e $35
    ld a, [c]                                     ; $7988: $f2
    db $db                                        ; $7989: $db
    ld d, c                                       ; $798a: $51
    adc c                                         ; $798b: $89
    sbc e                                         ; $798c: $9b
    cp l                                          ; $798d: $bd
    and c                                         ; $798e: $a1
    ld a, l                                       ; $798f: $7d
    dec b                                         ; $7990: $05
    pop hl                                        ; $7991: $e1
    adc c                                         ; $7992: $89
    rst $10                                       ; $7993: $d7
    ld a, $3e                                     ; $7994: $3e $3e
    inc d                                         ; $7996: $14
    add l                                         ; $7997: $85
    daa                                           ; $7998: $27
    jr nz, @+$23                                  ; $7999: $20 $21

    inc a                                         ; $799b: $3c
    ld b, c                                       ; $799c: $41
    or $47                                        ; $799d: $f6 $47
    add sp, -$70                                  ; $799f: $e8 $90
    rra                                           ; $79a1: $1f
    scf                                           ; $79a2: $37
    sub l                                         ; $79a3: $95
    cp $e4                                        ; $79a4: $fe $e4
    adc c                                         ; $79a6: $89
    scf                                           ; $79a7: $37
    add d                                         ; $79a8: $82
    xor b                                         ; $79a9: $a8
    adc e                                         ; $79aa: $8b
    rst $30                                       ; $79ab: $f7
    inc [hl]                                      ; $79ac: $34
    ld l, d                                       ; $79ad: $6a
    daa                                           ; $79ae: $27
    adc b                                         ; $79af: $88
    cp d                                          ; $79b0: $ba
    or d                                          ; $79b1: $b2
    adc h                                         ; $79b2: $8c
    sbc h                                         ; $79b3: $9c
    cp $36                                        ; $79b4: $fe $36
    or d                                          ; $79b6: $b2
    jr jr_045_7a03                                ; $79b7: $18 $4a

    sbc c                                         ; $79b9: $99
    call c, $e78e                                 ; $79ba: $dc $8e $e7
    and [hl]                                      ; $79bd: $a6
    ld a, [$5c28]                                 ; $79be: $fa $28 $5c
    inc a                                         ; $79c1: $3c
    ld h, a                                       ; $79c2: $67
    ld l, a                                       ; $79c3: $6f
    db $10                                        ; $79c4: $10
    ld l, a                                       ; $79c5: $6f
    db $e4                                        ; $79c6: $e4
    ld a, [bc]                                    ; $79c7: $0a
    ld e, a                                       ; $79c8: $5f
    cp a                                          ; $79c9: $bf
    ld [bc], a                                    ; $79ca: $02
    or l                                          ; $79cb: $b5
    rst $38                                       ; $79cc: $ff
    ld h, d                                       ; $79cd: $62
    xor a                                         ; $79ce: $af
    ld l, c                                       ; $79cf: $69
    ld b, a                                       ; $79d0: $47
    add l                                         ; $79d1: $85
    daa                                           ; $79d2: $27
    ei                                            ; $79d3: $fb

Call_045_79d4:
    jp $8663                                      ; $79d4: $c3 $63 $86


    cp b                                          ; $79d7: $b8
    sub c                                         ; $79d8: $91
    call nc, $d319                                ; $79d9: $d4 $19 $d3
    jp $8278                                      ; $79dc: $c3 $78 $82


    ld l, b                                       ; $79df: $68
    ei                                            ; $79e0: $fb
    ld [c], a                                     ; $79e1: $e2
    rst $38                                       ; $79e2: $ff
    bit 2, e                                      ; $79e3: $cb $53
    adc l                                         ; $79e5: $8d
    jp c, Jump_045_44f3                           ; $79e6: $da $f3 $44

    ld c, a                                       ; $79e9: $4f
    ld b, a                                       ; $79ea: $47
    ld b, d                                       ; $79eb: $42
    sbc $6b                                       ; $79ec: $de $6b
    jp c, $cd4d                                   ; $79ee: $da $4d $cd

    ld hl, sp-$32                                 ; $79f1: $f8 $ce
    sbc $20                                       ; $79f3: $de $20
    sbc a                                         ; $79f5: $9f
    ld b, a                                       ; $79f6: $47
    rla                                           ; $79f7: $17
    cp [hl]                                       ; $79f8: $be
    ret c                                         ; $79f9: $d8

    cp c                                          ; $79fa: $b9

Call_045_79fb:
    ld sp, $7175                                  ; $79fb: $31 $75 $71
    ld a, [hl]                                    ; $79fe: $7e
    db $e4                                        ; $79ff: $e4
    inc h                                         ; $7a00: $24
    push de                                       ; $7a01: $d5
    inc sp                                        ; $7a02: $33

jr_045_7a03:
    sbc a                                         ; $7a03: $9f
    inc a                                         ; $7a04: $3c
    ld a, a                                       ; $7a05: $7f
    xor b                                         ; $7a06: $a8
    ld a, h                                       ; $7a07: $7c
    add h                                         ; $7a08: $84
    ld c, $f9                                     ; $7a09: $0e $f9
    ld [hl], c                                    ; $7a0b: $71
    ld d, e                                       ; $7a0c: $53
    jp hl                                         ; $7a0d: $e9


    ld c, a                                       ; $7a0e: $4f
    sbc [hl]                                      ; $7a0f: $9e
    ld a, b                                       ; $7a10: $78
    inc hl                                        ; $7a11: $23
    adc b                                         ; $7a12: $88
    cp d                                          ; $7a13: $ba
    ld a, b                                       ; $7a14: $78
    ld c, a                                       ; $7a15: $4f
    and e                                         ; $7a16: $a3
    halt                                          ; $7a17: $76
    add d                                         ; $7a18: $82
    sub h                                         ; $7a19: $94
    or a                                          ; $7a1a: $b7
    ld a, d                                       ; $7a1b: $7a
    and d                                         ; $7a1c: $a2
    xor [hl]                                      ; $7a1d: $ae
    inc l                                         ; $7a1e: $2c
    inc hl                                        ; $7a1f: $23
    and a                                         ; $7a20: $a7
    cp a                                          ; $7a21: $bf
    adc l                                         ; $7a22: $8d
    inc l                                         ; $7a23: $2c
    add [hl]                                      ; $7a24: $86
    ld d, d                                       ; $7a25: $52
    ld h, $b7                                     ; $7a26: $26 $b7
    db $e3                                        ; $7a28: $e3
    cp c                                          ; $7a29: $b9
    xor c                                         ; $7a2a: $a9
    ld a, $0a                                     ; $7a2b: $3e $0a
    rla                                           ; $7a2d: $17
    rst $08                                       ; $7a2e: $cf
    reti                                          ; $7a2f: $d9


    dec de                                        ; $7a30: $1b
    call nz, $b91b                                ; $7a31: $c4 $1b $b9
    jp nz, $afd7                                  ; $7a34: $c2 $d7 $af

    cp [hl]                                       ; $7a37: $be
    cp b                                          ; $7a38: $b8
    sub h                                         ; $7a39: $94
    ld e, c                                       ; $7a3a: $59
    db $ec                                        ; $7a3b: $ec
    ld c, c                                       ; $7a3c: $49
    ld a, [c]                                     ; $7a3d: $f2
    ld c, d                                       ; $7a3e: $4a
    and c                                         ; $7a3f: $a1
    inc a                                         ; $7a40: $3c
    ld sp, hl                                     ; $7a41: $f9
    cp l                                          ; $7a42: $bd
    ccf                                           ; $7a43: $3f
    sbc $31                                       ; $7a44: $de $31
    inc d                                         ; $7a46: $14
    cp $2c                                        ; $7a47: $fe $2c
    ld [hl], $a7                                  ; $7a49: $36 $a7
    ccf                                           ; $7a4b: $3f
    cp $20                                        ; $7a4c: $fe $20
    cp $bf                                        ; $7a4e: $fe $bf
    or b                                          ; $7a50: $b0
    dec c                                         ; $7a51: $0d
    ld sp, hl                                     ; $7a52: $f9
    inc a                                         ; $7a53: $3c
    reti                                          ; $7a54: $d9


    ld e, $54                                     ; $7a55: $1e $54
    adc $8d                                       ; $7a57: $ce $8d
    ret                                           ; $7a59: $c9


    call nz, Call_000_3b0b                        ; $7a5a: $c4 $0b $3b
    sbc [hl]                                      ; $7a5d: $9e
    sbc d                                         ; $7a5e: $9a
    ld l, c                                       ; $7a5f: $69
    ld a, e                                       ; $7a60: $7b
    rst $00                                       ; $7a61: $c7
    ld [hl], e                                    ; $7a62: $73
    ld d, e                                       ; $7a63: $53
    ld a, l                                       ; $7a64: $7d
    inc d                                         ; $7a65: $14
    ld l, $9e                                     ; $7a66: $2e $9e
    or e                                          ; $7a68: $b3
    scf                                           ; $7a69: $37
    adc b                                         ; $7a6a: $88
    scf                                           ; $7a6b: $37
    ld [hl], d                                    ; $7a6c: $72
    add l                                         ; $7a6d: $85
    cpl                                           ; $7a6e: $2f
    cp $cf                                        ; $7a6f: $fe $cf
    adc e                                         ; $7a71: $8b
    ld d, b                                       ; $7a72: $50
    ld [hl], c                                    ; $7a73: $71
    rst $30                                       ; $7a74: $f7
    inc a                                         ; $7a75: $3c
    ld [hl], c                                    ; $7a76: $71
    ld a, [hl]                                    ; $7a77: $7e
    and h                                         ; $7a78: $a4
    ld b, [hl]                                    ; $7a79: $46
    call nc, $6595                                ; $7a7a: $d4 $95 $65
    db $e4                                        ; $7a7d: $e4
    db $f4                                        ; $7a7e: $f4
    or a                                          ; $7a7f: $b7
    ld de, $1f2a                                  ; $7a80: $11 $2a $1f
    and c                                         ; $7a83: $a1
    ld b, e                                       ; $7a84: $43
    ld a, [hl]                                    ; $7a85: $7e
    call c, $fa54                                 ; $7a86: $dc $54 $fa
    sub e                                         ; $7a89: $93
    daa                                           ; $7a8a: $27
    sbc $08                                       ; $7a8b: $de $08
    and d                                         ; $7a8d: $a2
    ld l, $de                                     ; $7a8e: $2e $de
    db $d3                                        ; $7a90: $d3
    xor b                                         ; $7a91: $a8
    sbc l                                         ; $7a92: $9d
    and b                                         ; $7a93: $a0
    ld e, a                                       ; $7a94: $5f
    ld bc, $d96d                                  ; $7a95: $01 $6d $d9
    ld a, c                                       ; $7a98: $79
    ld b, a                                       ; $7a99: $47
    call nc, $c4d8                                ; $7a9a: $d4 $d8 $c4
    rst $38                                       ; $7a9d: $ff
    ld hl, $784f                                  ; $7a9e: $21 $4f $78
    or d                                          ; $7aa1: $b2
    ccf                                           ; $7aa2: $3f
    sbc [hl]                                      ; $7aa3: $9e
    or e                                          ; $7aa4: $b3

Call_045_7aa5:
    inc l                                         ; $7aa5: $2c
    rra                                           ; $7aa6: $1f
    add l                                         ; $7aa7: $85
    cp l                                          ; $7aa8: $bd
    ld de, $2fcf                                  ; $7aa9: $11 $cf $2f
    xor b                                         ; $7aac: $a8
    sbc c                                         ; $7aad: $99
    or $3e                                        ; $7aae: $f6 $3e
    add l                                         ; $7ab0: $85
    ld l, $86                                     ; $7ab1: $2e $86
    ld [$f789], a                                 ; $7ab3: $ea $89 $f7
    ld d, c                                       ; $7ab6: $51
    rla                                           ; $7ab7: $17
    ld e, a                                       ; $7ab8: $5f
    ret c                                         ; $7ab9: $d8

    ld [bc], a                                    ; $7aba: $02
    ld [de], a                                    ; $7abb: $12
    and [hl]                                      ; $7abc: $a6
    sub b                                         ; $7abd: $90
    ld a, [de]                                    ; $7abe: $1a
    ld h, c                                       ; $7abf: $61
    ld e, b                                       ; $7ac0: $58
    ld [hl], l                                    ; $7ac1: $75
    ld a, [c]                                     ; $7ac2: $f2
    db $fc                                        ; $7ac3: $fc
    dec [hl]                                      ; $7ac4: $35
    db $e3                                        ; $7ac5: $e3
    ld a, e                                       ; $7ac6: $7b
    dec de                                        ; $7ac7: $1b
    jp nz, Jump_045_5f08                          ; $7ac8: $c2 $08 $5f

    call c, $8148                                 ; $7acb: $dc $48 $81
    ld h, $9f                                     ; $7ace: $26 $9f
    db $fd                                        ; $7ad0: $fd
    ld e, c                                       ; $7ad1: $59
    xor [hl]                                      ; $7ad2: $ae
    add c                                         ; $7ad3: $81
    ld e, h                                       ; $7ad4: $5c
    or l                                          ; $7ad5: $b5
    adc h                                         ; $7ad6: $8c
    pop af                                        ; $7ad7: $f1
    dec bc                                        ; $7ad8: $0b
    inc hl                                        ; $7ad9: $23
    ld a, [bc]                                    ; $7ada: $0a
    ld a, e                                       ; $7adb: $7b
    inc hl                                        ; $7adc: $23
    sbc $d3                                       ; $7add: $de $d3
    xor b                                         ; $7adf: $a8
    sbc l                                         ; $7ae0: $9d
    jr nz, @-$14                                  ; $7ae1: $20 $ea

    ld [c], a                                     ; $7ae3: $e2
    rlc [hl]                                      ; $7ae4: $cb $06
    call Call_000_208f                            ; $7ae6: $cd $8f $20
    push de                                       ; $7ae9: $d5
    ld l, e                                       ; $7aea: $6b
    cp $8b                                        ; $7aeb: $fe $8b
    rst $30                                       ; $7aed: $f7
    xor e                                         ; $7aee: $ab
    add hl, hl                                    ; $7aef: $29
    rst $10                                       ; $7af0: $d7
    rst $30                                       ; $7af1: $f7
    ld a, l                                       ; $7af2: $7d
    ld a, h                                       ; $7af3: $7c
    jr z, @-$08                                   ; $7af4: $28 $f6

    cp $a8                                        ; $7af6: $fe $a8
    ld c, e                                       ; $7af8: $4b
    db $ed                                        ; $7af9: $ed
    scf                                           ; $7afa: $37
    inc hl                                        ; $7afb: $23
    sub b                                         ; $7afc: $90
    cp d                                          ; $7afd: $ba
    jp $ab0c                                      ; $7afe: $c3 $0c $ab


    cp c                                          ; $7b01: $b9
    ld [bc], a                                    ; $7b02: $02
    or l                                          ; $7b03: $b5
    rst $38                                       ; $7b04: $ff
    jp nz, $e436                                  ; $7b05: $c2 $36 $e4

    di                                            ; $7b08: $f3
    and h                                         ; $7b09: $a4
    dec l                                         ; $7b0a: $2d
    dec sp                                        ; $7b0b: $3b
    rst $28                                       ; $7b0c: $ef
    adc b                                         ; $7b0d: $88
    ld a, [de]                                    ; $7b0e: $1a
    dec de                                        ; $7b0f: $1b
    ld e, l                                       ; $7b10: $5d
    or $87                                        ; $7b11: $f6 $87
    jp hl                                         ; $7b13: $e9


    rst $00                                       ; $7b14: $c7
    di                                            ; $7b15: $f3
    set 4, a                                      ; $7b16: $cb $e7
    ld d, e                                       ; $7b18: $53
    ld a, e                                       ; $7b19: $7b
    or h                                          ; $7b1a: $b4
    xor $de                                       ; $7b1b: $ee $de
    cp b                                          ; $7b1d: $b8
    add sp, -$5e                                  ; $7b1e: $e8 $a2
    add [hl]                                      ; $7b20: $86
    ld b, h                                       ; $7b21: $44
    ret z                                         ; $7b22: $c8

    inc hl                                        ; $7b23: $23
    db $ed                                        ; $7b24: $ed
    cpl                                           ; $7b25: $2f
    ld c, b                                       ; $7b26: $48
    ld h, c                                       ; $7b27: $61
    xor d                                         ; $7b28: $aa
    ld c, $f6                                     ; $7b29: $0e $f6
    ld d, a                                       ; $7b2b: $57
    inc sp                                        ; $7b2c: $33
    xor l                                         ; $7b2d: $ad
    ld a, d                                       ; $7b2e: $7a
    cp l                                          ; $7b2f: $bd
    daa                                           ; $7b30: $27
    adc $5f                                       ; $7b31: $ce $5f
    ld l, a                                       ; $7b33: $6f
    ld b, [hl]                                    ; $7b34: $46
    inc de                                        ; $7b35: $13
    ld a, [hl+]                                   ; $7b36: $2a
    sub e                                         ; $7b37: $93
    ld [hl], d                                    ; $7b38: $72
    add hl, hl                                    ; $7b39: $29
    db $10                                        ; $7b3a: $10
    cp $b8                                        ; $7b3b: $fe $b8
    xor c                                         ; $7b3d: $a9
    sub b                                         ; $7b3e: $90
    adc a                                         ; $7b3f: $8f
    ei                                            ; $7b40: $fb
    ld a, [c]                                     ; $7b41: $f2
    ld e, c                                       ; $7b42: $59
    ld l, h                                       ; $7b43: $6c
    ld d, $bb                                     ; $7b44: $16 $bb
    rst $10                                       ; $7b46: $d7
    add l                                         ; $7b47: $85
    jp z, $e847                                   ; $7b48: $ca $47 $e8

    sub b                                         ; $7b4b: $90
    rra                                           ; $7b4c: $1f
    scf                                           ; $7b4d: $37
    sub l                                         ; $7b4e: $95
    cp $e4                                        ; $7b4f: $fe $e4
    adc c                                         ; $7b51: $89
    scf                                           ; $7b52: $37
    add d                                         ; $7b53: $82
    xor b                                         ; $7b54: $a8
    adc e                                         ; $7b55: $8b
    rst $30                                       ; $7b56: $f7
    inc [hl]                                      ; $7b57: $34
    ld l, d                                       ; $7b58: $6a
    daa                                           ; $7b59: $27
    ld c, b                                       ; $7b5a: $48
    adc l                                         ; $7b5b: $8d
    xor b                                         ; $7b5c: $a8
    dec hl                                        ; $7b5d: $2b
    set 1, b                                      ; $7b5e: $cb $c8
    jp hl                                         ; $7b60: $e9


    ld l, a                                       ; $7b61: $6f
    inc hl                                        ; $7b62: $23
    adc e                                         ; $7b63: $8b
    and c                                         ; $7b64: $a1
    sub h                                         ; $7b65: $94
    ret                                           ; $7b66: $c9


    db $ed                                        ; $7b67: $ed
    ld a, b                                       ; $7b68: $78
    ld l, [hl]                                    ; $7b69: $6e
    xor d                                         ; $7b6a: $aa
    adc a                                         ; $7b6b: $8f
    jp nz, Jump_045_73c5                          ; $7b6c: $c2 $c5 $73

    or $06                                        ; $7b6f: $f6 $06
    pop af                                        ; $7b71: $f1
    ld b, [hl]                                    ; $7b72: $46
    xor [hl]                                      ; $7b73: $ae
    ldh a, [$f5]                                  ; $7b74: $f0 $f5
    dec hl                                        ; $7b76: $2b
    dec e                                         ; $7b77: $1d
    ret c                                         ; $7b78: $d8

    add a                                         ; $7b79: $87
    db $fc                                        ; $7b7a: $fc
    set 5, a                                      ; $7b7b: $cb $ef
    db $fd                                        ; $7b7d: $fd
    add hl, hl                                    ; $7b7e: $29
    db $fc                                        ; $7b7f: $fc
    call nz, Call_045_411b                        ; $7b80: $c4 $1b $41
    call nc, $dda5                                ; $7b83: $d4 $a5 $dd
    inc de                                        ; $7b86: $13
    call $c4a3                                    ; $7b87: $cd $a3 $c4
    db $d3                                        ; $7b8a: $d3
    and [hl]                                      ; $7b8b: $a6
    inc d                                         ; $7b8c: $14
    ld e, l                                       ; $7b8d: $5d
    ld l, d                                       ; $7b8e: $6a
    cp a                                          ; $7b8f: $bf
    add hl, de                                    ; $7b90: $19
    add c                                         ; $7b91: $81
    ld a, $1d                                     ; $7b92: $3e $1d
    db $db                                        ; $7b94: $db
    sub b                                         ; $7b95: $90
    sbc a                                         ; $7b96: $9f
    db $db                                        ; $7b97: $db
    ld l, c                                       ; $7b98: $69
    db $ed                                        ; $7b99: $ed
    db $e4                                        ; $7b9a: $e4
    db $ed                                        ; $7b9b: $ed
    ld h, $2d                                     ; $7b9c: $26 $2d
    and h                                         ; $7b9e: $a4
    xor c                                         ; $7b9f: $a9
    add $9a                                       ; $7ba0: $c6 $9a
    ld c, $e2                                     ; $7ba2: $0e $e2
    ld h, b                                       ; $7ba4: $60
    xor $b3                                       ; $7ba5: $ee $b3
    dec a                                         ; $7ba7: $3d
    jp c, $8b28                                   ; $7ba8: $da $28 $8b

    and c                                         ; $7bab: $a1
    sub h                                         ; $7bac: $94
    ret                                           ; $7bad: $c9


    ld [bc], a                                    ; $7bae: $02
    ld c, e                                       ; $7baf: $4b
    db $ed                                        ; $7bb0: $ed
    pop de                                        ; $7bb1: $d1
    cp d                                          ; $7bb2: $ba
    ld a, e                                       ; $7bb3: $7b
    db $e3                                        ; $7bb4: $e3
    jp nc, $edaf                                  ; $7bb5: $d2 $af $ed

    dec [hl]                                      ; $7bb8: $35
    jp c, $a35e                                   ; $7bb9: $da $5e $a3

    db $ed                                        ; $7bbc: $ed
    ld a, l                                       ; $7bbd: $7d
    ld [hl], $88                                  ; $7bbe: $36 $88
    scf                                           ; $7bc0: $37
    add d                                         ; $7bc1: $82
    call nc, $c308                                ; $7bc2: $d4 $08 $c3

Call_045_7bc5:
    xor d                                         ; $7bc5: $aa
    sub e                                         ; $7bc6: $93
    rst $20                                       ; $7bc7: $e7
    rst $28                                       ; $7bc8: $ef
    ld d, a                                       ; $7bc9: $57
    adc l                                         ; $7bca: $8d
    or h                                          ; $7bcb: $b4
    jp nc, Jump_045_5644                          ; $7bcc: $d2 $44 $56

    adc l                                         ; $7bcf: $8d
    or [hl]                                       ; $7bd0: $b6
    jp nc, Jump_045_5644                          ; $7bd1: $d2 $44 $56

    xor l                                         ; $7bd4: $ad
    ld [$2ff5], a                                 ; $7bd5: $ea $f5 $2f
    ld l, d                                       ; $7bd8: $6a
    db $e4                                        ; $7bd9: $e4
    ld e, d                                       ; $7bda: $5a
    ld e, h                                       ; $7bdb: $5c
    ld bc, $6175                                  ; $7bdc: $01 $75 $61
    ld [$4ad2], a                                 ; $7bdf: $ea $d2 $4a
    inc de                                        ; $7be2: $13
    xor c                                         ; $7be3: $a9
    db $db                                        ; $7be4: $db
    ld d, c                                       ; $7be5: $51
    call Call_045_6d15                            ; $7be6: $cd $15 $6d
    pop de                                        ; $7be9: $d1
    ld d, a                                       ; $7bea: $57
    xor a                                         ; $7beb: $af
    ret                                           ; $7bec: $c9


    and l                                         ; $7bed: $a5
    sub l                                         ; $7bee: $95
    ld h, $52                                     ; $7bef: $26 $52
    or a                                          ; $7bf1: $b7
    and e                                         ; $7bf2: $a3
    sbc d                                         ; $7bf3: $9a
    dec hl                                        ; $7bf4: $2b
    cp [hl]                                       ; $7bf5: $be
    adc b                                         ; $7bf6: $88
    adc h                                         ; $7bf7: $8c
    and h                                         ; $7bf8: $a4
    ldh a, [$5f]                                  ; $7bf9: $f0 $5f
    call c, $0dec                                 ; $7bfb: $dc $ec $0d
    ld [c], a                                     ; $7bfe: $e2
    adc l                                         ; $7bff: $8d
    cp h                                          ; $7c00: $bc
    xor b                                         ; $7c01: $a8

jr_045_7c02:
    ret                                           ; $7c02: $c9


    ld b, [hl]                                    ; $7c03: $46
    cp h                                          ; $7c04: $bc
    and a                                         ; $7c05: $a7
    ld d, c                                       ; $7c06: $51
    dec sp                                        ; $7c07: $3b
    ld b, c                                       ; $7c08: $41
    ld a, h                                       ; $7c09: $7c
    reti                                          ; $7c0a: $d9


    and b                                         ; $7c0b: $a0
    ld sp, hl                                     ; $7c0c: $f9
    ld de, $7aa4                                  ; $7c0d: $11 $a4 $7a
    call $f17f                                    ; $7c10: $cd $7f $f1
    ld a, [hl]                                    ; $7c13: $7e
    dec [hl]                                      ; $7c14: $35
    push hl                                       ; $7c15: $e5
    ld [hl], h                                    ; $7c16: $74
    ld [hl], c                                    ; $7c17: $71
    ld b, $35                                     ; $7c18: $06 $35
    ld [hl], c                                    ; $7c1a: $71
    ld a, [hl]                                    ; $7c1b: $7e
    ld b, h                                       ; $7c1c: $44
    dec c                                         ; $7c1d: $0d
    ld l, c                                       ; $7c1e: $69
    jr z, jr_045_7c9d                             ; $7c1f: $28 $7c

    add hl, sp                                    ; $7c21: $39
    add hl, sp                                    ; $7c22: $39
    ld [c], a                                     ; $7c23: $e2
    cp l                                          ; $7c24: $bd
    and c                                         ; $7c25: $a1
    ld e, a                                       ; $7c26: $5f
    ld bc, $d21d                                  ; $7c27: $01 $1d $d2
    rla                                           ; $7c2a: $17
    dec [hl]                                      ; $7c2b: $35
    add hl, hl                                    ; $7c2c: $29
    cp b                                          ; $7c2d: $b8
    ld a, h                                       ; $7c2e: $7c
    call c, Call_045_4f18                         ; $7c2f: $dc $18 $4f
    call nc, $c4e5                                ; $7c32: $d4 $e5 $c4
    cp l                                          ; $7c35: $bd
    jr nc, jr_045_7c02                            ; $7c36: $30 $ca

    ld d, l                                       ; $7c38: $55
    and a                                         ; $7c39: $a7
    bit 0, [hl]                                   ; $7c3a: $cb $46
    cp h                                          ; $7c3c: $bc
    and a                                         ; $7c3d: $a7
    ld d, c                                       ; $7c3e: $51
    dec sp                                        ; $7c3f: $3b
    ld b, c                                       ; $7c40: $41
    ld a, h                                       ; $7c41: $7c
    reti                                          ; $7c42: $d9


    and b                                         ; $7c43: $a0
    ld sp, hl                                     ; $7c44: $f9
    ld de, $7aa4                                  ; $7c45: $11 $a4 $7a
    call $f17f                                    ; $7c48: $cd $7f $f1
    ld a, [hl]                                    ; $7c4b: $7e
    dec [hl]                                      ; $7c4c: $35
    push hl                                       ; $7c4d: $e5
    or d                                          ; $7c4e: $b2
    ld c, h                                       ; $7c4f: $4c
    add hl, hl                                    ; $7c50: $29
    inc hl                                        ; $7c51: $23
    inc de                                        ; $7c52: $13
    dec sp                                        ; $7c53: $3b
    ld [de], a                                    ; $7c54: $12
    ei                                            ; $7c55: $fb
    xor l                                         ; $7c56: $ad
    ld e, h                                       ; $7c57: $5c
    call nc, $b345                                ; $7c58: $d4 $45 $b3
    rla                                           ; $7c5b: $17
    add l                                         ; $7c5c: $85
    db $fc                                        ; $7c5d: $fc
    ld d, c                                       ; $7c5e: $51
    sbc [hl]                                      ; $7c5f: $9e
    ld a, [hl]                                    ; $7c60: $7e
    dec b                                         ; $7c61: $05
    xor l                                         ; $7c62: $ad
    ld a, [hl-]                                   ; $7c63: $3a
    ld b, a                                       ; $7c64: $47
    dec hl                                        ; $7c65: $2b
    cp d                                          ; $7c66: $ba
    ccf                                           ; $7c67: $3f
    rr e                                          ; $7c68: $cb $1b
    sbc h                                         ; $7c6a: $9c
    di                                            ; $7c6b: $f3
    rra                                           ; $7c6c: $1f
    ld [c], a                                     ; $7c6d: $e2
    dec a                                         ; $7c6e: $3d
    adc l                                         ; $7c6f: $8d
    jp c, $e209                                   ; $7c70: $da $09 $e2

    rlc [hl]                                      ; $7c73: $cb $06
    call Call_000_208f                            ; $7c75: $cd $8f $20
    push de                                       ; $7c78: $d5
    ld l, e                                       ; $7c79: $6b
    cp $8b                                        ; $7c7a: $fe $8b
    rst $30                                       ; $7c7c: $f7
    xor e                                         ; $7c7d: $ab
    add hl, hl                                    ; $7c7e: $29
    rla                                           ; $7c7f: $17
    scf                                           ; $7c80: $37
    dec d                                         ; $7c81: $15
    sub l                                         ; $7c82: $95
    db $eb                                        ; $7c83: $eb
    db $d3                                        ; $7c84: $d3
    ld hl, $6145                                  ; $7c85: $21 $45 $61
    add sp, $42                                   ; $7c88: $e8 $42
    push hl                                       ; $7c8a: $e5
    ld b, e                                       ; $7c8b: $43
    adc $e6                                       ; $7c8c: $ce $e6
    rrca                                          ; $7c8e: $0f
    push hl                                       ; $7c8f: $e5
    db $db                                        ; $7c90: $db
    ld b, a                                       ; $7c91: $47
    inc h                                         ; $7c92: $24
    ld a, $23                                     ; $7c93: $3e $23
    ld l, [hl]                                    ; $7c95: $6e
    inc h                                         ; $7c96: $24
    add l                                         ; $7c97: $85
    ld a, [hl-]                                   ; $7c98: $3a
    add a                                         ; $7c99: $87
    ld d, d                                       ; $7c9a: $52
    ld h, $27                                     ; $7c9b: $26 $27

jr_045_7c9d:
    and c                                         ; $7c9d: $a1
    ld a, [c]                                     ; $7c9e: $f2
    ld [hl], c                                    ; $7c9f: $71
    ld d, e                                       ; $7ca0: $53
    jp hl                                         ; $7ca1: $e9


    ld c, a                                       ; $7ca2: $4f
    sbc [hl]                                      ; $7ca3: $9e
    ld a, b                                       ; $7ca4: $78
    inc hl                                        ; $7ca5: $23
    ret nc                                        ; $7ca6: $d0

    and l                                         ; $7ca7: $a5
    ld e, h                                       ; $7ca8: $5c
    db $f4                                        ; $7ca9: $f4
    ld b, [hl]                                    ; $7caa: $46
    db $dd                                        ; $7cab: $dd
    cp l                                          ; $7cac: $bd
    ld c, h                                       ; $7cad: $4c
    cp a                                          ; $7cae: $bf
    ld [bc], a                                    ; $7caf: $02
    or l                                          ; $7cb0: $b5
    daa                                           ; $7cb1: $27
    dec b                                         ; $7cb2: $05
    jp nz, $13c7                                  ; $7cb3: $c2 $c7 $13

    ld [hl], l                                    ; $7cb6: $75
    add [hl]                                      ; $7cb7: $86
    jr c, jr_045_7cf9                             ; $7cb8: $38 $3f

    ld [hl], d                                    ; $7cba: $72
    pop de                                        ; $7cbb: $d1
    ld d, b                                       ; $7cbc: $50
    ld h, c                                       ; $7cbd: $61
    rst $28                                       ; $7cbe: $ef
    ld c, e                                       ; $7cbf: $4b
    ld h, a                                       ; $7cc0: $67
    ld hl, sp-$4e                                 ; $7cc1: $f8 $b2
    ld b, c                                       ; $7cc3: $41
    jr nz, jr_045_7cea                            ; $7cc4: $20 $24

    ld b, h                                       ; $7cc6: $44
    adc l                                         ; $7cc7: $8d
    ld c, h                                       ; $7cc8: $4c
    ld [hl], $e2                                  ; $7cc9: $36 $e2
    dec a                                         ; $7ccb: $3d
    adc l                                         ; $7ccc: $8d
    jp c, $e209                                   ; $7ccd: $da $09 $e2

    rlc [hl]                                      ; $7cd0: $cb $06
    call Call_000_208f                            ; $7cd2: $cd $8f $20
    push de                                       ; $7cd5: $d5
    ld l, e                                       ; $7cd6: $6b
    cp $8b                                        ; $7cd7: $fe $8b
    rst $30                                       ; $7cd9: $f7
    xor e                                         ; $7cda: $ab
    add hl, hl                                    ; $7cdb: $29
    rla                                           ; $7cdc: $17
    pop bc                                        ; $7cdd: $c1
    sbc $88                                       ; $7cde: $de $88
    dec de                                        ; $7ce0: $1b
    pop af                                        ; $7ce1: $f1
    add d                                         ; $7ce2: $82
    ld a, b                                       ; $7ce3: $78
    inc hl                                        ; $7ce4: $23
    rla                                           ; $7ce5: $17
    ld [hl], l                                    ; $7ce6: $75
    pop af                                        ; $7ce7: $f1
    cp h                                          ; $7ce8: $bc
    ld [hl], c                                    ; $7ce9: $71

jr_045_7cea:
    ld l, [hl]                                    ; $7cea: $6e
    db $ec                                        ; $7ceb: $ec
    dec b                                         ; $7cec: $05
    db $fd                                        ; $7ced: $fd
    ld a, [bc]                                    ; $7cee: $0a
    db $ed                                        ; $7cef: $ed
    ld hl, $35cb                                  ; $7cf0: $21 $cb $35
    sub b                                         ; $7cf3: $90
    ld h, l                                       ; $7cf4: $65
    jr @-$3c                                      ; $7cf5: $18 $c2

    rla                                           ; $7cf7: $17
    scf                                           ; $7cf8: $37

jr_045_7cf9:
    sub l                                         ; $7cf9: $95
    cp $e4                                        ; $7cfa: $fe $e4
    adc c                                         ; $7cfc: $89
    scf                                           ; $7cfd: $37
    ld [hl], d                                    ; $7cfe: $72
    ld d, c                                       ; $7cff: $51
    rla                                           ; $7d00: $17
    rst $28                                       ; $7d01: $ef
    ld l, c                                       ; $7d02: $69
    call nc, Call_000_104e                        ; $7d03: $d4 $4e $10
    ld e, a                                       ; $7d06: $5f
    ld [hl], $68                                  ; $7d07: $36 $68
    ld a, [hl]                                    ; $7d09: $7e
    inc b                                         ; $7d0a: $04
    xor c                                         ; $7d0b: $a9
    ld e, [hl]                                    ; $7d0c: $5e
    di                                            ; $7d0d: $f3
    ld e, a                                       ; $7d0e: $5f
    cp h                                          ; $7d0f: $bc
    ld e, a                                       ; $7d10: $5f
    ld c, l                                       ; $7d11: $4d
    cp c                                          ; $7d12: $b9
    ret c                                         ; $7d13: $d8

    add hl, sp                                    ; $7d14: $39
    rst $38                                       ; $7d15: $ff
    ld b, c                                       ; $7d16: $41
    adc l                                         ; $7d17: $8d
    ld c, h                                       ; $7d18: $4c
    cp h                                          ; $7d19: $bc
    and a                                         ; $7d1a: $a7
    ld d, c                                       ; $7d1b: $51
    dec sp                                        ; $7d1c: $3b
    ld b, c                                       ; $7d1d: $41
    db $ec                                        ; $7d1e: $ec
    dec c                                         ; $7d1f: $0d
    ld b, c                                       ; $7d20: $41
    sub [hl]                                      ; $7d21: $96
    ld [hl], c                                    ; $7d22: $71
    inc de                                        ; $7d23: $13
    scf                                           ; $7d24: $37
    dec d                                         ; $7d25: $15
    sub l                                         ; $7d26: $95
    db $eb                                        ; $7d27: $eb
    ei                                            ; $7d28: $fb
    ld a, $b3                                     ; $7d29: $3e $b3
    inc l                                         ; $7d2b: $2c
    call nc, $cba0                                ; $7d2c: $d4 $a0 $cb
    add a                                         ; $7d2f: $87
    sbc h                                         ; $7d30: $9c
    call $05d0                                    ; $7d31: $cd $d0 $05
    jp nz, $95f6                                  ; $7d34: $c2 $f6 $95

    ld e, $fd                                     ; $7d37: $1e $fd
    ld a, [bc]                                    ; $7d39: $0a
    ld l, l                                       ; $7d3a: $6d
    sub h                                         ; $7d3b: $94
    dec hl                                        ; $7d3c: $2b
    inc a                                         ; $7d3d: $3c
    ld [hl-], a                                   ; $7d3e: $32
    ld l, c                                       ; $7d3f: $69
    and d                                         ; $7d40: $a2
    pop af                                        ; $7d41: $f1
    ld h, $e2                                     ; $7d42: $26 $e2
    dec a                                         ; $7d44: $3d
    adc l                                         ; $7d45: $8d
    jp c, $e209                                   ; $7d46: $da $09 $e2

    rlc [hl]                                      ; $7d49: $cb $06
    call Call_000_208f                            ; $7d4b: $cd $8f $20
    push de                                       ; $7d4e: $d5
    ld l, e                                       ; $7d4f: $6b
    cp $8b                                        ; $7d50: $fe $8b
    rst $30                                       ; $7d52: $f7
    xor e                                         ; $7d53: $ab
    add hl, hl                                    ; $7d54: $29
    and a                                         ; $7d55: $a7
    adc e                                         ; $7d56: $8b
    ld a, [hl-]                                   ; $7d57: $3a
    ld a, [c]                                     ; $7d58: $f2
    ld a, [bc]                                    ; $7d59: $0a
    ld [hl], d                                    ; $7d5a: $72
    sub d                                         ; $7d5b: $92
    ld h, $9a                                     ; $7d5c: $26 $9a
    ld c, b                                       ; $7d5e: $48
    ld b, c                                       ; $7d5f: $41
    ld [hl], l                                    ; $7d60: $75
    db $fd                                        ; $7d61: $fd
    ld a, [bc]                                    ; $7d62: $0a
    ld l, l                                       ; $7d63: $6d
    sub h                                         ; $7d64: $94
    dec hl                                        ; $7d65: $2b
    inc a                                         ; $7d66: $3c
    ld [hl-], a                                   ; $7d67: $32
    ld l, c                                       ; $7d68: $69
    and [hl]                                      ; $7d69: $a6
    pop af                                        ; $7d6a: $f1
    cp b                                          ; $7d6b: $b8
    xor c                                         ; $7d6c: $a9
    db $f4                                        ; $7d6d: $f4
    daa                                           ; $7d6e: $27
    ld c, a                                       ; $7d6f: $4f
    cp h                                          ; $7d70: $bc
    sub c                                         ; $7d71: $91
    adc e                                         ; $7d72: $8b
    cp d                                          ; $7d73: $ba
    ld a, b                                       ; $7d74: $78
    ld c, a                                       ; $7d75: $4f
    and e                                         ; $7d76: $a3
    halt                                          ; $7d77: $76
    add d                                         ; $7d78: $82
    ld hl, sp-$4e                                 ; $7d79: $f8 $b2
    ld b, c                                       ; $7d7b: $41
    di                                            ; $7d7c: $f3
    inc hl                                        ; $7d7d: $23
    ld c, b                                       ; $7d7e: $48
    push af                                       ; $7d7f: $f5
    sbc d                                         ; $7d80: $9a
    rst $38                                       ; $7d81: $ff
    ld [c], a                                     ; $7d82: $e2
    db $fd                                        ; $7d83: $fd
    ld l, d                                       ; $7d84: $6a
    jp z, Jump_045_69f5                           ; $7d85: $ca $f5 $69

    rst $28                                       ; $7d88: $ef
    ld d, e                                       ; $7d89: $53
    cp l                                          ; $7d8a: $bd
    and [hl]                                      ; $7d8b: $a6
    db $dd                                        ; $7d8c: $dd

jr_045_7d8d:
    ld e, b                                       ; $7d8d: $58
    sub [hl]                                      ; $7d8e: $96
    scf                                           ; $7d8f: $37
    ld b, [hl]                                    ; $7d90: $46
    call nc, $87c5                                ; $7d91: $d4 $c5 $87
    and d                                         ; $7d94: $a2
    jr nc, jr_045_7de9                            ; $7d95: $30 $52

    inc hl                                        ; $7d97: $23
    sub h                                         ; $7d98: $94
    ld l, a                                       ; $7d99: $6f
    ld b, e                                       ; $7d9a: $43
    sub a                                         ; $7d9b: $97

Jump_045_7d9c:
    rst $18                                       ; $7d9c: $df
    ld l, h                                       ; $7d9d: $6c
    ld c, b                                       ; $7d9e: $48
    add hl, de                                    ; $7d9f: $19
    sbc c                                         ; $7da0: $99
    inc d                                         ; $7da1: $14
    cp d                                          ; $7da2: $ba
    ret nz                                        ; $7da3: $c0

    cp h                                          ; $7da4: $bc
    sbc e                                         ; $7da5: $9b
    ld [hl+], a                                   ; $7da6: $22
    ret z                                         ; $7da7: $c8

jr_045_7da8:
    ld l, a                                       ; $7da8: $6f
    ld b, a                                       ; $7da9: $47
    dec b                                         ; $7daa: $05
    ld e, c                                       ; $7dab: $59
    and [hl]                                      ; $7dac: $a6
    sub h                                         ; $7dad: $94
    sub c                                         ; $7dae: $91
    ret                                           ; $7daf: $c9


    dec hl                                        ; $7db0: $2b
    ld [hl], l                                    ; $7db1: $75
    halt                                          ; $7db2: $76
    call z, Call_000_3ed4                         ; $7db3: $cc $d4 $3e
    jr z, jr_045_7dbd                             ; $7db6: $28 $05

    add [hl]                                      ; $7db8: $86
    inc l                                         ; $7db9: $2c
    or b                                          ; $7dba: $b0
    ld [hl], e                                    ; $7dbb: $73
    or e                                          ; $7dbc: $b3

jr_045_7dbd:
    and a                                         ; $7dbd: $a7
    and b                                         ; $7dbe: $a0
    ld e, a                                       ; $7dbf: $5f
    ld bc, $979e                                  ; $7dc0: $01 $9e $97
    ld [hl-], a                                   ; $7dc3: $32
    ld [hl-], a                                   ; $7dc4: $32
    ld sp, hl                                     ; $7dc5: $f9
    db $ed                                        ; $7dc6: $ed
    xor b                                         ; $7dc7: $a8
    jr nz, jr_045_7da8                            ; $7dc8: $20 $de

    db $d3                                        ; $7dca: $d3
    xor b                                         ; $7dcb: $a8
    sbc l                                         ; $7dcc: $9d
    jr nz, jr_045_7d8d                            ; $7dcd: $20 $be

    ld l, h                                       ; $7dcf: $6c
    ret nc                                        ; $7dd0: $d0

    db $fc                                        ; $7dd1: $fc
    ld [$bd52], sp                                ; $7dd2: $08 $52 $bd
    and $bf                                       ; $7dd5: $e6 $bf
    ld a, b                                       ; $7dd7: $78
    cp a                                          ; $7dd8: $bf
    sbc d                                         ; $7dd9: $9a
    ld [hl], d                                    ; $7dda: $72
    sub c                                         ; $7ddb: $91
    cpl                                           ; $7ddc: $2f
    ld l, [hl]                                    ; $7ddd: $6e
    ld a, [bc]                                    ; $7dde: $0a
    inc hl                                        ; $7ddf: $23
    daa                                           ; $7de0: $27
    pop de                                        ; $7de1: $d1
    adc $26                                       ; $7de2: $ce $26
    dec bc                                        ; $7de4: $0b
    inc l                                         ; $7de5: $2c
    or l                                          ; $7de6: $b5
    ld b, a                                       ; $7de7: $47
    db $eb                                        ; $7de8: $eb

jr_045_7de9:
    xor $8d                                       ; $7de9: $ee $8d
    ld c, e                                       ; $7deb: $4b
    sbc a                                         ; $7dec: $9f
    or [hl]                                       ; $7ded: $b6
    add sp, -$65                                  ; $7dee: $e8 $9b
    ld a, [$333c]                                 ; $7df0: $fa $3c $33
    add h                                         ; $7df3: $84
    cp a                                          ; $7df4: $bf
    add d                                         ; $7df5: $82
    jr nc, jr_045_7e52                            ; $7df6: $30 $5a

    call z, $6c32                                 ; $7df8: $cc $32 $6c
    jr z, jr_045_7e79                             ; $7dfb: $28 $7c

    ld h, c                                       ; $7dfd: $61
    dec de                                        ; $7dfe: $1b
    ld a, [c]                                     ; $7dff: $f2
    ld c, l                                       ; $7e00: $4d
    db $10                                        ; $7e01: $10
    rra                                           ; $7e02: $1f
    ld a, [$51db]                                 ; $7e03: $fa $db $51
    ld sp, hl                                     ; $7e06: $f9
    ld a, [hl]                                    ; $7e07: $7e
    dec b                                         ; $7e08: $05
    cp [hl]                                       ; $7e09: $be

jr_045_7e0a:
    ld c, b                                       ; $7e0a: $48
    ld [hl], c                                    ; $7e0b: $71
    ld e, a                                       ; $7e0c: $5f
    jp hl                                         ; $7e0d: $e9


    cpl                                           ; $7e0e: $2f
    dec de                                        ; $7e0f: $1b
    ld h, c                                       ; $7e10: $61
    adc d                                         ; $7e11: $8a
    ld a, b                                       ; $7e12: $78
    ld c, a                                       ; $7e13: $4f
    and e                                         ; $7e14: $a3
    halt                                          ; $7e15: $76
    add d                                         ; $7e16: $82
    ld hl, sp-$4e                                 ; $7e17: $f8 $b2
    ld b, c                                       ; $7e19: $41
    di                                            ; $7e1a: $f3
    inc hl                                        ; $7e1b: $23
    ld c, b                                       ; $7e1c: $48
    push af                                       ; $7e1d: $f5
    sbc d                                         ; $7e1e: $9a
    rst $38                                       ; $7e1f: $ff
    ld [c], a                                     ; $7e20: $e2
    db $fd                                        ; $7e21: $fd
    ld l, d                                       ; $7e22: $6a
    jp z, $b2e9                                   ; $7e23: $ca $e9 $b2

    inc c                                         ; $7e26: $0c
    db $db                                        ; $7e27: $db
    ld e, a                                       ; $7e28: $5f
    jr z, jr_045_7e0a                             ; $7e29: $28 $df

    ld a, $22                                     ; $7e2b: $3e $22
    pop af                                        ; $7e2d: $f1
    dec c                                         ; $7e2e: $0d
    ld e, c                                       ; $7e2f: $59
    xor [hl]                                      ; $7e30: $ae
    add c                                         ; $7e31: $81
    cp b                                          ; $7e32: $b8
    xor c                                         ; $7e33: $a9
    db $f4                                        ; $7e34: $f4
    daa                                           ; $7e35: $27
    ld c, a                                       ; $7e36: $4f
    cp h                                          ; $7e37: $bc
    sub c                                         ; $7e38: $91
    db $eb                                        ; $7e39: $eb
    ld d, a                                       ; $7e3a: $57
    ld l, l                                       ; $7e3b: $6d
    sub h                                         ; $7e3c: $94
    ld [bc], a                                    ; $7e3d: $02
    ld b, e                                       ; $7e3e: $43
    xor b                                         ; $7e3f: $a8
    ld b, h                                       ; $7e40: $44
    ld c, a                                       ; $7e41: $4f
    dec bc                                        ; $7e42: $0b
    ld c, a                                       ; $7e43: $4f
    ld h, h                                       ; $7e44: $64
    inc h                                         ; $7e45: $24
    dec [hl]                                      ; $7e46: $35
    or d                                          ; $7e47: $b2
    call z, Call_045_4dc5                         ; $7e48: $cc $c5 $4d
    xor c                                         ; $7e4b: $a9
    cpl                                           ; $7e4c: $2f
    push de                                       ; $7e4d: $d5
    ld l, a                                       ; $7e4e: $6f
    db $f4                                        ; $7e4f: $f4
    jp hl                                         ; $7e50: $e9


    ld b, h                                       ; $7e51: $44

jr_045_7e52:
    ld a, $e4                                     ; $7e52: $3e $e4

jr_045_7e54:
    ld l, h                                       ; $7e54: $6c
    cp $c0                                        ; $7e55: $fe $c0
    ld h, $54                                     ; $7e57: $26 $54
    ld [c], a                                     ; $7e59: $e2
    add l                                         ; $7e5a: $85
    ld d, l                                       ; $7e5b: $55
    rst $28                                       ; $7e5c: $ef
    sbc $18                                       ; $7e5d: $de $18
    ld a, l                                       ; $7e5f: $7d
    rst $18                                       ; $7e60: $df
    xor a                                         ; $7e61: $af
    ld l, l                                       ; $7e62: $6d
    rst $00                                       ; $7e63: $c7
    adc [hl]                                      ; $7e64: $8e
    db $ed                                        ; $7e65: $ed
    sbc c                                         ; $7e66: $99
    cpl                                           ; $7e67: $2f
    ld h, l                                       ; $7e68: $65
    ld h, h                                       ; $7e69: $64
    and d                                         ; $7e6a: $a2
    ccf                                           ; $7e6b: $3f
    ld [hl+], a                                   ; $7e6c: $22
    pop af                                        ; $7e6d: $f1
    call Call_045_4fae                            ; $7e6e: $cd $ae $4f
    db $db                                        ; $7e71: $db
    reti                                          ; $7e72: $d9


    ld h, e                                       ; $7e73: $63
    sub e                                         ; $7e74: $93
    ld [hl], c                                    ; $7e75: $71
    adc $7f                                       ; $7e76: $ce $7f
    add hl, hl                                    ; $7e78: $29

jr_045_7e79:
    ret nc                                        ; $7e79: $d0

    add sp, -$38                                  ; $7e7a: $e8 $c8
    db $e4                                        ; $7e7c: $e4

Call_045_7e7d:
    jp nz, Jump_000_2e74                          ; $7e7d: $c2 $74 $2e

    push de                                       ; $7e80: $d5
    sub b                                         ; $7e81: $90
    ld d, a                                       ; $7e82: $57
    ld b, c                                       ; $7e83: $41
    ld hl, sp-$06                                 ; $7e84: $f8 $fa
    dec d                                         ; $7e86: $15
    ld [hl], l                                    ; $7e87: $75
    ld b, [hl]                                    ; $7e88: $46
    and d                                         ; $7e89: $a2
    ld a, a                                       ; $7e8a: $7f
    push af                                       ; $7e8b: $f5
    add [hl]                                      ; $7e8c: $86
    db $fc                                        ; $7e8d: $fc

Jump_045_7e8e:
    ld b, l                                       ; $7e8e: $45
    ld c, a                                       ; $7e8f: $4f
    dec bc                                        ; $7e90: $0b
    ld e, a                                       ; $7e91: $5f
    call nc, $b345                                ; $7e92: $d4 $45 $b3
    sub a                                         ; $7e95: $97
    db $e3                                        ; $7e96: $e3
    jp hl                                         ; $7e97: $e9


    db $e3                                        ; $7e98: $e3
    dec sp                                        ; $7e99: $3b
    ld [hl-], a                                   ; $7e9a: $32
    ld d, c                                       ; $7e9b: $51
    ld [hl], b                                    ; $7e9c: $70
    ld d, a                                       ; $7e9d: $57
    cp [hl]                                       ; $7e9e: $be
    add d                                         ; $7e9f: $82
    jr nc, jr_045_7e54                            ; $7ea0: $30 $b2

    and b                                         ; $7ea2: $a0
    cp h                                          ; $7ea3: $bc
    ldh a, [$f5]                                  ; $7ea4: $f0 $f5
    ld a, l                                       ; $7ea6: $7d
    cp a                                          ; $7ea7: $bf
    ld [bc], a                                    ; $7ea8: $02
    ld l, l                                       ; $7ea9: $6d
    rl c                                          ; $7eaa: $cb $11
    rst $28                                       ; $7eac: $ef
    ld [hl], a                                    ; $7ead: $77
    dec b                                         ; $7eae: $05
    ld h, c                                       ; $7eaf: $61
    inc b                                         ; $7eb0: $04
    ld [hl], $a1                                  ; $7eb1: $36 $a1
    ld a, [c]                                     ; $7eb3: $f2
    add hl, hl                                    ; $7eb4: $29
    db $fc                                        ; $7eb5: $fc
    ld c, h                                       ; $7eb6: $4c
    ccf                                           ; $7eb7: $3f
    daa                                           ; $7eb8: $27
    inc c                                         ; $7eb9: $0c
    ld a, e                                       ; $7eba: $7b
    ld e, l                                       ; $7ebb: $5d
    xor d                                         ; $7ebc: $aa
    rst $08                                       ; $7ebd: $cf
    ld [hl-], a                                   ; $7ebe: $32
    sub a                                         ; $7ebf: $97
    ld [$4652], a                                 ; $7ec0: $ea $52 $46
    ld h, $ee                                     ; $7ec3: $26 $ee
    dec d                                         ; $7ec5: $15
    ld h, l                                       ; $7ec6: $65
    ld h, h                                       ; $7ec7: $64
    inc hl                                        ; $7ec8: $23
    ld a, d                                       ; $7ec9: $7a
    ld a, e                                       ; $7eca: $7b
    rst $20                                       ; $7ecb: $e7
    xor $fb                                       ; $7ecc: $ee $fb
    dec d                                         ; $7ece: $15
    dec e                                         ; $7ecf: $1d
    ld d, d                                       ; $7ed0: $52
    ld e, h                                       ; $7ed1: $5c
    db $ec                                        ; $7ed2: $ec
    ret c                                         ; $7ed3: $d8

    sbc [hl]                                      ; $7ed4: $9e
    ld sp, hl                                     ; $7ed5: $f9
    ld d, d                                       ; $7ed6: $52
    ld b, [hl]                                    ; $7ed7: $46
    ld h, $54                                     ; $7ed8: $26 $54
    or d                                          ; $7eda: $b2
    adc h                                         ; $7edb: $8c
    ld b, a                                       ; $7edc: $47
    ret c                                         ; $7edd: $d8

    ld h, [hl]                                    ; $7ede: $66
    ld e, c                                       ; $7edf: $59
    ld h, $cb                                     ; $7ee0: $26 $cb
    dec a                                         ; $7ee2: $3d
    di                                            ; $7ee3: $f3
    ld h, l                                       ; $7ee4: $65
    add c                                         ; $7ee5: $81
    push hl                                       ; $7ee6: $e5
    ld d, d                                       ; $7ee7: $52
    dec e                                         ; $7ee8: $1d
    ld l, $1a                                     ; $7ee9: $2e $1a
    dec l                                         ; $7eeb: $2d
    ld a, h                                       ; $7eec: $7c
    db $fd                                        ; $7eed: $fd
    ld a, [bc]                                    ; $7eee: $0a
    db $ed                                        ; $7eef: $ed
    ld e, a                                       ; $7ef0: $5f
    jp z, $a4c8                                   ; $7ef1: $ca $c8 $a4

    and b                                         ; $7ef4: $a0
    ld e, d                                       ; $7ef5: $5a
    inc c                                         ; $7ef6: $0c
    ld [hl], c                                    ; $7ef7: $71
    cp $43                                        ; $7ef8: $fe $43
    pop hl                                        ; $7efa: $e1
    adc c                                         ; $7efb: $89
    sbc e                                         ; $7efc: $9b
    ld a, [bc]                                    ; $7efd: $0a
    ld [hl], c                                    ; $7efe: $71
    sub a                                         ; $7eff: $97
    ld [hl], d                                    ; $7f00: $72
    add hl, hl                                    ; $7f01: $29
    db $10                                        ; $7f02: $10
    cp $bc                                        ; $7f03: $fe $bc
    jp z, $3093                                   ; $7f05: $ca $93 $30

    add h                                         ; $7f08: $84
    ld c, d                                       ; $7f09: $4a
    sub [hl]                                      ; $7f0a: $96
    cp a                                          ; $7f0b: $bf
    adc c                                         ; $7f0c: $89
    cp d                                          ; $7f0d: $ba
    sub h                                         ; $7f0e: $94
    push hl                                       ; $7f0f: $e5
    rst $30                                       ; $7f10: $f7
    ld b, [hl]                                    ; $7f11: $46
    cp a                                          ; $7f12: $bf
    ld [bc], a                                    ; $7f13: $02
    ld l, l                                       ; $7f14: $6d
    rst $28                                       ; $7f15: $ef
    ld d, h                                       ; $7f16: $54
    scf                                           ; $7f17: $37
    and c                                         ; $7f18: $a1
    ld [hl], d                                    ; $7f19: $72
    ld l, [hl]                                    ; $7f1a: $6e
    and d                                         ; $7f1b: $a2
    adc [hl]                                      ; $7f1c: $8e
    add h                                         ; $7f1d: $84
    pop af                                        ; $7f1e: $f1
    ld d, l                                       ; $7f1f: $55
    db $10                                        ; $7f20: $10
    sbc [hl]                                      ; $7f21: $9e
    call nc, $f788                                ; $7f22: $d4 $88 $f7
    xor l                                         ; $7f25: $ad
    cp d                                          ; $7f26: $ba
    sub h                                         ; $7f27: $94
    ld h, l                                       ; $7f28: $65
    ld [hl], $09                                  ; $7f29: $36 $09
    ld a, e                                       ; $7f2b: $7b
    ld b, e                                       ; $7f2c: $43
    cp a                                          ; $7f2d: $bf
    ld [bc], a                                    ; $7f2e: $02
    sbc l                                         ; $7f2f: $9d
    adc [hl]                                      ; $7f30: $8e
    add hl, de                                    ; $7f31: $19
    ld l, $4f                                     ; $7f32: $2e $4f
    jp nz, $2a10                                  ; $7f34: $c2 $10 $2a

jr_045_7f37:
    add hl, de                                    ; $7f37: $19
    sbc e                                         ; $7f38: $9b
    dec a                                         ; $7f39: $3d
    jp c, Jump_045_4e4d                           ; $7f3a: $da $4d $4e

Call_045_7f3d:
    call c, $1e17                                 ; $7f3d: $dc $17 $1e
    ld a, c                                       ; $7f40: $79
    sbc [hl]                                      ; $7f41: $9e
    ld [$fef6], sp                                ; $7f42: $08 $f6 $fe
    ld a, b                                       ; $7f45: $78
    ld l, l                                       ; $7f46: $6d
    add h                                         ; $7f47: $84
    pop de                                        ; $7f48: $d1
    and a                                         ; $7f49: $a7
    db $fd                                        ; $7f4a: $fd
    ld c, e                                       ; $7f4b: $4b
    add c                                         ; $7f4c: $81
    ldh a, [rNR24]                                ; $7f4d: $f0 $19
    ld l, $d5                                     ; $7f4f: $2e $d5
    ld l, h                                       ; $7f51: $6c
    sbc [hl]                                      ; $7f52: $9e
    inc l                                         ; $7f53: $2c
    rst $10                                       ; $7f54: $d7
    ld b, b                                       ; $7f55: $40
    jr z, jr_045_7f37                             ; $7f56: $28 $df

    ld b, [hl]                                    ; $7f58: $46
    rst $18                                       ; $7f59: $df
    rst $30                                       ; $7f5a: $f7
    dec hl                                        ; $7f5b: $2b
    cp [hl]                                       ; $7f5c: $be
    inc hl                                        ; $7f5d: $23
    inc de                                        ; $7f5e: $13
    cp e                                          ; $7f5f: $bb
    ld [$4f0b], a                                 ; $7f60: $ea $0b $4f
    call nc, Call_000_30a5                        ; $7f63: $d4 $a5 $30
    ld [hl], l                                    ; $7f66: $75
    ld l, [hl]                                    ; $7f67: $6e
    ld a, [$be15]                                 ; $7f68: $fa $15 $be
    inc hl                                        ; $7f6b: $23
    inc de                                        ; $7f6c: $13
    ld a, [hl+]                                   ; $7f6d: $2a
    ld e, c                                       ; $7f6e: $59
    ld l, [hl]                                    ; $7f6f: $6e
    ld a, a                                       ; $7f70: $7f
    ld h, c                                       ; $7f71: $61
    sbc e                                         ; $7f72: $9b
    jr z, @-$12                                   ; $7f73: $28 $ec

    db $fd                                        ; $7f75: $fd
    ld [hl], c                                    ; $7f76: $71
    ld d, e                                       ; $7f77: $53
    ld d, c                                       ; $7f78: $51
    add hl, sp                                    ; $7f79: $39
    xor [hl]                                      ; $7f7a: $ae
    and a                                         ; $7f7b: $a7
    ld e, a                                       ; $7f7c: $5f
    ld bc, $6c9d                                  ; $7f7d: $01 $9d $6c
    cp [hl]                                       ; $7f80: $be
    ld [$082b], a                                 ; $7f81: $ea $2b $08
    inc hl                                        ; $7f84: $23
    push de                                       ; $7f85: $d5
    and l                                         ; $7f86: $a5
    ld b, b                                       ; $7f87: $40
    ld a, b                                       ; $7f88: $78
    ld b, d                                       ; $7f89: $42
    dec h                                         ; $7f8a: $25
    bit 7, b                                      ; $7f8b: $cb $78
    ld h, h                                       ; $7f8d: $64
    cp c                                          ; $7f8e: $b9
    ld h, a                                       ; $7f8f: $67
    sbc [hl]                                      ; $7f90: $9e
    ld a, [hl]                                    ; $7f91: $7e
    dec b                                         ; $7f92: $05
    xor l                                         ; $7f93: $ad
    rra                                           ; $7f94: $1f
    ret c                                         ; $7f95: $d8

    ld h, $ea                                     ; $7f96: $26 $ea
    ld d, d                                       ; $7f98: $52
    ld hl, $a235                                  ; $7f99: $21 $35 $a2
    ld l, [hl]                                    ; $7f9c: $6e
    add hl, sp                                    ; $7f9d: $39
    pop hl                                        ; $7f9e: $e1
    add hl, bc                                    ; $7f9f: $09
    sub l                                         ; $7fa0: $95
    inc l                                         ; $7fa1: $2c
    adc a                                         ; $7fa2: $8f
    ld a, [c]                                     ; $7fa3: $f2
    sbc d                                         ; $7fa4: $9a
    halt                                          ; $7fa5: $76
    inc de                                        ; $7fa6: $13
    rst $20                                       ; $7fa7: $e7
    ld b, a                                       ; $7fa8: $47
    ld b, [hl]                                    ; $7fa9: $46
    sub e                                         ; $7faa: $93
    dec bc                                        ; $7fab: $0b
    cp a                                          ; $7fac: $bf
    ldh a, [$a4]                                  ; $7fad: $f0 $a4
    cp d                                          ; $7faf: $ba
    xor b                                         ; $7fb0: $a8
    ld a, d                                       ; $7fb1: $7a
    ld [c], a                                     ; $7fb2: $e2
    ld b, e                                       ; $7fb3: $43
    ld a, a                                       ; $7fb4: $7f

jr_045_7fb5:
    dec sp                                        ; $7fb5: $3b
    ccf                                           ; $7fb6: $3f
    or d                                          ; $7fb7: $b2
    inc e                                         ; $7fb8: $1c
    sub c                                         ; $7fb9: $91
    ld a, b                                       ; $7fba: $78
    ld l, [hl]                                    ; $7fbb: $6e
    sbc b                                         ; $7fbc: $98
    daa                                           ; $7fbd: $27
    add l                                         ; $7fbe: $85
    xor $8d                                       ; $7fbf: $ee $8d
    jr c, @+$01                                   ; $7fc1: $38 $ff

    db $fd                                        ; $7fc3: $fd
    or d                                          ; $7fc4: $b2
    and b                                         ; $7fc5: $a0
    ld e, a                                       ; $7fc6: $5f
    ld bc, $c89d                                  ; $7fc7: $01 $9d $c8
    add a                                         ; $7fca: $87
    sbc h                                         ; $7fcb: $9c
    call $d81f                                    ; $7fcc: $cd $1f $d8
    and h                                         ; $7fcf: $a4
    call z, Call_045_509e                         ; $7fd0: $cc $9e $50
    sbc c                                         ; $7fd3: $99
    inc d                                         ; $7fd4: $14
    rst $20                                       ; $7fd5: $e7
    ccf                                           ; $7fd6: $3f
    ld [hl+], a                                   ; $7fd7: $22
    ld [hl], c                                    ; $7fd8: $71
    ld [hl], h                                    ; $7fd9: $74
    xor c                                         ; $7fda: $a9
    ld a, $6e                                     ; $7fdb: $3e $6e
    halt                                          ; $7fdd: $76
    jr jr_045_7fb5                                ; $7fde: $18 $d5

    ld [hl-], a                                   ; $7fe0: $32
    add hl, hl                                    ; $7fe1: $29
    inc hl                                        ; $7fe2: $23
    inc de                                        ; $7fe3: $13
    dec sp                                        ; $7fe4: $3b
    ld e, d                                       ; $7fe5: $5a
    call c, $e4f1                                 ; $7fe6: $dc $f1 $e4
    and e                                         ; $7fe9: $a3
    ldh [$3d], a                                  ; $7fea: $e0 $3d
    add hl, sp                                    ; $7fec: $39
    xor e                                         ; $7fed: $ab
    ld l, $15                                     ; $7fee: $2e $15
    or h                                          ; $7ff0: $b4
    ld a, l                                       ; $7ff1: $7d
    db $d3                                        ; $7ff2: $d3
    xor a                                         ; $7ff3: $af
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
