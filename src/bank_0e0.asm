; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0e0", ROMX[$4000], BANK[$e0]

    db $e0

    dec c                                         ; $4001: $0d
    inc b                                         ; $4002: $04
    ld sp, hl                                     ; $4003: $f9
    ld [$01f2], sp                                ; $4004: $08 $f2 $01
    pop af                                        ; $4007: $f1
    ld sp, hl                                     ; $4008: $f9
    pop af                                        ; $4009: $f1
    ld bc, $f901                                  ; $400a: $01 $01 $f9
    ld bc, $0201                                  ; $400d: $01 $01 $02
    ld bc, $0702                                  ; $4010: $01 $02 $07
    sub b                                         ; $4013: $90
    rrca                                          ; $4014: $0f
    dec c                                         ; $4015: $0d
    rrca                                          ; $4016: $0f
    ld [$080f], sp                                ; $4017: $08 $0f $08
    rrca                                          ; $401a: $0f
    dec c                                         ; $401b: $0d
    rrca                                          ; $401c: $0f
    add hl, bc                                    ; $401d: $09
    rrca                                          ; $401e: $0f
    ld a, [bc]                                    ; $401f: $0a
    rrca                                          ; $4020: $0f
    dec bc                                        ; $4021: $0b
    rrca                                          ; $4022: $0f
    inc c                                         ; $4023: $0c
    ld [bc], a                                    ; $4024: $02
    inc bc                                        ; $4025: $03
    add [hl]                                      ; $4026: $86
    ld e, $1f                                     ; $4027: $1e $1f
    ccf                                           ; $4029: $3f
    daa                                           ; $402a: $27
    ld a, [hl]                                    ; $402b: $7e
    ld d, a                                       ; $402c: $57
    ld [bc], a                                    ; $402d: $02
    ld a, a                                       ; $402e: $7f
    add d                                         ; $402f: $82
    cp [hl]                                       ; $4030: $be
    rst $38                                       ; $4031: $ff
    ld [bc], a                                    ; $4032: $02
    ldh [$83], a                                  ; $4033: $e0 $83
    sub b                                         ; $4035: $90
    ldh a, [$38]                                  ; $4036: $f0 $38
    inc bc                                        ; $4038: $03
    ld hl, sp-$7f                                 ; $4039: $f8 $81
    cp b                                          ; $403b: $b8
    inc b                                         ; $403c: $04
    ld hl, sp-$79                                 ; $403d: $f8 $87
    ld a, b                                       ; $403f: $78
    db $f4                                        ; $4040: $f4
    ld a, h                                       ; $4041: $7c
    db $ec                                        ; $4042: $ec
    inc a                                         ; $4043: $3c
    ld hl, sp+$78                                 ; $4044: $f8 $78
    ld [bc], a                                    ; $4046: $02
    ldh a, [$83]                                  ; $4047: $f0 $83
    ret z                                         ; $4049: $c8

    ld hl, sp-$0c                                 ; $404a: $f8 $f4
    inc bc                                        ; $404c: $03
    db $fc                                        ; $404d: $fc
    add d                                         ; $404e: $82
    ld a, [$02fe]                                 ; $404f: $fa $fe $02
    rst $38                                       ; $4052: $ff
    add h                                         ; $4053: $84
    rst $08                                       ; $4054: $cf
    rst $38                                       ; $4055: $ff
    di                                            ; $4056: $f3
    ld a, [c]                                     ; $4057: $f2
    ld [bc], a                                    ; $4058: $02
    ld bc, $001a                                  ; $4059: $01 $1a $00
    add [hl]                                      ; $405c: $86
    sub e                                         ; $405d: $93
    rst $38                                       ; $405e: $ff
    rst $28                                       ; $405f: $ef
    ld a, a                                       ; $4060: $7f
    or $3e                                        ; $4061: $f6 $3e
    ld [bc], a                                    ; $4063: $02
    ret c                                         ; $4064: $d8

    jr jr_0e0_4067                                ; $4065: $18 $00

jr_0e0_4067:
    rst $38                                       ; $4067: $ff
    dec c                                         ; $4068: $0d
    inc b                                         ; $4069: $04
    ld sp, hl                                     ; $406a: $f9
    ld [$01f2], sp                                ; $406b: $08 $f2 $01
    xor $f9                                       ; $406e: $ee $f9
    rst $28                                       ; $4070: $ef
    nop                                           ; $4071: $00
    cp $fa                                        ; $4072: $fe $fa
    cp $01                                        ; $4074: $fe $01
    ld [bc], a                                    ; $4076: $02
    rlca                                          ; $4077: $07
    sbc [hl]                                      ; $4078: $9e
    inc e                                         ; $4079: $1c
    rra                                           ; $407a: $1f
    ld h, $3f                                     ; $407b: $26 $3f
    ld e, d                                       ; $407d: $5a
    ld a, a                                       ; $407e: $7f
    ld [hl], d                                    ; $407f: $72
    ld a, a                                       ; $4080: $7f
    ld [hl], l                                    ; $4081: $75
    ld a, a                                       ; $4082: $7f
    ld a, c                                       ; $4083: $79
    ld a, a                                       ; $4084: $7f
    ld h, c                                       ; $4085: $61
    ld a, a                                       ; $4086: $7f
    ld [hl], b                                    ; $4087: $70
    ld a, a                                       ; $4088: $7f
    dec sp                                        ; $4089: $3b
    ccf                                           ; $408a: $3f
    cpl                                           ; $408b: $2f
    ccf                                           ; $408c: $3f
    ld d, a                                       ; $408d: $57
    ld a, [hl]                                    ; $408e: $7e
    add l                                         ; $408f: $85
    rst $38                                       ; $4090: $ff
    ld l, a                                       ; $4091: $6f
    ld a, a                                       ; $4092: $7f
    ld a, $3f                                     ; $4093: $3e $3f
    inc h                                         ; $4095: $24
    ccf                                           ; $4096: $3f
    ld [bc], a                                    ; $4097: $02
    ld h, b                                       ; $4098: $60
    sub d                                         ; $4099: $92
    db $10                                        ; $409a: $10
    ld [hl], b                                    ; $409b: $70
    ld [$0878], sp                                ; $409c: $08 $78 $08
    ld a, b                                       ; $409f: $78
    ld [$1078], sp                                ; $40a0: $08 $78 $10
    ld [hl], b                                    ; $40a3: $70
    jr nc, jr_0e0_4116                            ; $40a4: $30 $70

    ld a, b                                       ; $40a6: $78
    ld c, b                                       ; $40a7: $48
    ld [hl], b                                    ; $40a8: $70
    db $10                                        ; $40a9: $10
    ld [hl], b                                    ; $40aa: $70
    db $10                                        ; $40ab: $10
    ld [bc], a                                    ; $40ac: $02
    ld h, b                                       ; $40ad: $60
    ld [bc], a                                    ; $40ae: $02
    nop                                           ; $40af: $00
    ld [bc], a                                    ; $40b0: $02
    ld h, b                                       ; $40b1: $60
    add d                                         ; $40b2: $82
    ld [hl], b                                    ; $40b3: $70
    ld d, b                                       ; $40b4: $50
    ld [bc], a                                    ; $40b5: $02
    ld h, e                                       ; $40b6: $63
    sbc [hl]                                      ; $40b7: $9e
    cpl                                           ; $40b8: $2f
    db $ed                                        ; $40b9: $ed
    ld c, b                                       ; $40ba: $48
    ld a, h                                       ; $40bb: $7c
    ld b, h                                       ; $40bc: $44
    ld a, a                                       ; $40bd: $7f
    add $ff                                       ; $40be: $c6 $ff

jr_0e0_40c0:
    rst $08                                       ; $40c0: $cf
    rst $38                                       ; $40c1: $ff
    add a                                         ; $40c2: $87
    rst $38                                       ; $40c3: $ff
    push hl                                       ; $40c4: $e5
    rst $38                                       ; $40c5: $ff
    add hl, sp                                    ; $40c6: $39
    ccf                                           ; $40c7: $3f
    dec b                                         ; $40c8: $05
    rlca                                          ; $40c9: $07
    ld b, $07                                     ; $40ca: $06 $07
    ld b, $07                                     ; $40cc: $06 $07
    inc b                                         ; $40ce: $04
    rlca                                          ; $40cf: $07
    inc b                                         ; $40d0: $04
    rlca                                          ; $40d1: $07
    ld [bc], a                                    ; $40d2: $02
    inc bc                                        ; $40d3: $03
    ld [bc], a                                    ; $40d4: $02
    inc bc                                        ; $40d5: $03
    ld [bc], a                                    ; $40d6: $02
    ld bc, $0004                                  ; $40d7: $01 $04 $00
    add [hl]                                      ; $40da: $86
    daa                                           ; $40db: $27
    ld a, l                                       ; $40dc: $7d
    ld d, $7e                                     ; $40dd: $16 $7e
    inc a                                         ; $40df: $3c
    ld a, h                                       ; $40e0: $7c
    ld [bc], a                                    ; $40e1: $02
    ld h, b                                       ; $40e2: $60
    inc d                                         ; $40e3: $14
    ld b, b                                       ; $40e4: $40
    ld [bc], a                                    ; $40e5: $02
    nop                                           ; $40e6: $00
    rst $38                                       ; $40e7: $ff
    dec c                                         ; $40e8: $0d
    inc b                                         ; $40e9: $04
    ld sp, hl                                     ; $40ea: $f9
    ld [$01f2], sp                                ; $40eb: $08 $f2 $01
    xor $fb                                       ; $40ee: $ee $fb
    xor $01                                       ; $40f0: $ee $01
    cp $f9                                        ; $40f2: $fe $f9
    cp $01                                        ; $40f4: $fe $01
    ld [bc], a                                    ; $40f6: $02
    cpl                                           ; $40f7: $2f
    sub a                                         ; $40f8: $97
    ld [hl-], a                                   ; $40f9: $32
    ccf                                           ; $40fa: $3f
    ld e, c                                       ; $40fb: $59
    ld h, a                                       ; $40fc: $67
    inc h                                         ; $40fd: $24
    ccf                                           ; $40fe: $3f
    ld a, d                                       ; $40ff: $7a
    ld e, a                                       ; $4100: $5f
    ld a, [$dd97]                                 ; $4101: $fa $97 $dd
    and a                                         ; $4104: $a7
    ld l, a                                       ; $4105: $6f
    ld a, a                                       ; $4106: $7f
    ld [hl], l                                    ; $4107: $75
    ld e, a                                       ; $4108: $5f
    add e                                         ; $4109: $83
    rst $38                                       ; $410a: $ff
    sub l                                         ; $410b: $95
    rst $38                                       ; $410c: $ff
    ld c, a                                       ; $410d: $4f
    ld a, a                                       ; $410e: $7f
    scf                                           ; $410f: $37
    inc bc                                        ; $4110: $03
    ccf                                           ; $4111: $3f
    add h                                         ; $4112: $84
    ld l, [hl]                                    ; $4113: $6e
    ld e, a                                       ; $4114: $5f
    halt                                          ; $4115: $76

jr_0e0_4116:
    ld e, a                                       ; $4116: $5f
    ld [bc], a                                    ; $4117: $02
    jr nz, jr_0e0_411c                            ; $4118: $20 $02

    jr c, jr_0e0_40c0                             ; $411a: $38 $a4

jr_0e0_411c:
    inc d                                         ; $411c: $14
    inc a                                         ; $411d: $3c
    inc c                                         ; $411e: $0c
    inc a                                         ; $411f: $3c
    ld a, [bc]                                    ; $4120: $0a
    ld a, $26                                     ; $4121: $3e $26
    ld a, $16                                     ; $4123: $3e $16
    ld a, $13                                     ; $4125: $3e $13
    ccf                                           ; $4127: $3f
    dec l                                         ; $4128: $2d
    ccf                                           ; $4129: $3f
    dec sp                                        ; $412a: $3b
    ccf                                           ; $412b: $3f
    ld h, $3e                                     ; $412c: $26 $3e
    ld l, $3e                                     ; $412e: $2e $3e
    dec b                                         ; $4130: $05
    ccf                                           ; $4131: $3f
    rlca                                          ; $4132: $07
    ccf                                           ; $4133: $3f
    dec b                                         ; $4134: $05
    ccf                                           ; $4135: $3f
    dec b                                         ; $4136: $05
    ccf                                           ; $4137: $3f
    ld [hl], a                                    ; $4138: $77
    ld a, a                                       ; $4139: $7f
    jp hl                                         ; $413a: $e9


    sbc a                                         ; $413b: $9f
    cp b                                          ; $413c: $b8
    rst $08                                       ; $413d: $cf
    ld a, b                                       ; $413e: $78
    ld c, a                                       ; $413f: $4f
    ld [bc], a                                    ; $4140: $02
    ccf                                           ; $4141: $3f
    ld [bc], a                                    ; $4142: $02

jr_0e0_4143:
    rlca                                          ; $4143: $07
    add l                                         ; $4144: $85
    ld b, $07                                     ; $4145: $06 $07
    inc b                                         ; $4147: $04
    rlca                                          ; $4148: $07
    dec b                                         ; $4149: $05
    dec b                                         ; $414a: $05
    rlca                                          ; $414b: $07
    ld [bc], a                                    ; $414c: $02
    nop                                           ; $414d: $00
    ld [bc], a                                    ; $414e: $02
    ld [bc], a                                    ; $414f: $02
    inc b                                         ; $4150: $04
    inc bc                                        ; $4151: $03
    ld [bc], a                                    ; $4152: $02
    ld [bc], a                                    ; $4153: $02
    sub d                                         ; $4154: $92
    ret                                           ; $4155: $c9


    rst $38                                       ; $4156: $ff
    xor c                                         ; $4157: $a9
    rst $38                                       ; $4158: $ff
    sub e                                         ; $4159: $93
    rst $38                                       ; $415a: $ff
    dec sp                                        ; $415b: $3b
    rst $38                                       ; $415c: $ff
    rst $18                                       ; $415d: $df
    rst $38                                       ; $415e: $ff
    ld h, $fe                                     ; $415f: $26 $fe
    ld e, $fe                                     ; $4161: $1e $fe
    add [hl]                                      ; $4163: $86
    cp $3c                                        ; $4164: $fe $3c
    db $fc                                        ; $4166: $fc
    ld [bc], a                                    ; $4167: $02
    ldh a, [$0c]                                  ; $4168: $f0 $0c
    nop                                           ; $416a: $00
    rst $38                                       ; $416b: $ff
    dec c                                         ; $416c: $0d
    inc b                                         ; $416d: $04
    ld sp, hl                                     ; $416e: $f9
    ld [$01f2], sp                                ; $416f: $08 $f2 $01
    rst $28                                       ; $4172: $ef
    ld a, [$00ef]                                 ; $4173: $fa $ef $00
    rst $38                                       ; $4176: $ff
    ld sp, hl                                     ; $4177: $f9
    rst $38                                       ; $4178: $ff
    ld bc, $0302                                  ; $4179: $01 $02 $03
    add h                                         ; $417c: $84
    ld b, $07                                     ; $417d: $06 $07
    ld b, $07                                     ; $417f: $06 $07
    ld [bc], a                                    ; $4181: $02
    rrca                                          ; $4182: $0f
    sbc b                                         ; $4183: $98
    ld e, $18                                     ; $4184: $1e $18
    ld a, [hl-]                                   ; $4186: $3a
    ld a, [hl+]                                   ; $4187: $2a
    jr c, jr_0e0_41b8                             ; $4188: $38 $2e

    ld l, d                                       ; $418a: $6a
    ld e, d                                       ; $418b: $5a
    ccf                                           ; $418c: $3f
    dec l                                         ; $418d: $2d
    ld l, $3a                                     ; $418e: $2e $3a
    add hl, sp                                    ; $4190: $39
    dec [hl]                                      ; $4191: $35
    ld a, [hl+]                                   ; $4192: $2a
    scf                                           ; $4193: $37
    dec l                                         ; $4194: $2d
    ld [hl-], a                                   ; $4195: $32
    ld l, a                                       ; $4196: $6f
    ld [hl], b                                    ; $4197: $70
    ld d, a                                       ; $4198: $57
    ld a, b                                       ; $4199: $78
    db $eb                                        ; $419a: $eb
    db $f4                                        ; $419b: $f4
    ld [bc], a                                    ; $419c: $02
    jr nz, jr_0e0_4143                            ; $419d: $20 $a4

    db $10                                        ; $419f: $10
    jr nc, jr_0e0_41b2                            ; $41a0: $30 $10

    jr nc, jr_0e0_41cc                            ; $41a2: $30 $28

    jr c, @+$3e                                   ; $41a4: $38 $3c

    inc c                                         ; $41a6: $0c
    ld l, $2a                                     ; $41a7: $2e $2a
    ld c, $3a                                     ; $41a9: $0e $3a
    dec hl                                        ; $41ab: $2b
    dec l                                         ; $41ac: $2d
    ld a, $1a                                     ; $41ad: $3e $1a
    ld a, [hl-]                                   ; $41af: $3a
    ld l, $0e                                     ; $41b0: $2e $0e

jr_0e0_41b2:
    ld d, $2a                                     ; $41b2: $16 $2a
    ld [hl], $1e                                  ; $41b4: $36 $1e
    ld [hl+], a                                   ; $41b6: $22
    ld a, [hl-]                                   ; $41b7: $3a

jr_0e0_41b8:
    ld b, $3a                                     ; $41b8: $06 $3a
    ld b, $35                                     ; $41ba: $06 $35
    rrca                                          ; $41bc: $0f
    ld e, l                                       ; $41bd: $5d
    ld a, [hl]                                    ; $41be: $7e
    jp $eeff                                      ; $41bf: $c3 $ff $ee


    cp $02                                        ; $41c2: $fe $02
    inc e                                         ; $41c4: $1c
    ld [bc], a                                    ; $41c5: $02
    inc bc                                        ; $41c6: $03
    ld d, $00                                     ; $41c7: $16 $00
    add [hl]                                      ; $41c9: $86
    ld d, [hl]                                    ; $41ca: $56
    xor [hl]                                      ; $41cb: $ae

jr_0e0_41cc:
    cp c                                          ; $41cc: $b9
    rst $38                                       ; $41cd: $ff
    ld c, e                                       ; $41ce: $4b
    ld c, a                                       ; $41cf: $4f
    ld [bc], a                                    ; $41d0: $02
    ld l, h                                       ; $41d1: $6c
    ld [bc], a                                    ; $41d2: $02
    sub b                                         ; $41d3: $90
    ld d, $00                                     ; $41d4: $16 $00
    rst $38                                       ; $41d6: $ff
    rlca                                          ; $41d7: $07
    ld bc, $08f9                                  ; $41d8: $01 $f9 $08
    ld a, [c]                                     ; $41db: $f2
    ld bc, $fdf3                                  ; $41dc: $01 $f3 $fd
    add a                                         ; $41df: $87
    ld [$2a00], sp                                ; $41e0: $08 $00 $2a
    nop                                           ; $41e3: $00
    ld [$2a00], sp                                ; $41e4: $08 $00 $2a
    inc bc                                        ; $41e7: $03
    nop                                           ; $41e8: $00
    add e                                         ; $41e9: $83
    ld [$1400], sp                                ; $41ea: $08 $00 $14
    rrca                                          ; $41ed: $0f
    nop                                           ; $41ee: $00
    add h                                         ; $41ef: $84
    dec de                                        ; $41f0: $1b
    nop                                           ; $41f1: $00
    add hl, sp                                    ; $41f2: $39
    nop                                           ; $41f3: $00
    rst $38                                       ; $41f4: $ff
    dec c                                         ; $41f5: $0d
    inc b                                         ; $41f6: $04
    ld sp, hl                                     ; $41f7: $f9
    ld [$00f1], sp                                ; $41f8: $08 $f1 $00
    xor $fb                                       ; $41fb: $ee $fb
    ldh a, [rIE]                                  ; $41fd: $f0 $ff
    cp $f9                                        ; $41ff: $fe $f9
    cp $00                                        ; $4201: $fe $00
    ld [bc], a                                    ; $4203: $02
    ld e, $8a                                     ; $4204: $1e $8a
    cpl                                           ; $4206: $2f
    inc sp                                        ; $4207: $33
    ld e, a                                       ; $4208: $5f
    ld a, a                                       ; $4209: $7f
    ld [hl], a                                    ; $420a: $77
    ld l, b                                       ; $420b: $68
    ld l, h                                       ; $420c: $6c
    ld e, a                                       ; $420d: $5f
    ld d, e                                       ; $420e: $53
    ld [hl], e                                    ; $420f: $73
    inc bc                                        ; $4210: $03
    ld h, b                                       ; $4211: $60
    add e                                         ; $4212: $83
    ld l, h                                       ; $4213: $6c
    or d                                          ; $4214: $b2
    cp [hl]                                       ; $4215: $be
    ld [bc], a                                    ; $4216: $02
    ld h, e                                       ; $4217: $63
    ld [bc], a                                    ; $4218: $02
    inc [hl]                                      ; $4219: $34
    ld [bc], a                                    ; $421a: $02
    db $10                                        ; $421b: $10
    ld [bc], a                                    ; $421c: $02
    ccf                                           ; $421d: $3f
    add [hl]                                      ; $421e: $86
    ld e, e                                       ; $421f: $5b
    ld a, e                                       ; $4220: $7b
    and [hl]                                      ; $4221: $a6
    rst $38                                       ; $4222: $ff
    sbc c                                         ; $4223: $99
    rst $38                                       ; $4224: $ff
    ld [bc], a                                    ; $4225: $02
    ld [$0484], sp                                ; $4226: $08 $84 $04
    inc c                                         ; $4229: $0c
    ld a, [bc]                                    ; $422a: $0a
    ld c, $02                                     ; $422b: $0e $02
    ld b, $02                                     ; $422d: $06 $02
    inc b                                         ; $422f: $04
    add h                                         ; $4230: $84
    ld [bc], a                                    ; $4231: $02
    ld c, $02                                     ; $4232: $0e $02
    ld c, $04                                     ; $4234: $0e $04
    inc b                                         ; $4236: $04
    inc b                                         ; $4237: $04
    ld [$0492], sp                                ; $4238: $08 $92 $04
    inc c                                         ; $423b: $0c
    ld a, [bc]                                    ; $423c: $0a
    ld c, $02                                     ; $423d: $0e $02

jr_0e0_423f:
    ld c, $65                                     ; $423f: $0e $65
    rst $38                                       ; $4241: $ff
    dec b                                         ; $4242: $05
    rst $38                                       ; $4243: $ff
    ld c, b                                       ; $4244: $48
    ld a, h                                       ; $4245: $7c
    ld e, b                                       ; $4246: $58
    ld a, h                                       ; $4247: $7c
    xor a                                         ; $4248: $af
    rst $38                                       ; $4249: $ff
    ld d, d                                       ; $424a: $52
    ld [hl], d                                    ; $424b: $72
    ld [bc], a                                    ; $424c: $02
    inc [hl]                                      ; $424d: $34
    ld [bc], a                                    ; $424e: $02
    ld [$0018], sp                                ; $424f: $08 $18 $00
    add h                                         ; $4252: $84
    ld [hl], l                                    ; $4253: $75
    ld a, a                                       ; $4254: $7f
    ld c, d                                       ; $4255: $4a
    ld c, [hl]                                    ; $4256: $4e
    ld [bc], a                                    ; $4257: $02
    inc l                                         ; $4258: $2c
    ld [bc], a                                    ; $4259: $02
    db $10                                        ; $425a: $10
    inc d                                         ; $425b: $14
    nop                                           ; $425c: $00
    rst $38                                       ; $425d: $ff
    rlca                                          ; $425e: $07
    ld bc, $08f9                                  ; $425f: $01 $f9 $08
    pop af                                        ; $4262: $f1
    nop                                           ; $4263: $00
    di                                            ; $4264: $f3
    db $fc                                        ; $4265: $fc
    adc l                                         ; $4266: $8d
    add hl, de                                    ; $4267: $19
    nop                                           ; $4268: $00
    ccf                                           ; $4269: $3f
    nop                                           ; $426a: $00
    ld h, $00                                     ; $426b: $26 $00
    add d                                         ; $426d: $82
    nop                                           ; $426e: $00
    add hl, sp                                    ; $426f: $39
    nop                                           ; $4270: $00
    rla                                           ; $4271: $17
    nop                                           ; $4272: $00
    ld e, $03                                     ; $4273: $1e $03
    nop                                           ; $4275: $00
    add c                                         ; $4276: $81
    ld [$000b], sp                                ; $4277: $08 $0b $00
    add h                                         ; $427a: $84
    ld h, e                                       ; $427b: $63
    nop                                           ; $427c: $00
    ld b, c                                       ; $427d: $41
    nop                                           ; $427e: $00
    rst $38                                       ; $427f: $ff
    dec c                                         ; $4280: $0d
    inc b                                         ; $4281: $04
    ld hl, sp+$07                                 ; $4282: $f8 $07
    pop af                                        ; $4284: $f1
    nop                                           ; $4285: $00
    rst $28                                       ; $4286: $ef
    ld a, [$00ef]                                 ; $4287: $fa $ef $00
    rst $38                                       ; $428a: $ff
    ld sp, hl                                     ; $428b: $f9
    rst $38                                       ; $428c: $ff
    ld bc, $0b02                                  ; $428d: $01 $02 $0b
    ld [bc], a                                    ; $4290: $02
    rra                                           ; $4291: $1f
    inc bc                                        ; $4292: $03
    ccf                                           ; $4293: $3f
    adc l                                         ; $4294: $8d
    ld a, $3f                                     ; $4295: $3e $3f
    inc [hl]                                      ; $4297: $34
    rra                                           ; $4298: $1f
    ld e, $1f                                     ; $4299: $1e $1f
    ld [de], a                                    ; $429b: $12
    rra                                           ; $429c: $1f
    ld de, $131f                                  ; $429d: $11 $1f $13
    rrca                                          ; $42a0: $0f
    inc c                                         ; $42a1: $0c
    ld [bc], a                                    ; $42a2: $02
    dec sp                                        ; $42a3: $3b
    adc d                                         ; $42a4: $8a
    ld e, h                                       ; $42a5: $5c
    ld a, h                                       ; $42a6: $7c
    ld e, e                                       ; $42a7: $5b
    ld a, a                                       ; $42a8: $7f
    ld e, h                                       ; $42a9: $5c
    ld a, a                                       ; $42aa: $7f
    cp h                                          ; $42ab: $bc
    rst $38                                       ; $42ac: $ff
    cp l                                          ; $42ad: $bd
    rst $38                                       ; $42ae: $ff
    ld [bc], a                                    ; $42af: $02
    jr nc, jr_0e0_42b4                            ; $42b0: $30 $02

    jr c, @+$07                                   ; $42b2: $38 $05

jr_0e0_42b4:
    inc a                                         ; $42b4: $3c
    add c                                         ; $42b5: $81
    inc c                                         ; $42b6: $0c
    inc bc                                        ; $42b7: $03
    jr c, jr_0e0_423f                             ; $42b8: $38 $85

    ld [$0838], sp                                ; $42ba: $08 $38 $08
    jr c, jr_0e0_42c7                             ; $42bd: $38 $08

    ld [bc], a                                    ; $42bf: $02
    jr nc, jr_0e0_42c4                            ; $42c0: $30 $02

    inc e                                         ; $42c2: $1c
    sub b                                         ; $42c3: $90

jr_0e0_42c4:
    ld a, [hl-]                                   ; $42c4: $3a
    ld a, $1a                                     ; $42c5: $3e $1a

jr_0e0_42c7:
    ld a, $3a                                     ; $42c7: $3e $3a
    ld a, $3d                                     ; $42c9: $3e $3d
    ccf                                           ; $42cb: $3f
    dec a                                         ; $42cc: $3d
    ccf                                           ; $42cd: $3f
    and d                                         ; $42ce: $a2
    rst $38                                       ; $42cf: $ff
    add a                                         ; $42d0: $87
    ld hl, sp+$7f                                 ; $42d1: $f8 $7f
    ld a, c                                       ; $42d3: $79
    ld [bc], a                                    ; $42d4: $02
    ld b, $18                                     ; $42d5: $06 $18
    nop                                           ; $42d7: $00
    add h                                         ; $42d8: $84
    pop hl                                        ; $42d9: $e1
    rst $38                                       ; $42da: $ff
    pop af                                        ; $42db: $f1
    rst $08                                       ; $42dc: $cf
    ld [bc], a                                    ; $42dd: $02
    ld a, $1a                                     ; $42de: $3e $1a
    nop                                           ; $42e0: $00
    rst $38                                       ; $42e1: $ff
    dec c                                         ; $42e2: $0d
    inc b                                         ; $42e3: $04
    ld hl, sp+$07                                 ; $42e4: $f8 $07
    pop af                                        ; $42e6: $f1
    nop                                           ; $42e7: $00
    jp hl                                         ; $42e8: $e9


    ld hl, sp-$17                                 ; $42e9: $f8 $e9
    db $fc                                        ; $42eb: $fc
    ld sp, hl                                     ; $42ec: $f9
    ld hl, sp-$07                                 ; $42ed: $f8 $f9
    db $fc                                        ; $42ef: $fc
    ld [bc], a                                    ; $42f0: $02
    rrca                                          ; $42f1: $0f
    ld [bc], a                                    ; $42f2: $02
    ccf                                           ; $42f3: $3f
    inc bc                                        ; $42f4: $03
    ld a, a                                       ; $42f5: $7f
    adc l                                         ; $42f6: $8d
    ld a, [hl]                                    ; $42f7: $7e
    ld a, a                                       ; $42f8: $7f
    halt                                          ; $42f9: $76
    ld a, a                                       ; $42fa: $7f
    ld a, e                                       ; $42fb: $7b
    ccf                                           ; $42fc: $3f
    jr nc, @+$41                                  ; $42fd: $30 $3f

    jr nz, jr_0e0_4320                            ; $42ff: $20 $1f

    ld de, $101f                                  ; $4301: $11 $1f $10
    ld [bc], a                                    ; $4304: $02
    dec a                                         ; $4305: $3d
    adc d                                         ; $4306: $8a
    ld d, [hl]                                    ; $4307: $56
    ld a, [hl]                                    ; $4308: $7e
    xor l                                         ; $4309: $ad
    rst $38                                       ; $430a: $ff
    xor $ff                                       ; $430b: $ee $ff
    ld b, a                                       ; $430d: $47
    ld a, a                                       ; $430e: $7f
    ld e, a                                       ; $430f: $5f
    ld a, a                                       ; $4310: $7f
    ld [bc], a                                    ; $4311: $02

jr_0e0_4312:
    ld [$0e02], sp                                ; $4312: $08 $02 $0e
    ld [bc], a                                    ; $4315: $02
    inc c                                         ; $4316: $0c
    ld [bc], a                                    ; $4317: $02
    ld c, $88                                     ; $4318: $0e $88
    inc c                                         ; $431a: $0c
    inc b                                         ; $431b: $04
    ld c, $06                                     ; $431c: $0e $06
    ld c, $02                                     ; $431e: $0e $02

jr_0e0_4320:
    inc c                                         ; $4320: $0c
    inc b                                         ; $4321: $04
    ld [bc], a                                    ; $4322: $02
    inc c                                         ; $4323: $0c
    ld [$0208], sp                                ; $4324: $08 $08 $02
    inc c                                         ; $4327: $0c
    sub d                                         ; $4328: $92
    ld b, $0e                                     ; $4329: $06 $0e
    rlca                                          ; $432b: $07
    dec c                                         ; $432c: $0d
    ld b, l                                       ; $432d: $45
    ld a, a                                       ; $432e: $7f
    ld h, b                                       ; $432f: $60
    ld a, a                                       ; $4330: $7f
    ld a, c                                       ; $4331: $79
    ld a, a                                       ; $4332: $7f
    cp $ff                                        ; $4333: $fe $ff
    cp $ff                                        ; $4335: $fe $ff
    ld sp, hl                                     ; $4337: $f9
    rst $38                                       ; $4338: $ff
    rst $30                                       ; $4339: $f7
    rst $38                                       ; $433a: $ff
    ld [bc], a                                    ; $433b: $02
    ccf                                           ; $433c: $3f
    stop                                          ; $433d: $10 $00
    inc bc                                        ; $433f: $03
    rrca                                          ; $4340: $0f
    add e                                         ; $4341: $83
    add hl, bc                                    ; $4342: $09
    ld c, $02                                     ; $4343: $0e $02
    ld [bc], a                                    ; $4345: $02
    inc c                                         ; $4346: $0c
    ld [$1008], sp                                ; $4347: $08 $08 $10
    nop                                           ; $434a: $00
    rst $38                                       ; $434b: $ff
    dec c                                         ; $434c: $0d
    inc b                                         ; $434d: $04
    ld hl, sp+$07                                 ; $434e: $f8 $07
    pop af                                        ; $4350: $f1
    nop                                           ; $4351: $00
    jp hl                                         ; $4352: $e9


    ld sp, hl                                     ; $4353: $f9
    jp hl                                         ; $4354: $e9


    ld bc, $f9f9                                  ; $4355: $01 $f9 $f9
    ld sp, hl                                     ; $4358: $f9
    ld bc, $0702                                  ; $4359: $01 $02 $07
    ld [bc], a                                    ; $435c: $02
    rrca                                          ; $435d: $0f
    ld b, $1f                                     ; $435e: $06 $1f
    dec b                                         ; $4360: $05
    rrca                                          ; $4361: $0f
    add e                                         ; $4362: $83
    dec bc                                        ; $4363: $0b
    rrca                                          ; $4364: $0f
    inc c                                         ; $4365: $0c
    ld [bc], a                                    ; $4366: $02
    rlca                                          ; $4367: $07
    ld [bc], a                                    ; $4368: $02
    inc c                                         ; $4369: $0c
    adc d                                         ; $436a: $8a
    dec de                                        ; $436b: $1b
    rra                                           ; $436c: $1f
    inc l                                         ; $436d: $2c
    ccf                                           ; $436e: $3f
    ld c, [hl]                                    ; $436f: $4e
    ld a, a                                       ; $4370: $7f
    ld e, a                                       ; $4371: $5f
    ld a, a                                       ; $4372: $7f
    sbc a                                         ; $4373: $9f
    rst $38                                       ; $4374: $ff
    ld [bc], a                                    ; $4375: $02
    and b                                         ; $4376: $a0
    ld [bc], a                                    ; $4377: $02
    ldh a, [rTMA]                                 ; $4378: $f0 $06

jr_0e0_437a:
    ld hl, sp+$05                                 ; $437a: $f8 $05
    ldh a, [$83]                                  ; $437c: $f0 $83
    ret nc                                        ; $437e: $d0

    ldh a, [$30]                                  ; $437f: $f0 $30
    ld [bc], a                                    ; $4381: $02
    ldh [rSC], a                                  ; $4382: $e0 $02

jr_0e0_4384:
    jr nc, jr_0e0_4312                            ; $4384: $30 $8c

    ret c                                         ; $4386: $d8

    ld hl, sp+$14                                 ; $4387: $f8 $14
    db $fc                                        ; $4389: $fc
    ld [hl-], a                                   ; $438a: $32
    cp $fa                                        ; $438b: $fe $fa
    cp $e9                                        ; $438d: $fe $e9
    rst $38                                       ; $438f: $ff
    cp a                                          ; $4390: $bf
    rst $38                                       ; $4391: $ff
    ld [bc], a                                    ; $4392: $02
    ld a, a                                       ; $4393: $7f
    inc b                                         ; $4394: $04
    rra                                           ; $4395: $1f
    add c                                         ; $4396: $81
    ld a, $05                                     ; $4397: $3e $05
    ccf                                           ; $4399: $3f
    ld [bc], a                                    ; $439a: $02
    rrca                                          ; $439b: $0f
    stop                                          ; $439c: $10 $00
    add h                                         ; $439e: $84
    db $fd                                        ; $439f: $fd
    rst $38                                       ; $43a0: $ff
    xor $fe                                       ; $43a1: $ee $fe
    ld [bc], a                                    ; $43a3: $02
    ld hl, sp-$78                                 ; $43a4: $f8 $88
    ret c                                         ; $43a6: $d8

    ld hl, sp+$34                                 ; $43a7: $f8 $34
    db $fc                                        ; $43a9: $fc
    db $f4                                        ; $43aa: $f4
    db $fc                                        ; $43ab: $fc
    db $ec                                        ; $43ac: $ec
    db $fc                                        ; $43ad: $fc
    ld [bc], a                                    ; $43ae: $02
    ldh a, [rNR10]                                ; $43af: $f0 $10
    nop                                           ; $43b1: $00
    rst $38                                       ; $43b2: $ff
    rlca                                          ; $43b3: $07
    ld bc, $07f8                                  ; $43b4: $01 $f8 $07
    pop af                                        ; $43b7: $f1
    nop                                           ; $43b8: $00
    di                                            ; $43b9: $f3
    ei                                            ; $43ba: $fb
    add d                                         ; $43bb: $82
    nop                                           ; $43bc: $00
    rrca                                          ; $43bd: $0f
    ld e, $00                                     ; $43be: $1e $00
    rst $38                                       ; $43c0: $ff
    dec c                                         ; $43c1: $0d
    inc b                                         ; $43c2: $04
    ld hl, sp+$07                                 ; $43c3: $f8 $07
    pop af                                        ; $43c5: $f1
    nop                                           ; $43c6: $00
    rst $28                                       ; $43c7: $ef
    ld a, [$00ef]                                 ; $43c8: $fa $ef $00
    rst $38                                       ; $43cb: $ff
    ld sp, hl                                     ; $43cc: $f9
    rst $38                                       ; $43cd: $ff
    ld bc, $0f02                                  ; $43ce: $01 $02 $0f
    inc bc                                        ; $43d1: $03
    rra                                           ; $43d2: $1f
    adc a                                         ; $43d3: $8f
    dec de                                        ; $43d4: $1b
    rra                                           ; $43d5: $1f
    db $10                                        ; $43d6: $10
    rra                                           ; $43d7: $1f
    db $10                                        ; $43d8: $10
    rra                                           ; $43d9: $1f
    inc e                                         ; $43da: $1c
    rra                                           ; $43db: $1f
    db $10                                        ; $43dc: $10
    rra                                           ; $43dd: $1f
    ld de, $131f                                  ; $43de: $11 $1f $13
    rrca                                          ; $43e1: $0f
    ld [$3b02], sp                                ; $43e2: $08 $02 $3b
    adc d                                         ; $43e5: $8a
    ld e, h                                       ; $43e6: $5c
    ld a, h                                       ; $43e7: $7c
    ld e, e                                       ; $43e8: $5b
    ld a, a                                       ; $43e9: $7f
    ld e, h                                       ; $43ea: $5c
    ld a, a                                       ; $43eb: $7f
    cp h                                          ; $43ec: $bc
    rst $38                                       ; $43ed: $ff
    cp [hl]                                       ; $43ee: $be
    rst $38                                       ; $43ef: $ff
    ld [bc], a                                    ; $43f0: $02
    jr nc, @+$05                                  ; $43f1: $30 $03

    jr c, jr_0e0_437a                             ; $43f3: $38 $85

    jr jr_0e0_442f                                ; $43f5: $18 $38

    ld [$0838], sp                                ; $43f7: $08 $38 $08
    inc bc                                        ; $43fa: $03
    jr c, jr_0e0_4384                             ; $43fb: $38 $87

    ld [$0838], sp                                ; $43fd: $08 $38 $08
    jr c, jr_0e0_440a                             ; $4400: $38 $08

    jr nc, jr_0e0_4414                            ; $4402: $30 $10

    ld [bc], a                                    ; $4404: $02
    inc e                                         ; $4405: $1c
    adc [hl]                                      ; $4406: $8e
    ld a, [hl-]                                   ; $4407: $3a
    ld a, $1a                                     ; $4408: $3e $1a

jr_0e0_440a:
    ld a, $3a                                     ; $440a: $3e $3a
    ld a, $3d                                     ; $440c: $3e $3d
    ccf                                           ; $440e: $3f
    dec a                                         ; $440f: $3d
    ccf                                           ; $4410: $3f
    add a                                         ; $4411: $87
    rst $38                                       ; $4412: $ff
    adc a                                         ; $4413: $8f

jr_0e0_4414:
    di                                            ; $4414: $f3
    ld [bc], a                                    ; $4415: $02
    ld a, h                                       ; $4416: $7c
    ld a, [de]                                    ; $4417: $1a
    nop                                           ; $4418: $00
    add [hl]                                      ; $4419: $86
    ld b, l                                       ; $441a: $45
    rst $38                                       ; $441b: $ff
    pop hl                                        ; $441c: $e1
    rra                                           ; $441d: $1f
    cp $9e                                        ; $441e: $fe $9e
    ld [bc], a                                    ; $4420: $02
    ld h, b                                       ; $4421: $60
    jr jr_0e0_4424                                ; $4422: $18 $00

jr_0e0_4424:
    rst $38                                       ; $4424: $ff
    rlca                                          ; $4425: $07
    ld bc, $07f8                                  ; $4426: $01 $f8 $07
    pop af                                        ; $4429: $f1
    nop                                           ; $442a: $00
    ld sp, hl                                     ; $442b: $f9
    ei                                            ; $442c: $fb
    add h                                         ; $442d: $84
    nop                                           ; $442e: $00

jr_0e0_442f:
    add hl, bc                                    ; $442f: $09
    nop                                           ; $4430: $00
    ld b, $1c                                     ; $4431: $06 $1c
    nop                                           ; $4433: $00
    rst $38                                       ; $4434: $ff
    dec c                                         ; $4435: $0d
    inc b                                         ; $4436: $04
    ld hl, sp+$07                                 ; $4437: $f8 $07
    pop af                                        ; $4439: $f1
    nop                                           ; $443a: $00
    jp hl                                         ; $443b: $e9


    ld hl, sp-$16                                 ; $443c: $f8 $ea
    db $fc                                        ; $443e: $fc
    ld sp, hl                                     ; $443f: $f9
    ld hl, sp-$07                                 ; $4440: $f8 $f9
    db $fc                                        ; $4442: $fc
    ld [bc], a                                    ; $4443: $02
    ccf                                           ; $4444: $3f
    ld [bc], a                                    ; $4445: $02
    ld a, a                                       ; $4446: $7f
    sub b                                         ; $4447: $90
    rst $38                                       ; $4448: $ff
    ei                                            ; $4449: $fb
    rst $38                                       ; $444a: $ff
    ldh a, [rIE]                                  ; $444b: $f0 $ff
    ldh a, [$7f]                                  ; $444d: $f0 $7f
    ld h, [hl]                                    ; $444f: $66
    ld a, a                                       ; $4450: $7f
    ld d, b                                       ; $4451: $50
    ccf                                           ; $4452: $3f
    jr nz, jr_0e0_4494                            ; $4453: $20 $3f

    ld hl, $303f                                  ; $4455: $21 $3f $30
    ld [bc], a                                    ; $4458: $02
    ld a, c                                       ; $4459: $79
    adc d                                         ; $445a: $8a
    xor [hl]                                      ; $445b: $ae
    cp $ad                                        ; $445c: $fe $ad
    rst $38                                       ; $445e: $ff
    xor $ff                                       ; $445f: $ee $ff
    ld b, a                                       ; $4461: $47
    ld a, a                                       ; $4462: $7f
    ld e, a                                       ; $4463: $5f
    ld a, a                                       ; $4464: $7f
    inc b                                         ; $4465: $04
    ld [$0c84], sp                                ; $4466: $08 $84 $0c
    inc b                                         ; $4469: $04
    inc c                                         ; $446a: $0c
    inc b                                         ; $446b: $04

jr_0e0_446c:
    ld [bc], a                                    ; $446c: $02
    ld [$0c82], sp                                ; $446d: $08 $82 $0c
    inc b                                         ; $4470: $04
    inc c                                         ; $4471: $0c
    ld [$0c02], sp                                ; $4472: $08 $02 $0c
    sub h                                         ; $4475: $94
    ld b, $0e                                     ; $4476: $06 $0e
    rlca                                          ; $4478: $07
    dec c                                         ; $4479: $0d
    ld e, a                                       ; $447a: $5f
    rst $38                                       ; $447b: $ff
    ld b, b                                       ; $447c: $40
    ld [hl], b                                    ; $447d: $70
    ld h, b                                       ; $447e: $60
    ld a, a                                       ; $447f: $7f
    ld a, c                                       ; $4480: $79
    ld a, a                                       ; $4481: $7f
    cp $ff                                        ; $4482: $fe $ff
    cp $ff                                        ; $4484: $fe $ff
    ld sp, hl                                     ; $4486: $f9
    rst $38                                       ; $4487: $ff
    rst $30                                       ; $4488: $f7
    rst $38                                       ; $4489: $ff
    ld [bc], a                                    ; $448a: $02
    ccf                                           ; $448b: $3f
    ld [de], a                                    ; $448c: $12
    nop                                           ; $448d: $00
    add h                                         ; $448e: $84
    rrca                                          ; $448f: $0f
    add hl, bc                                    ; $4490: $09
    ld c, $02                                     ; $4491: $0e $02
    ld [bc], a                                    ; $4493: $02

jr_0e0_4494:
    inc c                                         ; $4494: $0c
    ld [$1008], sp                                ; $4495: $08 $08 $10
    nop                                           ; $4498: $00
    rst $38                                       ; $4499: $ff
    rlca                                          ; $449a: $07
    ld bc, $07f8                                  ; $449b: $01 $f8 $07
    pop af                                        ; $449e: $f1
    nop                                           ; $449f: $00
    di                                            ; $44a0: $f3
    ld hl, sp-$7c                                 ; $44a1: $f8 $84
    nop                                           ; $44a3: $00
    ld b, $00                                     ; $44a4: $06 $00
    ld bc, $001c                                  ; $44a6: $01 $1c $00
    rst $38                                       ; $44a9: $ff
    dec c                                         ; $44aa: $0d
    inc b                                         ; $44ab: $04
    ld hl, sp+$07                                 ; $44ac: $f8 $07
    pop af                                        ; $44ae: $f1
    nop                                           ; $44af: $00
    jp hl                                         ; $44b0: $e9


    ld sp, hl                                     ; $44b1: $f9
    jp hl                                         ; $44b2: $e9


    ld bc, $f9f9                                  ; $44b3: $01 $f9 $f9
    ld sp, hl                                     ; $44b6: $f9
    ld bc, $0702                                  ; $44b7: $01 $02 $07
    dec bc                                        ; $44ba: $0b
    rrca                                          ; $44bb: $0f
    add e                                         ; $44bc: $83
    dec bc                                        ; $44bd: $0b
    rrca                                          ; $44be: $0f
    ld a, [bc]                                    ; $44bf: $0a
    ld [bc], a                                    ; $44c0: $02
    rlca                                          ; $44c1: $07
    ld [bc], a                                    ; $44c2: $02
    inc c                                         ; $44c3: $0c
    adc h                                         ; $44c4: $8c
    dec de                                        ; $44c5: $1b
    rra                                           ; $44c6: $1f
    inc l                                         ; $44c7: $2c
    ccf                                           ; $44c8: $3f
    ld l, $3f                                     ; $44c9: $2e $3f
    ld e, a                                       ; $44cb: $5f
    ld a, a                                       ; $44cc: $7f
    ld e, a                                       ; $44cd: $5f
    ld a, a                                       ; $44ce: $7f
    sbc a                                         ; $44cf: $9f
    rst $38                                       ; $44d0: $ff
    ld [bc], a                                    ; $44d1: $02
    ldh [$0b], a                                  ; $44d2: $e0 $0b
    ldh a, [$83]                                  ; $44d4: $f0 $83
    ret nc                                        ; $44d6: $d0

    ldh a, [$50]                                  ; $44d7: $f0 $50
    ld [bc], a                                    ; $44d9: $02
    ldh [rSC], a                                  ; $44da: $e0 $02
    jr nc, jr_0e0_446c                            ; $44dc: $30 $8e

    ret c                                         ; $44de: $d8

    ld hl, sp+$14                                 ; $44df: $f8 $14
    db $fc                                        ; $44e1: $fc
    inc [hl]                                      ; $44e2: $34
    db $fc                                        ; $44e3: $fc
    ld a, [$fafe]                                 ; $44e4: $fa $fe $fa
    cp $e9                                        ; $44e7: $fe $e9
    rst $38                                       ; $44e9: $ff
    cp a                                          ; $44ea: $bf
    rst $38                                       ; $44eb: $ff
    ld [bc], a                                    ; $44ec: $02
    ld a, a                                       ; $44ed: $7f
    inc b                                         ; $44ee: $04
    rra                                           ; $44ef: $1f
    add c                                         ; $44f0: $81
    ld a, $05                                     ; $44f1: $3e $05
    ccf                                           ; $44f3: $3f
    ld [bc], a                                    ; $44f4: $02
    rrca                                          ; $44f5: $0f
    stop                                          ; $44f6: $10 $00
    add h                                         ; $44f8: $84
    db $fd                                        ; $44f9: $fd
    rst $38                                       ; $44fa: $ff
    xor $fe                                       ; $44fb: $ee $fe
    ld [bc], a                                    ; $44fd: $02
    ld hl, sp-$78                                 ; $44fe: $f8 $88
    ret c                                         ; $4500: $d8

    ld hl, sp+$34                                 ; $4501: $f8 $34
    db $fc                                        ; $4503: $fc
    db $f4                                        ; $4504: $f4
    db $fc                                        ; $4505: $fc
    db $ec                                        ; $4506: $ec
    db $fc                                        ; $4507: $fc
    ld [bc], a                                    ; $4508: $02
    ldh a, [rNR10]                                ; $4509: $f0 $10
    nop                                           ; $450b: $00
    rst $38                                       ; $450c: $ff
    rlca                                          ; $450d: $07
    ld bc, $07f8                                  ; $450e: $01 $f8 $07
    pop af                                        ; $4511: $f1
    nop                                           ; $4512: $00
    ld a, [c]                                     ; $4513: $f2
    ei                                            ; $4514: $fb
    add d                                         ; $4515: $82
    nop                                           ; $4516: $00
    rrca                                          ; $4517: $0f
    ld e, $00                                     ; $4518: $1e $00
    rst $38                                       ; $451a: $ff
    add hl, bc                                    ; $451b: $09
    ld [bc], a                                    ; $451c: $02
    ld hl, sp+$07                                 ; $451d: $f8 $07
    pop af                                        ; $451f: $f1
    nop                                           ; $4520: $00
    pop af                                        ; $4521: $f1
    ld a, [$fff1]                                 ; $4522: $fa $f1 $ff
    ld [bc], a                                    ; $4525: $02
    dec c                                         ; $4526: $0d
    ld [bc], a                                    ; $4527: $02
    ld [de], a                                    ; $4528: $12
    ld [bc], a                                    ; $4529: $02
    dec l                                         ; $452a: $2d
    adc h                                         ; $452b: $8c
    ccf                                           ; $452c: $3f
    ld [hl-], a                                   ; $452d: $32
    ccf                                           ; $452e: $3f
    dec a                                         ; $452f: $3d
    ccf                                           ; $4530: $3f
    inc h                                         ; $4531: $24
    ccf                                           ; $4532: $3f
    ld [hl-], a                                   ; $4533: $32
    rra                                           ; $4534: $1f
    inc de                                        ; $4535: $13
    rra                                           ; $4536: $1f
    jr jr_0e0_453b                                ; $4537: $18 $02

    ccf                                           ; $4539: $3f
    adc h                                         ; $453a: $8c

jr_0e0_453b:
    ld e, d                                       ; $453b: $5a
    ld a, d                                       ; $453c: $7a
    ld e, l                                       ; $453d: $5d
    ld a, l                                       ; $453e: $7d
    ld e, d                                       ; $453f: $5a
    ld a, a                                       ; $4540: $7f
    cp l                                          ; $4541: $bd
    rst $38                                       ; $4542: $ff
    sbc l                                         ; $4543: $9d
    rst $38                                       ; $4544: $ff
    db $fd                                        ; $4545: $fd
    rst $38                                       ; $4546: $ff
    ld [bc], a                                    ; $4547: $02
    db $10                                        ; $4548: $10
    ld [bc], a                                    ; $4549: $02
    ld [$1402], sp                                ; $454a: $08 $02 $14
    add d                                         ; $454d: $82
    inc e                                         ; $454e: $1c
    inc c                                         ; $454f: $0c
    inc bc                                        ; $4550: $03
    inc e                                         ; $4551: $1c
    add l                                         ; $4552: $85
    inc b                                         ; $4553: $04
    inc e                                         ; $4554: $1c
    inc c                                         ; $4555: $0c
    jr jr_0e0_4560                                ; $4556: $18 $08

    ld [bc], a                                    ; $4558: $02
    jr jr_0e0_455d                                ; $4559: $18 $02

    inc e                                         ; $455b: $1c
    adc c                                         ; $455c: $89

jr_0e0_455d:
    ld a, [de]                                    ; $455d: $1a
    ld e, $1a                                     ; $455e: $1e $1a

jr_0e0_4560:
    ld e, $1a                                     ; $4560: $1e $1a
    ld e, $1d                                     ; $4562: $1e $1d
    rra                                           ; $4564: $1f
    add hl, de                                    ; $4565: $19
    inc bc                                        ; $4566: $03
    rra                                           ; $4567: $1f
    rst $38                                       ; $4568: $ff
    rlca                                          ; $4569: $07
    ld bc, $07f8                                  ; $456a: $01 $f8 $07
    pop af                                        ; $456d: $f1
    nop                                           ; $456e: $00
    ld a, [c]                                     ; $456f: $f2
    db $fc                                        ; $4570: $fc
    add e                                         ; $4571: $83
    ld [hl], $00                                  ; $4572: $36 $00
    ld c, c                                       ; $4574: $49
    stop                                          ; $4575: $10 $00
    add e                                         ; $4577: $83
    inc d                                         ; $4578: $14
    nop                                           ; $4579: $00
    ld [$000a], sp                                ; $457a: $08 $0a $00
    rst $38                                       ; $457d: $ff
    dec bc                                        ; $457e: $0b
    inc bc                                        ; $457f: $03
    ld hl, sp+$07                                 ; $4580: $f8 $07
    pop af                                        ; $4582: $f1
    nop                                           ; $4583: $00
    db $ed                                        ; $4584: $ed
    ld hl, sp-$12                                 ; $4585: $f8 $ee
    ei                                            ; $4587: $fb
    db $fd                                        ; $4588: $fd
    ld sp, hl                                     ; $4589: $f9
    ld [bc], a                                    ; $458a: $02
    ccf                                           ; $458b: $3f
    ld [bc], a                                    ; $458c: $02
    ld b, [hl]                                    ; $458d: $46
    ld [bc], a                                    ; $458e: $02
    sub e                                         ; $458f: $93
    adc h                                         ; $4590: $8c
    xor a                                         ; $4591: $af
    xor l                                         ; $4592: $ad
    rst $18                                       ; $4593: $df
    sub $7f                                       ; $4594: $d6 $7f
    ld [hl], b                                    ; $4596: $70
    ld a, a                                       ; $4597: $7f
    ld d, b                                       ; $4598: $50
    ccf                                           ; $4599: $3f
    ld sp, $383f                                  ; $459a: $31 $3f $38
    ld [bc], a                                    ; $459d: $02
    ld a, a                                       ; $459e: $7f
    adc h                                         ; $459f: $8c
    and l                                         ; $45a0: $a5
    db $fd                                        ; $45a1: $fd
    xor [hl]                                      ; $45a2: $ae
    cp $6d                                        ; $45a3: $fe $6d
    ld a, a                                       ; $45a5: $7f
    cpl                                           ; $45a6: $2f
    ccf                                           ; $45a7: $3f
    jr nz, jr_0e0_45e9                            ; $45a8: $20 $3f

    jr nc, @+$41                                  ; $45aa: $30 $3f

    inc b                                         ; $45ac: $04
    inc b                                         ; $45ad: $04

jr_0e0_45ae:
    ld [bc], a                                    ; $45ae: $02
    nop                                           ; $45af: $00
    ld [bc], a                                    ; $45b0: $02
    inc b                                         ; $45b1: $04
    add d                                         ; $45b2: $82
    ld b, $02                                     ; $45b3: $06 $02
    ld b, $04                                     ; $45b5: $06 $04
    ld [bc], a                                    ; $45b7: $02
    nop                                           ; $45b8: $00
    ld [bc], a                                    ; $45b9: $02
    ld [bc], a                                    ; $45ba: $02
    add d                                         ; $45bb: $82
    rlca                                          ; $45bc: $07
    dec b                                         ; $45bd: $05
    ld [bc], a                                    ; $45be: $02
    ld b, $02                                     ; $45bf: $06 $02
    rlca                                          ; $45c1: $07
    add [hl]                                      ; $45c2: $86
    inc bc                                        ; $45c3: $03
    dec b                                         ; $45c4: $05
    rlca                                          ; $45c5: $07
    dec b                                         ; $45c6: $05
    xor $fe                                       ; $45c7: $ee $fe
    ld [bc], a                                    ; $45c9: $02
    ret nz                                        ; $45ca: $c0

    add h                                         ; $45cb: $84
    db $fd                                        ; $45cc: $fd
    rst $38                                       ; $45cd: $ff
    ei                                            ; $45ce: $fb
    rst $38                                       ; $45cf: $ff
    ld [bc], a                                    ; $45d0: $02
    ld a, a                                       ; $45d1: $7f
    jr jr_0e0_45d4                                ; $45d2: $18 $00

jr_0e0_45d4:
    rst $38                                       ; $45d4: $ff
    rlca                                          ; $45d5: $07
    ld bc, $07f8                                  ; $45d6: $01 $f8 $07
    pop af                                        ; $45d9: $f1
    nop                                           ; $45da: $00
    xor $f8                                       ; $45db: $ee $f8
    add a                                         ; $45dd: $87
    add hl, sp                                    ; $45de: $39
    nop                                           ; $45df: $00
    ld l, h                                       ; $45e0: $6c
    nop                                           ; $45e1: $00
    ld d, b                                       ; $45e2: $50
    nop                                           ; $45e3: $00
    jr nz, jr_0e0_45f2                            ; $45e4: $20 $0c

    nop                                           ; $45e6: $00
    add e                                         ; $45e7: $83
    ld [bc], a                                    ; $45e8: $02

jr_0e0_45e9:
    nop                                           ; $45e9: $00
    ld bc, $000a                                  ; $45ea: $01 $0a $00
    rst $38                                       ; $45ed: $ff
    dec c                                         ; $45ee: $0d
    inc b                                         ; $45ef: $04
    ld hl, sp+$07                                 ; $45f0: $f8 $07

jr_0e0_45f2:
    pop af                                        ; $45f2: $f1
    nop                                           ; $45f3: $00
    db $ed                                        ; $45f4: $ed
    ld a, [$ffed]                                 ; $45f5: $fa $ed $ff
    db $fd                                        ; $45f8: $fd
    ei                                            ; $45f9: $fb
    db $fd                                        ; $45fa: $fd
    cp $02                                        ; $45fb: $fe $02
    dec c                                         ; $45fd: $0d
    ld [bc], a                                    ; $45fe: $02
    ld [de], a                                    ; $45ff: $12
    ld [bc], a                                    ; $4600: $02
    jr z, jr_0e0_4605                             ; $4601: $28 $02

    ld [hl-], a                                   ; $4603: $32
    ld [bc], a                                    ; $4604: $02

jr_0e0_4605:
    ld a, [hl+]                                   ; $4605: $2a
    ld [bc], a                                    ; $4606: $02
    dec [hl]                                      ; $4607: $35
    ld [bc], a                                    ; $4608: $02
    ld a, [de]                                    ; $4609: $1a
    add d                                         ; $460a: $82
    rra                                           ; $460b: $1f
    rla                                           ; $460c: $17
    ld [bc], a                                    ; $460d: $02
    rra                                           ; $460e: $1f
    ld [bc], a                                    ; $460f: $02
    jr c, @-$74                                   ; $4610: $38 $8a

    ld d, a                                       ; $4612: $57
    ld a, a                                       ; $4613: $7f
    ld e, b                                       ; $4614: $58
    ld a, a                                       ; $4615: $7f
    call c, $bfff                                 ; $4616: $dc $ff $bf
    rst $38                                       ; $4619: $ff
    cp a                                          ; $461a: $bf
    rst $38                                       ; $461b: $ff
    ld [bc], a                                    ; $461c: $02
    ld a, a                                       ; $461d: $7f
    ld [bc], a                                    ; $461e: $02
    db $10                                        ; $461f: $10
    ld [bc], a                                    ; $4620: $02
    ld [$1402], sp                                ; $4621: $08 $02 $14
    ld [bc], a                                    ; $4624: $02
    inc c                                         ; $4625: $0c
    ld [bc], a                                    ; $4626: $02
    inc d                                         ; $4627: $14
    ld [bc], a                                    ; $4628: $02
    inc c                                         ; $4629: $0c
    inc bc                                        ; $462a: $03
    jr jr_0e0_45ae                                ; $462b: $18 $81

    ld [$1802], sp                                ; $462d: $08 $02 $18
    ld [bc], a                                    ; $4630: $02
    inc e                                         ; $4631: $1c
    adc d                                         ; $4632: $8a
    ld a, [bc]                                    ; $4633: $0a
    ld e, $0a                                     ; $4634: $1e $0a
    ld e, $1b                                     ; $4636: $1e $1b
    rra                                           ; $4638: $1f
    dec e                                         ; $4639: $1d
    rra                                           ; $463a: $1f
    dec c                                         ; $463b: $0d
    rra                                           ; $463c: $1f
    ld [bc], a                                    ; $463d: $02
    ld e, $86                                     ; $463e: $1e $86
    ld a, [hl]                                    ; $4640: $7e
    ld a, a                                       ; $4641: $7f
    ld [hl], c                                    ; $4642: $71
    ld a, a                                       ; $4643: $7f
    cp $ff                                        ; $4644: $fe $ff
    ld [bc], a                                    ; $4646: $02
    ld a, a                                       ; $4647: $7f
    jr jr_0e0_464a                                ; $4648: $18 $00

jr_0e0_464a:
    ld [bc], a                                    ; $464a: $02
    ld b, $84                                     ; $464b: $06 $84
    ld [bc], a                                    ; $464d: $02
    ld b, $03                                     ; $464e: $06 $03
    rlca                                          ; $4650: $07
    ld [bc], a                                    ; $4651: $02
    ld b, $18                                     ; $4652: $06 $18
    nop                                           ; $4654: $00
    rst $38                                       ; $4655: $ff
    rlca                                          ; $4656: $07
    ld bc, $07f8                                  ; $4657: $01 $f8 $07
    pop af                                        ; $465a: $f1
    nop                                           ; $465b: $00
    xor $fc                                       ; $465c: $ee $fc
    adc e                                         ; $465e: $8b
    ld [hl], $00                                  ; $465f: $36 $00
    ld e, l                                       ; $4661: $5d
    nop                                           ; $4662: $00
    ld [hl], $00                                  ; $4663: $36 $00
    ld d, l                                       ; $4665: $55
    nop                                           ; $4666: $00
    ld a, [hl+]                                   ; $4667: $2a
    nop                                           ; $4668: $00
    inc d                                         ; $4669: $14
    ld b, $00                                     ; $466a: $06 $00
    add c                                         ; $466c: $81
    inc e                                         ; $466d: $1c
    ld c, $00                                     ; $466e: $0e $00
    rst $38                                       ; $4670: $ff
    dec c                                         ; $4671: $0d
    inc b                                         ; $4672: $04
    ld hl, sp+$07                                 ; $4673: $f8 $07
    pop af                                        ; $4675: $f1
    nop                                           ; $4676: $00
    pop af                                        ; $4677: $f1
    ld a, [$fff1]                                 ; $4678: $fa $f1 $ff
    ld bc, $01fc                                  ; $467b: $01 $fc $01
    db $fd                                        ; $467e: $fd
    ld [bc], a                                    ; $467f: $02
    rrca                                          ; $4680: $0f
    ld [bc], a                                    ; $4681: $02
    inc d                                         ; $4682: $14
    ld [bc], a                                    ; $4683: $02
    inc h                                         ; $4684: $24
    adc h                                         ; $4685: $8c
    cpl                                           ; $4686: $2f
    dec hl                                        ; $4687: $2b
    ld a, a                                       ; $4688: $7f
    ld a, b                                       ; $4689: $78
    ld a, a                                       ; $468a: $7f
    ld l, l                                       ; $468b: $6d
    ccf                                           ; $468c: $3f
    jr nc, jr_0e0_470e                            ; $468d: $30 $7f

    ld [hl], d                                    ; $468f: $72
    ld l, a                                       ; $4690: $6f
    ld l, b                                       ; $4691: $68
    ld [bc], a                                    ; $4692: $02
    ld a, a                                       ; $4693: $7f
    adc h                                         ; $4694: $8c
    ld l, d                                       ; $4695: $6a
    ld a, d                                       ; $4696: $7a
    ld e, l                                       ; $4697: $5d
    ld a, l                                       ; $4698: $7d
    ld e, d                                       ; $4699: $5a
    ld a, a                                       ; $469a: $7f
    db $dd                                        ; $469b: $dd
    rst $38                                       ; $469c: $ff
    and l                                         ; $469d: $a5
    rst $38                                       ; $469e: $ff
    rst $08                                       ; $469f: $cf
    db $fc                                        ; $46a0: $fc
    ld [bc], a                                    ; $46a1: $02
    db $10                                        ; $46a2: $10
    ld [bc], a                                    ; $46a3: $02
    ld [$1402], sp                                ; $46a4: $08 $02 $14
    ld [bc], a                                    ; $46a7: $02
    inc b                                         ; $46a8: $04
    ld [bc], a                                    ; $46a9: $02
    ld a, [de]                                    ; $46aa: $1a
    add [hl]                                      ; $46ab: $86
    ld e, $16                                     ; $46ac: $1e $16
    inc e                                         ; $46ae: $1c
    inc c                                         ; $46af: $0c
    ld a, [de]                                    ; $46b0: $1a
    ld a, [bc]                                    ; $46b1: $0a
    ld [bc], a                                    ; $46b2: $02
    ld [de], a                                    ; $46b3: $12
    ld [bc], a                                    ; $46b4: $02
    ld a, [de]                                    ; $46b5: $1a
    adc [hl]                                      ; $46b6: $8e
    ld d, $1e                                     ; $46b7: $16 $1e
    ld a, [de]                                    ; $46b9: $1a
    ld e, $1a                                     ; $46ba: $1e $1a
    ld e, $1b                                     ; $46bc: $1e $1b
    rra                                           ; $46be: $1f
    dec b                                         ; $46bf: $05
    rra                                           ; $46c0: $1f
    inc de                                        ; $46c1: $13
    rra                                           ; $46c2: $1f
    rst $38                                       ; $46c3: $ff
    ret                                           ; $46c4: $c9


    ld [bc], a                                    ; $46c5: $02
    ld [hl], $1c                                  ; $46c6: $36 $1c
    nop                                           ; $46c8: $00
    ld [bc], a                                    ; $46c9: $02
    ld bc, $001e                                  ; $46ca: $01 $1e $00
    rst $38                                       ; $46cd: $ff
    rlca                                          ; $46ce: $07
    ld bc, $07f8                                  ; $46cf: $01 $f8 $07
    pop af                                        ; $46d2: $f1
    nop                                           ; $46d3: $00
    ld a, [c]                                     ; $46d4: $f2
    db $fd                                        ; $46d5: $fd
    adc b                                         ; $46d6: $88
    nop                                           ; $46d7: $00
    ld e, h                                       ; $46d8: $5c
    nop                                           ; $46d9: $00
    jp c, $8600                                   ; $46da: $da $00 $86

    nop                                           ; $46dd: $00
    ld bc, $0005                                  ; $46de: $01 $05 $00
    adc b                                         ; $46e1: $88
    ld bc, $8300                                  ; $46e2: $01 $00 $83
    nop                                           ; $46e5: $00
    ld bc, $0028                                  ; $46e6: $01 $28 $00
    db $10                                        ; $46e9: $10
    dec bc                                        ; $46ea: $0b
    nop                                           ; $46eb: $00
    rst $38                                       ; $46ec: $ff
    dec bc                                        ; $46ed: $0b
    inc bc                                        ; $46ee: $03
    ld hl, sp+$07                                 ; $46ef: $f8 $07
    pop af                                        ; $46f1: $f1
    nop                                           ; $46f2: $00
    db $ed                                        ; $46f3: $ed
    ld sp, hl                                     ; $46f4: $f9
    xor $fb                                       ; $46f5: $ee $fb
    db $fd                                        ; $46f7: $fd
    ld sp, hl                                     ; $46f8: $f9
    ld [bc], a                                    ; $46f9: $02
    rra                                           ; $46fa: $1f
    ld [bc], a                                    ; $46fb: $02
    inc h                                         ; $46fc: $24
    ld [bc], a                                    ; $46fd: $02
    ld b, e                                       ; $46fe: $43
    adc h                                         ; $46ff: $8c
    ld d, a                                       ; $4700: $57
    ld d, l                                       ; $4701: $55
    ld h, a                                       ; $4702: $67
    ld h, h                                       ; $4703: $64
    ld a, [hl]                                    ; $4704: $7e
    ld a, d                                       ; $4705: $7a
    ld e, a                                       ; $4706: $5f
    ld d, b                                       ; $4707: $50
    rst $18                                       ; $4708: $df
    ret c                                         ; $4709: $d8

    adc a                                         ; $470a: $8f
    adc c                                         ; $470b: $89
    ld [bc], a                                    ; $470c: $02
    cp [hl]                                       ; $470d: $be

jr_0e0_470e:
    adc h                                         ; $470e: $8c
    ld l, e                                       ; $470f: $6b
    ld a, e                                       ; $4710: $7b
    xor l                                         ; $4711: $ad
    db $fd                                        ; $4712: $fd
    ld l, e                                       ; $4713: $6b
    ld a, a                                       ; $4714: $7f
    dec l                                         ; $4715: $2d
    ccf                                           ; $4716: $3f
    ld c, l                                       ; $4717: $4d
    ld a, a                                       ; $4718: $7f
    ld b, e                                       ; $4719: $43
    ld a, [hl]                                    ; $471a: $7e
    ld [bc], a                                    ; $471b: $02
    ld [bc], a                                    ; $471c: $02
    ld [bc], a                                    ; $471d: $02
    ld bc, $0206                                  ; $471e: $01 $06 $02
    add d                                         ; $4721: $82
    inc bc                                        ; $4722: $03
    ld bc, $0202                                  ; $4723: $01 $02 $02
    ld [$0200], sp                                ; $4726: $08 $00 $02
    ld [bc], a                                    ; $4729: $02
    add c                                         ; $472a: $81
    ld bc, $0304                                  ; $472b: $01 $04 $03
    add e                                         ; $472e: $83
    ld bc, $fe8e                                  ; $472f: $01 $8e $fe
    ld [bc], a                                    ; $4732: $02
    ld b, b                                       ; $4733: $40
    ld [bc], a                                    ; $4734: $02
    ld a, a                                       ; $4735: $7f
    add d                                         ; $4736: $82
    ld [hl], a                                    ; $4737: $77
    ld a, a                                       ; $4738: $7f
    ld [bc], a                                    ; $4739: $02
    ccf                                           ; $473a: $3f
    jr jr_0e0_473d                                ; $473b: $18 $00

jr_0e0_473d:
    rst $38                                       ; $473d: $ff
    rlca                                          ; $473e: $07
    ld bc, $07f8                                  ; $473f: $01 $f8 $07
    pop af                                        ; $4742: $f1
    nop                                           ; $4743: $00
    xor $fa                                       ; $4744: $ee $fa
    sub l                                         ; $4746: $95
    nop                                           ; $4747: $00
    ld [hl], $00                                  ; $4748: $36 $00
    ld a, c                                       ; $474a: $79
    nop                                           ; $474b: $00
    ld d, b                                       ; $474c: $50
    nop                                           ; $474d: $00
    jr nc, jr_0e0_4750                            ; $474e: $30 $00

jr_0e0_4750:
    ld [bc], a                                    ; $4750: $02
    nop                                           ; $4751: $00
    ld b, b                                       ; $4752: $40
    nop                                           ; $4753: $00
    ld b, b                                       ; $4754: $40
    nop                                           ; $4755: $00
    ldh [rP1], a                                  ; $4756: $e0 $00
    add b                                         ; $4758: $80
    ld [$0400], sp                                ; $4759: $08 $00 $04
    dec bc                                        ; $475c: $0b
    nop                                           ; $475d: $00
    rst $38                                       ; $475e: $ff
    dec c                                         ; $475f: $0d
    inc b                                         ; $4760: $04
    ld hl, sp+$07                                 ; $4761: $f8 $07
    pop af                                        ; $4763: $f1
    nop                                           ; $4764: $00
    db $ed                                        ; $4765: $ed
    ld a, [$ffed]                                 ; $4766: $fa $ed $ff
    db $fd                                        ; $4769: $fd
    db $fc                                        ; $476a: $fc
    db $fd                                        ; $476b: $fd
    db $fd                                        ; $476c: $fd
    ld [bc], a                                    ; $476d: $02
    rrca                                          ; $476e: $0f
    ld [bc], a                                    ; $476f: $02
    ld de, $2002                                  ; $4770: $11 $02 $20
    ld [bc], a                                    ; $4773: $02
    jr z, jr_0e0_4778                             ; $4774: $28 $02

    ld [hl], b                                    ; $4776: $70
    ld [bc], a                                    ; $4777: $02

jr_0e0_4778:
    ld l, b                                       ; $4778: $68
    ld [bc], a                                    ; $4779: $02
    ld [hl-], a                                   ; $477a: $32
    ld [bc], a                                    ; $477b: $02
    ld [hl], b                                    ; $477c: $70
    ld [bc], a                                    ; $477d: $02
    ld l, b                                       ; $477e: $68
    ld [bc], a                                    ; $477f: $02
    dec [hl]                                      ; $4780: $35
    adc d                                         ; $4781: $8a
    cpl                                           ; $4782: $2f
    ccf                                           ; $4783: $3f
    jr z, jr_0e0_47c5                             ; $4784: $28 $3f

    ld e, h                                       ; $4786: $5c
    ld a, a                                       ; $4787: $7f
    ld e, a                                       ; $4788: $5f
    ld a, a                                       ; $4789: $7f
    sbc a                                         ; $478a: $9f
    rst $38                                       ; $478b: $ff
    ld [bc], a                                    ; $478c: $02
    ld a, a                                       ; $478d: $7f
    ld [bc], a                                    ; $478e: $02
    db $10                                        ; $478f: $10
    ld [bc], a                                    ; $4790: $02
    ld [$0404], sp                                ; $4791: $08 $04 $04
    ld [bc], a                                    ; $4794: $02
    ld [bc], a                                    ; $4795: $02
    ld [bc], a                                    ; $4796: $02
    ld [de], a                                    ; $4797: $12
    ld [bc], a                                    ; $4798: $02
    inc d                                         ; $4799: $14
    ld [bc], a                                    ; $479a: $02
    ld a, [bc]                                    ; $479b: $0a
    ld [bc], a                                    ; $479c: $02
    ld b, $02                                     ; $479d: $06 $02
    inc c                                         ; $479f: $0c
    adc d                                         ; $47a0: $8a
    inc d                                         ; $47a1: $14
    inc e                                         ; $47a2: $1c
    inc c                                         ; $47a3: $0c
    inc e                                         ; $47a4: $1c
    ld a, [de]                                    ; $47a5: $1a
    ld e, $0a                                     ; $47a6: $1e $0a
    ld e, $09                                     ; $47a8: $1e $09
    rra                                           ; $47aa: $1f
    ld [bc], a                                    ; $47ab: $02
    ld e, $86                                     ; $47ac: $1e $86
    db $fd                                        ; $47ae: $fd
    rst $38                                       ; $47af: $ff
    db $e3                                        ; $47b0: $e3
    rst $38                                       ; $47b1: $ff
    cp $ff                                        ; $47b2: $fe $ff
    ld [bc], a                                    ; $47b4: $02
    ld a, a                                       ; $47b5: $7f
    jr jr_0e0_47b8                                ; $47b6: $18 $00

jr_0e0_47b8:
    ld b, $01                                     ; $47b8: $06 $01
    ld a, [de]                                    ; $47ba: $1a
    nop                                           ; $47bb: $00
    rst $38                                       ; $47bc: $ff
    rlca                                          ; $47bd: $07
    ld bc, $07f8                                  ; $47be: $01 $f8 $07
    pop af                                        ; $47c1: $f1
    nop                                           ; $47c2: $00
    xor $fd                                       ; $47c3: $ee $fd

jr_0e0_47c5:
    sub d                                         ; $47c5: $92
    nop                                           ; $47c6: $00
    ld [hl], h                                    ; $47c7: $74
    nop                                           ; $47c8: $00
    cp $00                                        ; $47c9: $fe $00
    cp [hl]                                       ; $47cb: $be
    nop                                           ; $47cc: $00
    ld a, a                                       ; $47cd: $7f
    nop                                           ; $47ce: $00
    cp e                                          ; $47cf: $bb
    nop                                           ; $47d0: $00
    ld l, d                                       ; $47d1: $6a
    nop                                           ; $47d2: $00
    ld a, l                                       ; $47d3: $7d
    nop                                           ; $47d4: $00
    cp [hl]                                       ; $47d5: $be
    nop                                           ; $47d6: $00
    ld d, h                                       ; $47d7: $54
    ld c, $00                                     ; $47d8: $0e $00
    rst $38                                       ; $47da: $ff
    dec c                                         ; $47db: $0d
    inc b                                         ; $47dc: $04
    ld hl, sp+$07                                 ; $47dd: $f8 $07
    pop af                                        ; $47df: $f1
    nop                                           ; $47e0: $00
    ldh a, [$fa]                                  ; $47e1: $f0 $fa
    ldh a, [rIE]                                  ; $47e3: $f0 $ff
    nop                                           ; $47e5: $00
    ld a, [$ff00]                                 ; $47e6: $fa $00 $ff
    ld [bc], a                                    ; $47e9: $02
    rrca                                          ; $47ea: $0f
    add d                                         ; $47eb: $82
    inc d                                         ; $47ec: $14
    db $10                                        ; $47ed: $10
    ld [bc], a                                    ; $47ee: $02
    add hl, hl                                    ; $47ef: $29
    adc [hl]                                      ; $47f0: $8e
    dec hl                                        ; $47f1: $2b
    ld a, [hl+]                                   ; $47f2: $2a
    ccf                                           ; $47f3: $3f
    inc [hl]                                      ; $47f4: $34
    ccf                                           ; $47f5: $3f
    dec l                                         ; $47f6: $2d
    ccf                                           ; $47f7: $3f
    jr nz, jr_0e0_4839                            ; $47f8: $20 $3f

    ld [hl+], a                                   ; $47fa: $22
    rra                                           ; $47fb: $1f
    rla                                           ; $47fc: $17
    rra                                           ; $47fd: $1f
    jr jr_0e0_4802                                ; $47fe: $18 $02

    scf                                           ; $4800: $37
    adc d                                         ; $4801: $8a

jr_0e0_4802:
    ld e, d                                       ; $4802: $5a
    ld a, d                                       ; $4803: $7a
    ld e, l                                       ; $4804: $5d
    ld a, l                                       ; $4805: $7d
    cp d                                          ; $4806: $ba
    rst $38                                       ; $4807: $ff
    sbc l                                         ; $4808: $9d
    rst $38                                       ; $4809: $ff
    cp l                                          ; $480a: $bd
    rst $38                                       ; $480b: $ff
    ld [bc], a                                    ; $480c: $02
    db $10                                        ; $480d: $10
    add h                                         ; $480e: $84
    jr jr_0e0_4819                                ; $480f: $18 $08

    inc c                                         ; $4811: $0c
    inc b                                         ; $4812: $04
    ld [bc], a                                    ; $4813: $02
    inc d                                         ; $4814: $14
    adc d                                         ; $4815: $8a
    inc e                                         ; $4816: $1c
    inc c                                         ; $4817: $0c
    inc e                                         ; $4818: $1c

jr_0e0_4819:
    inc d                                         ; $4819: $14
    inc e                                         ; $481a: $1c
    inc b                                         ; $481b: $04
    inc e                                         ; $481c: $1c
    inc b                                         ; $481d: $04
    jr jr_0e0_4828                                ; $481e: $18 $08

    ld [bc], a                                    ; $4820: $02
    jr jr_0e0_4825                                ; $4821: $18 $02

    inc c                                         ; $4823: $0c
    adc h                                         ; $4824: $8c

jr_0e0_4825:
    ld a, [de]                                    ; $4825: $1a
    ld e, $1a                                     ; $4826: $1e $1a

jr_0e0_4828:
    ld e, $1d                                     ; $4828: $1e $1d
    rra                                           ; $482a: $1f
    add hl, de                                    ; $482b: $19
    rra                                           ; $482c: $1f
    dec e                                         ; $482d: $1d
    rra                                           ; $482e: $1f
    db $fd                                        ; $482f: $fd
    rst $08                                       ; $4830: $cf
    ld [bc], a                                    ; $4831: $02
    jr nc, jr_0e0_4850                            ; $4832: $30 $1c

    nop                                           ; $4834: $00
    add d                                         ; $4835: $82
    rra                                           ; $4836: $1f
    inc de                                        ; $4837: $13
    ld [bc], a                                    ; $4838: $02

jr_0e0_4839:
    inc c                                         ; $4839: $0c
    inc e                                         ; $483a: $1c
    nop                                           ; $483b: $00
    rst $38                                       ; $483c: $ff
    rlca                                          ; $483d: $07
    ld bc, $07f8                                  ; $483e: $01 $f8 $07
    pop af                                        ; $4841: $f1
    nop                                           ; $4842: $00
    pop af                                        ; $4843: $f1
    db $fc                                        ; $4844: $fc
    add [hl]                                      ; $4845: $86
    nop                                           ; $4846: $00
    inc l                                         ; $4847: $2c
    nop                                           ; $4848: $00
    ld e, d                                       ; $4849: $5a
    nop                                           ; $484a: $00
    ld d, c                                       ; $484b: $51
    inc c                                         ; $484c: $0c
    nop                                           ; $484d: $00
    add l                                         ; $484e: $85
    ld [hl+], a                                   ; $484f: $22

jr_0e0_4850:
    nop                                           ; $4850: $00
    inc d                                         ; $4851: $14
    nop                                           ; $4852: $00
    ld [$0009], sp                                ; $4853: $08 $09 $00
    rst $38                                       ; $4856: $ff
    dec c                                         ; $4857: $0d
    inc b                                         ; $4858: $04
    ld hl, sp+$07                                 ; $4859: $f8 $07
    pop af                                        ; $485b: $f1
    nop                                           ; $485c: $00
    db $ec                                        ; $485d: $ec
    ld sp, hl                                     ; $485e: $f9
    db $ed                                        ; $485f: $ed
    ei                                            ; $4860: $fb
    db $fc                                        ; $4861: $fc
    ld sp, hl                                     ; $4862: $f9
    db $fc                                        ; $4863: $fc
    ld a, [$3e02]                                 ; $4864: $fa $02 $3e
    sub d                                         ; $4867: $92
    ld b, l                                       ; $4868: $45
    ld b, c                                       ; $4869: $41
    xor e                                         ; $486a: $ab
    adc e                                         ; $486b: $8b
    rst $18                                       ; $486c: $df
    sub [hl]                                      ; $486d: $96
    rst $18                                       ; $486e: $df
    ret nc                                        ; $486f: $d0

    rst $38                                       ; $4870: $ff
    ld a, [c]                                     ; $4871: $f2
    ld a, a                                       ; $4872: $7f
    ld b, b                                       ; $4873: $40
    ld a, a                                       ; $4874: $7f
    ld h, b                                       ; $4875: $60
    ccf                                           ; $4876: $3f
    inc hl                                        ; $4877: $23
    ccf                                           ; $4878: $3f
    ld sp, $7e02                                  ; $4879: $31 $02 $7e

jr_0e0_487c:
    adc d                                         ; $487c: $8a
    xor d                                         ; $487d: $aa
    ld a, [$7d6d]                                 ; $487e: $fa $6d $7d
    ld e, e                                       ; $4881: $5b
    ld a, a                                       ; $4882: $7f
    ld e, a                                       ; $4883: $5f
    ld a, a                                       ; $4884: $7f
    ld b, b                                       ; $4885: $40
    ld a, a                                       ; $4886: $7f
    ld [bc], a                                    ; $4887: $02
    ld [bc], a                                    ; $4888: $02
    ld [bc], a                                    ; $4889: $02
    ld bc, $0206                                  ; $488a: $01 $06 $02
    add d                                         ; $488d: $82
    inc bc                                        ; $488e: $03
    ld bc, $0204                                  ; $488f: $01 $04 $02
    inc b                                         ; $4892: $04
    nop                                           ; $4893: $00
    ld [bc], a                                    ; $4894: $02
    ld [bc], a                                    ; $4895: $02
    add d                                         ; $4896: $82
    inc bc                                        ; $4897: $03

jr_0e0_4898:
    ld bc, $0202                                  ; $4898: $01 $02 $02
    inc bc                                        ; $489b: $03
    inc bc                                        ; $489c: $03
    add e                                         ; $489d: $83
    ld bc, $fd87                                  ; $489e: $01 $87 $fd
    ld [bc], a                                    ; $48a1: $02
    ld b, b                                       ; $48a2: $40
    add [hl]                                      ; $48a3: $86
    ei                                            ; $48a4: $fb
    rst $38                                       ; $48a5: $ff
    db $fd                                        ; $48a6: $fd
    rst $38                                       ; $48a7: $ff
    ei                                            ; $48a8: $fb
    rst $38                                       ; $48a9: $ff
    ld [bc], a                                    ; $48aa: $02
    ld a, a                                       ; $48ab: $7f
    jr jr_0e0_48ae                                ; $48ac: $18 $00

jr_0e0_48ae:
    ld [bc], a                                    ; $48ae: $02
    ld bc, $001c                                  ; $48af: $01 $1c $00
    rst $38                                       ; $48b2: $ff
    rlca                                          ; $48b3: $07
    ld bc, $07f8                                  ; $48b4: $01 $f8 $07
    pop af                                        ; $48b7: $f1
    nop                                           ; $48b8: $00
    db $ed                                        ; $48b9: $ed
    ld a, [$0088]                                 ; $48ba: $fa $88 $00
    ld [hl], h                                    ; $48bd: $74
    nop                                           ; $48be: $00
    xor c                                         ; $48bf: $a9
    nop                                           ; $48c0: $00
    ld b, b                                       ; $48c1: $40
    nop                                           ; $48c2: $00
    ld b, b                                       ; $48c3: $40
    inc c                                         ; $48c4: $0c
    nop                                           ; $48c5: $00
    add e                                         ; $48c6: $83
    ld [$0400], sp                                ; $48c7: $08 $00 $04
    add hl, bc                                    ; $48ca: $09
    nop                                           ; $48cb: $00
    rst $38                                       ; $48cc: $ff
    dec c                                         ; $48cd: $0d
    inc b                                         ; $48ce: $04
    ld hl, sp+$07                                 ; $48cf: $f8 $07
    pop af                                        ; $48d1: $f1
    nop                                           ; $48d2: $00
    db $ec                                        ; $48d3: $ec
    ld a, [$ffec]                                 ; $48d4: $fa $ec $ff
    db $fc                                        ; $48d7: $fc
    ei                                            ; $48d8: $fb
    db $fc                                        ; $48d9: $fc
    cp $02                                        ; $48da: $fe $02
    rrca                                          ; $48dc: $0f
    add e                                         ; $48dd: $83
    inc d                                         ; $48de: $14
    db $10                                        ; $48df: $10
    add hl, hl                                    ; $48e0: $29
    inc bc                                        ; $48e1: $03
    jr nz, jr_0e0_48e6                            ; $48e2: $20 $02

    jr nc, jr_0e0_48e8                            ; $48e4: $30 $02

jr_0e0_48e6:
    dec l                                         ; $48e6: $2d
    ld [bc], a                                    ; $48e7: $02

jr_0e0_48e8:
    ld a, [hl-]                                   ; $48e8: $3a
    add e                                         ; $48e9: $83
    rra                                           ; $48ea: $1f
    rla                                           ; $48eb: $17
    rra                                           ; $48ec: $1f
    inc bc                                        ; $48ed: $03
    jr jr_0e0_487c                                ; $48ee: $18 $8c

    scf                                           ; $48f0: $37
    ccf                                           ; $48f1: $3f
    ld a, b                                       ; $48f2: $78
    ld a, a                                       ; $48f3: $7f
    ld e, h                                       ; $48f4: $5c
    ld a, a                                       ; $48f5: $7f
    rst $18                                       ; $48f6: $df
    rst $38                                       ; $48f7: $ff
    cp a                                          ; $48f8: $bf
    rst $38                                       ; $48f9: $ff
    cp a                                          ; $48fa: $bf
    rst $38                                       ; $48fb: $ff
    ld [bc], a                                    ; $48fc: $02
    db $10                                        ; $48fd: $10
    ld [bc], a                                    ; $48fe: $02
    ld [$0406], sp                                ; $48ff: $08 $06 $04
    ld [bc], a                                    ; $4902: $02
    inc c                                         ; $4903: $0c

jr_0e0_4904:
    ld [bc], a                                    ; $4904: $02
    inc e                                         ; $4905: $1c
    add d                                         ; $4906: $82
    jr jr_0e0_4911                                ; $4907: $18 $08

    inc b                                         ; $4909: $04
    jr jr_0e0_4898                                ; $490a: $18 $8c

    inc c                                         ; $490c: $0c
    inc e                                         ; $490d: $1c
    ld a, [bc]                                    ; $490e: $0a
    ld e, $1a                                     ; $490f: $1e $1a

jr_0e0_4911:
    ld e, $1b                                     ; $4911: $1e $1b
    rra                                           ; $4913: $1f
    dec e                                         ; $4914: $1d
    rra                                           ; $4915: $1f
    dec c                                         ; $4916: $0d
    rra                                           ; $4917: $1f
    ld [bc], a                                    ; $4918: $02
    rst $38                                       ; $4919: $ff
    add [hl]                                      ; $491a: $86
    ld a, [hl]                                    ; $491b: $7e
    ld a, a                                       ; $491c: $7f
    ld [hl], c                                    ; $491d: $71
    ld a, a                                       ; $491e: $7f
    cp $ff                                        ; $491f: $fe $ff
    ld [bc], a                                    ; $4921: $02
    ld a, a                                       ; $4922: $7f
    ld d, $00                                     ; $4923: $16 $00
    ld [bc], a                                    ; $4925: $02
    rlca                                          ; $4926: $07
    ld [bc], a                                    ; $4927: $02
    ld b, $84                                     ; $4928: $06 $84
    ld [bc], a                                    ; $492a: $02
    ld b, $03                                     ; $492b: $06 $03
    rlca                                          ; $492d: $07
    ld [bc], a                                    ; $492e: $02
    ld b, $16                                     ; $492f: $06 $16
    nop                                           ; $4931: $00
    rst $38                                       ; $4932: $ff
    rlca                                          ; $4933: $07
    ld bc, $07f8                                  ; $4934: $01 $f8 $07
    pop af                                        ; $4937: $f1
    nop                                           ; $4938: $00
    db $ed                                        ; $4939: $ed
    db $fc                                        ; $493a: $fc
    adc h                                         ; $493b: $8c
    nop                                           ; $493c: $00
    ld l, $00                                     ; $493d: $2e $00
    ld e, e                                       ; $493f: $5b
    nop                                           ; $4940: $00
    ld a, a                                       ; $4941: $7f
    nop                                           ; $4942: $00
    ccf                                           ; $4943: $3f
    nop                                           ; $4944: $00
    ld c, d                                       ; $4945: $4a
    nop                                           ; $4946: $00
    inc d                                         ; $4947: $14
    inc b                                         ; $4948: $04
    nop                                           ; $4949: $00
    add c                                         ; $494a: $81
    inc e                                         ; $494b: $1c
    rrca                                          ; $494c: $0f
    nop                                           ; $494d: $00
    rst $38                                       ; $494e: $ff
    dec bc                                        ; $494f: $0b
    inc bc                                        ; $4950: $03
    ld hl, sp+$07                                 ; $4951: $f8 $07
    pop af                                        ; $4953: $f1
    nop                                           ; $4954: $00
    pop af                                        ; $4955: $f1
    ld a, [$fff1]                                 ; $4956: $fa $f1 $ff
    ld bc, $02fa                                  ; $4959: $01 $fa $02
    rlca                                          ; $495c: $07
    ld [bc], a                                    ; $495d: $02
    add hl, bc                                    ; $495e: $09
    add d                                         ; $495f: $82
    inc d                                         ; $4960: $14
    db $10                                        ; $4961: $10
    ld [bc], a                                    ; $4962: $02
    inc de                                        ; $4963: $13
    sbc b                                         ; $4964: $98
    rra                                           ; $4965: $1f
    inc e                                         ; $4966: $1c
    rra                                           ; $4967: $1f
    ld d, $1f                                     ; $4968: $16 $1f
    ld [de], a                                    ; $496a: $12
    rrca                                          ; $496b: $0f
    add hl, bc                                    ; $496c: $09
    rrca                                          ; $496d: $0f
    dec bc                                        ; $496e: $0b
    rra                                           ; $496f: $1f
    inc e                                         ; $4970: $1c
    dec hl                                        ; $4971: $2b
    dec sp                                        ; $4972: $3b
    inc l                                         ; $4973: $2c
    inc a                                         ; $4974: $3c
    ld c, d                                       ; $4975: $4a
    ld a, a                                       ; $4976: $7f
    ld a, l                                       ; $4977: $7d
    ld a, a                                       ; $4978: $7f
    ld c, l                                       ; $4979: $4d
    ld a, a                                       ; $497a: $7f
    cp a                                          ; $497b: $bf
    pop hl                                        ; $497c: $e1
    ld [bc], a                                    ; $497d: $02
    jr jr_0e0_4904                                ; $497e: $18 $84

    inc c                                         ; $4980: $0c
    inc b                                         ; $4981: $04
    ld [de], a                                    ; $4982: $12
    ld [bc], a                                    ; $4983: $02
    ld [bc], a                                    ; $4984: $02
    ld a, [bc]                                    ; $4985: $0a
    adc h                                         ; $4986: $8c
    ld e, $16                                     ; $4987: $1e $16
    ld e, $1a                                     ; $4989: $1e $1a
    ld e, $06                                     ; $498b: $1e $06
    ld e, $0a                                     ; $498d: $1e $0a
    rra                                           ; $498f: $1f
    add hl, de                                    ; $4990: $19
    ld e, $12                                     ; $4991: $1e $12
    ld [bc], a                                    ; $4993: $02
    ld e, $87                                     ; $4994: $1e $87
    ld a, [de]                                    ; $4996: $1a
    ld d, $19                                     ; $4997: $16 $19
    rra                                           ; $4999: $1f
    ld de, $1d1f                                  ; $499a: $11 $1f $1d
    inc bc                                        ; $499d: $03
    rra                                           ; $499e: $1f
    add d                                         ; $499f: $82
    ld a, [hl]                                    ; $49a0: $7e
    ld a, d                                       ; $49a1: $7a
    ld [bc], a                                    ; $49a2: $02
    inc b                                         ; $49a3: $04
    inc e                                         ; $49a4: $1c
    nop                                           ; $49a5: $00
    rst $38                                       ; $49a6: $ff
    rlca                                          ; $49a7: $07
    ld bc, $07f8                                  ; $49a8: $01 $f8 $07
    pop af                                        ; $49ab: $f1
    nop                                           ; $49ac: $00
    ld a, [c]                                     ; $49ad: $f2
    db $fd                                        ; $49ae: $fd
    ld [bc], a                                    ; $49af: $02
    inc [hl]                                      ; $49b0: $34
    ld [bc], a                                    ; $49b1: $02
    ld e, e                                       ; $49b2: $5b
    ld [bc], a                                    ; $49b3: $02
    ld h, l                                       ; $49b4: $65
    inc c                                         ; $49b5: $0c
    nop                                           ; $49b6: $00
    add e                                         ; $49b7: $83
    jr nz, jr_0e0_49ba                            ; $49b8: $20 $00

jr_0e0_49ba:
    jr jr_0e0_49c7                                ; $49ba: $18 $0b

    nop                                           ; $49bc: $00
    rst $38                                       ; $49bd: $ff
    dec bc                                        ; $49be: $0b
    inc bc                                        ; $49bf: $03
    ld hl, sp+$07                                 ; $49c0: $f8 $07
    pop af                                        ; $49c2: $f1
    nop                                           ; $49c3: $00
    db $ec                                        ; $49c4: $ec
    ld sp, hl                                     ; $49c5: $f9
    db $ed                                        ; $49c6: $ed

jr_0e0_49c7:
    ei                                            ; $49c7: $fb
    db $fc                                        ; $49c8: $fc
    ld sp, hl                                     ; $49c9: $f9
    ld [bc], a                                    ; $49ca: $02
    rra                                           ; $49cb: $1f
    sbc [hl]                                      ; $49cc: $9e

jr_0e0_49cd:
    db $e4                                        ; $49cd: $e4
    ldh [rOBP1], a                                ; $49ce: $e0 $49
    ld b, c                                       ; $49d0: $41
    and l                                         ; $49d1: $a5
    add l                                         ; $49d2: $85
    adc a                                         ; $49d3: $8f
    adc d                                         ; $49d4: $8a
    rst $18                                       ; $49d5: $df
    sub $7f                                       ; $49d6: $d6 $7f
    ld [hl], b                                    ; $49d8: $70
    ld a, a                                       ; $49d9: $7f
    ld d, b                                       ; $49da: $50
    ccf                                           ; $49db: $3f
    inc sp                                        ; $49dc: $33
    ccf                                           ; $49dd: $3f
    add hl, sp                                    ; $49de: $39
    ld d, [hl]                                    ; $49df: $56
    halt                                          ; $49e0: $76
    xor e                                         ; $49e1: $ab
    ei                                            ; $49e2: $fb
    db $ed                                        ; $49e3: $ed
    db $fd                                        ; $49e4: $fd
    ld e, e                                       ; $49e5: $5b
    ld a, a                                       ; $49e6: $7f
    ld e, a                                       ; $49e7: $5f
    ld a, a                                       ; $49e8: $7f
    ld b, a                                       ; $49e9: $47
    ld a, h                                       ; $49ea: $7c
    ld [bc], a                                    ; $49eb: $02

jr_0e0_49ec:
    ld [bc], a                                    ; $49ec: $02
    ld [bc], a                                    ; $49ed: $02
    ld bc, $0206                                  ; $49ee: $01 $06 $02
    add d                                         ; $49f1: $82
    inc bc                                        ; $49f2: $03
    ld bc, $0204                                  ; $49f3: $01 $04 $02
    ld b, $00                                     ; $49f6: $06 $00
    ld [bc], a                                    ; $49f8: $02
    ld [bc], a                                    ; $49f9: $02
    add d                                         ; $49fa: $82
    inc bc                                        ; $49fb: $03
    ld bc, $0303                                  ; $49fc: $01 $03 $03
    add e                                         ; $49ff: $83
    ld bc, $fe9e                                  ; $4a00: $01 $9e $fe
    ld [bc], a                                    ; $4a03: $02
    ld b, b                                       ; $4a04: $40
    add [hl]                                      ; $4a05: $86
    ei                                            ; $4a06: $fb
    rst $38                                       ; $4a07: $ff
    db $fd                                        ; $4a08: $fd
    rst $38                                       ; $4a09: $ff
    ei                                            ; $4a0a: $fb
    rst $38                                       ; $4a0b: $ff
    ld [bc], a                                    ; $4a0c: $02
    ld a, a                                       ; $4a0d: $7f
    ld d, $00                                     ; $4a0e: $16 $00
    rst $38                                       ; $4a10: $ff
    rlca                                          ; $4a11: $07
    ld bc, $07f8                                  ; $4a12: $01 $f8 $07
    pop af                                        ; $4a15: $f1
    nop                                           ; $4a16: $00
    db $ed                                        ; $4a17: $ed
    ld a, [$3602]                                 ; $4a18: $fa $02 $36
    ld [bc], a                                    ; $4a1b: $02
    ld l, l                                       ; $4a1c: $6d
    ld [bc], a                                    ; $4a1d: $02
    or h                                          ; $4a1e: $b4
    ld [bc], a                                    ; $4a1f: $02
    ldh [rSC], a                                  ; $4a20: $e0 $02
    ld b, b                                       ; $4a22: $40
    ld [$8500], sp                                ; $4a23: $08 $00 $85
    stop                                          ; $4a26: $10 $00
    ld [$0400], sp                                ; $4a28: $08 $00 $04
    add hl, bc                                    ; $4a2b: $09
    nop                                           ; $4a2c: $00
    rst $38                                       ; $4a2d: $ff
    dec c                                         ; $4a2e: $0d
    inc b                                         ; $4a2f: $04
    ld hl, sp+$07                                 ; $4a30: $f8 $07
    pop af                                        ; $4a32: $f1
    nop                                           ; $4a33: $00
    db $ec                                        ; $4a34: $ec
    ld a, [$ffec]                                 ; $4a35: $fa $ec $ff
    db $fc                                        ; $4a38: $fc
    ei                                            ; $4a39: $fb
    db $fc                                        ; $4a3a: $fc
    cp $02                                        ; $4a3b: $fe $02
    rrca                                          ; $4a3d: $0f
    ld [bc], a                                    ; $4a3e: $02
    ld [de], a                                    ; $4a3f: $12
    add e                                         ; $4a40: $83
    jr z, jr_0e0_4a63                             ; $4a41: $28 $20

    ld hl, $2005                                  ; $4a43: $21 $05 $20
    ld [bc], a                                    ; $4a46: $02
    dec [hl]                                      ; $4a47: $35
    ld [bc], a                                    ; $4a48: $02
    jr jr_0e0_49cd                                ; $4a49: $18 $82

    rra                                           ; $4a4b: $1f
    rla                                           ; $4a4c: $17
    ld [bc], a                                    ; $4a4d: $02
    ld [$378c], sp                                ; $4a4e: $08 $8c $37
    ccf                                           ; $4a51: $3f
    ld e, b                                       ; $4a52: $58
    ld a, a                                       ; $4a53: $7f
    ld e, l                                       ; $4a54: $5d
    ld a, a                                       ; $4a55: $7f
    rst $18                                       ; $4a56: $df
    rst $38                                       ; $4a57: $ff
    cp a                                          ; $4a58: $bf
    rst $38                                       ; $4a59: $ff
    cp a                                          ; $4a5a: $bf
    rst $38                                       ; $4a5b: $ff
    ld [bc], a                                    ; $4a5c: $02
    db $10                                        ; $4a5d: $10
    add e                                         ; $4a5e: $83
    jr jr_0e0_4a69                                ; $4a5f: $18 $08

    inc d                                         ; $4a61: $14
    dec b                                         ; $4a62: $05

jr_0e0_4a63:
    inc b                                         ; $4a63: $04
    ld [bc], a                                    ; $4a64: $02
    inc d                                         ; $4a65: $14
    ld [bc], a                                    ; $4a66: $02
    inc c                                         ; $4a67: $0c
    inc bc                                        ; $4a68: $03

jr_0e0_4a69:
    jr jr_0e0_49ec                                ; $4a69: $18 $81

    ld [$1002], sp                                ; $4a6b: $08 $02 $10
    adc h                                         ; $4a6e: $8c
    inc c                                         ; $4a6f: $0c
    inc e                                         ; $4a70: $1c
    ld a, [de]                                    ; $4a71: $1a
    ld e, $1a                                     ; $4a72: $1e $1a
    ld e, $1b                                     ; $4a74: $1e $1b
    rra                                           ; $4a76: $1f
    dec e                                         ; $4a77: $1d
    rra                                           ; $4a78: $1f
    dec c                                         ; $4a79: $0d
    rra                                           ; $4a7a: $1f
    ld [bc], a                                    ; $4a7b: $02
    rst $38                                       ; $4a7c: $ff
    add e                                         ; $4a7d: $83
    ld a, [hl]                                    ; $4a7e: $7e
    ld a, a                                       ; $4a7f: $7f
    ld [hl], c                                    ; $4a80: $71
    inc bc                                        ; $4a81: $03
    ld a, a                                       ; $4a82: $7f
    ld [bc], a                                    ; $4a83: $02
    ccf                                           ; $4a84: $3f
    ld d, $00                                     ; $4a85: $16 $00
    ld [bc], a                                    ; $4a87: $02
    rlca                                          ; $4a88: $07
    inc b                                         ; $4a89: $04
    ld b, $82                                     ; $4a8a: $06 $82
    ld [bc], a                                    ; $4a8c: $02
    ld b, $02                                     ; $4a8d: $06 $02
    inc b                                         ; $4a8f: $04
    ld d, $00                                     ; $4a90: $16 $00
    rst $38                                       ; $4a92: $ff
    rlca                                          ; $4a93: $07
    ld bc, $07f8                                  ; $4a94: $01 $f8 $07
    pop af                                        ; $4a97: $f1
    nop                                           ; $4a98: $00
    db $ed                                        ; $4a99: $ed
    db $fc                                        ; $4a9a: $fc
    ld [bc], a                                    ; $4a9b: $02
    inc [hl]                                      ; $4a9c: $34
    ld [bc], a                                    ; $4a9d: $02
    ld e, l                                       ; $4a9e: $5d
    ld [bc], a                                    ; $4a9f: $02
    ld a, e                                       ; $4aa0: $7b
    ld [bc], a                                    ; $4aa1: $02
    ld a, a                                       ; $4aa2: $7f
    ld [bc], a                                    ; $4aa3: $02
    ld a, l                                       ; $4aa4: $7d
    ld [bc], a                                    ; $4aa5: $02
    ld a, [hl+]                                   ; $4aa6: $2a
    ld [bc], a                                    ; $4aa7: $02
    inc e                                         ; $4aa8: $1c
    ld [bc], a                                    ; $4aa9: $02
    nop                                           ; $4aaa: $00
    add c                                         ; $4aab: $81
    inc e                                         ; $4aac: $1c
    rrca                                          ; $4aad: $0f
    nop                                           ; $4aae: $00
    rst $38                                       ; $4aaf: $ff
    rlca                                          ; $4ab0: $07
    ld bc, $03fc                                  ; $4ab1: $01 $fc $03
    db $fc                                        ; $4ab4: $fc
    inc bc                                        ; $4ab5: $03
    rst $38                                       ; $4ab6: $ff
    ld a, [$0285]                                 ; $4ab7: $fa $85 $02
    nop                                           ; $4aba: $00
    rlca                                          ; $4abb: $07
    nop                                           ; $4abc: $00
    ld [bc], a                                    ; $4abd: $02
    dec de                                        ; $4abe: $1b
    nop                                           ; $4abf: $00
    rst $38                                       ; $4ac0: $ff
    rlca                                          ; $4ac1: $07
    ld bc, $03fc                                  ; $4ac2: $01 $fc $03
    db $fc                                        ; $4ac5: $fc
    inc bc                                        ; $4ac6: $03
    db $fd                                        ; $4ac7: $fd
    db $fc                                        ; $4ac8: $fc
    add c                                         ; $4ac9: $81
    nop                                           ; $4aca: $00
    ld [bc], a                                    ; $4acb: $02
    ld [$0088], sp                                ; $4acc: $08 $88 $00
    ld [$3e14], sp                                ; $4acf: $08 $14 $3e
    ld b, c                                       ; $4ad2: $41
    ld [$0814], sp                                ; $4ad3: $08 $14 $08
    ld [bc], a                                    ; $4ad6: $02
    nop                                           ; $4ad7: $00
    add c                                         ; $4ad8: $81
    ld [$0012], sp                                ; $4ad9: $08 $12 $00
    rst $38                                       ; $4adc: $ff
    rlca                                          ; $4add: $07
    ld bc, $03fc                                  ; $4ade: $01 $fc $03
    db $fc                                        ; $4ae1: $fc
    inc bc                                        ; $4ae2: $03
    db $fd                                        ; $4ae3: $fd
    db $fc                                        ; $4ae4: $fc
    add c                                         ; $4ae5: $81
    nop                                           ; $4ae6: $00
    ld [bc], a                                    ; $4ae7: $02
    inc b                                         ; $4ae8: $04
    adc b                                         ; $4ae9: $88
    nop                                           ; $4aea: $00
    jr z, jr_0e0_4b2d                             ; $4aeb: $28 $40

    inc e                                         ; $4aed: $1c
    nop                                           ; $4aee: $00
    ld a, [bc]                                    ; $4aef: $0a
    ld bc, $0210                                  ; $4af0: $01 $10 $02
    nop                                           ; $4af3: $00
    add c                                         ; $4af4: $81
    db $10                                        ; $4af5: $10
    ld [de], a                                    ; $4af6: $12
    nop                                           ; $4af7: $00
    rst $38                                       ; $4af8: $ff
    rlca                                          ; $4af9: $07
    ld bc, $03fc                                  ; $4afa: $01 $fc $03
    db $fc                                        ; $4afd: $fc
    inc bc                                        ; $4afe: $03
    db $fc                                        ; $4aff: $fc
    db $fc                                        ; $4b00: $fc
    add d                                         ; $4b01: $82
    nop                                           ; $4b02: $00
    add b                                         ; $4b03: $80
    ld [bc], a                                    ; $4b04: $02
    nop                                           ; $4b05: $00
    adc h                                         ; $4b06: $8c
    jr nz, jr_0e0_4b0b                            ; $4b07: $20 $02

    inc d                                         ; $4b09: $14
    nop                                           ; $4b0a: $00

jr_0e0_4b0b:
    ld [$1400], sp                                ; $4b0b: $08 $00 $14
    nop                                           ; $4b0e: $00
    jr nz, @+$04                                  ; $4b0f: $20 $02

    ld bc, $1040                                  ; $4b11: $01 $40 $10
    nop                                           ; $4b14: $00
    rst $38                                       ; $4b15: $ff
    rlca                                          ; $4b16: $07
    ld bc, $03fc                                  ; $4b17: $01 $fc $03
    db $fc                                        ; $4b1a: $fc
    inc bc                                        ; $4b1b: $03
    cp $fc                                        ; $4b1c: $fe $fc
    add a                                         ; $4b1e: $87
    nop                                           ; $4b1f: $00
    ld bc, $0008                                  ; $4b20: $01 $08 $00
    inc d                                         ; $4b23: $14
    nop                                           ; $4b24: $00
    ld [$0002], sp                                ; $4b25: $08 $02 $00
    add c                                         ; $4b28: $81
    ld b, b                                       ; $4b29: $40
    ld d, $00                                     ; $4b2a: $16 $00
    rst $38                                       ; $4b2c: $ff

jr_0e0_4b2d:
    dec bc                                        ; $4b2d: $0b
    inc bc                                        ; $4b2e: $03
    ld hl, sp+$07                                 ; $4b2f: $f8 $07
    pop af                                        ; $4b31: $f1
    nop                                           ; $4b32: $00
    rst $28                                       ; $4b33: $ef
    ld a, [$fff1]                                 ; $4b34: $fa $f1 $ff
    rst $38                                       ; $4b37: $ff
    db $fd                                        ; $4b38: $fd
    ld [bc], a                                    ; $4b39: $02
    db $10                                        ; $4b3a: $10
    sbc b                                         ; $4b3b: $98
    jr c, jr_0e0_4b66                             ; $4b3c: $38 $28

    ld a, a                                       ; $4b3e: $7f
    ld c, a                                       ; $4b3f: $4f
    ld a, l                                       ; $4b40: $7d
    ld b, l                                       ; $4b41: $45
    ld a, d                                       ; $4b42: $7a
    ld e, d                                       ; $4b43: $5a
    rst $38                                       ; $4b44: $ff
    db $dd                                        ; $4b45: $dd
    xor a                                         ; $4b46: $af
    db $fc                                        ; $4b47: $fc
    and a                                         ; $4b48: $a7
    or $9f                                        ; $4b49: $f6 $9f
    ld hl, sp+$7f                                 ; $4b4b: $f8 $7f
    ld a, c                                       ; $4b4d: $79
    ld c, a                                       ; $4b4e: $4f
    ld a, h                                       ; $4b4f: $7c
    cpl                                           ; $4b50: $2f
    ccf                                           ; $4b51: $3f
    ld a, [hl+]                                   ; $4b52: $2a
    ld a, [hl-]                                   ; $4b53: $3a
    ld [bc], a                                    ; $4b54: $02
    dec e                                         ; $4b55: $1d
    add h                                         ; $4b56: $84
    ld a, [de]                                    ; $4b57: $1a
    rra                                           ; $4b58: $1f
    dec e                                         ; $4b59: $1d
    rra                                           ; $4b5a: $1f
    ld [bc], a                                    ; $4b5b: $02
    jr jr_0e0_4b60                                ; $4b5c: $18 $02

    inc b                                         ; $4b5e: $04
    ld [bc], a                                    ; $4b5f: $02

jr_0e0_4b60:
    ld a, [bc]                                    ; $4b60: $0a
    ld [bc], a                                    ; $4b61: $02
    ld [de], a                                    ; $4b62: $12
    adc d                                         ; $4b63: $8a
    dec e                                         ; $4b64: $1d
    dec c                                         ; $4b65: $0d

jr_0e0_4b66:
    rra                                           ; $4b66: $1f
    dec de                                        ; $4b67: $1b
    rra                                           ; $4b68: $1f
    rlca                                          ; $4b69: $07
    dec e                                         ; $4b6a: $1d
    dec b                                         ; $4b6b: $05
    dec e                                         ; $4b6c: $1d
    dec c                                         ; $4b6d: $0d
    ld [bc], a                                    ; $4b6e: $02
    add hl, de                                    ; $4b6f: $19
    adc h                                         ; $4b70: $8c
    dec d                                         ; $4b71: $15
    dec e                                         ; $4b72: $1d
    ld d, $1e                                     ; $4b73: $16 $1e
    ld a, [de]                                    ; $4b75: $1a
    ld e, $1a                                     ; $4b76: $1e $1a
    ld e, $a5                                     ; $4b78: $1e $a5
    rst $38                                       ; $4b7a: $ff
    di                                            ; $4b7b: $f3
    rst $18                                       ; $4b7c: $df
    inc b                                         ; $4b7d: $04
    ret nz                                        ; $4b7e: $c0

    add d                                         ; $4b7f: $82
    ccf                                           ; $4b80: $3f
    inc hl                                        ; $4b81: $23
    ld [bc], a                                    ; $4b82: $02
    inc e                                         ; $4b83: $1c
    jr jr_0e0_4b86                                ; $4b84: $18 $00

jr_0e0_4b86:
    rst $38                                       ; $4b86: $ff
    rlca                                          ; $4b87: $07
    ld bc, $07f8                                  ; $4b88: $01 $f8 $07
    pop af                                        ; $4b8b: $f1
    nop                                           ; $4b8c: $00
    ld a, [c]                                     ; $4b8d: $f2
    cp $8a                                        ; $4b8e: $fe $8a
    nop                                           ; $4b90: $00
    inc l                                         ; $4b91: $2c
    nop                                           ; $4b92: $00
    ld e, d                                       ; $4b93: $5a
    nop                                           ; $4b94: $00
    ld b, $00                                     ; $4b95: $06 $00
    ld bc, $8000                                  ; $4b97: $01 $00 $80
    inc bc                                        ; $4b9a: $03
    nop                                           ; $4b9b: $00
    adc b                                         ; $4b9c: $88
    ld bc, $0100                                  ; $4b9d: $01 $00 $01
    nop                                           ; $4ba0: $00
    inc bc                                        ; $4ba1: $03
    ld d, b                                       ; $4ba2: $50
    ld bc, $0b20                                  ; $4ba3: $01 $20 $0b
    nop                                           ; $4ba6: $00
    rst $38                                       ; $4ba7: $ff
    dec bc                                        ; $4ba8: $0b
    inc bc                                        ; $4ba9: $03
    ld hl, sp+$07                                 ; $4baa: $f8 $07
    pop af                                        ; $4bac: $f1
    nop                                           ; $4bad: $00
    db $ec                                        ; $4bae: $ec
    ld sp, hl                                     ; $4baf: $f9
    xor $fb                                       ; $4bb0: $ee $fb
    db $fc                                        ; $4bb2: $fc
    ld sp, hl                                     ; $4bb3: $f9
    ld [bc], a                                    ; $4bb4: $02
    ld [$1f9e], sp                                ; $4bb5: $08 $9e $1f
    rla                                           ; $4bb8: $17
    inc a                                         ; $4bb9: $3c
    inc h                                         ; $4bba: $24
    ld a, a                                       ; $4bbb: $7f
    ld h, a                                       ; $4bbc: $67
    ld e, a                                       ; $4bbd: $5f
    ld d, l                                       ; $4bbe: $55
    ld a, a                                       ; $4bbf: $7f
    halt                                          ; $4bc0: $76
    ld l, d                                       ; $4bc1: $6a
    ld a, [hl]                                    ; $4bc2: $7e
    ld l, e                                       ; $4bc3: $6b
    ld a, [hl]                                    ; $4bc4: $7e
    di                                            ; $4bc5: $f3
    cp $af                                        ; $4bc6: $fe $af
    cp l                                          ; $4bc8: $bd
    and [hl]                                      ; $4bc9: $a6
    cp [hl]                                       ; $4bca: $be
    ld l, [hl]                                    ; $4bcb: $6e
    ld a, [hl]                                    ; $4bcc: $7e
    xor l                                         ; $4bcd: $ad
    db $fd                                        ; $4bce: $fd
    ld a, e                                       ; $4bcf: $7b
    ld a, a                                       ; $4bd0: $7f
    dec a                                         ; $4bd1: $3d
    ccf                                           ; $4bd2: $3f
    dec a                                         ; $4bd3: $3d
    ccf                                           ; $4bd4: $3f
    ld [bc], a                                    ; $4bd5: $02
    ld [bc], a                                    ; $4bd6: $02
    ld [bc], a                                    ; $4bd7: $02
    ld bc, $0206                                  ; $4bd8: $01 $06 $02
    add d                                         ; $4bdb: $82
    inc bc                                        ; $4bdc: $03
    ld bc, $0202                                  ; $4bdd: $01 $02 $02
    ld [$0400], sp                                ; $4be0: $08 $00 $04
    ld [bc], a                                    ; $4be3: $02
    ld [bc], a                                    ; $4be4: $02
    inc bc                                        ; $4be5: $03
    add h                                         ; $4be6: $84
    rst $30                                       ; $4be7: $f7
    db $fd                                        ; $4be8: $fd
    xor $fe                                       ; $4be9: $ee $fe
    ld [bc], a                                    ; $4beb: $02
    nop                                           ; $4bec: $00
    ld [bc], a                                    ; $4bed: $02
    ld b, b                                       ; $4bee: $40
    add h                                         ; $4bef: $84
    ld a, e                                       ; $4bf0: $7b
    ld a, a                                       ; $4bf1: $7f
    ld [hl], a                                    ; $4bf2: $77
    ld a, a                                       ; $4bf3: $7f
    ld [bc], a                                    ; $4bf4: $02
    ccf                                           ; $4bf5: $3f
    ld d, $00                                     ; $4bf6: $16 $00
    rst $38                                       ; $4bf8: $ff
    rlca                                          ; $4bf9: $07
    ld bc, $07f8                                  ; $4bfa: $01 $f8 $07
    pop af                                        ; $4bfd: $f1
    nop                                           ; $4bfe: $00
    xor $fa                                       ; $4bff: $ee $fa
    add [hl]                                      ; $4c01: $86
    nop                                           ; $4c02: $00
    ld b, $00                                     ; $4c03: $06 $00
    ld bc, $4000                                  ; $4c05: $01 $00 $40
    inc bc                                        ; $4c08: $03
    nop                                           ; $4c09: $00
    add c                                         ; $4c0a: $81
    ld [bc], a                                    ; $4c0b: $02
    dec b                                         ; $4c0c: $05
    nop                                           ; $4c0d: $00
    add e                                         ; $4c0e: $83
    add b                                         ; $4c0f: $80
    nop                                           ; $4c10: $00
    add b                                         ; $4c11: $80
    ld [bc], a                                    ; $4c12: $02
    nop                                           ; $4c13: $00
    add c                                         ; $4c14: $81
    inc b                                         ; $4c15: $04
    dec bc                                        ; $4c16: $0b
    nop                                           ; $4c17: $00
    rst $38                                       ; $4c18: $ff
    dec c                                         ; $4c19: $0d
    inc b                                         ; $4c1a: $04
    ld hl, sp+$07                                 ; $4c1b: $f8 $07
    pop af                                        ; $4c1d: $f1
    nop                                           ; $4c1e: $00
    db $ed                                        ; $4c1f: $ed
    ld a, [$ffee]                                 ; $4c20: $fa $ee $ff
    db $fd                                        ; $4c23: $fd
    db $fc                                        ; $4c24: $fc
    db $fd                                        ; $4c25: $fd
    db $fd                                        ; $4c26: $fd
    ld [bc], a                                    ; $4c27: $02
    rra                                           ; $4c28: $1f
    ld [bc], a                                    ; $4c29: $02
    ld [hl+], a                                   ; $4c2a: $22
    ld [bc], a                                    ; $4c2b: $02
    ld b, b                                       ; $4c2c: $40
    ld [bc], a                                    ; $4c2d: $02
    ld d, b                                       ; $4c2e: $50
    ld [bc], a                                    ; $4c2f: $02
    ldh [rSC], a                                  ; $4c30: $e0 $02
    pop de                                        ; $4c32: $d1
    ld [bc], a                                    ; $4c33: $02
    ld b, d                                       ; $4c34: $42
    ld [bc], a                                    ; $4c35: $02
    ldh [rSC], a                                  ; $4c36: $e0 $02
    ld [hl], b                                    ; $4c38: $70
    ld [bc], a                                    ; $4c39: $02
    ld l, d                                       ; $4c3a: $6a
    ld [bc], a                                    ; $4c3b: $02
    ccf                                           ; $4c3c: $3f
    adc b                                         ; $4c3d: $88
    jr z, jr_0e0_4c7f                             ; $4c3e: $28 $3f

    ld e, h                                       ; $4c40: $5c
    ld a, a                                       ; $4c41: $7f
    ld e, a                                       ; $4c42: $5f
    ld a, a                                       ; $4c43: $7f
    sbc a                                         ; $4c44: $9f
    rst $38                                       ; $4c45: $ff
    ld [bc], a                                    ; $4c46: $02
    ld a, a                                       ; $4c47: $7f
    ld [bc], a                                    ; $4c48: $02
    db $10                                        ; $4c49: $10
    ld [bc], a                                    ; $4c4a: $02
    inc c                                         ; $4c4b: $0c
    add [hl]                                      ; $4c4c: $86
    ld c, $0a                                     ; $4c4d: $0e $0a
    rrca                                          ; $4c4f: $0f
    add hl, bc                                    ; $4c50: $09
    rlca                                          ; $4c51: $07
    dec b                                         ; $4c52: $05
    ld [bc], a                                    ; $4c53: $02
    rlca                                          ; $4c54: $07
    adc d                                         ; $4c55: $8a
    dec d                                         ; $4c56: $15
    rla                                           ; $4c57: $17
    dec c                                         ; $4c58: $0d
    rrca                                          ; $4c59: $0f
    dec c                                         ; $4c5a: $0d
    rrca                                          ; $4c5b: $0f
    ld a, [de]                                    ; $4c5c: $1a
    ld e, $0a                                     ; $4c5d: $1e $0a
    ld e, $02                                     ; $4c5f: $1e $02
    inc e                                         ; $4c61: $1c
    add c                                         ; $4c62: $81
    ld [$1805], sp                                ; $4c63: $08 $05 $18
    add d                                         ; $4c66: $82
    db $ec                                        ; $4c67: $ec
    db $fc                                        ; $4c68: $fc
    ld [bc], a                                    ; $4c69: $02
    ldh [$84], a                                  ; $4c6a: $e0 $84
    pop af                                        ; $4c6c: $f1
    rst $38                                       ; $4c6d: $ff
    cp $ff                                        ; $4c6e: $fe $ff
    ld [bc], a                                    ; $4c70: $02
    ld a, a                                       ; $4c71: $7f
    ld a, [de]                                    ; $4c72: $1a
    nop                                           ; $4c73: $00
    inc b                                         ; $4c74: $04
    ld bc, $001a                                  ; $4c75: $01 $1a $00
    rst $38                                       ; $4c78: $ff
    rlca                                          ; $4c79: $07
    ld bc, $07f8                                  ; $4c7a: $01 $f8 $07
    pop af                                        ; $4c7d: $f1
    nop                                           ; $4c7e: $00

jr_0e0_4c7f:
    xor $fc                                       ; $4c7f: $ee $fc
    sub d                                         ; $4c81: $92
    nop                                           ; $4c82: $00
    ld [hl], h                                    ; $4c83: $74
    nop                                           ; $4c84: $00
    cp $00                                        ; $4c85: $fe $00
    cp [hl]                                       ; $4c87: $be
    nop                                           ; $4c88: $00
    ld a, [hl]                                    ; $4c89: $7e
    nop                                           ; $4c8a: $00
    cp e                                          ; $4c8b: $bb
    nop                                           ; $4c8c: $00
    rst $30                                       ; $4c8d: $f7
    nop                                           ; $4c8e: $00
    ld a, l                                       ; $4c8f: $7d
    nop                                           ; $4c90: $00
    ld a, $00                                     ; $4c91: $3e $00
    ld d, [hl]                                    ; $4c93: $56
    ld c, $00                                     ; $4c94: $0e $00
    rst $38                                       ; $4c96: $ff
    add hl, bc                                    ; $4c97: $09
    ld [bc], a                                    ; $4c98: $02
    ld a, [$fa05]                                 ; $4c99: $fa $05 $fa
    nop                                           ; $4c9c: $00
    ld a, [$fafa]                                 ; $4c9d: $fa $fa $fa
    cp $02                                        ; $4ca0: $fe $02
    ld e, $8a                                     ; $4ca2: $1e $8a
    ld [hl], c                                    ; $4ca4: $71
    ld a, a                                       ; $4ca5: $7f
    adc h                                         ; $4ca6: $8c
    rst $38                                       ; $4ca7: $ff
    sbc a                                         ; $4ca8: $9f
    rst $38                                       ; $4ca9: $ff
    db $e3                                        ; $4caa: $e3
    rst $38                                       ; $4cab: $ff
    call nz, Call_000_02ff                        ; $4cac: $c4 $ff $02
    ccf                                           ; $4caf: $3f
    inc d                                         ; $4cb0: $14
    nop                                           ; $4cb1: $00
    ld [bc], a                                    ; $4cb2: $02
    inc c                                         ; $4cb3: $0c
    adc b                                         ; $4cb4: $88
    ld a, [bc]                                    ; $4cb5: $0a
    ld c, $0d                                     ; $4cb6: $0e $0d
    rrca                                          ; $4cb8: $0f
    inc bc                                        ; $4cb9: $03
    rrca                                          ; $4cba: $0f
    ld bc, $020f                                  ; $4cbb: $01 $0f $02
    ld c, $12                                     ; $4cbe: $0e $12
    nop                                           ; $4cc0: $00
    rst $38                                       ; $4cc1: $ff
    inc de                                        ; $4cc2: $13
    rlca                                          ; $4cc3: $07
    ldh a, [rIF]                                  ; $4cc4: $f0 $0f
    ld a, [c]                                     ; $4cc6: $f2
    ld bc, $f0ee                                  ; $4cc7: $01 $ee $f0
    rst $28                                       ; $4cca: $ef
    ld hl, sp-$0d                                 ; $4ccb: $f8 $f3
    nop                                           ; $4ccd: $00
    push af                                       ; $4cce: $f5
    ld [$f3fe], sp                                ; $4ccf: $08 $fe $f3
    cp $f5                                        ; $4cd2: $fe $f5
    cp $00                                        ; $4cd4: $fe $00
    ld [bc], a                                    ; $4cd6: $02
    ld hl, $568e                                  ; $4cd7: $21 $8e $56
    ld [hl], a                                    ; $4cda: $77
    dec l                                         ; $4cdb: $2d
    ld a, [hl-]                                   ; $4cdc: $3a
    ld [hl], a                                    ; $4cdd: $77
    ld a, a                                       ; $4cde: $7f
    rra                                           ; $4cdf: $1f
    inc e                                         ; $4ce0: $1c
    ld a, [hl]                                    ; $4ce1: $7e
    ld l, c                                       ; $4ce2: $69
    rst $20                                       ; $4ce3: $e7
    sbc a                                         ; $4ce4: $9f
    sbc c                                         ; $4ce5: $99
    rst $38                                       ; $4ce6: $ff
    ld [bc], a                                    ; $4ce7: $02
    ld a, a                                       ; $4ce8: $7f
    add c                                         ; $4ce9: $81
    ld [bc], a                                    ; $4cea: $02

jr_0e0_4ceb:
    dec b                                         ; $4ceb: $05
    inc bc                                        ; $4cec: $03
    add h                                         ; $4ced: $84
    dec b                                         ; $4cee: $05
    ld b, $0b                                     ; $4cef: $06 $0b
    rrca                                          ; $4cf1: $0f
    ld [bc], a                                    ; $4cf2: $02
    ld c, $02                                     ; $4cf3: $0e $02
    inc c                                         ; $4cf5: $0c
    ld [bc], a                                    ; $4cf6: $02
    ret nc                                        ; $4cf7: $d0

    sbc d                                         ; $4cf8: $9a
    jr nc, jr_0e0_4ceb                            ; $4cf9: $30 $f0

    db $fc                                        ; $4cfb: $fc
    call z, $fb6f                                 ; $4cfc: $cc $6f $fb
    sub $bd                                       ; $4cff: $d6 $bd
    ld c, c                                       ; $4d01: $49
    rst $38                                       ; $4d02: $ff
    ld a, [hl]                                    ; $4d03: $7e
    cp $7d                                        ; $4d04: $fe $7d
    add e                                         ; $4d06: $83
    ld a, a                                       ; $4d07: $7f
    add b                                         ; $4d08: $80
    ei                                            ; $4d09: $fb
    inc a                                         ; $4d0a: $3c
    rst $10                                       ; $4d0b: $d7
    jr c, jr_0e0_4d31                             ; $4d0c: $38 $23

    db $fc                                        ; $4d0e: $fc
    ldh a, [rIE]                                  ; $4d0f: $f0 $ff
    pop af                                        ; $4d11: $f1
    rst $38                                       ; $4d12: $ff
    ld [bc], a                                    ; $4d13: $02
    ld a, a                                       ; $4d14: $7f
    ld [bc], a                                    ; $4d15: $02
    inc a                                         ; $4d16: $3c
    ld [bc], a                                    ; $4d17: $02
    add b                                         ; $4d18: $80
    ld [bc], a                                    ; $4d19: $02
    nop                                           ; $4d1a: $00
    ld [bc], a                                    ; $4d1b: $02
    ld a, a                                       ; $4d1c: $7f
    adc l                                         ; $4d1d: $8d
    sbc a                                         ; $4d1e: $9f
    ldh [rIE], a                                  ; $4d1f: $e0 $ff
    ld b, b                                       ; $4d21: $40
    ld c, a                                       ; $4d22: $4f
    ldh a, [$b7]                                  ; $4d23: $f0 $b7
    ld a, b                                       ; $4d25: $78
    ld e, a                                       ; $4d26: $5f
    ld hl, sp+$2d                                 ; $4d27: $f8 $2d
    cp $5f                                        ; $4d29: $fe $5f
    inc bc                                        ; $4d2b: $03
    rst $38                                       ; $4d2c: $ff
    add d                                         ; $4d2d: $82
    dec b                                         ; $4d2e: $05
    rlca                                          ; $4d2f: $07
    ld [bc], a                                    ; $4d30: $02

jr_0e0_4d31:
    inc bc                                        ; $4d31: $03
    inc b                                         ; $4d32: $04
    ld bc, $0002                                  ; $4d33: $01 $02 $00
    ld [bc], a                                    ; $4d36: $02
    add b                                         ; $4d37: $80
    sub d                                         ; $4d38: $92
    ld b, b                                       ; $4d39: $40
    ret nz                                        ; $4d3a: $c0

    xor h                                         ; $4d3b: $ac
    ld l, h                                       ; $4d3c: $6c
    ld [hl], d                                    ; $4d3d: $72
    cp $ad                                        ; $4d3e: $fe $ad
    di                                            ; $4d40: $f3
    ld [hl], e                                    ; $4d41: $73
    db $fd                                        ; $4d42: $fd
    db $dd                                        ; $4d43: $dd
    dec sp                                        ; $4d44: $3b
    di                                            ; $4d45: $f3
    db $dd                                        ; $4d46: $dd
    rst $28                                       ; $4d47: $ef
    db $fd                                        ; $4d48: $fd
    sbc d                                         ; $4d49: $9a
    sbc [hl]                                      ; $4d4a: $9e
    ld [bc], a                                    ; $4d4b: $02
    adc h                                         ; $4d4c: $8c
    add h                                         ; $4d4d: $84
    ld d, h                                       ; $4d4e: $54
    call c, $cc4c                                 ; $4d4f: $dc $4c $cc
    ld [bc], a                                    ; $4d52: $02
    ret nz                                        ; $4d53: $c0

    ld [bc], a                                    ; $4d54: $02
    add b                                         ; $4d55: $80
    ld [bc], a                                    ; $4d56: $02
    nop                                           ; $4d57: $00
    ld [bc], a                                    ; $4d58: $02
    ld h, b                                       ; $4d59: $60
    add [hl]                                      ; $4d5a: $86
    ld b, d                                       ; $4d5b: $42
    ld b, e                                       ; $4d5c: $43
    and l                                         ; $4d5d: $a5
    rst $20                                       ; $4d5e: $e7
    ld h, l                                       ; $4d5f: $65
    ld h, a                                       ; $4d60: $67
    inc b                                         ; $4d61: $04
    inc bc                                        ; $4d62: $03
    ld [bc], a                                    ; $4d63: $02
    ld bc, $0014                                  ; $4d64: $01 $14 $00
    ld [bc], a                                    ; $4d67: $02
    inc bc                                        ; $4d68: $03
    ld [$0400], sp                                ; $4d69: $08 $00 $04
    inc bc                                        ; $4d6c: $03
    ld a, [de]                                    ; $4d6d: $1a
    nop                                           ; $4d6e: $00
    ld [bc], a                                    ; $4d6f: $02
    ld bc, $0304                                  ; $4d70: $01 $04 $03
    stop                                          ; $4d73: $10 $00
    rst $38                                       ; $4d75: $ff
    dec c                                         ; $4d76: $0d
    inc b                                         ; $4d77: $04
    ld sp, hl                                     ; $4d78: $f9
    ld [$01f2], sp                                ; $4d79: $08 $f2 $01
    ld [$eaf9], a                                 ; $4d7c: $ea $f9 $ea
    nop                                           ; $4d7f: $00
    ld a, [$faf9]                                 ; $4d80: $fa $f9 $fa
    nop                                           ; $4d83: $00
    ld [bc], a                                    ; $4d84: $02
    rst $38                                       ; $4d85: $ff
    ld [bc], a                                    ; $4d86: $02
    ret nz                                        ; $4d87: $c0

    ld [bc], a                                    ; $4d88: $02
    cp a                                          ; $4d89: $bf
    ld [bc], a                                    ; $4d8a: $02
    xor d                                         ; $4d8b: $aa
    ld [bc], a                                    ; $4d8c: $02
    and b                                         ; $4d8d: $a0
    ld [bc], a                                    ; $4d8e: $02
    xor d                                         ; $4d8f: $aa
    ld [bc], a                                    ; $4d90: $02
    and b                                         ; $4d91: $a0
    inc b                                         ; $4d92: $04
    and d                                         ; $4d93: $a2
    ld [bc], a                                    ; $4d94: $02
    xor b                                         ; $4d95: $a8
    ld [bc], a                                    ; $4d96: $02
    and d                                         ; $4d97: $a2
    ld [bc], a                                    ; $4d98: $02
    xor b                                         ; $4d99: $a8
    ld [bc], a                                    ; $4d9a: $02
    xor d                                         ; $4d9b: $aa
    ld [bc], a                                    ; $4d9c: $02
    cp a                                          ; $4d9d: $bf
    ld [bc], a                                    ; $4d9e: $02
    ret nz                                        ; $4d9f: $c0

    ld [bc], a                                    ; $4da0: $02
    rst $38                                       ; $4da1: $ff
    ld [bc], a                                    ; $4da2: $02
    ld a, a                                       ; $4da3: $7f
    ld [bc], a                                    ; $4da4: $02
    inc bc                                        ; $4da5: $03
    ld [bc], a                                    ; $4da6: $02
    ld a, l                                       ; $4da7: $7d
    inc b                                         ; $4da8: $04
    ld d, l                                       ; $4da9: $55
    ld [bc], a                                    ; $4daa: $02
    dec d                                         ; $4dab: $15
    ld [bc], a                                    ; $4dac: $02
    ld b, l                                       ; $4dad: $45
    ld [bc], a                                    ; $4dae: $02
    ld d, l                                       ; $4daf: $55
    ld [bc], a                                    ; $4db0: $02
    dec d                                         ; $4db1: $15
    ld [bc], a                                    ; $4db2: $02
    ld b, l                                       ; $4db3: $45
    ld [bc], a                                    ; $4db4: $02
    ld d, l                                       ; $4db5: $55
    ld [bc], a                                    ; $4db6: $02
    dec d                                         ; $4db7: $15
    ld [bc], a                                    ; $4db8: $02
    ld d, l                                       ; $4db9: $55
    ld [bc], a                                    ; $4dba: $02
    ld a, l                                       ; $4dbb: $7d
    ld [bc], a                                    ; $4dbc: $02

jr_0e0_4dbd:
    inc bc                                        ; $4dbd: $03
    ld [bc], a                                    ; $4dbe: $02
    ld a, a                                       ; $4dbf: $7f
    ld [bc], a                                    ; $4dc0: $02
    add b                                         ; $4dc1: $80
    ld [bc], a                                    ; $4dc2: $02
    cp a                                          ; $4dc3: $bf
    ld [bc], a                                    ; $4dc4: $02
    xor d                                         ; $4dc5: $aa
    ld [bc], a                                    ; $4dc6: $02
    and l                                         ; $4dc7: $a5
    ld [bc], a                                    ; $4dc8: $02
    xor d                                         ; $4dc9: $aa
    ld [bc], a                                    ; $4dca: $02
    cp a                                          ; $4dcb: $bf
    ld [bc], a                                    ; $4dcc: $02
    add b                                         ; $4dcd: $80
    ld [bc], a                                    ; $4dce: $02
    rst $38                                       ; $4dcf: $ff
    stop                                          ; $4dd0: $10 $00
    ld [bc], a                                    ; $4dd2: $02
    ld bc, $7d02                                  ; $4dd3: $01 $02 $7d
    ld [bc], a                                    ; $4dd6: $02
    ld d, l                                       ; $4dd7: $55
    ld [bc], a                                    ; $4dd8: $02
    ld e, l                                       ; $4dd9: $5d
    ld [bc], a                                    ; $4dda: $02
    ld [hl], l                                    ; $4ddb: $75
    ld [bc], a                                    ; $4ddc: $02
    ld a, l                                       ; $4ddd: $7d
    ld [bc], a                                    ; $4dde: $02
    ld bc, $7f02                                  ; $4ddf: $01 $02 $7f
    stop                                          ; $4de2: $10 $00
    rst $38                                       ; $4de4: $ff
    dec c                                         ; $4de5: $0d
    inc b                                         ; $4de6: $04
    ld sp, hl                                     ; $4de7: $f9
    ld [$01f2], sp                                ; $4de8: $08 $f2 $01
    db $eb                                        ; $4deb: $eb
    ld a, [$ffeb]                                 ; $4dec: $fa $eb $ff
    ei                                            ; $4def: $fb
    ld a, [$fffb]                                 ; $4df0: $fa $fb $ff
    add d                                         ; $4df3: $82
    dec [hl]                                      ; $4df4: $35
    ld a, a                                       ; $4df5: $7f
    ld [bc], a                                    ; $4df6: $02
    add b                                         ; $4df7: $80
    sub h                                         ; $4df8: $94
    ld a, [bc]                                    ; $4df9: $0a
    xor d                                         ; $4dfa: $aa
    and b                                         ; $4dfb: $a0
    cp [hl]                                       ; $4dfc: $be
    ld a, [bc]                                    ; $4dfd: $0a
    xor e                                         ; $4dfe: $ab
    adc d                                         ; $4dff: $8a
    cp [hl]                                       ; $4e00: $be
    jr nz, jr_0e0_4dbd                            ; $4e01: $20 $ba

    ld a, [hl+]                                   ; $4e03: $2a
    cp e                                          ; $4e04: $bb
    add b                                         ; $4e05: $80
    xor [hl]                                      ; $4e06: $ae
    adc b                                         ; $4e07: $88
    cp d                                          ; $4e08: $ba
    nop                                           ; $4e09: $00
    xor a                                         ; $4e0a: $af
    nop                                           ; $4e0b: $00
    xor d                                         ; $4e0c: $aa
    ld [bc], a                                    ; $4e0d: $02
    add b                                         ; $4e0e: $80
    add d                                         ; $4e0f: $82
    inc d                                         ; $4e10: $14
    ld a, a                                       ; $4e11: $7f
    inc bc                                        ; $4e12: $03
    nop                                           ; $4e13: $00
    add e                                         ; $4e14: $83
    rst $38                                       ; $4e15: $ff
    inc b                                         ; $4e16: $04
    ld e, $03                                     ; $4e17: $1e $03
    ld bc, $1597                                  ; $4e19: $01 $97 $15
    db $10                                        ; $4e1c: $10
    dec d                                         ; $4e1d: $15
    nop                                           ; $4e1e: $00
    dec d                                         ; $4e1f: $15
    ld bc, $001d                                  ; $4e20: $01 $1d $00
    dec d                                         ; $4e23: $15
    nop                                           ; $4e24: $00
    dec d                                         ; $4e25: $15
    nop                                           ; $4e26: $00
    dec e                                         ; $4e27: $1d
    nop                                           ; $4e28: $00
    dec d                                         ; $4e29: $15
    nop                                           ; $4e2a: $00
    dec d                                         ; $4e2b: $15
    ld bc, $0015                                  ; $4e2c: $01 $15 $00
    ld bc, $1e08                                  ; $4e2f: $01 $08 $1e
    inc bc                                        ; $4e32: $03
    nop                                           ; $4e33: $00
    adc l                                         ; $4e34: $8d
    rra                                           ; $4e35: $1f
    nop                                           ; $4e36: $00
    add b                                         ; $4e37: $80
    nop                                           ; $4e38: $00
    xor d                                         ; $4e39: $aa
    nop                                           ; $4e3a: $00
    or h                                          ; $4e3b: $b4
    nop                                           ; $4e3c: $00
    xor d                                         ; $4e3d: $aa
    nop                                           ; $4e3e: $00
    add b                                         ; $4e3f: $80
    nop                                           ; $4e40: $00
    rst $38                                       ; $4e41: $ff
    dec d                                         ; $4e42: $15
    nop                                           ; $4e43: $00
    adc e                                         ; $4e44: $8b
    ld bc, $1500                                  ; $4e45: $01 $00 $15
    nop                                           ; $4e48: $00
    ld de, $0500                                  ; $4e49: $11 $00 $05
    nop                                           ; $4e4c: $00
    ld bc, $1f00                                  ; $4e4d: $01 $00 $1f
    inc d                                         ; $4e50: $14
    nop                                           ; $4e51: $00
    rst $38                                       ; $4e52: $ff
    dec bc                                        ; $4e53: $0b
    inc bc                                        ; $4e54: $03
    jp hl                                         ; $4e55: $e9


    nop                                           ; $4e56: $00
    db $fd                                        ; $4e57: $fd
    inc b                                         ; $4e58: $04
    ld a, [$fae9]                                 ; $4e59: $fa $e9 $fa
    pop af                                        ; $4e5c: $f1
    ld a, [$04f8]                                 ; $4e5d: $fa $f8 $04
    nop                                           ; $4e60: $00
    add h                                         ; $4e61: $84
    ld [bc], a                                    ; $4e62: $02
    rlca                                          ; $4e63: $07
    dec l                                         ; $4e64: $2d
    dec a                                         ; $4e65: $3d
    ld [bc], a                                    ; $4e66: $02
    ld b, b                                       ; $4e67: $40
    add d                                         ; $4e68: $82
    nop                                           ; $4e69: $00
    add b                                         ; $4e6a: $80
    ld [bc], a                                    ; $4e6b: $02
    nop                                           ; $4e6c: $00
    adc h                                         ; $4e6d: $8c
    sub b                                         ; $4e6e: $90
    sub c                                         ; $4e6f: $91
    inc de                                        ; $4e70: $13
    dec de                                        ; $4e71: $1b
    dec h                                         ; $4e72: $25
    ld [hl], l                                    ; $4e73: $75
    ld [bc], a                                    ; $4e74: $02
    ld a, [hl+]                                   ; $4e75: $2a
    ld bc, $0051                                  ; $4e76: $01 $51 $00
    ld [bc], a                                    ; $4e79: $02
    ld b, $00                                     ; $4e7a: $06 $00
    ld [bc], a                                    ; $4e7c: $02
    ld [$1402], sp                                ; $4e7d: $08 $02 $14
    ld [bc], a                                    ; $4e80: $02
    cp e                                          ; $4e81: $bb
    adc h                                         ; $4e82: $8c
    ld d, [hl]                                    ; $4e83: $56
    ld a, [hl]                                    ; $4e84: $7e
    inc l                                         ; $4e85: $2c
    inc a                                         ; $4e86: $3c
    inc l                                         ; $4e87: $2c
    cp h                                          ; $4e88: $bc
    and a                                         ; $4e89: $a7
    cp a                                          ; $4e8a: $bf
    xor a                                         ; $4e8b: $af
    cp a                                          ; $4e8c: $bf
    dec e                                         ; $4e8d: $1d
    cp a                                          ; $4e8e: $bf
    ld [bc], a                                    ; $4e8f: $02
    ld c, h                                       ; $4e90: $4c
    add [hl]                                      ; $4e91: $86
    sub b                                         ; $4e92: $90
    sub h                                         ; $4e93: $94
    ld [$0048], sp                                ; $4e94: $08 $48 $00
    sub b                                         ; $4e97: $90
    ld [$0200], sp                                ; $4e98: $08 $00 $02
    jr nz, jr_0e0_4e9f                            ; $4e9b: $20 $02

    ld e, h                                       ; $4e9d: $5c
    inc bc                                        ; $4e9e: $03

jr_0e0_4e9f:
    ld b, $8b                                     ; $4e9f: $06 $8b
    rlca                                          ; $4ea1: $07
    ld e, $1f                                     ; $4ea2: $1e $1f
    ld e, [hl]                                    ; $4ea4: $5e
    ld e, a                                       ; $4ea5: $5f
    ld a, [hl]                                    ; $4ea6: $7e
    ld a, a                                       ; $4ea7: $7f
    ld a, h                                       ; $4ea8: $7c
    ld a, [hl]                                    ; $4ea9: $7e
    jr nc, jr_0e0_4f28                            ; $4eaa: $30 $7c

    inc c                                         ; $4eac: $0c
    nop                                           ; $4ead: $00
    rst $38                                       ; $4eae: $ff
    rlca                                          ; $4eaf: $07
    ld bc, $00e9                                  ; $4eb0: $01 $e9 $00
    db $fd                                        ; $4eb3: $fd
    inc b                                         ; $4eb4: $04
    ei                                            ; $4eb5: $fb
    push af                                       ; $4eb6: $f5
    adc h                                         ; $4eb7: $8c
    nop                                           ; $4eb8: $00
    add b                                         ; $4eb9: $80
    nop                                           ; $4eba: $00
    ld b, h                                       ; $4ebb: $44
    nop                                           ; $4ebc: $00
    rra                                           ; $4ebd: $1f
    nop                                           ; $4ebe: $00
    ccf                                           ; $4ebf: $3f
    nop                                           ; $4ec0: $00
    inc a                                         ; $4ec1: $3c
    nop                                           ; $4ec2: $00
    inc b                                         ; $4ec3: $04
    inc d                                         ; $4ec4: $14
    nop                                           ; $4ec5: $00
    rst $38                                       ; $4ec6: $ff
    dec bc                                        ; $4ec7: $0b
    inc bc                                        ; $4ec8: $03
    jp hl                                         ; $4ec9: $e9


    nop                                           ; $4eca: $00
    db $fd                                        ; $4ecb: $fd
    inc b                                         ; $4ecc: $04
    ei                                            ; $4ecd: $fb
    jp hl                                         ; $4ece: $e9


    ei                                            ; $4ecf: $fb
    pop af                                        ; $4ed0: $f1
    ei                                            ; $4ed1: $fb
    ld hl, sp+$02                                 ; $4ed2: $f8 $02
    nop                                           ; $4ed4: $00
    add h                                         ; $4ed5: $84
    ld [bc], a                                    ; $4ed6: $02
    rlca                                          ; $4ed7: $07
    dec l                                         ; $4ed8: $2d
    dec a                                         ; $4ed9: $3d
    ld [bc], a                                    ; $4eda: $02
    ld b, b                                       ; $4edb: $40
    add d                                         ; $4edc: $82
    nop                                           ; $4edd: $00
    add b                                         ; $4ede: $80
    ld [bc], a                                    ; $4edf: $02
    nop                                           ; $4ee0: $00
    ld [bc], a                                    ; $4ee1: $02
    sub b                                         ; $4ee2: $90
    ld [bc], a                                    ; $4ee3: $02
    ld [de], a                                    ; $4ee4: $12
    adc b                                         ; $4ee5: $88
    dec h                                         ; $4ee6: $25
    ld [hl], l                                    ; $4ee7: $75
    ld [bc], a                                    ; $4ee8: $02
    ld a, [hl+]                                   ; $4ee9: $2a
    ld bc, $0051                                  ; $4eea: $01 $51 $00
    ld [bc], a                                    ; $4eed: $02
    ld [$0200], sp                                ; $4eee: $08 $00 $02
    ld b, $90                                     ; $4ef1: $06 $90
    cp a                                          ; $4ef3: $bf
    cp e                                          ; $4ef4: $bb
    ld d, a                                       ; $4ef5: $57
    ld [hl], a                                    ; $4ef6: $77
    rlca                                          ; $4ef7: $07
    dec b                                         ; $4ef8: $05
    rlca                                          ; $4ef9: $07
    ld b, h                                       ; $4efa: $44
    daa                                           ; $4efb: $27
    inc h                                         ; $4efc: $24
    daa                                           ; $4efd: $27
    ld h, [hl]                                    ; $4efe: $66
    ld c, a                                       ; $4eff: $4f
    ld l, e                                       ; $4f00: $6b
    ld c, [hl]                                    ; $4f01: $4e
    ld c, e                                       ; $4f02: $4b
    ld [bc], a                                    ; $4f03: $02
    sbc [hl]                                      ; $4f04: $9e
    add h                                         ; $4f05: $84
    nop                                           ; $4f06: $00
    ld b, b                                       ; $4f07: $40
    nop                                           ; $4f08: $00
    sub b                                         ; $4f09: $90
    ld [$0200], sp                                ; $4f0a: $08 $00 $02
    ld [de], a                                    ; $4f0d: $12
    sub b                                         ; $4f0e: $90
    dec a                                         ; $4f0f: $3d
    dec l                                         ; $4f10: $2d
    ld a, a                                       ; $4f11: $7f
    ld b, e                                       ; $4f12: $43
    ld l, [hl]                                    ; $4f13: $6e
    ld b, [hl]                                    ; $4f14: $46
    ld l, l                                       ; $4f15: $6d
    inc b                                         ; $4f16: $04
    ld a, [hl]                                    ; $4f17: $7e
    ld [bc], a                                    ; $4f18: $02
    ld a, h                                       ; $4f19: $7c
    inc e                                         ; $4f1a: $1c
    ld [hl], c                                    ; $4f1b: $71
    ld d, c                                       ; $4f1c: $51
    inc c                                         ; $4f1d: $0c
    ld a, $0e                                     ; $4f1e: $3e $0e
    nop                                           ; $4f20: $00
    rst $38                                       ; $4f21: $ff
    rlca                                          ; $4f22: $07
    ld bc, $00e9                                  ; $4f23: $01 $e9 $00
    db $fd                                        ; $4f26: $fd
    inc b                                         ; $4f27: $04

jr_0e0_4f28:
    db $fc                                        ; $4f28: $fc
    ld hl, sp-$7e                                 ; $4f29: $f8 $82
    nop                                           ; $4f2b: $00
    ld [bc], a                                    ; $4f2c: $02
    inc bc                                        ; $4f2d: $03
    nop                                           ; $4f2e: $00
    adc c                                         ; $4f2f: $89
    ld de, $1200                                  ; $4f30: $11 $00 $12
    nop                                           ; $4f33: $00
    ld bc, $0300                                  ; $4f34: $01 $00 $03
    nop                                           ; $4f37: $00
    ld c, $12                                     ; $4f38: $0e $12
    nop                                           ; $4f3a: $00
    rst $38                                       ; $4f3b: $ff
    dec bc                                        ; $4f3c: $0b
    inc bc                                        ; $4f3d: $03
    jp hl                                         ; $4f3e: $e9


    nop                                           ; $4f3f: $00
    db $fd                                        ; $4f40: $fd
    inc b                                         ; $4f41: $04
    ei                                            ; $4f42: $fb
    jp hl                                         ; $4f43: $e9


    ei                                            ; $4f44: $fb
    pop af                                        ; $4f45: $f1
    ei                                            ; $4f46: $fb
    ld hl, sp+$02                                 ; $4f47: $f8 $02
    nop                                           ; $4f49: $00
    add h                                         ; $4f4a: $84
    ld [bc], a                                    ; $4f4b: $02
    rlca                                          ; $4f4c: $07
    dec l                                         ; $4f4d: $2d
    dec a                                         ; $4f4e: $3d
    ld [bc], a                                    ; $4f4f: $02
    ld b, b                                       ; $4f50: $40
    add d                                         ; $4f51: $82
    nop                                           ; $4f52: $00
    add b                                         ; $4f53: $80
    ld [bc], a                                    ; $4f54: $02
    nop                                           ; $4f55: $00
    ld [bc], a                                    ; $4f56: $02
    sub b                                         ; $4f57: $90
    ld [bc], a                                    ; $4f58: $02
    ld [de], a                                    ; $4f59: $12
    adc b                                         ; $4f5a: $88
    dec h                                         ; $4f5b: $25

jr_0e0_4f5c:
    ld [hl], l                                    ; $4f5c: $75
    ld [bc], a                                    ; $4f5d: $02
    ld a, [hl+]                                   ; $4f5e: $2a
    ld bc, $0051                                  ; $4f5f: $01 $51 $00
    ld [bc], a                                    ; $4f62: $02
    ld [$0200], sp                                ; $4f63: $08 $00 $02
    rlca                                          ; $4f66: $07
    sub b                                         ; $4f67: $90
    cp a                                          ; $4f68: $bf
    cp d                                          ; $4f69: $ba
    ld d, l                                       ; $4f6a: $55
    halt                                          ; $4f6b: $76
    rlca                                          ; $4f6c: $07
    inc b                                         ; $4f6d: $04
    rlca                                          ; $4f6e: $07
    ld b, h                                       ; $4f6f: $44
    daa                                           ; $4f70: $27
    inc h                                         ; $4f71: $24
    daa                                           ; $4f72: $27
    ld h, [hl]                                    ; $4f73: $66
    ld c, a                                       ; $4f74: $4f
    ld l, e                                       ; $4f75: $6b
    ld c, [hl]                                    ; $4f76: $4e
    ld c, e                                       ; $4f77: $4b
    ld [bc], a                                    ; $4f78: $02
    sbc [hl]                                      ; $4f79: $9e
    add h                                         ; $4f7a: $84
    nop                                           ; $4f7b: $00
    ld b, b                                       ; $4f7c: $40
    nop                                           ; $4f7d: $00
    sub b                                         ; $4f7e: $90
    ld [$0200], sp                                ; $4f7f: $08 $00 $02
    ld [hl+], a                                   ; $4f82: $22
    sub b                                         ; $4f83: $90
    ld a, l                                       ; $4f84: $7d
    ld e, l                                       ; $4f85: $5d
    ld a, a                                       ; $4f86: $7f
    inc bc                                        ; $4f87: $03
    ld l, [hl]                                    ; $4f88: $6e
    ld b, $6d                                     ; $4f89: $06 $6d
    inc b                                         ; $4f8b: $04
    ld a, [hl]                                    ; $4f8c: $7e
    ld [bc], a                                    ; $4f8d: $02
    ld a, h                                       ; $4f8e: $7c
    inc e                                         ; $4f8f: $1c
    ld [hl], c                                    ; $4f90: $71
    ld d, c                                       ; $4f91: $51
    inc c                                         ; $4f92: $0c
    ld a, $0e                                     ; $4f93: $3e $0e
    nop                                           ; $4f95: $00
    rst $38                                       ; $4f96: $ff
    rlca                                          ; $4f97: $07
    ld bc, $00e9                                  ; $4f98: $01 $e9 $00
    db $fd                                        ; $4f9b: $fd
    inc b                                         ; $4f9c: $04
    db $fc                                        ; $4f9d: $fc
    ld hl, sp-$7e                                 ; $4f9e: $f8 $82
    nop                                           ; $4fa0: $00
    ld [bc], a                                    ; $4fa1: $02
    inc bc                                        ; $4fa2: $03
    nop                                           ; $4fa3: $00
    adc c                                         ; $4fa4: $89
    ld de, $1200                                  ; $4fa5: $11 $00 $12
    nop                                           ; $4fa8: $00
    ld bc, $0300                                  ; $4fa9: $01 $00 $03
    nop                                           ; $4fac: $00
    ld c, $12                                     ; $4fad: $0e $12
    nop                                           ; $4faf: $00
    rst $38                                       ; $4fb0: $ff
    dec bc                                        ; $4fb1: $0b
    inc bc                                        ; $4fb2: $03
    nop                                           ; $4fb3: $00
    rla                                           ; $4fb4: $17
    db $fd                                        ; $4fb5: $fd
    inc b                                         ; $4fb6: $04
    ei                                            ; $4fb7: $fb
    nop                                           ; $4fb8: $00
    ei                                            ; $4fb9: $fb
    ld [$0ffb], sp                                ; $4fba: $08 $fb $0f
    ld [bc], a                                    ; $4fbd: $02
    jr z, jr_0e0_4fc2                             ; $4fbe: $28 $02

    rla                                           ; $4fc0: $17
    add d                                         ; $4fc1: $82

jr_0e0_4fc2:
    ld h, e                                       ; $4fc2: $63
    ld h, d                                       ; $4fc3: $62
    ld [bc], a                                    ; $4fc4: $02
    add c                                         ; $4fc5: $81
    add h                                         ; $4fc6: $84
    ld b, h                                       ; $4fc7: $44
    ld b, b                                       ; $4fc8: $40
    xor b                                         ; $4fc9: $a8
    add b                                         ; $4fca: $80
    ld [bc], a                                    ; $4fcb: $02
    ld b, h                                       ; $4fcc: $44
    add h                                         ; $4fcd: $84
    add hl, sp                                    ; $4fce: $39
    ld a, c                                       ; $4fcf: $79
    ld b, $0f                                     ; $4fd0: $06 $0f
    stop                                          ; $4fd2: $10 $00
    adc b                                         ; $4fd4: $88
    ld a, [hl-]                                   ; $4fd5: $3a
    dec sp                                        ; $4fd6: $3b
    push de                                       ; $4fd7: $d5
    db $dd                                        ; $4fd8: $dd
    and b                                         ; $4fd9: $a0
    jr nz, jr_0e0_4f5c                            ; $4fda: $20 $80

    add h                                         ; $4fdc: $84
    inc bc                                        ; $4fdd: $03
    adc b                                         ; $4fde: $88
    adc e                                         ; $4fdf: $8b
    adc h                                         ; $4fe0: $8c
    add h                                         ; $4fe1: $84
    sbc h                                         ; $4fe2: $9c
    dec h                                         ; $4fe3: $25
    and l                                         ; $4fe4: $a5
    ld [de], a                                    ; $4fe5: $12
    ld d, d                                       ; $4fe6: $52
    ld hl, $0025                                  ; $4fe7: $21 $25 $00
    ld [de], a                                    ; $4fea: $12
    ld a, [bc]                                    ; $4feb: $0a
    nop                                           ; $4fec: $00
    add h                                         ; $4fed: $84
    ld b, b                                       ; $4fee: $40
    ld h, b                                       ; $4fef: $60
    inc [hl]                                      ; $4ff0: $34
    inc a                                         ; $4ff1: $3c
    ld [bc], a                                    ; $4ff2: $02
    ld [bc], a                                    ; $4ff3: $02
    add d                                         ; $4ff4: $82
    nop                                           ; $4ff5: $00
    ld bc, $0002                                  ; $4ff6: $01 $02 $00
    ld [bc], a                                    ; $4ff9: $02
    add hl, bc                                    ; $4ffa: $09
    ld [bc], a                                    ; $4ffb: $02
    ld c, b                                       ; $4ffc: $48
    adc b                                         ; $4ffd: $88
    inc h                                         ; $4ffe: $24
    ld l, $40                                     ; $4fff: $2e $40
    ld d, h                                       ; $5001: $54
    nop                                           ; $5002: $00
    ld a, [bc]                                    ; $5003: $0a
    nop                                           ; $5004: $00
    ld b, b                                       ; $5005: $40
    ld [$ff00], sp                                ; $5006: $08 $00 $ff
    rlca                                          ; $5009: $07
    ld bc, $1700                                  ; $500a: $01 $00 $17
    db $fd                                        ; $500d: $fd
    inc b                                         ; $500e: $04
    db $fc                                        ; $500f: $fc
    nop                                           ; $5010: $00
    ld [bc], a                                    ; $5011: $02
    ld [$1c02], sp                                ; $5012: $08 $02 $1c
    ld [bc], a                                    ; $5015: $02
    ld a, [hl]                                    ; $5016: $7e
    ld [bc], a                                    ; $5017: $02
    dec sp                                        ; $5018: $3b
    ld [bc], a                                    ; $5019: $02
    ld d, a                                       ; $501a: $57
    ld [bc], a                                    ; $501b: $02
    dec sp                                        ; $501c: $3b
    ld [bc], a                                    ; $501d: $02
    ld b, $12                                     ; $501e: $06 $12
    nop                                           ; $5020: $00
    rst $38                                       ; $5021: $ff
    dec bc                                        ; $5022: $0b
    inc bc                                        ; $5023: $03
    nop                                           ; $5024: $00
    rla                                           ; $5025: $17
    db $fd                                        ; $5026: $fd
    inc b                                         ; $5027: $04
    db $fc                                        ; $5028: $fc
    nop                                           ; $5029: $00
    db $fc                                        ; $502a: $fc
    ld [$0ffc], sp                                ; $502b: $08 $fc $0f
    ld [bc], a                                    ; $502e: $02
    inc a                                         ; $502f: $3c
    ld [bc], a                                    ; $5030: $02
    ld d, a                                       ; $5031: $57
    add d                                         ; $5032: $82
    ld l, e                                       ; $5033: $6b
    ld l, d                                       ; $5034: $6a
    ld [bc], a                                    ; $5035: $02
    and l                                         ; $5036: $a5
    ld [bc], a                                    ; $5037: $02
    adc e                                         ; $5038: $8b
    ld [bc], a                                    ; $5039: $02
    add a                                         ; $503a: $87
    ld [bc], a                                    ; $503b: $02
    ld l, d                                       ; $503c: $6a
    add d                                         ; $503d: $82
    rra                                           ; $503e: $1f
    ccf                                           ; $503f: $3f
    stop                                          ; $5040: $10 $00
    add h                                         ; $5042: $84
    ld a, [hl-]                                   ; $5043: $3a
    dec sp                                        ; $5044: $3b
    ld d, l                                       ; $5045: $55
    ld e, l                                       ; $5046: $5d
    ld [bc], a                                    ; $5047: $02
    and b                                         ; $5048: $a0
    add d                                         ; $5049: $82
    add b                                         ; $504a: $80
    add h                                         ; $504b: $84
    inc bc                                        ; $504c: $03
    adc b                                         ; $504d: $88
    adc e                                         ; $504e: $8b
    adc h                                         ; $504f: $8c
    add h                                         ; $5050: $84
    sbc h                                         ; $5051: $9c
    dec h                                         ; $5052: $25
    and l                                         ; $5053: $a5
    ld [de], a                                    ; $5054: $12
    ld d, d                                       ; $5055: $52
    ld hl, $0025                                  ; $5056: $21 $25 $00
    ld [de], a                                    ; $5059: $12
    ld a, [bc]                                    ; $505a: $0a
    nop                                           ; $505b: $00
    add h                                         ; $505c: $84
    ld b, b                                       ; $505d: $40
    ld h, b                                       ; $505e: $60
    inc [hl]                                      ; $505f: $34
    inc a                                         ; $5060: $3c
    ld [bc], a                                    ; $5061: $02
    ld [bc], a                                    ; $5062: $02
    add d                                         ; $5063: $82
    nop                                           ; $5064: $00
    ld bc, $0002                                  ; $5065: $01 $02 $00
    ld [bc], a                                    ; $5068: $02
    add hl, bc                                    ; $5069: $09
    ld [bc], a                                    ; $506a: $02
    ld c, b                                       ; $506b: $48
    adc b                                         ; $506c: $88
    inc h                                         ; $506d: $24
    ld l, $40                                     ; $506e: $2e $40
    ld d, h                                       ; $5070: $54
    nop                                           ; $5071: $00
    ld a, [bc]                                    ; $5072: $0a
    nop                                           ; $5073: $00
    ld b, b                                       ; $5074: $40
    ld a, [bc]                                    ; $5075: $0a
    nop                                           ; $5076: $00
    rst $38                                       ; $5077: $ff
    rlca                                          ; $5078: $07
    ld bc, $1700                                  ; $5079: $01 $00 $17
    db $fd                                        ; $507c: $fd
    inc b                                         ; $507d: $04
    db $fd                                        ; $507e: $fd
    nop                                           ; $507f: $00
    adc h                                         ; $5080: $8c
    nop                                           ; $5081: $00
    jr z, jr_0e0_5084                             ; $5082: $28 $00

jr_0e0_5084:
    inc d                                         ; $5084: $14
    nop                                           ; $5085: $00
    ld e, d                                       ; $5086: $5a
    nop                                           ; $5087: $00
    ld [hl], h                                    ; $5088: $74
    nop                                           ; $5089: $00
    ld a, b                                       ; $508a: $78
    nop                                           ; $508b: $00
    dec d                                         ; $508c: $15
    inc d                                         ; $508d: $14
    nop                                           ; $508e: $00
    rst $38                                       ; $508f: $ff
    inc de                                        ; $5090: $13
    rlca                                          ; $5091: $07
    push af                                       ; $5092: $f5
    inc c                                         ; $5093: $0c
    ld sp, hl                                     ; $5094: $f9
    db $10                                        ; $5095: $10
    ld sp, hl                                     ; $5096: $f9
    pop af                                        ; $5097: $f1
    rst $30                                       ; $5098: $f7
    ld sp, hl                                     ; $5099: $f9
    db $f4                                        ; $509a: $f4
    ld bc, $09f5                                  ; $509b: $01 $f5 $09
    inc b                                         ; $509e: $04
    ld a, [$0204]                                 ; $509f: $fa $04 $02
    inc b                                         ; $50a2: $04
    ld b, $02                                     ; $50a3: $06 $02
    inc bc                                        ; $50a5: $03
    add [hl]                                      ; $50a6: $86
    dec b                                         ; $50a7: $05
    ld b, $0b                                     ; $50a8: $06 $0b
    dec c                                         ; $50aa: $0d
    ld a, [bc]                                    ; $50ab: $0a
    dec c                                         ; $50ac: $0d
    ld [bc], a                                    ; $50ad: $02
    rrca                                          ; $50ae: $0f
    adc [hl]                                      ; $50af: $8e
    dec sp                                        ; $50b0: $3b
    ccf                                           ; $50b1: $3f
    ld d, [hl]                                    ; $50b2: $56
    ld a, l                                       ; $50b3: $7d
    xor e                                         ; $50b4: $ab
    call c, $9df7                                 ; $50b5: $dc $f7 $9d
    rst $30                                       ; $50b8: $f7
    adc e                                         ; $50b9: $8b
    ld c, l                                       ; $50ba: $4d
    ld a, [hl]                                    ; $50bb: $7e
    ccf                                           ; $50bc: $3f
    dec sp                                        ; $50bd: $3b
    ld [bc], a                                    ; $50be: $02
    inc c                                         ; $50bf: $0c
    ld b, $00                                     ; $50c0: $06 $00
    ld [bc], a                                    ; $50c2: $02
    scf                                           ; $50c3: $37
    sbc [hl]                                      ; $50c4: $9e
    db $db                                        ; $50c5: $db
    db $ec                                        ; $50c6: $ec
    ld d, a                                       ; $50c7: $57
    cp b                                          ; $50c8: $b8
    xor a                                         ; $50c9: $af
    ld [hl], c                                    ; $50ca: $71
    cp $e1                                        ; $50cb: $fe $e1
    cp a                                          ; $50cd: $bf
    ldh [$ef], a                                  ; $50ce: $e0 $ef
    jr nc, @-$0f                                  ; $50d0: $30 $ef

    sbc b                                         ; $50d2: $98
    ld e, b                                       ; $50d3: $58
    rst $28                                       ; $50d4: $ef
    rst $38                                       ; $50d5: $ff
    ld a, a                                       ; $50d6: $7f
    rst $38                                       ; $50d7: $ff
    ld a, a                                       ; $50d8: $7f
    rst $30                                       ; $50d9: $f7
    ld l, b                                       ; $50da: $68
    reti                                          ; $50db: $d9


    and $ce                                       ; $50dc: $e6 $ce
    db $fd                                        ; $50de: $fd
    ld h, a                                       ; $50df: $67
    ld a, [hl]                                    ; $50e0: $7e
    ccf                                           ; $50e1: $3f
    inc a                                         ; $50e2: $3c
    ld [bc], a                                    ; $50e3: $02
    ld b, $9e                                     ; $50e4: $06 $9e
    add hl, bc                                    ; $50e6: $09
    rrca                                          ; $50e7: $0f
    inc d                                         ; $50e8: $14
    dec de                                        ; $50e9: $1b
    rst $28                                       ; $50ea: $ef
    ld a, [c]                                     ; $50eb: $f2
    or a                                          ; $50ec: $b7
    ld a, [hl]                                    ; $50ed: $7e
    sbc $3f                                       ; $50ee: $de $3f
    ld e, a                                       ; $50f0: $5f
    cp [hl]                                       ; $50f1: $be
    ld e, h                                       ; $50f2: $5c
    cp a                                          ; $50f3: $bf
    sbc $3f                                       ; $50f4: $de $3f
    pop af                                        ; $50f6: $f1
    ccf                                           ; $50f7: $3f
    xor a                                         ; $50f8: $af
    ld [hl], e                                    ; $50f9: $73
    ld l, a                                       ; $50fa: $6f
    ldh a, [$60]                                  ; $50fb: $f0 $60
    rst $38                                       ; $50fd: $ff
    rst $28                                       ; $50fe: $ef
    rst $30                                       ; $50ff: $f7
    ld a, a                                       ; $5100: $7f
    rst $38                                       ; $5101: $ff
    cp $7e                                        ; $5102: $fe $7e
    ld [$8180], sp                                ; $5104: $08 $80 $81
    ret nz                                        ; $5107: $c0

    ld [bc], a                                    ; $5108: $02
    ld b, b                                       ; $5109: $40
    adc a                                         ; $510a: $8f
    ret nz                                        ; $510b: $c0

    and h                                         ; $510c: $a4
    db $e4                                        ; $510d: $e4
    ld a, [hl+]                                   ; $510e: $2a
    xor $f2                                       ; $510f: $ee $f2
    cp $ff                                        ; $5111: $fe $ff
    dec b                                         ; $5113: $05
    db $dd                                        ; $5114: $dd
    scf                                           ; $5115: $37
    add d                                         ; $5116: $82
    cp $ea                                        ; $5117: $fe $ea
    cp $02                                        ; $5119: $fe $02
    ld a, h                                       ; $511b: $7c

jr_0e0_511c:
    inc b                                         ; $511c: $04
    nop                                           ; $511d: $00
    add h                                         ; $511e: $84
    ld bc, $0100                                  ; $511f: $01 $00 $01
    nop                                           ; $5122: $00
    ld [bc], a                                    ; $5123: $02
    ld bc, $148a                                  ; $5124: $01 $8a $14
    dec de                                        ; $5127: $1b
    dec a                                         ; $5128: $3d
    inc sp                                        ; $5129: $33
    ld l, d                                       ; $512a: $6a
    ld e, [hl]                                    ; $512b: $5e
    inc h                                         ; $512c: $24
    inc a                                         ; $512d: $3c
    ld a, h                                       ; $512e: $7c
    ld d, h                                       ; $512f: $54
    ld [bc], a                                    ; $5130: $02
    add hl, hl                                    ; $5131: $29
    ld [bc], a                                    ; $5132: $02
    rrca                                          ; $5133: $0f
    adc d                                         ; $5134: $8a
    dec [hl]                                      ; $5135: $35
    ccf                                           ; $5136: $3f
    ret c                                         ; $5137: $d8

    rst $38                                       ; $5138: $ff
    and e                                         ; $5139: $a3
    rst $38                                       ; $513a: $ff
    adc h                                         ; $513b: $8c
    db $fc                                        ; $513c: $fc
    ld d, b                                       ; $513d: $50
    ld [hl], b                                    ; $513e: $70
    ld [bc], a                                    ; $513f: $02
    jr nz, @+$04                                  ; $5140: $20 $02

    and b                                         ; $5142: $a0
    ld b, $80                                     ; $5143: $06 $80
    ld [bc], a                                    ; $5145: $02
    nop                                           ; $5146: $00
    ld [bc], a                                    ; $5147: $02
    ld bc, $0702                                  ; $5148: $01 $02 $07
    adc b                                         ; $514b: $88
    ld a, [hl-]                                   ; $514c: $3a
    ccf                                           ; $514d: $3f
    db $eb                                        ; $514e: $eb
    rst $38                                       ; $514f: $ff
    ld c, h                                       ; $5150: $4c
    db $fc                                        ; $5151: $fc
    jr nc, @-$0e                                  ; $5152: $30 $f0

    ld [bc], a                                    ; $5154: $02
    ret nz                                        ; $5155: $c0

    stop                                          ; $5156: $10 $00
    ld [bc], a                                    ; $5158: $02
    inc bc                                        ; $5159: $03
    add h                                         ; $515a: $84
    dec c                                         ; $515b: $0d
    rrca                                          ; $515c: $0f
    inc bc                                        ; $515d: $03
    rrca                                          ; $515e: $0f
    ld [bc], a                                    ; $515f: $02
    inc c                                         ; $5160: $0c
    stop                                          ; $5161: $10 $00
    rst $38                                       ; $5163: $ff
    add hl, bc                                    ; $5164: $09
    ld [bc], a                                    ; $5165: $02
    ld sp, hl                                     ; $5166: $f9
    ld [$07f8], sp                                ; $5167: $08 $f8 $07
    ld hl, sp-$07                                 ; $516a: $f8 $f9
    ld hl, sp+$01                                 ; $516c: $f8 $01
    ret nz                                        ; $516e: $c0

    ld [$0c00], sp                                ; $516f: $08 $00 $0c
    nop                                           ; $5172: $00
    dec bc                                        ; $5173: $0b
    inc b                                         ; $5174: $04
    ld [de], a                                    ; $5175: $12
    ld [$0114], sp                                ; $5176: $08 $14 $01
    inc d                                         ; $5179: $14
    ld a, [bc]                                    ; $517a: $0a
    inc h                                         ; $517b: $24
    ld de, $0a24                                  ; $517c: $11 $24 $0a
    jr z, jr_0e0_5196                             ; $517f: $28 $15

    ld c, b                                       ; $5181: $48
    ld [hl+], a                                   ; $5182: $22
    ld c, b                                       ; $5183: $48
    dec d                                         ; $5184: $15
    adc b                                         ; $5185: $88
    ld [hl+], a                                   ; $5186: $22
    sub b                                         ; $5187: $90

jr_0e0_5188:
    ld b, l                                       ; $5188: $45
    sbc a                                         ; $5189: $9f
    jr nz, jr_0e0_511c                            ; $518a: $20 $90

    ld b, b                                       ; $518c: $40
    ld [hl], b                                    ; $518d: $70
    nop                                           ; $518e: $00
    stop                                          ; $518f: $10 $00
    jr nc, jr_0e0_5193                            ; $5191: $30 $00

jr_0e0_5193:
    ret nc                                        ; $5193: $d0

    nop                                           ; $5194: $00
    ld d, b                                       ; $5195: $50

jr_0e0_5196:
    and b                                         ; $5196: $a0
    ld c, b                                       ; $5197: $48
    db $10                                        ; $5198: $10
    ld c, b                                       ; $5199: $48
    and b                                         ; $519a: $a0
    ld c, b                                       ; $519b: $48
    db $10                                        ; $519c: $10
    ld b, h                                       ; $519d: $44
    xor b                                         ; $519e: $a8
    ld b, h                                       ; $519f: $44
    db $10                                        ; $51a0: $10
    ld b, h                                       ; $51a1: $44
    xor b                                         ; $51a2: $a8
    ld h, h                                       ; $51a3: $64
    db $10                                        ; $51a4: $10
    ld [hl+], a                                   ; $51a5: $22
    adc b                                         ; $51a6: $88
    ld [hl+], a                                   ; $51a7: $22
    ld d, h                                       ; $51a8: $54
    ld [c], a                                     ; $51a9: $e2
    ld [$1421], sp                                ; $51aa: $08 $21 $14
    ld e, $00                                     ; $51ad: $1e $00
    rst $38                                       ; $51af: $ff
    add hl, bc                                    ; $51b0: $09
    ld [bc], a                                    ; $51b1: $02
    ld hl, sp+$07                                 ; $51b2: $f8 $07
    ld a, [c]                                     ; $51b4: $f2
    ld bc, $fee7                                  ; $51b5: $01 $e7 $fe
    rst $30                                       ; $51b8: $f7
    cp $8d                                        ; $51b9: $fe $8d
    inc e                                         ; $51bb: $1c
    nop                                           ; $51bc: $00
    ld a, $00                                     ; $51bd: $3e $00
    jr c, jr_0e0_51c1                             ; $51bf: $38 $00

jr_0e0_51c1:
    add b                                         ; $51c1: $80
    nop                                           ; $51c2: $00
    dec a                                         ; $51c3: $3d
    nop                                           ; $51c4: $00
    ld a, $00                                     ; $51c5: $3e $00
    inc e                                         ; $51c7: $1c
    inc de                                        ; $51c8: $13
    nop                                           ; $51c9: $00
    add e                                         ; $51ca: $83
    jr nz, jr_0e0_51cd                            ; $51cb: $20 $00

jr_0e0_51cd:
    ld h, b                                       ; $51cd: $60
    dec e                                         ; $51ce: $1d
    nop                                           ; $51cf: $00
    rst $38                                       ; $51d0: $ff
    dec c                                         ; $51d1: $0d
    inc b                                         ; $51d2: $04
    ld hl, sp+$07                                 ; $51d3: $f8 $07
    ld a, [c]                                     ; $51d5: $f2
    ld bc, $fae2                                  ; $51d6: $01 $e2 $fa
    db $e4                                        ; $51d9: $e4
    rst $38                                       ; $51da: $ff
    ld a, [c]                                     ; $51db: $f2
    ld a, [$fdf2]                                 ; $51dc: $fa $f2 $fd
    ld [bc], a                                    ; $51df: $02
    inc a                                         ; $51e0: $3c
    adc [hl]                                      ; $51e1: $8e
    ld e, d                                       ; $51e2: $5a
    ld h, [hl]                                    ; $51e3: $66
    xor a                                         ; $51e4: $af
    db $d3                                        ; $51e5: $d3
    xor h                                         ; $51e6: $ac
    rst $18                                       ; $51e7: $df
    sub a                                         ; $51e8: $97
    ld sp, hl                                     ; $51e9: $f9
    ld a, d                                       ; $51ea: $7a
    ld h, [hl]                                    ; $51eb: $66
    jr nz, jr_0e0_522a                            ; $51ec: $20 $3c

    inc l                                         ; $51ee: $2c
    inc a                                         ; $51ef: $3c
    ld [bc], a                                    ; $51f0: $02
    scf                                           ; $51f1: $37
    ld [bc], a                                    ; $51f2: $02
    inc e                                         ; $51f3: $1c
    ld [bc], a                                    ; $51f4: $02
    inc c                                         ; $51f5: $0c
    ld [bc], a                                    ; $51f6: $02
    ld c, $88                                     ; $51f7: $0e $88
    dec de                                        ; $51f9: $1b
    rra                                           ; $51fa: $1f
    inc d                                         ; $51fb: $14
    rra                                           ; $51fc: $1f
    inc sp                                        ; $51fd: $33
    ccf                                           ; $51fe: $3f
    ld sp, $023f                                  ; $51ff: $31 $3f $02
    jr jr_0e0_5188                                ; $5202: $18 $84

    inc e                                         ; $5204: $1c
    inc b                                         ; $5205: $04
    ld [de], a                                    ; $5206: $12
    ld e, $02                                     ; $5207: $1e $02
    inc b                                         ; $5209: $04
    inc bc                                        ; $520a: $03
    ld [bc], a                                    ; $520b: $02
    add e                                         ; $520c: $83
    ld c, $12                                     ; $520d: $0e $12
    ld e, $02                                     ; $520f: $1e $02
    dec b                                         ; $5211: $05
    ld [bc], a                                    ; $5212: $02
    ld [bc], a                                    ; $5213: $02
    ld [bc], a                                    ; $5214: $02
    inc b                                         ; $5215: $04
    ld [bc], a                                    ; $5216: $02
    jr jr_0e0_521b                                ; $5217: $18 $02

    db $10                                        ; $5219: $10
    sub h                                         ; $521a: $94

jr_0e0_521b:
    ld [$1418], sp                                ; $521b: $08 $18 $14
    inc e                                         ; $521e: $1c
    ld c, h                                       ; $521f: $4c
    db $fc                                        ; $5220: $fc
    ld c, h                                       ; $5221: $4c
    db $fc                                        ; $5222: $fc
    jr nz, @+$3a                                  ; $5223: $20 $38

    jr nz, jr_0e0_525f                            ; $5225: $20 $38

    daa                                           ; $5227: $27
    ccf                                           ; $5228: $3f
    inc sp                                        ; $5229: $33

jr_0e0_522a:
    ccf                                           ; $522a: $3f
    ld [hl-], a                                   ; $522b: $32
    ccf                                           ; $522c: $3f
    ld [hl], l                                    ; $522d: $75
    ld a, l                                       ; $522e: $7d
    ld [bc], a                                    ; $522f: $02
    ld a, c                                       ; $5230: $79
    sub b                                         ; $5231: $90
    xor $ff                                       ; $5232: $ee $ff
    ret nz                                        ; $5234: $c0

    rst $38                                       ; $5235: $ff
    add b                                         ; $5236: $80
    rst $38                                       ; $5237: $ff
    add b                                         ; $5238: $80
    rst $38                                       ; $5239: $ff
    add b                                         ; $523a: $80
    rst $38                                       ; $523b: $ff

jr_0e0_523c:
    add b                                         ; $523c: $80
    rst $38                                       ; $523d: $ff
    add b                                         ; $523e: $80
    rst $38                                       ; $523f: $ff
    ld h, b                                       ; $5240: $60
    ld a, a                                       ; $5241: $7f
    ld [bc], a                                    ; $5242: $02
    rra                                           ; $5243: $1f
    inc b                                         ; $5244: $04
    nop                                           ; $5245: $00
    ld [bc], a                                    ; $5246: $02
    ld b, $02                                     ; $5247: $06 $02
    inc b                                         ; $5249: $04
    sub h                                         ; $524a: $94
    ld [bc], a                                    ; $524b: $02
    ld b, $02                                     ; $524c: $06 $02
    ld b, $02                                     ; $524e: $06 $02
    ld b, $03                                     ; $5250: $06 $03
    rlca                                          ; $5252: $07
    ld bc, $0107                                  ; $5253: $01 $07 $01
    rlca                                          ; $5256: $07
    ld bc, $0107                                  ; $5257: $01 $07 $01
    rlca                                          ; $525a: $07
    ld bc, $0107                                  ; $525b: $01 $07 $01
    rlca                                          ; $525e: $07

jr_0e0_525f:
    ld [bc], a                                    ; $525f: $02
    ld b, $02                                     ; $5260: $06 $02
    nop                                           ; $5262: $00
    rst $38                                       ; $5263: $ff
    add hl, bc                                    ; $5264: $09
    ld [bc], a                                    ; $5265: $02
    ld hl, sp+$07                                 ; $5266: $f8 $07
    ld a, [c]                                     ; $5268: $f2
    ld bc, $fee7                                  ; $5269: $01 $e7 $fe
    rst $30                                       ; $526c: $f7
    cp $8d                                        ; $526d: $fe $8d
    inc e                                         ; $526f: $1c
    nop                                           ; $5270: $00
    ld a, $00                                     ; $5271: $3e $00
    jr c, jr_0e0_5275                             ; $5273: $38 $00

jr_0e0_5275:
    add b                                         ; $5275: $80
    nop                                           ; $5276: $00
    dec a                                         ; $5277: $3d
    nop                                           ; $5278: $00
    ld a, $00                                     ; $5279: $3e $00
    inc e                                         ; $527b: $1c
    inc de                                        ; $527c: $13
    nop                                           ; $527d: $00
    add e                                         ; $527e: $83
    jr nc, jr_0e0_5281                            ; $527f: $30 $00

jr_0e0_5281:
    jr nz, jr_0e0_52a0                            ; $5281: $20 $1d

    nop                                           ; $5283: $00
    rst $38                                       ; $5284: $ff
    dec c                                         ; $5285: $0d
    inc b                                         ; $5286: $04
    ld hl, sp+$07                                 ; $5287: $f8 $07
    ld a, [c]                                     ; $5289: $f2
    ld bc, $fae2                                  ; $528a: $01 $e2 $fa
    db $e4                                        ; $528d: $e4
    rst $38                                       ; $528e: $ff
    ld a, [c]                                     ; $528f: $f2
    ld sp, hl                                     ; $5290: $f9
    ld a, [c]                                     ; $5291: $f2
    rst $38                                       ; $5292: $ff
    ld [bc], a                                    ; $5293: $02

jr_0e0_5294:
    inc a                                         ; $5294: $3c
    adc [hl]                                      ; $5295: $8e
    ld e, d                                       ; $5296: $5a
    ld h, [hl]                                    ; $5297: $66
    xor a                                         ; $5298: $af
    db $d3                                        ; $5299: $d3
    xor h                                         ; $529a: $ac
    rst $18                                       ; $529b: $df
    sub a                                         ; $529c: $97
    ld sp, hl                                     ; $529d: $f9
    ld a, d                                       ; $529e: $7a
    ld h, [hl]                                    ; $529f: $66

jr_0e0_52a0:
    jr nz, @+$3e                                  ; $52a0: $20 $3c

    inc l                                         ; $52a2: $2c
    inc a                                         ; $52a3: $3c
    ld [bc], a                                    ; $52a4: $02
    scf                                           ; $52a5: $37
    ld [bc], a                                    ; $52a6: $02
    inc e                                         ; $52a7: $1c
    ld [bc], a                                    ; $52a8: $02
    inc c                                         ; $52a9: $0c
    ld [bc], a                                    ; $52aa: $02
    ld c, $88                                     ; $52ab: $0e $88
    dec de                                        ; $52ad: $1b
    rra                                           ; $52ae: $1f
    inc d                                         ; $52af: $14
    rra                                           ; $52b0: $1f
    inc sp                                        ; $52b1: $33
    ccf                                           ; $52b2: $3f
    ld sp, $023f                                  ; $52b3: $31 $3f $02
    jr jr_0e0_523c                                ; $52b6: $18 $84

    inc e                                         ; $52b8: $1c
    inc b                                         ; $52b9: $04
    ld [de], a                                    ; $52ba: $12
    ld e, $02                                     ; $52bb: $1e $02
    inc b                                         ; $52bd: $04
    inc bc                                        ; $52be: $03
    ld [bc], a                                    ; $52bf: $02
    add e                                         ; $52c0: $83
    ld c, $12                                     ; $52c1: $0e $12
    ld e, $02                                     ; $52c3: $1e $02
    dec b                                         ; $52c5: $05
    ld [bc], a                                    ; $52c6: $02
    ld [bc], a                                    ; $52c7: $02
    ld [bc], a                                    ; $52c8: $02
    inc b                                         ; $52c9: $04
    ld [bc], a                                    ; $52ca: $02
    jr jr_0e0_52cf                                ; $52cb: $18 $02

    db $10                                        ; $52cd: $10
    sub d                                         ; $52ce: $92

jr_0e0_52cf:
    ld [$1418], sp                                ; $52cf: $08 $18 $14
    inc e                                         ; $52d2: $1c
    ld c, h                                       ; $52d3: $4c
    db $fc                                        ; $52d4: $fc
    call z, Call_000_10fc                         ; $52d5: $cc $fc $10
    inc e                                         ; $52d8: $1c
    db $10                                        ; $52d9: $10
    inc e                                         ; $52da: $1c
    add hl, de                                    ; $52db: $19
    rra                                           ; $52dc: $1f
    jr @+$21                                      ; $52dd: $18 $1f

    inc a                                         ; $52df: $3c
    ccf                                           ; $52e0: $3f
    ld [bc], a                                    ; $52e1: $02
    ld a, $02                                     ; $52e2: $3e $02
    ld a, [hl]                                    ; $52e4: $7e
    sub b                                         ; $52e5: $90
    ld [hl], c                                    ; $52e6: $71
    ld a, a                                       ; $52e7: $7f
    ld h, b                                       ; $52e8: $60
    ld a, a                                       ; $52e9: $7f
    ld b, b                                       ; $52ea: $40
    ld a, a                                       ; $52eb: $7f
    ld b, b                                       ; $52ec: $40
    ld a, a                                       ; $52ed: $7f
    add b                                         ; $52ee: $80
    rst $38                                       ; $52ef: $ff
    add b                                         ; $52f0: $80

jr_0e0_52f1:
    rst $38                                       ; $52f1: $ff
    add b                                         ; $52f2: $80
    rst $38                                       ; $52f3: $ff
    ld b, b                                       ; $52f4: $40
    ld a, a                                       ; $52f5: $7f
    ld [bc], a                                    ; $52f6: $02
    ccf                                           ; $52f7: $3f
    inc b                                         ; $52f8: $04
    nop                                           ; $52f9: $00
    ld [bc], a                                    ; $52fa: $02
    jr c, jr_0e0_52ff                             ; $52fb: $38 $02

    jr nc, jr_0e0_5281                            ; $52fd: $30 $82

jr_0e0_52ff:
    jr z, jr_0e0_5339                             ; $52ff: $28 $38

    ld [bc], a                                    ; $5301: $02
    jr jr_0e0_5294                                ; $5302: $18 $90

    inc h                                         ; $5304: $24
    inc a                                         ; $5305: $3c
    inc b                                         ; $5306: $04
    inc a                                         ; $5307: $3c
    inc b                                         ; $5308: $04
    inc a                                         ; $5309: $3c
    ld [de], a                                    ; $530a: $12
    ld a, $02                                     ; $530b: $3e $02
    ld a, $22                                     ; $530d: $3e $22
    ld a, $25                                     ; $530f: $3e $25
    ccf                                           ; $5311: $3f
    ld c, $3e                                     ; $5312: $0e $3e
    ld [bc], a                                    ; $5314: $02
    jr nc, jr_0e0_5319                            ; $5315: $30 $02

    nop                                           ; $5317: $00
    rst $38                                       ; $5318: $ff

jr_0e0_5319:
    add hl, bc                                    ; $5319: $09
    ld [bc], a                                    ; $531a: $02
    ld hl, sp+$07                                 ; $531b: $f8 $07
    ld a, [c]                                     ; $531d: $f2
    ld bc, $fee8                                  ; $531e: $01 $e8 $fe
    ld hl, sp-$02                                 ; $5321: $f8 $fe
    adc l                                         ; $5323: $8d
    inc e                                         ; $5324: $1c
    nop                                           ; $5325: $00
    ld a, $00                                     ; $5326: $3e $00
    jr c, jr_0e0_532a                             ; $5328: $38 $00

jr_0e0_532a:
    add b                                         ; $532a: $80
    nop                                           ; $532b: $00
    dec a                                         ; $532c: $3d
    nop                                           ; $532d: $00
    ld a, $00                                     ; $532e: $3e $00
    inc e                                         ; $5330: $1c
    inc de                                        ; $5331: $13
    nop                                           ; $5332: $00
    add e                                         ; $5333: $83
    jr nz, jr_0e0_5336                            ; $5334: $20 $00

jr_0e0_5336:
    ld h, b                                       ; $5336: $60
    dec e                                         ; $5337: $1d
    nop                                           ; $5338: $00

jr_0e0_5339:
    rst $38                                       ; $5339: $ff
    dec c                                         ; $533a: $0d
    inc b                                         ; $533b: $04
    ld hl, sp+$07                                 ; $533c: $f8 $07
    ld a, [c]                                     ; $533e: $f2
    ld bc, $fae3                                  ; $533f: $01 $e3 $fa
    push hl                                       ; $5342: $e5
    rst $38                                       ; $5343: $ff
    di                                            ; $5344: $f3
    ld sp, hl                                     ; $5345: $f9
    di                                            ; $5346: $f3
    db $fd                                        ; $5347: $fd
    ld [bc], a                                    ; $5348: $02
    inc a                                         ; $5349: $3c
    adc [hl]                                      ; $534a: $8e
    ld e, d                                       ; $534b: $5a
    ld h, [hl]                                    ; $534c: $66
    xor a                                         ; $534d: $af
    db $d3                                        ; $534e: $d3
    xor h                                         ; $534f: $ac
    rst $18                                       ; $5350: $df
    sub a                                         ; $5351: $97
    ld sp, hl                                     ; $5352: $f9
    ld a, d                                       ; $5353: $7a
    ld h, [hl]                                    ; $5354: $66
    jr nz, jr_0e0_5393                            ; $5355: $20 $3c

    inc l                                         ; $5357: $2c
    inc a                                         ; $5358: $3c
    ld [bc], a                                    ; $5359: $02
    scf                                           ; $535a: $37
    ld [bc], a                                    ; $535b: $02
    inc e                                         ; $535c: $1c
    ld [bc], a                                    ; $535d: $02
    inc c                                         ; $535e: $0c
    ld [bc], a                                    ; $535f: $02
    ld c, $88                                     ; $5360: $0e $88
    dec de                                        ; $5362: $1b
    rra                                           ; $5363: $1f
    inc d                                         ; $5364: $14
    rra                                           ; $5365: $1f
    inc sp                                        ; $5366: $33
    ccf                                           ; $5367: $3f
    ld sp, $023f                                  ; $5368: $31 $3f $02
    jr jr_0e0_52f1                                ; $536b: $18 $84

    inc e                                         ; $536d: $1c
    inc b                                         ; $536e: $04
    ld [de], a                                    ; $536f: $12
    ld e, $02                                     ; $5370: $1e $02
    inc b                                         ; $5372: $04
    inc bc                                        ; $5373: $03
    ld [bc], a                                    ; $5374: $02
    add e                                         ; $5375: $83
    ld c, $12                                     ; $5376: $0e $12
    ld e, $02                                     ; $5378: $1e $02
    dec b                                         ; $537a: $05
    ld [bc], a                                    ; $537b: $02
    ld [bc], a                                    ; $537c: $02
    ld [bc], a                                    ; $537d: $02
    inc b                                         ; $537e: $04
    ld [bc], a                                    ; $537f: $02
    jr jr_0e0_5384                                ; $5380: $18 $02

    db $10                                        ; $5382: $10
    sub h                                         ; $5383: $94

jr_0e0_5384:
    ld [$1418], sp                                ; $5384: $08 $18 $14
    inc e                                         ; $5387: $1c
    ld c, h                                       ; $5388: $4c
    db $fc                                        ; $5389: $fc
    ld c, h                                       ; $538a: $4c
    db $fc                                        ; $538b: $fc
    db $10                                        ; $538c: $10
    inc e                                         ; $538d: $1c
    db $10                                        ; $538e: $10
    inc e                                         ; $538f: $1c
    inc de                                        ; $5390: $13
    rra                                           ; $5391: $1f
    add hl, de                                    ; $5392: $19

jr_0e0_5393:
    rra                                           ; $5393: $1f
    add hl, sp                                    ; $5394: $39
    ccf                                           ; $5395: $3f
    ld a, [hl-]                                   ; $5396: $3a
    ld a, $02                                     ; $5397: $3e $02
    ld a, h                                       ; $5399: $7c
    adc [hl]                                      ; $539a: $8e
    ld [hl], a                                    ; $539b: $77
    ld a, a                                       ; $539c: $7f
    ld h, b                                       ; $539d: $60
    ld a, a                                       ; $539e: $7f
    ld b, b                                       ; $539f: $40
    ld a, a                                       ; $53a0: $7f
    ld b, b                                       ; $53a1: $40
    ld a, a                                       ; $53a2: $7f

jr_0e0_53a3:
    add b                                         ; $53a3: $80
    rst $38                                       ; $53a4: $ff
    add b                                         ; $53a5: $80
    rst $38                                       ; $53a6: $ff
    ld h, b                                       ; $53a7: $60
    ld a, a                                       ; $53a8: $7f
    ld [bc], a                                    ; $53a9: $02
    rra                                           ; $53aa: $1f
    ld b, $00                                     ; $53ab: $06 $00
    ld [bc], a                                    ; $53ad: $02
    ld c, $02                                     ; $53ae: $0e $02
    inc c                                         ; $53b0: $0c
    sub h                                         ; $53b1: $94
    ld [bc], a                                    ; $53b2: $02
    ld c, $0a                                     ; $53b3: $0e $0a
    ld c, $0a                                     ; $53b5: $0e $0a
    ld c, $01                                     ; $53b7: $0e $01
    rrca                                          ; $53b9: $0f
    ld bc, $010f                                  ; $53ba: $01 $0f $01
    rrca                                          ; $53bd: $0f
    ld bc, $050f                                  ; $53be: $01 $0f $05
    rrca                                          ; $53c1: $0f
    rlca                                          ; $53c2: $07
    rrca                                          ; $53c3: $0f
    ld b, $0e                                     ; $53c4: $06 $0e
    ld [bc], a                                    ; $53c6: $02
    ld [$0002], sp                                ; $53c7: $08 $02 $00
    rst $38                                       ; $53ca: $ff
    add hl, bc                                    ; $53cb: $09
    ld [bc], a                                    ; $53cc: $02
    ld hl, sp+$07                                 ; $53cd: $f8 $07
    ld a, [c]                                     ; $53cf: $f2
    ld bc, $fee7                                  ; $53d0: $01 $e7 $fe
    rst $30                                       ; $53d3: $f7
    cp $8d                                        ; $53d4: $fe $8d
    inc e                                         ; $53d6: $1c
    nop                                           ; $53d7: $00
    ld a, $00                                     ; $53d8: $3e $00
    jr c, jr_0e0_53dc                             ; $53da: $38 $00

jr_0e0_53dc:
    add b                                         ; $53dc: $80
    nop                                           ; $53dd: $00
    dec a                                         ; $53de: $3d
    nop                                           ; $53df: $00
    ld a, $00                                     ; $53e0: $3e $00
    inc e                                         ; $53e2: $1c
    inc de                                        ; $53e3: $13
    nop                                           ; $53e4: $00
    add e                                         ; $53e5: $83
    ld b, b                                       ; $53e6: $40
    nop                                           ; $53e7: $00
    ret nz                                        ; $53e8: $c0

    dec e                                         ; $53e9: $1d
    nop                                           ; $53ea: $00
    rst $38                                       ; $53eb: $ff
    dec c                                         ; $53ec: $0d
    inc b                                         ; $53ed: $04
    ld hl, sp+$07                                 ; $53ee: $f8 $07
    ld a, [c]                                     ; $53f0: $f2
    ld bc, $fae2                                  ; $53f1: $01 $e2 $fa
    db $e4                                        ; $53f4: $e4
    rst $38                                       ; $53f5: $ff
    ld a, [c]                                     ; $53f6: $f2
    ld sp, hl                                     ; $53f7: $f9
    ld a, [c]                                     ; $53f8: $f2
    rst $38                                       ; $53f9: $ff
    ld [bc], a                                    ; $53fa: $02
    inc a                                         ; $53fb: $3c

jr_0e0_53fc:
    adc [hl]                                      ; $53fc: $8e
    ld e, d                                       ; $53fd: $5a
    ld h, [hl]                                    ; $53fe: $66
    xor a                                         ; $53ff: $af
    db $d3                                        ; $5400: $d3
    xor h                                         ; $5401: $ac
    rst $18                                       ; $5402: $df
    sub a                                         ; $5403: $97
    ld sp, hl                                     ; $5404: $f9
    ld a, d                                       ; $5405: $7a
    ld h, [hl]                                    ; $5406: $66
    jr nz, jr_0e0_5445                            ; $5407: $20 $3c

    inc l                                         ; $5409: $2c
    inc a                                         ; $540a: $3c
    ld [bc], a                                    ; $540b: $02
    scf                                           ; $540c: $37
    ld [bc], a                                    ; $540d: $02
    inc e                                         ; $540e: $1c
    ld [bc], a                                    ; $540f: $02
    inc c                                         ; $5410: $0c
    ld [bc], a                                    ; $5411: $02
    ld c, $88                                     ; $5412: $0e $88
    dec de                                        ; $5414: $1b
    rra                                           ; $5415: $1f
    inc d                                         ; $5416: $14
    rra                                           ; $5417: $1f
    inc sp                                        ; $5418: $33
    ccf                                           ; $5419: $3f
    ld hl, $023f                                  ; $541a: $21 $3f $02
    jr jr_0e0_53a3                                ; $541d: $18 $84

    inc e                                         ; $541f: $1c
    inc b                                         ; $5420: $04
    ld [de], a                                    ; $5421: $12
    ld e, $02                                     ; $5422: $1e $02
    inc b                                         ; $5424: $04
    inc bc                                        ; $5425: $03
    ld [bc], a                                    ; $5426: $02
    add e                                         ; $5427: $83
    ld c, $12                                     ; $5428: $0e $12
    ld e, $02                                     ; $542a: $1e $02
    dec b                                         ; $542c: $05
    ld [bc], a                                    ; $542d: $02
    ld [bc], a                                    ; $542e: $02
    ld [bc], a                                    ; $542f: $02
    inc b                                         ; $5430: $04
    ld [bc], a                                    ; $5431: $02
    jr jr_0e0_5436                                ; $5432: $18 $02

    db $10                                        ; $5434: $10
    sub d                                         ; $5435: $92

jr_0e0_5436:
    ld [$1418], sp                                ; $5436: $08 $18 $14
    inc e                                         ; $5439: $1c
    ld c, h                                       ; $543a: $4c
    db $fc                                        ; $543b: $fc
    call z, Call_000_10fc                         ; $543c: $cc $fc $10
    inc e                                         ; $543f: $1c
    db $10                                        ; $5440: $10
    inc e                                         ; $5441: $1c
    inc de                                        ; $5442: $13
    rra                                           ; $5443: $1f
    inc de                                        ; $5444: $13

jr_0e0_5445:
    rra                                           ; $5445: $1f
    ld de, $021f                                  ; $5446: $11 $1f $02
    dec e                                         ; $5449: $1d
    ld [bc], a                                    ; $544a: $02
    add hl, sp                                    ; $544b: $39
    sub b                                         ; $544c: $90
    ld a, [hl]                                    ; $544d: $7e
    ld a, a                                       ; $544e: $7f
    ld [hl], d                                    ; $544f: $72
    ld a, a                                       ; $5450: $7f
    ld h, b                                       ; $5451: $60
    ld a, a                                       ; $5452: $7f
    ld h, c                                       ; $5453: $61
    ld a, a                                       ; $5454: $7f
    ld b, b                                       ; $5455: $40
    ld a, a                                       ; $5456: $7f

jr_0e0_5457:
    ret nz                                        ; $5457: $c0

    rst $38                                       ; $5458: $ff
    add b                                         ; $5459: $80
    rst $38                                       ; $545a: $ff
    ld [hl], b                                    ; $545b: $70
    ld a, a                                       ; $545c: $7f
    ld [bc], a                                    ; $545d: $02
    rrca                                          ; $545e: $0f
    inc b                                         ; $545f: $04
    nop                                           ; $5460: $00
    ld [bc], a                                    ; $5461: $02
    inc a                                         ; $5462: $3c
    ld [bc], a                                    ; $5463: $02
    jr c, jr_0e0_53fc                             ; $5464: $38 $96

    ld [$0838], sp                                ; $5466: $08 $38 $08
    jr c, jr_0e0_546f                             ; $5469: $38 $04

    inc a                                         ; $546b: $3c
    inc b                                         ; $546c: $04
    inc a                                         ; $546d: $3c
    inc b                                         ; $546e: $04

jr_0e0_546f:
    inc a                                         ; $546f: $3c
    inc b                                         ; $5470: $04
    inc a                                         ; $5471: $3c
    ld [bc], a                                    ; $5472: $02
    ld a, $02                                     ; $5473: $3e $02
    ld a, $07                                     ; $5475: $3e $07
    ccf                                           ; $5477: $3f
    dec bc                                        ; $5478: $0b
    ccf                                           ; $5479: $3f
    rra                                           ; $547a: $1f
    ccf                                           ; $547b: $3f
    ld [bc], a                                    ; $547c: $02
    inc a                                         ; $547d: $3c
    rst $38                                       ; $547e: $ff
    add hl, bc                                    ; $547f: $09
    ld [bc], a                                    ; $5480: $02
    ld hl, sp+$07                                 ; $5481: $f8 $07
    ld a, [c]                                     ; $5483: $f2
    ld bc, $fee8                                  ; $5484: $01 $e8 $fe
    ld hl, sp-$02                                 ; $5487: $f8 $fe
    adc l                                         ; $5489: $8d
    inc e                                         ; $548a: $1c
    nop                                           ; $548b: $00
    ld a, $00                                     ; $548c: $3e $00
    jr c, jr_0e0_5490                             ; $548e: $38 $00

jr_0e0_5490:
    add b                                         ; $5490: $80
    nop                                           ; $5491: $00
    dec a                                         ; $5492: $3d
    nop                                           ; $5493: $00
    ld a, $00                                     ; $5494: $3e $00
    inc e                                         ; $5496: $1c
    inc de                                        ; $5497: $13
    nop                                           ; $5498: $00
    add e                                         ; $5499: $83
    jr nz, jr_0e0_549c                            ; $549a: $20 $00

jr_0e0_549c:
    ld h, b                                       ; $549c: $60
    dec e                                         ; $549d: $1d
    nop                                           ; $549e: $00
    rst $38                                       ; $549f: $ff
    dec c                                         ; $54a0: $0d
    inc b                                         ; $54a1: $04
    ld hl, sp+$07                                 ; $54a2: $f8 $07
    ld a, [c]                                     ; $54a4: $f2
    ld bc, $fae3                                  ; $54a5: $01 $e3 $fa
    push hl                                       ; $54a8: $e5
    rst $38                                       ; $54a9: $ff
    di                                            ; $54aa: $f3
    ld sp, hl                                     ; $54ab: $f9
    di                                            ; $54ac: $f3
    db $fd                                        ; $54ad: $fd
    ld [bc], a                                    ; $54ae: $02
    inc a                                         ; $54af: $3c
    adc [hl]                                      ; $54b0: $8e
    ld e, d                                       ; $54b1: $5a
    ld h, [hl]                                    ; $54b2: $66
    xor a                                         ; $54b3: $af
    db $d3                                        ; $54b4: $d3
    xor h                                         ; $54b5: $ac
    rst $18                                       ; $54b6: $df
    sub a                                         ; $54b7: $97
    ld sp, hl                                     ; $54b8: $f9
    ld a, d                                       ; $54b9: $7a
    ld h, [hl]                                    ; $54ba: $66
    jr nz, jr_0e0_54f9                            ; $54bb: $20 $3c

    inc l                                         ; $54bd: $2c
    inc a                                         ; $54be: $3c
    ld [bc], a                                    ; $54bf: $02
    scf                                           ; $54c0: $37
    ld [bc], a                                    ; $54c1: $02
    inc e                                         ; $54c2: $1c
    ld [bc], a                                    ; $54c3: $02
    inc c                                         ; $54c4: $0c
    ld [bc], a                                    ; $54c5: $02
    ld c, $88                                     ; $54c6: $0e $88
    dec de                                        ; $54c8: $1b
    rra                                           ; $54c9: $1f
    inc d                                         ; $54ca: $14
    rra                                           ; $54cb: $1f
    inc sp                                        ; $54cc: $33
    ccf                                           ; $54cd: $3f
    ld sp, $023f                                  ; $54ce: $31 $3f $02
    jr jr_0e0_5457                                ; $54d1: $18 $84

    inc e                                         ; $54d3: $1c
    inc b                                         ; $54d4: $04
    ld [de], a                                    ; $54d5: $12
    ld e, $02                                     ; $54d6: $1e $02
    inc b                                         ; $54d8: $04
    inc bc                                        ; $54d9: $03
    ld [bc], a                                    ; $54da: $02
    add e                                         ; $54db: $83
    ld c, $12                                     ; $54dc: $0e $12
    ld e, $02                                     ; $54de: $1e $02
    dec b                                         ; $54e0: $05
    ld [bc], a                                    ; $54e1: $02
    ld [bc], a                                    ; $54e2: $02
    ld [bc], a                                    ; $54e3: $02
    inc b                                         ; $54e4: $04
    ld [bc], a                                    ; $54e5: $02
    jr jr_0e0_54ea                                ; $54e6: $18 $02

    db $10                                        ; $54e8: $10
    sub h                                         ; $54e9: $94

jr_0e0_54ea:
    ld [$1418], sp                                ; $54ea: $08 $18 $14
    inc e                                         ; $54ed: $1c
    ld c, h                                       ; $54ee: $4c
    db $fc                                        ; $54ef: $fc
    ld c, h                                       ; $54f0: $4c
    db $fc                                        ; $54f1: $fc
    db $10                                        ; $54f2: $10
    inc e                                         ; $54f3: $1c
    db $10                                        ; $54f4: $10
    inc e                                         ; $54f5: $1c
    inc de                                        ; $54f6: $13
    rra                                           ; $54f7: $1f
    add hl, de                                    ; $54f8: $19

jr_0e0_54f9:
    rra                                           ; $54f9: $1f
    add hl, sp                                    ; $54fa: $39
    ccf                                           ; $54fb: $3f
    ld a, [hl-]                                   ; $54fc: $3a
    ld a, $02                                     ; $54fd: $3e $02
    ld a, h                                       ; $54ff: $7c
    ld [bc], a                                    ; $5500: $02
    ld a, a                                       ; $5501: $7f
    adc h                                         ; $5502: $8c
    ld h, b                                       ; $5503: $60
    ld a, a                                       ; $5504: $7f
    ld b, b                                       ; $5505: $40
    ld a, a                                       ; $5506: $7f
    ld b, b                                       ; $5507: $40
    ld a, a                                       ; $5508: $7f
    add b                                         ; $5509: $80
    rst $38                                       ; $550a: $ff
    add b                                         ; $550b: $80
    rst $38                                       ; $550c: $ff
    ld h, b                                       ; $550d: $60
    ld a, a                                       ; $550e: $7f
    ld [bc], a                                    ; $550f: $02
    rra                                           ; $5510: $1f
    ld b, $00                                     ; $5511: $06 $00
    ld [bc], a                                    ; $5513: $02
    ld c, $02                                     ; $5514: $0e $02
    inc c                                         ; $5516: $0c
    sub h                                         ; $5517: $94
    ld [bc], a                                    ; $5518: $02
    ld c, $0a                                     ; $5519: $0e $0a
    ld c, $0a                                     ; $551b: $0e $0a
    ld c, $03                                     ; $551d: $0e $03
    rrca                                          ; $551f: $0f
    ld bc, $010f                                  ; $5520: $01 $0f $01
    rrca                                          ; $5523: $0f
    ld bc, $010f                                  ; $5524: $01 $0f $01
    rrca                                          ; $5527: $0f
    ld bc, $060f                                  ; $5528: $01 $0f $06
    ld c, $02                                     ; $552b: $0e $02
    inc c                                         ; $552d: $0c
    ld [bc], a                                    ; $552e: $02
    nop                                           ; $552f: $00
    rst $38                                       ; $5530: $ff
    dec c                                         ; $5531: $0d

    db $04, $fb, $05, $f4, $fd

    db $e3                                        ; $5537: $e3
    ld a, [$ffe4]                                 ; $5538: $fa $e4 $ff
    di                                            ; $553b: $f3
    ld a, [$fff3]                                 ; $553c: $fa $f3 $ff
    ld [bc], a                                    ; $553f: $02
    rlca                                          ; $5540: $07
    sub d                                         ; $5541: $92
    rrca                                          ; $5542: $0f
    ld [$101f], sp                                ; $5543: $08 $1f $10
    rra                                           ; $5546: $1f
    db $10                                        ; $5547: $10
    rra                                           ; $5548: $1f
    db $10                                        ; $5549: $10
    ccf                                           ; $554a: $3f
    jr z, jr_0e0_558c                             ; $554b: $28 $3f

    daa                                           ; $554d: $27
    rra                                           ; $554e: $1f
    dec d                                         ; $554f: $15
    cpl                                           ; $5550: $2f
    jr c, jr_0e0_5582                             ; $5551: $38 $2f

    dec a                                         ; $5553: $3d
    ld [bc], a                                    ; $5554: $02
    rra                                           ; $5555: $1f
    add h                                         ; $5556: $84
    jr nc, @+$41                                  ; $5557: $30 $3f

    jr c, jr_0e0_559a                             ; $5559: $38 $3f

    ld [bc], a                                    ; $555b: $02
    ld a, a                                       ; $555c: $7f
    inc b                                         ; $555d: $04
    rst $38                                       ; $555e: $ff
    ld [bc], a                                    ; $555f: $02
    db $10                                        ; $5560: $10
    adc a                                         ; $5561: $8f
    jr jr_0e0_556c                                ; $5562: $18 $08

    jr jr_0e0_556e                                ; $5564: $18 $08

    jr jr_0e0_5570                                ; $5566: $18 $08

    inc e                                         ; $5568: $1c
    inc d                                         ; $5569: $14
    inc e                                         ; $556a: $1c
    inc b                                         ; $556b: $04

jr_0e0_556c:
    jr jr_0e0_5576                                ; $556c: $18 $08

jr_0e0_556e:
    inc d                                         ; $556e: $14
    inc e                                         ; $556f: $1c

jr_0e0_5570:
    inc d                                         ; $5570: $14
    inc bc                                        ; $5571: $03
    inc e                                         ; $5572: $1c
    add [hl]                                      ; $5573: $86
    inc c                                         ; $5574: $0c
    inc e                                         ; $5575: $1c

jr_0e0_5576:
    inc d                                         ; $5576: $14
    inc e                                         ; $5577: $1c
    ld a, [de]                                    ; $5578: $1a
    ld e, $04                                     ; $5579: $1e $04
    rra                                           ; $557b: $1f
    add l                                         ; $557c: $85
    db $fd                                        ; $557d: $fd
    rst $38                                       ; $557e: $ff
    ret c                                         ; $557f: $d8

    ld hl, sp+$6f                                 ; $5580: $f8 $6f

jr_0e0_5582:
    ld [bc], a                                    ; $5582: $02
    ld a, a                                       ; $5583: $7f
    add a                                         ; $5584: $87
    ld a, c                                       ; $5585: $79
    ld c, a                                       ; $5586: $4f
    ld a, [hl]                                    ; $5587: $7e
    ld l, a                                       ; $5588: $6f
    ld a, c                                       ; $5589: $79
    ld a, a                                       ; $558a: $7f
    ld a, h                                       ; $558b: $7c

jr_0e0_558c:
    ld [$027f], sp                                ; $558c: $08 $7f $02
    rst $38                                       ; $558f: $ff
    adc b                                         ; $5590: $88
    ld sp, hl                                     ; $5591: $f9
    rst $38                                       ; $5592: $ff
    cp a                                          ; $5593: $bf
    rst $38                                       ; $5594: $ff
    ld e, a                                       ; $5595: $5f
    ld a, a                                       ; $5596: $7f
    jr nz, @+$41                                  ; $5597: $20 $3f

    ld [bc], a                                    ; $5599: $02

jr_0e0_559a:
    rra                                           ; $559a: $1f
    ld [bc], a                                    ; $559b: $02
    nop                                           ; $559c: $00
    add l                                         ; $559d: $85
    ld [de], a                                    ; $559e: $12
    ld e, $0e                                     ; $559f: $1e $0e
    ld e, $1a                                     ; $55a1: $1e $1a
    ld [bc], a                                    ; $55a3: $02
    ld e, $81                                     ; $55a4: $1e $81
    ld c, $08                                     ; $55a6: $0e $08
    ld e, $83                                     ; $55a8: $1e $83
    ld d, $1e                                     ; $55aa: $16 $1e
    rrca                                          ; $55ac: $0f
    inc bc                                        ; $55ad: $03
    rra                                           ; $55ae: $1f
    add [hl]                                      ; $55af: $86
    dec e                                         ; $55b0: $1d
    rra                                           ; $55b1: $1f
    ld a, [de]                                    ; $55b2: $1a
    ld e, $04                                     ; $55b3: $1e $04
    inc e                                         ; $55b5: $1c
    ld [bc], a                                    ; $55b6: $02
    jr @+$01                                      ; $55b7: $18 $ff

    db $0d, $04, $fb, $05, $f4, $fd, $e4, $fa, $e5, $ff, $f4, $fa, $f4, $ff, $02, $07
    db $92, $0f, $08, $1f, $10, $1f, $10, $1f, $10, $3f, $28, $3f, $27, $1f, $15, $2f
    db $38, $2f, $3d, $02, $1f, $84, $30, $3f, $38, $3f, $02, $7f, $04, $ff, $02, $10
    db $8f, $18, $08, $18, $08, $18, $08, $1c, $14, $1c, $04, $18, $08, $14, $1c, $14
    db $03, $1c, $86, $0c, $1c, $14, $1c, $1a, $1e, $04, $1f, $85, $fd, $ff, $d8, $f8
    db $6f, $02, $7f, $87, $79, $4f, $7e, $6f, $79, $7f, $7c, $04, $7f, $02, $ff, $81
    db $fd, $03, $ff, $86, $bf, $ff, $4f, $7f, $30, $3f, $02, $0f, $04, $00, $85, $12
    db $1e, $0e, $1e, $1a, $02, $1e, $82, $0e, $1a, $03, $1e, $81, $0e, $03, $1e, $04
    db $1f, $86, $1d, $1f, $1a, $1e, $04, $1c, $02, $18, $02, $00, $ff, $0d, $04, $fb
    db $05, $f4, $fd, $e3, $fa, $e4, $ff, $f3, $fa, $f3, $ff, $02, $07, $92, $0f, $08
    db $1f, $10, $1f, $10, $1f, $10, $3f, $28, $3f, $27, $1f, $15, $2f, $38, $2f, $3d
    db $02, $1f, $84, $30, $3f, $38, $3f, $02, $7f, $04, $ff, $02, $10, $8f, $18, $08
    db $18, $08, $18, $08, $1c, $14, $1c, $04, $18, $08, $14, $1c, $14, $03, $1c, $86
    db $0c, $1c, $14, $1c, $1a, $1e, $04, $1f, $85, $fd, $ff, $d8, $f8, $6f, $02, $7f
    db $87, $79, $4f, $7e, $6f, $79, $7f, $7c, $02, $7f, $90, $77, $7f, $7b, $7f, $fe
    db $ff, $fe, $ff, $bf, $ff, $5f, $7f, $27, $3f, $18, $1f, $02, $07, $02, $00, $85
    db $12, $1e, $0e, $1e, $1a, $02, $1e, $81, $0e, $04, $1e, $83, $1a, $1e, $1a, $05
    db $1e, $02, $1f, $86, $1d, $1f, $1d, $1f, $02, $1e, $02, $1c, $ff, $0d, $04, $fb
    db $05, $f4, $fd, $e4, $fa, $e5, $ff, $f4, $fa, $f4, $ff, $02, $07, $92, $0f, $08
    db $1f, $10, $1f, $10, $1f, $10, $3f, $28, $3f, $27, $1f, $15, $2f, $38, $2f, $3d
    db $02, $1f, $84, $30, $3f, $38, $3f, $02, $7f, $04, $ff, $02, $10, $8f, $18, $08
    db $18, $08, $18, $08, $1c, $14, $1c, $04, $18, $08, $14, $1c, $14, $03, $1c, $86
    db $0c, $1c, $14, $1c, $1a, $1e, $04, $1f, $85, $fd, $ff, $d8, $f8, $6f, $02, $7f
    db $87, $79, $4f, $7e, $6f, $79, $7f, $7c, $02, $7f, $81, $77, $03, $7f, $81, $fd
    db $03, $ff, $86, $bf, $ff, $5f, $7f, $20, $3f, $02, $1f, $04, $00, $85, $12, $1e
    db $0e, $1e, $1a, $02, $1e, $84, $0e, $1a, $1e, $1a, $03, $1e, $06, $1f, $86, $1d
    db $1f, $12, $1e, $0c, $1c, $02, $10, $02, $00, $ff, $0d, $04, $fb, $05, $f4, $fd
    db $e3, $fa, $e4, $ff, $f3, $fa, $f3, $ff, $02, $07, $92, $0f, $08, $1f, $10, $1f
    db $10, $1f, $10, $3f, $28, $3f, $27, $1f, $15, $2f, $38, $2f, $3d, $02, $1f, $84
    db $30, $3f, $38, $3f, $02, $7f, $04, $ff, $02, $10, $8f, $18, $08, $18, $08, $18
    db $08, $1c, $14, $1c, $04, $18, $08, $14, $1c, $14, $03, $1c, $86, $0c, $1c, $14
    db $1c, $1a, $1e, $04, $1f, $85, $fd, $ff, $d8, $f8, $6f, $02, $7f, $87, $79, $4f
    db $7e, $6f, $79, $7f, $7c, $04, $7f, $86, $7e, $7f, $7b, $7f, $7b, $7f, $02, $ff
    db $86, $bf, $ff, $bf, $ff, $40, $7f, $02, $3f, $02, $00, $85, $12, $1e, $0e, $1e
    db $1a, $02, $1e, $82, $0e, $1a, $03, $1e, $81, $0e, $03, $1e, $04, $1f, $86, $1d
    db $1f, $1a, $1e, $04, $1c, $02, $18, $02, $00, $ff

    dec c                                         ; $57f3: $0d
    inc b                                         ; $57f4: $04
    ei                                            ; $57f5: $fb
    dec b                                         ; $57f6: $05
    db $f4                                        ; $57f7: $f4
    db $fd                                        ; $57f8: $fd
    db $e3                                        ; $57f9: $e3
    ld a, [$ffe4]                                 ; $57fa: $fa $e4 $ff
    di                                            ; $57fd: $f3
    ld a, [$fff3]                                 ; $57fe: $fa $f3 $ff
    ld [bc], a                                    ; $5801: $02
    rlca                                          ; $5802: $07
    sbc e                                         ; $5803: $9b
    rrca                                          ; $5804: $0f
    ld [$101f], sp                                ; $5805: $08 $1f $10
    rra                                           ; $5808: $1f
    db $10                                        ; $5809: $10
    ld [de], a                                    ; $580a: $12
    dec e                                         ; $580b: $1d
    ccf                                           ; $580c: $3f
    dec h                                         ; $580d: $25
    ccf                                           ; $580e: $3f
    jr nz, @+$21                                  ; $580f: $20 $1f

    dec d                                         ; $5811: $15
    inc hl                                        ; $5812: $23
    ccf                                           ; $5813: $3f
    daa                                           ; $5814: $27
    inc a                                         ; $5815: $3c
    daa                                           ; $5816: $27
    ccf                                           ; $5817: $3f
    dec [hl]                                      ; $5818: $35
    ccf                                           ; $5819: $3f
    ld [hl-], a                                   ; $581a: $32
    ccf                                           ; $581b: $3f
    ld a, b                                       ; $581c: $78
    ld a, a                                       ; $581d: $7f
    pop af                                        ; $581e: $f1
    inc bc                                        ; $581f: $03
    rst $38                                       ; $5820: $ff
    ld [bc], a                                    ; $5821: $02
    db $10                                        ; $5822: $10
    add e                                         ; $5823: $83
    jr jr_0e0_582e                                ; $5824: $18 $08

    jr @+$04                                      ; $5826: $18 $02

    ld [$1893], sp                                ; $5828: $08 $93 $18
    inc e                                         ; $582b: $1c
    inc b                                         ; $582c: $04
    inc e                                         ; $582d: $1c

jr_0e0_582e:
    inc b                                         ; $582e: $04
    jr jr_0e0_5839                                ; $582f: $18 $08

    inc b                                         ; $5831: $04
    inc e                                         ; $5832: $1c
    inc d                                         ; $5833: $14
    inc e                                         ; $5834: $1c
    inc b                                         ; $5835: $04
    inc e                                         ; $5836: $1c
    inc b                                         ; $5837: $04
    inc e                                         ; $5838: $1c

jr_0e0_5839:
    inc c                                         ; $5839: $0c
    inc e                                         ; $583a: $1c
    ld c, $1e                                     ; $583b: $0e $1e
    inc b                                         ; $583d: $04
    rra                                           ; $583e: $1f
    ld [bc], a                                    ; $583f: $02
    rst $38                                       ; $5840: $ff
    ld [bc], a                                    ; $5841: $02
    ld hl, sp-$7b                                 ; $5842: $f8 $85
    ld e, a                                       ; $5844: $5f
    ld a, a                                       ; $5845: $7f
    ld b, b                                       ; $5846: $40
    ld a, a                                       ; $5847: $7f
    ld h, b                                       ; $5848: $60
    add hl, bc                                    ; $5849: $09
    ld a, a                                       ; $584a: $7f
    ld b, $ff                                     ; $584b: $06 $ff
    add [hl]                                      ; $584d: $86
    cp a                                          ; $584e: $bf
    rst $38                                       ; $584f: $ff
    add a                                         ; $5850: $87
    rst $38                                       ; $5851: $ff
    ld e, b                                       ; $5852: $58
    ld a, a                                       ; $5853: $7f
    ld [bc], a                                    ; $5854: $02
    dec a                                         ; $5855: $3d
    ld [bc], a                                    ; $5856: $02
    jr c, jr_0e0_585b                             ; $5857: $38 $02

    nop                                           ; $5859: $00
    adc c                                         ; $585a: $89

jr_0e0_585b:
    ld a, [de]                                    ; $585b: $1a
    ld e, $02                                     ; $585c: $1e $02
    ld e, $06                                     ; $585e: $1e $06
    ld e, $1a                                     ; $5860: $1e $1a
    ld e, $1a                                     ; $5862: $1e $1a
    dec b                                         ; $5864: $05
    ld e, $06                                     ; $5865: $1e $06
    rra                                           ; $5867: $1f
    add [hl]                                      ; $5868: $86
    dec e                                         ; $5869: $1d
    rra                                           ; $586a: $1f
    ld bc, $1a1f                                  ; $586b: $01 $1f $1a
    ld e, $04                                     ; $586e: $1e $04
    inc e                                         ; $5870: $1c
    rst $38                                       ; $5871: $ff
    dec c                                         ; $5872: $0d
    inc b                                         ; $5873: $04
    ei                                            ; $5874: $fb
    dec b                                         ; $5875: $05
    db $f4                                        ; $5876: $f4
    db $fd                                        ; $5877: $fd
    db $e4                                        ; $5878: $e4
    ld a, [$ffe5]                                 ; $5879: $fa $e5 $ff
    db $f4                                        ; $587c: $f4
    ld a, [$fff4]                                 ; $587d: $fa $f4 $ff
    ld [bc], a                                    ; $5880: $02
    rlca                                          ; $5881: $07
    sbc e                                         ; $5882: $9b
    rrca                                          ; $5883: $0f
    ld [$101f], sp                                ; $5884: $08 $1f $10
    rra                                           ; $5887: $1f
    db $10                                        ; $5888: $10
    ld [de], a                                    ; $5889: $12
    dec e                                         ; $588a: $1d
    ccf                                           ; $588b: $3f
    dec h                                         ; $588c: $25
    ccf                                           ; $588d: $3f
    jr nz, @+$21                                  ; $588e: $20 $1f

    dec d                                         ; $5890: $15
    inc hl                                        ; $5891: $23
    ccf                                           ; $5892: $3f
    daa                                           ; $5893: $27
    inc a                                         ; $5894: $3c
    daa                                           ; $5895: $27
    ccf                                           ; $5896: $3f
    dec [hl]                                      ; $5897: $35
    ccf                                           ; $5898: $3f
    ld [hl-], a                                   ; $5899: $32
    ccf                                           ; $589a: $3f
    ld a, b                                       ; $589b: $78
    ld a, a                                       ; $589c: $7f
    pop af                                        ; $589d: $f1
    inc bc                                        ; $589e: $03
    rst $38                                       ; $589f: $ff
    ld [bc], a                                    ; $58a0: $02
    db $10                                        ; $58a1: $10
    add e                                         ; $58a2: $83
    jr jr_0e0_58ad                                ; $58a3: $18 $08

    jr @+$04                                      ; $58a5: $18 $02

    ld [$1893], sp                                ; $58a7: $08 $93 $18
    inc e                                         ; $58aa: $1c
    inc b                                         ; $58ab: $04
    inc e                                         ; $58ac: $1c

jr_0e0_58ad:
    inc b                                         ; $58ad: $04
    jr jr_0e0_58b8                                ; $58ae: $18 $08

    inc b                                         ; $58b0: $04
    inc e                                         ; $58b1: $1c
    inc d                                         ; $58b2: $14
    inc e                                         ; $58b3: $1c
    inc b                                         ; $58b4: $04
    inc e                                         ; $58b5: $1c
    inc b                                         ; $58b6: $04
    inc e                                         ; $58b7: $1c

jr_0e0_58b8:
    inc c                                         ; $58b8: $0c
    inc e                                         ; $58b9: $1c
    ld c, $1e                                     ; $58ba: $0e $1e
    inc b                                         ; $58bc: $04
    rra                                           ; $58bd: $1f
    ld [bc], a                                    ; $58be: $02
    rst $38                                       ; $58bf: $ff
    ld [bc], a                                    ; $58c0: $02
    ld hl, sp-$7b                                 ; $58c1: $f8 $85
    ld e, a                                       ; $58c3: $5f
    ld a, a                                       ; $58c4: $7f
    ld b, b                                       ; $58c5: $40
    ld a, a                                       ; $58c6: $7f
    ld h, b                                       ; $58c7: $60
    rlca                                          ; $58c8: $07
    ld a, a                                       ; $58c9: $7f
    inc b                                         ; $58ca: $04
    rst $38                                       ; $58cb: $ff
    add [hl]                                      ; $58cc: $86
    cp a                                          ; $58cd: $bf
    rst $38                                       ; $58ce: $ff
    and e                                         ; $58cf: $a3
    rst $38                                       ; $58d0: $ff
    call c, Call_000_02ff                         ; $58d1: $dc $ff $02
    ld a, a                                       ; $58d4: $7f
    ld [bc], a                                    ; $58d5: $02
    inc e                                         ; $58d6: $1c
    ld b, $00                                     ; $58d7: $06 $00
    add l                                         ; $58d9: $85
    ld a, [de]                                    ; $58da: $1a
    ld e, $02                                     ; $58db: $1e $02
    ld e, $06                                     ; $58dd: $1e $06
    rlca                                          ; $58df: $07
    ld e, $8a                                     ; $58e0: $1e $8a
    rla                                           ; $58e2: $17
    rra                                           ; $58e3: $1f
    rrca                                          ; $58e4: $0f
    rra                                           ; $58e5: $1f
    dec e                                         ; $58e6: $1d
    rra                                           ; $58e7: $1f
    ld [de], a                                    ; $58e8: $12
    ld e, $0c                                     ; $58e9: $1e $0c
    inc e                                         ; $58eb: $1c
    ld [bc], a                                    ; $58ec: $02
    db $10                                        ; $58ed: $10
    ld b, $00                                     ; $58ee: $06 $00
    rst $38                                       ; $58f0: $ff
    dec c                                         ; $58f1: $0d
    inc b                                         ; $58f2: $04
    ei                                            ; $58f3: $fb
    dec b                                         ; $58f4: $05
    db $f4                                        ; $58f5: $f4
    db $fd                                        ; $58f6: $fd
    db $e3                                        ; $58f7: $e3
    ld a, [$ffe4]                                 ; $58f8: $fa $e4 $ff
    di                                            ; $58fb: $f3
    ld a, [$fff3]                                 ; $58fc: $fa $f3 $ff
    ld [bc], a                                    ; $58ff: $02
    rlca                                          ; $5900: $07
    sbc e                                         ; $5901: $9b
    rrca                                          ; $5902: $0f
    ld [$101f], sp                                ; $5903: $08 $1f $10
    rra                                           ; $5906: $1f
    db $10                                        ; $5907: $10
    ld [de], a                                    ; $5908: $12
    dec e                                         ; $5909: $1d
    ccf                                           ; $590a: $3f
    dec h                                         ; $590b: $25
    ccf                                           ; $590c: $3f
    jr nz, @+$21                                  ; $590d: $20 $1f

    dec d                                         ; $590f: $15
    inc hl                                        ; $5910: $23
    ccf                                           ; $5911: $3f
    daa                                           ; $5912: $27
    inc a                                         ; $5913: $3c
    daa                                           ; $5914: $27
    ccf                                           ; $5915: $3f
    dec [hl]                                      ; $5916: $35
    ccf                                           ; $5917: $3f
    ld [hl-], a                                   ; $5918: $32
    ccf                                           ; $5919: $3f
    ld a, b                                       ; $591a: $78
    ld a, a                                       ; $591b: $7f
    pop af                                        ; $591c: $f1
    inc bc                                        ; $591d: $03
    rst $38                                       ; $591e: $ff
    ld [bc], a                                    ; $591f: $02
    db $10                                        ; $5920: $10
    add e                                         ; $5921: $83
    jr jr_0e0_592c                                ; $5922: $18 $08

    jr @+$04                                      ; $5924: $18 $02

    ld [$1893], sp                                ; $5926: $08 $93 $18
    inc e                                         ; $5929: $1c
    inc b                                         ; $592a: $04
    inc e                                         ; $592b: $1c

jr_0e0_592c:
    inc b                                         ; $592c: $04
    jr jr_0e0_5937                                ; $592d: $18 $08

    inc b                                         ; $592f: $04
    inc e                                         ; $5930: $1c
    inc d                                         ; $5931: $14
    inc e                                         ; $5932: $1c
    inc b                                         ; $5933: $04
    inc e                                         ; $5934: $1c
    inc b                                         ; $5935: $04
    inc e                                         ; $5936: $1c

jr_0e0_5937:
    inc c                                         ; $5937: $0c
    inc e                                         ; $5938: $1c
    ld c, $1e                                     ; $5939: $0e $1e
    inc b                                         ; $593b: $04
    rra                                           ; $593c: $1f
    ld [bc], a                                    ; $593d: $02
    rst $38                                       ; $593e: $ff
    ld [bc], a                                    ; $593f: $02
    ld hl, sp-$7b                                 ; $5940: $f8 $85
    ld e, a                                       ; $5942: $5f
    ld a, a                                       ; $5943: $7f
    ld b, b                                       ; $5944: $40
    ld a, a                                       ; $5945: $7f
    ld h, b                                       ; $5946: $60
    rlca                                          ; $5947: $07
    ld a, a                                       ; $5948: $7f
    ld b, $ff                                     ; $5949: $06 $ff
    adc b                                         ; $594b: $88
    ld e, a                                       ; $594c: $5f
    ld a, a                                       ; $594d: $7f
    daa                                           ; $594e: $27
    ccf                                           ; $594f: $3f
    dec de                                        ; $5950: $1b
    rra                                           ; $5951: $1f
    inc b                                         ; $5952: $04
    rlca                                          ; $5953: $07
    ld [bc], a                                    ; $5954: $02
    ld bc, $0004                                  ; $5955: $01 $04 $00
    add l                                         ; $5958: $85
    ld a, [de]                                    ; $5959: $1a
    ld e, $02                                     ; $595a: $1e $02
    ld e, $06                                     ; $595c: $1e $06
    inc bc                                        ; $595e: $03
    ld e, $83                                     ; $595f: $1e $83
    ld a, [de]                                    ; $5961: $1a
    ld e, $1a                                     ; $5962: $1e $1a
    inc bc                                        ; $5964: $03
    ld e, $81                                     ; $5965: $1e $81
    rla                                           ; $5967: $17
    inc bc                                        ; $5968: $03
    rra                                           ; $5969: $1f
    add [hl]                                      ; $596a: $86
    rla                                           ; $596b: $17
    rra                                           ; $596c: $1f
    dec d                                         ; $596d: $15
    rra                                           ; $596e: $1f
    ld bc, $021f                                  ; $596f: $01 $1f $02
    ld e, $04                                     ; $5972: $1e $04
    inc e                                         ; $5974: $1c
    rst $38                                       ; $5975: $ff
    dec c                                         ; $5976: $0d
    inc b                                         ; $5977: $04
    ei                                            ; $5978: $fb
    dec b                                         ; $5979: $05
    db $f4                                        ; $597a: $f4
    db $fd                                        ; $597b: $fd
    db $e4                                        ; $597c: $e4
    ld a, [$ffe5]                                 ; $597d: $fa $e5 $ff
    db $f4                                        ; $5980: $f4
    ld a, [$fff4]                                 ; $5981: $fa $f4 $ff
    ld [bc], a                                    ; $5984: $02
    rlca                                          ; $5985: $07
    sbc e                                         ; $5986: $9b
    rrca                                          ; $5987: $0f
    ld [$101f], sp                                ; $5988: $08 $1f $10
    rra                                           ; $598b: $1f
    db $10                                        ; $598c: $10
    ld [de], a                                    ; $598d: $12
    dec e                                         ; $598e: $1d
    ccf                                           ; $598f: $3f
    dec h                                         ; $5990: $25
    ccf                                           ; $5991: $3f
    jr nz, @+$21                                  ; $5992: $20 $1f

    dec d                                         ; $5994: $15
    inc hl                                        ; $5995: $23
    ccf                                           ; $5996: $3f
    daa                                           ; $5997: $27
    inc a                                         ; $5998: $3c
    daa                                           ; $5999: $27
    ccf                                           ; $599a: $3f
    dec [hl]                                      ; $599b: $35
    ccf                                           ; $599c: $3f
    ld [hl-], a                                   ; $599d: $32
    ccf                                           ; $599e: $3f
    ld a, b                                       ; $599f: $78
    ld a, a                                       ; $59a0: $7f
    pop af                                        ; $59a1: $f1
    inc bc                                        ; $59a2: $03
    rst $38                                       ; $59a3: $ff
    ld [bc], a                                    ; $59a4: $02
    db $10                                        ; $59a5: $10
    add e                                         ; $59a6: $83
    jr jr_0e0_59b1                                ; $59a7: $18 $08

    jr @+$04                                      ; $59a9: $18 $02

    ld [$1893], sp                                ; $59ab: $08 $93 $18
    inc e                                         ; $59ae: $1c
    inc b                                         ; $59af: $04
    inc e                                         ; $59b0: $1c

jr_0e0_59b1:
    inc b                                         ; $59b1: $04
    jr jr_0e0_59bc                                ; $59b2: $18 $08

    inc b                                         ; $59b4: $04
    inc e                                         ; $59b5: $1c
    inc d                                         ; $59b6: $14
    inc e                                         ; $59b7: $1c
    inc b                                         ; $59b8: $04
    inc e                                         ; $59b9: $1c
    inc b                                         ; $59ba: $04
    inc e                                         ; $59bb: $1c

jr_0e0_59bc:
    inc c                                         ; $59bc: $0c
    inc e                                         ; $59bd: $1c
    ld c, $1e                                     ; $59be: $0e $1e
    inc b                                         ; $59c0: $04
    rra                                           ; $59c1: $1f
    ld [bc], a                                    ; $59c2: $02
    rst $38                                       ; $59c3: $ff
    ld [bc], a                                    ; $59c4: $02
    ld hl, sp-$7b                                 ; $59c5: $f8 $85
    ld e, a                                       ; $59c7: $5f
    ld a, a                                       ; $59c8: $7f
    ld b, b                                       ; $59c9: $40
    ld a, a                                       ; $59ca: $7f
    ld h, b                                       ; $59cb: $60
    rlca                                          ; $59cc: $07
    ld a, a                                       ; $59cd: $7f
    adc d                                         ; $59ce: $8a
    rst $28                                       ; $59cf: $ef
    rst $38                                       ; $59d0: $ff
    rst $30                                       ; $59d1: $f7
    rst $38                                       ; $59d2: $ff
    cp a                                          ; $59d3: $bf
    rst $38                                       ; $59d4: $ff
    ld c, [hl]                                    ; $59d5: $4e
    ld a, a                                       ; $59d6: $7f
    ld sp, $023f                                  ; $59d7: $31 $3f $02
    rrca                                          ; $59da: $0f
    ld [bc], a                                    ; $59db: $02
    ld bc, $0006                                  ; $59dc: $01 $06 $00
    adc c                                         ; $59df: $89
    ld a, [de]                                    ; $59e0: $1a
    ld e, $02                                     ; $59e1: $1e $02
    ld e, $06                                     ; $59e3: $1e $06
    ld e, $1a                                     ; $59e5: $1e $1a
    ld e, $1a                                     ; $59e7: $1e $1a
    inc bc                                        ; $59e9: $03
    ld e, $04                                     ; $59ea: $1e $04
    rra                                           ; $59ec: $1f
    add [hl]                                      ; $59ed: $86
    dec e                                         ; $59ee: $1d
    rra                                           ; $59ef: $1f
    dec b                                         ; $59f0: $05
    rra                                           ; $59f1: $1f
    dec de                                        ; $59f2: $1b
    rra                                           ; $59f3: $1f
    ld [bc], a                                    ; $59f4: $02
    ld e, $02                                     ; $59f5: $1e $02
    jr jr_0e0_59fd                                ; $59f7: $18 $04

    nop                                           ; $59f9: $00
    rst $38                                       ; $59fa: $ff
    dec c                                         ; $59fb: $0d
    inc b                                         ; $59fc: $04

jr_0e0_59fd:
    ei                                            ; $59fd: $fb
    dec b                                         ; $59fe: $05
    db $f4                                        ; $59ff: $f4
    db $fd                                        ; $5a00: $fd
    db $e3                                        ; $5a01: $e3
    ld a, [$ffe4]                                 ; $5a02: $fa $e4 $ff
    di                                            ; $5a05: $f3
    ld a, [$fff3]                                 ; $5a06: $fa $f3 $ff
    ld [bc], a                                    ; $5a09: $02
    rlca                                          ; $5a0a: $07
    sbc e                                         ; $5a0b: $9b
    rrca                                          ; $5a0c: $0f
    ld [$101f], sp                                ; $5a0d: $08 $1f $10
    rra                                           ; $5a10: $1f
    db $10                                        ; $5a11: $10
    ld [de], a                                    ; $5a12: $12
    dec e                                         ; $5a13: $1d
    ccf                                           ; $5a14: $3f
    dec h                                         ; $5a15: $25
    ccf                                           ; $5a16: $3f
    jr nz, @+$21                                  ; $5a17: $20 $1f

    dec d                                         ; $5a19: $15
    inc hl                                        ; $5a1a: $23
    ccf                                           ; $5a1b: $3f
    daa                                           ; $5a1c: $27
    inc a                                         ; $5a1d: $3c
    daa                                           ; $5a1e: $27
    ccf                                           ; $5a1f: $3f
    dec [hl]                                      ; $5a20: $35
    ccf                                           ; $5a21: $3f
    ld [hl-], a                                   ; $5a22: $32
    ccf                                           ; $5a23: $3f
    ld a, b                                       ; $5a24: $78
    ld a, a                                       ; $5a25: $7f
    pop af                                        ; $5a26: $f1
    inc bc                                        ; $5a27: $03
    rst $38                                       ; $5a28: $ff
    ld [bc], a                                    ; $5a29: $02
    db $10                                        ; $5a2a: $10
    add e                                         ; $5a2b: $83
    jr jr_0e0_5a36                                ; $5a2c: $18 $08

    jr @+$04                                      ; $5a2e: $18 $02

    ld [$1893], sp                                ; $5a30: $08 $93 $18
    inc e                                         ; $5a33: $1c
    inc b                                         ; $5a34: $04
    inc e                                         ; $5a35: $1c

jr_0e0_5a36:
    inc b                                         ; $5a36: $04
    jr jr_0e0_5a41                                ; $5a37: $18 $08

    inc b                                         ; $5a39: $04
    inc e                                         ; $5a3a: $1c
    inc d                                         ; $5a3b: $14
    inc e                                         ; $5a3c: $1c
    inc b                                         ; $5a3d: $04
    inc e                                         ; $5a3e: $1c
    inc b                                         ; $5a3f: $04
    inc e                                         ; $5a40: $1c

jr_0e0_5a41:
    inc c                                         ; $5a41: $0c
    inc e                                         ; $5a42: $1c
    ld c, $1e                                     ; $5a43: $0e $1e
    inc b                                         ; $5a45: $04
    rra                                           ; $5a46: $1f
    ld [bc], a                                    ; $5a47: $02
    rst $38                                       ; $5a48: $ff
    ld [bc], a                                    ; $5a49: $02
    ld hl, sp-$7b                                 ; $5a4a: $f8 $85
    ld e, a                                       ; $5a4c: $5f
    ld a, a                                       ; $5a4d: $7f
    ld b, b                                       ; $5a4e: $40
    ld a, a                                       ; $5a4f: $7f
    ld h, b                                       ; $5a50: $60
    add hl, bc                                    ; $5a51: $09
    ld a, a                                       ; $5a52: $7f
    add c                                         ; $5a53: $81
    rst $28                                       ; $5a54: $ef
    inc bc                                        ; $5a55: $03
    rst $38                                       ; $5a56: $ff
    adc b                                         ; $5a57: $88
    rst $28                                       ; $5a58: $ef
    rst $38                                       ; $5a59: $ff

jr_0e0_5a5a:
    xor a                                         ; $5a5a: $af
    rst $38                                       ; $5a5b: $ff
    add [hl]                                      ; $5a5c: $86
    rst $38                                       ; $5a5d: $ff
    ld a, c                                       ; $5a5e: $79
    ld a, a                                       ; $5a5f: $7f
    ld [bc], a                                    ; $5a60: $02
    inc a                                         ; $5a61: $3c
    ld [bc], a                                    ; $5a62: $02
    jr c, jr_0e0_5a67                             ; $5a63: $38 $02

    nop                                           ; $5a65: $00
    add a                                         ; $5a66: $87

jr_0e0_5a67:
    ld a, [de]                                    ; $5a67: $1a
    ld e, $02                                     ; $5a68: $1e $02
    ld e, $06                                     ; $5a6a: $1e $06
    ld e, $1a                                     ; $5a6c: $1e $1a
    dec b                                         ; $5a6e: $05
    ld e, $06                                     ; $5a6f: $1e $06
    rra                                           ; $5a71: $1f
    add h                                         ; $5a72: $84
    ld a, [de]                                    ; $5a73: $1a
    ld e, $04                                     ; $5a74: $1e $04
    inc e                                         ; $5a76: $1c
    ld [bc], a                                    ; $5a77: $02
    jr jr_0e0_5a80                                ; $5a78: $18 $06

    nop                                           ; $5a7a: $00
    rst $38                                       ; $5a7b: $ff
    dec c                                         ; $5a7c: $0d
    inc b                                         ; $5a7d: $04
    ei                                            ; $5a7e: $fb
    dec b                                         ; $5a7f: $05

jr_0e0_5a80:
    db $f4                                        ; $5a80: $f4
    db $fd                                        ; $5a81: $fd
    db $e3                                        ; $5a82: $e3
    db $fd                                        ; $5a83: $fd
    and $ff                                       ; $5a84: $e6 $ff
    di                                            ; $5a86: $f3
    ld a, [$fef3]                                 ; $5a87: $fa $f3 $fe
    ld [bc], a                                    ; $5a8a: $02
    inc c                                         ; $5a8b: $0c
    sbc d                                         ; $5a8c: $9a
    ld e, $12                                     ; $5a8d: $1e $12
    ccf                                           ; $5a8f: $3f
    ld hl, $203f                                  ; $5a90: $21 $3f $20
    ld a, $21                                     ; $5a93: $3e $21
    ccf                                           ; $5a95: $3f
    add hl, hl                                    ; $5a96: $29
    rra                                           ; $5a97: $1f
    db $10                                        ; $5a98: $10
    rra                                           ; $5a99: $1f
    inc e                                         ; $5a9a: $1c
    ld a, [de]                                    ; $5a9b: $1a
    rra                                           ; $5a9c: $1f
    jr nc, jr_0e0_5ade                            ; $5a9d: $30 $3f

    ld e, b                                       ; $5a9f: $58
    ld a, a                                       ; $5aa0: $7f
    adc b                                         ; $5aa1: $88
    rst $38                                       ; $5aa2: $ff
    db $fc                                        ; $5aa3: $fc
    rst $38                                       ; $5aa4: $ff
    ld a, [hl]                                    ; $5aa5: $7e
    ld a, a                                       ; $5aa6: $7f
    ld [bc], a                                    ; $5aa7: $02
    rst $38                                       ; $5aa8: $ff
    add d                                         ; $5aa9: $82
    cp a                                          ; $5aaa: $bf
    rst $38                                       ; $5aab: $ff
    ld [bc], a                                    ; $5aac: $02
    ld [bc], a                                    ; $5aad: $02
    add d                                         ; $5aae: $82
    ld bc, $0203                                  ; $5aaf: $01 $03 $02
    ld [bc], a                                    ; $5ab2: $02
    add h                                         ; $5ab3: $84
    inc bc                                        ; $5ab4: $03
    ld bc, $0103                                  ; $5ab5: $01 $03 $01
    ld [bc], a                                    ; $5ab8: $02
    ld [bc], a                                    ; $5ab9: $02
    add d                                         ; $5aba: $82
    ld bc, $0403                                  ; $5abb: $01 $03 $04
    ld [bc], a                                    ; $5abe: $02
    add h                                         ; $5abf: $84
    ld bc, $0103                                  ; $5ac0: $01 $03 $01
    inc bc                                        ; $5ac3: $03
    ld [bc], a                                    ; $5ac4: $02
    ld [bc], a                                    ; $5ac5: $02
    ld [bc], a                                    ; $5ac6: $02
    nop                                           ; $5ac7: $00
    inc b                                         ; $5ac8: $04
    db $fc                                        ; $5ac9: $fc
    add d                                         ; $5aca: $82
    call nz, Call_000_02fc                        ; $5acb: $c4 $fc $02
    jr c, jr_0e0_5a5a                             ; $5ace: $38 $8a

    jr z, @+$3a                                   ; $5ad0: $28 $38

    ld l, b                                       ; $5ad2: $68
    ld a, b                                       ; $5ad3: $78
    db $fc                                        ; $5ad4: $fc
    cp a                                          ; $5ad5: $bf
    rst $38                                       ; $5ad6: $ff
    sbc a                                         ; $5ad7: $9f
    ld a, a                                       ; $5ad8: $7f
    ld e, a                                       ; $5ad9: $5f
    ld [bc], a                                    ; $5ada: $02
    ccf                                           ; $5adb: $3f
    ld [bc], a                                    ; $5adc: $02
    rra                                           ; $5add: $1f

jr_0e0_5ade:
    ld [$023f], sp                                ; $5ade: $08 $3f $02
    ld a, a                                       ; $5ae1: $7f
    add h                                         ; $5ae2: $84
    cp b                                          ; $5ae3: $b8
    rst $38                                       ; $5ae4: $ff
    ld b, a                                       ; $5ae5: $47
    ld a, a                                       ; $5ae6: $7f
    ld [bc], a                                    ; $5ae7: $02
    ccf                                           ; $5ae8: $3f
    ld b, $00                                     ; $5ae9: $06 $00
    add c                                         ; $5aeb: $81
    ld [bc], a                                    ; $5aec: $02
    inc de                                        ; $5aed: $13
    ld c, $84                                     ; $5aee: $0e $84
    dec bc                                        ; $5af0: $0b
    rrca                                          ; $5af1: $0f
    inc bc                                        ; $5af2: $03
    rrca                                          ; $5af3: $0f
    ld [bc], a                                    ; $5af4: $02
    inc c                                         ; $5af5: $0c
    rst $38                                       ; $5af6: $ff

    db $0d, $04, $fb, $05, $f4, $fd, $e4, $fd, $e7, $ff, $f4, $fa, $f4, $fd, $02, $0c
    db $9a, $1e, $12, $3f, $21, $3f, $20, $3e, $21, $3f, $29, $1f, $10, $1f, $1c, $1a
    db $1f, $70, $7f, $98, $ff, $88, $ff, $fc, $ff, $7e, $7f, $02, $ff, $82, $bf, $ff
    db $02, $02, $82, $01, $03, $02, $02, $84, $03, $01, $03, $01, $02, $02, $82, $01
    db $03, $04, $02, $84, $01, $03, $01, $03, $02, $02, $02, $00, $04, $fc, $82, $c4
    db $fc, $02, $38, $8a, $28, $38, $68, $78, $fc, $bf, $ff, $9f, $7f, $5f, $0a, $3f
    db $02, $7f, $84, $b0, $ff, $47, $7f, $02, $3f, $08, $00, $81, $01, $0b, $07, $83
    db $05, $07, $05, $03, $07, $84, $01, $07, $05, $07, $02, $06, $02, $00, $ff, $0d
    db $04, $fb, $05, $f4, $fd, $e3, $fd, $e6, $ff, $f3, $f9, $f3, $00, $02, $0c, $9a
    db $1e, $12, $3f, $21, $3f, $20, $3e, $21, $3f, $29, $1f, $10, $1f, $1c, $1a, $1f
    db $30, $3f, $58, $7f, $88, $ff, $fc, $ff, $7e, $7f, $02, $ff, $82, $bf, $ff, $02
    db $02, $82, $01, $03, $02, $02, $84, $03, $01, $03, $01, $02, $02, $82, $01, $03
    db $04, $02, $84, $01, $03, $01, $03, $02, $02, $02, $00, $04, $fc, $82, $c4, $fc
    db $02, $1c, $8a, $14, $1c, $34, $3c, $7e, $5f, $7f, $4f, $3f, $2f, $02, $1f, $02
    db $0f, $04, $1f, $02, $3f, $82, $3c, $3f, $02, $7f, $84, $a0, $ff, $4f, $7f, $02
    db $3e, $06, $00, $81, $08, $07, $78, $04, $7c, $83, $6c, $7c, $5c, $03, $7c, $84
    db $77, $7f, $0e, $7e, $02, $70, $02, $00, $ff, $0d, $04, $fb, $05, $f4, $fd, $e4
    db $fd, $e7, $ff, $f4, $fa, $f4, $fe, $02, $0c, $9a, $1e, $12, $3f, $21, $3f, $20
    db $3e, $21, $3f, $29, $1f, $10, $1f, $1c, $1a, $1f, $70, $7f, $98, $ff, $88, $ff
    db $fc, $ff, $7e, $7f, $02, $ff, $82, $bf, $ff, $02, $02, $82, $01, $03, $02, $02
    db $84, $03, $01, $03, $01, $02, $02, $82, $01, $03, $04, $02, $84, $01, $03, $01
    db $03, $02, $02, $02, $00, $04, $fc, $82, $c4, $fc, $02, $38, $8a, $28, $38, $68
    db $78, $fc, $bf, $ff, $9f, $7f, $5f, $0a, $3f, $86, $78, $7f, $b7, $ff, $4f, $7f
    db $02, $30, $08, $00, $81, $02, $05, $0e, $83, $06, $0e, $0a, $05, $0e, $81, $06
    db $03, $0e, $81, $03, $03, $0f, $04, $00, $ff, $0d, $04, $fb, $05, $f4, $fd, $e3
    db $fd, $e6, $ff, $f3, $f9, $f3, $00, $02, $0c, $9a, $1e, $12, $3f, $21, $3f, $20
    db $3e, $21, $3f, $29, $1f, $10, $1f, $1c, $1a, $1f, $30, $3f, $58, $7f, $88, $ff
    db $fc, $ff, $7e, $7f, $02, $ff, $82, $bf, $ff, $02, $02, $82, $01, $03, $02, $02
    db $84, $03, $01, $03, $01, $02, $02, $82, $01, $03, $04, $02, $84, $01, $03, $01
    db $03, $02, $02, $02, $00, $04, $fc, $82, $c4, $fc, $02, $1c, $8a, $14, $1c, $34
    db $3c, $7e, $5f, $7f, $4f, $3f, $2f, $02, $1f, $02, $0f, $06, $1f, $02, $3f, $02
    db $7f, $84, $bf, $ff, $40, $7f, $02, $3f, $06, $00, $81, $08, $05, $78, $87, $68
    db $78, $6c, $7c, $74, $7c, $74, $05, $7c, $86, $67, $7f, $5e, $7e, $38, $78, $02
    db $40, $ff

    dec c                                         ; $5d09: $0d
    inc b                                         ; $5d0a: $04
    db $fc                                        ; $5d0b: $fc
    ld b, $f3                                     ; $5d0c: $06 $f3
    db $fc                                        ; $5d0e: $fc
    db $e3                                        ; $5d0f: $e3
    ld sp, hl                                     ; $5d10: $f9
    db $e3                                        ; $5d11: $e3
    ld bc, $f9f3                                  ; $5d12: $01 $f3 $f9
    di                                            ; $5d15: $f3
    ld bc, $0102                                  ; $5d16: $01 $02 $01
    sbc [hl]                                      ; $5d19: $9e
    ld b, $07                                     ; $5d1a: $06 $07
    ld [$140f], sp                                ; $5d1c: $08 $0f $14
    rra                                           ; $5d1f: $1f
    ld [de], a                                    ; $5d20: $12
    rra                                           ; $5d21: $1f
    ld [de], a                                    ; $5d22: $12
    rra                                           ; $5d23: $1f
    ld hl, $203f                                  ; $5d24: $21 $3f $20
    ccf                                           ; $5d27: $3f
    jr nc, jr_0e0_5d69                            ; $5d28: $30 $3f

    dec de                                        ; $5d2a: $1b
    rra                                           ; $5d2b: $1f
    inc e                                         ; $5d2c: $1c

jr_0e0_5d2d:
    rra                                           ; $5d2d: $1f
    jr nz, jr_0e0_5d6f                            ; $5d2e: $20 $3f

    ld c, b                                       ; $5d30: $48
    ld a, a                                       ; $5d31: $7f
    ld d, b                                       ; $5d32: $50
    ld a, a                                       ; $5d33: $7f
    ld d, b                                       ; $5d34: $50
    ld a, a                                       ; $5d35: $7f
    sub b                                         ; $5d36: $90
    rst $38                                       ; $5d37: $ff
    ld [bc], a                                    ; $5d38: $02
    ret nz                                        ; $5d39: $c0

    cp d                                          ; $5d3a: $ba
    jr nc, jr_0e0_5d2d                            ; $5d3b: $30 $f0

    ld [$14f8], sp                                ; $5d3d: $08 $f8 $14
    db $fc                                        ; $5d40: $fc
    inc d                                         ; $5d41: $14
    db $fc                                        ; $5d42: $fc
    inc h                                         ; $5d43: $24
    db $fc                                        ; $5d44: $fc
    ld [hl+], a                                   ; $5d45: $22
    cp $c2                                        ; $5d46: $fe $c2
    cp $02                                        ; $5d48: $fe $02
    cp $e4                                        ; $5d4a: $fe $e4
    db $fc                                        ; $5d4c: $fc
    inc c                                         ; $5d4d: $0c
    db $fc                                        ; $5d4e: $fc
    ld [bc], a                                    ; $5d4f: $02
    cp $09                                        ; $5d50: $fe $09
    rst $38                                       ; $5d52: $ff
    dec b                                         ; $5d53: $05
    rst $38                                       ; $5d54: $ff
    dec b                                         ; $5d55: $05
    rst $38                                       ; $5d56: $ff
    dec b                                         ; $5d57: $05
    rst $38                                       ; $5d58: $ff
    sub a                                         ; $5d59: $97
    rst $38                                       ; $5d5a: $ff
    sbc d                                         ; $5d5b: $9a
    rst $38                                       ; $5d5c: $ff
    and h                                         ; $5d5d: $a4
    rst $38                                       ; $5d5e: $ff
    db $e4                                        ; $5d5f: $e4
    rst $38                                       ; $5d60: $ff
    ldh [$bf], a                                  ; $5d61: $e0 $bf
    db $e4                                        ; $5d63: $e4
    cp a                                          ; $5d64: $bf
    ld h, b                                       ; $5d65: $60
    ld a, a                                       ; $5d66: $7f
    jr nz, jr_0e0_5da8                            ; $5d67: $20 $3f

jr_0e0_5d69:
    jr nz, jr_0e0_5daa                            ; $5d69: $20 $3f

    jr nz, @+$41                                  ; $5d6b: $20 $3f

    inc h                                         ; $5d6d: $24
    ccf                                           ; $5d6e: $3f

jr_0e0_5d6f:
    inc hl                                        ; $5d6f: $23
    ccf                                           ; $5d70: $3f
    db $10                                        ; $5d71: $10
    rra                                           ; $5d72: $1f
    ld [$020f], sp                                ; $5d73: $08 $0f $02
    rlca                                          ; $5d76: $07
    ld [bc], a                                    ; $5d77: $02
    nop                                           ; $5d78: $00
    sbc h                                         ; $5d79: $9c
    push af                                       ; $5d7a: $f5
    rst $38                                       ; $5d7b: $ff
    ld e, [hl]                                    ; $5d7c: $5e
    cp $0a                                        ; $5d7d: $fe $0a
    cp $02                                        ; $5d7f: $fe $02
    cp $02                                        ; $5d81: $fe $02
    cp $02                                        ; $5d83: $fe $02
    cp $02                                        ; $5d85: $fe $02
    cp $02                                        ; $5d87: $fe $02
    cp $02                                        ; $5d89: $fe $02
    cp $02                                        ; $5d8b: $fe $02
    cp $12                                        ; $5d8d: $fe $12
    cp $c2                                        ; $5d8f: $fe $c2
    cp $04                                        ; $5d91: $fe $04
    db $fc                                        ; $5d93: $fc
    ld [$02f8], sp                                ; $5d94: $08 $f8 $02
    ldh a, [rSC]                                  ; $5d97: $f0 $02
    nop                                           ; $5d99: $00
    rst $38                                       ; $5d9a: $ff
    dec c                                         ; $5d9b: $0d
    inc b                                         ; $5d9c: $04
    db $fc                                        ; $5d9d: $fc
    ld b, $f3                                     ; $5d9e: $06 $f3
    db $fc                                        ; $5da0: $fc
    db $e4                                        ; $5da1: $e4
    ld sp, hl                                     ; $5da2: $f9
    db $e4                                        ; $5da3: $e4
    ld bc, $f9f4                                  ; $5da4: $01 $f4 $f9
    db $f4                                        ; $5da7: $f4

jr_0e0_5da8:
    nop                                           ; $5da8: $00
    ld [bc], a                                    ; $5da9: $02

jr_0e0_5daa:
    ld bc, $0690                                  ; $5daa: $01 $90 $06
    rlca                                          ; $5dad: $07
    ld [$140f], sp                                ; $5dae: $08 $0f $14
    rra                                           ; $5db1: $1f
    ld [de], a                                    ; $5db2: $12
    rra                                           ; $5db3: $1f
    ld de, $211f                                  ; $5db4: $11 $1f $21
    ccf                                           ; $5db7: $3f
    jr nz, @+$41                                  ; $5db8: $20 $3f

    jr nc, jr_0e0_5dfb                            ; $5dba: $30 $3f

    ld [bc], a                                    ; $5dbc: $02
    rra                                           ; $5dbd: $1f
    adc h                                         ; $5dbe: $8c
    db $10                                        ; $5dbf: $10

jr_0e0_5dc0:
    rra                                           ; $5dc0: $1f
    jr z, @+$41                                   ; $5dc1: $28 $3f

    ld d, b                                       ; $5dc3: $50
    ld a, a                                       ; $5dc4: $7f
    ld d, b                                       ; $5dc5: $50
    ld a, a                                       ; $5dc6: $7f
    sub b                                         ; $5dc7: $90
    rst $38                                       ; $5dc8: $ff
    sub a                                         ; $5dc9: $97
    rst $38                                       ; $5dca: $ff
    ld [bc], a                                    ; $5dcb: $02
    ret nz                                        ; $5dcc: $c0

    cp b                                          ; $5dcd: $b8
    jr nc, jr_0e0_5dc0                            ; $5dce: $30 $f0

    ld [$14f8], sp                                ; $5dd0: $08 $f8 $14
    db $fc                                        ; $5dd3: $fc
    inc d                                         ; $5dd4: $14
    db $fc                                        ; $5dd5: $fc
    inc d                                         ; $5dd6: $14
    db $fc                                        ; $5dd7: $fc
    ld [hl+], a                                   ; $5dd8: $22
    cp $c2                                        ; $5dd9: $fe $c2
    cp $02                                        ; $5ddb: $fe $02
    cp $f4                                        ; $5ddd: $fe $f4
    db $fc                                        ; $5ddf: $fc
    ld b, $fe                                     ; $5de0: $06 $fe
    ld a, [bc]                                    ; $5de2: $0a
    cp $05                                        ; $5de3: $fe $05
    rst $38                                       ; $5de5: $ff
    dec b                                         ; $5de6: $05
    rst $38                                       ; $5de7: $ff
    dec b                                         ; $5de8: $05
    rst $38                                       ; $5de9: $ff
    push af                                       ; $5dea: $f5
    rst $38                                       ; $5deb: $ff
    jp c, $e4ff                                   ; $5dec: $da $ff $e4

    rst $38                                       ; $5def: $ff
    db $e4                                        ; $5df0: $e4
    cp a                                          ; $5df1: $bf
    ld h, b                                       ; $5df2: $60
    ld a, a                                       ; $5df3: $7f
    inc h                                         ; $5df4: $24
    ccf                                           ; $5df5: $3f
    jr nc, jr_0e0_5e37                            ; $5df6: $30 $3f

    jr nc, @+$41                                  ; $5df8: $30 $3f

    inc [hl]                                      ; $5dfa: $34

jr_0e0_5dfb:
    ccf                                           ; $5dfb: $3f
    jr nc, jr_0e0_5e3d                            ; $5dfc: $30 $3f

    ld [hl+], a                                   ; $5dfe: $22
    ccf                                           ; $5dff: $3f
    ld hl, $103f                                  ; $5e00: $21 $3f $10
    rra                                           ; $5e03: $1f
    inc c                                         ; $5e04: $0c
    rrca                                          ; $5e05: $0f
    ld [bc], a                                    ; $5e06: $02
    inc bc                                        ; $5e07: $03
    inc b                                         ; $5e08: $04
    nop                                           ; $5e09: $00
    sbc d                                         ; $5e0a: $9a
    cpl                                           ; $5e0b: $2f
    ld a, a                                       ; $5e0c: $7f
    dec b                                         ; $5e0d: $05
    ld a, a                                       ; $5e0e: $7f
    ld bc, $017f                                  ; $5e0f: $01 $7f $01
    ld a, a                                       ; $5e12: $7f
    ld bc, $017f                                  ; $5e13: $01 $7f $01
    ld a, a                                       ; $5e16: $7f
    ld bc, $017f                                  ; $5e17: $01 $7f $01
    ld a, a                                       ; $5e1a: $7f
    ld bc, $017f                                  ; $5e1b: $01 $7f $01
    ld a, a                                       ; $5e1e: $7f
    ld b, c                                       ; $5e1f: $41
    ld a, a                                       ; $5e20: $7f
    ld [bc], a                                    ; $5e21: $02
    ld a, [hl]                                    ; $5e22: $7e
    inc b                                         ; $5e23: $04
    ld a, h                                       ; $5e24: $7c
    ld [bc], a                                    ; $5e25: $02
    ld a, b                                       ; $5e26: $78
    inc b                                         ; $5e27: $04
    nop                                           ; $5e28: $00
    rst $38                                       ; $5e29: $ff
    dec c                                         ; $5e2a: $0d
    inc b                                         ; $5e2b: $04
    db $fc                                        ; $5e2c: $fc
    ld b, $f3                                     ; $5e2d: $06 $f3
    db $fc                                        ; $5e2f: $fc
    db $e3                                        ; $5e30: $e3
    ld sp, hl                                     ; $5e31: $f9
    db $e3                                        ; $5e32: $e3
    ld bc, $f9f3                                  ; $5e33: $01 $f3 $f9
    di                                            ; $5e36: $f3

jr_0e0_5e37:
    ld bc, $0102                                  ; $5e37: $01 $02 $01
    sbc [hl]                                      ; $5e3a: $9e
    ld b, $07                                     ; $5e3b: $06 $07

jr_0e0_5e3d:
    ld [$140f], sp                                ; $5e3d: $08 $0f $14
    rra                                           ; $5e40: $1f
    ld [de], a                                    ; $5e41: $12
    rra                                           ; $5e42: $1f
    ld [de], a                                    ; $5e43: $12
    rra                                           ; $5e44: $1f
    ld hl, $203f                                  ; $5e45: $21 $3f $20
    ccf                                           ; $5e48: $3f
    jr nc, jr_0e0_5e8a                            ; $5e49: $30 $3f

    dec de                                        ; $5e4b: $1b
    rra                                           ; $5e4c: $1f
    inc e                                         ; $5e4d: $1c

jr_0e0_5e4e:
    rra                                           ; $5e4e: $1f
    jr nc, @+$41                                  ; $5e4f: $30 $3f

    jr z, jr_0e0_5e92                             ; $5e51: $28 $3f

    ld d, b                                       ; $5e53: $50
    ld a, a                                       ; $5e54: $7f
    ld d, b                                       ; $5e55: $50
    ld a, a                                       ; $5e56: $7f
    sub b                                         ; $5e57: $90
    rst $38                                       ; $5e58: $ff
    ld [bc], a                                    ; $5e59: $02
    ret nz                                        ; $5e5a: $c0

    cp b                                          ; $5e5b: $b8
    jr nc, jr_0e0_5e4e                            ; $5e5c: $30 $f0

    ld [$14f8], sp                                ; $5e5e: $08 $f8 $14
    db $fc                                        ; $5e61: $fc
    inc d                                         ; $5e62: $14
    db $fc                                        ; $5e63: $fc
    inc h                                         ; $5e64: $24
    db $fc                                        ; $5e65: $fc
    ld [hl+], a                                   ; $5e66: $22
    cp $c2                                        ; $5e67: $fe $c2
    cp $02                                        ; $5e69: $fe $02
    cp $e4                                        ; $5e6b: $fe $e4
    db $fc                                        ; $5e6d: $fc
    inc c                                         ; $5e6e: $0c
    db $fc                                        ; $5e6f: $fc
    ld a, [bc]                                    ; $5e70: $0a
    cp $0a                                        ; $5e71: $fe $0a
    cp $05                                        ; $5e73: $fe $05
    rst $38                                       ; $5e75: $ff
    dec b                                         ; $5e76: $05
    rst $38                                       ; $5e77: $ff
    dec b                                         ; $5e78: $05
    rst $38                                       ; $5e79: $ff
    sub a                                         ; $5e7a: $97
    rst $38                                       ; $5e7b: $ff
    sbc d                                         ; $5e7c: $9a
    rst $38                                       ; $5e7d: $ff
    and h                                         ; $5e7e: $a4
    rst $38                                       ; $5e7f: $ff
    db $e4                                        ; $5e80: $e4
    rst $38                                       ; $5e81: $ff
    ldh [$bf], a                                  ; $5e82: $e0 $bf
    db $e4                                        ; $5e84: $e4
    cp a                                          ; $5e85: $bf
    ld h, b                                       ; $5e86: $60
    ld a, a                                       ; $5e87: $7f
    inc h                                         ; $5e88: $24
    ccf                                           ; $5e89: $3f

jr_0e0_5e8a:
    jr nc, jr_0e0_5ecb                            ; $5e8a: $30 $3f

    ld [hl-], a                                   ; $5e8c: $32
    ccf                                           ; $5e8d: $3f
    ld sp, $183f                                  ; $5e8e: $31 $3f $18
    rra                                           ; $5e91: $1f

jr_0e0_5e92:
    ld c, $0f                                     ; $5e92: $0e $0f
    ld [bc], a                                    ; $5e94: $02
    inc bc                                        ; $5e95: $03
    inc b                                         ; $5e96: $04
    nop                                           ; $5e97: $00
    sbc h                                         ; $5e98: $9c
    push af                                       ; $5e99: $f5
    rst $38                                       ; $5e9a: $ff
    sbc [hl]                                      ; $5e9b: $9e
    cp $0a                                        ; $5e9c: $fe $0a
    cp $02                                        ; $5e9e: $fe $02
    cp $02                                        ; $5ea0: $fe $02
    cp $02                                        ; $5ea2: $fe $02
    cp $02                                        ; $5ea4: $fe $02
    cp $06                                        ; $5ea6: $fe $06
    cp $06                                        ; $5ea8: $fe $06
    cp $02                                        ; $5eaa: $fe $02
    cp $2a                                        ; $5eac: $fe $2a
    cp $42                                        ; $5eae: $fe $42
    cp $1a                                        ; $5eb0: $fe $1a
    cp $ec                                        ; $5eb2: $fe $ec
    db $fc                                        ; $5eb4: $fc
    ld [bc], a                                    ; $5eb5: $02
    ld hl, sp+$02                                 ; $5eb6: $f8 $02
    nop                                           ; $5eb8: $00
    rst $38                                       ; $5eb9: $ff
    dec c                                         ; $5eba: $0d
    inc b                                         ; $5ebb: $04
    db $fc                                        ; $5ebc: $fc
    ld b, $f3                                     ; $5ebd: $06 $f3
    db $fc                                        ; $5ebf: $fc
    db $e4                                        ; $5ec0: $e4
    ld sp, hl                                     ; $5ec1: $f9
    db $e4                                        ; $5ec2: $e4
    ld bc, $f9f4                                  ; $5ec3: $01 $f4 $f9
    db $f4                                        ; $5ec6: $f4
    ld bc, $0102                                  ; $5ec7: $01 $02 $01
    sub b                                         ; $5eca: $90

jr_0e0_5ecb:
    ld b, $07                                     ; $5ecb: $06 $07
    ld [$140f], sp                                ; $5ecd: $08 $0f $14
    rra                                           ; $5ed0: $1f
    inc d                                         ; $5ed1: $14
    rra                                           ; $5ed2: $1f
    ld [de], a                                    ; $5ed3: $12
    rra                                           ; $5ed4: $1f
    ld [hl+], a                                   ; $5ed5: $22
    ccf                                           ; $5ed6: $3f
    ld hl, $303f                                  ; $5ed7: $21 $3f $30
    ccf                                           ; $5eda: $3f
    ld [bc], a                                    ; $5edb: $02
    rra                                           ; $5edc: $1f
    adc h                                         ; $5edd: $8c
    db $10                                        ; $5ede: $10

jr_0e0_5edf:
    rra                                           ; $5edf: $1f
    jr z, jr_0e0_5f21                             ; $5ee0: $28 $3f

    ld d, b                                       ; $5ee2: $50
    ld a, a                                       ; $5ee3: $7f
    ld d, b                                       ; $5ee4: $50
    ld a, a                                       ; $5ee5: $7f
    sub b                                         ; $5ee6: $90
    rst $38                                       ; $5ee7: $ff
    sub a                                         ; $5ee8: $97
    rst $38                                       ; $5ee9: $ff
    ld [bc], a                                    ; $5eea: $02
    ret nz                                        ; $5eeb: $c0

    cp b                                          ; $5eec: $b8
    jr nc, jr_0e0_5edf                            ; $5eed: $30 $f0

    ld [$14f8], sp                                ; $5eef: $08 $f8 $14
    db $fc                                        ; $5ef2: $fc
    inc h                                         ; $5ef3: $24
    db $fc                                        ; $5ef4: $fc
    inc h                                         ; $5ef5: $24
    db $fc                                        ; $5ef6: $fc
    ld b, d                                       ; $5ef7: $42
    cp $82                                        ; $5ef8: $fe $82
    cp $02                                        ; $5efa: $fe $02
    cp $f4                                        ; $5efc: $fe $f4
    db $fc                                        ; $5efe: $fc
    inc c                                         ; $5eff: $0c
    db $fc                                        ; $5f00: $fc
    inc c                                         ; $5f01: $0c
    db $fc                                        ; $5f02: $fc
    ld a, [bc]                                    ; $5f03: $0a
    cp $05                                        ; $5f04: $fe $05
    rst $38                                       ; $5f06: $ff
    dec b                                         ; $5f07: $05
    rst $38                                       ; $5f08: $ff
    push af                                       ; $5f09: $f5
    rst $38                                       ; $5f0a: $ff
    jp c, $e4ff                                   ; $5f0b: $da $ff $e4

    rst $38                                       ; $5f0e: $ff
    db $e4                                        ; $5f0f: $e4
    cp a                                          ; $5f10: $bf
    ld h, b                                       ; $5f11: $60
    ld a, a                                       ; $5f12: $7f
    inc h                                         ; $5f13: $24
    ccf                                           ; $5f14: $3f
    jr nz, jr_0e0_5f56                            ; $5f15: $20 $3f

    jr nz, jr_0e0_5f58                            ; $5f17: $20 $3f

    jr nz, @+$41                                  ; $5f19: $20 $3f

    jr nz, jr_0e0_5f5c                            ; $5f1b: $20 $3f

    jr nz, @+$41                                  ; $5f1d: $20 $3f

    jr nz, jr_0e0_5f60                            ; $5f1f: $20 $3f

jr_0e0_5f21:
    db $10                                        ; $5f21: $10
    rra                                           ; $5f22: $1f
    ld [$020f], sp                                ; $5f23: $08 $0f $02
    rlca                                          ; $5f26: $07
    inc b                                         ; $5f27: $04
    nop                                           ; $5f28: $00
    sbc d                                         ; $5f29: $9a
    ld e, l                                       ; $5f2a: $5d
    rst $38                                       ; $5f2b: $ff
    dec bc                                        ; $5f2c: $0b
    rst $38                                       ; $5f2d: $ff
    inc bc                                        ; $5f2e: $03
    rst $38                                       ; $5f2f: $ff
    ld [bc], a                                    ; $5f30: $02
    cp $02                                        ; $5f31: $fe $02
    cp $06                                        ; $5f33: $fe $06
    cp $06                                        ; $5f35: $fe $06
    cp $16                                        ; $5f37: $fe $16
    cp $06                                        ; $5f39: $fe $06
    cp $22                                        ; $5f3b: $fe $22
    cp $c2                                        ; $5f3d: $fe $c2
    cp $04                                        ; $5f3f: $fe $04
    db $fc                                        ; $5f41: $fc
    jr @-$06                                      ; $5f42: $18 $f8

    ld [bc], a                                    ; $5f44: $02
    ldh [rDIV], a                                 ; $5f45: $e0 $04
    nop                                           ; $5f47: $00
    rst $38                                       ; $5f48: $ff
    dec c                                         ; $5f49: $0d
    inc b                                         ; $5f4a: $04
    db $fc                                        ; $5f4b: $fc
    ld b, $f3                                     ; $5f4c: $06 $f3
    db $fc                                        ; $5f4e: $fc
    db $e3                                        ; $5f4f: $e3
    ld sp, hl                                     ; $5f50: $f9
    db $e3                                        ; $5f51: $e3
    ld bc, $f9f3                                  ; $5f52: $01 $f3 $f9
    di                                            ; $5f55: $f3

jr_0e0_5f56:
    nop                                           ; $5f56: $00
    ld [bc], a                                    ; $5f57: $02

jr_0e0_5f58:
    ld bc, $069e                                  ; $5f58: $01 $9e $06
    rlca                                          ; $5f5b: $07

jr_0e0_5f5c:
    ld [$140f], sp                                ; $5f5c: $08 $0f $14
    rra                                           ; $5f5f: $1f

jr_0e0_5f60:
    ld [de], a                                    ; $5f60: $12
    rra                                           ; $5f61: $1f
    ld [de], a                                    ; $5f62: $12
    rra                                           ; $5f63: $1f
    ld hl, $203f                                  ; $5f64: $21 $3f $20
    ccf                                           ; $5f67: $3f
    jr nc, jr_0e0_5fa9                            ; $5f68: $30 $3f

    dec de                                        ; $5f6a: $1b
    rra                                           ; $5f6b: $1f
    inc e                                         ; $5f6c: $1c

jr_0e0_5f6d:
    rra                                           ; $5f6d: $1f
    jr nz, jr_0e0_5faf                            ; $5f6e: $20 $3f

    ld c, b                                       ; $5f70: $48
    ld a, a                                       ; $5f71: $7f
    ld d, b                                       ; $5f72: $50
    ld a, a                                       ; $5f73: $7f
    sub b                                         ; $5f74: $90
    rst $38                                       ; $5f75: $ff
    sub b                                         ; $5f76: $90
    rst $38                                       ; $5f77: $ff
    ld [bc], a                                    ; $5f78: $02
    ret nz                                        ; $5f79: $c0

    cp d                                          ; $5f7a: $ba
    jr nc, jr_0e0_5f6d                            ; $5f7b: $30 $f0

    ld [$14f8], sp                                ; $5f7d: $08 $f8 $14
    db $fc                                        ; $5f80: $fc
    inc d                                         ; $5f81: $14
    db $fc                                        ; $5f82: $fc
    inc h                                         ; $5f83: $24
    db $fc                                        ; $5f84: $fc
    ld [hl+], a                                   ; $5f85: $22
    cp $c2                                        ; $5f86: $fe $c2
    cp $02                                        ; $5f88: $fe $02
    cp $e4                                        ; $5f8a: $fe $e4
    db $fc                                        ; $5f8c: $fc
    inc c                                         ; $5f8d: $0c
    db $fc                                        ; $5f8e: $fc
    inc b                                         ; $5f8f: $04
    db $fc                                        ; $5f90: $fc
    ld a, [bc]                                    ; $5f91: $0a
    cp $05                                        ; $5f92: $fe $05
    rst $38                                       ; $5f94: $ff
    dec b                                         ; $5f95: $05
    rst $38                                       ; $5f96: $ff
    dec b                                         ; $5f97: $05
    rst $38                                       ; $5f98: $ff
    rst $10                                       ; $5f99: $d7
    rst $38                                       ; $5f9a: $ff
    ld a, [$e4ff]                                 ; $5f9b: $fa $ff $e4
    rst $38                                       ; $5f9e: $ff
    ld h, h                                       ; $5f9f: $64
    ld a, a                                       ; $5fa0: $7f
    inc h                                         ; $5fa1: $24
    ccf                                           ; $5fa2: $3f
    jr nz, @+$41                                  ; $5fa3: $20 $3f

    jr nz, jr_0e0_5fe6                            ; $5fa5: $20 $3f

    jr nc, @+$41                                  ; $5fa7: $30 $3f

jr_0e0_5fa9:
    jr nc, jr_0e0_5fea                            ; $5fa9: $30 $3f

    jr nz, jr_0e0_5fec                            ; $5fab: $20 $3f

    ld a, [hl+]                                   ; $5fad: $2a
    ccf                                           ; $5fae: $3f

jr_0e0_5faf:
    ld hl, $2c3f                                  ; $5faf: $21 $3f $2c
    ccf                                           ; $5fb2: $3f
    dec de                                        ; $5fb3: $1b
    rra                                           ; $5fb4: $1f
    ld [bc], a                                    ; $5fb5: $02
    rrca                                          ; $5fb6: $0f
    ld [bc], a                                    ; $5fb7: $02
    nop                                           ; $5fb8: $00
    sbc d                                         ; $5fb9: $9a
    ld a, e                                       ; $5fba: $7b
    ld a, a                                       ; $5fbb: $7f
    cpl                                           ; $5fbc: $2f
    ld a, a                                       ; $5fbd: $7f
    dec b                                         ; $5fbe: $05
    ld a, a                                       ; $5fbf: $7f
    dec b                                         ; $5fc0: $05
    ld a, a                                       ; $5fc1: $7f
    ld bc, $017f                                  ; $5fc2: $01 $7f $01
    ld a, a                                       ; $5fc5: $7f
    ld bc, $097f                                  ; $5fc6: $01 $7f $09
    ld a, a                                       ; $5fc9: $7f
    inc bc                                        ; $5fca: $03
    ld a, a                                       ; $5fcb: $7f
    inc de                                        ; $5fcc: $13
    ld a, a                                       ; $5fcd: $7f
    inc hl                                        ; $5fce: $23
    ld a, a                                       ; $5fcf: $7f
    ld b, $7e                                     ; $5fd0: $06 $7e
    inc e                                         ; $5fd2: $1c
    ld a, h                                       ; $5fd3: $7c
    ld [bc], a                                    ; $5fd4: $02
    ld [hl], b                                    ; $5fd5: $70
    ld [bc], a                                    ; $5fd6: $02
    ld b, b                                       ; $5fd7: $40
    ld [bc], a                                    ; $5fd8: $02
    nop                                           ; $5fd9: $00
    rst $38                                       ; $5fda: $ff
    dec c                                         ; $5fdb: $0d
    inc b                                         ; $5fdc: $04
    db $fc                                        ; $5fdd: $fc
    ld b, $f3                                     ; $5fde: $06 $f3
    db $fc                                        ; $5fe0: $fc
    db $e3                                        ; $5fe1: $e3
    ld a, [$01e3]                                 ; $5fe2: $fa $e3 $01
    di                                            ; $5fe5: $f3

jr_0e0_5fe6:
    ld a, [$01f3]                                 ; $5fe6: $fa $f3 $01
    ld [bc], a                                    ; $5fe9: $02

jr_0e0_5fea:
    rlca                                          ; $5fea: $07
    sbc [hl]                                      ; $5feb: $9e

jr_0e0_5fec:
    ld [$100f], sp                                ; $5fec: $08 $0f $10
    rra                                           ; $5fef: $1f
    daa                                           ; $5ff0: $27
    ccf                                           ; $5ff1: $3f
    cpl                                           ; $5ff2: $2f
    add hl, sp                                    ; $5ff3: $39
    ld e, e                                       ; $5ff4: $5b
    ld a, [hl]                                    ; $5ff5: $7e
    ld e, a                                       ; $5ff6: $5f
    ld [hl], d                                    ; $5ff7: $72
    ld e, a                                       ; $5ff8: $5f
    ld [hl], d                                    ; $5ff9: $72
    ld e, a                                       ; $5ffa: $5f
    ld [hl], l                                    ; $5ffb: $75
    cpl                                           ; $5ffc: $2f
    dec sp                                        ; $5ffd: $3b
    scf                                           ; $5ffe: $37
    ccf                                           ; $5fff: $3f
    ld c, e                                       ; $6000: $4b
    ld a, a                                       ; $6001: $7f
    ld b, c                                       ; $6002: $41
    ld a, a                                       ; $6003: $7f
    sub b                                         ; $6004: $90
    rst $38                                       ; $6005: $ff
    sub c                                         ; $6006: $91
    rst $38                                       ; $6007: $ff
    cp b                                          ; $6008: $b8
    rst $38                                       ; $6009: $ff
    ld [bc], a                                    ; $600a: $02
    ld h, b                                       ; $600b: $60
    jp c, $7010                                   ; $600c: $da $10 $70

    ld [$6478], sp                                ; $600f: $08 $78 $64
    ld a, h                                       ; $6012: $7c
    ld [hl], h                                    ; $6013: $74
    inc e                                         ; $6014: $1c
    ld e, d                                       ; $6015: $5a
    ld a, [hl]                                    ; $6016: $7e
    ld a, d                                       ; $6017: $7a
    ld c, $7a                                     ; $6018: $0e $7a
    ld c, [hl]                                    ; $601a: $4e
    ld a, d                                       ; $601b: $7a
    ld l, $74                                     ; $601c: $2e $74
    ld e, h                                       ; $601e: $5c
    ld l, h                                       ; $601f: $6c
    ld a, h                                       ; $6020: $7c
    ld e, d                                       ; $6021: $5a
    ld a, [hl]                                    ; $6022: $7e
    ld a, [bc]                                    ; $6023: $0a
    ld a, [hl]                                    ; $6024: $7e
    ld a, [bc]                                    ; $6025: $0a
    ld a, [hl]                                    ; $6026: $7e
    ld c, c                                       ; $6027: $49
    ld a, a                                       ; $6028: $7f
    dec b                                         ; $6029: $05
    ld a, a                                       ; $602a: $7f
    adc l                                         ; $602b: $8d
    rst $38                                       ; $602c: $ff
    cp h                                          ; $602d: $bc
    rst $28                                       ; $602e: $ef
    rst $38                                       ; $602f: $ff
    rst $00                                       ; $6030: $c7
    ld a, a                                       ; $6031: $7f
    ld b, l                                       ; $6032: $45
    ld a, [hl]                                    ; $6033: $7e
    ld a, a                                       ; $6034: $7f
    ld e, [hl]                                    ; $6035: $5e
    ld [hl], a                                    ; $6036: $77
    ld a, [hl]                                    ; $6037: $7e
    ld a, a                                       ; $6038: $7f
    ld e, [hl]                                    ; $6039: $5e
    ld [hl], a                                    ; $603a: $77
    ld e, [hl]                                    ; $603b: $5e
    ld a, a                                       ; $603c: $7f
    ld e, h                                       ; $603d: $5c
    ld [hl], a                                    ; $603e: $77
    ld a, h                                       ; $603f: $7c
    ld [hl], a                                    ; $6040: $77
    ld e, a                                       ; $6041: $5f
    ld a, a                                       ; $6042: $7f
    ld a, h                                       ; $6043: $7c
    ld [hl], a                                    ; $6044: $77
    ccf                                           ; $6045: $3f
    scf                                           ; $6046: $37
    inc a                                         ; $6047: $3c
    inc [hl]                                      ; $6048: $34
    inc e                                         ; $6049: $1c
    inc d                                         ; $604a: $14
    add hl, bc                                    ; $604b: $09
    ld a, a                                       ; $604c: $7f
    add hl, de                                    ; $604d: $19
    ld a, a                                       ; $604e: $7f
    ld a, c                                       ; $604f: $79
    ld a, a                                       ; $6050: $7f
    ld l, a                                       ; $6051: $6f
    ld a, l                                       ; $6052: $7d
    cpl                                           ; $6053: $2f
    ld a, b                                       ; $6054: $78
    ld l, e                                       ; $6055: $6b
    ld a, l                                       ; $6056: $7d
    ld h, $7e                                     ; $6057: $26 $7e
    ld b, $7e                                     ; $6059: $06 $7e
    ld b, $7e                                     ; $605b: $06 $7e
    ld [bc], a                                    ; $605d: $02
    ld a, [hl]                                    ; $605e: $7e
    ld [hl], $7e                                  ; $605f: $36 $7e
    ld [bc], a                                    ; $6061: $02
    ld a, [hl]                                    ; $6062: $7e
    inc a                                         ; $6063: $3c
    ld a, h                                       ; $6064: $7c
    ld h, h                                       ; $6065: $64
    ld a, h                                       ; $6066: $7c
    ld [bc], a                                    ; $6067: $02
    jr c, jr_0e0_606c                             ; $6068: $38 $02

    nop                                           ; $606a: $00
    rst $38                                       ; $606b: $ff

jr_0e0_606c:
    dec c                                         ; $606c: $0d
    inc b                                         ; $606d: $04
    db $fc                                        ; $606e: $fc
    ld b, $f3                                     ; $606f: $06 $f3
    db $fc                                        ; $6071: $fc
    db $e4                                        ; $6072: $e4
    ld a, [$01e4]                                 ; $6073: $fa $e4 $01
    db $f4                                        ; $6076: $f4
    ld a, [$01f4]                                 ; $6077: $fa $f4 $01
    ld [bc], a                                    ; $607a: $02
    rlca                                          ; $607b: $07
    sbc [hl]                                      ; $607c: $9e
    ld [$100f], sp                                ; $607d: $08 $0f $10
    rra                                           ; $6080: $1f
    daa                                           ; $6081: $27
    ccf                                           ; $6082: $3f
    cpl                                           ; $6083: $2f
    add hl, sp                                    ; $6084: $39
    ld e, e                                       ; $6085: $5b
    ld a, [hl]                                    ; $6086: $7e
    ld e, a                                       ; $6087: $5f
    ld [hl], d                                    ; $6088: $72
    ld e, a                                       ; $6089: $5f
    ld [hl], d                                    ; $608a: $72
    ld e, a                                       ; $608b: $5f
    ld [hl], l                                    ; $608c: $75
    cpl                                           ; $608d: $2f
    dec sp                                        ; $608e: $3b
    ld d, a                                       ; $608f: $57
    ld a, a                                       ; $6090: $7f
    ld c, e                                       ; $6091: $4b
    ld a, a                                       ; $6092: $7f
    sub c                                         ; $6093: $91
    rst $38                                       ; $6094: $ff
    sub c                                         ; $6095: $91
    rst $38                                       ; $6096: $ff
    cp b                                          ; $6097: $b8
    rst $38                                       ; $6098: $ff
    adc l                                         ; $6099: $8d
    rst $38                                       ; $609a: $ff
    ld [bc], a                                    ; $609b: $02
    ld h, b                                       ; $609c: $60
    cp h                                          ; $609d: $bc
    db $10                                        ; $609e: $10
    ld [hl], b                                    ; $609f: $70
    ld [$6478], sp                                ; $60a0: $08 $78 $64
    ld a, h                                       ; $60a3: $7c
    ld [hl], h                                    ; $60a4: $74
    inc e                                         ; $60a5: $1c
    ld e, d                                       ; $60a6: $5a
    ld a, [hl]                                    ; $60a7: $7e
    ld a, d                                       ; $60a8: $7a
    ld c, $7a                                     ; $60a9: $0e $7a
    ld c, [hl]                                    ; $60ab: $4e
    ld a, d                                       ; $60ac: $7a
    ld l, $74                                     ; $60ad: $2e $74
    ld e, h                                       ; $60af: $5c
    ld l, d                                       ; $60b0: $6a
    ld a, [hl]                                    ; $60b1: $7e
    ld e, d                                       ; $60b2: $5a
    ld a, [hl]                                    ; $60b3: $7e
    ld a, [bc]                                    ; $60b4: $0a
    ld a, [hl]                                    ; $60b5: $7e
    ld c, l                                       ; $60b6: $4d
    ld a, a                                       ; $60b7: $7f
    dec c                                         ; $60b8: $0d
    ld a, a                                       ; $60b9: $7f
    add hl, bc                                    ; $60ba: $09
    ld a, a                                       ; $60bb: $7f
    cp h                                          ; $60bc: $bc
    rst $28                                       ; $60bd: $ef
    rst $38                                       ; $60be: $ff
    rst $00                                       ; $60bf: $c7
    ld a, a                                       ; $60c0: $7f
    ld b, l                                       ; $60c1: $45
    ld a, [hl]                                    ; $60c2: $7e
    ld a, a                                       ; $60c3: $7f
    ld a, [hl]                                    ; $60c4: $7e
    ld [hl], a                                    ; $60c5: $77
    ld a, [hl]                                    ; $60c6: $7e
    ld a, a                                       ; $60c7: $7f
    ld a, [hl]                                    ; $60c8: $7e
    ld [hl], a                                    ; $60c9: $77
    ld e, h                                       ; $60ca: $5c
    ld a, a                                       ; $60cb: $7f
    ld e, l                                       ; $60cc: $5d
    ld [hl], a                                    ; $60cd: $77
    ld e, a                                       ; $60ce: $5f
    ld [hl], a                                    ; $60cf: $77
    ld e, h                                       ; $60d0: $5c
    ld a, a                                       ; $60d1: $7f
    ld e, [hl]                                    ; $60d2: $5e
    ld [hl], a                                    ; $60d3: $77
    ccf                                           ; $60d4: $3f
    scf                                           ; $60d5: $37
    ld e, $16                                     ; $60d6: $1e $16
    inc e                                         ; $60d8: $1c
    inc d                                         ; $60d9: $14
    ld [bc], a                                    ; $60da: $02
    nop                                           ; $60db: $00
    add c                                         ; $60dc: $81
    add hl, de                                    ; $60dd: $19
    inc b                                         ; $60de: $04
    ld a, a                                       ; $60df: $7f
    sub c                                         ; $60e0: $91
    ld a, c                                       ; $60e1: $79
    ccf                                           ; $60e2: $3f
    ld a, c                                       ; $60e3: $79
    ld l, [hl]                                    ; $60e4: $6e
    ld a, [hl]                                    ; $60e5: $7e
    ld b, d                                       ; $60e6: $42
    ld a, [hl]                                    ; $60e7: $7e
    ld [bc], a                                    ; $60e8: $02
    ld a, [hl]                                    ; $60e9: $7e
    ld b, d                                       ; $60ea: $42
    ld a, [hl]                                    ; $60eb: $7e
    ld b, d                                       ; $60ec: $42
    ld a, [hl]                                    ; $60ed: $7e
    ld [bc], a                                    ; $60ee: $02
    ld a, [hl]                                    ; $60ef: $7e
    inc c                                         ; $60f0: $0c
    ld a, h                                       ; $60f1: $7c
    ld [bc], a                                    ; $60f2: $02
    ld a, b                                       ; $60f3: $78
    ld [$ff00], sp                                ; $60f4: $08 $00 $ff
    dec c                                         ; $60f7: $0d
    inc b                                         ; $60f8: $04
    db $fc                                        ; $60f9: $fc
    ld b, $f3                                     ; $60fa: $06 $f3
    db $fc                                        ; $60fc: $fc
    db $e3                                        ; $60fd: $e3
    ld sp, hl                                     ; $60fe: $f9
    db $e3                                        ; $60ff: $e3
    ld bc, $f9f3                                  ; $6100: $01 $f3 $f9
    di                                            ; $6103: $f3
    ld bc, $0302                                  ; $6104: $01 $02 $03
    sbc [hl]                                      ; $6107: $9e
    inc b                                         ; $6108: $04
    rlca                                          ; $6109: $07
    ld [$130f], sp                                ; $610a: $08 $0f $13
    rra                                           ; $610d: $1f
    rla                                           ; $610e: $17
    inc e                                         ; $610f: $1c
    dec l                                         ; $6110: $2d
    ccf                                           ; $6111: $3f
    cpl                                           ; $6112: $2f
    add hl, sp                                    ; $6113: $39
    cpl                                           ; $6114: $2f
    add hl, sp                                    ; $6115: $39
    cpl                                           ; $6116: $2f
    ld a, [hl-]                                   ; $6117: $3a
    rla                                           ; $6118: $17
    dec e                                         ; $6119: $1d
    dec de                                        ; $611a: $1b
    rra                                           ; $611b: $1f
    dec h                                         ; $611c: $25
    ccf                                           ; $611d: $3f
    ld b, b                                       ; $611e: $40
    ld a, a                                       ; $611f: $7f
    ld c, b                                       ; $6120: $48
    ld a, a                                       ; $6121: $7f
    ld e, b                                       ; $6122: $58
    ld a, a                                       ; $6123: $7f
    cp b                                          ; $6124: $b8
    rst $38                                       ; $6125: $ff
    ld [bc], a                                    ; $6126: $02
    ldh [$b5], a                                  ; $6127: $e0 $b5
    db $10                                        ; $6129: $10
    ldh a, [$08]                                  ; $612a: $f0 $08
    ld hl, sp-$1c                                 ; $612c: $f8 $e4
    db $fc                                        ; $612e: $fc
    db $f4                                        ; $612f: $f4
    sbc h                                         ; $6130: $9c
    jp c, $fa7e                                   ; $6131: $da $7e $fa

    ld c, $fa                                     ; $6134: $0e $fa
    ld c, [hl]                                    ; $6136: $4e
    ld a, [$f4ae]                                 ; $6137: $fa $ae $f4
    call c, $fcec                                 ; $613a: $dc $ec $fc
    jp c, $8afe                                   ; $613d: $da $fe $8a

    cp $0d                                        ; $6140: $fe $0d
    rst $38                                       ; $6142: $ff
    call $05ff                                    ; $6143: $cd $ff $05
    rst $38                                       ; $6146: $ff
    adc h                                         ; $6147: $8c
    rst $38                                       ; $6148: $ff
    cp [hl]                                       ; $6149: $be
    rst $38                                       ; $614a: $ff
    ld a, a                                       ; $614b: $7f
    ld b, a                                       ; $614c: $47
    ld a, a                                       ; $614d: $7f
    ld b, l                                       ; $614e: $45
    dec sp                                        ; $614f: $3b
    ccf                                           ; $6150: $3f
    add hl, sp                                    ; $6151: $39
    cpl                                           ; $6152: $2f
    dec a                                         ; $6153: $3d
    ccf                                           ; $6154: $3f
    jr c, jr_0e0_6186                             ; $6155: $38 $2f

    ld a, [hl-]                                   ; $6157: $3a
    ccf                                           ; $6158: $3f
    jr c, jr_0e0_618a                             ; $6159: $38 $2f

    jr c, jr_0e0_618c                             ; $615b: $38 $2f

    inc a                                         ; $615d: $3c
    ld [bc], a                                    ; $615e: $02
    ccf                                           ; $615f: $3f
    add l                                         ; $6160: $85
    cpl                                           ; $6161: $2f
    add hl, sp                                    ; $6162: $39
    add hl, hl                                    ; $6163: $29
    jr c, @+$2a                                   ; $6164: $38 $28

    ld [bc], a                                    ; $6166: $02
    nop                                           ; $6167: $00
    add e                                         ; $6168: $83
    adc l                                         ; $6169: $8d
    rst $38                                       ; $616a: $ff
    dec e                                         ; $616b: $1d
    inc bc                                        ; $616c: $03
    rst $38                                       ; $616d: $ff
    sbc b                                         ; $616e: $98
    rst $28                                       ; $616f: $ef
    ld sp, hl                                     ; $6170: $f9
    ld h, [hl]                                    ; $6171: $66
    cp $4e                                        ; $6172: $fe $4e
    cp $66                                        ; $6174: $fe $66
    cp $c2                                        ; $6176: $fe $c2
    cp $02                                        ; $6178: $fe $02
    cp $02                                        ; $617a: $fe $02
    cp $82                                        ; $617c: $fe $82
    cp $62                                        ; $617e: $fe $62
    cp $02                                        ; $6180: $fe $02
    cp $74                                        ; $6182: $fe $74
    db $fc                                        ; $6184: $fc
    ret z                                         ; $6185: $c8

jr_0e0_6186:
    ld hl, sp+$02                                 ; $6186: $f8 $02
    ld a, b                                       ; $6188: $78
    rst $38                                       ; $6189: $ff

jr_0e0_618a:
    dec c                                         ; $618a: $0d
    inc b                                         ; $618b: $04

jr_0e0_618c:
    db $fc                                        ; $618c: $fc
    ld b, $f3                                     ; $618d: $06 $f3
    db $fc                                        ; $618f: $fc
    db $e4                                        ; $6190: $e4
    ld sp, hl                                     ; $6191: $f9
    db $e4                                        ; $6192: $e4
    ld bc, $f9f4                                  ; $6193: $01 $f4 $f9
    db $f4                                        ; $6196: $f4
    ld bc, $0302                                  ; $6197: $01 $02 $03
    sbc [hl]                                      ; $619a: $9e
    inc b                                         ; $619b: $04
    rlca                                          ; $619c: $07
    ld [$130f], sp                                ; $619d: $08 $0f $13
    rra                                           ; $61a0: $1f
    rla                                           ; $61a1: $17
    inc e                                         ; $61a2: $1c
    dec l                                         ; $61a3: $2d
    ccf                                           ; $61a4: $3f
    cpl                                           ; $61a5: $2f
    add hl, sp                                    ; $61a6: $39
    cpl                                           ; $61a7: $2f
    add hl, sp                                    ; $61a8: $39
    cpl                                           ; $61a9: $2f
    ld a, [hl-]                                   ; $61aa: $3a
    rla                                           ; $61ab: $17
    dec e                                         ; $61ac: $1d
    dec hl                                        ; $61ad: $2b
    ccf                                           ; $61ae: $3f
    ld b, l                                       ; $61af: $45
    ld a, a                                       ; $61b0: $7f
    ld b, b                                       ; $61b1: $40
    ld a, a                                       ; $61b2: $7f
    sbc c                                         ; $61b3: $99
    rst $38                                       ; $61b4: $ff
    sub b                                         ; $61b5: $90
    rst $38                                       ; $61b6: $ff
    cp b                                          ; $61b7: $b8
    rst $38                                       ; $61b8: $ff
    ld [bc], a                                    ; $61b9: $02
    ldh [$b8], a                                  ; $61ba: $e0 $b8
    db $10                                        ; $61bc: $10
    ldh a, [$08]                                  ; $61bd: $f0 $08
    ld hl, sp-$1c                                 ; $61bf: $f8 $e4
    db $fc                                        ; $61c1: $fc
    db $f4                                        ; $61c2: $f4
    sbc h                                         ; $61c3: $9c
    jp c, $fa7e                                   ; $61c4: $da $7e $fa

    ld c, $fa                                     ; $61c7: $0e $fa
    ld c, [hl]                                    ; $61c9: $4e
    ld a, [$f4ae]                                 ; $61ca: $fa $ae $f4
    call c, $feea                                 ; $61cd: $dc $ea $fe
    jp c, $8afe                                   ; $61d0: $da $fe $8a

    cp $8d                                        ; $61d3: $fe $8d
    rst $38                                       ; $61d5: $ff
    dec c                                         ; $61d6: $0d
    rst $38                                       ; $61d7: $ff
    adc c                                         ; $61d8: $89
    rst $38                                       ; $61d9: $ff
    sbc h                                         ; $61da: $9c
    rst $38                                       ; $61db: $ff
    rst $18                                       ; $61dc: $df
    rst $38                                       ; $61dd: $ff
    ei                                            ; $61de: $fb
    sbc a                                         ; $61df: $9f
    ld [hl], c                                    ; $61e0: $71
    ld a, a                                       ; $61e1: $7f
    ld [hl], e                                    ; $61e2: $73
    ld e, a                                       ; $61e3: $5f
    ld [hl], b                                    ; $61e4: $70
    ld a, a                                       ; $61e5: $7f
    ld [hl], b                                    ; $61e6: $70
    ld e, a                                       ; $61e7: $5f
    ld [hl], c                                    ; $61e8: $71
    ld a, a                                       ; $61e9: $7f
    ld [hl], c                                    ; $61ea: $71
    ld e, a                                       ; $61eb: $5f
    ld [hl], b                                    ; $61ec: $70
    ld a, a                                       ; $61ed: $7f
    ld a, b                                       ; $61ee: $78
    ld e, a                                       ; $61ef: $5f
    ld a, a                                       ; $61f0: $7f
    ld e, a                                       ; $61f1: $5f
    ld [hl], b                                    ; $61f2: $70
    ld d, b                                       ; $61f3: $50
    ld b, $00                                     ; $61f4: $06 $00
    add e                                         ; $61f6: $83
    add hl, de                                    ; $61f7: $19
    rst $38                                       ; $61f8: $ff
    db $fd                                        ; $61f9: $fd
    ld [bc], a                                    ; $61fa: $02
    rst $38                                       ; $61fb: $ff
    sub l                                         ; $61fc: $95
    ld sp, hl                                     ; $61fd: $f9
    ccf                                           ; $61fe: $3f
    db $fd                                        ; $61ff: $fd
    xor [hl]                                      ; $6200: $ae
    cp $b6                                        ; $6201: $fe $b6
    cp $66                                        ; $6203: $fe $66
    cp $02                                        ; $6205: $fe $02
    cp $82                                        ; $6207: $fe $82
    cp $e2                                        ; $6209: $fe $e2
    cp $02                                        ; $620b: $fe $02
    cp $74                                        ; $620d: $fe $74
    db $fc                                        ; $620f: $fc
    call z, Call_000_02fc                         ; $6210: $cc $fc $02
    ld a, b                                       ; $6213: $78
    inc b                                         ; $6214: $04
    nop                                           ; $6215: $00
    rst $38                                       ; $6216: $ff
    dec c                                         ; $6217: $0d
    inc b                                         ; $6218: $04
    db $fc                                        ; $6219: $fc
    ld b, $f3                                     ; $621a: $06 $f3
    db $fc                                        ; $621c: $fc
    db $e3                                        ; $621d: $e3
    ld sp, hl                                     ; $621e: $f9
    db $e3                                        ; $621f: $e3
    ld bc, $f9f3                                  ; $6220: $01 $f3 $f9
    di                                            ; $6223: $f3
    ld bc, $0302                                  ; $6224: $01 $02 $03
    sbc [hl]                                      ; $6227: $9e
    inc b                                         ; $6228: $04
    rlca                                          ; $6229: $07
    ld [$130f], sp                                ; $622a: $08 $0f $13
    rra                                           ; $622d: $1f
    rla                                           ; $622e: $17
    inc e                                         ; $622f: $1c
    dec l                                         ; $6230: $2d
    ccf                                           ; $6231: $3f
    cpl                                           ; $6232: $2f
    add hl, sp                                    ; $6233: $39
    cpl                                           ; $6234: $2f
    add hl, sp                                    ; $6235: $39
    cpl                                           ; $6236: $2f
    ld a, [hl-]                                   ; $6237: $3a
    rla                                           ; $6238: $17
    dec e                                         ; $6239: $1d
    dec de                                        ; $623a: $1b
    rra                                           ; $623b: $1f
    dec h                                         ; $623c: $25
    ccf                                           ; $623d: $3f
    ld b, b                                       ; $623e: $40
    ld a, a                                       ; $623f: $7f
    ld c, b                                       ; $6240: $48
    ld a, a                                       ; $6241: $7f
    ld e, c                                       ; $6242: $59
    ld a, a                                       ; $6243: $7f
    sbc b                                         ; $6244: $98
    rst $38                                       ; $6245: $ff
    ld [bc], a                                    ; $6246: $02
    ldh [$a1], a                                  ; $6247: $e0 $a1
    db $10                                        ; $6249: $10
    ldh a, [$08]                                  ; $624a: $f0 $08
    ld hl, sp-$1c                                 ; $624c: $f8 $e4
    db $fc                                        ; $624e: $fc
    db $f4                                        ; $624f: $f4
    sbc h                                         ; $6250: $9c
    jp c, $fa7e                                   ; $6251: $da $7e $fa

    ld c, $fa                                     ; $6254: $0e $fa
    ld c, [hl]                                    ; $6256: $4e
    ld a, [$f4ae]                                 ; $6257: $fa $ae $f4
    call c, $fcec                                 ; $625a: $dc $ec $fc
    jp c, $8afe                                   ; $625d: $da $fe $8a

    cp $0a                                        ; $6260: $fe $0a
    cp $8a                                        ; $6262: $fe $8a
    cp $1d                                        ; $6264: $fe $1d
    rst $38                                       ; $6266: $ff
    adc b                                         ; $6267: $88
    rst $38                                       ; $6268: $ff
    call c, $ff02                                 ; $6269: $dc $02 $ff
    sbc c                                         ; $626c: $99
    adc a                                         ; $626d: $8f
    ei                                            ; $626e: $fb
    adc a                                         ; $626f: $8f
    ld [hl], c                                    ; $6270: $71
    ld a, a                                       ; $6271: $7f
    ld a, c                                       ; $6272: $79
    ld e, a                                       ; $6273: $5f
    ld [hl], e                                    ; $6274: $73
    ld a, a                                       ; $6275: $7f
    add hl, sp                                    ; $6276: $39
    cpl                                           ; $6277: $2f
    jr c, @+$41                                   ; $6278: $38 $3f

    jr c, jr_0e0_62ab                             ; $627a: $38 $2f

    jr c, jr_0e0_62ad                             ; $627c: $38 $2f

    dec sp                                        ; $627e: $3b
    ccf                                           ; $627f: $3f
    inc a                                         ; $6280: $3c
    scf                                           ; $6281: $37
    rra                                           ; $6282: $1f
    rla                                           ; $6283: $17
    dec e                                         ; $6284: $1d
    rla                                           ; $6285: $17
    ld [bc], a                                    ; $6286: $02
    rlca                                          ; $6287: $07
    sbc h                                         ; $6288: $9c
    sbc c                                         ; $6289: $99
    rst $38                                       ; $628a: $ff
    ld sp, $fdff                                  ; $628b: $31 $ff $fd
    rst $38                                       ; $628e: $ff
    cp $f2                                        ; $628f: $fe $f2
    ld a, $f2                                     ; $6291: $3e $f2
    ld a, $fe                                     ; $6293: $3e $fe
    ld h, $fe                                     ; $6295: $26 $fe
    add d                                         ; $6297: $82
    cp $22                                        ; $6298: $fe $22
    cp $02                                        ; $629a: $fe $02
    cp $86                                        ; $629c: $fe $86
    cp $1c                                        ; $629e: $fe $1c
    db $fc                                        ; $62a0: $fc
    ld a, b                                       ; $62a1: $78
    ld hl, sp+$40                                 ; $62a2: $f8 $40
    ret nz                                        ; $62a4: $c0

    ld [bc], a                                    ; $62a5: $02
    add b                                         ; $62a6: $80
    ld [bc], a                                    ; $62a7: $02
    nop                                           ; $62a8: $00
    rst $38                                       ; $62a9: $ff
    dec c                                         ; $62aa: $0d

jr_0e0_62ab:
    inc b                                         ; $62ab: $04
    db $fc                                        ; $62ac: $fc

jr_0e0_62ad:
    ld b, $f3                                     ; $62ad: $06 $f3
    db $fc                                        ; $62af: $fc
    db $e3                                        ; $62b0: $e3
    ld a, [$01e3]                                 ; $62b1: $fa $e3 $01
    di                                            ; $62b4: $f3
    ld sp, hl                                     ; $62b5: $f9
    di                                            ; $62b6: $f3
    ld bc, $0702                                  ; $62b7: $01 $02 $07
    sbc [hl]                                      ; $62ba: $9e
    ld [$140f], sp                                ; $62bb: $08 $0f $14
    rra                                           ; $62be: $1f
    jr z, jr_0e0_6300                             ; $62bf: $28 $3f

    jr z, jr_0e0_6302                             ; $62c1: $28 $3f

    ld d, h                                       ; $62c3: $54
    ld a, a                                       ; $62c4: $7f
    ld d, b                                       ; $62c5: $50
    ld a, a                                       ; $62c6: $7f
    inc [hl]                                      ; $62c7: $34
    ccf                                           ; $62c8: $3f
    inc d                                         ; $62c9: $14
    rra                                           ; $62ca: $1f
    ld a, [hl+]                                   ; $62cb: $2a
    ccf                                           ; $62cc: $3f
    ld hl, $483f                                  ; $62cd: $21 $3f $48
    ld a, a                                       ; $62d0: $7f
    ld b, h                                       ; $62d1: $44
    ld a, a                                       ; $62d2: $7f
    add $ff                                       ; $62d3: $c6 $ff
    call nz, $ccff                                ; $62d5: $c4 $ff $cc
    rst $38                                       ; $62d8: $ff
    ld [bc], a                                    ; $62d9: $02
    ld h, b                                       ; $62da: $60
    sub h                                         ; $62db: $94
    jr jr_0e0_6356                                ; $62dc: $18 $78

    inc b                                         ; $62de: $04
    ld a, h                                       ; $62df: $7c
    jr c, jr_0e0_635a                             ; $62e0: $38 $78

    ld a, h                                       ; $62e2: $7c
    ld c, h                                       ; $62e3: $4c
    ld l, [hl]                                    ; $62e4: $6e
    ld a, d                                       ; $62e5: $7a
    ld a, a                                       ; $62e6: $7f
    ld c, c                                       ; $62e7: $49
    ld a, a                                       ; $62e8: $7f
    ld c, a                                       ; $62e9: $4f
    ld a, h                                       ; $62ea: $7c
    ld d, h                                       ; $62eb: $54
    inc a                                         ; $62ec: $3c
    ld l, h                                       ; $62ed: $6c
    ld e, [hl]                                    ; $62ee: $5e
    ld a, [hl]                                    ; $62ef: $7e
    ld [bc], a                                    ; $62f0: $02
    ld [hl], h                                    ; $62f1: $74
    and h                                         ; $62f2: $a4
    jr nz, jr_0e0_6355                            ; $62f3: $20 $60

    db $10                                        ; $62f5: $10
    ld [hl], b                                    ; $62f6: $70
    jr nc, @+$72                                  ; $62f7: $30 $70

    jr c, jr_0e0_6373                             ; $62f9: $38 $78

    ld h, [hl]                                    ; $62fb: $66
    ld a, a                                       ; $62fc: $7f
    db $e3                                        ; $62fd: $e3
    rst $38                                       ; $62fe: $ff
    and e                                         ; $62ff: $a3

jr_0e0_6300:
    rst $38                                       ; $6300: $ff
    xor [hl]                                      ; $6301: $ae

jr_0e0_6302:
    ei                                            ; $6302: $fb
    sbc a                                         ; $6303: $9f
    pop af                                        ; $6304: $f1
    sbc [hl]                                      ; $6305: $9e
    di                                            ; $6306: $f3
    ld c, h                                       ; $6307: $4c
    ld a, a                                       ; $6308: $7f
    ld b, b                                       ; $6309: $40
    ld a, a                                       ; $630a: $7f
    ld b, b                                       ; $630b: $40
    ld a, a                                       ; $630c: $7f
    ld b, b                                       ; $630d: $40
    ld a, a                                       ; $630e: $7f
    ld b, a                                       ; $630f: $47
    ld a, a                                       ; $6310: $7f
    sub b                                         ; $6311: $90
    rst $38                                       ; $6312: $ff
    adc a                                         ; $6313: $8f
    rst $38                                       ; $6314: $ff
    ld a, h                                       ; $6315: $7c
    ld a, a                                       ; $6316: $7f
    ld [bc], a                                    ; $6317: $02
    rra                                           ; $6318: $1f
    ld [bc], a                                    ; $6319: $02
    nop                                           ; $631a: $00
    sbc h                                         ; $631b: $9c
    inc d                                         ; $631c: $14
    db $fc                                        ; $631d: $fc
    ld l, $fa                                     ; $631e: $2e $fa
    xor $f0                                       ; $6320: $ee $f0
    rst $38                                       ; $6322: $ff
    di                                            ; $6323: $f3
    rst $20                                       ; $6324: $e7
    push hl                                       ; $6325: $e5
    and a                                         ; $6326: $a7
    rst $20                                       ; $6327: $e7
    and a                                         ; $6328: $a7
    push hl                                       ; $6329: $e5
    daa                                           ; $632a: $27
    rst $20                                       ; $632b: $e7
    daa                                           ; $632c: $27
    push hl                                       ; $632d: $e5
    rla                                           ; $632e: $17
    push af                                       ; $632f: $f5
    rla                                           ; $6330: $17
    rst $30                                       ; $6331: $f7
    scf                                           ; $6332: $37
    push af                                       ; $6333: $f5
    ld c, a                                       ; $6334: $4f
    db $fd                                        ; $6335: $fd
    rst $30                                       ; $6336: $f7
    push af                                       ; $6337: $f5
    inc b                                         ; $6338: $04
    nop                                           ; $6339: $00
    rst $38                                       ; $633a: $ff
    dec c                                         ; $633b: $0d
    inc b                                         ; $633c: $04
    db $fc                                        ; $633d: $fc
    ld b, $f3                                     ; $633e: $06 $f3
    db $fc                                        ; $6340: $fc
    db $e4                                        ; $6341: $e4
    ld a, [$01e4]                                 ; $6342: $fa $e4 $01
    db $f4                                        ; $6345: $f4
    ld sp, hl                                     ; $6346: $f9
    db $f4                                        ; $6347: $f4
    ld bc, $0702                                  ; $6348: $01 $02 $07
    sbc [hl]                                      ; $634b: $9e
    ld [$140f], sp                                ; $634c: $08 $0f $14
    rra                                           ; $634f: $1f
    jr z, jr_0e0_6391                             ; $6350: $28 $3f

    ld c, b                                       ; $6352: $48
    ld a, a                                       ; $6353: $7f
    or h                                          ; $6354: $b4

jr_0e0_6355:
    rst $38                                       ; $6355: $ff

jr_0e0_6356:
    ld d, b                                       ; $6356: $50
    ld e, a                                       ; $6357: $5f
    inc d                                         ; $6358: $14
    rra                                           ; $6359: $1f

jr_0e0_635a:
    inc d                                         ; $635a: $14
    rra                                           ; $635b: $1f
    ld a, [hl+]                                   ; $635c: $2a
    ccf                                           ; $635d: $3f
    ld hl, $683f                                  ; $635e: $21 $3f $68
    ld a, a                                       ; $6361: $7f
    ld b, h                                       ; $6362: $44
    ld a, a                                       ; $6363: $7f
    jp nz, $c4ff                                  ; $6364: $c2 $ff $c4

    rst $38                                       ; $6367: $ff
    call z, Call_000_02ff                         ; $6368: $cc $ff $02
    ld h, b                                       ; $636b: $60
    sub h                                         ; $636c: $94
    jr jr_0e0_63e7                                ; $636d: $18 $78

    inc b                                         ; $636f: $04
    ld a, h                                       ; $6370: $7c
    jr c, @+$7a                                   ; $6371: $38 $78

jr_0e0_6373:
    ld a, h                                       ; $6373: $7c
    ld c, h                                       ; $6374: $4c
    ld l, [hl]                                    ; $6375: $6e
    ld a, d                                       ; $6376: $7a
    ld a, a                                       ; $6377: $7f
    ld c, c                                       ; $6378: $49
    ld a, a                                       ; $6379: $7f
    ld c, a                                       ; $637a: $4f
    ld a, h                                       ; $637b: $7c
    ld d, h                                       ; $637c: $54
    inc a                                         ; $637d: $3c
    ld l, h                                       ; $637e: $6c
    ld e, [hl]                                    ; $637f: $5e
    ld a, [hl]                                    ; $6380: $7e
    ld [bc], a                                    ; $6381: $02
    ld [hl], h                                    ; $6382: $74
    and b                                         ; $6383: $a0
    db $10                                        ; $6384: $10
    ld [hl], b                                    ; $6385: $70
    jr nc, jr_0e0_63f8                            ; $6386: $30 $70

    jr c, jr_0e0_6402                             ; $6388: $38 $78

    inc d                                         ; $638a: $14
    ld a, h                                       ; $638b: $7c
    and $ff                                       ; $638c: $e6 $ff
    and e                                         ; $638e: $a3
    rst $38                                       ; $638f: $ff
    and e                                         ; $6390: $a3

jr_0e0_6391:
    rst $38                                       ; $6391: $ff
    xor [hl]                                      ; $6392: $ae
    ei                                            ; $6393: $fb
    sbc a                                         ; $6394: $9f
    pop af                                        ; $6395: $f1
    ld e, [hl]                                    ; $6396: $5e
    ld [hl], e                                    ; $6397: $73
    ld e, h                                       ; $6398: $5c
    ld a, a                                       ; $6399: $7f
    ld h, b                                       ; $639a: $60
    ld a, a                                       ; $639b: $7f
    ld b, b                                       ; $639c: $40
    ld a, a                                       ; $639d: $7f
    ld h, c                                       ; $639e: $61
    ld a, a                                       ; $639f: $7f
    add hl, sp                                    ; $63a0: $39
    ccf                                           ; $63a1: $3f
    scf                                           ; $63a2: $37
    ccf                                           ; $63a3: $3f
    ld [bc], a                                    ; $63a4: $02
    rra                                           ; $63a5: $1f
    ld b, $00                                     ; $63a6: $06 $00
    sbc d                                         ; $63a8: $9a
    ld e, $fa                                     ; $63a9: $1e $fa
    xor $f0                                       ; $63ab: $ee $f0
    rst $38                                       ; $63ad: $ff
    di                                            ; $63ae: $f3
    ld h, a                                       ; $63af: $67
    push hl                                       ; $63b0: $e5
    ld h, a                                       ; $63b1: $67
    rst $20                                       ; $63b2: $e7
    daa                                           ; $63b3: $27
    push hl                                       ; $63b4: $e5
    daa                                           ; $63b5: $27
    rst $20                                       ; $63b6: $e7
    ld h, a                                       ; $63b7: $67
    push hl                                       ; $63b8: $e5
    rst $00                                       ; $63b9: $c7
    push bc                                       ; $63ba: $c5
    ld b, a                                       ; $63bb: $47
    rst $00                                       ; $63bc: $c7
    add a                                         ; $63bd: $87
    add l                                         ; $63be: $85
    ld b, a                                       ; $63bf: $47
    push bc                                       ; $63c0: $c5
    rst $00                                       ; $63c1: $c7
    push bc                                       ; $63c2: $c5
    ld b, $00                                     ; $63c3: $06 $00
    rst $38                                       ; $63c5: $ff
    dec c                                         ; $63c6: $0d
    inc b                                         ; $63c7: $04
    db $fc                                        ; $63c8: $fc
    ld b, $f3                                     ; $63c9: $06 $f3
    db $fc                                        ; $63cb: $fc
    db $e3                                        ; $63cc: $e3
    ld a, [$01e3]                                 ; $63cd: $fa $e3 $01
    di                                            ; $63d0: $f3
    ld sp, hl                                     ; $63d1: $f9
    di                                            ; $63d2: $f3
    rst $38                                       ; $63d3: $ff
    ld [bc], a                                    ; $63d4: $02
    rlca                                          ; $63d5: $07
    sbc [hl]                                      ; $63d6: $9e
    ld [$140f], sp                                ; $63d7: $08 $0f $14
    rra                                           ; $63da: $1f
    jr z, jr_0e0_641c                             ; $63db: $28 $3f

    jr z, @+$41                                   ; $63dd: $28 $3f

    ld d, h                                       ; $63df: $54
    ld a, a                                       ; $63e0: $7f
    ld d, b                                       ; $63e1: $50
    ld a, a                                       ; $63e2: $7f
    inc [hl]                                      ; $63e3: $34
    ccf                                           ; $63e4: $3f
    inc d                                         ; $63e5: $14
    rra                                           ; $63e6: $1f

jr_0e0_63e7:
    ld a, [hl+]                                   ; $63e7: $2a
    ccf                                           ; $63e8: $3f
    ld hl, $283f                                  ; $63e9: $21 $3f $28
    ccf                                           ; $63ec: $3f
    ld b, h                                       ; $63ed: $44
    ld a, a                                       ; $63ee: $7f
    jp nz, $c4ff                                  ; $63ef: $c2 $ff $c4

    rst $38                                       ; $63f2: $ff
    adc b                                         ; $63f3: $88
    rst $38                                       ; $63f4: $ff
    ld [bc], a                                    ; $63f5: $02
    ld h, b                                       ; $63f6: $60
    sub h                                         ; $63f7: $94

jr_0e0_63f8:
    jr jr_0e0_6472                                ; $63f8: $18 $78

    inc b                                         ; $63fa: $04
    ld a, h                                       ; $63fb: $7c
    jr c, jr_0e0_6476                             ; $63fc: $38 $78

    ld a, h                                       ; $63fe: $7c
    ld c, h                                       ; $63ff: $4c
    ld l, [hl]                                    ; $6400: $6e
    ld a, d                                       ; $6401: $7a

jr_0e0_6402:
    ld a, a                                       ; $6402: $7f
    ld c, c                                       ; $6403: $49
    ld a, a                                       ; $6404: $7f
    ld c, a                                       ; $6405: $4f
    ld a, h                                       ; $6406: $7c
    ld d, h                                       ; $6407: $54
    inc a                                         ; $6408: $3c
    ld l, h                                       ; $6409: $6c
    ld e, [hl]                                    ; $640a: $5e
    ld a, [hl]                                    ; $640b: $7e
    ld [bc], a                                    ; $640c: $02
    ld [hl], h                                    ; $640d: $74
    and d                                         ; $640e: $a2
    jr nz, jr_0e0_6471                            ; $640f: $20 $60

    db $10                                        ; $6411: $10
    ld [hl], b                                    ; $6412: $70
    jr nc, jr_0e0_6485                            ; $6413: $30 $70

    jr nc, jr_0e0_6487                            ; $6415: $30 $70

    ld b, h                                       ; $6417: $44
    ld a, a                                       ; $6418: $7f
    adc $ff                                       ; $6419: $ce $ff
    add a                                         ; $641b: $87

jr_0e0_641c:
    rst $38                                       ; $641c: $ff
    call nz, $f8ff                                ; $641d: $c4 $ff $f8
    rst $08                                       ; $6420: $cf
    ld a, h                                       ; $6421: $7c
    ld b, a                                       ; $6422: $47
    ld a, b                                       ; $6423: $78
    ld a, a                                       ; $6424: $7f
    ld b, b                                       ; $6425: $40
    ld a, a                                       ; $6426: $7f
    ld b, d                                       ; $6427: $42
    ld a, a                                       ; $6428: $7f
    jp nz, $c4ff                                  ; $6429: $c2 $ff $c4

    rst $38                                       ; $642c: $ff
    adc b                                         ; $642d: $88
    rst $38                                       ; $642e: $ff
    jp Jump_000_02ff                              ; $642f: $c3 $ff $02


    ccf                                           ; $6432: $3f
    inc b                                         ; $6433: $04
    nop                                           ; $6434: $00
    sbc h                                         ; $6435: $9c
    inc b                                         ; $6436: $04
    inc a                                         ; $6437: $3c
    ld c, $3e                                     ; $6438: $0e $3e
    ccf                                           ; $643a: $3f
    add hl, sp                                    ; $643b: $39
    ccf                                           ; $643c: $3f
    dec sp                                        ; $643d: $3b
    ccf                                           ; $643e: $3f
    dec a                                         ; $643f: $3d
    rra                                           ; $6440: $1f
    ccf                                           ; $6441: $3f
    rrca                                          ; $6442: $0f
    dec a                                         ; $6443: $3d
    rrca                                          ; $6444: $0f
    ccf                                           ; $6445: $3f
    rlca                                          ; $6446: $07
    dec a                                         ; $6447: $3d
    rlca                                          ; $6448: $07
    dec a                                         ; $6449: $3d
    rra                                           ; $644a: $1f
    ccf                                           ; $644b: $3f
    ld sp, $2f3f                                  ; $644c: $31 $3f $2f
    ccf                                           ; $644f: $3f
    scf                                           ; $6450: $37
    dec [hl]                                      ; $6451: $35
    inc b                                         ; $6452: $04
    nop                                           ; $6453: $00
    rst $38                                       ; $6454: $ff
    dec c                                         ; $6455: $0d
    inc b                                         ; $6456: $04
    db $fc                                        ; $6457: $fc
    ld b, $f3                                     ; $6458: $06 $f3
    db $fc                                        ; $645a: $fc
    db $e4                                        ; $645b: $e4
    ld a, [$01e4]                                 ; $645c: $fa $e4 $01
    db $f4                                        ; $645f: $f4
    ld sp, hl                                     ; $6460: $f9
    db $f4                                        ; $6461: $f4
    cp $02                                        ; $6462: $fe $02
    rlca                                          ; $6464: $07
    sbc [hl]                                      ; $6465: $9e
    ld [$140f], sp                                ; $6466: $08 $0f $14
    rra                                           ; $6469: $1f
    jr z, jr_0e0_64ab                             ; $646a: $28 $3f

    ld c, b                                       ; $646c: $48
    ld a, a                                       ; $646d: $7f
    or h                                          ; $646e: $b4
    rst $38                                       ; $646f: $ff
    ld d, b                                       ; $6470: $50

jr_0e0_6471:
    ld e, a                                       ; $6471: $5f

jr_0e0_6472:
    inc d                                         ; $6472: $14
    rra                                           ; $6473: $1f
    inc d                                         ; $6474: $14
    rra                                           ; $6475: $1f

jr_0e0_6476:
    ld a, [hl+]                                   ; $6476: $2a
    ccf                                           ; $6477: $3f
    ld hl, $683f                                  ; $6478: $21 $3f $68
    ld a, a                                       ; $647b: $7f
    ld b, h                                       ; $647c: $44
    ld a, a                                       ; $647d: $7f
    jp nz, $c4ff                                  ; $647e: $c2 $ff $c4

    rst $38                                       ; $6481: $ff
    call z, Call_000_02ff                         ; $6482: $cc $ff $02

jr_0e0_6485:
    ld h, b                                       ; $6485: $60
    sub h                                         ; $6486: $94

jr_0e0_6487:
    jr jr_0e0_6501                                ; $6487: $18 $78

    inc b                                         ; $6489: $04
    ld a, h                                       ; $648a: $7c
    jr c, jr_0e0_6505                             ; $648b: $38 $78

    ld a, h                                       ; $648d: $7c
    ld c, h                                       ; $648e: $4c
    ld l, [hl]                                    ; $648f: $6e
    ld a, d                                       ; $6490: $7a
    ld a, a                                       ; $6491: $7f
    ld c, c                                       ; $6492: $49
    ld a, a                                       ; $6493: $7f
    ld c, a                                       ; $6494: $4f
    ld a, h                                       ; $6495: $7c
    ld d, h                                       ; $6496: $54
    inc a                                         ; $6497: $3c
    ld l, h                                       ; $6498: $6c
    ld e, [hl]                                    ; $6499: $5e
    ld a, [hl]                                    ; $649a: $7e
    ld [bc], a                                    ; $649b: $02
    ld [hl], h                                    ; $649c: $74
    and d                                         ; $649d: $a2
    db $10                                        ; $649e: $10
    ld [hl], b                                    ; $649f: $70
    jr nc, jr_0e0_6512                            ; $64a0: $30 $70

    jr nc, @+$72                                  ; $64a2: $30 $70

    db $10                                        ; $64a4: $10
    ld [hl], b                                    ; $64a5: $70
    and $ff                                       ; $64a6: $e6 $ff
    and e                                         ; $64a8: $a3
    rst $38                                       ; $64a9: $ff
    and e                                         ; $64aa: $a3

jr_0e0_64ab:
    rst $38                                       ; $64ab: $ff
    xor [hl]                                      ; $64ac: $ae
    ei                                            ; $64ad: $fb
    sbc a                                         ; $64ae: $9f
    pop af                                        ; $64af: $f1
    ld e, [hl]                                    ; $64b0: $5e
    ld [hl], e                                    ; $64b1: $73
    ld c, h                                       ; $64b2: $4c
    ld a, a                                       ; $64b3: $7f
    ld b, b                                       ; $64b4: $40
    ld a, a                                       ; $64b5: $7f
    ld b, b                                       ; $64b6: $40
    ld a, a                                       ; $64b7: $7f
    ld b, a                                       ; $64b8: $47
    ld a, a                                       ; $64b9: $7f
    add b                                         ; $64ba: $80
    rst $38                                       ; $64bb: $ff
    add e                                         ; $64bc: $83
    rst $38                                       ; $64bd: $ff
    ld a, h                                       ; $64be: $7c
    ld a, a                                       ; $64bf: $7f
    ld [bc], a                                    ; $64c0: $02
    rra                                           ; $64c1: $1f
    inc b                                         ; $64c2: $04
    nop                                           ; $64c3: $00
    add h                                         ; $64c4: $84
    ld [bc], a                                    ; $64c5: $02
    ld e, $1f                                     ; $64c6: $1e $1f
    dec e                                         ; $64c8: $1d
    ld [bc], a                                    ; $64c9: $02
    ld e, $90                                     ; $64ca: $1e $90
    ld [de], a                                    ; $64cc: $12
    ld e, $12                                     ; $64cd: $1e $12
    ld e, $11                                     ; $64cf: $1e $11
    rra                                           ; $64d1: $1f
    inc bc                                        ; $64d2: $03
    rra                                           ; $64d3: $1f
    dec bc                                        ; $64d4: $0b
    rra                                           ; $64d5: $1f
    ld c, $1e                                     ; $64d6: $0e $1e
    inc c                                         ; $64d8: $0c
    inc e                                         ; $64d9: $1c
    inc c                                         ; $64da: $0c
    inc e                                         ; $64db: $1c
    ld [bc], a                                    ; $64dc: $02
    db $10                                        ; $64dd: $10
    add c                                         ; $64de: $81
    ld [$1803], sp                                ; $64df: $08 $03 $18
    inc b                                         ; $64e2: $04
    nop                                           ; $64e3: $00
    rst $38                                       ; $64e4: $ff
    dec c                                         ; $64e5: $0d
    inc b                                         ; $64e6: $04
    db $fc                                        ; $64e7: $fc
    ld b, $f3                                     ; $64e8: $06 $f3
    db $fc                                        ; $64ea: $fc
    db $e3                                        ; $64eb: $e3
    ld a, [$01e3]                                 ; $64ec: $fa $e3 $01
    di                                            ; $64ef: $f3
    ld sp, hl                                     ; $64f0: $f9
    di                                            ; $64f1: $f3
    ld bc, $0702                                  ; $64f2: $01 $02 $07
    sbc [hl]                                      ; $64f5: $9e
    ld [$140f], sp                                ; $64f6: $08 $0f $14
    rra                                           ; $64f9: $1f
    jr z, jr_0e0_653b                             ; $64fa: $28 $3f

    jr z, jr_0e0_653d                             ; $64fc: $28 $3f

    ld d, h                                       ; $64fe: $54
    ld a, a                                       ; $64ff: $7f
    ld d, b                                       ; $6500: $50

jr_0e0_6501:
    ld a, a                                       ; $6501: $7f
    inc [hl]                                      ; $6502: $34
    ccf                                           ; $6503: $3f
    inc d                                         ; $6504: $14

jr_0e0_6505:
    rra                                           ; $6505: $1f
    ld a, [hl+]                                   ; $6506: $2a
    ccf                                           ; $6507: $3f
    ld hl, $483f                                  ; $6508: $21 $3f $48
    ld a, a                                       ; $650b: $7f
    ld b, h                                       ; $650c: $44
    ld a, a                                       ; $650d: $7f
    jp nz, $c6ff                                  ; $650e: $c2 $ff $c6

    rst $38                                       ; $6511: $ff

jr_0e0_6512:
    call nz, Call_000_02ff                        ; $6512: $c4 $ff $02
    ld h, b                                       ; $6515: $60
    sub h                                         ; $6516: $94
    jr jr_0e0_6591                                ; $6517: $18 $78

    inc b                                         ; $6519: $04
    ld a, h                                       ; $651a: $7c
    jr c, jr_0e0_6595                             ; $651b: $38 $78

    ld a, h                                       ; $651d: $7c
    ld c, h                                       ; $651e: $4c
    ld l, [hl]                                    ; $651f: $6e
    ld a, d                                       ; $6520: $7a
    ld a, a                                       ; $6521: $7f
    ld c, c                                       ; $6522: $49
    ld a, a                                       ; $6523: $7f
    ld c, a                                       ; $6524: $4f
    ld a, h                                       ; $6525: $7c
    ld d, h                                       ; $6526: $54
    inc a                                         ; $6527: $3c
    ld l, h                                       ; $6528: $6c
    ld e, [hl]                                    ; $6529: $5e
    ld a, [hl]                                    ; $652a: $7e
    ld [bc], a                                    ; $652b: $02
    ld [hl], h                                    ; $652c: $74
    and h                                         ; $652d: $a4
    jr nz, jr_0e0_6590                            ; $652e: $20 $60

    db $10                                        ; $6530: $10
    ld [hl], b                                    ; $6531: $70
    jr nc, jr_0e0_65a4                            ; $6532: $30 $70

    jr nc, jr_0e0_65a6                            ; $6534: $30 $70

    ld [hl], a                                    ; $6536: $77
    ld a, a                                       ; $6537: $7f
    ld d, c                                       ; $6538: $51
    ld a, a                                       ; $6539: $7f
    xor b                                         ; $653a: $a8

jr_0e0_653b:
    rst $38                                       ; $653b: $ff
    xor e                                         ; $653c: $ab

jr_0e0_653d:
    cp $87                                        ; $653d: $fe $87
    db $fc                                        ; $653f: $fc
    add e                                         ; $6540: $83
    rst $38                                       ; $6541: $ff
    add c                                         ; $6542: $81
    rst $38                                       ; $6543: $ff
    ret nz                                        ; $6544: $c0

    rst $38                                       ; $6545: $ff
    jp nz, $84ff                                  ; $6546: $c2 $ff $84

    rst $38                                       ; $6549: $ff
    add h                                         ; $654a: $84
    rst $38                                       ; $654b: $ff
    pop hl                                        ; $654c: $e1
    rst $38                                       ; $654d: $ff
    rst $18                                       ; $654e: $df
    rst $38                                       ; $654f: $ff
    ld [c], a                                     ; $6550: $e2

jr_0e0_6551:
    cp $02                                        ; $6551: $fe $02
    inc a                                         ; $6553: $3c
    ld [bc], a                                    ; $6554: $02
    nop                                           ; $6555: $00
    add h                                         ; $6556: $84
    jr jr_0e0_6551                                ; $6557: $18 $f8

    inc a                                         ; $6559: $3c
    db $e4                                        ; $655a: $e4
    inc bc                                        ; $655b: $03
    db $fc                                        ; $655c: $fc
    sub c                                         ; $655d: $91
    ld [hl], h                                    ; $655e: $74
    db $fc                                        ; $655f: $fc
    ld a, h                                       ; $6560: $7c
    xor [hl]                                      ; $6561: $ae
    ld [$fe1e], a                                 ; $6562: $ea $1e $fe
    ld e, $fa                                     ; $6565: $1e $fa
    ld e, $fa                                     ; $6567: $1e $fa
    ccf                                           ; $6569: $3f
    db $fd                                        ; $656a: $fd
    rst $20                                       ; $656b: $e7
    db $fd                                        ; $656c: $fd
    rst $18                                       ; $656d: $df
    db $fd                                        ; $656e: $fd
    ld [bc], a                                    ; $656f: $02
    ldh [rTMA], a                                 ; $6570: $e0 $06
    nop                                           ; $6572: $00
    rst $38                                       ; $6573: $ff
    dec c                                         ; $6574: $0d

    db $04, $fb, $05, $f3, $fc

    ld [c], a                                     ; $657a: $e2
    ld sp, hl                                     ; $657b: $f9
    ld [c], a                                     ; $657c: $e2
    nop                                           ; $657d: $00
    ld a, [c]                                     ; $657e: $f2
    ld sp, hl                                     ; $657f: $f9
    ld a, [c]                                     ; $6580: $f2
    nop                                           ; $6581: $00
    ld [bc], a                                    ; $6582: $02
    rlca                                          ; $6583: $07
    adc [hl]                                      ; $6584: $8e
    rrca                                          ; $6585: $0f
    ld [$101f], sp                                ; $6586: $08 $1f $10
    rra                                           ; $6589: $1f
    jr @+$21                                      ; $658a: $18 $1f

    rla                                           ; $658c: $17
    ld a, [de]                                    ; $658d: $1a
    dec d                                         ; $658e: $15
    ld a, [de]                                    ; $658f: $1a

jr_0e0_6590:
    dec d                                         ; $6590: $15

jr_0e0_6591:
    rra                                           ; $6591: $1f
    jr jr_0e0_6598                                ; $6592: $18 $04

    rrca                                          ; $6594: $0f

jr_0e0_6595:
    add d                                         ; $6595: $82
    db $10                                        ; $6596: $10
    rra                                           ; $6597: $1f

jr_0e0_6598:
    ld [bc], a                                    ; $6598: $02
    ccf                                           ; $6599: $3f
    adc b                                         ; $659a: $88
    ld h, c                                       ; $659b: $61
    ld a, a                                       ; $659c: $7f
    add b                                         ; $659d: $80
    rst $38                                       ; $659e: $ff
    pop bc                                        ; $659f: $c1
    rst $38                                       ; $65a0: $ff
    ldh [$bf], a                                  ; $65a1: $e0 $bf
    ld [bc], a                                    ; $65a3: $02

jr_0e0_65a4:
    ld h, b                                       ; $65a4: $60
    adc [hl]                                      ; $65a5: $8e

jr_0e0_65a6:
    ld [hl], b                                    ; $65a6: $70
    db $10                                        ; $65a7: $10
    ld a, b                                       ; $65a8: $78
    ld [$0878], sp                                ; $65a9: $08 $78 $08
    ld a, b                                       ; $65ac: $78
    ld l, b                                       ; $65ad: $68
    ld e, b                                       ; $65ae: $58
    jr z, jr_0e0_6609                             ; $65af: $28 $58

    jr z, jr_0e0_662b                             ; $65b1: $28 $78

    jr @+$06                                      ; $65b3: $18 $04

    ld [hl], b                                    ; $65b5: $70
    add d                                         ; $65b6: $82
    ld [$0278], sp                                ; $65b7: $08 $78 $02
    ld a, h                                       ; $65ba: $7c
    and [hl]                                      ; $65bb: $a6
    ld b, $7e                                     ; $65bc: $06 $7e
    ld bc, $037f                                  ; $65be: $01 $7f $03
    ld a, a                                       ; $65c1: $7f
    rlca                                          ; $65c2: $07
    ld a, l                                       ; $65c3: $7d
    ldh [$bf], a                                  ; $65c4: $e0 $bf
    ldh a, [rIE]                                  ; $65c6: $f0 $ff
    db $fd                                        ; $65c8: $fd
    cp a                                          ; $65c9: $bf
    ld hl, sp-$01                                 ; $65ca: $f8 $ff
    ldh a, [rIE]                                  ; $65cc: $f0 $ff
    or b                                          ; $65ce: $b0
    rst $38                                       ; $65cf: $ff
    ld h, b                                       ; $65d0: $60
    ld a, a                                       ; $65d1: $7f
    ld h, b                                       ; $65d2: $60
    ld a, a                                       ; $65d3: $7f
    ld b, b                                       ; $65d4: $40
    ld a, a                                       ; $65d5: $7f
    ld b, b                                       ; $65d6: $40
    ld a, a                                       ; $65d7: $7f
    ld b, b                                       ; $65d8: $40
    ld a, a                                       ; $65d9: $7f
    ld b, b                                       ; $65da: $40
    ld a, a                                       ; $65db: $7f
    ld b, e                                       ; $65dc: $43
    ld a, a                                       ; $65dd: $7f
    jr nz, jr_0e0_661f                            ; $65de: $20 $3f

    jr @+$21                                      ; $65e0: $18 $1f

    inc bc                                        ; $65e2: $03
    rlca                                          ; $65e3: $07
    sbc l                                         ; $65e4: $9d
    ld a, l                                       ; $65e5: $7d
    rrca                                          ; $65e6: $0f
    ld a, a                                       ; $65e7: $7f
    ccf                                           ; $65e8: $3f
    ld a, l                                       ; $65e9: $7d
    cpl                                           ; $65ea: $2f
    ld a, a                                       ; $65eb: $7f
    cpl                                           ; $65ec: $2f
    ld a, a                                       ; $65ed: $7f
    dec c                                         ; $65ee: $0d
    ld a, a                                       ; $65ef: $7f
    ld b, $7e                                     ; $65f0: $06 $7e
    ld d, $7e                                     ; $65f2: $16 $7e
    ld [bc], a                                    ; $65f4: $02
    ld a, [hl]                                    ; $65f5: $7e
    ld [bc], a                                    ; $65f6: $02
    ld a, [hl]                                    ; $65f7: $7e
    ld [de], a                                    ; $65f8: $12
    ld a, [hl]                                    ; $65f9: $7e
    ld h, d                                       ; $65fa: $62
    ld a, [hl]                                    ; $65fb: $7e
    ld b, d                                       ; $65fc: $42
    ld a, [hl]                                    ; $65fd: $7e
    inc b                                         ; $65fe: $04
    ld a, h                                       ; $65ff: $7c
    jr jr_0e0_667a                                ; $6600: $18 $78

    ld [bc], a                                    ; $6602: $02
    ld h, b                                       ; $6603: $60
    rst $38                                       ; $6604: $ff
    dec c                                         ; $6605: $0d
    inc b                                         ; $6606: $04
    ei                                            ; $6607: $fb
    dec b                                         ; $6608: $05

jr_0e0_6609:
    di                                            ; $6609: $f3
    db $fc                                        ; $660a: $fc
    db $e3                                        ; $660b: $e3
    ld sp, hl                                     ; $660c: $f9
    db $e3                                        ; $660d: $e3
    nop                                           ; $660e: $00
    di                                            ; $660f: $f3
    ld sp, hl                                     ; $6610: $f9
    di                                            ; $6611: $f3
    nop                                           ; $6612: $00
    ld [bc], a                                    ; $6613: $02
    rlca                                          ; $6614: $07
    adc [hl]                                      ; $6615: $8e
    rrca                                          ; $6616: $0f
    ld [$101f], sp                                ; $6617: $08 $1f $10
    rra                                           ; $661a: $1f
    jr @+$21                                      ; $661b: $18 $1f

    rla                                           ; $661d: $17
    ld a, [de]                                    ; $661e: $1a

jr_0e0_661f:
    dec d                                         ; $661f: $15
    ld a, [de]                                    ; $6620: $1a
    dec d                                         ; $6621: $15
    rra                                           ; $6622: $1f
    jr jr_0e0_6629                                ; $6623: $18 $04

    rrca                                          ; $6625: $0f
    add d                                         ; $6626: $82
    db $10                                        ; $6627: $10
    rra                                           ; $6628: $1f

jr_0e0_6629:
    ld [bc], a                                    ; $6629: $02
    ccf                                           ; $662a: $3f

jr_0e0_662b:
    adc b                                         ; $662b: $88
    ld h, c                                       ; $662c: $61
    ld a, a                                       ; $662d: $7f
    ret nz                                        ; $662e: $c0

    rst $38                                       ; $662f: $ff
    pop bc                                        ; $6630: $c1
    rst $38                                       ; $6631: $ff
    ldh [$bf], a                                  ; $6632: $e0 $bf
    ld [bc], a                                    ; $6634: $02
    ld h, b                                       ; $6635: $60
    adc [hl]                                      ; $6636: $8e
    ld [hl], b                                    ; $6637: $70
    db $10                                        ; $6638: $10
    ld a, b                                       ; $6639: $78
    ld [$0878], sp                                ; $663a: $08 $78 $08
    ld a, b                                       ; $663d: $78
    ld l, b                                       ; $663e: $68
    ld e, b                                       ; $663f: $58
    jr z, jr_0e0_669a                             ; $6640: $28 $58

    jr z, jr_0e0_66bc                             ; $6642: $28 $78

    jr @+$06                                      ; $6644: $18 $04

    ld [hl], b                                    ; $6646: $70
    add d                                         ; $6647: $82
    ld [$0278], sp                                ; $6648: $08 $78 $02
    ld a, h                                       ; $664b: $7c
    and h                                         ; $664c: $a4
    ld b, $7e                                     ; $664d: $06 $7e
    inc bc                                        ; $664f: $03
    ld a, a                                       ; $6650: $7f
    inc bc                                        ; $6651: $03
    ld a, a                                       ; $6652: $7f
    rlca                                          ; $6653: $07
    ld a, l                                       ; $6654: $7d
    ldh [$bf], a                                  ; $6655: $e0 $bf
    ldh a, [rIE]                                  ; $6657: $f0 $ff
    db $fd                                        ; $6659: $fd
    cp a                                          ; $665a: $bf
    ld hl, sp-$01                                 ; $665b: $f8 $ff
    ldh a, [rIE]                                  ; $665d: $f0 $ff
    or b                                          ; $665f: $b0
    rst $38                                       ; $6660: $ff
    ld h, c                                       ; $6661: $61
    ld a, a                                       ; $6662: $7f
    ld b, b                                       ; $6663: $40
    ld a, a                                       ; $6664: $7f
    ld b, b                                       ; $6665: $40
    ld a, a                                       ; $6666: $7f
    ld b, h                                       ; $6667: $44
    ld a, a                                       ; $6668: $7f
    ld b, d                                       ; $6669: $42
    ld a, a                                       ; $666a: $7f
    jr nc, jr_0e0_66ac                            ; $666b: $30 $3f

    inc e                                         ; $666d: $1c
    rra                                           ; $666e: $1f
    ld c, $0f                                     ; $666f: $0e $0f
    ld [bc], a                                    ; $6671: $02
    ld bc, $0002                                  ; $6672: $01 $02 $00
    sbc h                                         ; $6675: $9c
    rlca                                          ; $6676: $07
    ld a, l                                       ; $6677: $7d
    rrca                                          ; $6678: $0f
    ld a, a                                       ; $6679: $7f

jr_0e0_667a:
    ccf                                           ; $667a: $3f
    ld a, l                                       ; $667b: $7d
    cpl                                           ; $667c: $2f
    ld a, l                                       ; $667d: $7d
    cpl                                           ; $667e: $2f
    ld a, a                                       ; $667f: $7f
    dec c                                         ; $6680: $0d
    ld a, a                                       ; $6681: $7f
    ld b, $7e                                     ; $6682: $06 $7e
    ld [bc], a                                    ; $6684: $02
    ld a, [hl]                                    ; $6685: $7e
    ld [bc], a                                    ; $6686: $02
    ld a, [hl]                                    ; $6687: $7e
    ld [bc], a                                    ; $6688: $02
    ld a, [hl]                                    ; $6689: $7e
    ld [bc], a                                    ; $668a: $02
    ld a, [hl]                                    ; $668b: $7e
    ld [bc], a                                    ; $668c: $02
    ld a, [hl]                                    ; $668d: $7e
    inc b                                         ; $668e: $04
    ld a, h                                       ; $668f: $7c
    jr jr_0e0_670a                                ; $6690: $18 $78

    ld [bc], a                                    ; $6692: $02
    ld h, b                                       ; $6693: $60
    ld [bc], a                                    ; $6694: $02
    nop                                           ; $6695: $00
    rst $38                                       ; $6696: $ff
    dec c                                         ; $6697: $0d
    inc b                                         ; $6698: $04
    ei                                            ; $6699: $fb

jr_0e0_669a:
    dec b                                         ; $669a: $05
    di                                            ; $669b: $f3
    db $fc                                        ; $669c: $fc
    ld [c], a                                     ; $669d: $e2
    ld sp, hl                                     ; $669e: $f9
    ld [c], a                                     ; $669f: $e2
    nop                                           ; $66a0: $00
    ld a, [c]                                     ; $66a1: $f2
    ld sp, hl                                     ; $66a2: $f9
    ld a, [c]                                     ; $66a3: $f2
    nop                                           ; $66a4: $00
    ld [bc], a                                    ; $66a5: $02
    rlca                                          ; $66a6: $07
    adc [hl]                                      ; $66a7: $8e
    rrca                                          ; $66a8: $0f
    ld [$101f], sp                                ; $66a9: $08 $1f $10

jr_0e0_66ac:
    rra                                           ; $66ac: $1f
    jr @+$21                                      ; $66ad: $18 $1f

    rla                                           ; $66af: $17
    ld a, [de]                                    ; $66b0: $1a
    dec d                                         ; $66b1: $15
    ld a, [de]                                    ; $66b2: $1a
    dec d                                         ; $66b3: $15
    rra                                           ; $66b4: $1f
    jr jr_0e0_66bb                                ; $66b5: $18 $04

    rrca                                          ; $66b7: $0f
    add d                                         ; $66b8: $82
    db $10                                        ; $66b9: $10
    rra                                           ; $66ba: $1f

jr_0e0_66bb:
    ld [bc], a                                    ; $66bb: $02

jr_0e0_66bc:
    ccf                                           ; $66bc: $3f
    adc b                                         ; $66bd: $88
    ld h, c                                       ; $66be: $61
    ld a, a                                       ; $66bf: $7f
    ret nz                                        ; $66c0: $c0

    rst $38                                       ; $66c1: $ff
    pop hl                                        ; $66c2: $e1
    rst $38                                       ; $66c3: $ff
    ldh [$bf], a                                  ; $66c4: $e0 $bf
    ld [bc], a                                    ; $66c6: $02
    ld h, b                                       ; $66c7: $60
    adc [hl]                                      ; $66c8: $8e
    ld [hl], b                                    ; $66c9: $70
    db $10                                        ; $66ca: $10
    ld a, b                                       ; $66cb: $78
    ld [$0878], sp                                ; $66cc: $08 $78 $08
    ld a, b                                       ; $66cf: $78
    ld l, b                                       ; $66d0: $68
    ld e, b                                       ; $66d1: $58
    jr z, jr_0e0_672c                             ; $66d2: $28 $58

    jr z, jr_0e0_674e                             ; $66d4: $28 $78

    jr @+$06                                      ; $66d6: $18 $04

    ld [hl], b                                    ; $66d8: $70
    add d                                         ; $66d9: $82
    ld [$0278], sp                                ; $66da: $08 $78 $02
    ld a, h                                       ; $66dd: $7c
    and h                                         ; $66de: $a4
    ld b, $7e                                     ; $66df: $06 $7e
    inc bc                                        ; $66e1: $03
    ld a, a                                       ; $66e2: $7f
    inc bc                                        ; $66e3: $03
    ld a, a                                       ; $66e4: $7f
    rlca                                          ; $66e5: $07
    ld a, a                                       ; $66e6: $7f
    ldh [$bf], a                                  ; $66e7: $e0 $bf
    ldh a, [$bf]                                  ; $66e9: $f0 $bf
    db $fd                                        ; $66eb: $fd
    cp a                                          ; $66ec: $bf
    ld hl, sp-$41                                 ; $66ed: $f8 $bf
    ldh a, [rIE]                                  ; $66ef: $f0 $ff
    or b                                          ; $66f1: $b0
    rst $38                                       ; $66f2: $ff
    sub h                                         ; $66f3: $94
    rst $38                                       ; $66f4: $ff
    ld h, e                                       ; $66f5: $63
    ld a, a                                       ; $66f6: $7f
    ld b, b                                       ; $66f7: $40
    ld a, a                                       ; $66f8: $7f
    ld b, h                                       ; $66f9: $44
    ld a, a                                       ; $66fa: $7f
    ld b, b                                       ; $66fb: $40
    ld a, a                                       ; $66fc: $7f
    jr nz, jr_0e0_673e                            ; $66fd: $20 $3f

    dec e                                         ; $66ff: $1d
    rra                                           ; $6700: $1f
    ld b, $07                                     ; $6701: $06 $07
    ld [bc], a                                    ; $6703: $02
    inc bc                                        ; $6704: $03
    ld [bc], a                                    ; $6705: $02
    ld bc, $079e                                  ; $6706: $01 $9e $07
    ld a, l                                       ; $6709: $7d

jr_0e0_670a:
    rrca                                          ; $670a: $0f
    ld a, l                                       ; $670b: $7d
    ccf                                           ; $670c: $3f
    ld a, l                                       ; $670d: $7d
    ld l, $7e                                     ; $670e: $2e $7e
    ld l, $7a                                     ; $6710: $2e $7a
    ld c, $7e                                     ; $6712: $0e $7e
    ld c, $7e                                     ; $6714: $0e $7e
    ld b, $7e                                     ; $6716: $06 $7e
    ld b, $7e                                     ; $6718: $06 $7e
    ld b, $7e                                     ; $671a: $06 $7e
    ld [bc], a                                    ; $671c: $02
    ld a, [hl]                                    ; $671d: $7e
    ld h, d                                       ; $671e: $62
    ld a, [hl]                                    ; $671f: $7e
    ld [bc], a                                    ; $6720: $02
    ld a, [hl]                                    ; $6721: $7e
    ld [hl-], a                                   ; $6722: $32
    ld a, [hl]                                    ; $6723: $7e
    ld a, h                                       ; $6724: $7c
    ld c, h                                       ; $6725: $4c
    ld [bc], a                                    ; $6726: $02
    ld a, b                                       ; $6727: $78
    rst $38                                       ; $6728: $ff
    dec c                                         ; $6729: $0d
    inc b                                         ; $672a: $04
    ei                                            ; $672b: $fb

jr_0e0_672c:
    dec b                                         ; $672c: $05
    di                                            ; $672d: $f3
    db $fc                                        ; $672e: $fc
    db $e3                                        ; $672f: $e3
    ld sp, hl                                     ; $6730: $f9
    db $e3                                        ; $6731: $e3
    nop                                           ; $6732: $00
    di                                            ; $6733: $f3
    ld sp, hl                                     ; $6734: $f9
    di                                            ; $6735: $f3
    nop                                           ; $6736: $00
    ld [bc], a                                    ; $6737: $02
    rlca                                          ; $6738: $07
    adc [hl]                                      ; $6739: $8e
    rrca                                          ; $673a: $0f
    ld [$101f], sp                                ; $673b: $08 $1f $10

jr_0e0_673e:
    rra                                           ; $673e: $1f
    jr @+$21                                      ; $673f: $18 $1f

    rla                                           ; $6741: $17
    ld a, [de]                                    ; $6742: $1a
    dec d                                         ; $6743: $15
    ld a, [de]                                    ; $6744: $1a
    dec d                                         ; $6745: $15
    rra                                           ; $6746: $1f
    jr jr_0e0_674d                                ; $6747: $18 $04

    rrca                                          ; $6749: $0f
    add d                                         ; $674a: $82
    db $10                                        ; $674b: $10
    rra                                           ; $674c: $1f

jr_0e0_674d:
    ld [bc], a                                    ; $674d: $02

jr_0e0_674e:
    ccf                                           ; $674e: $3f
    adc b                                         ; $674f: $88
    ld h, c                                       ; $6750: $61
    ld a, a                                       ; $6751: $7f
    ret nz                                        ; $6752: $c0

    rst $38                                       ; $6753: $ff
    pop bc                                        ; $6754: $c1
    rst $38                                       ; $6755: $ff
    ldh [$bf], a                                  ; $6756: $e0 $bf
    ld [bc], a                                    ; $6758: $02
    ld h, b                                       ; $6759: $60
    adc [hl]                                      ; $675a: $8e
    ld [hl], b                                    ; $675b: $70
    db $10                                        ; $675c: $10
    ld a, b                                       ; $675d: $78
    ld [$0878], sp                                ; $675e: $08 $78 $08
    ld a, b                                       ; $6761: $78
    ld l, b                                       ; $6762: $68
    ld e, b                                       ; $6763: $58
    jr z, @+$5a                                   ; $6764: $28 $58

    jr z, jr_0e0_67e0                             ; $6766: $28 $78

    jr @+$06                                      ; $6768: $18 $04

    ld [hl], b                                    ; $676a: $70
    add d                                         ; $676b: $82
    ld [$0278], sp                                ; $676c: $08 $78 $02
    ld a, h                                       ; $676f: $7c
    and h                                         ; $6770: $a4
    ld b, $7e                                     ; $6771: $06 $7e
    inc bc                                        ; $6773: $03
    ld a, a                                       ; $6774: $7f
    inc bc                                        ; $6775: $03
    ld a, a                                       ; $6776: $7f
    rlca                                          ; $6777: $07
    ld a, l                                       ; $6778: $7d
    ldh [$bf], a                                  ; $6779: $e0 $bf
    ldh a, [rIE]                                  ; $677b: $f0 $ff
    db $fd                                        ; $677d: $fd
    cp a                                          ; $677e: $bf
    ld hl, sp-$41                                 ; $677f: $f8 $bf
    ldh a, [rIE]                                  ; $6781: $f0 $ff
    or b                                          ; $6783: $b0
    rst $38                                       ; $6784: $ff
    ld h, c                                       ; $6785: $61
    ld a, a                                       ; $6786: $7f
    ld b, b                                       ; $6787: $40
    ld a, a                                       ; $6788: $7f
    ld b, b                                       ; $6789: $40
    ld a, a                                       ; $678a: $7f
    ld b, b                                       ; $678b: $40
    ld a, a                                       ; $678c: $7f
    ld b, b                                       ; $678d: $40
    ld a, a                                       ; $678e: $7f
    ld b, b                                       ; $678f: $40
    ld a, a                                       ; $6790: $7f
    jr nz, jr_0e0_67d2                            ; $6791: $20 $3f

    jr jr_0e0_67b4                                ; $6793: $18 $1f

    ld [bc], a                                    ; $6795: $02
    rlca                                          ; $6796: $07
    ld [bc], a                                    ; $6797: $02
    nop                                           ; $6798: $00
    sbc d                                         ; $6799: $9a
    rlca                                          ; $679a: $07
    ld a, l                                       ; $679b: $7d
    rrca                                          ; $679c: $0f
    ld a, a                                       ; $679d: $7f
    ccf                                           ; $679e: $3f
    ld a, l                                       ; $679f: $7d
    cpl                                           ; $67a0: $2f
    ld a, a                                       ; $67a1: $7f
    cpl                                           ; $67a2: $2f
    ld a, a                                       ; $67a3: $7f
    dec c                                         ; $67a4: $0d
    ld a, a                                       ; $67a5: $7f
    ld b, $7e                                     ; $67a6: $06 $7e
    ld [bc], a                                    ; $67a8: $02
    ld a, [hl]                                    ; $67a9: $7e
    ld [bc], a                                    ; $67aa: $02
    ld a, [hl]                                    ; $67ab: $7e
    ld [hl+], a                                   ; $67ac: $22
    ld a, [hl]                                    ; $67ad: $7e
    ld b, d                                       ; $67ae: $42
    ld a, [hl]                                    ; $67af: $7e
    inc c                                         ; $67b0: $0c
    ld a, h                                       ; $67b1: $7c
    jr c, jr_0e0_682c                             ; $67b2: $38 $78

jr_0e0_67b4:
    ld [bc], a                                    ; $67b4: $02
    ld [hl], b                                    ; $67b5: $70
    inc b                                         ; $67b6: $04
    nop                                           ; $67b7: $00
    rst $38                                       ; $67b8: $ff
    dec c                                         ; $67b9: $0d
    inc b                                         ; $67ba: $04
    ei                                            ; $67bb: $fb
    ld [$01f3], sp                                ; $67bc: $08 $f3 $01
    ld [c], a                                     ; $67bf: $e2
    ld sp, hl                                     ; $67c0: $f9
    ld [c], a                                     ; $67c1: $e2
    nop                                           ; $67c2: $00
    ld a, [c]                                     ; $67c3: $f2
    ld sp, hl                                     ; $67c4: $f9
    ld a, [c]                                     ; $67c5: $f2
    nop                                           ; $67c6: $00
    ld [bc], a                                    ; $67c7: $02
    rlca                                          ; $67c8: $07
    adc [hl]                                      ; $67c9: $8e
    rrca                                          ; $67ca: $0f
    ld [$101f], sp                                ; $67cb: $08 $1f $10
    rra                                           ; $67ce: $1f
    jr @+$21                                      ; $67cf: $18 $1f

    rla                                           ; $67d1: $17

jr_0e0_67d2:
    ld a, [de]                                    ; $67d2: $1a
    dec d                                         ; $67d3: $15
    ld a, [de]                                    ; $67d4: $1a
    dec d                                         ; $67d5: $15
    rra                                           ; $67d6: $1f
    jr jr_0e0_67dd                                ; $67d7: $18 $04

    rrca                                          ; $67d9: $0f
    add d                                         ; $67da: $82
    db $10                                        ; $67db: $10
    rra                                           ; $67dc: $1f

jr_0e0_67dd:
    ld [bc], a                                    ; $67dd: $02
    ccf                                           ; $67de: $3f
    adc b                                         ; $67df: $88

jr_0e0_67e0:
    ld h, c                                       ; $67e0: $61
    ld a, a                                       ; $67e1: $7f
    ret nz                                        ; $67e2: $c0

    rst $38                                       ; $67e3: $ff
    pop bc                                        ; $67e4: $c1
    rst $38                                       ; $67e5: $ff
    ldh [rIE], a                                  ; $67e6: $e0 $ff
    ld [bc], a                                    ; $67e8: $02
    ld h, b                                       ; $67e9: $60
    adc [hl]                                      ; $67ea: $8e
    ld [hl], b                                    ; $67eb: $70
    db $10                                        ; $67ec: $10
    ld a, b                                       ; $67ed: $78
    ld [$0878], sp                                ; $67ee: $08 $78 $08
    ld a, b                                       ; $67f1: $78
    ld l, b                                       ; $67f2: $68
    ld e, b                                       ; $67f3: $58
    jr z, jr_0e0_684e                             ; $67f4: $28 $58

    jr z, jr_0e0_6870                             ; $67f6: $28 $78

    jr @+$06                                      ; $67f8: $18 $04

    ld [hl], b                                    ; $67fa: $70
    add d                                         ; $67fb: $82
    ld [$0278], sp                                ; $67fc: $08 $78 $02
    ld a, h                                       ; $67ff: $7c
    and [hl]                                      ; $6800: $a6
    ld b, $7e                                     ; $6801: $06 $7e
    inc bc                                        ; $6803: $03
    ld a, a                                       ; $6804: $7f
    rlca                                          ; $6805: $07
    ld a, a                                       ; $6806: $7f
    rlca                                          ; $6807: $07
    ld a, l                                       ; $6808: $7d
    ldh [$bf], a                                  ; $6809: $e0 $bf
    ldh a, [$bf]                                  ; $680b: $f0 $bf
    db $fd                                        ; $680d: $fd
    cp a                                          ; $680e: $bf
    ld a, b                                       ; $680f: $78
    ld a, a                                       ; $6810: $7f
    ld [hl], b                                    ; $6811: $70
    ld e, a                                       ; $6812: $5f
    ld [hl], b                                    ; $6813: $70
    ld a, a                                       ; $6814: $7f
    ld [hl], b                                    ; $6815: $70
    ld a, a                                       ; $6816: $7f
    ld h, c                                       ; $6817: $61
    ld a, a                                       ; $6818: $7f
    ld h, b                                       ; $6819: $60
    ld a, a                                       ; $681a: $7f
    ld h, b                                       ; $681b: $60
    ld a, a                                       ; $681c: $7f
    ld b, b                                       ; $681d: $40
    ld a, a                                       ; $681e: $7f
    ld b, [hl]                                    ; $681f: $46
    ld a, a                                       ; $6820: $7f
    ld b, c                                       ; $6821: $41
    ld a, a                                       ; $6822: $7f
    ld c, h                                       ; $6823: $4c
    ld a, a                                       ; $6824: $7f
    ccf                                           ; $6825: $3f
    inc sp                                        ; $6826: $33
    ld [bc], a                                    ; $6827: $02
    rra                                           ; $6828: $1f
    sbc d                                         ; $6829: $9a
    rlca                                          ; $682a: $07
    ld a, l                                       ; $682b: $7d

jr_0e0_682c:
    rrca                                          ; $682c: $0f
    ld a, l                                       ; $682d: $7d
    ccf                                           ; $682e: $3f
    ld a, l                                       ; $682f: $7d
    ccf                                           ; $6830: $3f
    ld a, l                                       ; $6831: $7d
    cpl                                           ; $6832: $2f
    ld a, a                                       ; $6833: $7f
    dec c                                         ; $6834: $0d
    ld a, a                                       ; $6835: $7f
    add hl, hl                                    ; $6836: $29
    ld a, a                                       ; $6837: $7f
    ld b, [hl]                                    ; $6838: $46
    ld a, [hl]                                    ; $6839: $7e
    ld [bc], a                                    ; $683a: $02
    ld a, [hl]                                    ; $683b: $7e
    ld [hl+], a                                   ; $683c: $22
    ld a, [hl]                                    ; $683d: $7e
    ld [bc], a                                    ; $683e: $02
    ld a, [hl]                                    ; $683f: $7e
    inc b                                         ; $6840: $04
    ld a, h                                       ; $6841: $7c
    jr c, jr_0e0_68bc                             ; $6842: $38 $78

    ld [bc], a                                    ; $6844: $02
    ld h, b                                       ; $6845: $60
    ld [bc], a                                    ; $6846: $02
    ld b, b                                       ; $6847: $40
    ld [bc], a                                    ; $6848: $02
    nop                                           ; $6849: $00
    rst $38                                       ; $684a: $ff
    dec c                                         ; $684b: $0d
    inc b                                         ; $684c: $04
    ei                                            ; $684d: $fb

jr_0e0_684e:
    dec b                                         ; $684e: $05
    di                                            ; $684f: $f3
    db $fc                                        ; $6850: $fc
    ld [c], a                                     ; $6851: $e2
    ld sp, hl                                     ; $6852: $f9
    ld [c], a                                     ; $6853: $e2
    nop                                           ; $6854: $00
    ld a, [c]                                     ; $6855: $f2
    ld sp, hl                                     ; $6856: $f9
    ld a, [c]                                     ; $6857: $f2
    nop                                           ; $6858: $00
    ld [bc], a                                    ; $6859: $02
    rlca                                          ; $685a: $07
    sbc [hl]                                      ; $685b: $9e
    dec c                                         ; $685c: $0d
    ld a, [bc]                                    ; $685d: $0a
    dec d                                         ; $685e: $15
    ld a, [de]                                    ; $685f: $1a
    dec d                                         ; $6860: $15
    ld a, [de]                                    ; $6861: $1a
    rla                                           ; $6862: $17
    jr jr_0e0_6884                                ; $6863: $18 $1f

    rla                                           ; $6865: $17
    ld e, $19                                     ; $6866: $1e $19
    ld d, $1f                                     ; $6868: $16 $1f
    ld a, [bc]                                    ; $686a: $0a
    rrca                                          ; $686b: $0f
    rra                                           ; $686c: $1f
    dec d                                         ; $686d: $15
    cpl                                           ; $686e: $2f
    ld a, [hl-]                                   ; $686f: $3a

jr_0e0_6870:
    cpl                                           ; $6870: $2f
    inc a                                         ; $6871: $3c
    ld e, a                                       ; $6872: $5f
    ld a, b                                       ; $6873: $78
    adc a                                         ; $6874: $8f
    db $fc                                        ; $6875: $fc
    rst $00                                       ; $6876: $c7
    rst $38                                       ; $6877: $ff
    ld [c], a                                     ; $6878: $e2
    cp a                                          ; $6879: $bf
    ld [bc], a                                    ; $687a: $02
    ld h, b                                       ; $687b: $60
    cp d                                          ; $687c: $ba
    jr nc, jr_0e0_68cf                            ; $687d: $30 $50

    jr z, jr_0e0_68d9                             ; $687f: $28 $58

    jr z, jr_0e0_68db                             ; $6881: $28 $58

    ld l, b                                       ; $6883: $68

jr_0e0_6884:
    jr jr_0e0_68fe                                ; $6884: $18 $78

    ld l, b                                       ; $6886: $68
    ld a, b                                       ; $6887: $78
    jr jr_0e0_68f2                                ; $6888: $18 $68

    ld a, b                                       ; $688a: $78
    ld d, b                                       ; $688b: $50
    ld [hl], b                                    ; $688c: $70
    ld a, b                                       ; $688d: $78
    jr z, jr_0e0_6904                             ; $688e: $28 $74

    ld e, h                                       ; $6890: $5c
    ld [hl], h                                    ; $6891: $74
    inc a                                         ; $6892: $3c
    ld a, d                                       ; $6893: $7a
    ld e, $71                                     ; $6894: $1e $71
    ccf                                           ; $6896: $3f
    ld h, e                                       ; $6897: $63
    ld a, a                                       ; $6898: $7f
    ld b, a                                       ; $6899: $47
    ld a, l                                       ; $689a: $7d
    db $e3                                        ; $689b: $e3
    db $fd                                        ; $689c: $fd
    di                                            ; $689d: $f3
    cp l                                          ; $689e: $bd
    rst $30                                       ; $689f: $f7
    sbc a                                         ; $68a0: $9f
    di                                            ; $68a1: $f3
    cp l                                          ; $68a2: $bd
    db $d3                                        ; $68a3: $d3
    db $fc                                        ; $68a4: $fc
    sub e                                         ; $68a5: $93
    db $fc                                        ; $68a6: $fc
    ld h, e                                       ; $68a7: $63
    ld a, l                                       ; $68a8: $7d
    ld h, e                                       ; $68a9: $63
    ld a, l                                       ; $68aa: $7d
    ld b, e                                       ; $68ab: $43
    ld a, h                                       ; $68ac: $7c
    ld b, e                                       ; $68ad: $43
    ld a, l                                       ; $68ae: $7d
    ld b, e                                       ; $68af: $43
    ld a, l                                       ; $68b0: $7d
    ld h, e                                       ; $68b1: $63
    ld a, l                                       ; $68b2: $7d
    dec sp                                        ; $68b3: $3b
    dec a                                         ; $68b4: $3d
    ccf                                           ; $68b5: $3f
    daa                                           ; $68b6: $27
    ld [bc], a                                    ; $68b7: $02
    jr jr_0e0_68bc                                ; $68b8: $18 $02

    nop                                           ; $68ba: $00
    sbc h                                         ; $68bb: $9c

jr_0e0_68bc:
    ld b, a                                       ; $68bc: $47
    ccf                                           ; $68bd: $3f
    ld c, a                                       ; $68be: $4f
    dec a                                         ; $68bf: $3d
    ld e, a                                       ; $68c0: $5f
    ld a, c                                       ; $68c1: $79
    ld c, a                                       ; $68c2: $4f
    dec a                                         ; $68c3: $3d
    ld c, e                                       ; $68c4: $4b
    ccf                                           ; $68c5: $3f
    ld c, c                                       ; $68c6: $49
    ccf                                           ; $68c7: $3f
    ld b, [hl]                                    ; $68c8: $46
    ld a, $46                                     ; $68c9: $3e $46
    ld a, $42                                     ; $68cb: $3e $42
    ld a, $42                                     ; $68cd: $3e $42

jr_0e0_68cf:
    ld a, $42                                     ; $68cf: $3e $42
    ld a, $46                                     ; $68d1: $3e $46
    ld a, $5c                                     ; $68d3: $3e $5c
    inc a                                         ; $68d5: $3c
    ld a, h                                       ; $68d6: $7c
    ld h, h                                       ; $68d7: $64
    ld [bc], a                                    ; $68d8: $02

jr_0e0_68d9:
    jr jr_0e0_68dd                                ; $68d9: $18 $02

jr_0e0_68db:
    nop                                           ; $68db: $00
    rst $38                                       ; $68dc: $ff

jr_0e0_68dd:
    dec c                                         ; $68dd: $0d
    inc b                                         ; $68de: $04
    ei                                            ; $68df: $fb
    dec b                                         ; $68e0: $05
    di                                            ; $68e1: $f3
    db $fc                                        ; $68e2: $fc
    db $e3                                        ; $68e3: $e3
    ld sp, hl                                     ; $68e4: $f9
    db $e3                                        ; $68e5: $e3
    nop                                           ; $68e6: $00
    di                                            ; $68e7: $f3
    ld sp, hl                                     ; $68e8: $f9
    di                                            ; $68e9: $f3
    nop                                           ; $68ea: $00
    ld [bc], a                                    ; $68eb: $02
    rlca                                          ; $68ec: $07
    sbc [hl]                                      ; $68ed: $9e
    dec c                                         ; $68ee: $0d
    ld a, [bc]                                    ; $68ef: $0a
    dec d                                         ; $68f0: $15
    ld a, [de]                                    ; $68f1: $1a

jr_0e0_68f2:
    dec d                                         ; $68f2: $15
    ld a, [de]                                    ; $68f3: $1a
    rla                                           ; $68f4: $17
    jr jr_0e0_6916                                ; $68f5: $18 $1f

    rla                                           ; $68f7: $17
    ld e, $19                                     ; $68f8: $1e $19
    ld d, $1f                                     ; $68fa: $16 $1f
    ld a, [bc]                                    ; $68fc: $0a
    rrca                                          ; $68fd: $0f

jr_0e0_68fe:
    rra                                           ; $68fe: $1f
    dec d                                         ; $68ff: $15
    cpl                                           ; $6900: $2f
    ld a, [hl-]                                   ; $6901: $3a
    cpl                                           ; $6902: $2f
    inc a                                         ; $6903: $3c

jr_0e0_6904:
    ld e, a                                       ; $6904: $5f
    ld a, b                                       ; $6905: $78
    adc a                                         ; $6906: $8f
    db $fc                                        ; $6907: $fc
    rst $00                                       ; $6908: $c7
    rst $38                                       ; $6909: $ff
    ld [c], a                                     ; $690a: $e2
    cp a                                          ; $690b: $bf
    ld [bc], a                                    ; $690c: $02
    ld h, b                                       ; $690d: $60
    cp b                                          ; $690e: $b8
    jr nc, jr_0e0_6961                            ; $690f: $30 $50

    jr z, jr_0e0_696b                             ; $6911: $28 $58

    jr z, jr_0e0_696d                             ; $6913: $28 $58

    ld l, b                                       ; $6915: $68

jr_0e0_6916:
    jr jr_0e0_6990                                ; $6916: $18 $78

    ld l, b                                       ; $6918: $68
    ld a, b                                       ; $6919: $78
    jr jr_0e0_6984                                ; $691a: $18 $68

    ld a, b                                       ; $691c: $78
    ld d, b                                       ; $691d: $50
    ld [hl], b                                    ; $691e: $70
    ld a, b                                       ; $691f: $78
    jr z, jr_0e0_6996                             ; $6920: $28 $74

    ld e, h                                       ; $6922: $5c
    ld [hl], h                                    ; $6923: $74
    inc a                                         ; $6924: $3c
    ld a, d                                       ; $6925: $7a
    ld e, $71                                     ; $6926: $1e $71
    ccf                                           ; $6928: $3f
    ld h, e                                       ; $6929: $63
    ld a, a                                       ; $692a: $7f
    ld b, a                                       ; $692b: $47
    ld a, l                                       ; $692c: $7d
    db $e3                                        ; $692d: $e3
    db $fd                                        ; $692e: $fd
    di                                            ; $692f: $f3
    cp l                                          ; $6930: $bd
    rst $30                                       ; $6931: $f7
    sbc a                                         ; $6932: $9f
    di                                            ; $6933: $f3
    cp l                                          ; $6934: $bd
    db $d3                                        ; $6935: $d3
    db $fc                                        ; $6936: $fc
    sub e                                         ; $6937: $93
    db $fd                                        ; $6938: $fd
    ld h, e                                       ; $6939: $63
    ld a, l                                       ; $693a: $7d
    ld b, e                                       ; $693b: $43
    ld a, h                                       ; $693c: $7c
    ld b, e                                       ; $693d: $43
    ld a, l                                       ; $693e: $7d
    ld b, a                                       ; $693f: $47
    ld a, a                                       ; $6940: $7f
    ld h, e                                       ; $6941: $63
    ld a, l                                       ; $6942: $7d
    rra                                           ; $6943: $1f
    dec e                                         ; $6944: $1d
    rra                                           ; $6945: $1f
    inc de                                        ; $6946: $13
    ld [bc], a                                    ; $6947: $02
    ld c, $04                                     ; $6948: $0e $04
    nop                                           ; $694a: $00
    sbc b                                         ; $694b: $98
    ld b, a                                       ; $694c: $47
    ccf                                           ; $694d: $3f
    ld c, a                                       ; $694e: $4f
    dec a                                         ; $694f: $3d
    ld e, a                                       ; $6950: $5f
    ld a, c                                       ; $6951: $79
    ld c, a                                       ; $6952: $4f
    dec a                                         ; $6953: $3d
    ld c, e                                       ; $6954: $4b
    ccf                                           ; $6955: $3f
    ld c, c                                       ; $6956: $49
    ccf                                           ; $6957: $3f
    ld b, [hl]                                    ; $6958: $46
    ld a, $42                                     ; $6959: $3e $42
    ld a, [hl]                                    ; $695b: $7e
    ld b, d                                       ; $695c: $42
    ld a, $46                                     ; $695d: $3e $46
    ld a, $4c                                     ; $695f: $3e $4c

jr_0e0_6961:
    inc a                                         ; $6961: $3c
    ld [hl], b                                    ; $6962: $70
    jr nc, @+$04                                  ; $6963: $30 $02

    ld b, b                                       ; $6965: $40
    ld b, $00                                     ; $6966: $06 $00
    rst $38                                       ; $6968: $ff
    dec c                                         ; $6969: $0d
    inc b                                         ; $696a: $04

jr_0e0_696b:
    ei                                            ; $696b: $fb
    dec b                                         ; $696c: $05

jr_0e0_696d:
    di                                            ; $696d: $f3
    db $fc                                        ; $696e: $fc
    ld [c], a                                     ; $696f: $e2
    ld sp, hl                                     ; $6970: $f9
    ld [c], a                                     ; $6971: $e2
    nop                                           ; $6972: $00
    ld a, [c]                                     ; $6973: $f2
    ld sp, hl                                     ; $6974: $f9
    ld a, [c]                                     ; $6975: $f2
    nop                                           ; $6976: $00
    ld [bc], a                                    ; $6977: $02
    rlca                                          ; $6978: $07
    sbc [hl]                                      ; $6979: $9e
    dec c                                         ; $697a: $0d
    ld a, [bc]                                    ; $697b: $0a
    dec d                                         ; $697c: $15
    ld a, [de]                                    ; $697d: $1a
    dec d                                         ; $697e: $15
    ld a, [de]                                    ; $697f: $1a
    rla                                           ; $6980: $17
    jr jr_0e0_69a2                                ; $6981: $18 $1f

    rla                                           ; $6983: $17

jr_0e0_6984:
    ld e, $19                                     ; $6984: $1e $19
    ld d, $1f                                     ; $6986: $16 $1f
    ld a, [bc]                                    ; $6988: $0a
    rrca                                          ; $6989: $0f
    rra                                           ; $698a: $1f
    dec d                                         ; $698b: $15
    cpl                                           ; $698c: $2f
    ld a, [hl-]                                   ; $698d: $3a
    cpl                                           ; $698e: $2f
    inc a                                         ; $698f: $3c

jr_0e0_6990:
    ld e, a                                       ; $6990: $5f
    ld a, b                                       ; $6991: $78
    adc a                                         ; $6992: $8f
    db $fc                                        ; $6993: $fc
    rst $00                                       ; $6994: $c7
    rst $38                                       ; $6995: $ff

jr_0e0_6996:
    ld [c], a                                     ; $6996: $e2
    cp a                                          ; $6997: $bf
    ld [bc], a                                    ; $6998: $02
    ld h, b                                       ; $6999: $60
    cp b                                          ; $699a: $b8
    jr nc, jr_0e0_69ed                            ; $699b: $30 $50

    jr z, jr_0e0_69f7                             ; $699d: $28 $58

    jr z, jr_0e0_69f9                             ; $699f: $28 $58

    ld l, b                                       ; $69a1: $68

jr_0e0_69a2:
    jr jr_0e0_6a1c                                ; $69a2: $18 $78

    ld l, b                                       ; $69a4: $68
    ld a, b                                       ; $69a5: $78
    jr jr_0e0_6a10                                ; $69a6: $18 $68

    ld a, b                                       ; $69a8: $78
    ld d, b                                       ; $69a9: $50
    ld [hl], b                                    ; $69aa: $70
    ld a, b                                       ; $69ab: $78
    jr z, jr_0e0_6a22                             ; $69ac: $28 $74

    ld e, h                                       ; $69ae: $5c
    ld [hl], h                                    ; $69af: $74
    inc a                                         ; $69b0: $3c
    ld a, d                                       ; $69b1: $7a
    ld e, $71                                     ; $69b2: $1e $71
    ccf                                           ; $69b4: $3f
    ld h, e                                       ; $69b5: $63
    ld a, a                                       ; $69b6: $7f
    ld b, a                                       ; $69b7: $47
    ld a, a                                       ; $69b8: $7f
    db $e3                                        ; $69b9: $e3
    cp l                                          ; $69ba: $bd
    di                                            ; $69bb: $f3
    db $fd                                        ; $69bc: $fd
    rst $30                                       ; $69bd: $f7
    sbc a                                         ; $69be: $9f
    di                                            ; $69bf: $f3
    sbc l                                         ; $69c0: $9d
    set 7, h                                      ; $69c1: $cb $fc
    ld c, e                                       ; $69c3: $4b
    ld a, l                                       ; $69c4: $7d
    ld [hl], e                                    ; $69c5: $73
    ld a, l                                       ; $69c6: $7d
    ld [hl], a                                    ; $69c7: $77
    ld a, h                                       ; $69c8: $7c
    ld h, e                                       ; $69c9: $63
    ld a, h                                       ; $69ca: $7c
    ld h, a                                       ; $69cb: $67
    ld a, d                                       ; $69cc: $7a
    daa                                           ; $69cd: $27
    dec sp                                        ; $69ce: $3b
    rra                                           ; $69cf: $1f
    ld a, [de]                                    ; $69d0: $1a
    rlca                                          ; $69d1: $07
    ld b, $02                                     ; $69d2: $06 $02
    inc bc                                        ; $69d4: $03
    inc b                                         ; $69d5: $04
    nop                                           ; $69d6: $00
    sbc [hl]                                      ; $69d7: $9e
    ld b, a                                       ; $69d8: $47
    dec a                                         ; $69d9: $3d
    ld c, a                                       ; $69da: $4f
    dec a                                         ; $69db: $3d
    ld e, a                                       ; $69dc: $5f
    ld a, a                                       ; $69dd: $7f
    ld c, l                                       ; $69de: $4d
    ccf                                           ; $69df: $3f
    ld c, l                                       ; $69e0: $4d
    ccf                                           ; $69e1: $3f
    ld b, [hl]                                    ; $69e2: $46
    ld a, $46                                     ; $69e3: $3e $46
    ld a, $02                                     ; $69e5: $3e $02
    ld a, [hl]                                    ; $69e7: $7e
    ld [bc], a                                    ; $69e8: $02
    ld a, [hl]                                    ; $69e9: $7e
    ld [bc], a                                    ; $69ea: $02
    ld a, [hl]                                    ; $69eb: $7e
    ld [bc], a                                    ; $69ec: $02

jr_0e0_69ed:
    ld a, [hl]                                    ; $69ed: $7e
    ld [bc], a                                    ; $69ee: $02
    ld a, [hl]                                    ; $69ef: $7e
    ld b, $7e                                     ; $69f0: $06 $7e
    inc e                                         ; $69f2: $1c
    ld a, h                                       ; $69f3: $7c
    ld a, b                                       ; $69f4: $78
    ld c, b                                       ; $69f5: $48
    ld [bc], a                                    ; $69f6: $02

jr_0e0_69f7:
    ld [hl], b                                    ; $69f7: $70
    rst $38                                       ; $69f8: $ff

jr_0e0_69f9:
    dec c                                         ; $69f9: $0d
    inc b                                         ; $69fa: $04
    ei                                            ; $69fb: $fb
    dec b                                         ; $69fc: $05
    di                                            ; $69fd: $f3
    db $fc                                        ; $69fe: $fc
    db $e3                                        ; $69ff: $e3
    ld sp, hl                                     ; $6a00: $f9
    db $e3                                        ; $6a01: $e3
    nop                                           ; $6a02: $00
    di                                            ; $6a03: $f3
    ld sp, hl                                     ; $6a04: $f9
    di                                            ; $6a05: $f3
    nop                                           ; $6a06: $00
    ld [bc], a                                    ; $6a07: $02
    rlca                                          ; $6a08: $07
    sbc [hl]                                      ; $6a09: $9e
    dec c                                         ; $6a0a: $0d
    ld a, [bc]                                    ; $6a0b: $0a
    dec d                                         ; $6a0c: $15
    ld a, [de]                                    ; $6a0d: $1a
    dec d                                         ; $6a0e: $15
    ld a, [de]                                    ; $6a0f: $1a

jr_0e0_6a10:
    rla                                           ; $6a10: $17
    jr jr_0e0_6a32                                ; $6a11: $18 $1f

    rla                                           ; $6a13: $17
    ld e, $19                                     ; $6a14: $1e $19
    ld d, $1f                                     ; $6a16: $16 $1f
    ld a, [bc]                                    ; $6a18: $0a
    rrca                                          ; $6a19: $0f
    rra                                           ; $6a1a: $1f
    dec d                                         ; $6a1b: $15

jr_0e0_6a1c:
    cpl                                           ; $6a1c: $2f
    ld a, [hl-]                                   ; $6a1d: $3a
    cpl                                           ; $6a1e: $2f
    inc a                                         ; $6a1f: $3c
    ld e, a                                       ; $6a20: $5f
    ld a, b                                       ; $6a21: $78

jr_0e0_6a22:
    adc a                                         ; $6a22: $8f
    db $fc                                        ; $6a23: $fc
    rst $00                                       ; $6a24: $c7
    rst $38                                       ; $6a25: $ff
    ld [c], a                                     ; $6a26: $e2
    cp a                                          ; $6a27: $bf
    ld [bc], a                                    ; $6a28: $02
    ld h, b                                       ; $6a29: $60
    or [hl]                                       ; $6a2a: $b6
    jr nc, jr_0e0_6a7d                            ; $6a2b: $30 $50

    jr z, jr_0e0_6a87                             ; $6a2d: $28 $58

    jr z, jr_0e0_6a89                             ; $6a2f: $28 $58

    ld l, b                                       ; $6a31: $68

jr_0e0_6a32:
    jr jr_0e0_6aac                                ; $6a32: $18 $78

    ld l, b                                       ; $6a34: $68
    ld a, b                                       ; $6a35: $78
    jr jr_0e0_6aa0                                ; $6a36: $18 $68

    ld a, b                                       ; $6a38: $78
    ld d, b                                       ; $6a39: $50
    ld [hl], b                                    ; $6a3a: $70
    ld a, b                                       ; $6a3b: $78
    jr z, jr_0e0_6ab2                             ; $6a3c: $28 $74

    ld e, h                                       ; $6a3e: $5c
    ld [hl], h                                    ; $6a3f: $74
    inc a                                         ; $6a40: $3c
    ld a, d                                       ; $6a41: $7a
    ld e, $71                                     ; $6a42: $1e $71
    ccf                                           ; $6a44: $3f
    ld h, e                                       ; $6a45: $63
    ld a, a                                       ; $6a46: $7f
    ld b, a                                       ; $6a47: $47
    ld a, l                                       ; $6a48: $7d
    db $e3                                        ; $6a49: $e3
    db $fd                                        ; $6a4a: $fd
    di                                            ; $6a4b: $f3
    cp l                                          ; $6a4c: $bd
    rst $30                                       ; $6a4d: $f7
    sbc a                                         ; $6a4e: $9f
    di                                            ; $6a4f: $f3
    cp l                                          ; $6a50: $bd
    db $d3                                        ; $6a51: $d3
    db $fc                                        ; $6a52: $fc
    sub e                                         ; $6a53: $93
    db $fd                                        ; $6a54: $fd
    ld h, e                                       ; $6a55: $63
    ld a, l                                       ; $6a56: $7d
    ld b, e                                       ; $6a57: $43
    ld a, [hl]                                    ; $6a58: $7e
    ld b, e                                       ; $6a59: $43
    ld a, l                                       ; $6a5a: $7d
    ld h, e                                       ; $6a5b: $63
    ld a, l                                       ; $6a5c: $7d
    inc sp                                        ; $6a5d: $33
    dec a                                         ; $6a5e: $3d
    rrca                                          ; $6a5f: $0f
    dec c                                         ; $6a60: $0d
    ld [bc], a                                    ; $6a61: $02
    inc bc                                        ; $6a62: $03
    ld b, $00                                     ; $6a63: $06 $00
    sbc d                                         ; $6a65: $9a
    ld b, a                                       ; $6a66: $47
    ccf                                           ; $6a67: $3f
    ld c, a                                       ; $6a68: $4f
    dec a                                         ; $6a69: $3d
    ld e, a                                       ; $6a6a: $5f
    ld a, c                                       ; $6a6b: $79
    ld c, a                                       ; $6a6c: $4f
    dec a                                         ; $6a6d: $3d
    ld c, e                                       ; $6a6e: $4b
    ccf                                           ; $6a6f: $3f
    ld c, c                                       ; $6a70: $49
    ccf                                           ; $6a71: $3f
    ld b, [hl]                                    ; $6a72: $46
    ld a, $42                                     ; $6a73: $3e $42
    ld a, $42                                     ; $6a75: $3e $42
    ld a, $62                                     ; $6a77: $3e $62
    ld a, [hl]                                    ; $6a79: $7e
    ld b, [hl]                                    ; $6a7a: $46
    ld a, $78                                     ; $6a7b: $3e $78

jr_0e0_6a7d:
    jr c, jr_0e0_6af7                             ; $6a7d: $38 $78

    ld c, b                                       ; $6a7f: $48
    ld [bc], a                                    ; $6a80: $02
    ld [hl], b                                    ; $6a81: $70
    inc b                                         ; $6a82: $04
    nop                                           ; $6a83: $00
    rst $38                                       ; $6a84: $ff
    dec c                                         ; $6a85: $0d
    inc b                                         ; $6a86: $04

jr_0e0_6a87:
    ei                                            ; $6a87: $fb
    dec b                                         ; $6a88: $05

jr_0e0_6a89:
    di                                            ; $6a89: $f3
    db $fc                                        ; $6a8a: $fc
    ld [c], a                                     ; $6a8b: $e2
    ld sp, hl                                     ; $6a8c: $f9
    ld [c], a                                     ; $6a8d: $e2
    nop                                           ; $6a8e: $00
    ld a, [c]                                     ; $6a8f: $f2
    ld sp, hl                                     ; $6a90: $f9
    ld a, [c]                                     ; $6a91: $f2
    nop                                           ; $6a92: $00
    ld [bc], a                                    ; $6a93: $02
    rlca                                          ; $6a94: $07
    sbc [hl]                                      ; $6a95: $9e
    dec c                                         ; $6a96: $0d
    ld a, [bc]                                    ; $6a97: $0a
    dec d                                         ; $6a98: $15
    ld a, [de]                                    ; $6a99: $1a
    dec d                                         ; $6a9a: $15
    ld a, [de]                                    ; $6a9b: $1a
    rla                                           ; $6a9c: $17
    jr jr_0e0_6abe                                ; $6a9d: $18 $1f

    rla                                           ; $6a9f: $17

jr_0e0_6aa0:
    ld e, $19                                     ; $6aa0: $1e $19
    ld d, $1f                                     ; $6aa2: $16 $1f
    ld a, [bc]                                    ; $6aa4: $0a
    rrca                                          ; $6aa5: $0f
    rra                                           ; $6aa6: $1f
    dec d                                         ; $6aa7: $15
    cpl                                           ; $6aa8: $2f
    ld a, [hl-]                                   ; $6aa9: $3a
    cpl                                           ; $6aaa: $2f
    inc a                                         ; $6aab: $3c

jr_0e0_6aac:
    ld e, a                                       ; $6aac: $5f
    ld a, b                                       ; $6aad: $78
    adc a                                         ; $6aae: $8f
    db $fc                                        ; $6aaf: $fc
    rst $00                                       ; $6ab0: $c7
    rst $38                                       ; $6ab1: $ff

jr_0e0_6ab2:
    ld [c], a                                     ; $6ab2: $e2
    rst $38                                       ; $6ab3: $ff
    ld [bc], a                                    ; $6ab4: $02
    ld h, b                                       ; $6ab5: $60
    cp h                                          ; $6ab6: $bc
    jr nc, jr_0e0_6b09                            ; $6ab7: $30 $50

    jr z, jr_0e0_6b13                             ; $6ab9: $28 $58

    jr z, jr_0e0_6b15                             ; $6abb: $28 $58

    ld l, b                                       ; $6abd: $68

jr_0e0_6abe:
    jr @+$7a                                      ; $6abe: $18 $78

    ld l, b                                       ; $6ac0: $68
    ld a, b                                       ; $6ac1: $78
    jr jr_0e0_6b2c                                ; $6ac2: $18 $68

    ld a, b                                       ; $6ac4: $78
    ld d, b                                       ; $6ac5: $50
    ld [hl], b                                    ; $6ac6: $70
    ld a, b                                       ; $6ac7: $78
    jr z, jr_0e0_6b3e                             ; $6ac8: $28 $74

    ld e, h                                       ; $6aca: $5c
    ld [hl], h                                    ; $6acb: $74
    inc a                                         ; $6acc: $3c
    ld a, d                                       ; $6acd: $7a
    ld e, $71                                     ; $6ace: $1e $71
    ccf                                           ; $6ad0: $3f
    ld h, e                                       ; $6ad1: $63
    ld a, a                                       ; $6ad2: $7f
    ld b, a                                       ; $6ad3: $47
    ld a, l                                       ; $6ad4: $7d
    db $e3                                        ; $6ad5: $e3
    cp l                                          ; $6ad6: $bd
    di                                            ; $6ad7: $f3
    cp l                                          ; $6ad8: $bd
    rst $30                                       ; $6ad9: $f7
    rst $38                                       ; $6ada: $ff
    or e                                          ; $6adb: $b3
    db $fd                                        ; $6adc: $fd
    or e                                          ; $6add: $b3
    db $fc                                        ; $6ade: $fc
    ld h, e                                       ; $6adf: $63
    ld a, l                                       ; $6ae0: $7d
    ld h, e                                       ; $6ae1: $63
    ld a, l                                       ; $6ae2: $7d
    ld h, c                                       ; $6ae3: $61
    ld a, [hl]                                    ; $6ae4: $7e
    ld b, c                                       ; $6ae5: $41
    ld a, [hl]                                    ; $6ae6: $7e
    ld b, c                                       ; $6ae7: $41
    ld a, [hl]                                    ; $6ae8: $7e
    ld b, c                                       ; $6ae9: $41
    ld a, a                                       ; $6aea: $7f
    ld b, c                                       ; $6aeb: $41
    ld a, [hl]                                    ; $6aec: $7e
    ld h, c                                       ; $6aed: $61
    ld a, [hl]                                    ; $6aee: $7e
    add hl, sp                                    ; $6aef: $39
    ccf                                           ; $6af0: $3f
    ld e, $12                                     ; $6af1: $1e $12
    ld [bc], a                                    ; $6af3: $02
    ld c, $98                                     ; $6af4: $0e $98
    ld b, a                                       ; $6af6: $47

jr_0e0_6af7:
    dec a                                         ; $6af7: $3d
    ld c, a                                       ; $6af8: $4f
    ccf                                           ; $6af9: $3f
    ld e, a                                       ; $6afa: $5f
    ld a, c                                       ; $6afb: $79
    ld c, a                                       ; $6afc: $4f
    add hl, sp                                    ; $6afd: $39
    ld d, e                                       ; $6afe: $53
    ccf                                           ; $6aff: $3f
    ld d, e                                       ; $6b00: $53
    ccf                                           ; $6b01: $3f
    ld c, [hl]                                    ; $6b02: $4e
    ld a, $6e                                     ; $6b03: $3e $6e
    ld a, $46                                     ; $6b05: $3e $46
    ld a, $66                                     ; $6b07: $3e $66

jr_0e0_6b09:
    ld e, [hl]                                    ; $6b09: $5e
    ld h, h                                       ; $6b0a: $64
    ld e, h                                       ; $6b0b: $5c
    ld a, b                                       ; $6b0c: $78
    ld e, b                                       ; $6b0d: $58
    ld [bc], a                                    ; $6b0e: $02
    ld h, b                                       ; $6b0f: $60
    ld [bc], a                                    ; $6b10: $02
    ld b, b                                       ; $6b11: $40
    inc b                                         ; $6b12: $04

jr_0e0_6b13:
    nop                                           ; $6b13: $00
    rst $38                                       ; $6b14: $ff

jr_0e0_6b15:
    dec c                                         ; $6b15: $0d
    inc b                                         ; $6b16: $04
    ei                                            ; $6b17: $fb
    dec b                                         ; $6b18: $05
    di                                            ; $6b19: $f3
    db $fc                                        ; $6b1a: $fc
    ld [c], a                                     ; $6b1b: $e2
    ld a, [$ffe4]                                 ; $6b1c: $fa $e4 $ff
    ld a, [c]                                     ; $6b1f: $f2
    ld a, [$fff2]                                 ; $6b20: $fa $f2 $ff
    ld [bc], a                                    ; $6b23: $02
    ld c, $85                                     ; $6b24: $0e $85
    ccf                                           ; $6b26: $3f
    ld sp, $4a75                                  ; $6b27: $31 $75 $4a
    push de                                       ; $6b2a: $d5
    ld [bc], a                                    ; $6b2b: $02

jr_0e0_6b2c:
    xor d                                         ; $6b2c: $aa
    sub a                                         ; $6b2d: $97
    push de                                       ; $6b2e: $d5
    ld d, a                                       ; $6b2f: $57
    ld l, b                                       ; $6b30: $68
    cpl                                           ; $6b31: $2f
    inc sp                                        ; $6b32: $33
    ccf                                           ; $6b33: $3f
    dec l                                         ; $6b34: $2d
    ld a, [de]                                    ; $6b35: $1a
    rra                                           ; $6b36: $1f
    ld c, $0f                                     ; $6b37: $0e $0f
    ld [de], a                                    ; $6b39: $12
    rra                                           ; $6b3a: $1f
    dec e                                         ; $6b3b: $1d
    rra                                           ; $6b3c: $1f
    inc hl                                        ; $6b3d: $23

jr_0e0_6b3e:
    ccf                                           ; $6b3e: $3f
    ld c, b                                       ; $6b3f: $48
    ld a, a                                       ; $6b40: $7f
    ld e, h                                       ; $6b41: $5c
    ld [hl], a                                    ; $6b42: $77
    ld a, [hl]                                    ; $6b43: $7e
    ld [hl], e                                    ; $6b44: $73
    inc b                                         ; $6b45: $04
    db $10                                        ; $6b46: $10
    add d                                         ; $6b47: $82
    inc e                                         ; $6b48: $1c
    inc c                                         ; $6b49: $0c
    ld [bc], a                                    ; $6b4a: $02
    inc e                                         ; $6b4b: $1c
    add a                                         ; $6b4c: $87
    ld e, $02                                     ; $6b4d: $1e $02
    ld c, $1e                                     ; $6b4f: $0e $1e
    dec b                                         ; $6b51: $05
    rra                                           ; $6b52: $1f
    dec bc                                        ; $6b53: $0b
    ld [bc], a                                    ; $6b54: $02
    rra                                           ; $6b55: $1f
    xor l                                         ; $6b56: $ad
    dec d                                         ; $6b57: $15
    ld e, $0a                                     ; $6b58: $1e $0a
    rra                                           ; $6b5a: $1f
    dec b                                         ; $6b5b: $05
    rra                                           ; $6b5c: $1f
    ld de, $1f0f                                  ; $6b5d: $11 $0f $1f
    dec b                                         ; $6b60: $05
    rra                                           ; $6b61: $1f
    add $7a                                       ; $6b62: $c6 $7a
    add $fa                                       ; $6b64: $c6 $fa
    ld a, b                                       ; $6b66: $78
    ld h, b                                       ; $6b67: $60
    ld a, b                                       ; $6b68: $78
    ld h, b                                       ; $6b69: $60
    ld a, a                                       ; $6b6a: $7f
    ld h, e                                       ; $6b6b: $63
    ccf                                           ; $6b6c: $3f
    inc sp                                        ; $6b6d: $33
    dec a                                         ; $6b6e: $3d
    scf                                           ; $6b6f: $37
    jr c, @+$41                                   ; $6b70: $38 $3f

    add hl, hl                                    ; $6b72: $29
    ccf                                           ; $6b73: $3f
    ld h, [hl]                                    ; $6b74: $66
    ld a, a                                       ; $6b75: $7f
    ld b, b                                       ; $6b76: $40
    ld a, a                                       ; $6b77: $7f
    ld b, b                                       ; $6b78: $40
    ld a, a                                       ; $6b79: $7f
    ld b, d                                       ; $6b7a: $42
    ld a, a                                       ; $6b7b: $7f
    sbc b                                         ; $6b7c: $98
    rst $38                                       ; $6b7d: $ff
    add c                                         ; $6b7e: $81
    rst $38                                       ; $6b7f: $ff
    ld b, a                                       ; $6b80: $47
    ld a, [hl]                                    ; $6b81: $7e
    ccf                                           ; $6b82: $3f
    inc a                                         ; $6b83: $3c
    ld [bc], a                                    ; $6b84: $02
    rlca                                          ; $6b85: $07
    inc b                                         ; $6b86: $04
    nop                                           ; $6b87: $00
    add c                                         ; $6b88: $81
    ld b, $03                                     ; $6b89: $06 $03
    ld e, $92                                     ; $6b8b: $1e $92
    ld b, $1a                                     ; $6b8d: $06 $1a
    ld d, $1a                                     ; $6b8f: $16 $1a
    ld b, $1a                                     ; $6b91: $06 $1a
    ld b, $1a                                     ; $6b93: $06 $1a
    ld b, $1a                                     ; $6b95: $06 $1a
    ld b, $1a                                     ; $6b97: $06 $1a
    ld b, $1a                                     ; $6b99: $06 $1a
    ld c, $16                                     ; $6b9b: $0e $16
    rra                                           ; $6b9d: $1f
    dec e                                         ; $6b9e: $1d
    ld [bc], a                                    ; $6b9f: $02
    ld e, $82                                     ; $6ba0: $1e $82
    inc e                                         ; $6ba2: $1c
    inc b                                         ; $6ba3: $04
    ld [bc], a                                    ; $6ba4: $02
    jr @+$01                                      ; $6ba5: $18 $ff

    db $0d, $04, $fb, $05, $f3, $fc, $e2, $fa, $e4, $ff, $f2, $fa, $f2, $00, $02, $0e
    db $85, $3f, $31, $75, $4a, $d5, $02, $aa, $97, $d5, $57, $68, $2f, $33, $3f, $2d
    db $1a, $1f, $0e, $0f, $12, $1f, $1d, $1f, $23, $3f, $48, $7f, $5c, $77, $7c, $67
    db $04, $10, $82, $1c, $0c, $02, $1c, $87, $1e, $02, $0e, $1e, $05, $1f, $0b, $02
    db $1f, $ab, $15, $1e, $0a, $1f, $05, $1f, $11, $0f, $1f, $05, $1f, $c6, $fa, $c6
    db $fa, $78, $40, $78, $48, $7f, $4f, $7f, $47, $3e, $2f, $22, $3f, $24, $3f, $58
    db $7f, $44, $7f, $42, $7f, $82, $ff, $80, $ff, $80, $ff, $41, $7f, $02, $3f, $06
    db $00, $82, $0c, $3c, $02, $3e, $94, $0e, $36, $0c, $34, $0c, $34, $0c, $34, $06
    db $3a, $06, $3a, $06, $3a, $0e, $3e, $3f, $31, $3e, $2e, $02, $30, $02, $00, $ff
    db $0d, $04, $fb, $05, $f3, $fc, $e3, $fa, $e5, $ff, $f3, $fa, $f3, $ff, $02, $0e
    db $85, $3f, $31, $75, $4a, $d5, $02, $aa, $97, $d5, $57, $68, $2f, $33, $3f, $2d
    db $1a, $1f, $0e, $0f, $12, $1f, $1d, $1f, $23, $3f, $48, $7f, $5c, $77, $7e, $73
    db $04, $10, $82, $1c, $0c, $02, $1c, $87, $1e, $02, $0e, $1e, $05, $1f, $0b, $02
    db $1f, $ab, $15, $1e, $0a, $1f, $05, $1f, $11, $0f, $1f, $05, $1f, $c6, $7a, $c6
    db $fa, $78, $60, $78, $60, $7f, $63, $3f, $33, $3d, $37, $28, $3f, $69, $7f, $46
    db $7f, $40, $7f, $48, $7f, $88, $ff, $80, $ff, $47, $7f, $3f, $38, $02, $0f, $06
    db $00, $81, $06, $03, $1e, $8d, $06, $1a, $16, $1a, $05, $1b, $05, $1f, $0d, $17
    db $0d, $17, $0e, $02, $1e, $81, $0e, $03, $18, $81, $08, $02, $10, $02, $00, $ff
    db $0d, $04, $fb, $05, $f3, $fc, $e2, $fa, $e4, $ff, $f2, $fa, $f2, $01, $02, $0e
    db $85, $3f, $31, $75, $4a, $d5, $02, $aa, $97, $d5, $57, $68, $2f, $33, $3f, $2d
    db $1a, $1f, $0e, $0f, $12, $1f, $1d, $1f, $23, $3f, $48, $7f, $5c, $77, $7e, $67
    db $04, $10, $82, $1c, $0c, $02, $1c, $87, $1e, $02, $0e, $1e, $05, $1f, $0b, $02
    db $1f, $ad, $15, $1e, $0a, $1f, $05, $1f, $11, $0f, $1f, $05, $1f, $c6, $7a, $e6
    db $fa, $78, $60, $78, $60, $7f, $71, $3e, $3b, $3c, $3f, $36, $3f, $61, $7f, $40
    db $7f, $40, $7f, $80, $ff, $81, $ff, $81, $ff, $e1, $ff, $7f, $5f, $7e, $72, $02
    db $0c, $04, $00, $94, $58, $78, $38, $78, $38, $68, $58, $68, $34, $4c, $24, $7c
    db $64, $5c, $66, $5e, $46, $3e, $5f, $39, $02, $7e, $02, $30, $04, $00, $ff, $0d
    db $04, $fb, $05, $f3, $fc, $e3, $fa, $e5, $ff, $f3, $fa, $f3, $fe, $02, $0e, $85
    db $3f, $31, $75, $4a, $d5, $02, $aa, $97, $d5, $57, $68, $2f, $33, $3f, $2d, $1a
    db $1f, $0e, $0f, $12, $1f, $1d, $1f, $23, $3f, $48, $7f, $5c, $77, $7e, $73, $04
    db $10, $82, $1c, $0c, $02, $1c, $87, $1e, $02, $0e, $1e, $05, $1f, $0b, $02, $1f
    db $a9, $15, $1e, $0a, $1f, $05, $1f, $11, $0f, $1f, $05, $1f, $c6, $7a, $c6, $fa
    db $78, $60, $78, $60, $7f, $63, $3f, $33, $3d, $37, $28, $3f, $29, $3f, $26, $3f
    db $44, $7f, $44, $7f, $80, $ff, $80, $ff, $67, $7e, $02, $3f, $08, $00, $81, $03
    db $03, $0f, $8e, $03, $0d, $0b, $0f, $03, $0f, $03, $0d, $01, $0f, $03, $0d, $07
    db $0b, $02, $0e, $82, $0f, $05, $02, $0f, $04, $00, $ff

    dec c                                         ; $6de2: $0d

    db $04, $fb, $04, $f3, $fc

    ld [c], a                                     ; $6de8: $e2
    ld sp, hl                                     ; $6de9: $f9
    db $e3                                        ; $6dea: $e3
    rst $38                                       ; $6deb: $ff
    ld a, [c]                                     ; $6dec: $f2
    ld hl, sp-$0e                                 ; $6ded: $f8 $f2
    nop                                           ; $6def: $00
    ld [bc], a                                    ; $6df0: $02
    inc bc                                        ; $6df1: $03
    adc a                                         ; $6df2: $8f
    inc b                                         ; $6df3: $04
    rlca                                          ; $6df4: $07
    ld a, [bc]                                    ; $6df5: $0a
    rrca                                          ; $6df6: $0f
    db $10                                        ; $6df7: $10
    rra                                           ; $6df8: $1f
    db $10                                        ; $6df9: $10
    rra                                           ; $6dfa: $1f
    jr nz, jr_0e0_6e3c                            ; $6dfb: $20 $3f

    jr nz, jr_0e0_6e3e                            ; $6dfd: $20 $3f

    jr nz, jr_0e0_6e40                            ; $6dff: $20 $3f

    db $10                                        ; $6e01: $10
    inc bc                                        ; $6e02: $03
    rra                                           ; $6e03: $1f
    inc bc                                        ; $6e04: $03
    rrca                                          ; $6e05: $0f
    adc c                                         ; $6e06: $89
    inc c                                         ; $6e07: $0c
    scf                                           ; $6e08: $37
    ccf                                           ; $6e09: $3f
    ld l, b                                       ; $6e0a: $68
    ld a, a                                       ; $6e0b: $7f
    add a                                         ; $6e0c: $87
    rst $38                                       ; $6e0d: $ff
    sub b                                         ; $6e0e: $90
    rst $38                                       ; $6e0f: $ff
    ld [bc], a                                    ; $6e10: $02
    jr nz, @-$71                                  ; $6e11: $20 $8d

    db $10                                        ; $6e13: $10
    jr nc, jr_0e0_6e1e                            ; $6e14: $30 $08

    jr c, @+$0a                                   ; $6e16: $38 $08

    jr c, jr_0e0_6e1e                             ; $6e18: $38 $04

    inc a                                         ; $6e1a: $3c
    inc b                                         ; $6e1b: $04
    inc a                                         ; $6e1c: $3c
    inc b                                         ; $6e1d: $04

jr_0e0_6e1e:
    inc a                                         ; $6e1e: $3c
    ld [$3803], sp                                ; $6e1f: $08 $03 $38
    inc b                                         ; $6e22: $04
    jr nc, @-$5e                                  ; $6e23: $30 $a0

    inc l                                         ; $6e25: $2c
    inc a                                         ; $6e26: $3c
    ld d, $3e                                     ; $6e27: $16 $3e
    ld hl, $093f                                  ; $6e29: $21 $3f $09
    ccf                                           ; $6e2c: $3f
    ld de, $44ff                                  ; $6e2d: $11 $ff $44
    ld a, [hl]                                    ; $6e30: $7e
    ret nz                                        ; $6e31: $c0

    rst $38                                       ; $6e32: $ff
    ret nz                                        ; $6e33: $c0

    rst $38                                       ; $6e34: $ff
    ret nz                                        ; $6e35: $c0

    rst $38                                       ; $6e36: $ff
    and b                                         ; $6e37: $a0
    rst $38                                       ; $6e38: $ff
    and b                                         ; $6e39: $a0
    rst $38                                       ; $6e3a: $ff
    add b                                         ; $6e3b: $80

jr_0e0_6e3c:
    rst $38                                       ; $6e3c: $ff
    and b                                         ; $6e3d: $a0

jr_0e0_6e3e:
    rst $38                                       ; $6e3e: $ff
    and c                                         ; $6e3f: $a1

jr_0e0_6e40:
    rst $38                                       ; $6e40: $ff
    and c                                         ; $6e41: $a1
    rst $38                                       ; $6e42: $ff
    ld a, e                                       ; $6e43: $7b
    ld a, a                                       ; $6e44: $7f
    ld [bc], a                                    ; $6e45: $02
    ccf                                           ; $6e46: $3f
    add d                                         ; $6e47: $82
    jr c, @+$41                                   ; $6e48: $38 $3f

    ld [bc], a                                    ; $6e4a: $02
    rra                                           ; $6e4b: $1f
    ld [bc], a                                    ; $6e4c: $02
    inc c                                         ; $6e4d: $0c
    inc b                                         ; $6e4e: $04
    nop                                           ; $6e4f: $00
    sub h                                         ; $6e50: $94
    add e                                         ; $6e51: $83
    rst $38                                       ; $6e52: $ff
    inc bc                                        ; $6e53: $03
    rst $38                                       ; $6e54: $ff
    inc bc                                        ; $6e55: $03
    rst $38                                       ; $6e56: $ff
    dec b                                         ; $6e57: $05
    rst $38                                       ; $6e58: $ff
    dec b                                         ; $6e59: $05
    rst $38                                       ; $6e5a: $ff
    dec b                                         ; $6e5b: $05
    rst $38                                       ; $6e5c: $ff
    dec b                                         ; $6e5d: $05
    rst $38                                       ; $6e5e: $ff
    ld bc, $23ff                                  ; $6e5f: $01 $ff $23
    rst $38                                       ; $6e62: $ff
    ld [hl-], a                                   ; $6e63: $32
    cp $02                                        ; $6e64: $fe $02
    db $fc                                        ; $6e66: $fc
    add d                                         ; $6e67: $82
    inc b                                         ; $6e68: $04
    db $fc                                        ; $6e69: $fc
    ld [bc], a                                    ; $6e6a: $02
    ld hl, sp+$02                                 ; $6e6b: $f8 $02
    jr nc, @+$04                                  ; $6e6d: $30 $02

    nop                                           ; $6e6f: $00
    rst $38                                       ; $6e70: $ff

    db $0d, $04, $fb, $04, $f3, $fc, $e3, $f9, $e4, $00, $f3, $f8, $f3, $00, $02, $03
    db $8f, $04, $07, $0a, $0f, $10, $1f, $10, $1f, $20, $3f, $20, $3f, $20, $3f, $10
    db $03, $1f, $03, $0f, $89, $0c, $37, $3f, $68, $7f, $87, $ff, $90, $ff, $02, $40
    db $8d, $20, $60, $10, $70, $10, $70, $08, $78, $08, $78, $08, $78, $10, $03, $70
    db $04, $60, $9e, $58, $78, $2c, $7c, $42, $7e, $12, $7e, $23, $ff, $c4, $ff, $c0
    db $ff, $c0, $ff, $80, $ff, $80, $ff, $80, $ff, $a0, $ff, $a2, $ff, $a2, $ff, $76
    db $7f, $02, $3f, $82, $10, $1f, $02, $0f, $08, $00, $92, $83, $ff, $03, $ff, $05
    db $ff, $05, $ff, $25, $ff, $25, $ff, $01, $ff, $43, $ff, $62, $fe, $02, $fc, $82
    db $04, $fc, $02, $f8, $02, $30, $04, $00, $ff, $0d, $04, $fb, $04, $f3, $fc, $e2
    db $f9, $e3, $ff, $f2, $f8, $f2, $00, $02, $03, $8f, $04, $07, $0a, $0f, $10, $1f
    db $10, $1f, $20, $3f, $20, $3f, $20, $3f, $10, $03, $1f, $03, $0f, $89, $0c, $37
    db $3f, $68, $7f, $87, $ff, $90, $ff, $02, $20, $8d, $10, $30, $08, $38, $08, $38
    db $04, $3c, $04, $3c, $04, $3c, $08, $03, $38, $04, $30, $a0, $2c, $3c, $16, $3e
    db $25, $3f, $09, $3f, $01, $ff, $46, $7e, $c1, $ff, $c8, $ff, $c0, $ff, $c4, $ff
    db $84, $ff, $a2, $ff, $a2, $ff, $a1, $ff, $91, $ff, $93, $ff, $02, $7f, $82, $0e
    db $0f, $02, $03, $06, $00, $93, $83, $ff, $03, $ff, $05, $ff, $05, $ff, $05, $ff
    db $05, $ff, $05, $ff, $21, $ff, $16, $fe, $1c, $03, $fc, $84, $04, $fc, $74, $fc
    db $02, $f8, $02, $30, $ff, $0d, $04, $fb, $04, $f3, $fc, $e3, $f9, $e4, $00, $f3
    db $f8, $f3, $00, $02, $03, $8f, $04, $07, $0a, $0f, $10, $1f, $10, $1f, $20, $3f
    db $20, $3f, $20, $3f, $10, $03, $1f, $03, $0f, $89, $0c, $37, $3f, $68, $7f, $87
    db $ff, $90, $ff, $02, $40, $8d, $20, $60, $10, $70, $10, $70, $08, $78, $08, $78
    db $08, $78, $10, $03, $70, $04, $60, $9e, $58, $78, $2c, $7c, $42, $7e, $12, $7e
    db $23, $ff, $c4, $ff, $c0, $ff, $c0, $ff, $a4, $ff, $a0, $ff, $82, $ff, $a0, $ff
    db $a2, $ff, $a2, $ff, $76, $7f, $02, $3f, $82, $38, $3f, $02, $1f, $02, $0c, $06
    db $00, $92, $83, $ff, $03, $ff, $01, $ff, $05, $ff, $01, $ff, $01, $ff, $05, $ff
    db $45, $ff, $66, $fe, $02, $fc, $82, $0c, $fc, $02, $f0, $06, $00, $ff, $0d, $04
    db $fb, $04, $f3, $fc, $e2, $f9, $e3, $ff, $f2, $f8, $f2, $00, $02, $03, $8f, $04
    db $07, $0a, $0f, $10, $1f, $10, $1f, $20, $3f, $20, $3f, $20, $3f, $10, $03, $1f
    db $03, $0f, $89, $0c, $37, $3f, $68, $7f, $a7, $ff, $90, $ff, $02, $20, $8d, $10
    db $30, $08, $38, $08, $38, $04, $3c, $04, $3c, $04, $3c, $08, $03, $38, $04, $30
    db $9f, $2c, $3c, $16, $3e, $21, $3f, $01, $3f, $11, $ff, $40, $7e, $c1, $ff, $c0
    db $ff, $a0, $ff, $a0, $ff, $a0, $ff, $a0, $ff, $a0, $ff, $b2, $ff, $72, $7f, $3e
    db $03, $3f, $84, $20, $3f, $2e, $3f, $02, $1f, $02, $0c, $02, $00, $94, $c3, $ff
    db $03, $ff, $13, $ff, $03, $ff, $21, $ff, $25, $ff, $05, $ff, $45, $ff, $49, $ff
    db $c9, $ff, $02, $fe, $82, $70, $f0, $02, $c0, $04, $00, $ff

    dec c                                         ; $709d: $0d
    inc b                                         ; $709e: $04
    ei                                            ; $709f: $fb
    inc b                                         ; $70a0: $04
    di                                            ; $70a1: $f3
    db $fc                                        ; $70a2: $fc
    ld [c], a                                     ; $70a3: $e2
    ld sp, hl                                     ; $70a4: $f9
    db $e3                                        ; $70a5: $e3
    rst $38                                       ; $70a6: $ff
    ld a, [c]                                     ; $70a7: $f2
    ld hl, sp-$0e                                 ; $70a8: $f8 $f2
    nop                                           ; $70aa: $00
    ld [bc], a                                    ; $70ab: $02
    inc bc                                        ; $70ac: $03
    adc c                                         ; $70ad: $89
    inc b                                         ; $70ae: $04
    rlca                                          ; $70af: $07
    ld [$100f], sp                                ; $70b0: $08 $0f $10
    rra                                           ; $70b3: $1f
    db $10                                        ; $70b4: $10
    rra                                           ; $70b5: $1f
    cpl                                           ; $70b6: $2f
    ld [bc], a                                    ; $70b7: $02
    ccf                                           ; $70b8: $3f
    add d                                         ; $70b9: $82
    jr nc, jr_0e0_70e0                            ; $70ba: $30 $24

    ld [bc], a                                    ; $70bc: $02
    ccf                                           ; $70bd: $3f
    adc a                                         ; $70be: $8f
    inc sp                                        ; $70bf: $33
    rra                                           ; $70c0: $1f
    inc e                                         ; $70c1: $1c
    rla                                           ; $70c2: $17
    dec de                                        ; $70c3: $1b
    rra                                           ; $70c4: $1f
    inc d                                         ; $70c5: $14
    inc a                                         ; $70c6: $3c
    scf                                           ; $70c7: $37
    ld e, e                                       ; $70c8: $5b
    ld a, a                                       ; $70c9: $7f
    sub a                                         ; $70ca: $97
    rst $38                                       ; $70cb: $ff
    call Call_000_02ff                            ; $70cc: $cd $ff $02
    jr nz, @-$77                                  ; $70cf: $20 $87

    db $10                                        ; $70d1: $10
    jr nc, jr_0e0_70dc                            ; $70d2: $30 $08

    jr c, jr_0e0_70de                             ; $70d4: $38 $08

    jr c, jr_0e0_710c                             ; $70d6: $38 $34

    ld [bc], a                                    ; $70d8: $02
    inc a                                         ; $70d9: $3c
    add d                                         ; $70da: $82
    inc c                                         ; $70db: $0c

jr_0e0_70dc:
    inc h                                         ; $70dc: $24
    ld [bc], a                                    ; $70dd: $02

jr_0e0_70de:
    inc a                                         ; $70de: $3c
    add c                                         ; $70df: $81

jr_0e0_70e0:
    inc c                                         ; $70e0: $0c
    ld [bc], a                                    ; $70e1: $02
    jr c, @-$58                                   ; $70e2: $38 $a6

    jr z, jr_0e0_70fe                             ; $70e4: $28 $18

    jr c, jr_0e0_7110                             ; $70e6: $38 $28

    inc a                                         ; $70e8: $3c
    inc l                                         ; $70e9: $2c
    ld [de], a                                    ; $70ea: $12
    ld a, $29                                     ; $70eb: $3e $29
    ccf                                           ; $70ed: $3f
    inc sp                                        ; $70ee: $33
    ccf                                           ; $70ef: $3f
    sbc c                                         ; $70f0: $99
    rst $38                                       ; $70f1: $ff
    ld c, h                                       ; $70f2: $4c
    ld a, [hl]                                    ; $70f3: $7e
    cp b                                          ; $70f4: $b8
    rst $38                                       ; $70f5: $ff
    reti                                          ; $70f6: $d9


    rst $38                                       ; $70f7: $ff
    sbc [hl]                                      ; $70f8: $9e
    rst $38                                       ; $70f9: $ff
    push de                                       ; $70fa: $d5
    rst $38                                       ; $70fb: $ff
    db $f4                                        ; $70fc: $f4
    sbc a                                         ; $70fd: $9f

jr_0e0_70fe:
    pop af                                        ; $70fe: $f1
    rst $18                                       ; $70ff: $df
    ldh a, [rIE]                                  ; $7100: $f0 $ff
    and c                                         ; $7102: $a1
    rst $38                                       ; $7103: $ff
    ldh [rIE], a                                  ; $7104: $e0 $ff
    ld hl, $183f                                  ; $7106: $21 $3f $18
    rra                                           ; $7109: $1f
    ld [bc], a                                    ; $710a: $02
    rrca                                          ; $710b: $0f

jr_0e0_710c:
    ld [bc], a                                    ; $710c: $02
    ld e, $02                                     ; $710d: $1e $02
    inc c                                         ; $710f: $0c

jr_0e0_7110:
    inc b                                         ; $7110: $04
    nop                                           ; $7111: $00
    sub [hl]                                      ; $7112: $96
    sbc l                                         ; $7113: $9d
    rst $38                                       ; $7114: $ff
    dec sp                                        ; $7115: $3b
    rst $38                                       ; $7116: $ff
    jp hl                                         ; $7117: $e9


    rst $38                                       ; $7118: $ff
    dec bc                                        ; $7119: $0b
    rst $38                                       ; $711a: $ff
    adc a                                         ; $711b: $8f
    ld sp, hl                                     ; $711c: $f9
    rrca                                          ; $711d: $0f
    ei                                            ; $711e: $fb
    adc a                                         ; $711f: $8f
    rst $38                                       ; $7120: $ff
    dec b                                         ; $7121: $05
    rst $38                                       ; $7122: $ff
    add a                                         ; $7123: $87
    rst $38                                       ; $7124: $ff
    inc b                                         ; $7125: $04
    db $fc                                        ; $7126: $fc
    sbc b                                         ; $7127: $98
    ld hl, sp+$02                                 ; $7128: $f8 $02
    ldh a, [rSC]                                  ; $712a: $f0 $02
    ld a, b                                       ; $712c: $78
    ld [bc], a                                    ; $712d: $02
    jr nc, jr_0e0_7132                            ; $712e: $30 $02

    nop                                           ; $7130: $00
    rst $38                                       ; $7131: $ff

jr_0e0_7132:
    dec c                                         ; $7132: $0d
    inc b                                         ; $7133: $04
    ei                                            ; $7134: $fb
    inc b                                         ; $7135: $04
    di                                            ; $7136: $f3
    db $fc                                        ; $7137: $fc
    db $e3                                        ; $7138: $e3
    ld sp, hl                                     ; $7139: $f9
    db $e4                                        ; $713a: $e4
    nop                                           ; $713b: $00
    di                                            ; $713c: $f3
    ld hl, sp-$0d                                 ; $713d: $f8 $f3
    nop                                           ; $713f: $00
    ld [bc], a                                    ; $7140: $02
    inc bc                                        ; $7141: $03
    adc c                                         ; $7142: $89
    inc b                                         ; $7143: $04
    rlca                                          ; $7144: $07
    ld [$100f], sp                                ; $7145: $08 $0f $10
    rra                                           ; $7148: $1f
    db $10                                        ; $7149: $10
    rra                                           ; $714a: $1f
    cpl                                           ; $714b: $2f
    ld [bc], a                                    ; $714c: $02
    ccf                                           ; $714d: $3f
    add d                                         ; $714e: $82
    jr nc, jr_0e0_7175                            ; $714f: $30 $24

    ld [bc], a                                    ; $7151: $02
    ccf                                           ; $7152: $3f
    adc a                                         ; $7153: $8f
    inc sp                                        ; $7154: $33
    rra                                           ; $7155: $1f
    inc e                                         ; $7156: $1c
    rla                                           ; $7157: $17
    dec de                                        ; $7158: $1b
    ccf                                           ; $7159: $3f
    inc [hl]                                      ; $715a: $34
    ld e, h                                       ; $715b: $5c
    ld [hl], a                                    ; $715c: $77
    sbc a                                         ; $715d: $9f
    rst $38                                       ; $715e: $ff
    call $9aff                                    ; $715f: $cd $ff $9a
    rst $38                                       ; $7162: $ff
    ld [bc], a                                    ; $7163: $02
    ld b, b                                       ; $7164: $40
    add a                                         ; $7165: $87
    jr nz, jr_0e0_71c8                            ; $7166: $20 $60

    db $10                                        ; $7168: $10
    ld [hl], b                                    ; $7169: $70
    db $10                                        ; $716a: $10
    ld [hl], b                                    ; $716b: $70
    ld l, b                                       ; $716c: $68
    ld [bc], a                                    ; $716d: $02
    ld a, b                                       ; $716e: $78
    add d                                         ; $716f: $82
    jr @+$4a                                      ; $7170: $18 $48

    ld [bc], a                                    ; $7172: $02
    ld a, b                                       ; $7173: $78
    add c                                         ; $7174: $81

jr_0e0_7175:
    jr jr_0e0_7179                                ; $7175: $18 $02

    ld [hl], b                                    ; $7177: $70
    and h                                         ; $7178: $a4

jr_0e0_7179:
    ld d, b                                       ; $7179: $50
    jr nc, @+$7a                                  ; $717a: $30 $78

    ld e, b                                       ; $717c: $58
    ld [hl], h                                    ; $717d: $74
    ld e, h                                       ; $717e: $5c
    ld [hl], d                                    ; $717f: $72
    ld a, [hl]                                    ; $7180: $7e
    ld h, [hl]                                    ; $7181: $66
    ld a, [hl]                                    ; $7182: $7e
    ld [hl-], a                                   ; $7183: $32
    ld a, [hl]                                    ; $7184: $7e
    sbc l                                         ; $7185: $9d
    rst $38                                       ; $7186: $ff
    cp b                                          ; $7187: $b8
    rst $38                                       ; $7188: $ff
    reti                                          ; $7189: $d9


    rst $38                                       ; $718a: $ff
    sbc [hl]                                      ; $718b: $9e
    rst $38                                       ; $718c: $ff
    push de                                       ; $718d: $d5
    rst $38                                       ; $718e: $ff
    db $f4                                        ; $718f: $f4
    sbc a                                         ; $7190: $9f
    pop af                                        ; $7191: $f1
    rst $18                                       ; $7192: $df
    ldh a, [rIE]                                  ; $7193: $f0 $ff
    and c                                         ; $7195: $a1
    rst $38                                       ; $7196: $ff
    ldh [rIE], a                                  ; $7197: $e0 $ff
    ld hl, $183f                                  ; $7199: $21 $3f $18
    rra                                           ; $719c: $1f
    ld [bc], a                                    ; $719d: $02
    rrca                                          ; $719e: $0f
    ld [bc], a                                    ; $719f: $02
    ld e, $02                                     ; $71a0: $1e $02
    inc c                                         ; $71a2: $0c
    ld b, $00                                     ; $71a3: $06 $00
    sub h                                         ; $71a5: $94
    dec sp                                        ; $71a6: $3b
    rst $38                                       ; $71a7: $ff
    ld sp, hl                                     ; $71a8: $f9
    rst $38                                       ; $71a9: $ff
    dec de                                        ; $71aa: $1b
    rst $38                                       ; $71ab: $ff
    adc a                                         ; $71ac: $8f
    ld sp, hl                                     ; $71ad: $f9
    rrca                                          ; $71ae: $0f
    ei                                            ; $71af: $fb
    adc a                                         ; $71b0: $8f
    rst $38                                       ; $71b1: $ff
    dec h                                         ; $71b2: $25
    rst $38                                       ; $71b3: $ff
    rst $00                                       ; $71b4: $c7
    rst $38                                       ; $71b5: $ff
    add h                                         ; $71b6: $84
    db $fc                                        ; $71b7: $fc
    sbc b                                         ; $71b8: $98
    ld hl, sp+$02                                 ; $71b9: $f8 $02
    ldh [$08], a                                  ; $71bb: $e0 $08
    nop                                           ; $71bd: $00
    rst $38                                       ; $71be: $ff
    dec c                                         ; $71bf: $0d
    inc b                                         ; $71c0: $04
    ei                                            ; $71c1: $fb
    inc b                                         ; $71c2: $04
    di                                            ; $71c3: $f3
    db $fc                                        ; $71c4: $fc
    ld [c], a                                     ; $71c5: $e2
    ld sp, hl                                     ; $71c6: $f9
    db $e3                                        ; $71c7: $e3

jr_0e0_71c8:
    nop                                           ; $71c8: $00
    ld a, [c]                                     ; $71c9: $f2
    ld hl, sp-$0e                                 ; $71ca: $f8 $f2
    nop                                           ; $71cc: $00
    ld [bc], a                                    ; $71cd: $02
    inc bc                                        ; $71ce: $03
    adc c                                         ; $71cf: $89
    inc b                                         ; $71d0: $04
    rlca                                          ; $71d1: $07
    ld [$100f], sp                                ; $71d2: $08 $0f $10
    rra                                           ; $71d5: $1f
    db $10                                        ; $71d6: $10
    rra                                           ; $71d7: $1f
    cpl                                           ; $71d8: $2f
    ld [bc], a                                    ; $71d9: $02
    ccf                                           ; $71da: $3f
    add d                                         ; $71db: $82
    jr nc, jr_0e0_7202                            ; $71dc: $30 $24

    ld [bc], a                                    ; $71de: $02
    ccf                                           ; $71df: $3f
    adc a                                         ; $71e0: $8f
    inc sp                                        ; $71e1: $33
    rra                                           ; $71e2: $1f
    inc e                                         ; $71e3: $1c
    rla                                           ; $71e4: $17
    dec de                                        ; $71e5: $1b
    rra                                           ; $71e6: $1f
    inc d                                         ; $71e7: $14
    inc a                                         ; $71e8: $3c
    scf                                           ; $71e9: $37
    ld e, e                                       ; $71ea: $5b
    ld a, a                                       ; $71eb: $7f
    sub a                                         ; $71ec: $97
    rst $38                                       ; $71ed: $ff
    xor [hl]                                      ; $71ee: $ae
    rst $38                                       ; $71ef: $ff
    ld [bc], a                                    ; $71f0: $02
    ld b, b                                       ; $71f1: $40
    add a                                         ; $71f2: $87
    jr nz, jr_0e0_7255                            ; $71f3: $20 $60

    db $10                                        ; $71f5: $10
    ld [hl], b                                    ; $71f6: $70
    db $10                                        ; $71f7: $10
    ld [hl], b                                    ; $71f8: $70
    ld l, b                                       ; $71f9: $68
    ld [bc], a                                    ; $71fa: $02
    ld a, b                                       ; $71fb: $78
    add d                                         ; $71fc: $82
    jr jr_0e0_7247                                ; $71fd: $18 $48

    ld [bc], a                                    ; $71ff: $02
    ld a, b                                       ; $7200: $78
    add c                                         ; $7201: $81

jr_0e0_7202:
    jr jr_0e0_7206                                ; $7202: $18 $02

    ld [hl], b                                    ; $7204: $70
    and [hl]                                      ; $7205: $a6

jr_0e0_7206:
    ld d, b                                       ; $7206: $50
    jr nc, jr_0e0_7279                            ; $7207: $30 $70

    ld d, b                                       ; $7209: $50
    ld a, b                                       ; $720a: $78
    ld e, b                                       ; $720b: $58
    inc h                                         ; $720c: $24
    ld a, h                                       ; $720d: $7c
    ld e, d                                       ; $720e: $5a
    ld a, [hl]                                    ; $720f: $7e
    ld h, [hl]                                    ; $7210: $66
    ld a, [hl]                                    ; $7211: $7e
    cp c                                          ; $7212: $b9
    rst $38                                       ; $7213: $ff
    ld l, h                                       ; $7214: $6c
    ld a, a                                       ; $7215: $7f
    sbc c                                         ; $7216: $99
    rst $38                                       ; $7217: $ff
    cp h                                          ; $7218: $bc
    rst $38                                       ; $7219: $ff
    rst $18                                       ; $721a: $df
    rst $38                                       ; $721b: $ff
    ret z                                         ; $721c: $c8

    rst $38                                       ; $721d: $ff
    ld sp, hl                                     ; $721e: $f9
    rst $28                                       ; $721f: $ef
    ld hl, sp-$31                                 ; $7220: $f8 $cf
    pop af                                        ; $7222: $f1
    rst $38                                       ; $7223: $ff
    and b                                         ; $7224: $a0
    rst $38                                       ; $7225: $ff
    and l                                         ; $7226: $a5
    rst $38                                       ; $7227: $ff
    ld d, e                                       ; $7228: $53
    ld e, a                                       ; $7229: $5f
    dec c                                         ; $722a: $0d
    rrca                                          ; $722b: $0f
    ld [bc], a                                    ; $722c: $02
    inc bc                                        ; $722d: $03
    ld [bc], a                                    ; $722e: $02
    ld bc, $0006                                  ; $722f: $01 $06 $00
    sub a                                         ; $7232: $97
    rra                                           ; $7233: $1f
    rst $38                                       ; $7234: $ff
    cp e                                          ; $7235: $bb
    rst $38                                       ; $7236: $ff
    ld l, l                                       ; $7237: $6d
    rst $38                                       ; $7238: $ff
    adc a                                         ; $7239: $8f
    ei                                            ; $723a: $fb
    rrca                                          ; $723b: $0f
    ld sp, hl                                     ; $723c: $f9
    adc a                                         ; $723d: $8f
    rst $38                                       ; $723e: $ff
    dec c                                         ; $723f: $0d
    rst $38                                       ; $7240: $ff
    add a                                         ; $7241: $87
    rst $38                                       ; $7242: $ff
    ld b, $fe                                     ; $7243: $06 $fe
    add h                                         ; $7245: $84
    db $fc                                        ; $7246: $fc

jr_0e0_7247:
    ld h, h                                       ; $7247: $64
    db $fc                                        ; $7248: $fc
    adc b                                         ; $7249: $88
    inc bc                                        ; $724a: $03
    ld hl, sp+$02                                 ; $724b: $f8 $02
    ld a, b                                       ; $724d: $78
    ld [bc], a                                    ; $724e: $02
    jr nc, @+$01                                  ; $724f: $30 $ff

    dec c                                         ; $7251: $0d
    inc b                                         ; $7252: $04
    ei                                            ; $7253: $fb
    inc b                                         ; $7254: $04

jr_0e0_7255:
    di                                            ; $7255: $f3
    db $fc                                        ; $7256: $fc
    db $e3                                        ; $7257: $e3
    ld sp, hl                                     ; $7258: $f9
    db $e4                                        ; $7259: $e4
    nop                                           ; $725a: $00
    di                                            ; $725b: $f3
    ld hl, sp-$0d                                 ; $725c: $f8 $f3
    nop                                           ; $725e: $00
    ld [bc], a                                    ; $725f: $02
    inc bc                                        ; $7260: $03
    adc c                                         ; $7261: $89
    inc b                                         ; $7262: $04
    rlca                                          ; $7263: $07
    ld [$100f], sp                                ; $7264: $08 $0f $10
    rra                                           ; $7267: $1f
    db $10                                        ; $7268: $10
    rra                                           ; $7269: $1f
    cpl                                           ; $726a: $2f
    ld [bc], a                                    ; $726b: $02
    ccf                                           ; $726c: $3f
    add d                                         ; $726d: $82
    jr nc, jr_0e0_7294                            ; $726e: $30 $24

    ld [bc], a                                    ; $7270: $02
    ccf                                           ; $7271: $3f
    adc a                                         ; $7272: $8f
    inc sp                                        ; $7273: $33
    rra                                           ; $7274: $1f
    inc e                                         ; $7275: $1c
    rla                                           ; $7276: $17
    dec de                                        ; $7277: $1b
    ccf                                           ; $7278: $3f

jr_0e0_7279:
    inc [hl]                                      ; $7279: $34
    ld e, h                                       ; $727a: $5c
    ld [hl], a                                    ; $727b: $77
    sbc a                                         ; $727c: $9f
    rst $38                                       ; $727d: $ff
    call $9aff                                    ; $727e: $cd $ff $9a
    rst $38                                       ; $7281: $ff
    ld [bc], a                                    ; $7282: $02
    ld b, b                                       ; $7283: $40
    add a                                         ; $7284: $87
    jr nz, jr_0e0_72e7                            ; $7285: $20 $60

    db $10                                        ; $7287: $10
    ld [hl], b                                    ; $7288: $70
    db $10                                        ; $7289: $10
    ld [hl], b                                    ; $728a: $70
    ld l, b                                       ; $728b: $68
    ld [bc], a                                    ; $728c: $02
    ld a, b                                       ; $728d: $78
    add d                                         ; $728e: $82
    jr jr_0e0_72d9                                ; $728f: $18 $48

    ld [bc], a                                    ; $7291: $02
    ld a, b                                       ; $7292: $78
    add c                                         ; $7293: $81

jr_0e0_7294:
    jr jr_0e0_7298                                ; $7294: $18 $02

    ld [hl], b                                    ; $7296: $70
    and h                                         ; $7297: $a4

jr_0e0_7298:
    ld d, b                                       ; $7298: $50

jr_0e0_7299:
    jr nc, jr_0e0_7313                            ; $7299: $30 $78

    ld e, b                                       ; $729b: $58
    ld [hl], h                                    ; $729c: $74
    ld e, h                                       ; $729d: $5c
    ld [hl], d                                    ; $729e: $72
    ld a, [hl]                                    ; $729f: $7e
    ld h, [hl]                                    ; $72a0: $66
    ld a, [hl]                                    ; $72a1: $7e
    ld [hl-], a                                   ; $72a2: $32
    ld a, [hl]                                    ; $72a3: $7e
    sbc l                                         ; $72a4: $9d
    rst $38                                       ; $72a5: $ff
    cp b                                          ; $72a6: $b8
    rst $38                                       ; $72a7: $ff
    reti                                          ; $72a8: $d9


    rst $38                                       ; $72a9: $ff
    sbc [hl]                                      ; $72aa: $9e
    rst $38                                       ; $72ab: $ff
    push de                                       ; $72ac: $d5
    rst $38                                       ; $72ad: $ff
    ldh a, [$9f]                                  ; $72ae: $f0 $9f
    pop af                                        ; $72b0: $f1
    rst $18                                       ; $72b1: $df
    ldh a, [rIE]                                  ; $72b2: $f0 $ff
    and l                                         ; $72b4: $a5
    rst $38                                       ; $72b5: $ff
    ld [c], a                                     ; $72b6: $e2
    rst $38                                       ; $72b7: $ff
    ld hl, $183f                                  ; $72b8: $21 $3f $18
    rra                                           ; $72bb: $1f
    ld [bc], a                                    ; $72bc: $02
    rlca                                          ; $72bd: $07
    ld a, [bc]                                    ; $72be: $0a
    nop                                           ; $72bf: $00
    sub h                                         ; $72c0: $94
    dec sp                                        ; $72c1: $3b
    rst $38                                       ; $72c2: $ff
    ld sp, hl                                     ; $72c3: $f9
    rst $38                                       ; $72c4: $ff
    dec bc                                        ; $72c5: $0b
    rst $38                                       ; $72c6: $ff
    adc a                                         ; $72c7: $8f
    ld sp, hl                                     ; $72c8: $f9
    rrca                                          ; $72c9: $0f
    ei                                            ; $72ca: $fb
    adc a                                         ; $72cb: $8f

jr_0e0_72cc:
    rst $38                                       ; $72cc: $ff
    dec b                                         ; $72cd: $05
    rst $38                                       ; $72ce: $ff
    add a                                         ; $72cf: $87
    rst $38                                       ; $72d0: $ff
    call nz, $98fc                                ; $72d1: $c4 $fc $98
    ld hl, sp+$02                                 ; $72d4: $f8 $02
    ldh a, [rSC]                                  ; $72d6: $f0 $02
    ld a, b                                       ; $72d8: $78

jr_0e0_72d9:
    ld [bc], a                                    ; $72d9: $02
    jr nc, jr_0e0_72e0                            ; $72da: $30 $04

    nop                                           ; $72dc: $00
    rst $38                                       ; $72dd: $ff
    dec c                                         ; $72de: $0d
    inc b                                         ; $72df: $04

jr_0e0_72e0:
    ei                                            ; $72e0: $fb
    inc b                                         ; $72e1: $04
    di                                            ; $72e2: $f3
    db $fc                                        ; $72e3: $fc
    ld [c], a                                     ; $72e4: $e2
    ld sp, hl                                     ; $72e5: $f9
    db $e3                                        ; $72e6: $e3

jr_0e0_72e7:
    rst $38                                       ; $72e7: $ff
    ld a, [c]                                     ; $72e8: $f2
    ld hl, sp-$0e                                 ; $72e9: $f8 $f2
    nop                                           ; $72eb: $00
    ld [bc], a                                    ; $72ec: $02
    inc bc                                        ; $72ed: $03
    adc c                                         ; $72ee: $89
    inc b                                         ; $72ef: $04
    rlca                                          ; $72f0: $07
    ld [$100f], sp                                ; $72f1: $08 $0f $10
    rra                                           ; $72f4: $1f
    db $10                                        ; $72f5: $10
    rra                                           ; $72f6: $1f
    cpl                                           ; $72f7: $2f
    ld [bc], a                                    ; $72f8: $02
    ccf                                           ; $72f9: $3f
    add d                                         ; $72fa: $82
    jr nc, jr_0e0_7321                            ; $72fb: $30 $24

    ld [bc], a                                    ; $72fd: $02
    ccf                                           ; $72fe: $3f
    adc a                                         ; $72ff: $8f
    inc sp                                        ; $7300: $33
    rra                                           ; $7301: $1f
    inc e                                         ; $7302: $1c
    rla                                           ; $7303: $17
    dec de                                        ; $7304: $1b
    rra                                           ; $7305: $1f
    inc d                                         ; $7306: $14
    inc a                                         ; $7307: $3c
    scf                                           ; $7308: $37
    ld e, e                                       ; $7309: $5b
    ld a, a                                       ; $730a: $7f
    or a                                          ; $730b: $b7
    rst $38                                       ; $730c: $ff
    adc $ff                                       ; $730d: $ce $ff
    ld [bc], a                                    ; $730f: $02
    jr nz, jr_0e0_7299                            ; $7310: $20 $87

    db $10                                        ; $7312: $10

jr_0e0_7313:
    jr nc, jr_0e0_731d                            ; $7313: $30 $08

    jr c, jr_0e0_731f                             ; $7315: $38 $08

    jr c, @+$36                                   ; $7317: $38 $34

    ld [bc], a                                    ; $7319: $02
    inc a                                         ; $731a: $3c
    add d                                         ; $731b: $82
    inc c                                         ; $731c: $0c

jr_0e0_731d:
    inc h                                         ; $731d: $24
    ld [bc], a                                    ; $731e: $02

jr_0e0_731f:
    inc a                                         ; $731f: $3c
    add c                                         ; $7320: $81

jr_0e0_7321:
    inc c                                         ; $7321: $0c
    ld [bc], a                                    ; $7322: $02
    jr c, jr_0e0_72cc                             ; $7323: $38 $a7

    jr z, jr_0e0_733f                             ; $7325: $28 $18

    jr c, jr_0e0_7351                             ; $7327: $38 $28

    inc a                                         ; $7329: $3c
    inc l                                         ; $732a: $2c
    ld [de], a                                    ; $732b: $12
    ld a, $29                                     ; $732c: $3e $29
    ccf                                           ; $732e: $3f
    dec [hl]                                      ; $732f: $35
    ccf                                           ; $7330: $3f
    ld e, e                                       ; $7331: $5b
    rst $38                                       ; $7332: $ff
    sbc h                                         ; $7333: $9c
    cp $f9                                        ; $7334: $fe $f9
    rst $38                                       ; $7336: $ff
    ret c                                         ; $7337: $d8

    rst $38                                       ; $7338: $ff
    cp a                                          ; $7339: $bf
    rst $38                                       ; $733a: $ff
    or $df                                        ; $733b: $f6 $df
    pop af                                        ; $733d: $f1
    sbc a                                         ; $733e: $9f

jr_0e0_733f:
    ldh a, [rIE]                                  ; $733f: $f0 $ff
    or c                                          ; $7341: $b1
    rst $38                                       ; $7342: $ff
    ldh [rIE], a                                  ; $7343: $e0 $ff
    ld h, c                                       ; $7345: $61
    ld a, a                                       ; $7346: $7f
    ld hl, $263f                                  ; $7347: $21 $3f $26
    ccf                                           ; $734a: $3f
    ld de, $1f03                                  ; $734b: $11 $03 $1f
    ld [bc], a                                    ; $734e: $02
    ld e, $02                                     ; $734f: $1e $02

jr_0e0_7351:
    inc c                                         ; $7351: $0c
    ld [bc], a                                    ; $7352: $02
    nop                                           ; $7353: $00
    sub [hl]                                      ; $7354: $96
    add hl, de                                    ; $7355: $19
    rst $38                                       ; $7356: $ff
    cp l                                          ; $7357: $bd
    rst $38                                       ; $7358: $ff
    ld a, e                                       ; $7359: $7b
    rst $38                                       ; $735a: $ff
    or e                                          ; $735b: $b3
    rst $38                                       ; $735c: $ff
    rra                                           ; $735d: $1f
    rst $30                                       ; $735e: $f7
    sbc a                                         ; $735f: $9f
    di                                            ; $7360: $f3
    rrca                                          ; $7361: $0f
    rst $38                                       ; $7362: $ff
    add l                                         ; $7363: $85
    rst $38                                       ; $7364: $ff
    dec h                                         ; $7365: $25
    rst $38                                       ; $7366: $ff
    jp z, $b0fa                                   ; $7367: $ca $fa $b0

    ldh a, [rSC]                                  ; $736a: $f0 $02
    ret nz                                        ; $736c: $c0

    ld [bc], a                                    ; $736d: $02
    add b                                         ; $736e: $80
    inc b                                         ; $736f: $04
    nop                                           ; $7370: $00
    rst $38                                       ; $7371: $ff
    dec c                                         ; $7372: $0d
    inc b                                         ; $7373: $04
    ei                                            ; $7374: $fb
    inc b                                         ; $7375: $04
    di                                            ; $7376: $f3
    db $fc                                        ; $7377: $fc
    ld [c], a                                     ; $7378: $e2
    ld sp, hl                                     ; $7379: $f9
    and $fd                                       ; $737a: $e6 $fd
    ld a, [c]                                     ; $737c: $f2
    ld a, [$fdf2]                                 ; $737d: $fa $f2 $fd
    ld [bc], a                                    ; $7380: $02
    ld b, b                                       ; $7381: $40
    sub [hl]                                      ; $7382: $96
    or b                                          ; $7383: $b0
    ldh a, [$8c]                                  ; $7384: $f0 $8c
    db $fc                                        ; $7386: $fc
    add e                                         ; $7387: $83
    rst $38                                       ; $7388: $ff
    ld b, b                                       ; $7389: $40
    ld a, a                                       ; $738a: $7f
    ld b, b                                       ; $738b: $40
    ld a, a                                       ; $738c: $7f
    ld b, e                                       ; $738d: $43
    ld a, a                                       ; $738e: $7f
    inc h                                         ; $738f: $24
    ccf                                           ; $7390: $3f
    cpl                                           ; $7391: $2f
    add hl, sp                                    ; $7392: $39
    ccf                                           ; $7393: $3f
    inc [hl]                                      ; $7394: $34
    rrca                                          ; $7395: $0f
    inc c                                         ; $7396: $0c
    rlca                                          ; $7397: $07
    dec b                                         ; $7398: $05
    ld [bc], a                                    ; $7399: $02
    rrca                                          ; $739a: $0f
    add [hl]                                      ; $739b: $86
    dec de                                        ; $739c: $1b
    rra                                           ; $739d: $1f
    ld de, $321f                                  ; $739e: $11 $1f $32
    ccf                                           ; $73a1: $3f
    ld [bc], a                                    ; $73a2: $02
    inc c                                         ; $73a3: $0c
    add c                                         ; $73a4: $81
    ld [bc], a                                    ; $73a5: $02
    ld [bc], a                                    ; $73a6: $02
    ld c, $88                                     ; $73a7: $0e $88
    ld [bc], a                                    ; $73a9: $02
    ld b, $0e                                     ; $73aa: $06 $0e
    rrca                                          ; $73ac: $0f
    inc bc                                        ; $73ad: $03
    rrca                                          ; $73ae: $0f
    dec c                                         ; $73af: $0d
    ld c, $02                                     ; $73b0: $0e $02
    ld a, [bc]                                    ; $73b2: $0a
    add e                                         ; $73b3: $83
    ld b, $0e                                     ; $73b4: $06 $0e
    ld b, $02                                     ; $73b6: $06 $02
    inc c                                         ; $73b8: $0c
    add c                                         ; $73b9: $81
    ld b, $03                                     ; $73ba: $06 $03
    ld c, $89                                     ; $73bc: $0e $89
    ld e, d                                       ; $73be: $5a
    cp $39                                        ; $73bf: $fe $39
    rst $38                                       ; $73c1: $ff
    ld d, e                                       ; $73c2: $53
    rst $38                                       ; $73c3: $ff
    ld e, [hl]                                    ; $73c4: $5e
    cp $40                                        ; $73c5: $fe $40
    dec b                                         ; $73c7: $05
    ld h, b                                       ; $73c8: $60
    sub h                                         ; $73c9: $94
    ld b, b                                       ; $73ca: $40
    ld h, b                                       ; $73cb: $60
    ld c, c                                       ; $73cc: $49
    ld a, a                                       ; $73cd: $7f
    ld c, a                                       ; $73ce: $4f
    ld a, l                                       ; $73cf: $7d
    adc a                                         ; $73d0: $8f
    ld sp, hl                                     ; $73d1: $f9
    adc [hl]                                      ; $73d2: $8e
    rst $38                                       ; $73d3: $ff
    adc h                                         ; $73d4: $8c
    rst $38                                       ; $73d5: $ff
    ld c, b                                       ; $73d6: $48
    ld a, a                                       ; $73d7: $7f
    ld [hl], b                                    ; $73d8: $70
    ld a, a                                       ; $73d9: $7f
    ret nz                                        ; $73da: $c0

    rst $38                                       ; $73db: $ff
    ld b, b                                       ; $73dc: $40
    ld a, a                                       ; $73dd: $7f
    ld [bc], a                                    ; $73de: $02
    ccf                                           ; $73df: $3f
    inc b                                         ; $73e0: $04
    rra                                           ; $73e1: $1f
    ld [$8f00], sp                                ; $73e2: $08 $00 $8f
    ld [bc], a                                    ; $73e5: $02
    ld b, $02                                     ; $73e6: $06 $02
    ld b, $01                                     ; $73e8: $06 $01
    rlca                                          ; $73ea: $07
    inc bc                                        ; $73eb: $03
    rlca                                          ; $73ec: $07
    ld bc, $0307                                  ; $73ed: $01 $07 $03
    rlca                                          ; $73f0: $07
    ld bc, $0207                                  ; $73f1: $01 $07 $02
    inc bc                                        ; $73f4: $03
    ld b, $02                                     ; $73f5: $06 $02
    rlca                                          ; $73f7: $07
    ld [bc], a                                    ; $73f8: $02
    inc b                                         ; $73f9: $04
    ld [bc], a                                    ; $73fa: $02
    ld b, $ff                                     ; $73fb: $06 $ff

    db $0d, $04, $fb, $04, $f3, $fc, $e3, $f9, $e7, $fd, $f3, $f9, $f3, $fe, $02, $40
    db $96, $b0, $f0, $8c, $fc, $83, $ff, $40, $7f, $40, $7f, $43, $7f, $24, $3f, $2f
    db $39, $3f, $34, $0f, $0c, $0f, $0d, $02, $1f, $86, $13, $1f, $32, $3f, $25, $3f
    db $02, $0c, $81, $02, $02, $0e, $88, $02, $06, $0e, $0f, $03, $0f, $0d, $0e, $02
    db $0a, $83, $06, $0e, $06, $02, $0e, $a4, $06, $0e, $0a, $0e, $39, $ff, $51, $ff
    db $5e, $fe, $4a, $fe, $20, $30, $60, $70, $40, $70, $40, $70, $c7, $fe, $87, $fc
    db $87, $ff, $46, $7f, $24, $3f, $38, $3f, $70, $7f, $20, $3f, $02, $1f, $04, $0f
    db $0a, $00, $8b, $16, $1e, $12, $1e, $05, $1f, $0b, $1f, $0d, $1f, $0a, $03, $1e
    db $02, $1c, $02, $10, $02, $18, $02, $1c, $02, $00, $ff, $0d, $04, $fb, $04, $f3
    db $fc, $e2, $f9, $e6, $fd, $f2, $f8, $f2, $00, $02, $40, $96, $b0, $f0, $8c, $fc
    db $83, $ff, $40, $7f, $40, $7f, $43, $7f, $24, $3f, $2f, $39, $3f, $34, $0f, $0c
    db $07, $05, $02, $0f, $86, $1b, $1f, $11, $1f, $12, $1f, $02, $0c, $81, $02, $02
    db $0e, $88, $02, $06, $0e, $0f, $03, $0f, $0d, $0e, $02, $0a, $83, $06, $0e, $06
    db $02, $0c, $81, $06, $03, $0e, $88, $5a, $fe, $39, $ff, $7b, $ff, $4e, $fe, $02
    db $18, $97, $10, $18, $10, $18, $30, $38, $23, $3f, $23, $3f, $43, $7f, $83, $ff
    db $43, $7f, $22, $3f, $3c, $3f, $21, $3f, $23, $03, $3f, $02, $1e, $02, $0f, $08
    db $00, $90, $30, $f0, $f8, $98, $f8, $b8, $ec, $fc, $14, $fc, $24, $fc, $d4, $fc
    db $a4, $fc, $02, $ff, $02, $be, $02, $30, $02, $00, $ff, $0d, $04, $fb, $04, $f3
    db $fc, $e3, $f9, $e7, $fd, $f3, $f9, $f3, $fd, $02, $40, $96, $b0, $f0, $8c, $fc
    db $83, $ff, $40, $7f, $40, $7f, $43, $7f, $24, $3f, $2f, $39, $3f, $34, $0f, $0c
    db $0f, $0d, $02, $1f, $86, $13, $1f, $32, $3f, $25, $3f, $02, $0c, $81, $02, $02
    db $0e, $88, $02, $06, $0e, $0f, $03, $0f, $0d, $0e, $02, $0a, $83, $06, $0e, $06
    db $02, $0e, $a4, $06, $0e, $0a, $0e, $39, $ff, $51, $ff, $5e, $fe, $4a, $fe, $20
    db $30, $60, $70, $40, $70, $40, $70, $c7, $fe, $87, $fc, $87, $ff, $46, $7f, $24
    db $3f, $3a, $3f, $24, $3f, $20, $3f, $02, $1f, $02, $0f, $02, $03, $0a, $00, $8d
    db $0a, $0e, $09, $0f, $03, $0f, $01, $0f, $03, $0f, $05, $0f, $06, $05, $0e, $02
    db $0f, $04, $00, $ff, $0d, $04, $fb, $04, $f3, $fc, $e2, $f9, $e6, $fd, $f2, $f8
    db $f2, $00, $02, $40, $96, $b0, $f0, $8c, $fc, $83, $ff, $40, $7f, $40, $7f, $43
    db $7f, $24, $3f, $2f, $39, $3f, $34, $0f, $0c, $07, $05, $02, $0f, $86, $1b, $1f
    db $31, $3f, $26, $3f, $02, $0c, $81, $02, $02, $0e, $88, $02, $06, $0e, $0f, $03
    db $0f, $0d, $0e, $02, $0a, $83, $06, $0e, $06, $02, $0c, $81, $06, $03, $0e, $a2
    db $9a, $fe, $39, $ff, $53, $ff, $5e, $fe, $10, $18, $30, $38, $20, $38, $20, $38
    db $23, $3f, $47, $7f, $47, $7d, $87, $ff, $47, $7f, $34, $3f, $28, $3f, $23, $3f
    db $30, $3f, $02, $1f, $02, $0c, $0a, $00, $92, $90, $f0, $88, $f8, $98, $f8, $88
    db $f8, $14, $fc, $0c, $fc, $84, $fc, $0c, $fc, $1f, $ff, $02, $fe, $02, $78, $02
    db $00, $ff

    dec c                                         ; $762f: $0d
    inc b                                         ; $7630: $04
    db $fc                                        ; $7631: $fc
    inc b                                         ; $7632: $04
    ld a, [c]                                     ; $7633: $f2
    ei                                            ; $7634: $fb
    ld [c], a                                     ; $7635: $e2
    ld a, [$ffe3]                                 ; $7636: $fa $e3 $ff
    ld a, [c]                                     ; $7639: $f2
    ld a, [$fff2]                                 ; $763a: $fa $f2 $ff
    ld [bc], a                                    ; $763d: $02
    rlca                                          ; $763e: $07
    sbc b                                         ; $763f: $98
    jr @+$21                                      ; $7640: $18 $1f

    dec h                                         ; $7642: $25
    ccf                                           ; $7643: $3f
    ld c, b                                       ; $7644: $48
    ld a, a                                       ; $7645: $7f
    ld c, b                                       ; $7646: $48
    ld a, a                                       ; $7647: $7f
    jr z, @+$41                                   ; $7648: $28 $3f

    jr nc, jr_0e0_768b                            ; $764a: $30 $3f

    jr nc, @+$41                                  ; $764c: $30 $3f

    jr nz, @+$41                                  ; $764e: $20 $3f

    jr nc, jr_0e0_7691                            ; $7650: $30 $3f

    jr c, jr_0e0_7693                             ; $7652: $38 $3f

    ld [hl], a                                    ; $7654: $77
    ld a, a                                       ; $7655: $7f
    ld a, b                                       ; $7656: $78
    ld a, a                                       ; $7657: $7f
    ld [bc], a                                    ; $7658: $02
    rst $38                                       ; $7659: $ff
    add h                                         ; $765a: $84
    cp a                                          ; $765b: $bf
    rst $38                                       ; $765c: $ff
    cp a                                          ; $765d: $bf
    rst $38                                       ; $765e: $ff
    ld [bc], a                                    ; $765f: $02
    jr @-$6f                                      ; $7660: $18 $8f

    inc b                                         ; $7662: $04
    inc e                                         ; $7663: $1c
    ld [de], a                                    ; $7664: $12
    ld e, $02                                     ; $7665: $1e $02
    ld e, $14                                     ; $7667: $1e $14
    inc e                                         ; $7669: $1c
    inc c                                         ; $766a: $0c
    inc e                                         ; $766b: $1c
    inc c                                         ; $766c: $0c
    inc e                                         ; $766d: $1c
    inc b                                         ; $766e: $04
    inc e                                         ; $766f: $1c
    inc c                                         ; $7670: $0c
    inc bc                                        ; $7671: $03
    inc e                                         ; $7672: $1c
    adc a                                         ; $7673: $8f
    ld c, $1e                                     ; $7674: $0e $1e
    ld a, [de]                                    ; $7676: $1a
    ld e, $13                                     ; $7677: $1e $13
    rra                                           ; $7679: $1f
    dec d                                         ; $767a: $15

jr_0e0_767b:
    rra                                           ; $767b: $1f
    dec c                                         ; $767c: $0d
    rra                                           ; $767d: $1f
    db $fd                                        ; $767e: $fd
    rst $38                                       ; $767f: $ff
    cp b                                          ; $7680: $b8
    ld hl, sp-$10                                 ; $7681: $f8 $f0
    inc bc                                        ; $7683: $03
    rst $38                                       ; $7684: $ff
    add h                                         ; $7685: $84
    db $fc                                        ; $7686: $fc
    rst $38                                       ; $7687: $ff
    cp $bf                                        ; $7688: $fe $bf
    ld [bc], a                                    ; $768a: $02

jr_0e0_768b:
    ld a, a                                       ; $768b: $7f
    ld b, $3f                                     ; $768c: $06 $3f
    ld b, $7f                                     ; $768e: $06 $7f
    add [hl]                                      ; $7690: $86

jr_0e0_7691:
    ld e, a                                       ; $7691: $5f
    ld a, a                                       ; $7692: $7f

jr_0e0_7693:
    daa                                           ; $7693: $27
    ccf                                           ; $7694: $3f
    jr jr_0e0_76b6                                ; $7695: $18 $1f

    ld [bc], a                                    ; $7697: $02
    rlca                                          ; $7698: $07
    ld [bc], a                                    ; $7699: $02
    nop                                           ; $769a: $00
    add c                                         ; $769b: $81
    rrca                                          ; $769c: $0f
    inc bc                                        ; $769d: $03
    rra                                           ; $769e: $1f
    add h                                         ; $769f: $84
    dec c                                         ; $76a0: $0d
    rra                                           ; $76a1: $1f
    rrca                                          ; $76a2: $0f
    dec e                                         ; $76a3: $1d
    ld [bc], a                                    ; $76a4: $02
    ld e, $04                                     ; $76a5: $1e $04
    inc e                                         ; $76a7: $1c
    add e                                         ; $76a8: $83
    inc d                                         ; $76a9: $14
    inc e                                         ; $76aa: $1c
    ld d, $05                                     ; $76ab: $16 $05
    ld e, $84                                     ; $76ad: $1e $84
    ld a, [de]                                    ; $76af: $1a
    ld e, $04                                     ; $76b0: $1e $04
    inc e                                         ; $76b2: $1c
    ld [bc], a                                    ; $76b3: $02
    jr jr_0e0_76b8                                ; $76b4: $18 $02

jr_0e0_76b6:
    nop                                           ; $76b6: $00
    rst $38                                       ; $76b7: $ff

jr_0e0_76b8:
    dec c                                         ; $76b8: $0d
    inc b                                         ; $76b9: $04
    db $fc                                        ; $76ba: $fc
    inc b                                         ; $76bb: $04
    ld a, [c]                                     ; $76bc: $f2
    ei                                            ; $76bd: $fb
    db $e3                                        ; $76be: $e3
    ld a, [$ffe4]                                 ; $76bf: $fa $e4 $ff
    di                                            ; $76c2: $f3
    ld a, [$fff3]                                 ; $76c3: $fa $f3 $ff
    ld [bc], a                                    ; $76c6: $02
    rlca                                          ; $76c7: $07
    sub h                                         ; $76c8: $94
    jr jr_0e0_76ea                                ; $76c9: $18 $1f

    dec h                                         ; $76cb: $25
    ccf                                           ; $76cc: $3f
    ld c, b                                       ; $76cd: $48
    ld a, a                                       ; $76ce: $7f
    ld c, b                                       ; $76cf: $48
    ld a, a                                       ; $76d0: $7f
    jr z, jr_0e0_7712                             ; $76d1: $28 $3f

    jr nc, jr_0e0_7714                            ; $76d3: $30 $3f

    jr nc, jr_0e0_7716                            ; $76d5: $30 $3f

    jr nz, jr_0e0_7718                            ; $76d7: $20 $3f

    jr nc, jr_0e0_771a                            ; $76d9: $30 $3f

    jr c, jr_0e0_771c                             ; $76db: $38 $3f

    ld [bc], a                                    ; $76dd: $02
    ld a, a                                       ; $76de: $7f
    add d                                         ; $76df: $82
    ld [hl], b                                    ; $76e0: $70
    ld a, a                                       ; $76e1: $7f
    ld [bc], a                                    ; $76e2: $02
    rst $38                                       ; $76e3: $ff
    add h                                         ; $76e4: $84
    cp a                                          ; $76e5: $bf
    rst $38                                       ; $76e6: $ff
    cp a                                          ; $76e7: $bf
    rst $38                                       ; $76e8: $ff
    ld [bc], a                                    ; $76e9: $02

jr_0e0_76ea:
    jr jr_0e0_767b                                ; $76ea: $18 $8f

    inc b                                         ; $76ec: $04
    inc e                                         ; $76ed: $1c
    ld [de], a                                    ; $76ee: $12
    ld e, $02                                     ; $76ef: $1e $02
    ld e, $14                                     ; $76f1: $1e $14
    inc e                                         ; $76f3: $1c
    inc c                                         ; $76f4: $0c
    inc e                                         ; $76f5: $1c
    inc c                                         ; $76f6: $0c
    inc e                                         ; $76f7: $1c
    inc b                                         ; $76f8: $04
    inc e                                         ; $76f9: $1c
    inc c                                         ; $76fa: $0c
    inc bc                                        ; $76fb: $03
    inc e                                         ; $76fc: $1c
    ld [bc], a                                    ; $76fd: $02
    ld e, $8d                                     ; $76fe: $1e $8d
    ld a, [bc]                                    ; $7700: $0a
    ld e, $13                                     ; $7701: $1e $13
    rra                                           ; $7703: $1f

jr_0e0_7704:
    dec d                                         ; $7704: $15
    rra                                           ; $7705: $1f
    dec c                                         ; $7706: $0d
    rra                                           ; $7707: $1f
    db $fd                                        ; $7708: $fd
    rst $38                                       ; $7709: $ff
    cp b                                          ; $770a: $b8
    ld hl, sp-$10                                 ; $770b: $f8 $f0
    inc bc                                        ; $770d: $03
    rst $38                                       ; $770e: $ff
    add h                                         ; $770f: $84
    db $fc                                        ; $7710: $fc
    rst $38                                       ; $7711: $ff

jr_0e0_7712:
    cp $bf                                        ; $7712: $fe $bf

jr_0e0_7714:
    ld [bc], a                                    ; $7714: $02
    ld a, a                                       ; $7715: $7f

jr_0e0_7716:
    inc b                                         ; $7716: $04
    ccf                                           ; $7717: $3f

jr_0e0_7718:
    ld b, $7f                                     ; $7718: $06 $7f

jr_0e0_771a:
    add [hl]                                      ; $771a: $86
    ld c, a                                       ; $771b: $4f

jr_0e0_771c:
    ld a, a                                       ; $771c: $7f
    scf                                           ; $771d: $37
    ccf                                           ; $771e: $3f
    jr @+$21                                      ; $771f: $18 $1f

    ld [bc], a                                    ; $7721: $02
    rlca                                          ; $7722: $07
    inc b                                         ; $7723: $04
    nop                                           ; $7724: $00
    add c                                         ; $7725: $81
    rrca                                          ; $7726: $0f
    inc bc                                        ; $7727: $03
    rra                                           ; $7728: $1f
    add c                                         ; $7729: $81
    dec c                                         ; $772a: $0d
    ld [bc], a                                    ; $772b: $02
    rra                                           ; $772c: $1f
    add c                                         ; $772d: $81
    dec e                                         ; $772e: $1d
    ld [bc], a                                    ; $772f: $02
    ld e, $02                                     ; $7730: $1e $02
    inc e                                         ; $7732: $1c
    add e                                         ; $7733: $83
    inc c                                         ; $7734: $0c
    inc e                                         ; $7735: $1c
    ld c, $05                                     ; $7736: $0e $05
    ld e, $84                                     ; $7738: $1e $84
    ld a, [de]                                    ; $773a: $1a
    ld e, $04                                     ; $773b: $1e $04
    inc e                                         ; $773d: $1c
    ld [bc], a                                    ; $773e: $02
    jr jr_0e0_7745                                ; $773f: $18 $04

    nop                                           ; $7741: $00
    rst $38                                       ; $7742: $ff
    dec c                                         ; $7743: $0d
    inc b                                         ; $7744: $04

jr_0e0_7745:
    db $fc                                        ; $7745: $fc
    inc b                                         ; $7746: $04
    ld a, [c]                                     ; $7747: $f2
    ei                                            ; $7748: $fb
    ld [c], a                                     ; $7749: $e2
    ld a, [$ffe3]                                 ; $774a: $fa $e3 $ff
    ld a, [c]                                     ; $774d: $f2
    ld a, [$fff2]                                 ; $774e: $fa $f2 $ff
    ld [bc], a                                    ; $7751: $02
    rlca                                          ; $7752: $07
    sbc [hl]                                      ; $7753: $9e
    jr jr_0e0_7775                                ; $7754: $18 $1f

    daa                                           ; $7756: $27
    ccf                                           ; $7757: $3f
    ld c, b                                       ; $7758: $48
    ld a, a                                       ; $7759: $7f
    ld c, b                                       ; $775a: $48
    ld a, a                                       ; $775b: $7f
    jr nc, @+$41                                  ; $775c: $30 $3f

    jr nc, jr_0e0_779f                            ; $775e: $30 $3f

    jr nz, jr_0e0_77a1                            ; $7760: $20 $3f

    jr nz, jr_0e0_77a3                            ; $7762: $20 $3f

    jr nz, jr_0e0_77a5                            ; $7764: $20 $3f

    jr nc, jr_0e0_77a7                            ; $7766: $30 $3f

    ld a, e                                       ; $7768: $7b
    ld a, a                                       ; $7769: $7f
    ld [hl], a                                    ; $776a: $77
    ld a, a                                       ; $776b: $7f
    ld hl, sp-$01                                 ; $776c: $f8 $ff
    cp a                                          ; $776e: $bf
    rst $38                                       ; $776f: $ff
    cp a                                          ; $7770: $bf
    rst $38                                       ; $7771: $ff
    ld [bc], a                                    ; $7772: $02
    jr jr_0e0_7704                                ; $7773: $18 $8f

jr_0e0_7775:
    inc b                                         ; $7775: $04
    inc e                                         ; $7776: $1c
    ld [de], a                                    ; $7777: $12
    ld e, $0a                                     ; $7778: $1e $0a
    ld e, $0c                                     ; $777a: $1e $0c
    inc e                                         ; $777c: $1c
    inc c                                         ; $777d: $0c
    inc e                                         ; $777e: $1c
    inc b                                         ; $777f: $04
    inc e                                         ; $7780: $1c
    inc b                                         ; $7781: $04
    inc e                                         ; $7782: $1c
    inc c                                         ; $7783: $0c
    inc bc                                        ; $7784: $03
    inc e                                         ; $7785: $1c
    ld [bc], a                                    ; $7786: $02
    ld e, $88                                     ; $7787: $1e $88
    ld a, [bc]                                    ; $7789: $0a
    ld e, $15                                     ; $778a: $1e $15
    rra                                           ; $778c: $1f
    dec d                                         ; $778d: $15
    rra                                           ; $778e: $1f
    dec c                                         ; $778f: $0d
    rra                                           ; $7790: $1f
    ld [bc], a                                    ; $7791: $02
    rst $38                                       ; $7792: $ff
    adc h                                         ; $7793: $8c

jr_0e0_7794:
    cp b                                          ; $7794: $b8
    ld hl, sp-$48                                 ; $7795: $f8 $b8
    rst $38                                       ; $7797: $ff
    cp a                                          ; $7798: $bf
    rst $38                                       ; $7799: $ff
    db $fc                                        ; $779a: $fc
    rst $38                                       ; $779b: $ff
    cp $bf                                        ; $779c: $fe $bf
    rst $38                                       ; $779e: $ff

jr_0e0_779f:
    cp a                                          ; $779f: $bf
    ld [bc], a                                    ; $77a0: $02

jr_0e0_77a1:
    ld a, a                                       ; $77a1: $7f
    ld [bc], a                                    ; $77a2: $02

jr_0e0_77a3:
    ccf                                           ; $77a3: $3f
    inc b                                         ; $77a4: $04

jr_0e0_77a5:
    ld a, a                                       ; $77a5: $7f
    add d                                         ; $77a6: $82

jr_0e0_77a7:
    ld e, a                                       ; $77a7: $5f
    ld a, a                                       ; $77a8: $7f
    ld [bc], a                                    ; $77a9: $02
    ccf                                           ; $77aa: $3f
    add [hl]                                      ; $77ab: $86
    cpl                                           ; $77ac: $2f
    ccf                                           ; $77ad: $3f
    inc de                                        ; $77ae: $13
    rra                                           ; $77af: $1f
    inc c                                         ; $77b0: $0c
    rrca                                          ; $77b1: $0f
    ld [bc], a                                    ; $77b2: $02
    inc bc                                        ; $77b3: $03
    ld [bc], a                                    ; $77b4: $02
    nop                                           ; $77b5: $00
    add c                                         ; $77b6: $81
    rrca                                          ; $77b7: $0f
    inc bc                                        ; $77b8: $03
    rra                                           ; $77b9: $1f
    add h                                         ; $77ba: $84
    rrca                                          ; $77bb: $0f
    rra                                           ; $77bc: $1f
    ld c, $1e                                     ; $77bd: $0e $1e
    ld [$851c], sp                                ; $77bf: $08 $1c $85
    inc c                                         ; $77c2: $0c
    inc e                                         ; $77c3: $1c
    inc b                                         ; $77c4: $04
    inc e                                         ; $77c5: $1c
    ld c, $03                                     ; $77c6: $0e $03
    ld e, $84                                     ; $77c8: $1e $84
    ld a, [de]                                    ; $77ca: $1a
    ld e, $04                                     ; $77cb: $1e $04
    inc e                                         ; $77cd: $1c
    ld [bc], a                                    ; $77ce: $02
    jr @+$01                                      ; $77cf: $18 $ff

    dec c                                         ; $77d1: $0d
    inc b                                         ; $77d2: $04
    db $fc                                        ; $77d3: $fc
    inc b                                         ; $77d4: $04
    ld a, [c]                                     ; $77d5: $f2
    ei                                            ; $77d6: $fb
    db $e3                                        ; $77d7: $e3
    ld a, [$ffe4]                                 ; $77d8: $fa $e4 $ff
    di                                            ; $77db: $f3
    ld a, [$fff3]                                 ; $77dc: $fa $f3 $ff
    ld [bc], a                                    ; $77df: $02
    rlca                                          ; $77e0: $07
    sub h                                         ; $77e1: $94
    jr jr_0e0_7803                                ; $77e2: $18 $1f

    dec h                                         ; $77e4: $25
    ccf                                           ; $77e5: $3f
    ld c, b                                       ; $77e6: $48
    ld a, a                                       ; $77e7: $7f
    ld c, b                                       ; $77e8: $48
    ld a, a                                       ; $77e9: $7f
    jr z, jr_0e0_782b                             ; $77ea: $28 $3f

    jr nc, jr_0e0_782d                            ; $77ec: $30 $3f

    jr nc, jr_0e0_782f                            ; $77ee: $30 $3f

    jr nz, jr_0e0_7831                            ; $77f0: $20 $3f

    jr nc, jr_0e0_7833                            ; $77f2: $30 $3f

    jr c, @+$41                                   ; $77f4: $38 $3f

    ld [bc], a                                    ; $77f6: $02
    ld a, a                                       ; $77f7: $7f
    add d                                         ; $77f8: $82
    ld [hl], b                                    ; $77f9: $70
    ld a, a                                       ; $77fa: $7f
    ld [bc], a                                    ; $77fb: $02
    rst $38                                       ; $77fc: $ff
    add h                                         ; $77fd: $84
    cp a                                          ; $77fe: $bf
    rst $38                                       ; $77ff: $ff
    cp a                                          ; $7800: $bf
    rst $38                                       ; $7801: $ff
    ld [bc], a                                    ; $7802: $02

jr_0e0_7803:
    jr jr_0e0_7794                                ; $7803: $18 $8f

    inc b                                         ; $7805: $04
    inc e                                         ; $7806: $1c
    ld [de], a                                    ; $7807: $12
    ld e, $02                                     ; $7808: $1e $02
    ld e, $14                                     ; $780a: $1e $14
    inc e                                         ; $780c: $1c
    inc c                                         ; $780d: $0c
    inc e                                         ; $780e: $1c
    inc c                                         ; $780f: $0c
    inc e                                         ; $7810: $1c
    inc b                                         ; $7811: $04
    inc e                                         ; $7812: $1c
    inc c                                         ; $7813: $0c
    inc bc                                        ; $7814: $03
    inc e                                         ; $7815: $1c
    ld [bc], a                                    ; $7816: $02
    ld e, $8d                                     ; $7817: $1e $8d
    ld a, [bc]                                    ; $7819: $0a
    ld e, $13                                     ; $781a: $1e $13
    rra                                           ; $781c: $1f
    dec d                                         ; $781d: $15
    rra                                           ; $781e: $1f

jr_0e0_781f:
    dec c                                         ; $781f: $0d
    rra                                           ; $7820: $1f
    db $fd                                        ; $7821: $fd
    rst $38                                       ; $7822: $ff
    cp b                                          ; $7823: $b8
    ld hl, sp-$10                                 ; $7824: $f8 $f0
    inc bc                                        ; $7826: $03
    rst $38                                       ; $7827: $ff
    add h                                         ; $7828: $84
    db $fc                                        ; $7829: $fc
    rst $38                                       ; $782a: $ff

jr_0e0_782b:
    cp $bf                                        ; $782b: $fe $bf

jr_0e0_782d:
    ld [bc], a                                    ; $782d: $02
    ld a, a                                       ; $782e: $7f

jr_0e0_782f:
    ld [bc], a                                    ; $782f: $02
    ccf                                           ; $7830: $3f

jr_0e0_7831:
    add d                                         ; $7831: $82
    scf                                           ; $7832: $37

jr_0e0_7833:
    ccf                                           ; $7833: $3f
    ld b, $7f                                     ; $7834: $06 $7f
    add [hl]                                      ; $7836: $86
    ld e, a                                       ; $7837: $5f
    ld a, a                                       ; $7838: $7f
    daa                                           ; $7839: $27
    ccf                                           ; $783a: $3f
    jr jr_0e0_785c                                ; $783b: $18 $1f

    ld [bc], a                                    ; $783d: $02
    rlca                                          ; $783e: $07
    inc b                                         ; $783f: $04
    nop                                           ; $7840: $00
    add c                                         ; $7841: $81
    rrca                                          ; $7842: $0f
    inc bc                                        ; $7843: $03
    rra                                           ; $7844: $1f
    add c                                         ; $7845: $81
    dec c                                         ; $7846: $0d
    ld [bc], a                                    ; $7847: $02
    rra                                           ; $7848: $1f
    add c                                         ; $7849: $81
    dec e                                         ; $784a: $1d
    ld [bc], a                                    ; $784b: $02
    ld e, $04                                     ; $784c: $1e $04
    inc e                                         ; $784e: $1c
    ld b, $1e                                     ; $784f: $06 $1e
    add h                                         ; $7851: $84
    ld [de], a                                    ; $7852: $12
    ld e, $0c                                     ; $7853: $1e $0c
    inc e                                         ; $7855: $1c
    ld [bc], a                                    ; $7856: $02
    jr jr_0e0_785d                                ; $7857: $18 $04

    nop                                           ; $7859: $00
    rst $38                                       ; $785a: $ff
    dec c                                         ; $785b: $0d

jr_0e0_785c:
    inc b                                         ; $785c: $04

jr_0e0_785d:
    db $fc                                        ; $785d: $fc
    inc b                                         ; $785e: $04
    ld a, [c]                                     ; $785f: $f2
    ei                                            ; $7860: $fb
    ld [c], a                                     ; $7861: $e2
    ld a, [$ffe3]                                 ; $7862: $fa $e3 $ff
    ld a, [c]                                     ; $7865: $f2
    ld a, [$fff2]                                 ; $7866: $fa $f2 $ff
    ld [bc], a                                    ; $7869: $02
    rlca                                          ; $786a: $07
    sbc [hl]                                      ; $786b: $9e
    jr jr_0e0_788d                                ; $786c: $18 $1f

    daa                                           ; $786e: $27
    ccf                                           ; $786f: $3f
    ld c, b                                       ; $7870: $48
    ld a, a                                       ; $7871: $7f
    ld c, b                                       ; $7872: $48
    ld a, a                                       ; $7873: $7f
    jr nc, jr_0e0_78b5                            ; $7874: $30 $3f

    jr nc, jr_0e0_78b7                            ; $7876: $30 $3f

    jr nz, @+$41                                  ; $7878: $20 $3f

    jr nz, jr_0e0_78bb                            ; $787a: $20 $3f

    jr nc, jr_0e0_78bd                            ; $787c: $30 $3f

    jr c, jr_0e0_78bf                             ; $787e: $38 $3f

    ld a, [hl]                                    ; $7880: $7e
    ld a, a                                       ; $7881: $7f
    ld [hl], a                                    ; $7882: $77
    ld a, a                                       ; $7883: $7f
    cp b                                          ; $7884: $b8
    rst $38                                       ; $7885: $ff
    cp a                                          ; $7886: $bf
    rst $38                                       ; $7887: $ff
    cp a                                          ; $7888: $bf
    rst $38                                       ; $7889: $ff
    ld [bc], a                                    ; $788a: $02
    jr jr_0e0_781f                                ; $788b: $18 $92

jr_0e0_788d:
    inc b                                         ; $788d: $04
    inc e                                         ; $788e: $1c
    ld [de], a                                    ; $788f: $12
    ld e, $0a                                     ; $7890: $1e $0a
    ld e, $0c                                     ; $7892: $1e $0c
    inc e                                         ; $7894: $1c
    inc c                                         ; $7895: $0c
    inc e                                         ; $7896: $1c
    inc b                                         ; $7897: $04
    inc e                                         ; $7898: $1c
    inc b                                         ; $7899: $04
    inc e                                         ; $789a: $1c
    inc b                                         ; $789b: $04
    inc e                                         ; $789c: $1c
    inc c                                         ; $789d: $0c
    inc e                                         ; $789e: $1c
    ld [bc], a                                    ; $789f: $02
    ld e, $8a                                     ; $78a0: $1e $8a
    ld c, $1e                                     ; $78a2: $0e $1e
    inc de                                        ; $78a4: $13
    rra                                           ; $78a5: $1f
    dec b                                         ; $78a6: $05
    rra                                           ; $78a7: $1f
    dec c                                         ; $78a8: $0d
    rra                                           ; $78a9: $1f

jr_0e0_78aa:
    db $fd                                        ; $78aa: $fd
    rst $38                                       ; $78ab: $ff
    ld [bc], a                                    ; $78ac: $02
    ld hl, sp-$7f                                 ; $78ad: $f8 $81
    ldh a, [$03]                                  ; $78af: $f0 $03
    rst $38                                       ; $78b1: $ff
    add h                                         ; $78b2: $84
    ld hl, sp-$01                                 ; $78b3: $f8 $ff

jr_0e0_78b5:
    ld a, h                                       ; $78b5: $7c
    ld a, a                                       ; $78b6: $7f

jr_0e0_78b7:
    ld [$833f], sp                                ; $78b7: $08 $3f $83
    scf                                           ; $78ba: $37

jr_0e0_78bb:
    ccf                                           ; $78bb: $3f
    ld [hl], a                                    ; $78bc: $77

jr_0e0_78bd:
    dec b                                         ; $78bd: $05
    ld a, a                                       ; $78be: $7f

jr_0e0_78bf:
    add h                                         ; $78bf: $84
    ld e, [hl]                                    ; $78c0: $5e
    ld a, a                                       ; $78c1: $7f
    ld hl, $023f                                  ; $78c2: $21 $3f $02
    ld e, $02                                     ; $78c5: $1e $02
    nop                                           ; $78c7: $00
    add l                                         ; $78c8: $85
    dec e                                         ; $78c9: $1d
    rra                                           ; $78ca: $1f
    dec e                                         ; $78cb: $1d
    rra                                           ; $78cc: $1f
    rrca                                          ; $78cd: $0f
    ld [bc], a                                    ; $78ce: $02
    rra                                           ; $78cf: $1f
    add e                                         ; $78d0: $83
    dec e                                         ; $78d1: $1d
    rra                                           ; $78d2: $1f
    dec e                                         ; $78d3: $1d
    ld [bc], a                                    ; $78d4: $02
    ld e, $02                                     ; $78d5: $1e $02
    inc e                                         ; $78d7: $1c
    inc b                                         ; $78d8: $04
    ld e, $88                                     ; $78d9: $1e $88
    ld a, [de]                                    ; $78db: $1a
    ld e, $1a                                     ; $78dc: $1e $1a
    ld e, $14                                     ; $78de: $1e $14
    inc e                                         ; $78e0: $1c
    ld [$0218], sp                                ; $78e1: $08 $18 $02
    db $10                                        ; $78e4: $10
    ld [bc], a                                    ; $78e5: $02
    nop                                           ; $78e6: $00
    rst $38                                       ; $78e7: $ff
    dec c                                         ; $78e8: $0d
    inc b                                         ; $78e9: $04
    db $fc                                        ; $78ea: $fc
    inc b                                         ; $78eb: $04
    ld a, [c]                                     ; $78ec: $f2
    ei                                            ; $78ed: $fb
    ld [c], a                                     ; $78ee: $e2
    ld a, [$ffe3]                                 ; $78ef: $fa $e3 $ff
    ld a, [c]                                     ; $78f2: $f2
    ld a, [$fff2]                                 ; $78f3: $fa $f2 $ff
    ld [bc], a                                    ; $78f6: $02
    rlca                                          ; $78f7: $07
    sub d                                         ; $78f8: $92
    jr @+$21                                      ; $78f9: $18 $1f

    jr nz, @+$41                                  ; $78fb: $20 $3f

    ld d, l                                       ; $78fd: $55
    ld a, d                                       ; $78fe: $7a
    ld e, a                                       ; $78ff: $5f
    ld [hl], b                                    ; $7900: $70
    ccf                                           ; $7901: $3f
    dec h                                         ; $7902: $25
    ld [hl-], a                                   ; $7903: $32
    dec a                                         ; $7904: $3d
    ld e, a                                       ; $7905: $5f
    ld [hl], d                                    ; $7906: $72
    ld e, d                                       ; $7907: $5a
    ld [hl], l                                    ; $7908: $75
    ld e, l                                       ; $7909: $5d
    ld a, d                                       ; $790a: $7a
    ld [bc], a                                    ; $790b: $02
    ld a, a                                       ; $790c: $7f
    adc d                                         ; $790d: $8a
    ld l, a                                       ; $790e: $6f
    ld a, b                                       ; $790f: $78
    ld d, a                                       ; $7910: $57
    ld a, l                                       ; $7911: $7d
    ld [$e5ff], a                                 ; $7912: $ea $ff $e5
    rst $38                                       ; $7915: $ff
    or d                                          ; $7916: $b2
    rst $38                                       ; $7917: $ff
    ld [bc], a                                    ; $7918: $02
    jr jr_0e0_78aa                                ; $7919: $18 $8f

    inc b                                         ; $791b: $04
    inc e                                         ; $791c: $1c
    ld [bc], a                                    ; $791d: $02
    ld e, $1a                                     ; $791e: $1e $1a
    ld c, $1c                                     ; $7920: $0e $1c
    inc b                                         ; $7922: $04
    inc c                                         ; $7923: $0c
    inc e                                         ; $7924: $1c
    ld a, [de]                                    ; $7925: $1a
    ld c, $1a                                     ; $7926: $0e $1a
    ld c, $1a                                     ; $7928: $0e $1a
    ld [bc], a                                    ; $792a: $02
    ld e, $8b                                     ; $792b: $1e $8b
    ld c, $16                                     ; $792d: $0e $16
    ld e, $0a                                     ; $792f: $1e $0a
    ld e, $15                                     ; $7931: $1e $15
    rra                                           ; $7933: $1f
    rlca                                          ; $7934: $07
    rra                                           ; $7935: $1f
    dec c                                         ; $7936: $0d

jr_0e0_7937:
    rra                                           ; $7937: $1f
    ld [bc], a                                    ; $7938: $02
    rst $38                                       ; $7939: $ff
    ld [bc], a                                    ; $793a: $02
    ld hl, sp-$7d                                 ; $793b: $f8 $83
    xor a                                         ; $793d: $af
    rst $38                                       ; $793e: $ff
    or b                                          ; $793f: $b0
    ld [bc], a                                    ; $7940: $02
    rst $38                                       ; $7941: $ff
    add l                                         ; $7942: $85
    cp a                                          ; $7943: $bf
    db $fc                                        ; $7944: $fc
    cp a                                          ; $7945: $bf
    ld a, [hl]                                    ; $7946: $7e
    ld a, a                                       ; $7947: $7f
    ld b, $3f                                     ; $7948: $06 $3f
    inc b                                         ; $794a: $04
    ld a, a                                       ; $794b: $7f
    add [hl]                                      ; $794c: $86
    ld e, a                                       ; $794d: $5f
    ld a, a                                       ; $794e: $7f
    ld c, a                                       ; $794f: $4f
    ld a, a                                       ; $7950: $7f
    jr nc, jr_0e0_7992                            ; $7951: $30 $3f

    ld [bc], a                                    ; $7953: $02
    rrca                                          ; $7954: $0f
    inc b                                         ; $7955: $04
    nop                                           ; $7956: $00
    add e                                         ; $7957: $83
    dec d                                         ; $7958: $15
    rra                                           ; $7959: $1f
    dec c                                         ; $795a: $0d
    ld [bc], a                                    ; $795b: $02
    rra                                           ; $795c: $1f
    add e                                         ; $795d: $83
    dec e                                         ; $795e: $1d
    rrca                                          ; $795f: $0f
    dec e                                         ; $7960: $1d
    ld [bc], a                                    ; $7961: $02
    ld e, $06                                     ; $7962: $1e $06
    inc e                                         ; $7964: $1c
    add c                                         ; $7965: $81
    ld d, $03                                     ; $7966: $16 $03
    ld e, $86                                     ; $7968: $1e $86
    ld a, [de]                                    ; $796a: $1a
    ld e, $12                                     ; $796b: $1e $12
    ld e, $0c                                     ; $796d: $1e $0c
    inc e                                         ; $796f: $1c
    ld [bc], a                                    ; $7970: $02
    db $10                                        ; $7971: $10
    ld [bc], a                                    ; $7972: $02
    nop                                           ; $7973: $00
    rst $38                                       ; $7974: $ff
    dec c                                         ; $7975: $0d
    inc b                                         ; $7976: $04
    db $fc                                        ; $7977: $fc
    inc b                                         ; $7978: $04
    ld a, [c]                                     ; $7979: $f2
    ei                                            ; $797a: $fb
    db $e3                                        ; $797b: $e3
    ld a, [$ffe4]                                 ; $797c: $fa $e4 $ff
    di                                            ; $797f: $f3
    ld a, [$fff3]                                 ; $7980: $fa $f3 $ff
    ld [bc], a                                    ; $7983: $02
    rlca                                          ; $7984: $07
    sub d                                         ; $7985: $92
    jr @+$21                                      ; $7986: $18 $1f

    jr nz, @+$41                                  ; $7988: $20 $3f

    ld d, l                                       ; $798a: $55
    ld a, d                                       ; $798b: $7a
    ld e, a                                       ; $798c: $5f
    ld [hl], b                                    ; $798d: $70
    ccf                                           ; $798e: $3f
    dec h                                         ; $798f: $25
    ld [hl-], a                                   ; $7990: $32
    dec a                                         ; $7991: $3d

jr_0e0_7992:
    ld e, a                                       ; $7992: $5f
    ld [hl], d                                    ; $7993: $72
    ld e, d                                       ; $7994: $5a
    ld [hl], l                                    ; $7995: $75
    ld e, l                                       ; $7996: $5d
    ld a, d                                       ; $7997: $7a
    ld [bc], a                                    ; $7998: $02
    ld a, a                                       ; $7999: $7f
    adc d                                         ; $799a: $8a
    ld l, a                                       ; $799b: $6f
    ld a, b                                       ; $799c: $78
    ld d, a                                       ; $799d: $57
    ld a, l                                       ; $799e: $7d
    ld [$e5ff], a                                 ; $799f: $ea $ff $e5
    rst $38                                       ; $79a2: $ff
    or d                                          ; $79a3: $b2
    rst $38                                       ; $79a4: $ff
    ld [bc], a                                    ; $79a5: $02
    jr jr_0e0_7937                                ; $79a6: $18 $8f

    inc b                                         ; $79a8: $04
    inc e                                         ; $79a9: $1c
    ld [bc], a                                    ; $79aa: $02
    ld e, $1a                                     ; $79ab: $1e $1a
    ld c, $1c                                     ; $79ad: $0e $1c
    inc b                                         ; $79af: $04
    inc c                                         ; $79b0: $0c
    inc e                                         ; $79b1: $1c
    ld a, [de]                                    ; $79b2: $1a
    ld c, $1a                                     ; $79b3: $0e $1a
    ld c, $1a                                     ; $79b5: $0e $1a
    ld [bc], a                                    ; $79b7: $02
    ld e, $8b                                     ; $79b8: $1e $8b
    ld c, $16                                     ; $79ba: $0e $16
    ld e, $0a                                     ; $79bc: $1e $0a
    ld e, $15                                     ; $79be: $1e $15
    rra                                           ; $79c0: $1f
    rlca                                          ; $79c1: $07
    rra                                           ; $79c2: $1f
    dec c                                         ; $79c3: $0d
    rra                                           ; $79c4: $1f
    ld [bc], a                                    ; $79c5: $02

jr_0e0_79c6:
    rst $38                                       ; $79c6: $ff
    ld [bc], a                                    ; $79c7: $02
    ld hl, sp-$7d                                 ; $79c8: $f8 $83
    xor a                                         ; $79ca: $af
    rst $38                                       ; $79cb: $ff
    or b                                          ; $79cc: $b0
    ld [bc], a                                    ; $79cd: $02
    rst $38                                       ; $79ce: $ff
    add e                                         ; $79cf: $83
    cp a                                          ; $79d0: $bf
    db $fc                                        ; $79d1: $fc
    cp a                                          ; $79d2: $bf
    ld [bc], a                                    ; $79d3: $02
    ld a, a                                       ; $79d4: $7f
    inc b                                         ; $79d5: $04
    ccf                                           ; $79d6: $3f
    inc b                                         ; $79d7: $04
    ld a, a                                       ; $79d8: $7f
    add [hl]                                      ; $79d9: $86
    ld e, a                                       ; $79da: $5f
    ld a, a                                       ; $79db: $7f
    inc hl                                        ; $79dc: $23
    ccf                                           ; $79dd: $3f
    inc e                                         ; $79de: $1c
    rra                                           ; $79df: $1f
    ld [bc], a                                    ; $79e0: $02
    inc bc                                        ; $79e1: $03
    ld b, $00                                     ; $79e2: $06 $00
    add e                                         ; $79e4: $83
    dec d                                         ; $79e5: $15
    rra                                           ; $79e6: $1f
    dec c                                         ; $79e7: $0d
    ld [bc], a                                    ; $79e8: $02
    rra                                           ; $79e9: $1f
    add e                                         ; $79ea: $83
    dec e                                         ; $79eb: $1d
    rrca                                          ; $79ec: $0f
    dec e                                         ; $79ed: $1d
    ld [bc], a                                    ; $79ee: $02
    ld e, $85                                     ; $79ef: $1e $85
    inc c                                         ; $79f1: $0c
    inc e                                         ; $79f2: $1c
    inc b                                         ; $79f3: $04
    inc e                                         ; $79f4: $1c
    ld c, $03                                     ; $79f5: $0e $03
    ld e, $86                                     ; $79f7: $1e $86
    ld a, [de]                                    ; $79f9: $1a
    ld e, $12                                     ; $79fa: $1e $12
    ld e, $0c                                     ; $79fc: $1e $0c
    inc e                                         ; $79fe: $1c
    ld [bc], a                                    ; $79ff: $02
    db $10                                        ; $7a00: $10
    inc b                                         ; $7a01: $04
    nop                                           ; $7a02: $00
    rst $38                                       ; $7a03: $ff
    dec c                                         ; $7a04: $0d
    inc b                                         ; $7a05: $04
    db $fc                                        ; $7a06: $fc
    inc b                                         ; $7a07: $04
    ld a, [c]                                     ; $7a08: $f2
    ei                                            ; $7a09: $fb
    ld [c], a                                     ; $7a0a: $e2
    ld a, [$ffe3]                                 ; $7a0b: $fa $e3 $ff
    ld a, [c]                                     ; $7a0e: $f2
    ld a, [$fff2]                                 ; $7a0f: $fa $f2 $ff
    ld [bc], a                                    ; $7a12: $02
    rlca                                          ; $7a13: $07
    sub d                                         ; $7a14: $92
    jr @+$21                                      ; $7a15: $18 $1f

    jr nz, jr_0e0_7a58                            ; $7a17: $20 $3f

    ld d, l                                       ; $7a19: $55
    ld a, d                                       ; $7a1a: $7a
    ld e, a                                       ; $7a1b: $5f
    ld [hl], b                                    ; $7a1c: $70
    ccf                                           ; $7a1d: $3f
    dec h                                         ; $7a1e: $25
    ld [hl-], a                                   ; $7a1f: $32
    dec a                                         ; $7a20: $3d
    ld e, a                                       ; $7a21: $5f
    ld [hl], d                                    ; $7a22: $72
    ld e, d                                       ; $7a23: $5a
    ld [hl], l                                    ; $7a24: $75
    ld e, l                                       ; $7a25: $5d
    ld a, d                                       ; $7a26: $7a
    ld [bc], a                                    ; $7a27: $02
    ld a, a                                       ; $7a28: $7f
    adc d                                         ; $7a29: $8a
    ld l, a                                       ; $7a2a: $6f
    ld a, b                                       ; $7a2b: $78
    ld d, a                                       ; $7a2c: $57
    ld a, l                                       ; $7a2d: $7d
    xor d                                         ; $7a2e: $aa
    rst $38                                       ; $7a2f: $ff
    push hl                                       ; $7a30: $e5
    rst $38                                       ; $7a31: $ff
    ld a, [c]                                     ; $7a32: $f2
    rst $38                                       ; $7a33: $ff
    ld [bc], a                                    ; $7a34: $02
    jr jr_0e0_79c6                                ; $7a35: $18 $8f

    inc b                                         ; $7a37: $04
    inc e                                         ; $7a38: $1c
    ld [bc], a                                    ; $7a39: $02
    ld e, $1a                                     ; $7a3a: $1e $1a
    ld c, $1c                                     ; $7a3c: $0e $1c
    inc b                                         ; $7a3e: $04
    inc c                                         ; $7a3f: $0c
    inc e                                         ; $7a40: $1c
    ld a, [de]                                    ; $7a41: $1a
    ld c, $1a                                     ; $7a42: $0e $1a
    ld c, $1a                                     ; $7a44: $0e $1a
    ld [bc], a                                    ; $7a46: $02
    ld e, $8b                                     ; $7a47: $1e $8b
    ld c, $16                                     ; $7a49: $0e $16
    ld e, $0a                                     ; $7a4b: $1e $0a
    ld e, $15                                     ; $7a4d: $1e $15
    rra                                           ; $7a4f: $1f
    dec b                                         ; $7a50: $05
    rra                                           ; $7a51: $1f
    rrca                                          ; $7a52: $0f
    rra                                           ; $7a53: $1f
    ld [bc], a                                    ; $7a54: $02
    rst $38                                       ; $7a55: $ff
    add l                                         ; $7a56: $85
    cp b                                          ; $7a57: $b8

jr_0e0_7a58:
    ld hl, sp-$41                                 ; $7a58: $f8 $bf
    rst $38                                       ; $7a5a: $ff
    sub b                                         ; $7a5b: $90
    ld [bc], a                                    ; $7a5c: $02
    rst $38                                       ; $7a5d: $ff
    add e                                         ; $7a5e: $83

jr_0e0_7a5f:
    rst $18                                       ; $7a5f: $df
    cp $bf                                        ; $7a60: $fe $bf
    ld [bc], a                                    ; $7a62: $02
    ld a, a                                       ; $7a63: $7f
    ld [bc], a                                    ; $7a64: $02
    ccf                                           ; $7a65: $3f
    add e                                         ; $7a66: $83
    ld a, $3f                                     ; $7a67: $3e $3f
    ld a, [hl]                                    ; $7a69: $7e
    inc bc                                        ; $7a6a: $03
    ld a, a                                       ; $7a6b: $7f
    adc d                                         ; $7a6c: $8a
    ld e, a                                       ; $7a6d: $5f
    ld a, a                                       ; $7a6e: $7f
    ld e, a                                       ; $7a6f: $5f
    ld a, a                                       ; $7a70: $7f
    daa                                           ; $7a71: $27
    ccf                                           ; $7a72: $3f
    add hl, de                                    ; $7a73: $19
    rra                                           ; $7a74: $1f
    ld b, $07                                     ; $7a75: $06 $07
    ld [bc], a                                    ; $7a77: $02
    ld bc, $0002                                  ; $7a78: $01 $02 $00
    add e                                         ; $7a7b: $83
    dec d                                         ; $7a7c: $15
    rra                                           ; $7a7d: $1f
    rrca                                          ; $7a7e: $0f
    ld [bc], a                                    ; $7a7f: $02
    rra                                           ; $7a80: $1f
    add e                                         ; $7a81: $83
    dec e                                         ; $7a82: $1d
    ld c, $1e                                     ; $7a83: $0e $1e
    ld [bc], a                                    ; $7a85: $02
    inc e                                         ; $7a86: $1c
    adc c                                         ; $7a87: $89
    inc c                                         ; $7a88: $0c
    inc e                                         ; $7a89: $1c
    inc c                                         ; $7a8a: $0c
    inc e                                         ; $7a8b: $1c
    inc c                                         ; $7a8c: $0c
    inc e                                         ; $7a8d: $1c
    inc c                                         ; $7a8e: $0c
    inc e                                         ; $7a8f: $1c
    ld c, $03                                     ; $7a90: $0e $03
    ld e, $86                                     ; $7a92: $1e $86
    ld a, [bc]                                    ; $7a94: $0a
    ld e, $1a                                     ; $7a95: $1e $1a
    ld e, $04                                     ; $7a97: $1e $04
    inc e                                         ; $7a99: $1c
    ld [bc], a                                    ; $7a9a: $02
    jr @+$01                                      ; $7a9b: $18 $ff

    dec c                                         ; $7a9d: $0d
    inc b                                         ; $7a9e: $04
    db $fc                                        ; $7a9f: $fc
    inc b                                         ; $7aa0: $04
    ld a, [c]                                     ; $7aa1: $f2
    ei                                            ; $7aa2: $fb
    db $e3                                        ; $7aa3: $e3
    ld a, [$ffe4]                                 ; $7aa4: $fa $e4 $ff
    di                                            ; $7aa7: $f3
    ld a, [$fff3]                                 ; $7aa8: $fa $f3 $ff
    ld [bc], a                                    ; $7aab: $02
    rlca                                          ; $7aac: $07
    sub d                                         ; $7aad: $92
    jr @+$21                                      ; $7aae: $18 $1f

    jr nz, @+$41                                  ; $7ab0: $20 $3f

    ld d, l                                       ; $7ab2: $55
    ld a, d                                       ; $7ab3: $7a
    ld e, a                                       ; $7ab4: $5f
    ld [hl], b                                    ; $7ab5: $70
    ccf                                           ; $7ab6: $3f
    dec h                                         ; $7ab7: $25
    ld [hl-], a                                   ; $7ab8: $32
    dec a                                         ; $7ab9: $3d
    ld e, a                                       ; $7aba: $5f
    ld [hl], d                                    ; $7abb: $72
    ld e, d                                       ; $7abc: $5a
    ld [hl], l                                    ; $7abd: $75
    ld e, l                                       ; $7abe: $5d
    ld a, d                                       ; $7abf: $7a
    ld [bc], a                                    ; $7ac0: $02
    ld a, a                                       ; $7ac1: $7f
    adc d                                         ; $7ac2: $8a
    ld l, a                                       ; $7ac3: $6f
    ld a, b                                       ; $7ac4: $78
    ld d, a                                       ; $7ac5: $57
    ld a, l                                       ; $7ac6: $7d
    ld [$e5ff], a                                 ; $7ac7: $ea $ff $e5
    rst $38                                       ; $7aca: $ff
    or d                                          ; $7acb: $b2
    rst $38                                       ; $7acc: $ff
    ld [bc], a                                    ; $7acd: $02
    jr jr_0e0_7a5f                                ; $7ace: $18 $8f

    inc b                                         ; $7ad0: $04
    inc e                                         ; $7ad1: $1c
    ld [bc], a                                    ; $7ad2: $02
    ld e, $1a                                     ; $7ad3: $1e $1a
    ld c, $1c                                     ; $7ad5: $0e $1c
    inc b                                         ; $7ad7: $04
    inc c                                         ; $7ad8: $0c
    inc e                                         ; $7ad9: $1c
    ld a, [de]                                    ; $7ada: $1a
    ld c, $1a                                     ; $7adb: $0e $1a
    ld c, $1a                                     ; $7add: $0e $1a
    ld [bc], a                                    ; $7adf: $02
    ld e, $8b                                     ; $7ae0: $1e $8b
    ld c, $16                                     ; $7ae2: $0e $16
    ld e, $0a                                     ; $7ae4: $1e $0a
    ld e, $15                                     ; $7ae6: $1e $15
    rra                                           ; $7ae8: $1f
    rlca                                          ; $7ae9: $07
    rra                                           ; $7aea: $1f
    dec c                                         ; $7aeb: $0d
    rra                                           ; $7aec: $1f

jr_0e0_7aed:
    ld [bc], a                                    ; $7aed: $02
    rst $38                                       ; $7aee: $ff
    ld [bc], a                                    ; $7aef: $02
    ld hl, sp-$7d                                 ; $7af0: $f8 $83
    xor a                                         ; $7af2: $af
    rst $38                                       ; $7af3: $ff
    or b                                          ; $7af4: $b0
    ld [bc], a                                    ; $7af5: $02
    rst $38                                       ; $7af6: $ff
    add e                                         ; $7af7: $83
    cp a                                          ; $7af8: $bf
    db $fc                                        ; $7af9: $fc
    cp a                                          ; $7afa: $bf
    ld [bc], a                                    ; $7afb: $02
    ld a, a                                       ; $7afc: $7f
    add h                                         ; $7afd: $84
    scf                                           ; $7afe: $37
    ccf                                           ; $7aff: $3f
    scf                                           ; $7b00: $37
    ccf                                           ; $7b01: $3f
    inc b                                         ; $7b02: $04
    ld a, a                                       ; $7b03: $7f
    add [hl]                                      ; $7b04: $86
    ld e, a                                       ; $7b05: $5f
    ld a, a                                       ; $7b06: $7f
    ld c, [hl]                                    ; $7b07: $4e
    ld a, a                                       ; $7b08: $7f
    ld sp, $023f                                  ; $7b09: $31 $3f $02
    ld c, $06                                     ; $7b0c: $0e $06
    nop                                           ; $7b0e: $00
    add e                                         ; $7b0f: $83
    dec d                                         ; $7b10: $15
    rra                                           ; $7b11: $1f
    dec c                                         ; $7b12: $0d
    ld [bc], a                                    ; $7b13: $02
    rra                                           ; $7b14: $1f
    add e                                         ; $7b15: $83
    dec e                                         ; $7b16: $1d
    rrca                                          ; $7b17: $0f
    dec e                                         ; $7b18: $1d
    ld [bc], a                                    ; $7b19: $02
    ld e, $04                                     ; $7b1a: $1e $04
    inc e                                         ; $7b1c: $1c
    add c                                         ; $7b1d: $81
    ld d, $03                                     ; $7b1e: $16 $03
    ld e, $84                                     ; $7b20: $1e $84
    ld a, [de]                                    ; $7b22: $1a
    ld e, $04                                     ; $7b23: $1e $04
    inc e                                         ; $7b25: $1c
    ld [bc], a                                    ; $7b26: $02
    jr jr_0e0_7b2f                                ; $7b27: $18 $06

    nop                                           ; $7b29: $00
    rst $38                                       ; $7b2a: $ff
    dec c                                         ; $7b2b: $0d
    inc b                                         ; $7b2c: $04
    db $fc                                        ; $7b2d: $fc
    inc b                                         ; $7b2e: $04

jr_0e0_7b2f:
    ld a, [c]                                     ; $7b2f: $f2
    ei                                            ; $7b30: $fb
    ld [c], a                                     ; $7b31: $e2
    ld a, [$ffe3]                                 ; $7b32: $fa $e3 $ff
    ld a, [c]                                     ; $7b35: $f2
    ld a, [$fff2]                                 ; $7b36: $fa $f2 $ff
    ld [bc], a                                    ; $7b39: $02
    rlca                                          ; $7b3a: $07
    sub d                                         ; $7b3b: $92
    jr @+$21                                      ; $7b3c: $18 $1f

    jr nz, @+$41                                  ; $7b3e: $20 $3f

    ld d, l                                       ; $7b40: $55
    ld a, d                                       ; $7b41: $7a
    ld e, a                                       ; $7b42: $5f
    ld [hl], b                                    ; $7b43: $70
    ccf                                           ; $7b44: $3f
    dec h                                         ; $7b45: $25
    ld [hl-], a                                   ; $7b46: $32
    dec a                                         ; $7b47: $3d
    ld e, a                                       ; $7b48: $5f
    ld [hl], d                                    ; $7b49: $72
    ld e, d                                       ; $7b4a: $5a
    ld [hl], l                                    ; $7b4b: $75
    ld e, l                                       ; $7b4c: $5d
    ld a, d                                       ; $7b4d: $7a
    ld [bc], a                                    ; $7b4e: $02
    ld a, a                                       ; $7b4f: $7f
    adc d                                         ; $7b50: $8a
    ld l, a                                       ; $7b51: $6f
    ld a, b                                       ; $7b52: $78
    ld d, a                                       ; $7b53: $57
    ld a, l                                       ; $7b54: $7d
    ld [$a5ff], a                                 ; $7b55: $ea $ff $a5
    rst $38                                       ; $7b58: $ff
    ld a, [c]                                     ; $7b59: $f2
    rst $38                                       ; $7b5a: $ff
    ld [bc], a                                    ; $7b5b: $02
    jr jr_0e0_7aed                                ; $7b5c: $18 $8f

    inc b                                         ; $7b5e: $04
    inc e                                         ; $7b5f: $1c
    ld [bc], a                                    ; $7b60: $02
    ld e, $1a                                     ; $7b61: $1e $1a
    ld c, $1c                                     ; $7b63: $0e $1c
    inc b                                         ; $7b65: $04
    inc c                                         ; $7b66: $0c
    inc e                                         ; $7b67: $1c
    ld a, [de]                                    ; $7b68: $1a
    ld c, $1a                                     ; $7b69: $0e $1a
    ld c, $1a                                     ; $7b6b: $0e $1a
    ld [bc], a                                    ; $7b6d: $02
    ld e, $8d                                     ; $7b6e: $1e $8d
    ld c, $16                                     ; $7b70: $0e $16
    ld e, $0a                                     ; $7b72: $1e $0a
    ld e, $15                                     ; $7b74: $1e $15
    rra                                           ; $7b76: $1f
    dec b                                         ; $7b77: $05
    rra                                           ; $7b78: $1f
    rrca                                          ; $7b79: $0f
    rra                                           ; $7b7a: $1f
    db $fd                                        ; $7b7b: $fd
    rst $38                                       ; $7b7c: $ff
    ld [bc], a                                    ; $7b7d: $02
    ld hl, sp-$7d                                 ; $7b7e: $f8 $83
    rst $28                                       ; $7b80: $ef
    rst $38                                       ; $7b81: $ff
    ldh a, [rSC]                                  ; $7b82: $f0 $02
    rst $38                                       ; $7b84: $ff
    add e                                         ; $7b85: $83
    cp a                                          ; $7b86: $bf
    ld a, b                                       ; $7b87: $78
    ld a, a                                       ; $7b88: $7f
    inc b                                         ; $7b89: $04
    ccf                                           ; $7b8a: $3f
    add [hl]                                      ; $7b8b: $86
    scf                                           ; $7b8c: $37
    ccf                                           ; $7b8d: $3f
    inc sp                                        ; $7b8e: $33
    ccf                                           ; $7b8f: $3f
    scf                                           ; $7b90: $37
    ccf                                           ; $7b91: $3f

jr_0e0_7b92:
    inc b                                         ; $7b92: $04
    ld a, a                                       ; $7b93: $7f
    add [hl]                                      ; $7b94: $86
    ld d, a                                       ; $7b95: $57
    ld a, a                                       ; $7b96: $7f
    ld e, h                                       ; $7b97: $5c
    ld a, a                                       ; $7b98: $7f
    inc hl                                        ; $7b99: $23
    ccf                                           ; $7b9a: $3f
    ld [bc], a                                    ; $7b9b: $02
    inc e                                         ; $7b9c: $1c
    ld [bc], a                                    ; $7b9d: $02
    nop                                           ; $7b9e: $00
    add e                                         ; $7b9f: $83
    dec e                                         ; $7ba0: $1d
    rra                                           ; $7ba1: $1f
    add hl, bc                                    ; $7ba2: $09
    ld [bc], a                                    ; $7ba3: $02
    rra                                           ; $7ba4: $1f
    add e                                         ; $7ba5: $83
    dec de                                        ; $7ba6: $1b
    rra                                           ; $7ba7: $1f
    dec e                                         ; $7ba8: $1d
    ld [bc], a                                    ; $7ba9: $02
    ld e, $04                                     ; $7baa: $1e $04
    inc e                                         ; $7bac: $1c
    inc b                                         ; $7bad: $04
    ld e, $86                                     ; $7bae: $1e $86
    ld a, [de]                                    ; $7bb0: $1a
    ld e, $1a                                     ; $7bb1: $1e $1a
    ld e, $04                                     ; $7bb3: $1e $04
    inc e                                         ; $7bb5: $1c
    ld [bc], a                                    ; $7bb6: $02
    jr jr_0e0_7bbd                                ; $7bb7: $18 $04

    nop                                           ; $7bb9: $00
    rst $38                                       ; $7bba: $ff
    dec c                                         ; $7bbb: $0d
    inc b                                         ; $7bbc: $04

jr_0e0_7bbd:
    db $fc                                        ; $7bbd: $fc
    inc b                                         ; $7bbe: $04
    ld a, [c]                                     ; $7bbf: $f2
    ei                                            ; $7bc0: $fb
    ld [c], a                                     ; $7bc1: $e2
    ei                                            ; $7bc2: $fb
    db $e3                                        ; $7bc3: $e3
    rst $38                                       ; $7bc4: $ff
    ld a, [c]                                     ; $7bc5: $f2
    ld a, [$fdf2]                                 ; $7bc6: $fa $f2 $fd
    ld [bc], a                                    ; $7bc9: $02
    dec de                                        ; $7bca: $1b
    sbc [hl]                                      ; $7bcb: $9e
    inc h                                         ; $7bcc: $24
    ccf                                           ; $7bcd: $3f
    ld c, b                                       ; $7bce: $48
    ld a, a                                       ; $7bcf: $7f
    ld b, b                                       ; $7bd0: $40
    ld a, a                                       ; $7bd1: $7f
    ld d, e                                       ; $7bd2: $53
    ld a, [hl]                                    ; $7bd3: $7e
    scf                                           ; $7bd4: $37
    inc a                                         ; $7bd5: $3c
    ccf                                           ; $7bd6: $3f
    dec sp                                        ; $7bd7: $3b
    cpl                                           ; $7bd8: $2f
    inc a                                         ; $7bd9: $3c
    ld b, a                                       ; $7bda: $47
    ld a, h                                       ; $7bdb: $7c
    ld c, a                                       ; $7bdc: $4f
    ld a, d                                       ; $7bdd: $7a
    ld e, a                                       ; $7bde: $5f
    ld a, c                                       ; $7bdf: $79
    daa                                           ; $7be0: $27
    dec a                                         ; $7be1: $3d
    ld e, e                                       ; $7be2: $5b
    ld a, [hl]                                    ; $7be3: $7e
    or l                                          ; $7be4: $b5
    rst $38                                       ; $7be5: $ff
    ld [hl], a                                    ; $7be6: $77
    ld a, a                                       ; $7be7: $7f
    ld a, $3f                                     ; $7be8: $3e $3f
    ld [bc], a                                    ; $7bea: $02
    inc c                                         ; $7beb: $0c
    sub b                                         ; $7bec: $90
    ld [bc], a                                    ; $7bed: $02
    ld c, $0c                                     ; $7bee: $0e $0c
    inc b                                         ; $7bf0: $04
    ld b, $0a                                     ; $7bf1: $06 $0a
    ld c, $0a                                     ; $7bf3: $0e $0a
    ld [bc], a                                    ; $7bf5: $02
    ld c, $0f                                     ; $7bf6: $0e $0f
    ld bc, $0a06                                  ; $7bf8: $01 $06 $0a
    inc c                                         ; $7bfb: $0c
    inc b                                         ; $7bfc: $04
    ld [bc], a                                    ; $7bfd: $02
    ld [$0002], sp                                ; $7bfe: $08 $02 $00
    inc b                                         ; $7c01: $04
    ld [$0486], sp                                ; $7c02: $08 $86 $04
    inc c                                         ; $7c05: $0c
    inc b                                         ; $7c06: $04
    inc c                                         ; $7c07: $0c
    ld a, h                                       ; $7c08: $7c
    db $fc                                        ; $7c09: $fc
    ld [bc], a                                    ; $7c0a: $02
    jr jr_0e0_7b92                                ; $7c0b: $18 $85

    dec bc                                        ; $7c0d: $0b
    rrca                                          ; $7c0e: $0f
    add hl, bc                                    ; $7c0f: $09
    rrca                                          ; $7c10: $0f
    dec e                                         ; $7c11: $1d
    ld [bc], a                                    ; $7c12: $02
    rra                                           ; $7c13: $1f
    add e                                         ; $7c14: $83
    ld e, $3f                                     ; $7c15: $1e $3f
    inc a                                         ; $7c17: $3c
    inc b                                         ; $7c18: $04
    ccf                                           ; $7c19: $3f

jr_0e0_7c1a:
    add [hl]                                      ; $7c1a: $86
    ld a, $3f                                     ; $7c1b: $3e $3f
    ld a, [hl]                                    ; $7c1d: $7e
    ld a, a                                       ; $7c1e: $7f
    ld a, [hl]                                    ; $7c1f: $7e
    ld a, a                                       ; $7c20: $7f
    ld [bc], a                                    ; $7c21: $02
    rst $38                                       ; $7c22: $ff
    add [hl]                                      ; $7c23: $86
    cp a                                          ; $7c24: $bf
    rst $38                                       ; $7c25: $ff
    sbc a                                         ; $7c26: $9f
    rst $38                                       ; $7c27: $ff
    ld h, b                                       ; $7c28: $60
    ld a, a                                       ; $7c29: $7f
    ld [bc], a                                    ; $7c2a: $02
    rra                                           ; $7c2b: $1f
    ld [bc], a                                    ; $7c2c: $02
    nop                                           ; $7c2d: $00
    ld [bc], a                                    ; $7c2e: $02
    ld b, $81                                     ; $7c2f: $06 $81
    ld [bc], a                                    ; $7c31: $02
    inc de                                        ; $7c32: $13
    ld b, $02                                     ; $7c33: $06 $02
    rlca                                          ; $7c35: $07
    add h                                         ; $7c36: $84
    dec b                                         ; $7c37: $05
    rlca                                          ; $7c38: $07
    ld [bc], a                                    ; $7c39: $02
    ld b, $02                                     ; $7c3a: $06 $02
    inc b                                         ; $7c3c: $04
    rst $38                                       ; $7c3d: $ff
    dec c                                         ; $7c3e: $0d
    inc b                                         ; $7c3f: $04
    db $fc                                        ; $7c40: $fc
    inc b                                         ; $7c41: $04
    ld a, [c]                                     ; $7c42: $f2
    ei                                            ; $7c43: $fb
    db $e3                                        ; $7c44: $e3
    ei                                            ; $7c45: $fb
    db $e4                                        ; $7c46: $e4
    rst $38                                       ; $7c47: $ff
    di                                            ; $7c48: $f3
    ld a, [$fdf3]                                 ; $7c49: $fa $f3 $fd
    ld [bc], a                                    ; $7c4c: $02
    dec de                                        ; $7c4d: $1b
    sbc [hl]                                      ; $7c4e: $9e
    inc h                                         ; $7c4f: $24
    ccf                                           ; $7c50: $3f
    ld c, b                                       ; $7c51: $48
    ld a, a                                       ; $7c52: $7f
    ld b, b                                       ; $7c53: $40
    ld a, a                                       ; $7c54: $7f
    ld d, e                                       ; $7c55: $53
    ld a, [hl]                                    ; $7c56: $7e
    scf                                           ; $7c57: $37
    inc a                                         ; $7c58: $3c
    ccf                                           ; $7c59: $3f
    dec sp                                        ; $7c5a: $3b
    cpl                                           ; $7c5b: $2f
    inc a                                         ; $7c5c: $3c
    ld b, a                                       ; $7c5d: $47
    ld a, h                                       ; $7c5e: $7c
    ld c, a                                       ; $7c5f: $4f
    ld a, d                                       ; $7c60: $7a
    ld e, a                                       ; $7c61: $5f
    ld a, c                                       ; $7c62: $79
    ld h, a                                       ; $7c63: $67
    ld a, l                                       ; $7c64: $7d
    sbc e                                         ; $7c65: $9b
    cp $75                                        ; $7c66: $fe $75
    ld a, a                                       ; $7c68: $7f
    scf                                           ; $7c69: $37
    ccf                                           ; $7c6a: $3f
    ld a, $3f                                     ; $7c6b: $3e $3f
    ld [bc], a                                    ; $7c6d: $02
    inc c                                         ; $7c6e: $0c
    sub b                                         ; $7c6f: $90
    ld [bc], a                                    ; $7c70: $02
    ld c, $0c                                     ; $7c71: $0e $0c
    inc b                                         ; $7c73: $04
    ld b, $0a                                     ; $7c74: $06 $0a
    ld c, $0a                                     ; $7c76: $0e $0a
    ld [bc], a                                    ; $7c78: $02
    ld c, $0f                                     ; $7c79: $0e $0f
    ld bc, $0a06                                  ; $7c7b: $01 $06 $0a
    inc c                                         ; $7c7e: $0c
    inc b                                         ; $7c7f: $04
    ld [bc], a                                    ; $7c80: $02
    ld [$0002], sp                                ; $7c81: $08 $02 $00
    inc b                                         ; $7c84: $04
    ld [$0486], sp                                ; $7c85: $08 $86 $04
    inc c                                         ; $7c88: $0c
    inc b                                         ; $7c89: $04
    inc c                                         ; $7c8a: $0c
    ld a, b                                       ; $7c8b: $78
    ld hl, sp+$02                                 ; $7c8c: $f8 $02
    jr jr_0e0_7c1a                                ; $7c8e: $18 $8a

    dec bc                                        ; $7c90: $0b
    rrca                                          ; $7c91: $0f
    add hl, de                                    ; $7c92: $19
    rra                                           ; $7c93: $1f
    dec e                                         ; $7c94: $1d
    rra                                           ; $7c95: $1f
    ccf                                           ; $7c96: $3f

jr_0e0_7c97:
    ld a, $3f                                     ; $7c97: $3e $3f
    inc a                                         ; $7c99: $3c
    ld [bc], a                                    ; $7c9a: $02
    ccf                                           ; $7c9b: $3f
    add [hl]                                      ; $7c9c: $86
    ld a, $3f                                     ; $7c9d: $3e $3f
    ld a, [hl]                                    ; $7c9f: $7e
    ld a, a                                       ; $7ca0: $7f
    ld a, [hl]                                    ; $7ca1: $7e
    ld a, a                                       ; $7ca2: $7f
    ld [bc], a                                    ; $7ca3: $02
    rst $38                                       ; $7ca4: $ff
    add [hl]                                      ; $7ca5: $86
    cp a                                          ; $7ca6: $bf
    rst $38                                       ; $7ca7: $ff
    sbc a                                         ; $7ca8: $9f
    rst $38                                       ; $7ca9: $ff
    ld h, b                                       ; $7caa: $60
    ld a, a                                       ; $7cab: $7f
    ld [bc], a                                    ; $7cac: $02
    rra                                           ; $7cad: $1f
    inc b                                         ; $7cae: $04
    nop                                           ; $7caf: $00
    ld [bc], a                                    ; $7cb0: $02
    ld b, $81                                     ; $7cb1: $06 $81
    ld [bc], a                                    ; $7cb3: $02
    ld de, $0206                                  ; $7cb4: $11 $06 $02

jr_0e0_7cb7:
    rlca                                          ; $7cb7: $07
    add h                                         ; $7cb8: $84
    dec b                                         ; $7cb9: $05
    rlca                                          ; $7cba: $07
    ld [bc], a                                    ; $7cbb: $02
    ld b, $02                                     ; $7cbc: $06 $02
    inc b                                         ; $7cbe: $04
    ld [bc], a                                    ; $7cbf: $02
    nop                                           ; $7cc0: $00
    rst $38                                       ; $7cc1: $ff
    dec c                                         ; $7cc2: $0d
    inc b                                         ; $7cc3: $04
    db $fc                                        ; $7cc4: $fc
    inc b                                         ; $7cc5: $04
    ld a, [c]                                     ; $7cc6: $f2
    ei                                            ; $7cc7: $fb
    ld [c], a                                     ; $7cc8: $e2
    ei                                            ; $7cc9: $fb
    db $e3                                        ; $7cca: $e3
    rst $38                                       ; $7ccb: $ff
    ld a, [c]                                     ; $7ccc: $f2
    ld a, [$fff2]                                 ; $7ccd: $fa $f2 $ff
    ld [bc], a                                    ; $7cd0: $02
    dec de                                        ; $7cd1: $1b
    sbc [hl]                                      ; $7cd2: $9e
    inc h                                         ; $7cd3: $24
    ccf                                           ; $7cd4: $3f
    ld c, b                                       ; $7cd5: $48
    ld a, a                                       ; $7cd6: $7f
    ld b, b                                       ; $7cd7: $40
    ld a, a                                       ; $7cd8: $7f
    ld d, e                                       ; $7cd9: $53
    ld a, [hl]                                    ; $7cda: $7e
    ld d, a                                       ; $7cdb: $57
    ld a, h                                       ; $7cdc: $7c
    ccf                                           ; $7cdd: $3f
    dec sp                                        ; $7cde: $3b
    cpl                                           ; $7cdf: $2f
    inc a                                         ; $7ce0: $3c
    daa                                           ; $7ce1: $27
    inc a                                         ; $7ce2: $3c
    ld c, a                                       ; $7ce3: $4f
    ld a, d                                       ; $7ce4: $7a
    ld e, a                                       ; $7ce5: $5f
    ld a, c                                       ; $7ce6: $79
    ld h, a                                       ; $7ce7: $67
    ld a, l                                       ; $7ce8: $7d
    ld e, e                                       ; $7ce9: $5b
    ld a, [hl]                                    ; $7cea: $7e
    or l                                          ; $7ceb: $b5
    rst $38                                       ; $7cec: $ff
    ld h, a                                       ; $7ced: $67
    ld a, a                                       ; $7cee: $7f
    ld a, $3f                                     ; $7cef: $3e $3f
    ld [bc], a                                    ; $7cf1: $02
    inc c                                         ; $7cf2: $0c
    sub b                                         ; $7cf3: $90
    ld [bc], a                                    ; $7cf4: $02
    ld c, $0c                                     ; $7cf5: $0e $0c
    inc b                                         ; $7cf7: $04
    ld b, $0a                                     ; $7cf8: $06 $0a
    ld c, $0a                                     ; $7cfa: $0e $0a
    ld [bc], a                                    ; $7cfc: $02
    ld c, $0f                                     ; $7cfd: $0e $0f
    ld bc, $0a06                                  ; $7cff: $01 $06 $0a
    inc c                                         ; $7d02: $0c
    inc b                                         ; $7d03: $04
    ld [bc], a                                    ; $7d04: $02
    ld [$0002], sp                                ; $7d05: $08 $02 $00
    inc b                                         ; $7d08: $04
    ld [$0486], sp                                ; $7d09: $08 $86 $04
    inc c                                         ; $7d0c: $0c
    inc b                                         ; $7d0d: $04
    inc c                                         ; $7d0e: $0c
    ld a, h                                       ; $7d0f: $7c
    db $fc                                        ; $7d10: $fc
    ld [bc], a                                    ; $7d11: $02
    jr jr_0e0_7c97                                ; $7d12: $18 $83

    dec c                                         ; $7d14: $0d
    rrca                                          ; $7d15: $0f
    inc e                                         ; $7d16: $1c
    inc bc                                        ; $7d17: $03
    rra                                           ; $7d18: $1f
    add d                                         ; $7d19: $82
    ccf                                           ; $7d1a: $3f
    ld a, $06                                     ; $7d1b: $3e $06
    ccf                                           ; $7d1d: $3f
    ld [bc], a                                    ; $7d1e: $02
    ld a, a                                       ; $7d1f: $7f
    add c                                         ; $7d20: $81
    ld a, l                                       ; $7d21: $7d
    inc bc                                        ; $7d22: $03

jr_0e0_7d23:
    ld a, a                                       ; $7d23: $7f
    add c                                         ; $7d24: $81
    ei                                            ; $7d25: $fb
    inc bc                                        ; $7d26: $03
    rst $38                                       ; $7d27: $ff
    add h                                         ; $7d28: $84
    cp a                                          ; $7d29: $bf
    rst $38                                       ; $7d2a: $ff
    ld b, b                                       ; $7d2b: $40
    ld a, a                                       ; $7d2c: $7f
    ld [bc], a                                    ; $7d2d: $02
    ccf                                           ; $7d2e: $3f
    ld [bc], a                                    ; $7d2f: $02
    nop                                           ; $7d30: $00
    dec b                                         ; $7d31: $05
    jr jr_0e0_7cb7                                ; $7d32: $18 $83

    ld [$0818], sp                                ; $7d34: $08 $18 $08
    inc b                                         ; $7d37: $04
    jr jr_0e0_7d40                                ; $7d38: $18 $06

    inc e                                         ; $7d3a: $1c
    inc b                                         ; $7d3b: $04
    ld e, $84                                     ; $7d3c: $1e $84
    dec e                                         ; $7d3e: $1d
    rra                                           ; $7d3f: $1f

jr_0e0_7d40:
    inc bc                                        ; $7d40: $03
    rra                                           ; $7d41: $1f
    ld [bc], a                                    ; $7d42: $02
    inc e                                         ; $7d43: $1c
    ld [bc], a                                    ; $7d44: $02
    nop                                           ; $7d45: $00
    rst $38                                       ; $7d46: $ff
    dec c                                         ; $7d47: $0d
    inc b                                         ; $7d48: $04
    db $fc                                        ; $7d49: $fc
    inc b                                         ; $7d4a: $04
    ld a, [c]                                     ; $7d4b: $f2
    ei                                            ; $7d4c: $fb
    db $e3                                        ; $7d4d: $e3
    ei                                            ; $7d4e: $fb
    db $e4                                        ; $7d4f: $e4
    rst $38                                       ; $7d50: $ff
    di                                            ; $7d51: $f3
    ld a, [$fdf3]                                 ; $7d52: $fa $f3 $fd
    ld [bc], a                                    ; $7d55: $02
    dec de                                        ; $7d56: $1b
    sbc [hl]                                      ; $7d57: $9e
    inc h                                         ; $7d58: $24
    ccf                                           ; $7d59: $3f
    ld c, b                                       ; $7d5a: $48
    ld a, a                                       ; $7d5b: $7f
    ld b, b                                       ; $7d5c: $40
    ld a, a                                       ; $7d5d: $7f
    ld d, e                                       ; $7d5e: $53
    ld a, [hl]                                    ; $7d5f: $7e
    scf                                           ; $7d60: $37
    inc a                                         ; $7d61: $3c
    ccf                                           ; $7d62: $3f
    dec sp                                        ; $7d63: $3b
    cpl                                           ; $7d64: $2f
    inc a                                         ; $7d65: $3c
    ld b, a                                       ; $7d66: $47
    ld a, h                                       ; $7d67: $7c
    ld c, a                                       ; $7d68: $4f
    ld a, d                                       ; $7d69: $7a
    ld e, a                                       ; $7d6a: $5f
    ld a, c                                       ; $7d6b: $79
    ld h, a                                       ; $7d6c: $67
    ld a, l                                       ; $7d6d: $7d
    sbc e                                         ; $7d6e: $9b
    cp $75                                        ; $7d6f: $fe $75
    ld a, a                                       ; $7d71: $7f
    scf                                           ; $7d72: $37
    ccf                                           ; $7d73: $3f
    ld a, $3f                                     ; $7d74: $3e $3f
    ld [bc], a                                    ; $7d76: $02
    inc c                                         ; $7d77: $0c
    sub b                                         ; $7d78: $90
    ld [bc], a                                    ; $7d79: $02
    ld c, $0c                                     ; $7d7a: $0e $0c
    inc b                                         ; $7d7c: $04
    ld b, $0a                                     ; $7d7d: $06 $0a
    ld c, $0a                                     ; $7d7f: $0e $0a
    ld [bc], a                                    ; $7d81: $02
    ld c, $0f                                     ; $7d82: $0e $0f
    ld bc, $0a06                                  ; $7d84: $01 $06 $0a
    inc c                                         ; $7d87: $0c
    inc b                                         ; $7d88: $04
    ld [bc], a                                    ; $7d89: $02
    ld [$0002], sp                                ; $7d8a: $08 $02 $00
    inc b                                         ; $7d8d: $04
    ld [$0486], sp                                ; $7d8e: $08 $86 $04
    inc c                                         ; $7d91: $0c
    inc b                                         ; $7d92: $04
    inc c                                         ; $7d93: $0c
    ld a, b                                       ; $7d94: $78
    ld hl, sp+$02                                 ; $7d95: $f8 $02
    jr jr_0e0_7d23                                ; $7d97: $18 $8a

    dec bc                                        ; $7d99: $0b
    rrca                                          ; $7d9a: $0f
    add hl, de                                    ; $7d9b: $19
    rra                                           ; $7d9c: $1f
    dec e                                         ; $7d9d: $1d
    rra                                           ; $7d9e: $1f
    ccf                                           ; $7d9f: $3f
    ld a, $3f                                     ; $7da0: $3e $3f
    inc a                                         ; $7da2: $3c
    ld [bc], a                                    ; $7da3: $02
    ccf                                           ; $7da4: $3f
    add e                                         ; $7da5: $83
    ld a, $3f                                     ; $7da6: $3e $3f

jr_0e0_7da8:
    ld a, [hl]                                    ; $7da8: $7e
    inc bc                                        ; $7da9: $03
    ld a, a                                       ; $7daa: $7f
    ld [bc], a                                    ; $7dab: $02
    rst $38                                       ; $7dac: $ff
    add [hl]                                      ; $7dad: $86
    cp a                                          ; $7dae: $bf
    rst $38                                       ; $7daf: $ff
    sbc a                                         ; $7db0: $9f
    rst $38                                       ; $7db1: $ff
    ld h, b                                       ; $7db2: $60
    ld a, a                                       ; $7db3: $7f
    ld [bc], a                                    ; $7db4: $02
    rra                                           ; $7db5: $1f
    inc b                                         ; $7db6: $04
    nop                                           ; $7db7: $00
    ld [bc], a                                    ; $7db8: $02
    ld b, $81                                     ; $7db9: $06 $81
    ld [bc], a                                    ; $7dbb: $02
    rlca                                          ; $7dbc: $07
    ld b, $83                                     ; $7dbd: $06 $83
    ld [bc], a                                    ; $7dbf: $02
    ld b, $02                                     ; $7dc0: $06 $02
    rlca                                          ; $7dc2: $07
    ld b, $02                                     ; $7dc3: $06 $02
    rlca                                          ; $7dc5: $07
    add h                                         ; $7dc6: $84
    dec b                                         ; $7dc7: $05
    rlca                                          ; $7dc8: $07
    ld [bc], a                                    ; $7dc9: $02
    ld b, $02                                     ; $7dca: $06 $02
    inc b                                         ; $7dcc: $04
    ld [bc], a                                    ; $7dcd: $02
    nop                                           ; $7dce: $00
    rst $38                                       ; $7dcf: $ff
    dec c                                         ; $7dd0: $0d
    inc b                                         ; $7dd1: $04
    db $fc                                        ; $7dd2: $fc
    inc b                                         ; $7dd3: $04
    ld a, [c]                                     ; $7dd4: $f2
    ei                                            ; $7dd5: $fb
    ld [c], a                                     ; $7dd6: $e2
    ei                                            ; $7dd7: $fb
    db $e3                                        ; $7dd8: $e3
    rst $38                                       ; $7dd9: $ff
    ld a, [c]                                     ; $7dda: $f2
    ld a, [$fff2]                                 ; $7ddb: $fa $f2 $ff
    ld [bc], a                                    ; $7dde: $02
    dec de                                        ; $7ddf: $1b
    sbc d                                         ; $7de0: $9a
    inc h                                         ; $7de1: $24
    ccf                                           ; $7de2: $3f
    ld c, b                                       ; $7de3: $48
    ld a, a                                       ; $7de4: $7f
    ld b, b                                       ; $7de5: $40
    ld a, a                                       ; $7de6: $7f
    ld d, e                                       ; $7de7: $53
    ld a, [hl]                                    ; $7de8: $7e
    ld d, a                                       ; $7de9: $57
    ld a, h                                       ; $7dea: $7c
    ccf                                           ; $7deb: $3f
    dec sp                                        ; $7dec: $3b
    cpl                                           ; $7ded: $2f
    inc a                                         ; $7dee: $3c
    daa                                           ; $7def: $27
    inc a                                         ; $7df0: $3c
    ld c, a                                       ; $7df1: $4f
    ld a, d                                       ; $7df2: $7a
    ld e, a                                       ; $7df3: $5f
    ld a, c                                       ; $7df4: $79
    ld h, a                                       ; $7df5: $67
    ld a, l                                       ; $7df6: $7d
    ld e, e                                       ; $7df7: $5b
    ld a, [hl]                                    ; $7df8: $7e
    or l                                          ; $7df9: $b5
    rst $38                                       ; $7dfa: $ff
    ld [bc], a                                    ; $7dfb: $02
    ld a, a                                       ; $7dfc: $7f
    add d                                         ; $7dfd: $82
    ld l, $3f                                     ; $7dfe: $2e $3f
    ld [bc], a                                    ; $7e00: $02
    inc c                                         ; $7e01: $0c
    sub b                                         ; $7e02: $90
    ld [bc], a                                    ; $7e03: $02
    ld c, $0c                                     ; $7e04: $0e $0c
    inc b                                         ; $7e06: $04
    ld b, $0a                                     ; $7e07: $06 $0a
    ld c, $0a                                     ; $7e09: $0e $0a
    ld [bc], a                                    ; $7e0b: $02
    ld c, $0f                                     ; $7e0c: $0e $0f
    ld bc, $0a06                                  ; $7e0e: $01 $06 $0a
    inc c                                         ; $7e11: $0c
    inc b                                         ; $7e12: $04
    ld [bc], a                                    ; $7e13: $02
    ld [$0002], sp                                ; $7e14: $08 $02 $00
    inc b                                         ; $7e17: $04
    ld [$0484], sp                                ; $7e18: $08 $84 $04
    inc c                                         ; $7e1b: $0c
    inc b                                         ; $7e1c: $04
    inc c                                         ; $7e1d: $0c
    ld [bc], a                                    ; $7e1e: $02
    db $fc                                        ; $7e1f: $fc
    ld [bc], a                                    ; $7e20: $02
    jr jr_0e0_7da8                                ; $7e21: $18 $85

    rla                                           ; $7e23: $17
    rra                                           ; $7e24: $1f
    ld [de], a                                    ; $7e25: $12
    rra                                           ; $7e26: $1f
    rla                                           ; $7e27: $17
    inc b                                         ; $7e28: $04
    rra                                           ; $7e29: $1f
    add c                                         ; $7e2a: $81
    inc de                                        ; $7e2b: $13
    ld [$813f], sp                                ; $7e2c: $08 $3f $81
    ld e, a                                       ; $7e2f: $5f
    inc bc                                        ; $7e30: $03
    ld a, a                                       ; $7e31: $7f
    add [hl]                                      ; $7e32: $86
    cp a                                          ; $7e33: $bf
    rst $38                                       ; $7e34: $ff
    adc a                                         ; $7e35: $8f
    rst $38                                       ; $7e36: $ff
    ld [hl], b                                    ; $7e37: $70
    ld a, a                                       ; $7e38: $7f
    ld [bc], a                                    ; $7e39: $02
    rrca                                          ; $7e3a: $0f
    ld [bc], a                                    ; $7e3b: $02
    nop                                           ; $7e3c: $00
    ld [bc], a                                    ; $7e3d: $02
    jr @-$7d                                      ; $7e3e: $18 $81

    ld [$1805], sp                                ; $7e40: $08 $05 $18
    ld [bc], a                                    ; $7e43: $02
    inc e                                         ; $7e44: $1c
    adc b                                         ; $7e45: $88
    inc c                                         ; $7e46: $0c
    inc e                                         ; $7e47: $1c
    inc c                                         ; $7e48: $0c
    inc e                                         ; $7e49: $1c

jr_0e0_7e4a:
    inc d                                         ; $7e4a: $14
    inc e                                         ; $7e4b: $1c
    inc d                                         ; $7e4c: $14
    inc e                                         ; $7e4d: $1c
    ld [bc], a                                    ; $7e4e: $02
    ld e, $82                                     ; $7e4f: $1e $82
    ld a, [de]                                    ; $7e51: $1a
    ld e, $02                                     ; $7e52: $1e $02
    rra                                           ; $7e54: $1f
    add h                                         ; $7e55: $84
    dec de                                        ; $7e56: $1b
    rra                                           ; $7e57: $1f
    ld b, $1e                                     ; $7e58: $06 $1e
    ld [bc], a                                    ; $7e5a: $02
    jr @+$01                                      ; $7e5b: $18 $ff

    dec c                                         ; $7e5d: $0d
    inc b                                         ; $7e5e: $04
    ld a, [$f204]                                 ; $7e5f: $fa $04 $f2
    ei                                            ; $7e62: $fb
    ld [c], a                                     ; $7e63: $e2
    ld sp, hl                                     ; $7e64: $f9
    ld [c], a                                     ; $7e65: $e2
    cp $f2                                        ; $7e66: $fe $f2
    ld hl, sp-$0e                                 ; $7e68: $f8 $f2
    rst $38                                       ; $7e6a: $ff
    ld [bc], a                                    ; $7e6b: $02
    rrca                                          ; $7e6c: $0f
    adc h                                         ; $7e6d: $8c
    rla                                           ; $7e6e: $17
    rra                                           ; $7e6f: $1f
    add hl, de                                    ; $7e70: $19
    rra                                           ; $7e71: $1f
    ld l, $3f                                     ; $7e72: $2e $3f
    ld b, a                                       ; $7e74: $47
    ld a, a                                       ; $7e75: $7f
    ld d, b                                       ; $7e76: $50
    ld a, a                                       ; $7e77: $7f
    ld l, l                                       ; $7e78: $6d
    ld a, a                                       ; $7e79: $7f
    ld [bc], a                                    ; $7e7a: $02
    ccf                                           ; $7e7b: $3f
    inc bc                                        ; $7e7c: $03
    rra                                           ; $7e7d: $1f
    adc l                                         ; $7e7e: $8d
    jr jr_0e0_7eb0                                ; $7e7f: $18 $2f

    ccf                                           ; $7e81: $3f
    ld d, b                                       ; $7e82: $50
    ld a, a                                       ; $7e83: $7f
    rst $28                                       ; $7e84: $ef
    rst $38                                       ; $7e85: $ff
    or b                                          ; $7e86: $b0
    rst $38                                       ; $7e87: $ff
    sbc d                                         ; $7e88: $9a
    rst $38                                       ; $7e89: $ff
    sbc l                                         ; $7e8a: $9d
    rst $38                                       ; $7e8b: $ff
    ld [bc], a                                    ; $7e8c: $02
    db $10                                        ; $7e8d: $10
    adc [hl]                                      ; $7e8e: $8e
    inc c                                         ; $7e8f: $0c
    inc e                                         ; $7e90: $1c
    ld d, $1e                                     ; $7e91: $16 $1e
    inc c                                         ; $7e93: $0c
    inc e                                         ; $7e94: $1c
    ld a, [de]                                    ; $7e95: $1a
    ld e, $0a                                     ; $7e96: $1e $0a
    ld e, $16                                     ; $7e98: $1e $16
    ld e, $0c                                     ; $7e9a: $1e $0c
    inc e                                         ; $7e9c: $1c
    inc b                                         ; $7e9d: $04
    jr jr_0e0_7e4a                                ; $7e9e: $18 $aa

    inc d                                         ; $7ea0: $14
    inc e                                         ; $7ea1: $1c
    ld a, [bc]                                    ; $7ea2: $0a
    ld e, $17                                     ; $7ea3: $1e $17
    rra                                           ; $7ea5: $1f
    dec c                                         ; $7ea6: $0d
    rra                                           ; $7ea7: $1f
    add hl, de                                    ; $7ea8: $19
    rra                                           ; $7ea9: $1f
    add hl, de                                    ; $7eaa: $19
    rra                                           ; $7eab: $1f
    ld e, a                                       ; $7eac: $5f
    ld a, a                                       ; $7ead: $7f
    sbc h                                         ; $7eae: $9c
    rst $38                                       ; $7eaf: $ff

jr_0e0_7eb0:
    sbc b                                         ; $7eb0: $98
    rst $38                                       ; $7eb1: $ff
    or b                                          ; $7eb2: $b0
    rst $38                                       ; $7eb3: $ff
    ldh a, [rIE]                                  ; $7eb4: $f0 $ff
    ldh [rIE], a                                  ; $7eb6: $e0 $ff
    ld h, b                                       ; $7eb8: $60
    ld a, a                                       ; $7eb9: $7f
    jr nz, jr_0e0_7efb                            ; $7eba: $20 $3f

    jr nz, jr_0e0_7efd                            ; $7ebc: $20 $3f

    ld b, b                                       ; $7ebe: $40
    ld a, a                                       ; $7ebf: $7f
    ld b, b                                       ; $7ec0: $40
    ld a, a                                       ; $7ec1: $7f
    ld b, b                                       ; $7ec2: $40
    ld a, a                                       ; $7ec3: $7f
    ld h, b                                       ; $7ec4: $60
    ld a, a                                       ; $7ec5: $7f
    ld d, l                                       ; $7ec6: $55
    ld a, a                                       ; $7ec7: $7f
    ld a, [hl-]                                   ; $7ec8: $3a
    ccf                                           ; $7ec9: $3f
    ld [bc], a                                    ; $7eca: $02
    rrca                                          ; $7ecb: $0f
    sbc [hl]                                      ; $7ecc: $9e
    ld a, d                                       ; $7ecd: $7a
    ld a, [hl]                                    ; $7ece: $7e
    add hl, sp                                    ; $7ecf: $39
    ld a, a                                       ; $7ed0: $7f
    add hl, de                                    ; $7ed1: $19
    ld a, a                                       ; $7ed2: $7f
    dec c                                         ; $7ed3: $0d
    ld a, a                                       ; $7ed4: $7f
    rrca                                          ; $7ed5: $0f
    ld a, a                                       ; $7ed6: $7f
    rlca                                          ; $7ed7: $07
    ld a, a                                       ; $7ed8: $7f

jr_0e0_7ed9:
    ld b, $7e                                     ; $7ed9: $06 $7e
    inc b                                         ; $7edb: $04
    ld a, h                                       ; $7edc: $7c
    inc b                                         ; $7edd: $04
    ld a, h                                       ; $7ede: $7c
    ld [bc], a                                    ; $7edf: $02
    ld a, [hl]                                    ; $7ee0: $7e
    ld [bc], a                                    ; $7ee1: $02
    ld a, [hl]                                    ; $7ee2: $7e
    ld [bc], a                                    ; $7ee3: $02
    ld a, [hl]                                    ; $7ee4: $7e
    ld b, $7e                                     ; $7ee5: $06 $7e
    ld a, [hl+]                                   ; $7ee7: $2a
    ld a, [hl]                                    ; $7ee8: $7e
    ld e, h                                       ; $7ee9: $5c
    ld a, h                                       ; $7eea: $7c
    ld [bc], a                                    ; $7eeb: $02
    ld [hl], b                                    ; $7eec: $70
    rst $38                                       ; $7eed: $ff
    dec c                                         ; $7eee: $0d
    inc b                                         ; $7eef: $04
    ld a, [$f204]                                 ; $7ef0: $fa $04 $f2
    ei                                            ; $7ef3: $fb
    db $e3                                        ; $7ef4: $e3
    ld sp, hl                                     ; $7ef5: $f9
    db $e3                                        ; $7ef6: $e3
    cp $f3                                        ; $7ef7: $fe $f3
    ld hl, sp-$0d                                 ; $7ef9: $f8 $f3

jr_0e0_7efb:
    rst $38                                       ; $7efb: $ff
    ld [bc], a                                    ; $7efc: $02

jr_0e0_7efd:
    rrca                                          ; $7efd: $0f
    adc h                                         ; $7efe: $8c
    rla                                           ; $7eff: $17
    rra                                           ; $7f00: $1f
    add hl, de                                    ; $7f01: $19
    rra                                           ; $7f02: $1f
    ld l, $3f                                     ; $7f03: $2e $3f
    ld b, a                                       ; $7f05: $47
    ld a, a                                       ; $7f06: $7f
    ld d, b                                       ; $7f07: $50
    ld a, a                                       ; $7f08: $7f
    ld l, l                                       ; $7f09: $6d
    ld a, a                                       ; $7f0a: $7f
    ld [bc], a                                    ; $7f0b: $02
    ccf                                           ; $7f0c: $3f
    inc bc                                        ; $7f0d: $03
    rra                                           ; $7f0e: $1f
    adc l                                         ; $7f0f: $8d
    jr jr_0e0_7f41                                ; $7f10: $18 $2f

    ccf                                           ; $7f12: $3f
    ld d, b                                       ; $7f13: $50
    ld a, a                                       ; $7f14: $7f
    rst $28                                       ; $7f15: $ef
    rst $38                                       ; $7f16: $ff
    or b                                          ; $7f17: $b0
    rst $38                                       ; $7f18: $ff
    sbc d                                         ; $7f19: $9a
    rst $38                                       ; $7f1a: $ff
    sbc l                                         ; $7f1b: $9d
    rst $38                                       ; $7f1c: $ff
    ld [bc], a                                    ; $7f1d: $02
    db $10                                        ; $7f1e: $10
    adc [hl]                                      ; $7f1f: $8e
    inc c                                         ; $7f20: $0c
    inc e                                         ; $7f21: $1c
    ld d, $1e                                     ; $7f22: $16 $1e
    inc c                                         ; $7f24: $0c
    inc e                                         ; $7f25: $1c
    ld a, [de]                                    ; $7f26: $1a
    ld e, $0a                                     ; $7f27: $1e $0a
    ld e, $16                                     ; $7f29: $1e $16
    ld e, $0c                                     ; $7f2b: $1e $0c
    inc e                                         ; $7f2d: $1c
    inc b                                         ; $7f2e: $04
    jr jr_0e0_7ed9                                ; $7f2f: $18 $a8

    inc d                                         ; $7f31: $14
    inc e                                         ; $7f32: $1c
    ld a, [bc]                                    ; $7f33: $0a
    ld e, $17                                     ; $7f34: $1e $17
    rra                                           ; $7f36: $1f
    dec c                                         ; $7f37: $0d
    rra                                           ; $7f38: $1f
    add hl, de                                    ; $7f39: $19
    rra                                           ; $7f3a: $1f
    add hl, de                                    ; $7f3b: $19
    rra                                           ; $7f3c: $1f
    ld e, a                                       ; $7f3d: $5f
    ld a, a                                       ; $7f3e: $7f
    sbc h                                         ; $7f3f: $9c
    rst $38                                       ; $7f40: $ff

jr_0e0_7f41:
    sbc b                                         ; $7f41: $98
    rst $38                                       ; $7f42: $ff
    or b                                          ; $7f43: $b0
    rst $38                                       ; $7f44: $ff
    ldh [rIE], a                                  ; $7f45: $e0 $ff
    ldh [rIE], a                                  ; $7f47: $e0 $ff
    ld h, b                                       ; $7f49: $60
    ld a, a                                       ; $7f4a: $7f
    jr nz, jr_0e0_7f8c                            ; $7f4b: $20 $3f

    ld b, b                                       ; $7f4d: $40
    ld a, a                                       ; $7f4e: $7f
    ld b, b                                       ; $7f4f: $40
    ld a, a                                       ; $7f50: $7f
    ld b, b                                       ; $7f51: $40
    ld a, a                                       ; $7f52: $7f
    ld h, b                                       ; $7f53: $60
    ld a, a                                       ; $7f54: $7f
    ld d, l                                       ; $7f55: $55
    ld a, a                                       ; $7f56: $7f
    ld a, [hl-]                                   ; $7f57: $3a
    ccf                                           ; $7f58: $3f
    ld [bc], a                                    ; $7f59: $02
    rrca                                          ; $7f5a: $0f
    ld [bc], a                                    ; $7f5b: $02
    nop                                           ; $7f5c: $00
    sbc h                                         ; $7f5d: $9c
    ld a, d                                       ; $7f5e: $7a
    ld a, [hl]                                    ; $7f5f: $7e
    add hl, sp                                    ; $7f60: $39
    ld a, a                                       ; $7f61: $7f
    add hl, de                                    ; $7f62: $19
    ld a, a                                       ; $7f63: $7f
    dec c                                         ; $7f64: $0d
    ld a, a                                       ; $7f65: $7f
    rlca                                          ; $7f66: $07
    ld a, a                                       ; $7f67: $7f
    rlca                                          ; $7f68: $07
    ld a, a                                       ; $7f69: $7f
    ld b, $7e                                     ; $7f6a: $06 $7e
    inc b                                         ; $7f6c: $04
    ld a, h                                       ; $7f6d: $7c
    ld [bc], a                                    ; $7f6e: $02
    ld a, [hl]                                    ; $7f6f: $7e
    ld [bc], a                                    ; $7f70: $02
    ld a, [hl]                                    ; $7f71: $7e
    ld [bc], a                                    ; $7f72: $02
    ld a, [hl]                                    ; $7f73: $7e
    ld b, $7e                                     ; $7f74: $06 $7e
    ld a, [hl+]                                   ; $7f76: $2a
    ld a, [hl]                                    ; $7f77: $7e
    ld e, h                                       ; $7f78: $5c
    ld a, h                                       ; $7f79: $7c
    ld [bc], a                                    ; $7f7a: $02
    ld [hl], b                                    ; $7f7b: $70
    ld [bc], a                                    ; $7f7c: $02
    nop                                           ; $7f7d: $00
    rst $38                                       ; $7f7e: $ff
    dec c                                         ; $7f7f: $0d
    inc b                                         ; $7f80: $04
    db $fc                                        ; $7f81: $fc
    inc b                                         ; $7f82: $04
    ld a, [c]                                     ; $7f83: $f2
    ei                                            ; $7f84: $fb
    ld [c], a                                     ; $7f85: $e2
    db $fc                                        ; $7f86: $fc
    db $e4                                        ; $7f87: $e4
    cp $f2                                        ; $7f88: $fe $f2
    ld sp, hl                                     ; $7f8a: $f9
    ld a, [c]                                     ; $7f8b: $f2

jr_0e0_7f8c:
    cp $02                                        ; $7f8c: $fe $02
    ld e, $9e                                     ; $7f8e: $1e $9e
    ld sp, $633f                                  ; $7f90: $31 $3f $63
    ld a, a                                       ; $7f93: $7f
    sub a                                         ; $7f94: $97
    db $fc                                        ; $7f95: $fc
    ld a, h                                       ; $7f96: $7c
    ld a, e                                       ; $7f97: $7b
    ccf                                           ; $7f98: $3f
    jr nc, jr_0e0_7fba                            ; $7f99: $30 $1f

    db $10                                        ; $7f9b: $10
    dec a                                         ; $7f9c: $3d
    ld a, [hl-]                                   ; $7f9d: $3a
    ld e, [hl]                                    ; $7f9e: $5e
    ld a, l                                       ; $7f9f: $7d
    ld h, a                                       ; $7fa0: $67
    ld a, a                                       ; $7fa1: $7f
    sbc c                                         ; $7fa2: $99
    rst $38                                       ; $7fa3: $ff
    add [hl]                                      ; $7fa4: $86
    rst $38                                       ; $7fa5: $ff
    pop af                                        ; $7fa6: $f1
    rst $38                                       ; $7fa7: $ff
    ret z                                         ; $7fa8: $c8

    rst $38                                       ; $7fa9: $ff
    ld c, b                                       ; $7faa: $48
    ld a, a                                       ; $7fab: $7f
    ld e, b                                       ; $7fac: $58
    ld a, a                                       ; $7fad: $7f
    ld b, $02                                     ; $7fae: $06 $02
    add d                                         ; $7fb0: $82
    inc bc                                        ; $7fb1: $03
    ld bc, $0206                                  ; $7fb2: $01 $06 $02
    inc b                                         ; $7fb5: $04
    nop                                           ; $7fb6: $00
    inc b                                         ; $7fb7: $04
    ld [bc], a                                    ; $7fb8: $02
    inc b                                         ; $7fb9: $04

jr_0e0_7fba:
    inc bc                                        ; $7fba: $03
    ld [bc], a                                    ; $7fbb: $02
    ld [bc], a                                    ; $7fbc: $02
    add h                                         ; $7fbd: $84
    ld h, [hl]                                    ; $7fbe: $66
    cp $26                                        ; $7fbf: $fe $26
    cp $02                                        ; $7fc1: $fe $02
    ld [$1088], sp                                ; $7fc3: $08 $88 $10
    jr jr_0e0_7fd9                                ; $7fc6: $18 $11

    rra                                           ; $7fc8: $1f
    ld de, $171e                                  ; $7fc9: $11 $1e $17
    dec e                                         ; $7fcc: $1d
    ld [bc], a                                    ; $7fcd: $02
    rrca                                          ; $7fce: $0f
    adc [hl]                                      ; $7fcf: $8e
    ld [$100f], sp                                ; $7fd0: $08 $0f $10
    rra                                           ; $7fd3: $1f
    jr nc, @+$41                                  ; $7fd4: $30 $3f

    ld [hl], b                                    ; $7fd6: $70
    ld a, a                                       ; $7fd7: $7f
    and b                                         ; $7fd8: $a0

jr_0e0_7fd9:
    rst $38                                       ; $7fd9: $ff
    add b                                         ; $7fda: $80
    rst $38                                       ; $7fdb: $ff
    ld b, c                                       ; $7fdc: $41
    ld a, a                                       ; $7fdd: $7f
    ld [bc], a                                    ; $7fde: $02
    ccf                                           ; $7fdf: $3f
    ld [$9000], sp                                ; $7fe0: $08 $00 $90
    ld d, $1e                                     ; $7fe3: $16 $1e
    ld d, $1e                                     ; $7fe5: $16 $1e
    ld d, $1e                                     ; $7fe7: $16 $1e
    ld b, $1e                                     ; $7fe9: $06 $1e
    ld c, $1e                                     ; $7feb: $0e $1e
    ld c, $1e                                     ; $7fed: $0e $1e
    ld c, $1e                                     ; $7fef: $0e $1e
    inc c                                         ; $7ff1: $0c
    inc e                                         ; $7ff2: $1c
    ld [bc], a                                    ; $7ff3: $02
    ld e, $02                                     ; $7ff4: $1e $02
    rra                                           ; $7ff6: $1f
    add d                                         ; $7ff7: $82
    inc d                                         ; $7ff8: $14
    inc e                                         ; $7ff9: $1c
    ld [bc], a                                    ; $7ffa: $02
    ld c, $04                                     ; $7ffb: $0e $04
    nop                                           ; $7ffd: $00
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
